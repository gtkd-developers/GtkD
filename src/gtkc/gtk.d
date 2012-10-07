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


module gtkc.gtk;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gtktypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// gtk.Main

	Linker.link(gtk_disable_setlocale, \"gtk_disable_setlocale\", LIBRARY.GTK);
	Linker.link(gtk_get_default_language, \"gtk_get_default_language\", LIBRARY.GTK);
	Linker.link(gtk_parse_args, \"gtk_parse_args\", LIBRARY.GTK);
	Linker.link(gtk_init, \"gtk_init\", LIBRARY.GTK);
	Linker.link(gtk_init_check, \"gtk_init_check\", LIBRARY.GTK);
	Linker.link(gtk_init_with_args, \"gtk_init_with_args\", LIBRARY.GTK);
	Linker.link(gtk_get_option_group, \"gtk_get_option_group\", LIBRARY.GTK);
	Linker.link(gtk_events_pending, \"gtk_events_pending\", LIBRARY.GTK);
	Linker.link(gtk_main, \"gtk_main\", LIBRARY.GTK);
	Linker.link(gtk_main_level, \"gtk_main_level\", LIBRARY.GTK);
	Linker.link(gtk_main_quit, \"gtk_main_quit\", LIBRARY.GTK);
	Linker.link(gtk_main_iteration, \"gtk_main_iteration\", LIBRARY.GTK);
	Linker.link(gtk_main_iteration_do, \"gtk_main_iteration_do\", LIBRARY.GTK);
	Linker.link(gtk_main_do_event, \"gtk_main_do_event\", LIBRARY.GTK);
	Linker.link(gtk_grab_add, \"gtk_grab_add\", LIBRARY.GTK);
	Linker.link(gtk_grab_get_current, \"gtk_grab_get_current\", LIBRARY.GTK);
	Linker.link(gtk_grab_remove, \"gtk_grab_remove\", LIBRARY.GTK);
	Linker.link(gtk_device_grab_add, \"gtk_device_grab_add\", LIBRARY.GTK);
	Linker.link(gtk_device_grab_remove, \"gtk_device_grab_remove\", LIBRARY.GTK);
	Linker.link(gtk_key_snooper_install, \"gtk_key_snooper_install\", LIBRARY.GTK);
	Linker.link(gtk_key_snooper_remove, \"gtk_key_snooper_remove\", LIBRARY.GTK);
	Linker.link(gtk_get_current_event, \"gtk_get_current_event\", LIBRARY.GTK);
	Linker.link(gtk_get_current_event_time, \"gtk_get_current_event_time\", LIBRARY.GTK);
	Linker.link(gtk_get_current_event_state, \"gtk_get_current_event_state\", LIBRARY.GTK);
	Linker.link(gtk_get_current_event_device, \"gtk_get_current_event_device\", LIBRARY.GTK);
	Linker.link(gtk_get_event_widget, \"gtk_get_event_widget\", LIBRARY.GTK);
	Linker.link(gtk_propagate_event, \"gtk_propagate_event\", LIBRARY.GTK);

	// gtk.Version

	Linker.link(gtk_get_major_version, \"gtk_get_major_version\", LIBRARY.GTK);
	Linker.link(gtk_get_minor_version, \"gtk_get_minor_version\", LIBRARY.GTK);
	Linker.link(gtk_get_micro_version, \"gtk_get_micro_version\", LIBRARY.GTK);
	Linker.link(gtk_get_binary_age, \"gtk_get_binary_age\", LIBRARY.GTK);
	Linker.link(gtk_get_interface_age, \"gtk_get_interface_age\", LIBRARY.GTK);
	Linker.link(gtk_check_version, \"gtk_check_version\", LIBRARY.GTK);

	// gtk.AccelGroup

	Linker.link(gtk_accel_group_new, \"gtk_accel_group_new\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_connect, \"gtk_accel_group_connect\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_connect_by_path, \"gtk_accel_group_connect_by_path\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_disconnect, \"gtk_accel_group_disconnect\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_disconnect_key, \"gtk_accel_group_disconnect_key\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_activate, \"gtk_accel_group_activate\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_lock, \"gtk_accel_group_lock\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_unlock, \"gtk_accel_group_unlock\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_get_is_locked, \"gtk_accel_group_get_is_locked\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_from_accel_closure, \"gtk_accel_group_from_accel_closure\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_get_modifier_mask, \"gtk_accel_group_get_modifier_mask\", LIBRARY.GTK);
	Linker.link(gtk_accel_groups_activate, \"gtk_accel_groups_activate\", LIBRARY.GTK);
	Linker.link(gtk_accel_groups_from_object, \"gtk_accel_groups_from_object\", LIBRARY.GTK);
	Linker.link(gtk_accel_group_find, \"gtk_accel_group_find\", LIBRARY.GTK);
	Linker.link(gtk_accelerator_valid, \"gtk_accelerator_valid\", LIBRARY.GTK);
	Linker.link(gtk_accelerator_parse, \"gtk_accelerator_parse\", LIBRARY.GTK);
	Linker.link(gtk_accelerator_name, \"gtk_accelerator_name\", LIBRARY.GTK);
	Linker.link(gtk_accelerator_get_label, \"gtk_accelerator_get_label\", LIBRARY.GTK);
	Linker.link(gtk_accelerator_parse_with_keycode, \"gtk_accelerator_parse_with_keycode\", LIBRARY.GTK);
	Linker.link(gtk_accelerator_name_with_keycode, \"gtk_accelerator_name_with_keycode\", LIBRARY.GTK);
	Linker.link(gtk_accelerator_get_label_with_keycode, \"gtk_accelerator_get_label_with_keycode\", LIBRARY.GTK);
	Linker.link(gtk_accelerator_set_default_mod_mask, \"gtk_accelerator_set_default_mod_mask\", LIBRARY.GTK);
	Linker.link(gtk_accelerator_get_default_mod_mask, \"gtk_accelerator_get_default_mod_mask\", LIBRARY.GTK);

	// gtk.AccelMap

	Linker.link(gtk_accel_map_add_entry, \"gtk_accel_map_add_entry\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_lookup_entry, \"gtk_accel_map_lookup_entry\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_change_entry, \"gtk_accel_map_change_entry\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_load, \"gtk_accel_map_load\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_save, \"gtk_accel_map_save\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_foreach, \"gtk_accel_map_foreach\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_load_fd, \"gtk_accel_map_load_fd\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_save_fd, \"gtk_accel_map_save_fd\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_load_scanner, \"gtk_accel_map_load_scanner\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_add_filter, \"gtk_accel_map_add_filter\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_foreach_unfiltered, \"gtk_accel_map_foreach_unfiltered\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_get, \"gtk_accel_map_get\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_lock_path, \"gtk_accel_map_lock_path\", LIBRARY.GTK);
	Linker.link(gtk_accel_map_unlock_path, \"gtk_accel_map_unlock_path\", LIBRARY.GTK);

	// gtk.Clipboard

	Linker.link(gtk_clipboard_get, \"gtk_clipboard_get\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_get_for_display, \"gtk_clipboard_get_for_display\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_get_display, \"gtk_clipboard_get_display\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_set_with_data, \"gtk_clipboard_set_with_data\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_set_with_owner, \"gtk_clipboard_set_with_owner\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_get_owner, \"gtk_clipboard_get_owner\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_clear, \"gtk_clipboard_clear\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_set_text, \"gtk_clipboard_set_text\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_set_image, \"gtk_clipboard_set_image\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_contents, \"gtk_clipboard_request_contents\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_text, \"gtk_clipboard_request_text\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_image, \"gtk_clipboard_request_image\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_targets, \"gtk_clipboard_request_targets\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_rich_text, \"gtk_clipboard_request_rich_text\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_request_uris, \"gtk_clipboard_request_uris\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_contents, \"gtk_clipboard_wait_for_contents\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_text, \"gtk_clipboard_wait_for_text\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_image, \"gtk_clipboard_wait_for_image\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_rich_text, \"gtk_clipboard_wait_for_rich_text\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_uris, \"gtk_clipboard_wait_for_uris\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_is_text_available, \"gtk_clipboard_wait_is_text_available\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_is_image_available, \"gtk_clipboard_wait_is_image_available\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_is_rich_text_available, \"gtk_clipboard_wait_is_rich_text_available\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_is_uris_available, \"gtk_clipboard_wait_is_uris_available\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_for_targets, \"gtk_clipboard_wait_for_targets\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_wait_is_target_available, \"gtk_clipboard_wait_is_target_available\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_set_can_store, \"gtk_clipboard_set_can_store\", LIBRARY.GTK);
	Linker.link(gtk_clipboard_store, \"gtk_clipboard_store\", LIBRARY.GTK);

	// gtk.DragAndDrop

	Linker.link(gtk_drag_dest_set, \"gtk_drag_dest_set\", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_set_proxy, \"gtk_drag_dest_set_proxy\", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_unset, \"gtk_drag_dest_unset\", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_find_target, \"gtk_drag_dest_find_target\", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_get_target_list, \"gtk_drag_dest_get_target_list\", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_set_target_list, \"gtk_drag_dest_set_target_list\", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_add_text_targets, \"gtk_drag_dest_add_text_targets\", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_add_image_targets, \"gtk_drag_dest_add_image_targets\", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_add_uri_targets, \"gtk_drag_dest_add_uri_targets\", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_set_track_motion, \"gtk_drag_dest_set_track_motion\", LIBRARY.GTK);
	Linker.link(gtk_drag_dest_get_track_motion, \"gtk_drag_dest_get_track_motion\", LIBRARY.GTK);
	Linker.link(gtk_drag_finish, \"gtk_drag_finish\", LIBRARY.GTK);
	Linker.link(gtk_drag_get_data, \"gtk_drag_get_data\", LIBRARY.GTK);
	Linker.link(gtk_drag_get_source_widget, \"gtk_drag_get_source_widget\", LIBRARY.GTK);
	Linker.link(gtk_drag_highlight, \"gtk_drag_highlight\", LIBRARY.GTK);
	Linker.link(gtk_drag_unhighlight, \"gtk_drag_unhighlight\", LIBRARY.GTK);
	Linker.link(gtk_drag_begin, \"gtk_drag_begin\", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_widget, \"gtk_drag_set_icon_widget\", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_pixbuf, \"gtk_drag_set_icon_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_stock, \"gtk_drag_set_icon_stock\", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_surface, \"gtk_drag_set_icon_surface\", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_name, \"gtk_drag_set_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_gicon, \"gtk_drag_set_icon_gicon\", LIBRARY.GTK);
	Linker.link(gtk_drag_set_icon_default, \"gtk_drag_set_icon_default\", LIBRARY.GTK);
	Linker.link(gtk_drag_check_threshold, \"gtk_drag_check_threshold\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set, \"gtk_drag_source_set\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set_icon_pixbuf, \"gtk_drag_source_set_icon_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set_icon_stock, \"gtk_drag_source_set_icon_stock\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set_icon_name, \"gtk_drag_source_set_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set_icon_gicon, \"gtk_drag_source_set_icon_gicon\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_unset, \"gtk_drag_source_unset\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_set_target_list, \"gtk_drag_source_set_target_list\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_get_target_list, \"gtk_drag_source_get_target_list\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_add_text_targets, \"gtk_drag_source_add_text_targets\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_add_image_targets, \"gtk_drag_source_add_image_targets\", LIBRARY.GTK);
	Linker.link(gtk_drag_source_add_uri_targets, \"gtk_drag_source_add_uri_targets\", LIBRARY.GTK);

	// gtk.StockItem

	Linker.link(gtk_stock_add, \"gtk_stock_add\", LIBRARY.GTK);
	Linker.link(gtk_stock_add_static, \"gtk_stock_add_static\", LIBRARY.GTK);
	Linker.link(gtk_stock_item_copy, \"gtk_stock_item_copy\", LIBRARY.GTK);
	Linker.link(gtk_stock_item_free, \"gtk_stock_item_free\", LIBRARY.GTK);
	Linker.link(gtk_stock_list_ids, \"gtk_stock_list_ids\", LIBRARY.GTK);
	Linker.link(gtk_stock_lookup, \"gtk_stock_lookup\", LIBRARY.GTK);
	Linker.link(gtk_stock_set_translate_func, \"gtk_stock_set_translate_func\", LIBRARY.GTK);

	// gtk.Settings

	Linker.link(gtk_settings_get_default, \"gtk_settings_get_default\", LIBRARY.GTK);
	Linker.link(gtk_settings_get_for_screen, \"gtk_settings_get_for_screen\", LIBRARY.GTK);
	Linker.link(gtk_settings_install_property, \"gtk_settings_install_property\", LIBRARY.GTK);
	Linker.link(gtk_settings_install_property_parser, \"gtk_settings_install_property_parser\", LIBRARY.GTK);
	Linker.link(gtk_rc_property_parse_color, \"gtk_rc_property_parse_color\", LIBRARY.GTK);
	Linker.link(gtk_rc_property_parse_enum, \"gtk_rc_property_parse_enum\", LIBRARY.GTK);
	Linker.link(gtk_rc_property_parse_flags, \"gtk_rc_property_parse_flags\", LIBRARY.GTK);
	Linker.link(gtk_rc_property_parse_requisition, \"gtk_rc_property_parse_requisition\", LIBRARY.GTK);
	Linker.link(gtk_rc_property_parse_border, \"gtk_rc_property_parse_border\", LIBRARY.GTK);
	Linker.link(gtk_settings_set_property_value, \"gtk_settings_set_property_value\", LIBRARY.GTK);
	Linker.link(gtk_settings_set_string_property, \"gtk_settings_set_string_property\", LIBRARY.GTK);
	Linker.link(gtk_settings_set_long_property, \"gtk_settings_set_long_property\", LIBRARY.GTK);
	Linker.link(gtk_settings_set_double_property, \"gtk_settings_set_double_property\", LIBRARY.GTK);

	// gtk.BindingSet

	Linker.link(gtk_binding_entry_add_signall, \"gtk_binding_entry_add_signall\", LIBRARY.GTK);
	Linker.link(gtk_binding_set_new, \"gtk_binding_set_new\", LIBRARY.GTK);
	Linker.link(gtk_binding_set_by_class, \"gtk_binding_set_by_class\", LIBRARY.GTK);
	Linker.link(gtk_binding_set_find, \"gtk_binding_set_find\", LIBRARY.GTK);
	Linker.link(gtk_bindings_activate, \"gtk_bindings_activate\", LIBRARY.GTK);
	Linker.link(gtk_bindings_activate_event, \"gtk_bindings_activate_event\", LIBRARY.GTK);
	Linker.link(gtk_binding_set_activate, \"gtk_binding_set_activate\", LIBRARY.GTK);
	Linker.link(gtk_binding_entry_add_signal, \"gtk_binding_entry_add_signal\", LIBRARY.GTK);
	Linker.link(gtk_binding_entry_add_signal_from_string, \"gtk_binding_entry_add_signal_from_string\", LIBRARY.GTK);
	Linker.link(gtk_binding_entry_skip, \"gtk_binding_entry_skip\", LIBRARY.GTK);
	Linker.link(gtk_binding_entry_remove, \"gtk_binding_entry_remove\", LIBRARY.GTK);
	Linker.link(gtk_binding_set_add_path, \"gtk_binding_set_add_path\", LIBRARY.GTK);

	// gtk.TargetEntry

	Linker.link(gtk_target_entry_new, \"gtk_target_entry_new\", LIBRARY.GTK);
	Linker.link(gtk_target_entry_copy, \"gtk_target_entry_copy\", LIBRARY.GTK);
	Linker.link(gtk_target_entry_free, \"gtk_target_entry_free\", LIBRARY.GTK);

	// gtk.TargetList

	Linker.link(gtk_target_list_new, \"gtk_target_list_new\", LIBRARY.GTK);
	Linker.link(gtk_target_list_ref, \"gtk_target_list_ref\", LIBRARY.GTK);
	Linker.link(gtk_target_list_unref, \"gtk_target_list_unref\", LIBRARY.GTK);
	Linker.link(gtk_target_list_add, \"gtk_target_list_add\", LIBRARY.GTK);
	Linker.link(gtk_target_list_add_table, \"gtk_target_list_add_table\", LIBRARY.GTK);
	Linker.link(gtk_target_list_add_text_targets, \"gtk_target_list_add_text_targets\", LIBRARY.GTK);
	Linker.link(gtk_target_list_add_image_targets, \"gtk_target_list_add_image_targets\", LIBRARY.GTK);
	Linker.link(gtk_target_list_add_uri_targets, \"gtk_target_list_add_uri_targets\", LIBRARY.GTK);
	Linker.link(gtk_target_list_add_rich_text_targets, \"gtk_target_list_add_rich_text_targets\", LIBRARY.GTK);
	Linker.link(gtk_target_list_remove, \"gtk_target_list_remove\", LIBRARY.GTK);
	Linker.link(gtk_target_list_find, \"gtk_target_list_find\", LIBRARY.GTK);
	Linker.link(gtk_target_table_free, \"gtk_target_table_free\", LIBRARY.GTK);
	Linker.link(gtk_target_table_new_from_list, \"gtk_target_table_new_from_list\", LIBRARY.GTK);
	Linker.link(gtk_targets_include_image, \"gtk_targets_include_image\", LIBRARY.GTK);
	Linker.link(gtk_targets_include_text, \"gtk_targets_include_text\", LIBRARY.GTK);
	Linker.link(gtk_targets_include_uri, \"gtk_targets_include_uri\", LIBRARY.GTK);
	Linker.link(gtk_targets_include_rich_text, \"gtk_targets_include_rich_text\", LIBRARY.GTK);

	// gtk.SelectionData

	Linker.link(gtk_selection_owner_set, \"gtk_selection_owner_set\", LIBRARY.GTK);
	Linker.link(gtk_selection_owner_set_for_display, \"gtk_selection_owner_set_for_display\", LIBRARY.GTK);
	Linker.link(gtk_selection_add_target, \"gtk_selection_add_target\", LIBRARY.GTK);
	Linker.link(gtk_selection_add_targets, \"gtk_selection_add_targets\", LIBRARY.GTK);
	Linker.link(gtk_selection_clear_targets, \"gtk_selection_clear_targets\", LIBRARY.GTK);
	Linker.link(gtk_selection_convert, \"gtk_selection_convert\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_set, \"gtk_selection_data_set\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_set_text, \"gtk_selection_data_set_text\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_text, \"gtk_selection_data_get_text\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_set_pixbuf, \"gtk_selection_data_set_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_pixbuf, \"gtk_selection_data_get_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_set_uris, \"gtk_selection_data_set_uris\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_uris, \"gtk_selection_data_get_uris\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_targets, \"gtk_selection_data_get_targets\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_targets_include_image, \"gtk_selection_data_targets_include_image\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_targets_include_text, \"gtk_selection_data_targets_include_text\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_targets_include_uri, \"gtk_selection_data_targets_include_uri\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_targets_include_rich_text, \"gtk_selection_data_targets_include_rich_text\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_selection, \"gtk_selection_data_get_selection\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_data, \"gtk_selection_data_get_data\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_length, \"gtk_selection_data_get_length\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_data_with_length, \"gtk_selection_data_get_data_with_length\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_data_type, \"gtk_selection_data_get_data_type\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_display, \"gtk_selection_data_get_display\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_format, \"gtk_selection_data_get_format\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_get_target, \"gtk_selection_data_get_target\", LIBRARY.GTK);
	Linker.link(gtk_selection_remove_all, \"gtk_selection_remove_all\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_copy, \"gtk_selection_data_copy\", LIBRARY.GTK);
	Linker.link(gtk_selection_data_free, \"gtk_selection_data_free\", LIBRARY.GTK);

	// gtk.Testing

	Linker.link(gtk_test_create_simple_window, \"gtk_test_create_simple_window\", LIBRARY.GTK);
	Linker.link(gtk_test_create_widget, \"gtk_test_create_widget\", LIBRARY.GTK);
	Linker.link(gtk_test_display_button_window, \"gtk_test_display_button_window\", LIBRARY.GTK);
	Linker.link(gtk_test_find_label, \"gtk_test_find_label\", LIBRARY.GTK);
	Linker.link(gtk_test_find_sibling, \"gtk_test_find_sibling\", LIBRARY.GTK);
	Linker.link(gtk_test_find_widget, \"gtk_test_find_widget\", LIBRARY.GTK);
	Linker.link(gtk_test_init, \"gtk_test_init\", LIBRARY.GTK);
	Linker.link(gtk_test_list_all_types, \"gtk_test_list_all_types\", LIBRARY.GTK);
	Linker.link(gtk_test_register_all_types, \"gtk_test_register_all_types\", LIBRARY.GTK);
	Linker.link(gtk_test_slider_get_value, \"gtk_test_slider_get_value\", LIBRARY.GTK);
	Linker.link(gtk_test_slider_set_perc, \"gtk_test_slider_set_perc\", LIBRARY.GTK);
	Linker.link(gtk_test_spin_button_click, \"gtk_test_spin_button_click\", LIBRARY.GTK);
	Linker.link(gtk_test_text_get, \"gtk_test_text_get\", LIBRARY.GTK);
	Linker.link(gtk_test_text_set, \"gtk_test_text_set\", LIBRARY.GTK);
	Linker.link(gtk_test_widget_click, \"gtk_test_widget_click\", LIBRARY.GTK);
	Linker.link(gtk_test_widget_send_key, \"gtk_test_widget_send_key\", LIBRARY.GTK);

	// gtk.MountOperation

	Linker.link(gtk_mount_operation_new, \"gtk_mount_operation_new\", LIBRARY.GTK);
	Linker.link(gtk_mount_operation_is_showing, \"gtk_mount_operation_is_showing\", LIBRARY.GTK);
	Linker.link(gtk_mount_operation_set_parent, \"gtk_mount_operation_set_parent\", LIBRARY.GTK);
	Linker.link(gtk_mount_operation_get_parent, \"gtk_mount_operation_get_parent\", LIBRARY.GTK);
	Linker.link(gtk_mount_operation_set_screen, \"gtk_mount_operation_set_screen\", LIBRARY.GTK);
	Linker.link(gtk_mount_operation_get_screen, \"gtk_mount_operation_get_screen\", LIBRARY.GTK);
	Linker.link(gtk_show_uri, \"gtk_show_uri\", LIBRARY.GTK);

	// gtk.StyleContext

	Linker.link(gtk_style_context_new, \"gtk_style_context_new\", LIBRARY.GTK);
	Linker.link(gtk_style_context_add_provider, \"gtk_style_context_add_provider\", LIBRARY.GTK);
	Linker.link(gtk_style_context_add_provider_for_screen, \"gtk_style_context_add_provider_for_screen\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get, \"gtk_style_context_get\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_direction, \"gtk_style_context_get_direction\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_junction_sides, \"gtk_style_context_get_junction_sides\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_parent, \"gtk_style_context_get_parent\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_path, \"gtk_style_context_get_path\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_property, \"gtk_style_context_get_property\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_screen, \"gtk_style_context_get_screen\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_state, \"gtk_style_context_get_state\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_style, \"gtk_style_context_get_style\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_style_property, \"gtk_style_context_get_style_property\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_style_valist, \"gtk_style_context_get_style_valist\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_valist, \"gtk_style_context_get_valist\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_section, \"gtk_style_context_get_section\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_color, \"gtk_style_context_get_color\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_background_color, \"gtk_style_context_get_background_color\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_border_color, \"gtk_style_context_get_border_color\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_border, \"gtk_style_context_get_border\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_padding, \"gtk_style_context_get_padding\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_margin, \"gtk_style_context_get_margin\", LIBRARY.GTK);
	Linker.link(gtk_style_context_get_font, \"gtk_style_context_get_font\", LIBRARY.GTK);
	Linker.link(gtk_style_context_invalidate, \"gtk_style_context_invalidate\", LIBRARY.GTK);
	Linker.link(gtk_style_context_state_is_running, \"gtk_style_context_state_is_running\", LIBRARY.GTK);
	Linker.link(gtk_style_context_lookup_color, \"gtk_style_context_lookup_color\", LIBRARY.GTK);
	Linker.link(gtk_style_context_lookup_icon_set, \"gtk_style_context_lookup_icon_set\", LIBRARY.GTK);
	Linker.link(gtk_style_context_notify_state_change, \"gtk_style_context_notify_state_change\", LIBRARY.GTK);
	Linker.link(gtk_style_context_pop_animatable_region, \"gtk_style_context_pop_animatable_region\", LIBRARY.GTK);
	Linker.link(gtk_style_context_push_animatable_region, \"gtk_style_context_push_animatable_region\", LIBRARY.GTK);
	Linker.link(gtk_style_context_cancel_animations, \"gtk_style_context_cancel_animations\", LIBRARY.GTK);
	Linker.link(gtk_style_context_scroll_animations, \"gtk_style_context_scroll_animations\", LIBRARY.GTK);
	Linker.link(gtk_style_context_remove_provider, \"gtk_style_context_remove_provider\", LIBRARY.GTK);
	Linker.link(gtk_style_context_remove_provider_for_screen, \"gtk_style_context_remove_provider_for_screen\", LIBRARY.GTK);
	Linker.link(gtk_style_context_reset_widgets, \"gtk_style_context_reset_widgets\", LIBRARY.GTK);
	Linker.link(gtk_style_context_set_background, \"gtk_style_context_set_background\", LIBRARY.GTK);
	Linker.link(gtk_style_context_restore, \"gtk_style_context_restore\", LIBRARY.GTK);
	Linker.link(gtk_style_context_save, \"gtk_style_context_save\", LIBRARY.GTK);
	Linker.link(gtk_style_context_set_direction, \"gtk_style_context_set_direction\", LIBRARY.GTK);
	Linker.link(gtk_style_context_set_junction_sides, \"gtk_style_context_set_junction_sides\", LIBRARY.GTK);
	Linker.link(gtk_style_context_set_parent, \"gtk_style_context_set_parent\", LIBRARY.GTK);
	Linker.link(gtk_style_context_set_path, \"gtk_style_context_set_path\", LIBRARY.GTK);
	Linker.link(gtk_style_context_add_class, \"gtk_style_context_add_class\", LIBRARY.GTK);
	Linker.link(gtk_style_context_remove_class, \"gtk_style_context_remove_class\", LIBRARY.GTK);
	Linker.link(gtk_style_context_has_class, \"gtk_style_context_has_class\", LIBRARY.GTK);
	Linker.link(gtk_style_context_list_classes, \"gtk_style_context_list_classes\", LIBRARY.GTK);
	Linker.link(gtk_style_context_add_region, \"gtk_style_context_add_region\", LIBRARY.GTK);
	Linker.link(gtk_style_context_remove_region, \"gtk_style_context_remove_region\", LIBRARY.GTK);
	Linker.link(gtk_style_context_has_region, \"gtk_style_context_has_region\", LIBRARY.GTK);
	Linker.link(gtk_style_context_list_regions, \"gtk_style_context_list_regions\", LIBRARY.GTK);
	Linker.link(gtk_style_context_set_screen, \"gtk_style_context_set_screen\", LIBRARY.GTK);
	Linker.link(gtk_style_context_set_state, \"gtk_style_context_set_state\", LIBRARY.GTK);
	Linker.link(gtk_render_arrow, \"gtk_render_arrow\", LIBRARY.GTK);
	Linker.link(gtk_render_background, \"gtk_render_background\", LIBRARY.GTK);
	Linker.link(gtk_render_check, \"gtk_render_check\", LIBRARY.GTK);
	Linker.link(gtk_render_expander, \"gtk_render_expander\", LIBRARY.GTK);
	Linker.link(gtk_render_extension, \"gtk_render_extension\", LIBRARY.GTK);
	Linker.link(gtk_render_focus, \"gtk_render_focus\", LIBRARY.GTK);
	Linker.link(gtk_render_frame, \"gtk_render_frame\", LIBRARY.GTK);
	Linker.link(gtk_render_frame_gap, \"gtk_render_frame_gap\", LIBRARY.GTK);
	Linker.link(gtk_render_handle, \"gtk_render_handle\", LIBRARY.GTK);
	Linker.link(gtk_render_layout, \"gtk_render_layout\", LIBRARY.GTK);
	Linker.link(gtk_render_line, \"gtk_render_line\", LIBRARY.GTK);
	Linker.link(gtk_render_option, \"gtk_render_option\", LIBRARY.GTK);
	Linker.link(gtk_render_slider, \"gtk_render_slider\", LIBRARY.GTK);
	Linker.link(gtk_render_activity, \"gtk_render_activity\", LIBRARY.GTK);
	Linker.link(gtk_render_icon_pixbuf, \"gtk_render_icon_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_render_icon, \"gtk_render_icon\", LIBRARY.GTK);
	Linker.link(gtk_render_insertion_cursor, \"gtk_render_insertion_cursor\", LIBRARY.GTK);

	// gtk.Border

	Linker.link(gtk_border_new, \"gtk_border_new\", LIBRARY.GTK);
	Linker.link(gtk_border_copy, \"gtk_border_copy\", LIBRARY.GTK);
	Linker.link(gtk_border_free, \"gtk_border_free\", LIBRARY.GTK);

	// gtk.CssProvider

	Linker.link(gtk_css_provider_get_default, \"gtk_css_provider_get_default\", LIBRARY.GTK);
	Linker.link(gtk_css_provider_get_named, \"gtk_css_provider_get_named\", LIBRARY.GTK);
	Linker.link(gtk_css_provider_load_from_data, \"gtk_css_provider_load_from_data\", LIBRARY.GTK);
	Linker.link(gtk_css_provider_load_from_file, \"gtk_css_provider_load_from_file\", LIBRARY.GTK);
	Linker.link(gtk_css_provider_load_from_path, \"gtk_css_provider_load_from_path\", LIBRARY.GTK);
	Linker.link(gtk_css_provider_new, \"gtk_css_provider_new\", LIBRARY.GTK);
	Linker.link(gtk_css_provider_to_string, \"gtk_css_provider_to_string\", LIBRARY.GTK);

	// gtk.CssSection

	Linker.link(gtk_css_section_get_end_line, \"gtk_css_section_get_end_line\", LIBRARY.GTK);
	Linker.link(gtk_css_section_get_end_position, \"gtk_css_section_get_end_position\", LIBRARY.GTK);
	Linker.link(gtk_css_section_get_file, \"gtk_css_section_get_file\", LIBRARY.GTK);
	Linker.link(gtk_css_section_get_parent, \"gtk_css_section_get_parent\", LIBRARY.GTK);
	Linker.link(gtk_css_section_get_section_type, \"gtk_css_section_get_section_type\", LIBRARY.GTK);
	Linker.link(gtk_css_section_get_start_line, \"gtk_css_section_get_start_line\", LIBRARY.GTK);
	Linker.link(gtk_css_section_get_start_position, \"gtk_css_section_get_start_position\", LIBRARY.GTK);
	Linker.link(gtk_css_section_ref, \"gtk_css_section_ref\", LIBRARY.GTK);
	Linker.link(gtk_css_section_unref, \"gtk_css_section_unref\", LIBRARY.GTK);

	// gtk.StyleProviderT


	// gtk.StyleProviderT

	Linker.link(gtk_style_provider_get_icon_factory, \"gtk_style_provider_get_icon_factory\", LIBRARY.GTK);
	Linker.link(gtk_style_provider_get_style, \"gtk_style_provider_get_style\", LIBRARY.GTK);
	Linker.link(gtk_style_provider_get_style_property, \"gtk_style_provider_get_style_property\", LIBRARY.GTK);

	// gtk.StyleProperties

	Linker.link(gtk_style_properties_clear, \"gtk_style_properties_clear\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_get, \"gtk_style_properties_get\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_get_property, \"gtk_style_properties_get_property\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_get_valist, \"gtk_style_properties_get_valist\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_lookup_color, \"gtk_style_properties_lookup_color\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_lookup_property, \"gtk_style_properties_lookup_property\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_map_color, \"gtk_style_properties_map_color\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_merge, \"gtk_style_properties_merge\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_new, \"gtk_style_properties_new\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_register_property, \"gtk_style_properties_register_property\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_set, \"gtk_style_properties_set\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_set_property, \"gtk_style_properties_set_property\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_set_valist, \"gtk_style_properties_set_valist\", LIBRARY.GTK);
	Linker.link(gtk_style_properties_unset_property, \"gtk_style_properties_unset_property\", LIBRARY.GTK);

	// gtk.ThemingEngine

	Linker.link(gtk_theming_engine_get, \"gtk_theming_engine_get\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_direction, \"gtk_theming_engine_get_direction\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_junction_sides, \"gtk_theming_engine_get_junction_sides\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_path, \"gtk_theming_engine_get_path\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_property, \"gtk_theming_engine_get_property\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_screen, \"gtk_theming_engine_get_screen\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_state, \"gtk_theming_engine_get_state\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_style, \"gtk_theming_engine_get_style\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_style_property, \"gtk_theming_engine_get_style_property\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_style_valist, \"gtk_theming_engine_get_style_valist\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_valist, \"gtk_theming_engine_get_valist\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_color, \"gtk_theming_engine_get_color\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_background_color, \"gtk_theming_engine_get_background_color\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_border_color, \"gtk_theming_engine_get_border_color\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_border, \"gtk_theming_engine_get_border\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_padding, \"gtk_theming_engine_get_padding\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_margin, \"gtk_theming_engine_get_margin\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_get_font, \"gtk_theming_engine_get_font\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_has_class, \"gtk_theming_engine_has_class\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_has_region, \"gtk_theming_engine_has_region\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_lookup_color, \"gtk_theming_engine_lookup_color\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_state_is_running, \"gtk_theming_engine_state_is_running\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_load, \"gtk_theming_engine_load\", LIBRARY.GTK);
	Linker.link(gtk_theming_engine_register_property, \"gtk_theming_engine_register_property\", LIBRARY.GTK);

	// gtk.WidgetPath

	Linker.link(gtk_widget_path_append_type, \"gtk_widget_path_append_type\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_append_with_siblings, \"gtk_widget_path_append_with_siblings\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_append_for_widget, \"gtk_widget_path_append_for_widget\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_copy, \"gtk_widget_path_copy\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_ref, \"gtk_widget_path_ref\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_unref, \"gtk_widget_path_unref\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_free, \"gtk_widget_path_free\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_get_object_type, \"gtk_widget_path_get_object_type\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_has_parent, \"gtk_widget_path_has_parent\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_is_type, \"gtk_widget_path_is_type\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_add_class, \"gtk_widget_path_iter_add_class\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_add_region, \"gtk_widget_path_iter_add_region\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_clear_classes, \"gtk_widget_path_iter_clear_classes\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_clear_regions, \"gtk_widget_path_iter_clear_regions\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_get_name, \"gtk_widget_path_iter_get_name\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_get_object_type, \"gtk_widget_path_iter_get_object_type\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_get_siblings, \"gtk_widget_path_iter_get_siblings\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_get_sibling_index, \"gtk_widget_path_iter_get_sibling_index\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_has_class, \"gtk_widget_path_iter_has_class\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_has_name, \"gtk_widget_path_iter_has_name\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_has_qclass, \"gtk_widget_path_iter_has_qclass\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_has_qname, \"gtk_widget_path_iter_has_qname\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_has_qregion, \"gtk_widget_path_iter_has_qregion\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_has_region, \"gtk_widget_path_iter_has_region\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_list_classes, \"gtk_widget_path_iter_list_classes\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_list_regions, \"gtk_widget_path_iter_list_regions\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_remove_class, \"gtk_widget_path_iter_remove_class\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_remove_region, \"gtk_widget_path_iter_remove_region\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_set_name, \"gtk_widget_path_iter_set_name\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_iter_set_object_type, \"gtk_widget_path_iter_set_object_type\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_length, \"gtk_widget_path_length\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_new, \"gtk_widget_path_new\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_prepend_type, \"gtk_widget_path_prepend_type\", LIBRARY.GTK);
	Linker.link(gtk_widget_path_to_string, \"gtk_widget_path_to_string\", LIBRARY.GTK);

	// gtk.SymbolicColor

	Linker.link(gtk_symbolic_color_new_literal, \"gtk_symbolic_color_new_literal\", LIBRARY.GTK);
	Linker.link(gtk_symbolic_color_new_name, \"gtk_symbolic_color_new_name\", LIBRARY.GTK);
	Linker.link(gtk_symbolic_color_new_shade, \"gtk_symbolic_color_new_shade\", LIBRARY.GTK);
	Linker.link(gtk_symbolic_color_new_alpha, \"gtk_symbolic_color_new_alpha\", LIBRARY.GTK);
	Linker.link(gtk_symbolic_color_new_mix, \"gtk_symbolic_color_new_mix\", LIBRARY.GTK);
	Linker.link(gtk_symbolic_color_new_win32, \"gtk_symbolic_color_new_win32\", LIBRARY.GTK);
	Linker.link(gtk_symbolic_color_ref, \"gtk_symbolic_color_ref\", LIBRARY.GTK);
	Linker.link(gtk_symbolic_color_unref, \"gtk_symbolic_color_unref\", LIBRARY.GTK);
	Linker.link(gtk_symbolic_color_resolve, \"gtk_symbolic_color_resolve\", LIBRARY.GTK);
	Linker.link(gtk_symbolic_color_to_string, \"gtk_symbolic_color_to_string\", LIBRARY.GTK);

	// gtk.Gradient

	Linker.link(gtk_gradient_new_linear, \"gtk_gradient_new_linear\", LIBRARY.GTK);
	Linker.link(gtk_gradient_new_radial, \"gtk_gradient_new_radial\", LIBRARY.GTK);
	Linker.link(gtk_gradient_add_color_stop, \"gtk_gradient_add_color_stop\", LIBRARY.GTK);
	Linker.link(gtk_gradient_ref, \"gtk_gradient_ref\", LIBRARY.GTK);
	Linker.link(gtk_gradient_unref, \"gtk_gradient_unref\", LIBRARY.GTK);
	Linker.link(gtk_gradient_resolve, \"gtk_gradient_resolve\", LIBRARY.GTK);
	Linker.link(gtk_gradient_resolve_for_context, \"gtk_gradient_resolve_for_context\", LIBRARY.GTK);
	Linker.link(gtk_gradient_to_string, \"gtk_gradient_to_string\", LIBRARY.GTK);

	// gtk.IconTheme

	Linker.link(gtk_icon_theme_new, \"gtk_icon_theme_new\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_get_default, \"gtk_icon_theme_get_default\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_get_for_screen, \"gtk_icon_theme_get_for_screen\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_set_screen, \"gtk_icon_theme_set_screen\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_set_search_path, \"gtk_icon_theme_set_search_path\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_get_search_path, \"gtk_icon_theme_get_search_path\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_append_search_path, \"gtk_icon_theme_append_search_path\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_prepend_search_path, \"gtk_icon_theme_prepend_search_path\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_set_custom_theme, \"gtk_icon_theme_set_custom_theme\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_has_icon, \"gtk_icon_theme_has_icon\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_lookup_icon, \"gtk_icon_theme_lookup_icon\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_choose_icon, \"gtk_icon_theme_choose_icon\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_lookup_by_gicon, \"gtk_icon_theme_lookup_by_gicon\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_load_icon, \"gtk_icon_theme_load_icon\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_list_contexts, \"gtk_icon_theme_list_contexts\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_list_icons, \"gtk_icon_theme_list_icons\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_get_icon_sizes, \"gtk_icon_theme_get_icon_sizes\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_get_example_icon_name, \"gtk_icon_theme_get_example_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_rescan_if_needed, \"gtk_icon_theme_rescan_if_needed\", LIBRARY.GTK);
	Linker.link(gtk_icon_theme_add_builtin_icon, \"gtk_icon_theme_add_builtin_icon\", LIBRARY.GTK);

	// gtk.IconInfo

	Linker.link(gtk_icon_info_copy, \"gtk_icon_info_copy\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_free, \"gtk_icon_info_free\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_new_for_pixbuf, \"gtk_icon_info_new_for_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_base_size, \"gtk_icon_info_get_base_size\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_filename, \"gtk_icon_info_get_filename\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_builtin_pixbuf, \"gtk_icon_info_get_builtin_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_load_icon, \"gtk_icon_info_load_icon\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_load_symbolic, \"gtk_icon_info_load_symbolic\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_load_symbolic_for_style, \"gtk_icon_info_load_symbolic_for_style\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_load_symbolic_for_context, \"gtk_icon_info_load_symbolic_for_context\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_set_raw_coordinates, \"gtk_icon_info_set_raw_coordinates\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_embedded_rect, \"gtk_icon_info_get_embedded_rect\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_attach_points, \"gtk_icon_info_get_attach_points\", LIBRARY.GTK);
	Linker.link(gtk_icon_info_get_display_name, \"gtk_icon_info_get_display_name\", LIBRARY.GTK);

	// gtk.IconSource

	Linker.link(gtk_icon_source_copy, \"gtk_icon_source_copy\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_free, \"gtk_icon_source_free\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_direction, \"gtk_icon_source_get_direction\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_direction_wildcarded, \"gtk_icon_source_get_direction_wildcarded\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_filename, \"gtk_icon_source_get_filename\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_pixbuf, \"gtk_icon_source_get_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_icon_name, \"gtk_icon_source_get_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_size, \"gtk_icon_source_get_size\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_size_wildcarded, \"gtk_icon_source_get_size_wildcarded\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_state, \"gtk_icon_source_get_state\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_get_state_wildcarded, \"gtk_icon_source_get_state_wildcarded\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_new, \"gtk_icon_source_new\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_direction, \"gtk_icon_source_set_direction\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_direction_wildcarded, \"gtk_icon_source_set_direction_wildcarded\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_filename, \"gtk_icon_source_set_filename\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_pixbuf, \"gtk_icon_source_set_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_icon_name, \"gtk_icon_source_set_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_size, \"gtk_icon_source_set_size\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_size_wildcarded, \"gtk_icon_source_set_size_wildcarded\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_state, \"gtk_icon_source_set_state\", LIBRARY.GTK);
	Linker.link(gtk_icon_source_set_state_wildcarded, \"gtk_icon_source_set_state_wildcarded\", LIBRARY.GTK);

	// gtk.IconFactory

	Linker.link(gtk_icon_factory_add, \"gtk_icon_factory_add\", LIBRARY.GTK);
	Linker.link(gtk_icon_factory_add_default, \"gtk_icon_factory_add_default\", LIBRARY.GTK);
	Linker.link(gtk_icon_factory_lookup, \"gtk_icon_factory_lookup\", LIBRARY.GTK);
	Linker.link(gtk_icon_factory_lookup_default, \"gtk_icon_factory_lookup_default\", LIBRARY.GTK);
	Linker.link(gtk_icon_factory_new, \"gtk_icon_factory_new\", LIBRARY.GTK);
	Linker.link(gtk_icon_factory_remove_default, \"gtk_icon_factory_remove_default\", LIBRARY.GTK);

	// gtk.IconSet

	Linker.link(gtk_icon_set_add_source, \"gtk_icon_set_add_source\", LIBRARY.GTK);
	Linker.link(gtk_icon_set_copy, \"gtk_icon_set_copy\", LIBRARY.GTK);
	Linker.link(gtk_icon_set_new, \"gtk_icon_set_new\", LIBRARY.GTK);
	Linker.link(gtk_icon_set_new_from_pixbuf, \"gtk_icon_set_new_from_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_icon_set_ref, \"gtk_icon_set_ref\", LIBRARY.GTK);
	Linker.link(gtk_icon_set_render_icon, \"gtk_icon_set_render_icon\", LIBRARY.GTK);
	Linker.link(gtk_icon_set_render_icon_pixbuf, \"gtk_icon_set_render_icon_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_icon_set_unref, \"gtk_icon_set_unref\", LIBRARY.GTK);
	Linker.link(gtk_icon_set_get_sizes, \"gtk_icon_set_get_sizes\", LIBRARY.GTK);

	// gtk.IconSize

	Linker.link(gtk_icon_size_lookup, \"gtk_icon_size_lookup\", LIBRARY.GTK);
	Linker.link(gtk_icon_size_lookup_for_settings, \"gtk_icon_size_lookup_for_settings\", LIBRARY.GTK);
	Linker.link(gtk_icon_size_register, \"gtk_icon_size_register\", LIBRARY.GTK);
	Linker.link(gtk_icon_size_register_alias, \"gtk_icon_size_register_alias\", LIBRARY.GTK);
	Linker.link(gtk_icon_size_from_name, \"gtk_icon_size_from_name\", LIBRARY.GTK);
	Linker.link(gtk_icon_size_get_name, \"gtk_icon_size_get_name\", LIBRARY.GTK);

	// gtk.NumerableIcon

	Linker.link(gtk_numerable_icon_new, \"gtk_numerable_icon_new\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_new_with_style_context, \"gtk_numerable_icon_new_with_style_context\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_get_background_gicon, \"gtk_numerable_icon_get_background_gicon\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_set_background_gicon, \"gtk_numerable_icon_set_background_gicon\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_get_background_icon_name, \"gtk_numerable_icon_get_background_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_set_background_icon_name, \"gtk_numerable_icon_set_background_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_get_count, \"gtk_numerable_icon_get_count\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_set_count, \"gtk_numerable_icon_set_count\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_get_label, \"gtk_numerable_icon_get_label\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_set_label, \"gtk_numerable_icon_set_label\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_get_style_context, \"gtk_numerable_icon_get_style_context\", LIBRARY.GTK);
	Linker.link(gtk_numerable_icon_set_style_context, \"gtk_numerable_icon_set_style_context\", LIBRARY.GTK);

	// gtk.RcStyle

	Linker.link(gtk_rc_scanner_new, \"gtk_rc_scanner_new\", LIBRARY.GTK);
	Linker.link(gtk_rc_get_style, \"gtk_rc_get_style\", LIBRARY.GTK);
	Linker.link(gtk_rc_get_style_by_paths, \"gtk_rc_get_style_by_paths\", LIBRARY.GTK);
	Linker.link(gtk_rc_parse, \"gtk_rc_parse\", LIBRARY.GTK);
	Linker.link(gtk_rc_parse_string, \"gtk_rc_parse_string\", LIBRARY.GTK);
	Linker.link(gtk_rc_reparse_all, \"gtk_rc_reparse_all\", LIBRARY.GTK);
	Linker.link(gtk_rc_reparse_all_for_settings, \"gtk_rc_reparse_all_for_settings\", LIBRARY.GTK);
	Linker.link(gtk_rc_reset_styles, \"gtk_rc_reset_styles\", LIBRARY.GTK);
	Linker.link(gtk_rc_add_default_file, \"gtk_rc_add_default_file\", LIBRARY.GTK);
	Linker.link(gtk_rc_get_default_files, \"gtk_rc_get_default_files\", LIBRARY.GTK);
	Linker.link(gtk_rc_set_default_files, \"gtk_rc_set_default_files\", LIBRARY.GTK);
	Linker.link(gtk_rc_parse_color, \"gtk_rc_parse_color\", LIBRARY.GTK);
	Linker.link(gtk_rc_parse_color_full, \"gtk_rc_parse_color_full\", LIBRARY.GTK);
	Linker.link(gtk_rc_parse_state, \"gtk_rc_parse_state\", LIBRARY.GTK);
	Linker.link(gtk_rc_parse_priority, \"gtk_rc_parse_priority\", LIBRARY.GTK);
	Linker.link(gtk_rc_find_module_in_path, \"gtk_rc_find_module_in_path\", LIBRARY.GTK);
	Linker.link(gtk_rc_find_pixmap_in_path, \"gtk_rc_find_pixmap_in_path\", LIBRARY.GTK);
	Linker.link(gtk_rc_get_module_dir, \"gtk_rc_get_module_dir\", LIBRARY.GTK);
	Linker.link(gtk_rc_get_im_module_path, \"gtk_rc_get_im_module_path\", LIBRARY.GTK);
	Linker.link(gtk_rc_get_im_module_file, \"gtk_rc_get_im_module_file\", LIBRARY.GTK);
	Linker.link(gtk_rc_get_theme_dir, \"gtk_rc_get_theme_dir\", LIBRARY.GTK);
	Linker.link(gtk_rc_style_new, \"gtk_rc_style_new\", LIBRARY.GTK);
	Linker.link(gtk_rc_style_copy, \"gtk_rc_style_copy\", LIBRARY.GTK);

	// gtk.Style

	Linker.link(gtk_style_new, \"gtk_style_new\", LIBRARY.GTK);
	Linker.link(gtk_style_copy, \"gtk_style_copy\", LIBRARY.GTK);
	Linker.link(gtk_style_attach, \"gtk_style_attach\", LIBRARY.GTK);
	Linker.link(gtk_style_detach, \"gtk_style_detach\", LIBRARY.GTK);
	Linker.link(gtk_style_has_context, \"gtk_style_has_context\", LIBRARY.GTK);
	Linker.link(gtk_style_set_background, \"gtk_style_set_background\", LIBRARY.GTK);
	Linker.link(gtk_style_apply_default_background, \"gtk_style_apply_default_background\", LIBRARY.GTK);
	Linker.link(gtk_style_lookup_color, \"gtk_style_lookup_color\", LIBRARY.GTK);
	Linker.link(gtk_style_lookup_icon_set, \"gtk_style_lookup_icon_set\", LIBRARY.GTK);
	Linker.link(gtk_style_render_icon, \"gtk_style_render_icon\", LIBRARY.GTK);
	Linker.link(gtk_style_get_style_property, \"gtk_style_get_style_property\", LIBRARY.GTK);
	Linker.link(gtk_style_get_valist, \"gtk_style_get_valist\", LIBRARY.GTK);
	Linker.link(gtk_style_get, \"gtk_style_get\", LIBRARY.GTK);
	Linker.link(gtk_paint_arrow, \"gtk_paint_arrow\", LIBRARY.GTK);
	Linker.link(gtk_paint_box, \"gtk_paint_box\", LIBRARY.GTK);
	Linker.link(gtk_paint_box_gap, \"gtk_paint_box_gap\", LIBRARY.GTK);
	Linker.link(gtk_paint_check, \"gtk_paint_check\", LIBRARY.GTK);
	Linker.link(gtk_paint_diamond, \"gtk_paint_diamond\", LIBRARY.GTK);
	Linker.link(gtk_paint_extension, \"gtk_paint_extension\", LIBRARY.GTK);
	Linker.link(gtk_paint_flat_box, \"gtk_paint_flat_box\", LIBRARY.GTK);
	Linker.link(gtk_paint_focus, \"gtk_paint_focus\", LIBRARY.GTK);
	Linker.link(gtk_paint_handle, \"gtk_paint_handle\", LIBRARY.GTK);
	Linker.link(gtk_paint_hline, \"gtk_paint_hline\", LIBRARY.GTK);
	Linker.link(gtk_paint_option, \"gtk_paint_option\", LIBRARY.GTK);
	Linker.link(gtk_paint_shadow, \"gtk_paint_shadow\", LIBRARY.GTK);
	Linker.link(gtk_paint_shadow_gap, \"gtk_paint_shadow_gap\", LIBRARY.GTK);
	Linker.link(gtk_paint_slider, \"gtk_paint_slider\", LIBRARY.GTK);
	Linker.link(gtk_paint_spinner, \"gtk_paint_spinner\", LIBRARY.GTK);
	Linker.link(gtk_paint_tab, \"gtk_paint_tab\", LIBRARY.GTK);
	Linker.link(gtk_paint_vline, \"gtk_paint_vline\", LIBRARY.GTK);
	Linker.link(gtk_paint_expander, \"gtk_paint_expander\", LIBRARY.GTK);
	Linker.link(gtk_paint_layout, \"gtk_paint_layout\", LIBRARY.GTK);
	Linker.link(gtk_paint_resize_grip, \"gtk_paint_resize_grip\", LIBRARY.GTK);
	Linker.link(gtk_draw_insertion_cursor, \"gtk_draw_insertion_cursor\", LIBRARY.GTK);

	// gtk.Dialog

	Linker.link(gtk_dialog_new, \"gtk_dialog_new\", LIBRARY.GTK);
	Linker.link(gtk_dialog_new_with_buttons, \"gtk_dialog_new_with_buttons\", LIBRARY.GTK);
	Linker.link(gtk_dialog_run, \"gtk_dialog_run\", LIBRARY.GTK);
	Linker.link(gtk_dialog_response, \"gtk_dialog_response\", LIBRARY.GTK);
	Linker.link(gtk_dialog_add_button, \"gtk_dialog_add_button\", LIBRARY.GTK);
	Linker.link(gtk_dialog_add_buttons, \"gtk_dialog_add_buttons\", LIBRARY.GTK);
	Linker.link(gtk_dialog_add_action_widget, \"gtk_dialog_add_action_widget\", LIBRARY.GTK);
	Linker.link(gtk_dialog_set_default_response, \"gtk_dialog_set_default_response\", LIBRARY.GTK);
	Linker.link(gtk_dialog_set_response_sensitive, \"gtk_dialog_set_response_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_dialog_get_response_for_widget, \"gtk_dialog_get_response_for_widget\", LIBRARY.GTK);
	Linker.link(gtk_dialog_get_widget_for_response, \"gtk_dialog_get_widget_for_response\", LIBRARY.GTK);
	Linker.link(gtk_dialog_get_action_area, \"gtk_dialog_get_action_area\", LIBRARY.GTK);
	Linker.link(gtk_dialog_get_content_area, \"gtk_dialog_get_content_area\", LIBRARY.GTK);
	Linker.link(gtk_alternative_dialog_button_order, \"gtk_alternative_dialog_button_order\", LIBRARY.GTK);
	Linker.link(gtk_dialog_set_alternative_button_order, \"gtk_dialog_set_alternative_button_order\", LIBRARY.GTK);
	Linker.link(gtk_dialog_set_alternative_button_order_from_array, \"gtk_dialog_set_alternative_button_order_from_array\", LIBRARY.GTK);

	// gtk.Invisible

	Linker.link(gtk_invisible_new, \"gtk_invisible_new\", LIBRARY.GTK);
	Linker.link(gtk_invisible_new_for_screen, \"gtk_invisible_new_for_screen\", LIBRARY.GTK);
	Linker.link(gtk_invisible_set_screen, \"gtk_invisible_set_screen\", LIBRARY.GTK);
	Linker.link(gtk_invisible_get_screen, \"gtk_invisible_get_screen\", LIBRARY.GTK);

	// gtk.MessageDialog

	Linker.link(gtk_message_dialog_new, \"gtk_message_dialog_new\", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_new_with_markup, \"gtk_message_dialog_new_with_markup\", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_set_markup, \"gtk_message_dialog_set_markup\", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_set_image, \"gtk_message_dialog_set_image\", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_get_image, \"gtk_message_dialog_get_image\", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_format_secondary_text, \"gtk_message_dialog_format_secondary_text\", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_format_secondary_markup, \"gtk_message_dialog_format_secondary_markup\", LIBRARY.GTK);
	Linker.link(gtk_message_dialog_get_message_area, \"gtk_message_dialog_get_message_area\", LIBRARY.GTK);

	// gtk.PopupBox


	// gtk.Window

	Linker.link(gtk_window_new, \"gtk_window_new\", LIBRARY.GTK);
	Linker.link(gtk_window_set_title, \"gtk_window_set_title\", LIBRARY.GTK);
	Linker.link(gtk_window_set_wmclass, \"gtk_window_set_wmclass\", LIBRARY.GTK);
	Linker.link(gtk_window_set_resizable, \"gtk_window_set_resizable\", LIBRARY.GTK);
	Linker.link(gtk_window_get_resizable, \"gtk_window_get_resizable\", LIBRARY.GTK);
	Linker.link(gtk_window_add_accel_group, \"gtk_window_add_accel_group\", LIBRARY.GTK);
	Linker.link(gtk_window_remove_accel_group, \"gtk_window_remove_accel_group\", LIBRARY.GTK);
	Linker.link(gtk_window_activate_focus, \"gtk_window_activate_focus\", LIBRARY.GTK);
	Linker.link(gtk_window_activate_default, \"gtk_window_activate_default\", LIBRARY.GTK);
	Linker.link(gtk_window_set_modal, \"gtk_window_set_modal\", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_size, \"gtk_window_set_default_size\", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_geometry, \"gtk_window_set_default_geometry\", LIBRARY.GTK);
	Linker.link(gtk_window_set_geometry_hints, \"gtk_window_set_geometry_hints\", LIBRARY.GTK);
	Linker.link(gtk_window_set_gravity, \"gtk_window_set_gravity\", LIBRARY.GTK);
	Linker.link(gtk_window_get_gravity, \"gtk_window_get_gravity\", LIBRARY.GTK);
	Linker.link(gtk_window_set_position, \"gtk_window_set_position\", LIBRARY.GTK);
	Linker.link(gtk_window_set_transient_for, \"gtk_window_set_transient_for\", LIBRARY.GTK);
	Linker.link(gtk_window_set_attached_to, \"gtk_window_set_attached_to\", LIBRARY.GTK);
	Linker.link(gtk_window_set_destroy_with_parent, \"gtk_window_set_destroy_with_parent\", LIBRARY.GTK);
	Linker.link(gtk_window_set_hide_titlebar_when_maximized, \"gtk_window_set_hide_titlebar_when_maximized\", LIBRARY.GTK);
	Linker.link(gtk_window_set_screen, \"gtk_window_set_screen\", LIBRARY.GTK);
	Linker.link(gtk_window_get_screen, \"gtk_window_get_screen\", LIBRARY.GTK);
	Linker.link(gtk_window_is_active, \"gtk_window_is_active\", LIBRARY.GTK);
	Linker.link(gtk_window_has_toplevel_focus, \"gtk_window_has_toplevel_focus\", LIBRARY.GTK);
	Linker.link(gtk_window_list_toplevels, \"gtk_window_list_toplevels\", LIBRARY.GTK);
	Linker.link(gtk_window_add_mnemonic, \"gtk_window_add_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_window_remove_mnemonic, \"gtk_window_remove_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_window_mnemonic_activate, \"gtk_window_mnemonic_activate\", LIBRARY.GTK);
	Linker.link(gtk_window_activate_key, \"gtk_window_activate_key\", LIBRARY.GTK);
	Linker.link(gtk_window_propagate_key_event, \"gtk_window_propagate_key_event\", LIBRARY.GTK);
	Linker.link(gtk_window_get_focus, \"gtk_window_get_focus\", LIBRARY.GTK);
	Linker.link(gtk_window_set_focus, \"gtk_window_set_focus\", LIBRARY.GTK);
	Linker.link(gtk_window_get_default_widget, \"gtk_window_get_default_widget\", LIBRARY.GTK);
	Linker.link(gtk_window_set_default, \"gtk_window_set_default\", LIBRARY.GTK);
	Linker.link(gtk_window_present, \"gtk_window_present\", LIBRARY.GTK);
	Linker.link(gtk_window_present_with_time, \"gtk_window_present_with_time\", LIBRARY.GTK);
	Linker.link(gtk_window_iconify, \"gtk_window_iconify\", LIBRARY.GTK);
	Linker.link(gtk_window_deiconify, \"gtk_window_deiconify\", LIBRARY.GTK);
	Linker.link(gtk_window_stick, \"gtk_window_stick\", LIBRARY.GTK);
	Linker.link(gtk_window_unstick, \"gtk_window_unstick\", LIBRARY.GTK);
	Linker.link(gtk_window_maximize, \"gtk_window_maximize\", LIBRARY.GTK);
	Linker.link(gtk_window_unmaximize, \"gtk_window_unmaximize\", LIBRARY.GTK);
	Linker.link(gtk_window_fullscreen, \"gtk_window_fullscreen\", LIBRARY.GTK);
	Linker.link(gtk_window_unfullscreen, \"gtk_window_unfullscreen\", LIBRARY.GTK);
	Linker.link(gtk_window_set_keep_above, \"gtk_window_set_keep_above\", LIBRARY.GTK);
	Linker.link(gtk_window_set_keep_below, \"gtk_window_set_keep_below\", LIBRARY.GTK);
	Linker.link(gtk_window_begin_resize_drag, \"gtk_window_begin_resize_drag\", LIBRARY.GTK);
	Linker.link(gtk_window_begin_move_drag, \"gtk_window_begin_move_drag\", LIBRARY.GTK);
	Linker.link(gtk_window_set_decorated, \"gtk_window_set_decorated\", LIBRARY.GTK);
	Linker.link(gtk_window_set_deletable, \"gtk_window_set_deletable\", LIBRARY.GTK);
	Linker.link(gtk_window_set_mnemonic_modifier, \"gtk_window_set_mnemonic_modifier\", LIBRARY.GTK);
	Linker.link(gtk_window_set_type_hint, \"gtk_window_set_type_hint\", LIBRARY.GTK);
	Linker.link(gtk_window_set_skip_taskbar_hint, \"gtk_window_set_skip_taskbar_hint\", LIBRARY.GTK);
	Linker.link(gtk_window_set_skip_pager_hint, \"gtk_window_set_skip_pager_hint\", LIBRARY.GTK);
	Linker.link(gtk_window_set_urgency_hint, \"gtk_window_set_urgency_hint\", LIBRARY.GTK);
	Linker.link(gtk_window_set_accept_focus, \"gtk_window_set_accept_focus\", LIBRARY.GTK);
	Linker.link(gtk_window_set_focus_on_map, \"gtk_window_set_focus_on_map\", LIBRARY.GTK);
	Linker.link(gtk_window_set_startup_id, \"gtk_window_set_startup_id\", LIBRARY.GTK);
	Linker.link(gtk_window_set_role, \"gtk_window_set_role\", LIBRARY.GTK);
	Linker.link(gtk_window_get_decorated, \"gtk_window_get_decorated\", LIBRARY.GTK);
	Linker.link(gtk_window_get_deletable, \"gtk_window_get_deletable\", LIBRARY.GTK);
	Linker.link(gtk_window_get_default_icon_list, \"gtk_window_get_default_icon_list\", LIBRARY.GTK);
	Linker.link(gtk_window_get_default_icon_name, \"gtk_window_get_default_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_window_get_default_size, \"gtk_window_get_default_size\", LIBRARY.GTK);
	Linker.link(gtk_window_get_destroy_with_parent, \"gtk_window_get_destroy_with_parent\", LIBRARY.GTK);
	Linker.link(gtk_window_get_hide_titlebar_when_maximized, \"gtk_window_get_hide_titlebar_when_maximized\", LIBRARY.GTK);
	Linker.link(gtk_window_get_icon, \"gtk_window_get_icon\", LIBRARY.GTK);
	Linker.link(gtk_window_get_icon_list, \"gtk_window_get_icon_list\", LIBRARY.GTK);
	Linker.link(gtk_window_get_icon_name, \"gtk_window_get_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_window_get_mnemonic_modifier, \"gtk_window_get_mnemonic_modifier\", LIBRARY.GTK);
	Linker.link(gtk_window_get_modal, \"gtk_window_get_modal\", LIBRARY.GTK);
	Linker.link(gtk_window_get_position, \"gtk_window_get_position\", LIBRARY.GTK);
	Linker.link(gtk_window_get_role, \"gtk_window_get_role\", LIBRARY.GTK);
	Linker.link(gtk_window_get_size, \"gtk_window_get_size\", LIBRARY.GTK);
	Linker.link(gtk_window_get_title, \"gtk_window_get_title\", LIBRARY.GTK);
	Linker.link(gtk_window_get_transient_for, \"gtk_window_get_transient_for\", LIBRARY.GTK);
	Linker.link(gtk_window_get_attached_to, \"gtk_window_get_attached_to\", LIBRARY.GTK);
	Linker.link(gtk_window_get_type_hint, \"gtk_window_get_type_hint\", LIBRARY.GTK);
	Linker.link(gtk_window_get_skip_taskbar_hint, \"gtk_window_get_skip_taskbar_hint\", LIBRARY.GTK);
	Linker.link(gtk_window_get_skip_pager_hint, \"gtk_window_get_skip_pager_hint\", LIBRARY.GTK);
	Linker.link(gtk_window_get_urgency_hint, \"gtk_window_get_urgency_hint\", LIBRARY.GTK);
	Linker.link(gtk_window_get_accept_focus, \"gtk_window_get_accept_focus\", LIBRARY.GTK);
	Linker.link(gtk_window_get_focus_on_map, \"gtk_window_get_focus_on_map\", LIBRARY.GTK);
	Linker.link(gtk_window_get_group, \"gtk_window_get_group\", LIBRARY.GTK);
	Linker.link(gtk_window_has_group, \"gtk_window_has_group\", LIBRARY.GTK);
	Linker.link(gtk_window_get_window_type, \"gtk_window_get_window_type\", LIBRARY.GTK);
	Linker.link(gtk_window_move, \"gtk_window_move\", LIBRARY.GTK);
	Linker.link(gtk_window_parse_geometry, \"gtk_window_parse_geometry\", LIBRARY.GTK);
	Linker.link(gtk_window_reshow_with_initial_size, \"gtk_window_reshow_with_initial_size\", LIBRARY.GTK);
	Linker.link(gtk_window_resize, \"gtk_window_resize\", LIBRARY.GTK);
	Linker.link(gtk_window_resize_to_geometry, \"gtk_window_resize_to_geometry\", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_icon_list, \"gtk_window_set_default_icon_list\", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_icon, \"gtk_window_set_default_icon\", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_icon_from_file, \"gtk_window_set_default_icon_from_file\", LIBRARY.GTK);
	Linker.link(gtk_window_set_default_icon_name, \"gtk_window_set_default_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_window_set_icon, \"gtk_window_set_icon\", LIBRARY.GTK);
	Linker.link(gtk_window_set_icon_list, \"gtk_window_set_icon_list\", LIBRARY.GTK);
	Linker.link(gtk_window_set_icon_from_file, \"gtk_window_set_icon_from_file\", LIBRARY.GTK);
	Linker.link(gtk_window_set_icon_name, \"gtk_window_set_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_window_set_auto_startup_notification, \"gtk_window_set_auto_startup_notification\", LIBRARY.GTK);
	Linker.link(gtk_window_get_opacity, \"gtk_window_get_opacity\", LIBRARY.GTK);
	Linker.link(gtk_window_set_opacity, \"gtk_window_set_opacity\", LIBRARY.GTK);
	Linker.link(gtk_window_get_mnemonics_visible, \"gtk_window_get_mnemonics_visible\", LIBRARY.GTK);
	Linker.link(gtk_window_set_mnemonics_visible, \"gtk_window_set_mnemonics_visible\", LIBRARY.GTK);
	Linker.link(gtk_window_get_focus_visible, \"gtk_window_get_focus_visible\", LIBRARY.GTK);
	Linker.link(gtk_window_set_focus_visible, \"gtk_window_set_focus_visible\", LIBRARY.GTK);
	Linker.link(gtk_window_set_has_resize_grip, \"gtk_window_set_has_resize_grip\", LIBRARY.GTK);
	Linker.link(gtk_window_get_has_resize_grip, \"gtk_window_get_has_resize_grip\", LIBRARY.GTK);
	Linker.link(gtk_window_resize_grip_is_visible, \"gtk_window_resize_grip_is_visible\", LIBRARY.GTK);
	Linker.link(gtk_window_get_resize_grip_area, \"gtk_window_get_resize_grip_area\", LIBRARY.GTK);
	Linker.link(gtk_window_get_application, \"gtk_window_get_application\", LIBRARY.GTK);
	Linker.link(gtk_window_set_application, \"gtk_window_set_application\", LIBRARY.GTK);
	Linker.link(gtk_window_set_has_user_ref_count, \"gtk_window_set_has_user_ref_count\", LIBRARY.GTK);

	// gtk.


	// gtk.WindowGroup

	Linker.link(gtk_window_group_new, \"gtk_window_group_new\", LIBRARY.GTK);
	Linker.link(gtk_window_group_add_window, \"gtk_window_group_add_window\", LIBRARY.GTK);
	Linker.link(gtk_window_group_remove_window, \"gtk_window_group_remove_window\", LIBRARY.GTK);
	Linker.link(gtk_window_group_list_windows, \"gtk_window_group_list_windows\", LIBRARY.GTK);
	Linker.link(gtk_window_group_get_current_grab, \"gtk_window_group_get_current_grab\", LIBRARY.GTK);
	Linker.link(gtk_window_group_get_current_device_grab, \"gtk_window_group_get_current_device_grab\", LIBRARY.GTK);

	// gtk.AboutDialog

	Linker.link(gtk_about_dialog_new, \"gtk_about_dialog_new\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_program_name, \"gtk_about_dialog_get_program_name\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_program_name, \"gtk_about_dialog_set_program_name\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_version, \"gtk_about_dialog_get_version\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_version, \"gtk_about_dialog_set_version\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_copyright, \"gtk_about_dialog_get_copyright\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_copyright, \"gtk_about_dialog_set_copyright\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_comments, \"gtk_about_dialog_get_comments\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_comments, \"gtk_about_dialog_set_comments\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_license, \"gtk_about_dialog_get_license\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_license, \"gtk_about_dialog_set_license\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_wrap_license, \"gtk_about_dialog_get_wrap_license\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_wrap_license, \"gtk_about_dialog_set_wrap_license\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_license_type, \"gtk_about_dialog_get_license_type\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_license_type, \"gtk_about_dialog_set_license_type\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_website, \"gtk_about_dialog_get_website\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_website, \"gtk_about_dialog_set_website\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_website_label, \"gtk_about_dialog_get_website_label\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_website_label, \"gtk_about_dialog_set_website_label\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_authors, \"gtk_about_dialog_get_authors\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_authors, \"gtk_about_dialog_set_authors\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_artists, \"gtk_about_dialog_get_artists\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_artists, \"gtk_about_dialog_set_artists\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_documenters, \"gtk_about_dialog_get_documenters\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_documenters, \"gtk_about_dialog_set_documenters\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_translator_credits, \"gtk_about_dialog_get_translator_credits\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_translator_credits, \"gtk_about_dialog_set_translator_credits\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_logo, \"gtk_about_dialog_get_logo\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_logo, \"gtk_about_dialog_set_logo\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_get_logo_icon_name, \"gtk_about_dialog_get_logo_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_set_logo_icon_name, \"gtk_about_dialog_set_logo_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_about_dialog_add_credit_section, \"gtk_about_dialog_add_credit_section\", LIBRARY.GTK);
	Linker.link(gtk_show_about_dialog, \"gtk_show_about_dialog\", LIBRARY.GTK);

	// gtk.Assistant

	Linker.link(gtk_assistant_new, \"gtk_assistant_new\", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_current_page, \"gtk_assistant_get_current_page\", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_current_page, \"gtk_assistant_set_current_page\", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_n_pages, \"gtk_assistant_get_n_pages\", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_nth_page, \"gtk_assistant_get_nth_page\", LIBRARY.GTK);
	Linker.link(gtk_assistant_prepend_page, \"gtk_assistant_prepend_page\", LIBRARY.GTK);
	Linker.link(gtk_assistant_append_page, \"gtk_assistant_append_page\", LIBRARY.GTK);
	Linker.link(gtk_assistant_insert_page, \"gtk_assistant_insert_page\", LIBRARY.GTK);
	Linker.link(gtk_assistant_remove_page, \"gtk_assistant_remove_page\", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_forward_page_func, \"gtk_assistant_set_forward_page_func\", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_page_type, \"gtk_assistant_set_page_type\", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_page_type, \"gtk_assistant_get_page_type\", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_page_title, \"gtk_assistant_set_page_title\", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_page_title, \"gtk_assistant_get_page_title\", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_page_header_image, \"gtk_assistant_set_page_header_image\", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_page_header_image, \"gtk_assistant_get_page_header_image\", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_page_side_image, \"gtk_assistant_set_page_side_image\", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_page_side_image, \"gtk_assistant_get_page_side_image\", LIBRARY.GTK);
	Linker.link(gtk_assistant_set_page_complete, \"gtk_assistant_set_page_complete\", LIBRARY.GTK);
	Linker.link(gtk_assistant_get_page_complete, \"gtk_assistant_get_page_complete\", LIBRARY.GTK);
	Linker.link(gtk_assistant_add_action_widget, \"gtk_assistant_add_action_widget\", LIBRARY.GTK);
	Linker.link(gtk_assistant_remove_action_widget, \"gtk_assistant_remove_action_widget\", LIBRARY.GTK);
	Linker.link(gtk_assistant_update_buttons_state, \"gtk_assistant_update_buttons_state\", LIBRARY.GTK);
	Linker.link(gtk_assistant_commit, \"gtk_assistant_commit\", LIBRARY.GTK);
	Linker.link(gtk_assistant_next_page, \"gtk_assistant_next_page\", LIBRARY.GTK);
	Linker.link(gtk_assistant_previous_page, \"gtk_assistant_previous_page\", LIBRARY.GTK);

	// gtk.OffscreenWindow

	Linker.link(gtk_offscreen_window_new, \"gtk_offscreen_window_new\", LIBRARY.GTK);
	Linker.link(gtk_offscreen_window_get_surface, \"gtk_offscreen_window_get_surface\", LIBRARY.GTK);
	Linker.link(gtk_offscreen_window_get_pixbuf, \"gtk_offscreen_window_get_pixbuf\", LIBRARY.GTK);

	// gtk.AccelLabel

	Linker.link(gtk_accel_label_new, \"gtk_accel_label_new\", LIBRARY.GTK);
	Linker.link(gtk_accel_label_set_accel_closure, \"gtk_accel_label_set_accel_closure\", LIBRARY.GTK);
	Linker.link(gtk_accel_label_get_accel_widget, \"gtk_accel_label_get_accel_widget\", LIBRARY.GTK);
	Linker.link(gtk_accel_label_set_accel_widget, \"gtk_accel_label_set_accel_widget\", LIBRARY.GTK);
	Linker.link(gtk_accel_label_get_accel_width, \"gtk_accel_label_get_accel_width\", LIBRARY.GTK);
	Linker.link(gtk_accel_label_set_accel, \"gtk_accel_label_set_accel\", LIBRARY.GTK);
	Linker.link(gtk_accel_label_refetch, \"gtk_accel_label_refetch\", LIBRARY.GTK);

	// gtk.Image

	Linker.link(gtk_image_get_icon_set, \"gtk_image_get_icon_set\", LIBRARY.GTK);
	Linker.link(gtk_image_get_pixbuf, \"gtk_image_get_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_image_get_stock, \"gtk_image_get_stock\", LIBRARY.GTK);
	Linker.link(gtk_image_get_animation, \"gtk_image_get_animation\", LIBRARY.GTK);
	Linker.link(gtk_image_get_icon_name, \"gtk_image_get_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_image_get_gicon, \"gtk_image_get_gicon\", LIBRARY.GTK);
	Linker.link(gtk_image_get_storage_type, \"gtk_image_get_storage_type\", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_file, \"gtk_image_new_from_file\", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_icon_set, \"gtk_image_new_from_icon_set\", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_pixbuf, \"gtk_image_new_from_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_stock, \"gtk_image_new_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_animation, \"gtk_image_new_from_animation\", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_icon_name, \"gtk_image_new_from_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_gicon, \"gtk_image_new_from_gicon\", LIBRARY.GTK);
	Linker.link(gtk_image_new_from_resource, \"gtk_image_new_from_resource\", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_file, \"gtk_image_set_from_file\", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_icon_set, \"gtk_image_set_from_icon_set\", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_pixbuf, \"gtk_image_set_from_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_stock, \"gtk_image_set_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_animation, \"gtk_image_set_from_animation\", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_icon_name, \"gtk_image_set_from_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_gicon, \"gtk_image_set_from_gicon\", LIBRARY.GTK);
	Linker.link(gtk_image_set_from_resource, \"gtk_image_set_from_resource\", LIBRARY.GTK);
	Linker.link(gtk_image_clear, \"gtk_image_clear\", LIBRARY.GTK);
	Linker.link(gtk_image_new, \"gtk_image_new\", LIBRARY.GTK);
	Linker.link(gtk_image_set_pixel_size, \"gtk_image_set_pixel_size\", LIBRARY.GTK);
	Linker.link(gtk_image_get_pixel_size, \"gtk_image_get_pixel_size\", LIBRARY.GTK);

	// gtk.Label

	Linker.link(gtk_label_new, \"gtk_label_new\", LIBRARY.GTK);
	Linker.link(gtk_label_set_text, \"gtk_label_set_text\", LIBRARY.GTK);
	Linker.link(gtk_label_set_attributes, \"gtk_label_set_attributes\", LIBRARY.GTK);
	Linker.link(gtk_label_set_markup, \"gtk_label_set_markup\", LIBRARY.GTK);
	Linker.link(gtk_label_set_markup_with_mnemonic, \"gtk_label_set_markup_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_label_set_pattern, \"gtk_label_set_pattern\", LIBRARY.GTK);
	Linker.link(gtk_label_set_justify, \"gtk_label_set_justify\", LIBRARY.GTK);
	Linker.link(gtk_label_set_ellipsize, \"gtk_label_set_ellipsize\", LIBRARY.GTK);
	Linker.link(gtk_label_set_width_chars, \"gtk_label_set_width_chars\", LIBRARY.GTK);
	Linker.link(gtk_label_set_max_width_chars, \"gtk_label_set_max_width_chars\", LIBRARY.GTK);
	Linker.link(gtk_label_set_line_wrap, \"gtk_label_set_line_wrap\", LIBRARY.GTK);
	Linker.link(gtk_label_set_line_wrap_mode, \"gtk_label_set_line_wrap_mode\", LIBRARY.GTK);
	Linker.link(gtk_label_get_layout_offsets, \"gtk_label_get_layout_offsets\", LIBRARY.GTK);
	Linker.link(gtk_label_get_mnemonic_keyval, \"gtk_label_get_mnemonic_keyval\", LIBRARY.GTK);
	Linker.link(gtk_label_get_selectable, \"gtk_label_get_selectable\", LIBRARY.GTK);
	Linker.link(gtk_label_get_text, \"gtk_label_get_text\", LIBRARY.GTK);
	Linker.link(gtk_label_new_with_mnemonic, \"gtk_label_new_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_label_select_region, \"gtk_label_select_region\", LIBRARY.GTK);
	Linker.link(gtk_label_set_mnemonic_widget, \"gtk_label_set_mnemonic_widget\", LIBRARY.GTK);
	Linker.link(gtk_label_set_selectable, \"gtk_label_set_selectable\", LIBRARY.GTK);
	Linker.link(gtk_label_set_text_with_mnemonic, \"gtk_label_set_text_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_label_get_attributes, \"gtk_label_get_attributes\", LIBRARY.GTK);
	Linker.link(gtk_label_get_justify, \"gtk_label_get_justify\", LIBRARY.GTK);
	Linker.link(gtk_label_get_ellipsize, \"gtk_label_get_ellipsize\", LIBRARY.GTK);
	Linker.link(gtk_label_get_width_chars, \"gtk_label_get_width_chars\", LIBRARY.GTK);
	Linker.link(gtk_label_get_max_width_chars, \"gtk_label_get_max_width_chars\", LIBRARY.GTK);
	Linker.link(gtk_label_get_label, \"gtk_label_get_label\", LIBRARY.GTK);
	Linker.link(gtk_label_get_layout, \"gtk_label_get_layout\", LIBRARY.GTK);
	Linker.link(gtk_label_get_line_wrap, \"gtk_label_get_line_wrap\", LIBRARY.GTK);
	Linker.link(gtk_label_get_line_wrap_mode, \"gtk_label_get_line_wrap_mode\", LIBRARY.GTK);
	Linker.link(gtk_label_get_mnemonic_widget, \"gtk_label_get_mnemonic_widget\", LIBRARY.GTK);
	Linker.link(gtk_label_get_selection_bounds, \"gtk_label_get_selection_bounds\", LIBRARY.GTK);
	Linker.link(gtk_label_get_use_markup, \"gtk_label_get_use_markup\", LIBRARY.GTK);
	Linker.link(gtk_label_get_use_underline, \"gtk_label_get_use_underline\", LIBRARY.GTK);
	Linker.link(gtk_label_get_single_line_mode, \"gtk_label_get_single_line_mode\", LIBRARY.GTK);
	Linker.link(gtk_label_get_angle, \"gtk_label_get_angle\", LIBRARY.GTK);
	Linker.link(gtk_label_set_label, \"gtk_label_set_label\", LIBRARY.GTK);
	Linker.link(gtk_label_set_use_markup, \"gtk_label_set_use_markup\", LIBRARY.GTK);
	Linker.link(gtk_label_set_use_underline, \"gtk_label_set_use_underline\", LIBRARY.GTK);
	Linker.link(gtk_label_set_single_line_mode, \"gtk_label_set_single_line_mode\", LIBRARY.GTK);
	Linker.link(gtk_label_set_angle, \"gtk_label_set_angle\", LIBRARY.GTK);
	Linker.link(gtk_label_get_current_uri, \"gtk_label_get_current_uri\", LIBRARY.GTK);
	Linker.link(gtk_label_set_track_visited_links, \"gtk_label_set_track_visited_links\", LIBRARY.GTK);
	Linker.link(gtk_label_get_track_visited_links, \"gtk_label_get_track_visited_links\", LIBRARY.GTK);

	// gtk.ProgressBar

	Linker.link(gtk_progress_bar_new, \"gtk_progress_bar_new\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_pulse, \"gtk_progress_bar_pulse\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_fraction, \"gtk_progress_bar_set_fraction\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_fraction, \"gtk_progress_bar_get_fraction\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_inverted, \"gtk_progress_bar_set_inverted\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_inverted, \"gtk_progress_bar_get_inverted\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_show_text, \"gtk_progress_bar_set_show_text\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_show_text, \"gtk_progress_bar_get_show_text\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_text, \"gtk_progress_bar_set_text\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_text, \"gtk_progress_bar_get_text\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_ellipsize, \"gtk_progress_bar_set_ellipsize\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_ellipsize, \"gtk_progress_bar_get_ellipsize\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_set_pulse_step, \"gtk_progress_bar_set_pulse_step\", LIBRARY.GTK);
	Linker.link(gtk_progress_bar_get_pulse_step, \"gtk_progress_bar_get_pulse_step\", LIBRARY.GTK);

	// gtk.Statusbar

	Linker.link(gtk_statusbar_new, \"gtk_statusbar_new\", LIBRARY.GTK);
	Linker.link(gtk_statusbar_get_context_id, \"gtk_statusbar_get_context_id\", LIBRARY.GTK);
	Linker.link(gtk_statusbar_push, \"gtk_statusbar_push\", LIBRARY.GTK);
	Linker.link(gtk_statusbar_pop, \"gtk_statusbar_pop\", LIBRARY.GTK);
	Linker.link(gtk_statusbar_remove, \"gtk_statusbar_remove\", LIBRARY.GTK);
	Linker.link(gtk_statusbar_remove_all, \"gtk_statusbar_remove_all\", LIBRARY.GTK);
	Linker.link(gtk_statusbar_get_message_area, \"gtk_statusbar_get_message_area\", LIBRARY.GTK);

	// gtk.LevelBar

	Linker.link(gtk_level_bar_new, \"gtk_level_bar_new\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_new_for_interval, \"gtk_level_bar_new_for_interval\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_set_mode, \"gtk_level_bar_set_mode\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_get_mode, \"gtk_level_bar_get_mode\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_set_value, \"gtk_level_bar_set_value\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_get_value, \"gtk_level_bar_get_value\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_set_min_value, \"gtk_level_bar_set_min_value\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_get_min_value, \"gtk_level_bar_get_min_value\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_set_max_value, \"gtk_level_bar_set_max_value\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_get_max_value, \"gtk_level_bar_get_max_value\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_add_offset_value, \"gtk_level_bar_add_offset_value\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_remove_offset_value, \"gtk_level_bar_remove_offset_value\", LIBRARY.GTK);
	Linker.link(gtk_level_bar_get_offset_value, \"gtk_level_bar_get_offset_value\", LIBRARY.GTK);

	// gtk.InfoBar

	Linker.link(gtk_info_bar_new, \"gtk_info_bar_new\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_new_with_buttons, \"gtk_info_bar_new_with_buttons\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_add_action_widget, \"gtk_info_bar_add_action_widget\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_add_button, \"gtk_info_bar_add_button\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_add_buttons, \"gtk_info_bar_add_buttons\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_set_response_sensitive, \"gtk_info_bar_set_response_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_set_default_response, \"gtk_info_bar_set_default_response\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_response, \"gtk_info_bar_response\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_set_message_type, \"gtk_info_bar_set_message_type\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_get_message_type, \"gtk_info_bar_get_message_type\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_get_action_area, \"gtk_info_bar_get_action_area\", LIBRARY.GTK);
	Linker.link(gtk_info_bar_get_content_area, \"gtk_info_bar_get_content_area\", LIBRARY.GTK);

	// gtk.StatusIcon

	Linker.link(gtk_status_icon_new, \"gtk_status_icon_new\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_new_from_pixbuf, \"gtk_status_icon_new_from_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_new_from_file, \"gtk_status_icon_new_from_file\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_new_from_stock, \"gtk_status_icon_new_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_new_from_icon_name, \"gtk_status_icon_new_from_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_new_from_gicon, \"gtk_status_icon_new_from_gicon\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_from_pixbuf, \"gtk_status_icon_set_from_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_from_file, \"gtk_status_icon_set_from_file\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_from_stock, \"gtk_status_icon_set_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_from_icon_name, \"gtk_status_icon_set_from_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_from_gicon, \"gtk_status_icon_set_from_gicon\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_storage_type, \"gtk_status_icon_get_storage_type\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_pixbuf, \"gtk_status_icon_get_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_stock, \"gtk_status_icon_get_stock\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_icon_name, \"gtk_status_icon_get_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_gicon, \"gtk_status_icon_get_gicon\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_size, \"gtk_status_icon_get_size\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_screen, \"gtk_status_icon_set_screen\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_screen, \"gtk_status_icon_get_screen\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_tooltip_text, \"gtk_status_icon_set_tooltip_text\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_tooltip_text, \"gtk_status_icon_get_tooltip_text\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_tooltip_markup, \"gtk_status_icon_set_tooltip_markup\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_tooltip_markup, \"gtk_status_icon_get_tooltip_markup\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_has_tooltip, \"gtk_status_icon_set_has_tooltip\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_has_tooltip, \"gtk_status_icon_get_has_tooltip\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_title, \"gtk_status_icon_set_title\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_title, \"gtk_status_icon_get_title\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_name, \"gtk_status_icon_set_name\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_set_visible, \"gtk_status_icon_set_visible\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_visible, \"gtk_status_icon_get_visible\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_is_embedded, \"gtk_status_icon_is_embedded\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_position_menu, \"gtk_status_icon_position_menu\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_geometry, \"gtk_status_icon_get_geometry\", LIBRARY.GTK);
	Linker.link(gtk_status_icon_get_x11_window_id, \"gtk_status_icon_get_x11_window_id\", LIBRARY.GTK);

	// gtk.Spinner

	Linker.link(gtk_spinner_new, \"gtk_spinner_new\", LIBRARY.GTK);
	Linker.link(gtk_spinner_start, \"gtk_spinner_start\", LIBRARY.GTK);
	Linker.link(gtk_spinner_stop, \"gtk_spinner_stop\", LIBRARY.GTK);

	// gtk.Button

	Linker.link(gtk_button_new, \"gtk_button_new\", LIBRARY.GTK);
	Linker.link(gtk_button_new_with_label, \"gtk_button_new_with_label\", LIBRARY.GTK);
	Linker.link(gtk_button_new_with_mnemonic, \"gtk_button_new_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_button_new_from_stock, \"gtk_button_new_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_button_pressed, \"gtk_button_pressed\", LIBRARY.GTK);
	Linker.link(gtk_button_released, \"gtk_button_released\", LIBRARY.GTK);
	Linker.link(gtk_button_clicked, \"gtk_button_clicked\", LIBRARY.GTK);
	Linker.link(gtk_button_enter, \"gtk_button_enter\", LIBRARY.GTK);
	Linker.link(gtk_button_leave, \"gtk_button_leave\", LIBRARY.GTK);
	Linker.link(gtk_button_set_relief, \"gtk_button_set_relief\", LIBRARY.GTK);
	Linker.link(gtk_button_get_relief, \"gtk_button_get_relief\", LIBRARY.GTK);
	Linker.link(gtk_button_get_label, \"gtk_button_get_label\", LIBRARY.GTK);
	Linker.link(gtk_button_set_label, \"gtk_button_set_label\", LIBRARY.GTK);
	Linker.link(gtk_button_get_use_stock, \"gtk_button_get_use_stock\", LIBRARY.GTK);
	Linker.link(gtk_button_set_use_stock, \"gtk_button_set_use_stock\", LIBRARY.GTK);
	Linker.link(gtk_button_get_use_underline, \"gtk_button_get_use_underline\", LIBRARY.GTK);
	Linker.link(gtk_button_set_use_underline, \"gtk_button_set_use_underline\", LIBRARY.GTK);
	Linker.link(gtk_button_set_focus_on_click, \"gtk_button_set_focus_on_click\", LIBRARY.GTK);
	Linker.link(gtk_button_get_focus_on_click, \"gtk_button_get_focus_on_click\", LIBRARY.GTK);
	Linker.link(gtk_button_set_alignment, \"gtk_button_set_alignment\", LIBRARY.GTK);
	Linker.link(gtk_button_get_alignment, \"gtk_button_get_alignment\", LIBRARY.GTK);
	Linker.link(gtk_button_set_image, \"gtk_button_set_image\", LIBRARY.GTK);
	Linker.link(gtk_button_get_image, \"gtk_button_get_image\", LIBRARY.GTK);
	Linker.link(gtk_button_set_image_position, \"gtk_button_set_image_position\", LIBRARY.GTK);
	Linker.link(gtk_button_get_image_position, \"gtk_button_get_image_position\", LIBRARY.GTK);
	Linker.link(gtk_button_set_always_show_image, \"gtk_button_set_always_show_image\", LIBRARY.GTK);
	Linker.link(gtk_button_get_always_show_image, \"gtk_button_get_always_show_image\", LIBRARY.GTK);
	Linker.link(gtk_button_get_event_window, \"gtk_button_get_event_window\", LIBRARY.GTK);

	// gtk.CheckButton

	Linker.link(gtk_check_button_new, \"gtk_check_button_new\", LIBRARY.GTK);
	Linker.link(gtk_check_button_new_with_label, \"gtk_check_button_new_with_label\", LIBRARY.GTK);
	Linker.link(gtk_check_button_new_with_mnemonic, \"gtk_check_button_new_with_mnemonic\", LIBRARY.GTK);

	// gtk.RadioButton

	Linker.link(gtk_radio_button_new, \"gtk_radio_button_new\", LIBRARY.GTK);
	Linker.link(gtk_radio_button_new_from_widget, \"gtk_radio_button_new_from_widget\", LIBRARY.GTK);
	Linker.link(gtk_radio_button_new_with_label, \"gtk_radio_button_new_with_label\", LIBRARY.GTK);
	Linker.link(gtk_radio_button_new_with_label_from_widget, \"gtk_radio_button_new_with_label_from_widget\", LIBRARY.GTK);
	Linker.link(gtk_radio_button_new_with_mnemonic, \"gtk_radio_button_new_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_radio_button_new_with_mnemonic_from_widget, \"gtk_radio_button_new_with_mnemonic_from_widget\", LIBRARY.GTK);
	Linker.link(gtk_radio_button_set_group, \"gtk_radio_button_set_group\", LIBRARY.GTK);
	Linker.link(gtk_radio_button_get_group, \"gtk_radio_button_get_group\", LIBRARY.GTK);
	Linker.link(gtk_radio_button_join_group, \"gtk_radio_button_join_group\", LIBRARY.GTK);

	// gtk.ToggleButton

	Linker.link(gtk_toggle_button_new, \"gtk_toggle_button_new\", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_new_with_label, \"gtk_toggle_button_new_with_label\", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_new_with_mnemonic, \"gtk_toggle_button_new_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_set_mode, \"gtk_toggle_button_set_mode\", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_get_mode, \"gtk_toggle_button_get_mode\", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_toggled, \"gtk_toggle_button_toggled\", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_get_active, \"gtk_toggle_button_get_active\", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_set_active, \"gtk_toggle_button_set_active\", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_get_inconsistent, \"gtk_toggle_button_get_inconsistent\", LIBRARY.GTK);
	Linker.link(gtk_toggle_button_set_inconsistent, \"gtk_toggle_button_set_inconsistent\", LIBRARY.GTK);

	// gtk.LinkButton

	Linker.link(gtk_link_button_new, \"gtk_link_button_new\", LIBRARY.GTK);
	Linker.link(gtk_link_button_new_with_label, \"gtk_link_button_new_with_label\", LIBRARY.GTK);
	Linker.link(gtk_link_button_get_uri, \"gtk_link_button_get_uri\", LIBRARY.GTK);
	Linker.link(gtk_link_button_set_uri, \"gtk_link_button_set_uri\", LIBRARY.GTK);
	Linker.link(gtk_link_button_get_visited, \"gtk_link_button_get_visited\", LIBRARY.GTK);
	Linker.link(gtk_link_button_set_visited, \"gtk_link_button_set_visited\", LIBRARY.GTK);

	// gtk.ScaleButton

	Linker.link(gtk_scale_button_new, \"gtk_scale_button_new\", LIBRARY.GTK);
	Linker.link(gtk_scale_button_set_adjustment, \"gtk_scale_button_set_adjustment\", LIBRARY.GTK);
	Linker.link(gtk_scale_button_set_icons, \"gtk_scale_button_set_icons\", LIBRARY.GTK);
	Linker.link(gtk_scale_button_set_value, \"gtk_scale_button_set_value\", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_adjustment, \"gtk_scale_button_get_adjustment\", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_value, \"gtk_scale_button_get_value\", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_popup, \"gtk_scale_button_get_popup\", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_plus_button, \"gtk_scale_button_get_plus_button\", LIBRARY.GTK);
	Linker.link(gtk_scale_button_get_minus_button, \"gtk_scale_button_get_minus_button\", LIBRARY.GTK);

	// gtk.VolumeButton

	Linker.link(gtk_volume_button_new, \"gtk_volume_button_new\", LIBRARY.GTK);

	// gtk.Switch

	Linker.link(gtk_switch_new, \"gtk_switch_new\", LIBRARY.GTK);
	Linker.link(gtk_switch_set_active, \"gtk_switch_set_active\", LIBRARY.GTK);
	Linker.link(gtk_switch_get_active, \"gtk_switch_get_active\", LIBRARY.GTK);

	// gtk.LockButton

	Linker.link(gtk_lock_button_new, \"gtk_lock_button_new\", LIBRARY.GTK);
	Linker.link(gtk_lock_button_get_permission, \"gtk_lock_button_get_permission\", LIBRARY.GTK);
	Linker.link(gtk_lock_button_set_permission, \"gtk_lock_button_set_permission\", LIBRARY.GTK);

	// gtk.MenuButton

	Linker.link(gtk_menu_button_new, \"gtk_menu_button_new\", LIBRARY.GTK);
	Linker.link(gtk_menu_button_set_popup, \"gtk_menu_button_set_popup\", LIBRARY.GTK);
	Linker.link(gtk_menu_button_get_popup, \"gtk_menu_button_get_popup\", LIBRARY.GTK);
	Linker.link(gtk_menu_button_set_menu_model, \"gtk_menu_button_set_menu_model\", LIBRARY.GTK);
	Linker.link(gtk_menu_button_get_menu_model, \"gtk_menu_button_get_menu_model\", LIBRARY.GTK);
	Linker.link(gtk_menu_button_set_direction, \"gtk_menu_button_set_direction\", LIBRARY.GTK);
	Linker.link(gtk_menu_button_get_direction, \"gtk_menu_button_get_direction\", LIBRARY.GTK);
	Linker.link(gtk_menu_button_set_align_widget, \"gtk_menu_button_set_align_widget\", LIBRARY.GTK);
	Linker.link(gtk_menu_button_get_align_widget, \"gtk_menu_button_get_align_widget\", LIBRARY.GTK);

	// gtk.Entry

	Linker.link(gtk_entry_new, \"gtk_entry_new\", LIBRARY.GTK);
	Linker.link(gtk_entry_new_with_buffer, \"gtk_entry_new_with_buffer\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_buffer, \"gtk_entry_get_buffer\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_buffer, \"gtk_entry_set_buffer\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_text, \"gtk_entry_set_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_text, \"gtk_entry_get_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_text_length, \"gtk_entry_get_text_length\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_text_area, \"gtk_entry_get_text_area\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_visibility, \"gtk_entry_set_visibility\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_invisible_char, \"gtk_entry_set_invisible_char\", LIBRARY.GTK);
	Linker.link(gtk_entry_unset_invisible_char, \"gtk_entry_unset_invisible_char\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_max_length, \"gtk_entry_set_max_length\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_activates_default, \"gtk_entry_get_activates_default\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_has_frame, \"gtk_entry_get_has_frame\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_inner_border, \"gtk_entry_get_inner_border\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_width_chars, \"gtk_entry_get_width_chars\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_activates_default, \"gtk_entry_set_activates_default\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_has_frame, \"gtk_entry_set_has_frame\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_inner_border, \"gtk_entry_set_inner_border\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_width_chars, \"gtk_entry_set_width_chars\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_invisible_char, \"gtk_entry_get_invisible_char\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_alignment, \"gtk_entry_set_alignment\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_alignment, \"gtk_entry_get_alignment\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_placeholder_text, \"gtk_entry_set_placeholder_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_placeholder_text, \"gtk_entry_get_placeholder_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_overwrite_mode, \"gtk_entry_set_overwrite_mode\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_overwrite_mode, \"gtk_entry_get_overwrite_mode\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_layout, \"gtk_entry_get_layout\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_layout_offsets, \"gtk_entry_get_layout_offsets\", LIBRARY.GTK);
	Linker.link(gtk_entry_layout_index_to_text_index, \"gtk_entry_layout_index_to_text_index\", LIBRARY.GTK);
	Linker.link(gtk_entry_text_index_to_layout_index, \"gtk_entry_text_index_to_layout_index\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_attributes, \"gtk_entry_set_attributes\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_attributes, \"gtk_entry_get_attributes\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_max_length, \"gtk_entry_get_max_length\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_visibility, \"gtk_entry_get_visibility\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_completion, \"gtk_entry_set_completion\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_completion, \"gtk_entry_get_completion\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_cursor_hadjustment, \"gtk_entry_set_cursor_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_cursor_hadjustment, \"gtk_entry_get_cursor_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_progress_fraction, \"gtk_entry_set_progress_fraction\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_progress_fraction, \"gtk_entry_get_progress_fraction\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_progress_pulse_step, \"gtk_entry_set_progress_pulse_step\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_progress_pulse_step, \"gtk_entry_get_progress_pulse_step\", LIBRARY.GTK);
	Linker.link(gtk_entry_progress_pulse, \"gtk_entry_progress_pulse\", LIBRARY.GTK);
	Linker.link(gtk_entry_im_context_filter_keypress, \"gtk_entry_im_context_filter_keypress\", LIBRARY.GTK);
	Linker.link(gtk_entry_reset_im_context, \"gtk_entry_reset_im_context\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_from_pixbuf, \"gtk_entry_set_icon_from_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_from_stock, \"gtk_entry_set_icon_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_from_icon_name, \"gtk_entry_set_icon_from_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_from_gicon, \"gtk_entry_set_icon_from_gicon\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_storage_type, \"gtk_entry_get_icon_storage_type\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_pixbuf, \"gtk_entry_get_icon_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_stock, \"gtk_entry_get_icon_stock\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_name, \"gtk_entry_get_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_gicon, \"gtk_entry_get_icon_gicon\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_activatable, \"gtk_entry_set_icon_activatable\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_activatable, \"gtk_entry_get_icon_activatable\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_sensitive, \"gtk_entry_set_icon_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_sensitive, \"gtk_entry_get_icon_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_at_pos, \"gtk_entry_get_icon_at_pos\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_tooltip_text, \"gtk_entry_set_icon_tooltip_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_tooltip_text, \"gtk_entry_get_icon_tooltip_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_tooltip_markup, \"gtk_entry_set_icon_tooltip_markup\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_tooltip_markup, \"gtk_entry_get_icon_tooltip_markup\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_icon_drag_source, \"gtk_entry_set_icon_drag_source\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_current_icon_drag_source, \"gtk_entry_get_current_icon_drag_source\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_icon_area, \"gtk_entry_get_icon_area\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_input_purpose, \"gtk_entry_set_input_purpose\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_input_purpose, \"gtk_entry_get_input_purpose\", LIBRARY.GTK);
	Linker.link(gtk_entry_set_input_hints, \"gtk_entry_set_input_hints\", LIBRARY.GTK);
	Linker.link(gtk_entry_get_input_hints, \"gtk_entry_get_input_hints\", LIBRARY.GTK);

	// gtk.EntryBuffer

	Linker.link(gtk_entry_buffer_new, \"gtk_entry_buffer_new\", LIBRARY.GTK);
	Linker.link(gtk_entry_buffer_get_text, \"gtk_entry_buffer_get_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_buffer_set_text, \"gtk_entry_buffer_set_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_buffer_get_bytes, \"gtk_entry_buffer_get_bytes\", LIBRARY.GTK);
	Linker.link(gtk_entry_buffer_get_length, \"gtk_entry_buffer_get_length\", LIBRARY.GTK);
	Linker.link(gtk_entry_buffer_get_max_length, \"gtk_entry_buffer_get_max_length\", LIBRARY.GTK);
	Linker.link(gtk_entry_buffer_set_max_length, \"gtk_entry_buffer_set_max_length\", LIBRARY.GTK);
	Linker.link(gtk_entry_buffer_insert_text, \"gtk_entry_buffer_insert_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_buffer_delete_text, \"gtk_entry_buffer_delete_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_buffer_emit_deleted_text, \"gtk_entry_buffer_emit_deleted_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_buffer_emit_inserted_text, \"gtk_entry_buffer_emit_inserted_text\", LIBRARY.GTK);

	// gtk.EntryCompletion

	Linker.link(gtk_entry_completion_new, \"gtk_entry_completion_new\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_new_with_area, \"gtk_entry_completion_new_with_area\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_entry, \"gtk_entry_completion_get_entry\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_model, \"gtk_entry_completion_set_model\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_model, \"gtk_entry_completion_get_model\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_match_func, \"gtk_entry_completion_set_match_func\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_minimum_key_length, \"gtk_entry_completion_set_minimum_key_length\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_minimum_key_length, \"gtk_entry_completion_get_minimum_key_length\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_compute_prefix, \"gtk_entry_completion_compute_prefix\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_complete, \"gtk_entry_completion_complete\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_completion_prefix, \"gtk_entry_completion_get_completion_prefix\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_insert_prefix, \"gtk_entry_completion_insert_prefix\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_insert_action_text, \"gtk_entry_completion_insert_action_text\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_insert_action_markup, \"gtk_entry_completion_insert_action_markup\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_delete_action, \"gtk_entry_completion_delete_action\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_text_column, \"gtk_entry_completion_set_text_column\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_text_column, \"gtk_entry_completion_get_text_column\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_inline_completion, \"gtk_entry_completion_set_inline_completion\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_inline_completion, \"gtk_entry_completion_get_inline_completion\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_inline_selection, \"gtk_entry_completion_set_inline_selection\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_inline_selection, \"gtk_entry_completion_get_inline_selection\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_popup_completion, \"gtk_entry_completion_set_popup_completion\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_popup_completion, \"gtk_entry_completion_get_popup_completion\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_popup_set_width, \"gtk_entry_completion_set_popup_set_width\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_popup_set_width, \"gtk_entry_completion_get_popup_set_width\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_set_popup_single_match, \"gtk_entry_completion_set_popup_single_match\", LIBRARY.GTK);
	Linker.link(gtk_entry_completion_get_popup_single_match, \"gtk_entry_completion_get_popup_single_match\", LIBRARY.GTK);

	// gtk.Scale

	Linker.link(gtk_scale_new, \"gtk_scale_new\", LIBRARY.GTK);
	Linker.link(gtk_scale_new_with_range, \"gtk_scale_new_with_range\", LIBRARY.GTK);
	Linker.link(gtk_scale_set_digits, \"gtk_scale_set_digits\", LIBRARY.GTK);
	Linker.link(gtk_scale_set_draw_value, \"gtk_scale_set_draw_value\", LIBRARY.GTK);
	Linker.link(gtk_scale_set_has_origin, \"gtk_scale_set_has_origin\", LIBRARY.GTK);
	Linker.link(gtk_scale_set_value_pos, \"gtk_scale_set_value_pos\", LIBRARY.GTK);
	Linker.link(gtk_scale_get_digits, \"gtk_scale_get_digits\", LIBRARY.GTK);
	Linker.link(gtk_scale_get_draw_value, \"gtk_scale_get_draw_value\", LIBRARY.GTK);
	Linker.link(gtk_scale_get_has_origin, \"gtk_scale_get_has_origin\", LIBRARY.GTK);
	Linker.link(gtk_scale_get_value_pos, \"gtk_scale_get_value_pos\", LIBRARY.GTK);
	Linker.link(gtk_scale_get_layout, \"gtk_scale_get_layout\", LIBRARY.GTK);
	Linker.link(gtk_scale_get_layout_offsets, \"gtk_scale_get_layout_offsets\", LIBRARY.GTK);
	Linker.link(gtk_scale_add_mark, \"gtk_scale_add_mark\", LIBRARY.GTK);
	Linker.link(gtk_scale_clear_marks, \"gtk_scale_clear_marks\", LIBRARY.GTK);

	// gtk.HScale

	Linker.link(gtk_hscale_new, \"gtk_hscale_new\", LIBRARY.GTK);
	Linker.link(gtk_hscale_new_with_range, \"gtk_hscale_new_with_range\", LIBRARY.GTK);

	// gtk.VScale

	Linker.link(gtk_vscale_new, \"gtk_vscale_new\", LIBRARY.GTK);
	Linker.link(gtk_vscale_new_with_range, \"gtk_vscale_new_with_range\", LIBRARY.GTK);

	// gtk.SpinButton

	Linker.link(gtk_spin_button_configure, \"gtk_spin_button_configure\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_new, \"gtk_spin_button_new\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_new_with_range, \"gtk_spin_button_new_with_range\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_adjustment, \"gtk_spin_button_set_adjustment\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_adjustment, \"gtk_spin_button_get_adjustment\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_digits, \"gtk_spin_button_set_digits\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_increments, \"gtk_spin_button_set_increments\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_range, \"gtk_spin_button_set_range\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_value_as_int, \"gtk_spin_button_get_value_as_int\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_value, \"gtk_spin_button_set_value\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_update_policy, \"gtk_spin_button_set_update_policy\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_numeric, \"gtk_spin_button_set_numeric\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_spin, \"gtk_spin_button_spin\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_wrap, \"gtk_spin_button_set_wrap\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_set_snap_to_ticks, \"gtk_spin_button_set_snap_to_ticks\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_update, \"gtk_spin_button_update\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_digits, \"gtk_spin_button_get_digits\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_increments, \"gtk_spin_button_get_increments\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_numeric, \"gtk_spin_button_get_numeric\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_range, \"gtk_spin_button_get_range\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_snap_to_ticks, \"gtk_spin_button_get_snap_to_ticks\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_update_policy, \"gtk_spin_button_get_update_policy\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_value, \"gtk_spin_button_get_value\", LIBRARY.GTK);
	Linker.link(gtk_spin_button_get_wrap, \"gtk_spin_button_get_wrap\", LIBRARY.GTK);

	// gtk.SearchEntry

	Linker.link(gtk_search_entry_new, \"gtk_search_entry_new\", LIBRARY.GTK);

	// gtk.EditableT


	// gtk.EditableT

	Linker.link(gtk_editable_select_region, \"gtk_editable_select_region\", LIBRARY.GTK);
	Linker.link(gtk_editable_get_selection_bounds, \"gtk_editable_get_selection_bounds\", LIBRARY.GTK);
	Linker.link(gtk_editable_insert_text, \"gtk_editable_insert_text\", LIBRARY.GTK);
	Linker.link(gtk_editable_delete_text, \"gtk_editable_delete_text\", LIBRARY.GTK);
	Linker.link(gtk_editable_get_chars, \"gtk_editable_get_chars\", LIBRARY.GTK);
	Linker.link(gtk_editable_cut_clipboard, \"gtk_editable_cut_clipboard\", LIBRARY.GTK);
	Linker.link(gtk_editable_copy_clipboard, \"gtk_editable_copy_clipboard\", LIBRARY.GTK);
	Linker.link(gtk_editable_paste_clipboard, \"gtk_editable_paste_clipboard\", LIBRARY.GTK);
	Linker.link(gtk_editable_delete_selection, \"gtk_editable_delete_selection\", LIBRARY.GTK);
	Linker.link(gtk_editable_set_position, \"gtk_editable_set_position\", LIBRARY.GTK);
	Linker.link(gtk_editable_get_position, \"gtk_editable_get_position\", LIBRARY.GTK);
	Linker.link(gtk_editable_set_editable, \"gtk_editable_set_editable\", LIBRARY.GTK);
	Linker.link(gtk_editable_get_editable, \"gtk_editable_get_editable\", LIBRARY.GTK);

	// gtk.TextIter

	Linker.link(gtk_text_iter_get_buffer, \"gtk_text_iter_get_buffer\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_copy, \"gtk_text_iter_copy\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_assign, \"gtk_text_iter_assign\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_free, \"gtk_text_iter_free\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_offset, \"gtk_text_iter_get_offset\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_line, \"gtk_text_iter_get_line\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_line_offset, \"gtk_text_iter_get_line_offset\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_line_index, \"gtk_text_iter_get_line_index\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_visible_line_index, \"gtk_text_iter_get_visible_line_index\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_visible_line_offset, \"gtk_text_iter_get_visible_line_offset\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_char, \"gtk_text_iter_get_char\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_slice, \"gtk_text_iter_get_slice\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_text, \"gtk_text_iter_get_text\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_visible_slice, \"gtk_text_iter_get_visible_slice\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_visible_text, \"gtk_text_iter_get_visible_text\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_pixbuf, \"gtk_text_iter_get_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_marks, \"gtk_text_iter_get_marks\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_toggled_tags, \"gtk_text_iter_get_toggled_tags\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_child_anchor, \"gtk_text_iter_get_child_anchor\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_begins_tag, \"gtk_text_iter_begins_tag\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_ends_tag, \"gtk_text_iter_ends_tag\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_toggles_tag, \"gtk_text_iter_toggles_tag\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_has_tag, \"gtk_text_iter_has_tag\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_tags, \"gtk_text_iter_get_tags\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_editable, \"gtk_text_iter_editable\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_can_insert, \"gtk_text_iter_can_insert\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_starts_word, \"gtk_text_iter_starts_word\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_ends_word, \"gtk_text_iter_ends_word\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_inside_word, \"gtk_text_iter_inside_word\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_starts_line, \"gtk_text_iter_starts_line\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_ends_line, \"gtk_text_iter_ends_line\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_starts_sentence, \"gtk_text_iter_starts_sentence\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_ends_sentence, \"gtk_text_iter_ends_sentence\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_inside_sentence, \"gtk_text_iter_inside_sentence\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_is_cursor_position, \"gtk_text_iter_is_cursor_position\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_chars_in_line, \"gtk_text_iter_get_chars_in_line\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_bytes_in_line, \"gtk_text_iter_get_bytes_in_line\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_attributes, \"gtk_text_iter_get_attributes\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_get_language, \"gtk_text_iter_get_language\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_is_end, \"gtk_text_iter_is_end\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_is_start, \"gtk_text_iter_is_start\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_char, \"gtk_text_iter_forward_char\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_char, \"gtk_text_iter_backward_char\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_chars, \"gtk_text_iter_forward_chars\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_chars, \"gtk_text_iter_backward_chars\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_line, \"gtk_text_iter_forward_line\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_line, \"gtk_text_iter_backward_line\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_lines, \"gtk_text_iter_forward_lines\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_lines, \"gtk_text_iter_backward_lines\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_word_ends, \"gtk_text_iter_forward_word_ends\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_word_starts, \"gtk_text_iter_backward_word_starts\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_word_end, \"gtk_text_iter_forward_word_end\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_word_start, \"gtk_text_iter_backward_word_start\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_cursor_position, \"gtk_text_iter_forward_cursor_position\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_cursor_position, \"gtk_text_iter_backward_cursor_position\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_cursor_positions, \"gtk_text_iter_forward_cursor_positions\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_cursor_positions, \"gtk_text_iter_backward_cursor_positions\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_sentence_start, \"gtk_text_iter_backward_sentence_start\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_sentence_starts, \"gtk_text_iter_backward_sentence_starts\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_sentence_end, \"gtk_text_iter_forward_sentence_end\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_sentence_ends, \"gtk_text_iter_forward_sentence_ends\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_word_ends, \"gtk_text_iter_forward_visible_word_ends\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_word_starts, \"gtk_text_iter_backward_visible_word_starts\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_word_end, \"gtk_text_iter_forward_visible_word_end\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_word_start, \"gtk_text_iter_backward_visible_word_start\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_cursor_position, \"gtk_text_iter_forward_visible_cursor_position\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_cursor_position, \"gtk_text_iter_backward_visible_cursor_position\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_cursor_positions, \"gtk_text_iter_forward_visible_cursor_positions\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_cursor_positions, \"gtk_text_iter_backward_visible_cursor_positions\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_line, \"gtk_text_iter_forward_visible_line\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_line, \"gtk_text_iter_backward_visible_line\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_visible_lines, \"gtk_text_iter_forward_visible_lines\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_visible_lines, \"gtk_text_iter_backward_visible_lines\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_offset, \"gtk_text_iter_set_offset\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_line, \"gtk_text_iter_set_line\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_line_offset, \"gtk_text_iter_set_line_offset\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_line_index, \"gtk_text_iter_set_line_index\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_visible_line_index, \"gtk_text_iter_set_visible_line_index\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_set_visible_line_offset, \"gtk_text_iter_set_visible_line_offset\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_to_end, \"gtk_text_iter_forward_to_end\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_to_line_end, \"gtk_text_iter_forward_to_line_end\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_to_tag_toggle, \"gtk_text_iter_forward_to_tag_toggle\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_to_tag_toggle, \"gtk_text_iter_backward_to_tag_toggle\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_find_char, \"gtk_text_iter_forward_find_char\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_find_char, \"gtk_text_iter_backward_find_char\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_forward_search, \"gtk_text_iter_forward_search\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_backward_search, \"gtk_text_iter_backward_search\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_equal, \"gtk_text_iter_equal\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_compare, \"gtk_text_iter_compare\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_in_range, \"gtk_text_iter_in_range\", LIBRARY.GTK);
	Linker.link(gtk_text_iter_order, \"gtk_text_iter_order\", LIBRARY.GTK);

	// gtk.TextMark

	Linker.link(gtk_text_mark_new, \"gtk_text_mark_new\", LIBRARY.GTK);
	Linker.link(gtk_text_mark_set_visible, \"gtk_text_mark_set_visible\", LIBRARY.GTK);
	Linker.link(gtk_text_mark_get_visible, \"gtk_text_mark_get_visible\", LIBRARY.GTK);
	Linker.link(gtk_text_mark_get_deleted, \"gtk_text_mark_get_deleted\", LIBRARY.GTK);
	Linker.link(gtk_text_mark_get_name, \"gtk_text_mark_get_name\", LIBRARY.GTK);
	Linker.link(gtk_text_mark_get_buffer, \"gtk_text_mark_get_buffer\", LIBRARY.GTK);
	Linker.link(gtk_text_mark_get_left_gravity, \"gtk_text_mark_get_left_gravity\", LIBRARY.GTK);

	// gtk.TextBuffer

	Linker.link(gtk_text_buffer_new, \"gtk_text_buffer_new\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_line_count, \"gtk_text_buffer_get_line_count\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_char_count, \"gtk_text_buffer_get_char_count\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_tag_table, \"gtk_text_buffer_get_tag_table\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert, \"gtk_text_buffer_insert\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_at_cursor, \"gtk_text_buffer_insert_at_cursor\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_interactive, \"gtk_text_buffer_insert_interactive\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_interactive_at_cursor, \"gtk_text_buffer_insert_interactive_at_cursor\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_range, \"gtk_text_buffer_insert_range\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_range_interactive, \"gtk_text_buffer_insert_range_interactive\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_with_tags, \"gtk_text_buffer_insert_with_tags\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_with_tags_by_name, \"gtk_text_buffer_insert_with_tags_by_name\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_delete, \"gtk_text_buffer_delete\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_delete_interactive, \"gtk_text_buffer_delete_interactive\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_backspace, \"gtk_text_buffer_backspace\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_set_text, \"gtk_text_buffer_set_text\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_text, \"gtk_text_buffer_get_text\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_slice, \"gtk_text_buffer_get_slice\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_pixbuf, \"gtk_text_buffer_insert_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_insert_child_anchor, \"gtk_text_buffer_insert_child_anchor\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_create_child_anchor, \"gtk_text_buffer_create_child_anchor\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_create_mark, \"gtk_text_buffer_create_mark\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_move_mark, \"gtk_text_buffer_move_mark\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_move_mark_by_name, \"gtk_text_buffer_move_mark_by_name\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_add_mark, \"gtk_text_buffer_add_mark\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_delete_mark, \"gtk_text_buffer_delete_mark\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_delete_mark_by_name, \"gtk_text_buffer_delete_mark_by_name\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_mark, \"gtk_text_buffer_get_mark\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_insert, \"gtk_text_buffer_get_insert\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_selection_bound, \"gtk_text_buffer_get_selection_bound\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_has_selection, \"gtk_text_buffer_get_has_selection\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_place_cursor, \"gtk_text_buffer_place_cursor\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_select_range, \"gtk_text_buffer_select_range\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_apply_tag, \"gtk_text_buffer_apply_tag\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_remove_tag, \"gtk_text_buffer_remove_tag\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_apply_tag_by_name, \"gtk_text_buffer_apply_tag_by_name\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_remove_tag_by_name, \"gtk_text_buffer_remove_tag_by_name\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_remove_all_tags, \"gtk_text_buffer_remove_all_tags\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_create_tag, \"gtk_text_buffer_create_tag\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_line_offset, \"gtk_text_buffer_get_iter_at_line_offset\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_offset, \"gtk_text_buffer_get_iter_at_offset\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_line, \"gtk_text_buffer_get_iter_at_line\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_line_index, \"gtk_text_buffer_get_iter_at_line_index\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_mark, \"gtk_text_buffer_get_iter_at_mark\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_iter_at_child_anchor, \"gtk_text_buffer_get_iter_at_child_anchor\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_start_iter, \"gtk_text_buffer_get_start_iter\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_end_iter, \"gtk_text_buffer_get_end_iter\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_bounds, \"gtk_text_buffer_get_bounds\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_modified, \"gtk_text_buffer_get_modified\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_set_modified, \"gtk_text_buffer_set_modified\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_delete_selection, \"gtk_text_buffer_delete_selection\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_paste_clipboard, \"gtk_text_buffer_paste_clipboard\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_copy_clipboard, \"gtk_text_buffer_copy_clipboard\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_cut_clipboard, \"gtk_text_buffer_cut_clipboard\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_selection_bounds, \"gtk_text_buffer_get_selection_bounds\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_begin_user_action, \"gtk_text_buffer_begin_user_action\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_end_user_action, \"gtk_text_buffer_end_user_action\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_add_selection_clipboard, \"gtk_text_buffer_add_selection_clipboard\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_remove_selection_clipboard, \"gtk_text_buffer_remove_selection_clipboard\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_deserialize, \"gtk_text_buffer_deserialize\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_deserialize_get_can_create_tags, \"gtk_text_buffer_deserialize_get_can_create_tags\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_deserialize_set_can_create_tags, \"gtk_text_buffer_deserialize_set_can_create_tags\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_copy_target_list, \"gtk_text_buffer_get_copy_target_list\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_deserialize_formats, \"gtk_text_buffer_get_deserialize_formats\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_paste_target_list, \"gtk_text_buffer_get_paste_target_list\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_get_serialize_formats, \"gtk_text_buffer_get_serialize_formats\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_register_deserialize_format, \"gtk_text_buffer_register_deserialize_format\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_register_deserialize_tagset, \"gtk_text_buffer_register_deserialize_tagset\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_register_serialize_format, \"gtk_text_buffer_register_serialize_format\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_register_serialize_tagset, \"gtk_text_buffer_register_serialize_tagset\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_serialize, \"gtk_text_buffer_serialize\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_unregister_deserialize_format, \"gtk_text_buffer_unregister_deserialize_format\", LIBRARY.GTK);
	Linker.link(gtk_text_buffer_unregister_serialize_format, \"gtk_text_buffer_unregister_serialize_format\", LIBRARY.GTK);

	// gtk.TextTag

	Linker.link(gtk_text_tag_new, \"gtk_text_tag_new\", LIBRARY.GTK);
	Linker.link(gtk_text_tag_get_priority, \"gtk_text_tag_get_priority\", LIBRARY.GTK);
	Linker.link(gtk_text_tag_set_priority, \"gtk_text_tag_set_priority\", LIBRARY.GTK);
	Linker.link(gtk_text_tag_event, \"gtk_text_tag_event\", LIBRARY.GTK);

	// gtk.TextAttributes

	Linker.link(gtk_text_attributes_new, \"gtk_text_attributes_new\", LIBRARY.GTK);
	Linker.link(gtk_text_attributes_copy, \"gtk_text_attributes_copy\", LIBRARY.GTK);
	Linker.link(gtk_text_attributes_copy_values, \"gtk_text_attributes_copy_values\", LIBRARY.GTK);
	Linker.link(gtk_text_attributes_unref, \"gtk_text_attributes_unref\", LIBRARY.GTK);
	Linker.link(gtk_text_attributes_ref, \"gtk_text_attributes_ref\", LIBRARY.GTK);

	// gtk.TextTagTable

	Linker.link(gtk_text_tag_table_new, \"gtk_text_tag_table_new\", LIBRARY.GTK);
	Linker.link(gtk_text_tag_table_add, \"gtk_text_tag_table_add\", LIBRARY.GTK);
	Linker.link(gtk_text_tag_table_remove, \"gtk_text_tag_table_remove\", LIBRARY.GTK);
	Linker.link(gtk_text_tag_table_lookup, \"gtk_text_tag_table_lookup\", LIBRARY.GTK);
	Linker.link(gtk_text_tag_table_foreach, \"gtk_text_tag_table_foreach\", LIBRARY.GTK);
	Linker.link(gtk_text_tag_table_get_size, \"gtk_text_tag_table_get_size\", LIBRARY.GTK);

	// gtk.TextView

	Linker.link(gtk_text_view_new, \"gtk_text_view_new\", LIBRARY.GTK);
	Linker.link(gtk_text_view_new_with_buffer, \"gtk_text_view_new_with_buffer\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_buffer, \"gtk_text_view_set_buffer\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_buffer, \"gtk_text_view_get_buffer\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_hadjustment, \"gtk_text_view_get_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_vadjustment, \"gtk_text_view_get_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_text_view_scroll_to_mark, \"gtk_text_view_scroll_to_mark\", LIBRARY.GTK);
	Linker.link(gtk_text_view_scroll_to_iter, \"gtk_text_view_scroll_to_iter\", LIBRARY.GTK);
	Linker.link(gtk_text_view_scroll_mark_onscreen, \"gtk_text_view_scroll_mark_onscreen\", LIBRARY.GTK);
	Linker.link(gtk_text_view_move_mark_onscreen, \"gtk_text_view_move_mark_onscreen\", LIBRARY.GTK);
	Linker.link(gtk_text_view_place_cursor_onscreen, \"gtk_text_view_place_cursor_onscreen\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_visible_rect, \"gtk_text_view_get_visible_rect\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_iter_location, \"gtk_text_view_get_iter_location\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_cursor_locations, \"gtk_text_view_get_cursor_locations\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_line_at_y, \"gtk_text_view_get_line_at_y\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_line_yrange, \"gtk_text_view_get_line_yrange\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_iter_at_location, \"gtk_text_view_get_iter_at_location\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_iter_at_position, \"gtk_text_view_get_iter_at_position\", LIBRARY.GTK);
	Linker.link(gtk_text_view_buffer_to_window_coords, \"gtk_text_view_buffer_to_window_coords\", LIBRARY.GTK);
	Linker.link(gtk_text_view_window_to_buffer_coords, \"gtk_text_view_window_to_buffer_coords\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_window, \"gtk_text_view_get_window\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_window_type, \"gtk_text_view_get_window_type\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_border_window_size, \"gtk_text_view_set_border_window_size\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_border_window_size, \"gtk_text_view_get_border_window_size\", LIBRARY.GTK);
	Linker.link(gtk_text_view_forward_display_line, \"gtk_text_view_forward_display_line\", LIBRARY.GTK);
	Linker.link(gtk_text_view_backward_display_line, \"gtk_text_view_backward_display_line\", LIBRARY.GTK);
	Linker.link(gtk_text_view_forward_display_line_end, \"gtk_text_view_forward_display_line_end\", LIBRARY.GTK);
	Linker.link(gtk_text_view_backward_display_line_start, \"gtk_text_view_backward_display_line_start\", LIBRARY.GTK);
	Linker.link(gtk_text_view_starts_display_line, \"gtk_text_view_starts_display_line\", LIBRARY.GTK);
	Linker.link(gtk_text_view_move_visually, \"gtk_text_view_move_visually\", LIBRARY.GTK);
	Linker.link(gtk_text_view_add_child_at_anchor, \"gtk_text_view_add_child_at_anchor\", LIBRARY.GTK);
	Linker.link(gtk_text_view_add_child_in_window, \"gtk_text_view_add_child_in_window\", LIBRARY.GTK);
	Linker.link(gtk_text_view_move_child, \"gtk_text_view_move_child\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_wrap_mode, \"gtk_text_view_set_wrap_mode\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_wrap_mode, \"gtk_text_view_get_wrap_mode\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_editable, \"gtk_text_view_set_editable\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_editable, \"gtk_text_view_get_editable\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_cursor_visible, \"gtk_text_view_set_cursor_visible\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_cursor_visible, \"gtk_text_view_get_cursor_visible\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_overwrite, \"gtk_text_view_set_overwrite\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_overwrite, \"gtk_text_view_get_overwrite\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_pixels_above_lines, \"gtk_text_view_set_pixels_above_lines\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_pixels_above_lines, \"gtk_text_view_get_pixels_above_lines\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_pixels_below_lines, \"gtk_text_view_set_pixels_below_lines\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_pixels_below_lines, \"gtk_text_view_get_pixels_below_lines\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_pixels_inside_wrap, \"gtk_text_view_set_pixels_inside_wrap\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_pixels_inside_wrap, \"gtk_text_view_get_pixels_inside_wrap\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_justification, \"gtk_text_view_set_justification\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_justification, \"gtk_text_view_get_justification\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_left_margin, \"gtk_text_view_set_left_margin\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_left_margin, \"gtk_text_view_get_left_margin\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_right_margin, \"gtk_text_view_set_right_margin\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_right_margin, \"gtk_text_view_get_right_margin\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_indent, \"gtk_text_view_set_indent\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_indent, \"gtk_text_view_get_indent\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_tabs, \"gtk_text_view_set_tabs\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_tabs, \"gtk_text_view_get_tabs\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_accepts_tab, \"gtk_text_view_set_accepts_tab\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_accepts_tab, \"gtk_text_view_get_accepts_tab\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_default_attributes, \"gtk_text_view_get_default_attributes\", LIBRARY.GTK);
	Linker.link(gtk_text_view_im_context_filter_keypress, \"gtk_text_view_im_context_filter_keypress\", LIBRARY.GTK);
	Linker.link(gtk_text_view_reset_im_context, \"gtk_text_view_reset_im_context\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_input_purpose, \"gtk_text_view_set_input_purpose\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_input_purpose, \"gtk_text_view_get_input_purpose\", LIBRARY.GTK);
	Linker.link(gtk_text_view_set_input_hints, \"gtk_text_view_set_input_hints\", LIBRARY.GTK);
	Linker.link(gtk_text_view_get_input_hints, \"gtk_text_view_get_input_hints\", LIBRARY.GTK);

	// gtk.TextChildAnchor

	Linker.link(gtk_text_child_anchor_new, \"gtk_text_child_anchor_new\", LIBRARY.GTK);
	Linker.link(gtk_text_child_anchor_get_widgets, \"gtk_text_child_anchor_get_widgets\", LIBRARY.GTK);
	Linker.link(gtk_text_child_anchor_get_deleted, \"gtk_text_child_anchor_get_deleted\", LIBRARY.GTK);

	// gtk.TreePath

	Linker.link(gtk_tree_path_new, \"gtk_tree_path_new\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_new_from_string, \"gtk_tree_path_new_from_string\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_new_from_indices, \"gtk_tree_path_new_from_indices\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_to_string, \"gtk_tree_path_to_string\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_new_first, \"gtk_tree_path_new_first\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_append_index, \"gtk_tree_path_append_index\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_prepend_index, \"gtk_tree_path_prepend_index\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_get_depth, \"gtk_tree_path_get_depth\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_get_indices, \"gtk_tree_path_get_indices\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_get_indices_with_depth, \"gtk_tree_path_get_indices_with_depth\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_free, \"gtk_tree_path_free\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_copy, \"gtk_tree_path_copy\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_compare, \"gtk_tree_path_compare\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_next, \"gtk_tree_path_next\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_prev, \"gtk_tree_path_prev\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_up, \"gtk_tree_path_up\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_down, \"gtk_tree_path_down\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_is_ancestor, \"gtk_tree_path_is_ancestor\", LIBRARY.GTK);
	Linker.link(gtk_tree_path_is_descendant, \"gtk_tree_path_is_descendant\", LIBRARY.GTK);

	// gtk.TreeModelT


	// gtk.TreeModelT

	Linker.link(gtk_tree_model_get_flags, \"gtk_tree_model_get_flags\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_n_columns, \"gtk_tree_model_get_n_columns\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_column_type, \"gtk_tree_model_get_column_type\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_iter, \"gtk_tree_model_get_iter\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_iter_from_string, \"gtk_tree_model_get_iter_from_string\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_iter_first, \"gtk_tree_model_get_iter_first\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_path, \"gtk_tree_model_get_path\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_value, \"gtk_tree_model_get_value\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_next, \"gtk_tree_model_iter_next\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_previous, \"gtk_tree_model_iter_previous\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_children, \"gtk_tree_model_iter_children\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_has_child, \"gtk_tree_model_iter_has_child\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_n_children, \"gtk_tree_model_iter_n_children\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_nth_child, \"gtk_tree_model_iter_nth_child\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_iter_parent, \"gtk_tree_model_iter_parent\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_string_from_iter, \"gtk_tree_model_get_string_from_iter\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_ref_node, \"gtk_tree_model_ref_node\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_unref_node, \"gtk_tree_model_unref_node\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get, \"gtk_tree_model_get\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_get_valist, \"gtk_tree_model_get_valist\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_foreach, \"gtk_tree_model_foreach\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_row_changed, \"gtk_tree_model_row_changed\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_row_inserted, \"gtk_tree_model_row_inserted\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_row_has_child_toggled, \"gtk_tree_model_row_has_child_toggled\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_row_deleted, \"gtk_tree_model_row_deleted\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_rows_reordered, \"gtk_tree_model_rows_reordered\", LIBRARY.GTK);

	// gtk.TreeIter

	Linker.link(gtk_tree_iter_copy, \"gtk_tree_iter_copy\", LIBRARY.GTK);
	Linker.link(gtk_tree_iter_free, \"gtk_tree_iter_free\", LIBRARY.GTK);

	// gtk.TreeRowReference

	Linker.link(gtk_tree_row_reference_new, \"gtk_tree_row_reference_new\", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_new_proxy, \"gtk_tree_row_reference_new_proxy\", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_get_model, \"gtk_tree_row_reference_get_model\", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_get_path, \"gtk_tree_row_reference_get_path\", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_valid, \"gtk_tree_row_reference_valid\", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_free, \"gtk_tree_row_reference_free\", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_copy, \"gtk_tree_row_reference_copy\", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_inserted, \"gtk_tree_row_reference_inserted\", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_deleted, \"gtk_tree_row_reference_deleted\", LIBRARY.GTK);
	Linker.link(gtk_tree_row_reference_reordered, \"gtk_tree_row_reference_reordered\", LIBRARY.GTK);

	// gtk.TreeIterError


	// gtk.


	// gtk.TreeSelection

	Linker.link(gtk_tree_selection_set_mode, \"gtk_tree_selection_set_mode\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_mode, \"gtk_tree_selection_get_mode\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_set_select_function, \"gtk_tree_selection_set_select_function\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_select_function, \"gtk_tree_selection_get_select_function\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_user_data, \"gtk_tree_selection_get_user_data\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_tree_view, \"gtk_tree_selection_get_tree_view\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_selected, \"gtk_tree_selection_get_selected\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_selected_foreach, \"gtk_tree_selection_selected_foreach\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_get_selected_rows, \"gtk_tree_selection_get_selected_rows\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_count_selected_rows, \"gtk_tree_selection_count_selected_rows\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_select_path, \"gtk_tree_selection_select_path\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_unselect_path, \"gtk_tree_selection_unselect_path\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_path_is_selected, \"gtk_tree_selection_path_is_selected\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_select_iter, \"gtk_tree_selection_select_iter\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_unselect_iter, \"gtk_tree_selection_unselect_iter\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_iter_is_selected, \"gtk_tree_selection_iter_is_selected\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_select_all, \"gtk_tree_selection_select_all\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_unselect_all, \"gtk_tree_selection_unselect_all\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_select_range, \"gtk_tree_selection_select_range\", LIBRARY.GTK);
	Linker.link(gtk_tree_selection_unselect_range, \"gtk_tree_selection_unselect_range\", LIBRARY.GTK);

	// gtk.TreeViewColumn

	Linker.link(gtk_tree_view_column_new, \"gtk_tree_view_column_new\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_new_with_area, \"gtk_tree_view_column_new_with_area\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_new_with_attributes, \"gtk_tree_view_column_new_with_attributes\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_pack_start, \"gtk_tree_view_column_pack_start\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_pack_end, \"gtk_tree_view_column_pack_end\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_clear, \"gtk_tree_view_column_clear\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_add_attribute, \"gtk_tree_view_column_add_attribute\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_attributes, \"gtk_tree_view_column_set_attributes\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_cell_data_func, \"gtk_tree_view_column_set_cell_data_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_clear_attributes, \"gtk_tree_view_column_clear_attributes\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_spacing, \"gtk_tree_view_column_set_spacing\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_spacing, \"gtk_tree_view_column_get_spacing\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_visible, \"gtk_tree_view_column_set_visible\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_visible, \"gtk_tree_view_column_get_visible\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_resizable, \"gtk_tree_view_column_set_resizable\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_resizable, \"gtk_tree_view_column_get_resizable\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_sizing, \"gtk_tree_view_column_set_sizing\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_sizing, \"gtk_tree_view_column_get_sizing\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_width, \"gtk_tree_view_column_get_width\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_fixed_width, \"gtk_tree_view_column_get_fixed_width\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_fixed_width, \"gtk_tree_view_column_set_fixed_width\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_min_width, \"gtk_tree_view_column_set_min_width\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_min_width, \"gtk_tree_view_column_get_min_width\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_max_width, \"gtk_tree_view_column_set_max_width\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_max_width, \"gtk_tree_view_column_get_max_width\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_clicked, \"gtk_tree_view_column_clicked\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_title, \"gtk_tree_view_column_set_title\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_title, \"gtk_tree_view_column_get_title\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_expand, \"gtk_tree_view_column_set_expand\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_expand, \"gtk_tree_view_column_get_expand\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_clickable, \"gtk_tree_view_column_set_clickable\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_clickable, \"gtk_tree_view_column_get_clickable\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_widget, \"gtk_tree_view_column_set_widget\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_widget, \"gtk_tree_view_column_get_widget\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_button, \"gtk_tree_view_column_get_button\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_alignment, \"gtk_tree_view_column_set_alignment\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_alignment, \"gtk_tree_view_column_get_alignment\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_reorderable, \"gtk_tree_view_column_set_reorderable\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_reorderable, \"gtk_tree_view_column_get_reorderable\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_sort_column_id, \"gtk_tree_view_column_set_sort_column_id\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_sort_column_id, \"gtk_tree_view_column_get_sort_column_id\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_sort_indicator, \"gtk_tree_view_column_set_sort_indicator\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_sort_indicator, \"gtk_tree_view_column_get_sort_indicator\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_set_sort_order, \"gtk_tree_view_column_set_sort_order\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_sort_order, \"gtk_tree_view_column_get_sort_order\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_cell_set_cell_data, \"gtk_tree_view_column_cell_set_cell_data\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_cell_get_size, \"gtk_tree_view_column_cell_get_size\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_cell_get_position, \"gtk_tree_view_column_cell_get_position\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_cell_is_visible, \"gtk_tree_view_column_cell_is_visible\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_focus_cell, \"gtk_tree_view_column_focus_cell\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_queue_resize, \"gtk_tree_view_column_queue_resize\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_tree_view, \"gtk_tree_view_column_get_tree_view\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_column_get_x_offset, \"gtk_tree_view_column_get_x_offset\", LIBRARY.GTK);

	// gtk.TreeView

	Linker.link(gtk_tree_view_new, \"gtk_tree_view_new\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_level_indentation, \"gtk_tree_view_get_level_indentation\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_show_expanders, \"gtk_tree_view_get_show_expanders\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_level_indentation, \"gtk_tree_view_set_level_indentation\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_show_expanders, \"gtk_tree_view_set_show_expanders\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_new_with_model, \"gtk_tree_view_new_with_model\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_model, \"gtk_tree_view_get_model\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_model, \"gtk_tree_view_set_model\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_selection, \"gtk_tree_view_get_selection\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_hadjustment, \"gtk_tree_view_get_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_hadjustment, \"gtk_tree_view_set_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_vadjustment, \"gtk_tree_view_get_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_vadjustment, \"gtk_tree_view_set_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_headers_visible, \"gtk_tree_view_get_headers_visible\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_headers_visible, \"gtk_tree_view_set_headers_visible\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_columns_autosize, \"gtk_tree_view_columns_autosize\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_headers_clickable, \"gtk_tree_view_get_headers_clickable\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_headers_clickable, \"gtk_tree_view_set_headers_clickable\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_rules_hint, \"gtk_tree_view_set_rules_hint\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_rules_hint, \"gtk_tree_view_get_rules_hint\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_append_column, \"gtk_tree_view_append_column\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_remove_column, \"gtk_tree_view_remove_column\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_insert_column, \"gtk_tree_view_insert_column\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_insert_column_with_attributes, \"gtk_tree_view_insert_column_with_attributes\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_insert_column_with_data_func, \"gtk_tree_view_insert_column_with_data_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_n_columns, \"gtk_tree_view_get_n_columns\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_column, \"gtk_tree_view_get_column\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_columns, \"gtk_tree_view_get_columns\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_move_column_after, \"gtk_tree_view_move_column_after\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_expander_column, \"gtk_tree_view_set_expander_column\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_expander_column, \"gtk_tree_view_get_expander_column\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_column_drag_function, \"gtk_tree_view_set_column_drag_function\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_scroll_to_point, \"gtk_tree_view_scroll_to_point\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_scroll_to_cell, \"gtk_tree_view_scroll_to_cell\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_cursor, \"gtk_tree_view_set_cursor\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_cursor_on_cell, \"gtk_tree_view_set_cursor_on_cell\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_cursor, \"gtk_tree_view_get_cursor\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_row_activated, \"gtk_tree_view_row_activated\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_expand_all, \"gtk_tree_view_expand_all\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_collapse_all, \"gtk_tree_view_collapse_all\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_expand_to_path, \"gtk_tree_view_expand_to_path\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_expand_row, \"gtk_tree_view_expand_row\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_collapse_row, \"gtk_tree_view_collapse_row\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_map_expanded_rows, \"gtk_tree_view_map_expanded_rows\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_row_expanded, \"gtk_tree_view_row_expanded\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_reorderable, \"gtk_tree_view_set_reorderable\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_reorderable, \"gtk_tree_view_get_reorderable\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_path_at_pos, \"gtk_tree_view_get_path_at_pos\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_is_blank_at_pos, \"gtk_tree_view_is_blank_at_pos\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_cell_area, \"gtk_tree_view_get_cell_area\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_background_area, \"gtk_tree_view_get_background_area\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_visible_rect, \"gtk_tree_view_get_visible_rect\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_visible_range, \"gtk_tree_view_get_visible_range\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_bin_window, \"gtk_tree_view_get_bin_window\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_bin_window_to_tree_coords, \"gtk_tree_view_convert_bin_window_to_tree_coords\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_bin_window_to_widget_coords, \"gtk_tree_view_convert_bin_window_to_widget_coords\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_tree_to_bin_window_coords, \"gtk_tree_view_convert_tree_to_bin_window_coords\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_tree_to_widget_coords, \"gtk_tree_view_convert_tree_to_widget_coords\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_widget_to_bin_window_coords, \"gtk_tree_view_convert_widget_to_bin_window_coords\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_convert_widget_to_tree_coords, \"gtk_tree_view_convert_widget_to_tree_coords\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_enable_model_drag_dest, \"gtk_tree_view_enable_model_drag_dest\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_enable_model_drag_source, \"gtk_tree_view_enable_model_drag_source\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_unset_rows_drag_source, \"gtk_tree_view_unset_rows_drag_source\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_unset_rows_drag_dest, \"gtk_tree_view_unset_rows_drag_dest\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_drag_dest_row, \"gtk_tree_view_set_drag_dest_row\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_drag_dest_row, \"gtk_tree_view_get_drag_dest_row\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_dest_row_at_pos, \"gtk_tree_view_get_dest_row_at_pos\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_create_row_drag_icon, \"gtk_tree_view_create_row_drag_icon\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_enable_search, \"gtk_tree_view_set_enable_search\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_enable_search, \"gtk_tree_view_get_enable_search\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_search_column, \"gtk_tree_view_get_search_column\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_search_column, \"gtk_tree_view_set_search_column\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_search_equal_func, \"gtk_tree_view_get_search_equal_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_search_equal_func, \"gtk_tree_view_set_search_equal_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_search_entry, \"gtk_tree_view_get_search_entry\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_search_entry, \"gtk_tree_view_set_search_entry\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_search_position_func, \"gtk_tree_view_get_search_position_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_search_position_func, \"gtk_tree_view_set_search_position_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_fixed_height_mode, \"gtk_tree_view_get_fixed_height_mode\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_fixed_height_mode, \"gtk_tree_view_set_fixed_height_mode\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_hover_selection, \"gtk_tree_view_get_hover_selection\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_hover_selection, \"gtk_tree_view_set_hover_selection\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_hover_expand, \"gtk_tree_view_get_hover_expand\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_hover_expand, \"gtk_tree_view_set_hover_expand\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_destroy_count_func, \"gtk_tree_view_set_destroy_count_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_row_separator_func, \"gtk_tree_view_get_row_separator_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_row_separator_func, \"gtk_tree_view_set_row_separator_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_rubber_banding, \"gtk_tree_view_get_rubber_banding\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_rubber_banding, \"gtk_tree_view_set_rubber_banding\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_is_rubber_banding_active, \"gtk_tree_view_is_rubber_banding_active\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_enable_tree_lines, \"gtk_tree_view_get_enable_tree_lines\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_enable_tree_lines, \"gtk_tree_view_set_enable_tree_lines\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_grid_lines, \"gtk_tree_view_get_grid_lines\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_grid_lines, \"gtk_tree_view_set_grid_lines\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_tooltip_row, \"gtk_tree_view_set_tooltip_row\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_tooltip_cell, \"gtk_tree_view_set_tooltip_cell\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_tooltip_context, \"gtk_tree_view_get_tooltip_context\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_get_tooltip_column, \"gtk_tree_view_get_tooltip_column\", LIBRARY.GTK);
	Linker.link(gtk_tree_view_set_tooltip_column, \"gtk_tree_view_set_tooltip_column\", LIBRARY.GTK);

	// gtk.TreeDragSourceT


	// gtk.TreeDragSourceT

	Linker.link(gtk_tree_drag_source_drag_data_delete, \"gtk_tree_drag_source_drag_data_delete\", LIBRARY.GTK);
	Linker.link(gtk_tree_drag_source_drag_data_get, \"gtk_tree_drag_source_drag_data_get\", LIBRARY.GTK);
	Linker.link(gtk_tree_drag_source_row_draggable, \"gtk_tree_drag_source_row_draggable\", LIBRARY.GTK);
	Linker.link(gtk_tree_set_row_drag_data, \"gtk_tree_set_row_drag_data\", LIBRARY.GTK);
	Linker.link(gtk_tree_get_row_drag_data, \"gtk_tree_get_row_drag_data\", LIBRARY.GTK);

	// gtk.TreeDragDestT


	// gtk.TreeDragDestT

	Linker.link(gtk_tree_drag_dest_drag_data_received, \"gtk_tree_drag_dest_drag_data_received\", LIBRARY.GTK);
	Linker.link(gtk_tree_drag_dest_row_drop_possible, \"gtk_tree_drag_dest_row_drop_possible\", LIBRARY.GTK);

	// gtk.CellView

	Linker.link(gtk_cell_view_new, \"gtk_cell_view_new\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_new_with_context, \"gtk_cell_view_new_with_context\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_new_with_text, \"gtk_cell_view_new_with_text\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_new_with_markup, \"gtk_cell_view_new_with_markup\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_new_with_pixbuf, \"gtk_cell_view_new_with_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_set_model, \"gtk_cell_view_set_model\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_get_model, \"gtk_cell_view_get_model\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_set_displayed_row, \"gtk_cell_view_set_displayed_row\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_get_displayed_row, \"gtk_cell_view_get_displayed_row\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_get_size_of_row, \"gtk_cell_view_get_size_of_row\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_set_background_color, \"gtk_cell_view_set_background_color\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_set_background_rgba, \"gtk_cell_view_set_background_rgba\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_set_draw_sensitive, \"gtk_cell_view_set_draw_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_get_draw_sensitive, \"gtk_cell_view_get_draw_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_set_fit_model, \"gtk_cell_view_set_fit_model\", LIBRARY.GTK);
	Linker.link(gtk_cell_view_get_fit_model, \"gtk_cell_view_get_fit_model\", LIBRARY.GTK);

	// gtk.IconView

	Linker.link(gtk_icon_view_new, \"gtk_icon_view_new\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_new_with_area, \"gtk_icon_view_new_with_area\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_new_with_model, \"gtk_icon_view_new_with_model\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_model, \"gtk_icon_view_set_model\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_model, \"gtk_icon_view_get_model\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_text_column, \"gtk_icon_view_set_text_column\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_text_column, \"gtk_icon_view_get_text_column\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_markup_column, \"gtk_icon_view_set_markup_column\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_markup_column, \"gtk_icon_view_get_markup_column\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_pixbuf_column, \"gtk_icon_view_set_pixbuf_column\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_pixbuf_column, \"gtk_icon_view_get_pixbuf_column\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_path_at_pos, \"gtk_icon_view_get_path_at_pos\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_item_at_pos, \"gtk_icon_view_get_item_at_pos\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_convert_widget_to_bin_window_coords, \"gtk_icon_view_convert_widget_to_bin_window_coords\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_cursor, \"gtk_icon_view_set_cursor\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_cursor, \"gtk_icon_view_get_cursor\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_selected_foreach, \"gtk_icon_view_selected_foreach\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_selection_mode, \"gtk_icon_view_set_selection_mode\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_selection_mode, \"gtk_icon_view_get_selection_mode\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_item_orientation, \"gtk_icon_view_set_item_orientation\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_item_orientation, \"gtk_icon_view_get_item_orientation\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_columns, \"gtk_icon_view_set_columns\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_columns, \"gtk_icon_view_get_columns\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_item_width, \"gtk_icon_view_set_item_width\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_item_width, \"gtk_icon_view_get_item_width\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_spacing, \"gtk_icon_view_set_spacing\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_spacing, \"gtk_icon_view_get_spacing\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_row_spacing, \"gtk_icon_view_set_row_spacing\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_row_spacing, \"gtk_icon_view_get_row_spacing\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_column_spacing, \"gtk_icon_view_set_column_spacing\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_column_spacing, \"gtk_icon_view_get_column_spacing\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_margin, \"gtk_icon_view_set_margin\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_margin, \"gtk_icon_view_get_margin\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_item_padding, \"gtk_icon_view_set_item_padding\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_item_padding, \"gtk_icon_view_get_item_padding\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_cell_rect, \"gtk_icon_view_get_cell_rect\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_select_path, \"gtk_icon_view_select_path\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_unselect_path, \"gtk_icon_view_unselect_path\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_path_is_selected, \"gtk_icon_view_path_is_selected\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_selected_items, \"gtk_icon_view_get_selected_items\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_select_all, \"gtk_icon_view_select_all\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_unselect_all, \"gtk_icon_view_unselect_all\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_item_activated, \"gtk_icon_view_item_activated\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_scroll_to_path, \"gtk_icon_view_scroll_to_path\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_visible_range, \"gtk_icon_view_get_visible_range\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_tooltip_item, \"gtk_icon_view_set_tooltip_item\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_tooltip_cell, \"gtk_icon_view_set_tooltip_cell\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_tooltip_context, \"gtk_icon_view_get_tooltip_context\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_tooltip_column, \"gtk_icon_view_set_tooltip_column\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_tooltip_column, \"gtk_icon_view_get_tooltip_column\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_item_row, \"gtk_icon_view_get_item_row\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_item_column, \"gtk_icon_view_get_item_column\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_enable_model_drag_source, \"gtk_icon_view_enable_model_drag_source\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_enable_model_drag_dest, \"gtk_icon_view_enable_model_drag_dest\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_unset_model_drag_source, \"gtk_icon_view_unset_model_drag_source\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_unset_model_drag_dest, \"gtk_icon_view_unset_model_drag_dest\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_reorderable, \"gtk_icon_view_set_reorderable\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_reorderable, \"gtk_icon_view_get_reorderable\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_set_drag_dest_item, \"gtk_icon_view_set_drag_dest_item\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_drag_dest_item, \"gtk_icon_view_get_drag_dest_item\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_get_dest_item_at_pos, \"gtk_icon_view_get_dest_item_at_pos\", LIBRARY.GTK);
	Linker.link(gtk_icon_view_create_drag_icon, \"gtk_icon_view_create_drag_icon\", LIBRARY.GTK);

	// gtk.TreeSortableT


	// gtk.TreeSortableT

	Linker.link(gtk_tree_sortable_sort_column_changed, \"gtk_tree_sortable_sort_column_changed\", LIBRARY.GTK);
	Linker.link(gtk_tree_sortable_get_sort_column_id, \"gtk_tree_sortable_get_sort_column_id\", LIBRARY.GTK);
	Linker.link(gtk_tree_sortable_set_sort_column_id, \"gtk_tree_sortable_set_sort_column_id\", LIBRARY.GTK);
	Linker.link(gtk_tree_sortable_set_sort_func, \"gtk_tree_sortable_set_sort_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_sortable_set_default_sort_func, \"gtk_tree_sortable_set_default_sort_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_sortable_has_default_sort_func, \"gtk_tree_sortable_has_default_sort_func\", LIBRARY.GTK);

	// gtk.TreeModelSort

	Linker.link(gtk_tree_model_sort_new_with_model, \"gtk_tree_model_sort_new_with_model\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_get_model, \"gtk_tree_model_sort_get_model\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_convert_child_path_to_path, \"gtk_tree_model_sort_convert_child_path_to_path\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_convert_child_iter_to_iter, \"gtk_tree_model_sort_convert_child_iter_to_iter\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_convert_path_to_child_path, \"gtk_tree_model_sort_convert_path_to_child_path\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_convert_iter_to_child_iter, \"gtk_tree_model_sort_convert_iter_to_child_iter\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_reset_default_sort_func, \"gtk_tree_model_sort_reset_default_sort_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_clear_cache, \"gtk_tree_model_sort_clear_cache\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_sort_iter_is_valid, \"gtk_tree_model_sort_iter_is_valid\", LIBRARY.GTK);

	// gtk.TreeModelFilter

	Linker.link(gtk_tree_model_filter_new, \"gtk_tree_model_filter_new\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_set_visible_func, \"gtk_tree_model_filter_set_visible_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_set_modify_func, \"gtk_tree_model_filter_set_modify_func\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_set_visible_column, \"gtk_tree_model_filter_set_visible_column\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_get_model, \"gtk_tree_model_filter_get_model\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_convert_child_iter_to_iter, \"gtk_tree_model_filter_convert_child_iter_to_iter\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_convert_iter_to_child_iter, \"gtk_tree_model_filter_convert_iter_to_child_iter\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_convert_child_path_to_path, \"gtk_tree_model_filter_convert_child_path_to_path\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_convert_path_to_child_path, \"gtk_tree_model_filter_convert_path_to_child_path\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_refilter, \"gtk_tree_model_filter_refilter\", LIBRARY.GTK);
	Linker.link(gtk_tree_model_filter_clear_cache, \"gtk_tree_model_filter_clear_cache\", LIBRARY.GTK);

	// gtk.CellLayoutT


	// gtk.CellLayoutT

	Linker.link(gtk_cell_layout_pack_start, \"gtk_cell_layout_pack_start\", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_pack_end, \"gtk_cell_layout_pack_end\", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_get_area, \"gtk_cell_layout_get_area\", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_get_cells, \"gtk_cell_layout_get_cells\", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_reorder, \"gtk_cell_layout_reorder\", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_clear, \"gtk_cell_layout_clear\", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_set_attributes, \"gtk_cell_layout_set_attributes\", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_add_attribute, \"gtk_cell_layout_add_attribute\", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_set_cell_data_func, \"gtk_cell_layout_set_cell_data_func\", LIBRARY.GTK);
	Linker.link(gtk_cell_layout_clear_attributes, \"gtk_cell_layout_clear_attributes\", LIBRARY.GTK);

	// gtk.CellArea

	Linker.link(gtk_cell_area_add, \"gtk_cell_area_add\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_remove, \"gtk_cell_area_remove\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_has_renderer, \"gtk_cell_area_has_renderer\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_foreach, \"gtk_cell_area_foreach\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_foreach_alloc, \"gtk_cell_area_foreach_alloc\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_event, \"gtk_cell_area_event\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_render, \"gtk_cell_area_render\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_cell_allocation, \"gtk_cell_area_get_cell_allocation\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_cell_at_position, \"gtk_cell_area_get_cell_at_position\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_create_context, \"gtk_cell_area_create_context\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_copy_context, \"gtk_cell_area_copy_context\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_request_mode, \"gtk_cell_area_get_request_mode\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_preferred_width, \"gtk_cell_area_get_preferred_width\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_preferred_height_for_width, \"gtk_cell_area_get_preferred_height_for_width\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_preferred_height, \"gtk_cell_area_get_preferred_height\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_preferred_width_for_height, \"gtk_cell_area_get_preferred_width_for_height\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_current_path_string, \"gtk_cell_area_get_current_path_string\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_apply_attributes, \"gtk_cell_area_apply_attributes\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_attribute_connect, \"gtk_cell_area_attribute_connect\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_attribute_disconnect, \"gtk_cell_area_attribute_disconnect\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_class_install_cell_property, \"gtk_cell_area_class_install_cell_property\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_class_find_cell_property, \"gtk_cell_area_class_find_cell_property\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_class_list_cell_properties, \"gtk_cell_area_class_list_cell_properties\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_add_with_properties, \"gtk_cell_area_add_with_properties\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_cell_set, \"gtk_cell_area_cell_set\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_cell_get, \"gtk_cell_area_cell_get\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_cell_set_valist, \"gtk_cell_area_cell_set_valist\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_cell_get_valist, \"gtk_cell_area_cell_get_valist\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_cell_set_property, \"gtk_cell_area_cell_set_property\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_cell_get_property, \"gtk_cell_area_cell_get_property\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_is_activatable, \"gtk_cell_area_is_activatable\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_activate, \"gtk_cell_area_activate\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_focus, \"gtk_cell_area_focus\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_set_focus_cell, \"gtk_cell_area_set_focus_cell\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_focus_cell, \"gtk_cell_area_get_focus_cell\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_add_focus_sibling, \"gtk_cell_area_add_focus_sibling\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_remove_focus_sibling, \"gtk_cell_area_remove_focus_sibling\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_is_focus_sibling, \"gtk_cell_area_is_focus_sibling\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_focus_siblings, \"gtk_cell_area_get_focus_siblings\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_focus_from_sibling, \"gtk_cell_area_get_focus_from_sibling\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_edited_cell, \"gtk_cell_area_get_edited_cell\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_get_edit_widget, \"gtk_cell_area_get_edit_widget\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_activate_cell, \"gtk_cell_area_activate_cell\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_stop_editing, \"gtk_cell_area_stop_editing\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_inner_cell_area, \"gtk_cell_area_inner_cell_area\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_request_renderer, \"gtk_cell_area_request_renderer\", LIBRARY.GTK);

	// gtk.CellAreaBox

	Linker.link(gtk_cell_area_box_new, \"gtk_cell_area_box_new\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_box_pack_start, \"gtk_cell_area_box_pack_start\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_box_pack_end, \"gtk_cell_area_box_pack_end\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_box_get_spacing, \"gtk_cell_area_box_get_spacing\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_box_set_spacing, \"gtk_cell_area_box_set_spacing\", LIBRARY.GTK);

	// gtk.CellAreaContext

	Linker.link(gtk_cell_area_context_get_area, \"gtk_cell_area_context_get_area\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_context_allocate, \"gtk_cell_area_context_allocate\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_context_reset, \"gtk_cell_area_context_reset\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_context_get_preferred_width, \"gtk_cell_area_context_get_preferred_width\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_context_get_preferred_height, \"gtk_cell_area_context_get_preferred_height\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_context_get_preferred_height_for_width, \"gtk_cell_area_context_get_preferred_height_for_width\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_context_get_preferred_width_for_height, \"gtk_cell_area_context_get_preferred_width_for_height\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_context_get_allocation, \"gtk_cell_area_context_get_allocation\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_context_push_preferred_width, \"gtk_cell_area_context_push_preferred_width\", LIBRARY.GTK);
	Linker.link(gtk_cell_area_context_push_preferred_height, \"gtk_cell_area_context_push_preferred_height\", LIBRARY.GTK);

	// gtk.CellRenderer

	Linker.link(gtk_cell_renderer_get_aligned_area, \"gtk_cell_renderer_get_aligned_area\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_size, \"gtk_cell_renderer_get_size\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_render, \"gtk_cell_renderer_render\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_activate, \"gtk_cell_renderer_activate\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_start_editing, \"gtk_cell_renderer_start_editing\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_stop_editing, \"gtk_cell_renderer_stop_editing\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_fixed_size, \"gtk_cell_renderer_get_fixed_size\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_set_fixed_size, \"gtk_cell_renderer_set_fixed_size\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_visible, \"gtk_cell_renderer_get_visible\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_set_visible, \"gtk_cell_renderer_set_visible\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_sensitive, \"gtk_cell_renderer_get_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_set_sensitive, \"gtk_cell_renderer_set_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_alignment, \"gtk_cell_renderer_get_alignment\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_set_alignment, \"gtk_cell_renderer_set_alignment\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_padding, \"gtk_cell_renderer_get_padding\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_set_padding, \"gtk_cell_renderer_set_padding\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_state, \"gtk_cell_renderer_get_state\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_is_activatable, \"gtk_cell_renderer_is_activatable\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_preferred_height, \"gtk_cell_renderer_get_preferred_height\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_preferred_height_for_width, \"gtk_cell_renderer_get_preferred_height_for_width\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_preferred_size, \"gtk_cell_renderer_get_preferred_size\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_preferred_width, \"gtk_cell_renderer_get_preferred_width\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_preferred_width_for_height, \"gtk_cell_renderer_get_preferred_width_for_height\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_get_request_mode, \"gtk_cell_renderer_get_request_mode\", LIBRARY.GTK);

	// gtk.CellEditableT


	// gtk.CellEditableT

	Linker.link(gtk_cell_editable_start_editing, \"gtk_cell_editable_start_editing\", LIBRARY.GTK);
	Linker.link(gtk_cell_editable_editing_done, \"gtk_cell_editable_editing_done\", LIBRARY.GTK);
	Linker.link(gtk_cell_editable_remove_widget, \"gtk_cell_editable_remove_widget\", LIBRARY.GTK);

	// gtk.CellEditable


	// gtk.CellRendererAccel

	Linker.link(gtk_cell_renderer_accel_new, \"gtk_cell_renderer_accel_new\", LIBRARY.GTK);

	// gtk.CellRendererCombo

	Linker.link(gtk_cell_renderer_combo_new, \"gtk_cell_renderer_combo_new\", LIBRARY.GTK);

	// gtk.CellRendererPixbuf

	Linker.link(gtk_cell_renderer_pixbuf_new, \"gtk_cell_renderer_pixbuf_new\", LIBRARY.GTK);

	// gtk.CellRendererProgress

	Linker.link(gtk_cell_renderer_progress_new, \"gtk_cell_renderer_progress_new\", LIBRARY.GTK);

	// gtk.CellRendererSpin

	Linker.link(gtk_cell_renderer_spin_new, \"gtk_cell_renderer_spin_new\", LIBRARY.GTK);

	// gtk.CellRendererText

	Linker.link(gtk_cell_renderer_text_new, \"gtk_cell_renderer_text_new\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_text_set_fixed_height_from_font, \"gtk_cell_renderer_text_set_fixed_height_from_font\", LIBRARY.GTK);

	// gtk.CellRendererToggle

	Linker.link(gtk_cell_renderer_toggle_new, \"gtk_cell_renderer_toggle_new\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_toggle_get_radio, \"gtk_cell_renderer_toggle_get_radio\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_toggle_set_radio, \"gtk_cell_renderer_toggle_set_radio\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_toggle_get_active, \"gtk_cell_renderer_toggle_get_active\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_toggle_set_active, \"gtk_cell_renderer_toggle_set_active\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_toggle_get_activatable, \"gtk_cell_renderer_toggle_get_activatable\", LIBRARY.GTK);
	Linker.link(gtk_cell_renderer_toggle_set_activatable, \"gtk_cell_renderer_toggle_set_activatable\", LIBRARY.GTK);

	// gtk.CellRendererSpinner

	Linker.link(gtk_cell_renderer_spinner_new, \"gtk_cell_renderer_spinner_new\", LIBRARY.GTK);

	// gtk.


	// gtk.ListStore

	Linker.link(gtk_list_store_new, \"gtk_list_store_new\", LIBRARY.GTK);
	Linker.link(gtk_list_store_newv, \"gtk_list_store_newv\", LIBRARY.GTK);
	Linker.link(gtk_list_store_set_column_types, \"gtk_list_store_set_column_types\", LIBRARY.GTK);
	Linker.link(gtk_list_store_set, \"gtk_list_store_set\", LIBRARY.GTK);
	Linker.link(gtk_list_store_set_valist, \"gtk_list_store_set_valist\", LIBRARY.GTK);
	Linker.link(gtk_list_store_set_value, \"gtk_list_store_set_value\", LIBRARY.GTK);
	Linker.link(gtk_list_store_set_valuesv, \"gtk_list_store_set_valuesv\", LIBRARY.GTK);
	Linker.link(gtk_list_store_remove, \"gtk_list_store_remove\", LIBRARY.GTK);
	Linker.link(gtk_list_store_insert, \"gtk_list_store_insert\", LIBRARY.GTK);
	Linker.link(gtk_list_store_insert_before, \"gtk_list_store_insert_before\", LIBRARY.GTK);
	Linker.link(gtk_list_store_insert_after, \"gtk_list_store_insert_after\", LIBRARY.GTK);
	Linker.link(gtk_list_store_insert_with_values, \"gtk_list_store_insert_with_values\", LIBRARY.GTK);
	Linker.link(gtk_list_store_insert_with_valuesv, \"gtk_list_store_insert_with_valuesv\", LIBRARY.GTK);
	Linker.link(gtk_list_store_prepend, \"gtk_list_store_prepend\", LIBRARY.GTK);
	Linker.link(gtk_list_store_append, \"gtk_list_store_append\", LIBRARY.GTK);
	Linker.link(gtk_list_store_clear, \"gtk_list_store_clear\", LIBRARY.GTK);
	Linker.link(gtk_list_store_iter_is_valid, \"gtk_list_store_iter_is_valid\", LIBRARY.GTK);
	Linker.link(gtk_list_store_reorder, \"gtk_list_store_reorder\", LIBRARY.GTK);
	Linker.link(gtk_list_store_swap, \"gtk_list_store_swap\", LIBRARY.GTK);
	Linker.link(gtk_list_store_move_before, \"gtk_list_store_move_before\", LIBRARY.GTK);
	Linker.link(gtk_list_store_move_after, \"gtk_list_store_move_after\", LIBRARY.GTK);

	// gtk.TreeStore

	Linker.link(gtk_tree_store_new, \"gtk_tree_store_new\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_newv, \"gtk_tree_store_newv\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_set_column_types, \"gtk_tree_store_set_column_types\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_set_value, \"gtk_tree_store_set_value\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_set, \"gtk_tree_store_set\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_set_valist, \"gtk_tree_store_set_valist\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_set_valuesv, \"gtk_tree_store_set_valuesv\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_remove, \"gtk_tree_store_remove\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_insert, \"gtk_tree_store_insert\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_insert_before, \"gtk_tree_store_insert_before\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_insert_after, \"gtk_tree_store_insert_after\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_insert_with_values, \"gtk_tree_store_insert_with_values\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_insert_with_valuesv, \"gtk_tree_store_insert_with_valuesv\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_prepend, \"gtk_tree_store_prepend\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_append, \"gtk_tree_store_append\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_is_ancestor, \"gtk_tree_store_is_ancestor\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_iter_depth, \"gtk_tree_store_iter_depth\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_clear, \"gtk_tree_store_clear\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_iter_is_valid, \"gtk_tree_store_iter_is_valid\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_reorder, \"gtk_tree_store_reorder\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_swap, \"gtk_tree_store_swap\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_move_before, \"gtk_tree_store_move_before\", LIBRARY.GTK);
	Linker.link(gtk_tree_store_move_after, \"gtk_tree_store_move_after\", LIBRARY.GTK);

	// gtk.ComboBox

	Linker.link(gtk_combo_box_new, \"gtk_combo_box_new\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_new_with_entry, \"gtk_combo_box_new_with_entry\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_new_with_model, \"gtk_combo_box_new_with_model\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_new_with_model_and_entry, \"gtk_combo_box_new_with_model_and_entry\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_new_with_area, \"gtk_combo_box_new_with_area\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_new_with_area_and_entry, \"gtk_combo_box_new_with_area_and_entry\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_wrap_width, \"gtk_combo_box_get_wrap_width\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_wrap_width, \"gtk_combo_box_set_wrap_width\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_row_span_column, \"gtk_combo_box_get_row_span_column\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_row_span_column, \"gtk_combo_box_set_row_span_column\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_column_span_column, \"gtk_combo_box_get_column_span_column\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_column_span_column, \"gtk_combo_box_set_column_span_column\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_active, \"gtk_combo_box_get_active\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_active, \"gtk_combo_box_set_active\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_active_iter, \"gtk_combo_box_get_active_iter\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_active_iter, \"gtk_combo_box_set_active_iter\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_id_column, \"gtk_combo_box_get_id_column\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_id_column, \"gtk_combo_box_set_id_column\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_active_id, \"gtk_combo_box_get_active_id\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_active_id, \"gtk_combo_box_set_active_id\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_model, \"gtk_combo_box_get_model\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_model, \"gtk_combo_box_set_model\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_popup_for_device, \"gtk_combo_box_popup_for_device\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_popup, \"gtk_combo_box_popup\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_popdown, \"gtk_combo_box_popdown\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_popup_accessible, \"gtk_combo_box_get_popup_accessible\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_row_separator_func, \"gtk_combo_box_get_row_separator_func\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_row_separator_func, \"gtk_combo_box_set_row_separator_func\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_add_tearoffs, \"gtk_combo_box_set_add_tearoffs\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_add_tearoffs, \"gtk_combo_box_get_add_tearoffs\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_title, \"gtk_combo_box_set_title\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_title, \"gtk_combo_box_get_title\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_focus_on_click, \"gtk_combo_box_set_focus_on_click\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_focus_on_click, \"gtk_combo_box_get_focus_on_click\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_button_sensitivity, \"gtk_combo_box_set_button_sensitivity\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_button_sensitivity, \"gtk_combo_box_get_button_sensitivity\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_has_entry, \"gtk_combo_box_get_has_entry\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_entry_text_column, \"gtk_combo_box_set_entry_text_column\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_entry_text_column, \"gtk_combo_box_get_entry_text_column\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_set_popup_fixed_width, \"gtk_combo_box_set_popup_fixed_width\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_get_popup_fixed_width, \"gtk_combo_box_get_popup_fixed_width\", LIBRARY.GTK);

	// gtk.ComboBoxText

	Linker.link(gtk_combo_box_text_new, \"gtk_combo_box_text_new\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_text_new_with_entry, \"gtk_combo_box_text_new_with_entry\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_text_append, \"gtk_combo_box_text_append\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_text_prepend, \"gtk_combo_box_text_prepend\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_text_insert, \"gtk_combo_box_text_insert\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_text_append_text, \"gtk_combo_box_text_append_text\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_text_prepend_text, \"gtk_combo_box_text_prepend_text\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_text_insert_text, \"gtk_combo_box_text_insert_text\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_text_remove, \"gtk_combo_box_text_remove\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_text_remove_all, \"gtk_combo_box_text_remove_all\", LIBRARY.GTK);
	Linker.link(gtk_combo_box_text_get_active_text, \"gtk_combo_box_text_get_active_text\", LIBRARY.GTK);

	// gtk.Menu

	Linker.link(gtk_menu_new, \"gtk_menu_new\", LIBRARY.GTK);
	Linker.link(gtk_menu_new_from_model, \"gtk_menu_new_from_model\", LIBRARY.GTK);
	Linker.link(gtk_menu_set_screen, \"gtk_menu_set_screen\", LIBRARY.GTK);
	Linker.link(gtk_menu_reorder_child, \"gtk_menu_reorder_child\", LIBRARY.GTK);
	Linker.link(gtk_menu_attach, \"gtk_menu_attach\", LIBRARY.GTK);
	Linker.link(gtk_menu_popup_for_device, \"gtk_menu_popup_for_device\", LIBRARY.GTK);
	Linker.link(gtk_menu_popup, \"gtk_menu_popup\", LIBRARY.GTK);
	Linker.link(gtk_menu_set_accel_group, \"gtk_menu_set_accel_group\", LIBRARY.GTK);
	Linker.link(gtk_menu_get_accel_group, \"gtk_menu_get_accel_group\", LIBRARY.GTK);
	Linker.link(gtk_menu_set_accel_path, \"gtk_menu_set_accel_path\", LIBRARY.GTK);
	Linker.link(gtk_menu_get_accel_path, \"gtk_menu_get_accel_path\", LIBRARY.GTK);
	Linker.link(gtk_menu_set_title, \"gtk_menu_set_title\", LIBRARY.GTK);
	Linker.link(gtk_menu_get_title, \"gtk_menu_get_title\", LIBRARY.GTK);
	Linker.link(gtk_menu_set_monitor, \"gtk_menu_set_monitor\", LIBRARY.GTK);
	Linker.link(gtk_menu_get_monitor, \"gtk_menu_get_monitor\", LIBRARY.GTK);
	Linker.link(gtk_menu_get_tearoff_state, \"gtk_menu_get_tearoff_state\", LIBRARY.GTK);
	Linker.link(gtk_menu_set_reserve_toggle_size, \"gtk_menu_set_reserve_toggle_size\", LIBRARY.GTK);
	Linker.link(gtk_menu_get_reserve_toggle_size, \"gtk_menu_get_reserve_toggle_size\", LIBRARY.GTK);
	Linker.link(gtk_menu_popdown, \"gtk_menu_popdown\", LIBRARY.GTK);
	Linker.link(gtk_menu_reposition, \"gtk_menu_reposition\", LIBRARY.GTK);
	Linker.link(gtk_menu_get_active, \"gtk_menu_get_active\", LIBRARY.GTK);
	Linker.link(gtk_menu_set_active, \"gtk_menu_set_active\", LIBRARY.GTK);
	Linker.link(gtk_menu_set_tearoff_state, \"gtk_menu_set_tearoff_state\", LIBRARY.GTK);
	Linker.link(gtk_menu_attach_to_widget, \"gtk_menu_attach_to_widget\", LIBRARY.GTK);
	Linker.link(gtk_menu_detach, \"gtk_menu_detach\", LIBRARY.GTK);
	Linker.link(gtk_menu_get_attach_widget, \"gtk_menu_get_attach_widget\", LIBRARY.GTK);
	Linker.link(gtk_menu_get_for_attach_widget, \"gtk_menu_get_for_attach_widget\", LIBRARY.GTK);

	// gtk.MenuBar

	Linker.link(gtk_menu_bar_new, \"gtk_menu_bar_new\", LIBRARY.GTK);
	Linker.link(gtk_menu_bar_new_from_model, \"gtk_menu_bar_new_from_model\", LIBRARY.GTK);
	Linker.link(gtk_menu_bar_set_pack_direction, \"gtk_menu_bar_set_pack_direction\", LIBRARY.GTK);
	Linker.link(gtk_menu_bar_get_pack_direction, \"gtk_menu_bar_get_pack_direction\", LIBRARY.GTK);
	Linker.link(gtk_menu_bar_set_child_pack_direction, \"gtk_menu_bar_set_child_pack_direction\", LIBRARY.GTK);
	Linker.link(gtk_menu_bar_get_child_pack_direction, \"gtk_menu_bar_get_child_pack_direction\", LIBRARY.GTK);

	// gtk.MenuItem

	Linker.link(gtk_menu_item_new, \"gtk_menu_item_new\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_new_with_label, \"gtk_menu_item_new_with_label\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_new_with_mnemonic, \"gtk_menu_item_new_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_right_justified, \"gtk_menu_item_set_right_justified\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_right_justified, \"gtk_menu_item_get_right_justified\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_label, \"gtk_menu_item_get_label\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_label, \"gtk_menu_item_set_label\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_use_underline, \"gtk_menu_item_get_use_underline\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_use_underline, \"gtk_menu_item_set_use_underline\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_submenu, \"gtk_menu_item_set_submenu\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_submenu, \"gtk_menu_item_get_submenu\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_accel_path, \"gtk_menu_item_set_accel_path\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_accel_path, \"gtk_menu_item_get_accel_path\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_select, \"gtk_menu_item_select\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_deselect, \"gtk_menu_item_deselect\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_activate, \"gtk_menu_item_activate\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_toggle_size_request, \"gtk_menu_item_toggle_size_request\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_toggle_size_allocate, \"gtk_menu_item_toggle_size_allocate\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_get_reserve_indicator, \"gtk_menu_item_get_reserve_indicator\", LIBRARY.GTK);
	Linker.link(gtk_menu_item_set_reserve_indicator, \"gtk_menu_item_set_reserve_indicator\", LIBRARY.GTK);

	// gtk.ImageMenuItem

	Linker.link(gtk_image_menu_item_set_image, \"gtk_image_menu_item_set_image\", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_get_image, \"gtk_image_menu_item_get_image\", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_new, \"gtk_image_menu_item_new\", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_new_from_stock, \"gtk_image_menu_item_new_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_new_with_label, \"gtk_image_menu_item_new_with_label\", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_new_with_mnemonic, \"gtk_image_menu_item_new_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_get_use_stock, \"gtk_image_menu_item_get_use_stock\", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_set_use_stock, \"gtk_image_menu_item_set_use_stock\", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_get_always_show_image, \"gtk_image_menu_item_get_always_show_image\", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_set_always_show_image, \"gtk_image_menu_item_set_always_show_image\", LIBRARY.GTK);
	Linker.link(gtk_image_menu_item_set_accel_group, \"gtk_image_menu_item_set_accel_group\", LIBRARY.GTK);

	// gtk.RadioMenuItem

	Linker.link(gtk_radio_menu_item_new, \"gtk_radio_menu_item_new\", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_new_with_label, \"gtk_radio_menu_item_new_with_label\", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_new_with_mnemonic, \"gtk_radio_menu_item_new_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_new_from_widget, \"gtk_radio_menu_item_new_from_widget\", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_new_with_label_from_widget, \"gtk_radio_menu_item_new_with_label_from_widget\", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_new_with_mnemonic_from_widget, \"gtk_radio_menu_item_new_with_mnemonic_from_widget\", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_set_group, \"gtk_radio_menu_item_set_group\", LIBRARY.GTK);
	Linker.link(gtk_radio_menu_item_get_group, \"gtk_radio_menu_item_get_group\", LIBRARY.GTK);

	// gtk.CheckMenuItem

	Linker.link(gtk_check_menu_item_new, \"gtk_check_menu_item_new\", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_new_with_label, \"gtk_check_menu_item_new_with_label\", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_new_with_mnemonic, \"gtk_check_menu_item_new_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_get_active, \"gtk_check_menu_item_get_active\", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_set_active, \"gtk_check_menu_item_set_active\", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_toggled, \"gtk_check_menu_item_toggled\", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_get_inconsistent, \"gtk_check_menu_item_get_inconsistent\", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_set_inconsistent, \"gtk_check_menu_item_set_inconsistent\", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_set_draw_as_radio, \"gtk_check_menu_item_set_draw_as_radio\", LIBRARY.GTK);
	Linker.link(gtk_check_menu_item_get_draw_as_radio, \"gtk_check_menu_item_get_draw_as_radio\", LIBRARY.GTK);

	// gtk.SeparatorMenuItem

	Linker.link(gtk_separator_menu_item_new, \"gtk_separator_menu_item_new\", LIBRARY.GTK);

	// gtk.TearoffMenuItem

	Linker.link(gtk_tearoff_menu_item_new, \"gtk_tearoff_menu_item_new\", LIBRARY.GTK);

	// gtk.ToolShellT


	// gtk.ToolShellT

	Linker.link(gtk_tool_shell_get_ellipsize_mode, \"gtk_tool_shell_get_ellipsize_mode\", LIBRARY.GTK);
	Linker.link(gtk_tool_shell_get_icon_size, \"gtk_tool_shell_get_icon_size\", LIBRARY.GTK);
	Linker.link(gtk_tool_shell_get_orientation, \"gtk_tool_shell_get_orientation\", LIBRARY.GTK);
	Linker.link(gtk_tool_shell_get_relief_style, \"gtk_tool_shell_get_relief_style\", LIBRARY.GTK);
	Linker.link(gtk_tool_shell_get_style, \"gtk_tool_shell_get_style\", LIBRARY.GTK);
	Linker.link(gtk_tool_shell_get_text_alignment, \"gtk_tool_shell_get_text_alignment\", LIBRARY.GTK);
	Linker.link(gtk_tool_shell_get_text_orientation, \"gtk_tool_shell_get_text_orientation\", LIBRARY.GTK);
	Linker.link(gtk_tool_shell_rebuild_menu, \"gtk_tool_shell_rebuild_menu\", LIBRARY.GTK);
	Linker.link(gtk_tool_shell_get_text_size_group, \"gtk_tool_shell_get_text_size_group\", LIBRARY.GTK);

	// gtk.Toolbar

	Linker.link(gtk_toolbar_new, \"gtk_toolbar_new\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_insert, \"gtk_toolbar_insert\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_item_index, \"gtk_toolbar_get_item_index\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_n_items, \"gtk_toolbar_get_n_items\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_nth_item, \"gtk_toolbar_get_nth_item\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_drop_index, \"gtk_toolbar_get_drop_index\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_set_drop_highlight_item, \"gtk_toolbar_set_drop_highlight_item\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_set_show_arrow, \"gtk_toolbar_set_show_arrow\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_unset_icon_size, \"gtk_toolbar_unset_icon_size\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_show_arrow, \"gtk_toolbar_get_show_arrow\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_style, \"gtk_toolbar_get_style\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_icon_size, \"gtk_toolbar_get_icon_size\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_get_relief_style, \"gtk_toolbar_get_relief_style\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_set_style, \"gtk_toolbar_set_style\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_set_icon_size, \"gtk_toolbar_set_icon_size\", LIBRARY.GTK);
	Linker.link(gtk_toolbar_unset_style, \"gtk_toolbar_unset_style\", LIBRARY.GTK);

	// gtk.ToolItem

	Linker.link(gtk_tool_item_new, \"gtk_tool_item_new\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_homogeneous, \"gtk_tool_item_set_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_homogeneous, \"gtk_tool_item_get_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_expand, \"gtk_tool_item_set_expand\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_expand, \"gtk_tool_item_get_expand\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_tooltip_text, \"gtk_tool_item_set_tooltip_text\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_tooltip_markup, \"gtk_tool_item_set_tooltip_markup\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_use_drag_window, \"gtk_tool_item_set_use_drag_window\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_use_drag_window, \"gtk_tool_item_get_use_drag_window\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_visible_horizontal, \"gtk_tool_item_set_visible_horizontal\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_visible_horizontal, \"gtk_tool_item_get_visible_horizontal\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_visible_vertical, \"gtk_tool_item_set_visible_vertical\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_visible_vertical, \"gtk_tool_item_get_visible_vertical\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_is_important, \"gtk_tool_item_set_is_important\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_is_important, \"gtk_tool_item_get_is_important\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_ellipsize_mode, \"gtk_tool_item_get_ellipsize_mode\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_icon_size, \"gtk_tool_item_get_icon_size\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_orientation, \"gtk_tool_item_get_orientation\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_toolbar_style, \"gtk_tool_item_get_toolbar_style\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_relief_style, \"gtk_tool_item_get_relief_style\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_text_alignment, \"gtk_tool_item_get_text_alignment\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_text_orientation, \"gtk_tool_item_get_text_orientation\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_retrieve_proxy_menu_item, \"gtk_tool_item_retrieve_proxy_menu_item\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_proxy_menu_item, \"gtk_tool_item_get_proxy_menu_item\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_set_proxy_menu_item, \"gtk_tool_item_set_proxy_menu_item\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_rebuild_menu, \"gtk_tool_item_rebuild_menu\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_toolbar_reconfigured, \"gtk_tool_item_toolbar_reconfigured\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_get_text_size_group, \"gtk_tool_item_get_text_size_group\", LIBRARY.GTK);

	// gtk.ToolPalette

	Linker.link(gtk_tool_palette_new, \"gtk_tool_palette_new\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_exclusive, \"gtk_tool_palette_get_exclusive\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_set_exclusive, \"gtk_tool_palette_set_exclusive\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_expand, \"gtk_tool_palette_get_expand\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_set_expand, \"gtk_tool_palette_set_expand\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_group_position, \"gtk_tool_palette_get_group_position\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_set_group_position, \"gtk_tool_palette_set_group_position\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_icon_size, \"gtk_tool_palette_get_icon_size\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_set_icon_size, \"gtk_tool_palette_set_icon_size\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_unset_icon_size, \"gtk_tool_palette_unset_icon_size\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_style, \"gtk_tool_palette_get_style\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_set_style, \"gtk_tool_palette_set_style\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_unset_style, \"gtk_tool_palette_unset_style\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_add_drag_dest, \"gtk_tool_palette_add_drag_dest\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_drag_item, \"gtk_tool_palette_get_drag_item\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_drag_target_group, \"gtk_tool_palette_get_drag_target_group\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_drag_target_item, \"gtk_tool_palette_get_drag_target_item\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_drop_group, \"gtk_tool_palette_get_drop_group\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_drop_item, \"gtk_tool_palette_get_drop_item\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_set_drag_source, \"gtk_tool_palette_set_drag_source\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_hadjustment, \"gtk_tool_palette_get_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_tool_palette_get_vadjustment, \"gtk_tool_palette_get_vadjustment\", LIBRARY.GTK);

	// gtk.ToolItemGroup

	Linker.link(gtk_tool_item_group_get_collapsed, \"gtk_tool_item_group_get_collapsed\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_get_drop_item, \"gtk_tool_item_group_get_drop_item\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_get_ellipsize, \"gtk_tool_item_group_get_ellipsize\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_get_item_position, \"gtk_tool_item_group_get_item_position\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_get_n_items, \"gtk_tool_item_group_get_n_items\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_get_label, \"gtk_tool_item_group_get_label\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_get_label_widget, \"gtk_tool_item_group_get_label_widget\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_get_nth_item, \"gtk_tool_item_group_get_nth_item\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_get_header_relief, \"gtk_tool_item_group_get_header_relief\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_insert, \"gtk_tool_item_group_insert\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_new, \"gtk_tool_item_group_new\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_set_collapsed, \"gtk_tool_item_group_set_collapsed\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_set_ellipsize, \"gtk_tool_item_group_set_ellipsize\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_set_item_position, \"gtk_tool_item_group_set_item_position\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_set_label, \"gtk_tool_item_group_set_label\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_set_label_widget, \"gtk_tool_item_group_set_label_widget\", LIBRARY.GTK);
	Linker.link(gtk_tool_item_group_set_header_relief, \"gtk_tool_item_group_set_header_relief\", LIBRARY.GTK);

	// gtk.SeparatorToolItem

	Linker.link(gtk_separator_tool_item_new, \"gtk_separator_tool_item_new\", LIBRARY.GTK);
	Linker.link(gtk_separator_tool_item_set_draw, \"gtk_separator_tool_item_set_draw\", LIBRARY.GTK);
	Linker.link(gtk_separator_tool_item_get_draw, \"gtk_separator_tool_item_get_draw\", LIBRARY.GTK);

	// gtk.ToolButton

	Linker.link(gtk_tool_button_new, \"gtk_tool_button_new\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_new_from_stock, \"gtk_tool_button_new_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_label, \"gtk_tool_button_set_label\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_label, \"gtk_tool_button_get_label\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_use_underline, \"gtk_tool_button_set_use_underline\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_use_underline, \"gtk_tool_button_get_use_underline\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_stock_id, \"gtk_tool_button_set_stock_id\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_stock_id, \"gtk_tool_button_get_stock_id\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_icon_name, \"gtk_tool_button_set_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_icon_name, \"gtk_tool_button_get_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_icon_widget, \"gtk_tool_button_set_icon_widget\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_icon_widget, \"gtk_tool_button_get_icon_widget\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_set_label_widget, \"gtk_tool_button_set_label_widget\", LIBRARY.GTK);
	Linker.link(gtk_tool_button_get_label_widget, \"gtk_tool_button_get_label_widget\", LIBRARY.GTK);

	// gtk.MenuToolButton

	Linker.link(gtk_menu_tool_button_new, \"gtk_menu_tool_button_new\", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_new_from_stock, \"gtk_menu_tool_button_new_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_set_menu, \"gtk_menu_tool_button_set_menu\", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_get_menu, \"gtk_menu_tool_button_get_menu\", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_set_arrow_tooltip_text, \"gtk_menu_tool_button_set_arrow_tooltip_text\", LIBRARY.GTK);
	Linker.link(gtk_menu_tool_button_set_arrow_tooltip_markup, \"gtk_menu_tool_button_set_arrow_tooltip_markup\", LIBRARY.GTK);

	// gtk.ToggleToolButton

	Linker.link(gtk_toggle_tool_button_new, \"gtk_toggle_tool_button_new\", LIBRARY.GTK);
	Linker.link(gtk_toggle_tool_button_new_from_stock, \"gtk_toggle_tool_button_new_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_toggle_tool_button_set_active, \"gtk_toggle_tool_button_set_active\", LIBRARY.GTK);
	Linker.link(gtk_toggle_tool_button_get_active, \"gtk_toggle_tool_button_get_active\", LIBRARY.GTK);

	// gtk.RadioToolButton

	Linker.link(gtk_radio_tool_button_new, \"gtk_radio_tool_button_new\", LIBRARY.GTK);
	Linker.link(gtk_radio_tool_button_new_from_stock, \"gtk_radio_tool_button_new_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_radio_tool_button_new_from_widget, \"gtk_radio_tool_button_new_from_widget\", LIBRARY.GTK);
	Linker.link(gtk_radio_tool_button_new_with_stock_from_widget, \"gtk_radio_tool_button_new_with_stock_from_widget\", LIBRARY.GTK);
	Linker.link(gtk_radio_tool_button_get_group, \"gtk_radio_tool_button_get_group\", LIBRARY.GTK);
	Linker.link(gtk_radio_tool_button_set_group, \"gtk_radio_tool_button_set_group\", LIBRARY.GTK);

	// gtk.UIManager

	Linker.link(gtk_ui_manager_new, \"gtk_ui_manager_new\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_set_add_tearoffs, \"gtk_ui_manager_set_add_tearoffs\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_add_tearoffs, \"gtk_ui_manager_get_add_tearoffs\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_insert_action_group, \"gtk_ui_manager_insert_action_group\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_remove_action_group, \"gtk_ui_manager_remove_action_group\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_action_groups, \"gtk_ui_manager_get_action_groups\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_accel_group, \"gtk_ui_manager_get_accel_group\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_widget, \"gtk_ui_manager_get_widget\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_toplevels, \"gtk_ui_manager_get_toplevels\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_action, \"gtk_ui_manager_get_action\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_add_ui_from_resource, \"gtk_ui_manager_add_ui_from_resource\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_add_ui_from_string, \"gtk_ui_manager_add_ui_from_string\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_add_ui_from_file, \"gtk_ui_manager_add_ui_from_file\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_new_merge_id, \"gtk_ui_manager_new_merge_id\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_add_ui, \"gtk_ui_manager_add_ui\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_remove_ui, \"gtk_ui_manager_remove_ui\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_get_ui, \"gtk_ui_manager_get_ui\", LIBRARY.GTK);
	Linker.link(gtk_ui_manager_ensure_update, \"gtk_ui_manager_ensure_update\", LIBRARY.GTK);

	// gtk.ActionGroup

	Linker.link(gtk_action_group_new, \"gtk_action_group_new\", LIBRARY.GTK);
	Linker.link(gtk_action_group_get_name, \"gtk_action_group_get_name\", LIBRARY.GTK);
	Linker.link(gtk_action_group_get_sensitive, \"gtk_action_group_get_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_action_group_set_sensitive, \"gtk_action_group_set_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_action_group_get_visible, \"gtk_action_group_get_visible\", LIBRARY.GTK);
	Linker.link(gtk_action_group_set_visible, \"gtk_action_group_set_visible\", LIBRARY.GTK);
	Linker.link(gtk_action_group_get_accel_group, \"gtk_action_group_get_accel_group\", LIBRARY.GTK);
	Linker.link(gtk_action_group_set_accel_group, \"gtk_action_group_set_accel_group\", LIBRARY.GTK);
	Linker.link(gtk_action_group_get_action, \"gtk_action_group_get_action\", LIBRARY.GTK);
	Linker.link(gtk_action_group_list_actions, \"gtk_action_group_list_actions\", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_action, \"gtk_action_group_add_action\", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_action_with_accel, \"gtk_action_group_add_action_with_accel\", LIBRARY.GTK);
	Linker.link(gtk_action_group_remove_action, \"gtk_action_group_remove_action\", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_actions, \"gtk_action_group_add_actions\", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_actions_full, \"gtk_action_group_add_actions_full\", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_toggle_actions, \"gtk_action_group_add_toggle_actions\", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_toggle_actions_full, \"gtk_action_group_add_toggle_actions_full\", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_radio_actions, \"gtk_action_group_add_radio_actions\", LIBRARY.GTK);
	Linker.link(gtk_action_group_add_radio_actions_full, \"gtk_action_group_add_radio_actions_full\", LIBRARY.GTK);
	Linker.link(gtk_action_group_set_translate_func, \"gtk_action_group_set_translate_func\", LIBRARY.GTK);
	Linker.link(gtk_action_group_set_translation_domain, \"gtk_action_group_set_translation_domain\", LIBRARY.GTK);
	Linker.link(gtk_action_group_translate_string, \"gtk_action_group_translate_string\", LIBRARY.GTK);

	// gtk.Action

	Linker.link(gtk_action_new, \"gtk_action_new\", LIBRARY.GTK);
	Linker.link(gtk_action_get_name, \"gtk_action_get_name\", LIBRARY.GTK);
	Linker.link(gtk_action_is_sensitive, \"gtk_action_is_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_action_get_sensitive, \"gtk_action_get_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_action_set_sensitive, \"gtk_action_set_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_action_is_visible, \"gtk_action_is_visible\", LIBRARY.GTK);
	Linker.link(gtk_action_get_visible, \"gtk_action_get_visible\", LIBRARY.GTK);
	Linker.link(gtk_action_set_visible, \"gtk_action_set_visible\", LIBRARY.GTK);
	Linker.link(gtk_action_activate, \"gtk_action_activate\", LIBRARY.GTK);
	Linker.link(gtk_action_create_icon, \"gtk_action_create_icon\", LIBRARY.GTK);
	Linker.link(gtk_action_create_menu_item, \"gtk_action_create_menu_item\", LIBRARY.GTK);
	Linker.link(gtk_action_create_tool_item, \"gtk_action_create_tool_item\", LIBRARY.GTK);
	Linker.link(gtk_action_create_menu, \"gtk_action_create_menu\", LIBRARY.GTK);
	Linker.link(gtk_action_get_proxies, \"gtk_action_get_proxies\", LIBRARY.GTK);
	Linker.link(gtk_action_connect_accelerator, \"gtk_action_connect_accelerator\", LIBRARY.GTK);
	Linker.link(gtk_action_disconnect_accelerator, \"gtk_action_disconnect_accelerator\", LIBRARY.GTK);
	Linker.link(gtk_action_block_activate, \"gtk_action_block_activate\", LIBRARY.GTK);
	Linker.link(gtk_action_unblock_activate, \"gtk_action_unblock_activate\", LIBRARY.GTK);
	Linker.link(gtk_action_get_always_show_image, \"gtk_action_get_always_show_image\", LIBRARY.GTK);
	Linker.link(gtk_action_set_always_show_image, \"gtk_action_set_always_show_image\", LIBRARY.GTK);
	Linker.link(gtk_action_get_accel_path, \"gtk_action_get_accel_path\", LIBRARY.GTK);
	Linker.link(gtk_action_set_accel_path, \"gtk_action_set_accel_path\", LIBRARY.GTK);
	Linker.link(gtk_action_get_accel_closure, \"gtk_action_get_accel_closure\", LIBRARY.GTK);
	Linker.link(gtk_action_set_accel_group, \"gtk_action_set_accel_group\", LIBRARY.GTK);
	Linker.link(gtk_action_set_label, \"gtk_action_set_label\", LIBRARY.GTK);
	Linker.link(gtk_action_get_label, \"gtk_action_get_label\", LIBRARY.GTK);
	Linker.link(gtk_action_set_short_label, \"gtk_action_set_short_label\", LIBRARY.GTK);
	Linker.link(gtk_action_get_short_label, \"gtk_action_get_short_label\", LIBRARY.GTK);
	Linker.link(gtk_action_set_tooltip, \"gtk_action_set_tooltip\", LIBRARY.GTK);
	Linker.link(gtk_action_get_tooltip, \"gtk_action_get_tooltip\", LIBRARY.GTK);
	Linker.link(gtk_action_set_stock_id, \"gtk_action_set_stock_id\", LIBRARY.GTK);
	Linker.link(gtk_action_get_stock_id, \"gtk_action_get_stock_id\", LIBRARY.GTK);
	Linker.link(gtk_action_set_gicon, \"gtk_action_set_gicon\", LIBRARY.GTK);
	Linker.link(gtk_action_get_gicon, \"gtk_action_get_gicon\", LIBRARY.GTK);
	Linker.link(gtk_action_set_icon_name, \"gtk_action_set_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_action_get_icon_name, \"gtk_action_get_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_action_set_visible_horizontal, \"gtk_action_set_visible_horizontal\", LIBRARY.GTK);
	Linker.link(gtk_action_get_visible_horizontal, \"gtk_action_get_visible_horizontal\", LIBRARY.GTK);
	Linker.link(gtk_action_set_visible_vertical, \"gtk_action_set_visible_vertical\", LIBRARY.GTK);
	Linker.link(gtk_action_get_visible_vertical, \"gtk_action_get_visible_vertical\", LIBRARY.GTK);
	Linker.link(gtk_action_set_is_important, \"gtk_action_set_is_important\", LIBRARY.GTK);
	Linker.link(gtk_action_get_is_important, \"gtk_action_get_is_important\", LIBRARY.GTK);

	// gtk.ToggleAction

	Linker.link(gtk_toggle_action_new, \"gtk_toggle_action_new\", LIBRARY.GTK);
	Linker.link(gtk_toggle_action_toggled, \"gtk_toggle_action_toggled\", LIBRARY.GTK);
	Linker.link(gtk_toggle_action_set_active, \"gtk_toggle_action_set_active\", LIBRARY.GTK);
	Linker.link(gtk_toggle_action_get_active, \"gtk_toggle_action_get_active\", LIBRARY.GTK);
	Linker.link(gtk_toggle_action_set_draw_as_radio, \"gtk_toggle_action_set_draw_as_radio\", LIBRARY.GTK);
	Linker.link(gtk_toggle_action_get_draw_as_radio, \"gtk_toggle_action_get_draw_as_radio\", LIBRARY.GTK);

	// gtk.RadioAction

	Linker.link(gtk_radio_action_new, \"gtk_radio_action_new\", LIBRARY.GTK);
	Linker.link(gtk_radio_action_get_group, \"gtk_radio_action_get_group\", LIBRARY.GTK);
	Linker.link(gtk_radio_action_set_group, \"gtk_radio_action_set_group\", LIBRARY.GTK);
	Linker.link(gtk_radio_action_join_group, \"gtk_radio_action_join_group\", LIBRARY.GTK);
	Linker.link(gtk_radio_action_get_current_value, \"gtk_radio_action_get_current_value\", LIBRARY.GTK);
	Linker.link(gtk_radio_action_set_current_value, \"gtk_radio_action_set_current_value\", LIBRARY.GTK);

	// gtk.RecentAction

	Linker.link(gtk_recent_action_new, \"gtk_recent_action_new\", LIBRARY.GTK);
	Linker.link(gtk_recent_action_new_for_manager, \"gtk_recent_action_new_for_manager\", LIBRARY.GTK);
	Linker.link(gtk_recent_action_get_show_numbers, \"gtk_recent_action_get_show_numbers\", LIBRARY.GTK);
	Linker.link(gtk_recent_action_set_show_numbers, \"gtk_recent_action_set_show_numbers\", LIBRARY.GTK);

	// gtk.ActivatableT


	// gtk.ActivatableT

	Linker.link(gtk_activatable_do_set_related_action, \"gtk_activatable_do_set_related_action\", LIBRARY.GTK);
	Linker.link(gtk_activatable_get_related_action, \"gtk_activatable_get_related_action\", LIBRARY.GTK);
	Linker.link(gtk_activatable_get_use_action_appearance, \"gtk_activatable_get_use_action_appearance\", LIBRARY.GTK);
	Linker.link(gtk_activatable_sync_action_properties, \"gtk_activatable_sync_action_properties\", LIBRARY.GTK);
	Linker.link(gtk_activatable_set_related_action, \"gtk_activatable_set_related_action\", LIBRARY.GTK);
	Linker.link(gtk_activatable_set_use_action_appearance, \"gtk_activatable_set_use_action_appearance\", LIBRARY.GTK);

	// gtk.ColorChooserT


	// gtk.ColorChooserT

	Linker.link(gtk_color_chooser_get_rgba, \"gtk_color_chooser_get_rgba\", LIBRARY.GTK);
	Linker.link(gtk_color_chooser_set_rgba, \"gtk_color_chooser_set_rgba\", LIBRARY.GTK);
	Linker.link(gtk_color_chooser_get_use_alpha, \"gtk_color_chooser_get_use_alpha\", LIBRARY.GTK);
	Linker.link(gtk_color_chooser_set_use_alpha, \"gtk_color_chooser_set_use_alpha\", LIBRARY.GTK);
	Linker.link(gtk_color_chooser_add_palette, \"gtk_color_chooser_add_palette\", LIBRARY.GTK);

	// gtk.ColorButton

	Linker.link(gtk_color_button_new, \"gtk_color_button_new\", LIBRARY.GTK);
	Linker.link(gtk_color_button_new_with_color, \"gtk_color_button_new_with_color\", LIBRARY.GTK);
	Linker.link(gtk_color_button_new_with_rgba, \"gtk_color_button_new_with_rgba\", LIBRARY.GTK);
	Linker.link(gtk_color_button_set_color, \"gtk_color_button_set_color\", LIBRARY.GTK);
	Linker.link(gtk_color_button_get_color, \"gtk_color_button_get_color\", LIBRARY.GTK);
	Linker.link(gtk_color_button_set_alpha, \"gtk_color_button_set_alpha\", LIBRARY.GTK);
	Linker.link(gtk_color_button_get_alpha, \"gtk_color_button_get_alpha\", LIBRARY.GTK);
	Linker.link(gtk_color_button_set_rgba, \"gtk_color_button_set_rgba\", LIBRARY.GTK);
	Linker.link(gtk_color_button_get_rgba, \"gtk_color_button_get_rgba\", LIBRARY.GTK);
	Linker.link(gtk_color_button_set_use_alpha, \"gtk_color_button_set_use_alpha\", LIBRARY.GTK);
	Linker.link(gtk_color_button_get_use_alpha, \"gtk_color_button_get_use_alpha\", LIBRARY.GTK);
	Linker.link(gtk_color_button_set_title, \"gtk_color_button_set_title\", LIBRARY.GTK);
	Linker.link(gtk_color_button_get_title, \"gtk_color_button_get_title\", LIBRARY.GTK);

	// gtk.ColorChooserWidget

	Linker.link(gtk_color_chooser_widget_new, \"gtk_color_chooser_widget_new\", LIBRARY.GTK);

	// gtk.ColorChooserDialog

	Linker.link(gtk_color_chooser_dialog_new, \"gtk_color_chooser_dialog_new\", LIBRARY.GTK);

	// gtk.ColorSelection

	Linker.link(gtk_color_selection_new, \"gtk_color_selection_new\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_has_opacity_control, \"gtk_color_selection_set_has_opacity_control\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_has_opacity_control, \"gtk_color_selection_get_has_opacity_control\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_has_palette, \"gtk_color_selection_set_has_palette\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_has_palette, \"gtk_color_selection_get_has_palette\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_current_alpha, \"gtk_color_selection_get_current_alpha\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_current_alpha, \"gtk_color_selection_set_current_alpha\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_current_color, \"gtk_color_selection_get_current_color\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_current_color, \"gtk_color_selection_set_current_color\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_previous_alpha, \"gtk_color_selection_get_previous_alpha\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_previous_alpha, \"gtk_color_selection_set_previous_alpha\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_previous_color, \"gtk_color_selection_get_previous_color\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_previous_color, \"gtk_color_selection_set_previous_color\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_current_rgba, \"gtk_color_selection_get_current_rgba\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_current_rgba, \"gtk_color_selection_set_current_rgba\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_get_previous_rgba, \"gtk_color_selection_get_previous_rgba\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_previous_rgba, \"gtk_color_selection_set_previous_rgba\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_is_adjusting, \"gtk_color_selection_is_adjusting\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_palette_from_string, \"gtk_color_selection_palette_from_string\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_palette_to_string, \"gtk_color_selection_palette_to_string\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_set_change_palette_with_screen_hook, \"gtk_color_selection_set_change_palette_with_screen_hook\", LIBRARY.GTK);

	// gtk.ColorSelectionDialog

	Linker.link(gtk_color_selection_dialog_new, \"gtk_color_selection_dialog_new\", LIBRARY.GTK);
	Linker.link(gtk_color_selection_dialog_get_color_selection, \"gtk_color_selection_dialog_get_color_selection\", LIBRARY.GTK);

	// gtk.HSV

	Linker.link(gtk_hsv_new, \"gtk_hsv_new\", LIBRARY.GTK);
	Linker.link(gtk_hsv_set_color, \"gtk_hsv_set_color\", LIBRARY.GTK);
	Linker.link(gtk_hsv_get_color, \"gtk_hsv_get_color\", LIBRARY.GTK);
	Linker.link(gtk_hsv_set_metrics, \"gtk_hsv_set_metrics\", LIBRARY.GTK);
	Linker.link(gtk_hsv_get_metrics, \"gtk_hsv_get_metrics\", LIBRARY.GTK);
	Linker.link(gtk_hsv_is_adjusting, \"gtk_hsv_is_adjusting\", LIBRARY.GTK);
	Linker.link(gtk_hsv_to_rgb, \"gtk_hsv_to_rgb\", LIBRARY.GTK);
	Linker.link(gtk_rgb_to_hsv, \"gtk_rgb_to_hsv\", LIBRARY.GTK);

	// gtk.FileChooserT


	// gtk.FileChooserT

	Linker.link(gtk_file_chooser_set_action, \"gtk_file_chooser_set_action\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_action, \"gtk_file_chooser_get_action\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_local_only, \"gtk_file_chooser_set_local_only\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_local_only, \"gtk_file_chooser_get_local_only\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_select_multiple, \"gtk_file_chooser_set_select_multiple\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_select_multiple, \"gtk_file_chooser_get_select_multiple\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_show_hidden, \"gtk_file_chooser_set_show_hidden\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_show_hidden, \"gtk_file_chooser_get_show_hidden\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_do_overwrite_confirmation, \"gtk_file_chooser_set_do_overwrite_confirmation\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_do_overwrite_confirmation, \"gtk_file_chooser_get_do_overwrite_confirmation\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_create_folders, \"gtk_file_chooser_set_create_folders\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_create_folders, \"gtk_file_chooser_get_create_folders\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_current_name, \"gtk_file_chooser_set_current_name\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_filename, \"gtk_file_chooser_get_filename\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_filename, \"gtk_file_chooser_set_filename\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_select_filename, \"gtk_file_chooser_select_filename\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_unselect_filename, \"gtk_file_chooser_unselect_filename\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_select_all, \"gtk_file_chooser_select_all\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_unselect_all, \"gtk_file_chooser_unselect_all\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_filenames, \"gtk_file_chooser_get_filenames\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_current_folder, \"gtk_file_chooser_set_current_folder\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_current_folder, \"gtk_file_chooser_get_current_folder\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_uri, \"gtk_file_chooser_get_uri\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_uri, \"gtk_file_chooser_set_uri\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_select_uri, \"gtk_file_chooser_select_uri\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_unselect_uri, \"gtk_file_chooser_unselect_uri\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_uris, \"gtk_file_chooser_get_uris\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_current_folder_uri, \"gtk_file_chooser_set_current_folder_uri\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_current_folder_uri, \"gtk_file_chooser_get_current_folder_uri\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_preview_widget, \"gtk_file_chooser_set_preview_widget\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_preview_widget, \"gtk_file_chooser_get_preview_widget\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_preview_widget_active, \"gtk_file_chooser_set_preview_widget_active\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_preview_widget_active, \"gtk_file_chooser_get_preview_widget_active\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_use_preview_label, \"gtk_file_chooser_set_use_preview_label\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_use_preview_label, \"gtk_file_chooser_get_use_preview_label\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_preview_filename, \"gtk_file_chooser_get_preview_filename\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_preview_uri, \"gtk_file_chooser_get_preview_uri\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_extra_widget, \"gtk_file_chooser_set_extra_widget\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_extra_widget, \"gtk_file_chooser_get_extra_widget\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_add_filter, \"gtk_file_chooser_add_filter\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_remove_filter, \"gtk_file_chooser_remove_filter\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_list_filters, \"gtk_file_chooser_list_filters\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_filter, \"gtk_file_chooser_set_filter\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_filter, \"gtk_file_chooser_get_filter\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_add_shortcut_folder, \"gtk_file_chooser_add_shortcut_folder\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_remove_shortcut_folder, \"gtk_file_chooser_remove_shortcut_folder\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_list_shortcut_folders, \"gtk_file_chooser_list_shortcut_folders\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_add_shortcut_folder_uri, \"gtk_file_chooser_add_shortcut_folder_uri\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_remove_shortcut_folder_uri, \"gtk_file_chooser_remove_shortcut_folder_uri\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_list_shortcut_folder_uris, \"gtk_file_chooser_list_shortcut_folder_uris\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_current_folder_file, \"gtk_file_chooser_get_current_folder_file\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_file, \"gtk_file_chooser_get_file\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_files, \"gtk_file_chooser_get_files\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_get_preview_file, \"gtk_file_chooser_get_preview_file\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_select_file, \"gtk_file_chooser_select_file\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_current_folder_file, \"gtk_file_chooser_set_current_folder_file\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_set_file, \"gtk_file_chooser_set_file\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_unselect_file, \"gtk_file_chooser_unselect_file\", LIBRARY.GTK);

	// gtk.FileChooserButton

	Linker.link(gtk_file_chooser_button_new, \"gtk_file_chooser_button_new\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_new_with_dialog, \"gtk_file_chooser_button_new_with_dialog\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_get_title, \"gtk_file_chooser_button_get_title\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_set_title, \"gtk_file_chooser_button_set_title\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_get_width_chars, \"gtk_file_chooser_button_get_width_chars\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_set_width_chars, \"gtk_file_chooser_button_set_width_chars\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_get_focus_on_click, \"gtk_file_chooser_button_get_focus_on_click\", LIBRARY.GTK);
	Linker.link(gtk_file_chooser_button_set_focus_on_click, \"gtk_file_chooser_button_set_focus_on_click\", LIBRARY.GTK);

	// gtk.FileChooserDialog

	Linker.link(gtk_file_chooser_dialog_new, \"gtk_file_chooser_dialog_new\", LIBRARY.GTK);

	// gtk.FileChooserWidget

	Linker.link(gtk_file_chooser_widget_new, \"gtk_file_chooser_widget_new\", LIBRARY.GTK);

	// gtk.FileFilter

	Linker.link(gtk_file_filter_new, \"gtk_file_filter_new\", LIBRARY.GTK);
	Linker.link(gtk_file_filter_set_name, \"gtk_file_filter_set_name\", LIBRARY.GTK);
	Linker.link(gtk_file_filter_get_name, \"gtk_file_filter_get_name\", LIBRARY.GTK);
	Linker.link(gtk_file_filter_add_mime_type, \"gtk_file_filter_add_mime_type\", LIBRARY.GTK);
	Linker.link(gtk_file_filter_add_pattern, \"gtk_file_filter_add_pattern\", LIBRARY.GTK);
	Linker.link(gtk_file_filter_add_pixbuf_formats, \"gtk_file_filter_add_pixbuf_formats\", LIBRARY.GTK);
	Linker.link(gtk_file_filter_add_custom, \"gtk_file_filter_add_custom\", LIBRARY.GTK);
	Linker.link(gtk_file_filter_get_needed, \"gtk_file_filter_get_needed\", LIBRARY.GTK);
	Linker.link(gtk_file_filter_filter, \"gtk_file_filter_filter\", LIBRARY.GTK);

	// gtk.FontChooserT


	// gtk.FontChooserT

	Linker.link(gtk_font_chooser_get_font_family, \"gtk_font_chooser_get_font_family\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_get_font_face, \"gtk_font_chooser_get_font_face\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_get_font_size, \"gtk_font_chooser_get_font_size\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_get_font, \"gtk_font_chooser_get_font\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_set_font, \"gtk_font_chooser_set_font\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_get_font_desc, \"gtk_font_chooser_get_font_desc\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_set_font_desc, \"gtk_font_chooser_set_font_desc\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_get_preview_text, \"gtk_font_chooser_get_preview_text\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_set_preview_text, \"gtk_font_chooser_set_preview_text\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_get_show_preview_entry, \"gtk_font_chooser_get_show_preview_entry\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_set_show_preview_entry, \"gtk_font_chooser_set_show_preview_entry\", LIBRARY.GTK);
	Linker.link(gtk_font_chooser_set_filter_func, \"gtk_font_chooser_set_filter_func\", LIBRARY.GTK);

	// gtk.FontButton

	Linker.link(gtk_font_button_new, \"gtk_font_button_new\", LIBRARY.GTK);
	Linker.link(gtk_font_button_new_with_font, \"gtk_font_button_new_with_font\", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_font_name, \"gtk_font_button_set_font_name\", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_font_name, \"gtk_font_button_get_font_name\", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_show_style, \"gtk_font_button_set_show_style\", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_show_style, \"gtk_font_button_get_show_style\", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_show_size, \"gtk_font_button_set_show_size\", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_show_size, \"gtk_font_button_get_show_size\", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_use_font, \"gtk_font_button_set_use_font\", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_use_font, \"gtk_font_button_get_use_font\", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_use_size, \"gtk_font_button_set_use_size\", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_use_size, \"gtk_font_button_get_use_size\", LIBRARY.GTK);
	Linker.link(gtk_font_button_set_title, \"gtk_font_button_set_title\", LIBRARY.GTK);
	Linker.link(gtk_font_button_get_title, \"gtk_font_button_get_title\", LIBRARY.GTK);

	// gtk.FontChooserWidget

	Linker.link(gtk_font_chooser_widget_new, \"gtk_font_chooser_widget_new\", LIBRARY.GTK);

	// gtk.FontChooserDialog

	Linker.link(gtk_font_chooser_dialog_new, \"gtk_font_chooser_dialog_new\", LIBRARY.GTK);

	// gtk.FontSelection

	Linker.link(gtk_font_selection_new, \"gtk_font_selection_new\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_font_name, \"gtk_font_selection_get_font_name\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_set_font_name, \"gtk_font_selection_set_font_name\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_preview_text, \"gtk_font_selection_get_preview_text\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_set_preview_text, \"gtk_font_selection_set_preview_text\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_face, \"gtk_font_selection_get_face\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_face_list, \"gtk_font_selection_get_face_list\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_family, \"gtk_font_selection_get_family\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_size, \"gtk_font_selection_get_size\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_family_list, \"gtk_font_selection_get_family_list\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_preview_entry, \"gtk_font_selection_get_preview_entry\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_size_entry, \"gtk_font_selection_get_size_entry\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_get_size_list, \"gtk_font_selection_get_size_list\", LIBRARY.GTK);

	// gtk.FontSelectionDialog

	Linker.link(gtk_font_selection_dialog_new, \"gtk_font_selection_dialog_new\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_font_name, \"gtk_font_selection_dialog_get_font_name\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_set_font_name, \"gtk_font_selection_dialog_set_font_name\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_preview_text, \"gtk_font_selection_dialog_get_preview_text\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_set_preview_text, \"gtk_font_selection_dialog_set_preview_text\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_cancel_button, \"gtk_font_selection_dialog_get_cancel_button\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_ok_button, \"gtk_font_selection_dialog_get_ok_button\", LIBRARY.GTK);
	Linker.link(gtk_font_selection_dialog_get_font_selection, \"gtk_font_selection_dialog_get_font_selection\", LIBRARY.GTK);

	// gtk.Grid

	Linker.link(gtk_grid_new, \"gtk_grid_new\", LIBRARY.GTK);
	Linker.link(gtk_grid_attach, \"gtk_grid_attach\", LIBRARY.GTK);
	Linker.link(gtk_grid_attach_next_to, \"gtk_grid_attach_next_to\", LIBRARY.GTK);
	Linker.link(gtk_grid_get_child_at, \"gtk_grid_get_child_at\", LIBRARY.GTK);
	Linker.link(gtk_grid_insert_row, \"gtk_grid_insert_row\", LIBRARY.GTK);
	Linker.link(gtk_grid_insert_column, \"gtk_grid_insert_column\", LIBRARY.GTK);
	Linker.link(gtk_grid_insert_next_to, \"gtk_grid_insert_next_to\", LIBRARY.GTK);
	Linker.link(gtk_grid_set_row_homogeneous, \"gtk_grid_set_row_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_grid_get_row_homogeneous, \"gtk_grid_get_row_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_grid_set_row_spacing, \"gtk_grid_set_row_spacing\", LIBRARY.GTK);
	Linker.link(gtk_grid_get_row_spacing, \"gtk_grid_get_row_spacing\", LIBRARY.GTK);
	Linker.link(gtk_grid_set_column_homogeneous, \"gtk_grid_set_column_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_grid_get_column_homogeneous, \"gtk_grid_get_column_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_grid_set_column_spacing, \"gtk_grid_set_column_spacing\", LIBRARY.GTK);
	Linker.link(gtk_grid_get_column_spacing, \"gtk_grid_get_column_spacing\", LIBRARY.GTK);

	// gtk.Alignment

	Linker.link(gtk_alignment_new, \"gtk_alignment_new\", LIBRARY.GTK);
	Linker.link(gtk_alignment_set, \"gtk_alignment_set\", LIBRARY.GTK);
	Linker.link(gtk_alignment_get_padding, \"gtk_alignment_get_padding\", LIBRARY.GTK);
	Linker.link(gtk_alignment_set_padding, \"gtk_alignment_set_padding\", LIBRARY.GTK);

	// gtk.AspectFrame

	Linker.link(gtk_aspect_frame_new, \"gtk_aspect_frame_new\", LIBRARY.GTK);
	Linker.link(gtk_aspect_frame_set, \"gtk_aspect_frame_set\", LIBRARY.GTK);

	// gtk.Box

	Linker.link(gtk_box_new, \"gtk_box_new\", LIBRARY.GTK);
	Linker.link(gtk_box_pack_start, \"gtk_box_pack_start\", LIBRARY.GTK);
	Linker.link(gtk_box_pack_end, \"gtk_box_pack_end\", LIBRARY.GTK);
	Linker.link(gtk_box_get_homogeneous, \"gtk_box_get_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_box_set_homogeneous, \"gtk_box_set_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_box_get_spacing, \"gtk_box_get_spacing\", LIBRARY.GTK);
	Linker.link(gtk_box_set_spacing, \"gtk_box_set_spacing\", LIBRARY.GTK);
	Linker.link(gtk_box_reorder_child, \"gtk_box_reorder_child\", LIBRARY.GTK);
	Linker.link(gtk_box_query_child_packing, \"gtk_box_query_child_packing\", LIBRARY.GTK);
	Linker.link(gtk_box_set_child_packing, \"gtk_box_set_child_packing\", LIBRARY.GTK);

	// gtk.HBox

	Linker.link(gtk_hbox_new, \"gtk_hbox_new\", LIBRARY.GTK);

	// gtk.VBox

	Linker.link(gtk_vbox_new, \"gtk_vbox_new\", LIBRARY.GTK);

	// gtk.ButtonBox

	Linker.link(gtk_button_box_new, \"gtk_button_box_new\", LIBRARY.GTK);
	Linker.link(gtk_button_box_get_layout, \"gtk_button_box_get_layout\", LIBRARY.GTK);
	Linker.link(gtk_button_box_get_child_secondary, \"gtk_button_box_get_child_secondary\", LIBRARY.GTK);
	Linker.link(gtk_button_box_get_child_non_homogeneous, \"gtk_button_box_get_child_non_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_button_box_set_layout, \"gtk_button_box_set_layout\", LIBRARY.GTK);
	Linker.link(gtk_button_box_set_child_secondary, \"gtk_button_box_set_child_secondary\", LIBRARY.GTK);
	Linker.link(gtk_button_box_set_child_non_homogeneous, \"gtk_button_box_set_child_non_homogeneous\", LIBRARY.GTK);

	// gtk.HButtonBox

	Linker.link(gtk_hbutton_box_new, \"gtk_hbutton_box_new\", LIBRARY.GTK);

	// gtk.VButtonBox

	Linker.link(gtk_vbutton_box_new, \"gtk_vbutton_box_new\", LIBRARY.GTK);

	// gtk.Fixed

	Linker.link(gtk_fixed_new, \"gtk_fixed_new\", LIBRARY.GTK);
	Linker.link(gtk_fixed_put, \"gtk_fixed_put\", LIBRARY.GTK);
	Linker.link(gtk_fixed_move, \"gtk_fixed_move\", LIBRARY.GTK);

	// gtk.Paned

	Linker.link(gtk_paned_new, \"gtk_paned_new\", LIBRARY.GTK);
	Linker.link(gtk_paned_add1, \"gtk_paned_add1\", LIBRARY.GTK);
	Linker.link(gtk_paned_add2, \"gtk_paned_add2\", LIBRARY.GTK);
	Linker.link(gtk_paned_pack1, \"gtk_paned_pack1\", LIBRARY.GTK);
	Linker.link(gtk_paned_pack2, \"gtk_paned_pack2\", LIBRARY.GTK);
	Linker.link(gtk_paned_get_child1, \"gtk_paned_get_child1\", LIBRARY.GTK);
	Linker.link(gtk_paned_get_child2, \"gtk_paned_get_child2\", LIBRARY.GTK);
	Linker.link(gtk_paned_set_position, \"gtk_paned_set_position\", LIBRARY.GTK);
	Linker.link(gtk_paned_get_position, \"gtk_paned_get_position\", LIBRARY.GTK);
	Linker.link(gtk_paned_get_handle_window, \"gtk_paned_get_handle_window\", LIBRARY.GTK);

	// gtk.HPaned

	Linker.link(gtk_hpaned_new, \"gtk_hpaned_new\", LIBRARY.GTK);

	// gtk.VPaned

	Linker.link(gtk_vpaned_new, \"gtk_vpaned_new\", LIBRARY.GTK);

	// gtk.Layout

	Linker.link(gtk_layout_new, \"gtk_layout_new\", LIBRARY.GTK);
	Linker.link(gtk_layout_put, \"gtk_layout_put\", LIBRARY.GTK);
	Linker.link(gtk_layout_move, \"gtk_layout_move\", LIBRARY.GTK);
	Linker.link(gtk_layout_set_size, \"gtk_layout_set_size\", LIBRARY.GTK);
	Linker.link(gtk_layout_get_size, \"gtk_layout_get_size\", LIBRARY.GTK);
	Linker.link(gtk_layout_get_hadjustment, \"gtk_layout_get_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_layout_get_vadjustment, \"gtk_layout_get_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_layout_set_hadjustment, \"gtk_layout_set_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_layout_set_vadjustment, \"gtk_layout_set_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_layout_get_bin_window, \"gtk_layout_get_bin_window\", LIBRARY.GTK);

	// gtk.Notebook

	Linker.link(gtk_notebook_new, \"gtk_notebook_new\", LIBRARY.GTK);
	Linker.link(gtk_notebook_append_page, \"gtk_notebook_append_page\", LIBRARY.GTK);
	Linker.link(gtk_notebook_append_page_menu, \"gtk_notebook_append_page_menu\", LIBRARY.GTK);
	Linker.link(gtk_notebook_prepend_page, \"gtk_notebook_prepend_page\", LIBRARY.GTK);
	Linker.link(gtk_notebook_prepend_page_menu, \"gtk_notebook_prepend_page_menu\", LIBRARY.GTK);
	Linker.link(gtk_notebook_insert_page, \"gtk_notebook_insert_page\", LIBRARY.GTK);
	Linker.link(gtk_notebook_insert_page_menu, \"gtk_notebook_insert_page_menu\", LIBRARY.GTK);
	Linker.link(gtk_notebook_remove_page, \"gtk_notebook_remove_page\", LIBRARY.GTK);
	Linker.link(gtk_notebook_page_num, \"gtk_notebook_page_num\", LIBRARY.GTK);
	Linker.link(gtk_notebook_next_page, \"gtk_notebook_next_page\", LIBRARY.GTK);
	Linker.link(gtk_notebook_prev_page, \"gtk_notebook_prev_page\", LIBRARY.GTK);
	Linker.link(gtk_notebook_reorder_child, \"gtk_notebook_reorder_child\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_pos, \"gtk_notebook_set_tab_pos\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_show_tabs, \"gtk_notebook_set_show_tabs\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_show_border, \"gtk_notebook_set_show_border\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_scrollable, \"gtk_notebook_set_scrollable\", LIBRARY.GTK);
	Linker.link(gtk_notebook_popup_enable, \"gtk_notebook_popup_enable\", LIBRARY.GTK);
	Linker.link(gtk_notebook_popup_disable, \"gtk_notebook_popup_disable\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_current_page, \"gtk_notebook_get_current_page\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_menu_label, \"gtk_notebook_get_menu_label\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_nth_page, \"gtk_notebook_get_nth_page\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_n_pages, \"gtk_notebook_get_n_pages\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_label, \"gtk_notebook_get_tab_label\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_menu_label, \"gtk_notebook_set_menu_label\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_menu_label_text, \"gtk_notebook_set_menu_label_text\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_label, \"gtk_notebook_set_tab_label\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_label_text, \"gtk_notebook_set_tab_label_text\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_reorderable, \"gtk_notebook_set_tab_reorderable\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_tab_detachable, \"gtk_notebook_set_tab_detachable\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_menu_label_text, \"gtk_notebook_get_menu_label_text\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_scrollable, \"gtk_notebook_get_scrollable\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_show_border, \"gtk_notebook_get_show_border\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_show_tabs, \"gtk_notebook_get_show_tabs\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_label_text, \"gtk_notebook_get_tab_label_text\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_pos, \"gtk_notebook_get_tab_pos\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_reorderable, \"gtk_notebook_get_tab_reorderable\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_detachable, \"gtk_notebook_get_tab_detachable\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_hborder, \"gtk_notebook_get_tab_hborder\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_tab_vborder, \"gtk_notebook_get_tab_vborder\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_current_page, \"gtk_notebook_set_current_page\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_group_name, \"gtk_notebook_set_group_name\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_group_name, \"gtk_notebook_get_group_name\", LIBRARY.GTK);
	Linker.link(gtk_notebook_set_action_widget, \"gtk_notebook_set_action_widget\", LIBRARY.GTK);
	Linker.link(gtk_notebook_get_action_widget, \"gtk_notebook_get_action_widget\", LIBRARY.GTK);

	// gtk.Table

	Linker.link(gtk_table_new, \"gtk_table_new\", LIBRARY.GTK);
	Linker.link(gtk_table_resize, \"gtk_table_resize\", LIBRARY.GTK);
	Linker.link(gtk_table_get_size, \"gtk_table_get_size\", LIBRARY.GTK);
	Linker.link(gtk_table_attach, \"gtk_table_attach\", LIBRARY.GTK);
	Linker.link(gtk_table_attach_defaults, \"gtk_table_attach_defaults\", LIBRARY.GTK);
	Linker.link(gtk_table_set_row_spacing, \"gtk_table_set_row_spacing\", LIBRARY.GTK);
	Linker.link(gtk_table_set_col_spacing, \"gtk_table_set_col_spacing\", LIBRARY.GTK);
	Linker.link(gtk_table_set_row_spacings, \"gtk_table_set_row_spacings\", LIBRARY.GTK);
	Linker.link(gtk_table_set_col_spacings, \"gtk_table_set_col_spacings\", LIBRARY.GTK);
	Linker.link(gtk_table_set_homogeneous, \"gtk_table_set_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_table_get_default_row_spacing, \"gtk_table_get_default_row_spacing\", LIBRARY.GTK);
	Linker.link(gtk_table_get_homogeneous, \"gtk_table_get_homogeneous\", LIBRARY.GTK);
	Linker.link(gtk_table_get_row_spacing, \"gtk_table_get_row_spacing\", LIBRARY.GTK);
	Linker.link(gtk_table_get_col_spacing, \"gtk_table_get_col_spacing\", LIBRARY.GTK);
	Linker.link(gtk_table_get_default_col_spacing, \"gtk_table_get_default_col_spacing\", LIBRARY.GTK);

	// gtk.Expander

	Linker.link(gtk_expander_new, \"gtk_expander_new\", LIBRARY.GTK);
	Linker.link(gtk_expander_new_with_mnemonic, \"gtk_expander_new_with_mnemonic\", LIBRARY.GTK);
	Linker.link(gtk_expander_set_expanded, \"gtk_expander_set_expanded\", LIBRARY.GTK);
	Linker.link(gtk_expander_get_expanded, \"gtk_expander_get_expanded\", LIBRARY.GTK);
	Linker.link(gtk_expander_set_spacing, \"gtk_expander_set_spacing\", LIBRARY.GTK);
	Linker.link(gtk_expander_get_spacing, \"gtk_expander_get_spacing\", LIBRARY.GTK);
	Linker.link(gtk_expander_set_label, \"gtk_expander_set_label\", LIBRARY.GTK);
	Linker.link(gtk_expander_get_label, \"gtk_expander_get_label\", LIBRARY.GTK);
	Linker.link(gtk_expander_set_use_underline, \"gtk_expander_set_use_underline\", LIBRARY.GTK);
	Linker.link(gtk_expander_get_use_underline, \"gtk_expander_get_use_underline\", LIBRARY.GTK);
	Linker.link(gtk_expander_set_use_markup, \"gtk_expander_set_use_markup\", LIBRARY.GTK);
	Linker.link(gtk_expander_get_use_markup, \"gtk_expander_get_use_markup\", LIBRARY.GTK);
	Linker.link(gtk_expander_set_label_widget, \"gtk_expander_set_label_widget\", LIBRARY.GTK);
	Linker.link(gtk_expander_get_label_widget, \"gtk_expander_get_label_widget\", LIBRARY.GTK);
	Linker.link(gtk_expander_set_label_fill, \"gtk_expander_set_label_fill\", LIBRARY.GTK);
	Linker.link(gtk_expander_get_label_fill, \"gtk_expander_get_label_fill\", LIBRARY.GTK);
	Linker.link(gtk_expander_set_resize_toplevel, \"gtk_expander_set_resize_toplevel\", LIBRARY.GTK);
	Linker.link(gtk_expander_get_resize_toplevel, \"gtk_expander_get_resize_toplevel\", LIBRARY.GTK);

	// gtk.Overlay

	Linker.link(gtk_overlay_new, \"gtk_overlay_new\", LIBRARY.GTK);
	Linker.link(gtk_overlay_add_overlay, \"gtk_overlay_add_overlay\", LIBRARY.GTK);

	// gtk.OrientableT


	// gtk.OrientableT

	Linker.link(gtk_orientable_get_orientation, \"gtk_orientable_get_orientation\", LIBRARY.GTK);
	Linker.link(gtk_orientable_set_orientation, \"gtk_orientable_set_orientation\", LIBRARY.GTK);

	// gtk.Frame

	Linker.link(gtk_frame_new, \"gtk_frame_new\", LIBRARY.GTK);
	Linker.link(gtk_frame_set_label, \"gtk_frame_set_label\", LIBRARY.GTK);
	Linker.link(gtk_frame_set_label_widget, \"gtk_frame_set_label_widget\", LIBRARY.GTK);
	Linker.link(gtk_frame_set_label_align, \"gtk_frame_set_label_align\", LIBRARY.GTK);
	Linker.link(gtk_frame_set_shadow_type, \"gtk_frame_set_shadow_type\", LIBRARY.GTK);
	Linker.link(gtk_frame_get_label, \"gtk_frame_get_label\", LIBRARY.GTK);
	Linker.link(gtk_frame_get_label_align, \"gtk_frame_get_label_align\", LIBRARY.GTK);
	Linker.link(gtk_frame_get_label_widget, \"gtk_frame_get_label_widget\", LIBRARY.GTK);
	Linker.link(gtk_frame_get_shadow_type, \"gtk_frame_get_shadow_type\", LIBRARY.GTK);

	// gtk.Separator

	Linker.link(gtk_separator_new, \"gtk_separator_new\", LIBRARY.GTK);

	// gtk.HSeparator

	Linker.link(gtk_hseparator_new, \"gtk_hseparator_new\", LIBRARY.GTK);

	// gtk.VSeparator

	Linker.link(gtk_vseparator_new, \"gtk_vseparator_new\", LIBRARY.GTK);

	// gtk.Scrollbar

	Linker.link(gtk_scrollbar_new, \"gtk_scrollbar_new\", LIBRARY.GTK);

	// gtk.HScrollbar

	Linker.link(gtk_hscrollbar_new, \"gtk_hscrollbar_new\", LIBRARY.GTK);

	// gtk.VScrollbar

	Linker.link(gtk_vscrollbar_new, \"gtk_vscrollbar_new\", LIBRARY.GTK);

	// gtk.ScrolledWindow

	Linker.link(gtk_scrolled_window_new, \"gtk_scrolled_window_new\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_hadjustment, \"gtk_scrolled_window_get_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_vadjustment, \"gtk_scrolled_window_get_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_hscrollbar, \"gtk_scrolled_window_get_hscrollbar\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_vscrollbar, \"gtk_scrolled_window_get_vscrollbar\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_policy, \"gtk_scrolled_window_set_policy\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_add_with_viewport, \"gtk_scrolled_window_add_with_viewport\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_placement, \"gtk_scrolled_window_set_placement\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_unset_placement, \"gtk_scrolled_window_unset_placement\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_shadow_type, \"gtk_scrolled_window_set_shadow_type\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_hadjustment, \"gtk_scrolled_window_set_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_vadjustment, \"gtk_scrolled_window_set_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_placement, \"gtk_scrolled_window_get_placement\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_policy, \"gtk_scrolled_window_get_policy\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_shadow_type, \"gtk_scrolled_window_get_shadow_type\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_min_content_width, \"gtk_scrolled_window_get_min_content_width\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_min_content_width, \"gtk_scrolled_window_set_min_content_width\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_min_content_height, \"gtk_scrolled_window_get_min_content_height\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_min_content_height, \"gtk_scrolled_window_set_min_content_height\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_kinetic_scrolling, \"gtk_scrolled_window_set_kinetic_scrolling\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_kinetic_scrolling, \"gtk_scrolled_window_get_kinetic_scrolling\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_set_capture_button_press, \"gtk_scrolled_window_set_capture_button_press\", LIBRARY.GTK);
	Linker.link(gtk_scrolled_window_get_capture_button_press, \"gtk_scrolled_window_get_capture_button_press\", LIBRARY.GTK);

	// gtk.ScrollableT


	// gtk.ScrollableT

	Linker.link(gtk_scrollable_get_hadjustment, \"gtk_scrollable_get_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_scrollable_set_hadjustment, \"gtk_scrollable_set_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_scrollable_get_vadjustment, \"gtk_scrollable_get_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_scrollable_set_vadjustment, \"gtk_scrollable_set_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_scrollable_get_hscroll_policy, \"gtk_scrollable_get_hscroll_policy\", LIBRARY.GTK);
	Linker.link(gtk_scrollable_set_hscroll_policy, \"gtk_scrollable_set_hscroll_policy\", LIBRARY.GTK);
	Linker.link(gtk_scrollable_get_vscroll_policy, \"gtk_scrollable_get_vscroll_policy\", LIBRARY.GTK);
	Linker.link(gtk_scrollable_set_vscroll_policy, \"gtk_scrollable_set_vscroll_policy\", LIBRARY.GTK);

	// gtk.PrintOperation

	Linker.link(gtk_print_operation_new, \"gtk_print_operation_new\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_allow_async, \"gtk_print_operation_set_allow_async\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_error, \"gtk_print_operation_get_error\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_default_page_setup, \"gtk_print_operation_set_default_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_default_page_setup, \"gtk_print_operation_get_default_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_print_settings, \"gtk_print_operation_set_print_settings\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_print_settings, \"gtk_print_operation_get_print_settings\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_job_name, \"gtk_print_operation_set_job_name\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_n_pages, \"gtk_print_operation_set_n_pages\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_n_pages_to_print, \"gtk_print_operation_get_n_pages_to_print\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_current_page, \"gtk_print_operation_set_current_page\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_use_full_page, \"gtk_print_operation_set_use_full_page\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_unit, \"gtk_print_operation_set_unit\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_export_filename, \"gtk_print_operation_set_export_filename\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_show_progress, \"gtk_print_operation_set_show_progress\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_track_print_status, \"gtk_print_operation_set_track_print_status\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_custom_tab_label, \"gtk_print_operation_set_custom_tab_label\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_run, \"gtk_print_operation_run\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_cancel, \"gtk_print_operation_cancel\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_draw_page_finish, \"gtk_print_operation_draw_page_finish\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_defer_drawing, \"gtk_print_operation_set_defer_drawing\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_status, \"gtk_print_operation_get_status\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_status_string, \"gtk_print_operation_get_status_string\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_is_finished, \"gtk_print_operation_is_finished\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_support_selection, \"gtk_print_operation_set_support_selection\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_support_selection, \"gtk_print_operation_get_support_selection\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_has_selection, \"gtk_print_operation_set_has_selection\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_has_selection, \"gtk_print_operation_get_has_selection\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_set_embed_page_setup, \"gtk_print_operation_set_embed_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_get_embed_page_setup, \"gtk_print_operation_get_embed_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_print_run_page_setup_dialog, \"gtk_print_run_page_setup_dialog\", LIBRARY.GTK);
	Linker.link(gtk_print_run_page_setup_dialog_async, \"gtk_print_run_page_setup_dialog_async\", LIBRARY.GTK);

	// gtk.PrintOperationPreviewT


	// gtk.PrintOperationPreviewT

	Linker.link(gtk_print_operation_preview_end_preview, \"gtk_print_operation_preview_end_preview\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_preview_is_selected, \"gtk_print_operation_preview_is_selected\", LIBRARY.GTK);
	Linker.link(gtk_print_operation_preview_render_page, \"gtk_print_operation_preview_render_page\", LIBRARY.GTK);

	// gtk.PrintContext

	Linker.link(gtk_print_context_get_cairo_context, \"gtk_print_context_get_cairo_context\", LIBRARY.GTK);
	Linker.link(gtk_print_context_set_cairo_context, \"gtk_print_context_set_cairo_context\", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_page_setup, \"gtk_print_context_get_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_width, \"gtk_print_context_get_width\", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_height, \"gtk_print_context_get_height\", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_dpi_x, \"gtk_print_context_get_dpi_x\", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_dpi_y, \"gtk_print_context_get_dpi_y\", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_pango_fontmap, \"gtk_print_context_get_pango_fontmap\", LIBRARY.GTK);
	Linker.link(gtk_print_context_create_pango_context, \"gtk_print_context_create_pango_context\", LIBRARY.GTK);
	Linker.link(gtk_print_context_create_pango_layout, \"gtk_print_context_create_pango_layout\", LIBRARY.GTK);
	Linker.link(gtk_print_context_get_hard_margins, \"gtk_print_context_get_hard_margins\", LIBRARY.GTK);

	// gtk.PrintSettings

	Linker.link(gtk_print_settings_new, \"gtk_print_settings_new\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_copy, \"gtk_print_settings_copy\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_has_key, \"gtk_print_settings_has_key\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get, \"gtk_print_settings_get\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set, \"gtk_print_settings_set\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_unset, \"gtk_print_settings_unset\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_foreach, \"gtk_print_settings_foreach\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_bool, \"gtk_print_settings_get_bool\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_bool, \"gtk_print_settings_set_bool\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_double, \"gtk_print_settings_get_double\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_double_with_default, \"gtk_print_settings_get_double_with_default\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_double, \"gtk_print_settings_set_double\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_length, \"gtk_print_settings_get_length\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_length, \"gtk_print_settings_set_length\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_int, \"gtk_print_settings_get_int\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_int_with_default, \"gtk_print_settings_get_int_with_default\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_int, \"gtk_print_settings_set_int\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_printer, \"gtk_print_settings_get_printer\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_printer, \"gtk_print_settings_set_printer\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_orientation, \"gtk_print_settings_get_orientation\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_orientation, \"gtk_print_settings_set_orientation\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_paper_size, \"gtk_print_settings_get_paper_size\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_paper_size, \"gtk_print_settings_set_paper_size\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_paper_width, \"gtk_print_settings_get_paper_width\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_paper_width, \"gtk_print_settings_set_paper_width\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_paper_height, \"gtk_print_settings_get_paper_height\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_paper_height, \"gtk_print_settings_set_paper_height\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_use_color, \"gtk_print_settings_get_use_color\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_use_color, \"gtk_print_settings_set_use_color\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_collate, \"gtk_print_settings_get_collate\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_collate, \"gtk_print_settings_set_collate\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_reverse, \"gtk_print_settings_get_reverse\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_reverse, \"gtk_print_settings_set_reverse\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_duplex, \"gtk_print_settings_get_duplex\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_duplex, \"gtk_print_settings_set_duplex\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_quality, \"gtk_print_settings_get_quality\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_quality, \"gtk_print_settings_set_quality\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_n_copies, \"gtk_print_settings_get_n_copies\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_n_copies, \"gtk_print_settings_set_n_copies\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_number_up, \"gtk_print_settings_get_number_up\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_number_up, \"gtk_print_settings_set_number_up\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_number_up_layout, \"gtk_print_settings_get_number_up_layout\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_number_up_layout, \"gtk_print_settings_set_number_up_layout\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_resolution, \"gtk_print_settings_get_resolution\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_resolution, \"gtk_print_settings_set_resolution\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_resolution_xy, \"gtk_print_settings_set_resolution_xy\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_resolution_x, \"gtk_print_settings_get_resolution_x\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_resolution_y, \"gtk_print_settings_get_resolution_y\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_printer_lpi, \"gtk_print_settings_get_printer_lpi\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_printer_lpi, \"gtk_print_settings_set_printer_lpi\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_scale, \"gtk_print_settings_get_scale\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_scale, \"gtk_print_settings_set_scale\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_print_pages, \"gtk_print_settings_get_print_pages\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_print_pages, \"gtk_print_settings_set_print_pages\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_page_ranges, \"gtk_print_settings_get_page_ranges\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_page_ranges, \"gtk_print_settings_set_page_ranges\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_page_set, \"gtk_print_settings_get_page_set\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_page_set, \"gtk_print_settings_set_page_set\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_default_source, \"gtk_print_settings_get_default_source\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_default_source, \"gtk_print_settings_set_default_source\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_media_type, \"gtk_print_settings_get_media_type\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_media_type, \"gtk_print_settings_set_media_type\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_dither, \"gtk_print_settings_get_dither\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_dither, \"gtk_print_settings_set_dither\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_finishings, \"gtk_print_settings_get_finishings\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_finishings, \"gtk_print_settings_set_finishings\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_get_output_bin, \"gtk_print_settings_get_output_bin\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_set_output_bin, \"gtk_print_settings_set_output_bin\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_new_from_file, \"gtk_print_settings_new_from_file\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_new_from_key_file, \"gtk_print_settings_new_from_key_file\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_load_file, \"gtk_print_settings_load_file\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_load_key_file, \"gtk_print_settings_load_key_file\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_to_file, \"gtk_print_settings_to_file\", LIBRARY.GTK);
	Linker.link(gtk_print_settings_to_key_file, \"gtk_print_settings_to_key_file\", LIBRARY.GTK);

	// gtk.PageSetup

	Linker.link(gtk_page_setup_new, \"gtk_page_setup_new\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_copy, \"gtk_page_setup_copy\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_orientation, \"gtk_page_setup_get_orientation\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_orientation, \"gtk_page_setup_set_orientation\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_paper_size, \"gtk_page_setup_get_paper_size\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_paper_size, \"gtk_page_setup_set_paper_size\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_top_margin, \"gtk_page_setup_get_top_margin\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_top_margin, \"gtk_page_setup_set_top_margin\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_bottom_margin, \"gtk_page_setup_get_bottom_margin\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_bottom_margin, \"gtk_page_setup_set_bottom_margin\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_left_margin, \"gtk_page_setup_get_left_margin\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_left_margin, \"gtk_page_setup_set_left_margin\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_right_margin, \"gtk_page_setup_get_right_margin\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_right_margin, \"gtk_page_setup_set_right_margin\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_set_paper_size_and_default_margins, \"gtk_page_setup_set_paper_size_and_default_margins\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_paper_width, \"gtk_page_setup_get_paper_width\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_paper_height, \"gtk_page_setup_get_paper_height\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_page_width, \"gtk_page_setup_get_page_width\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_get_page_height, \"gtk_page_setup_get_page_height\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_new_from_file, \"gtk_page_setup_new_from_file\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_new_from_key_file, \"gtk_page_setup_new_from_key_file\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_load_file, \"gtk_page_setup_load_file\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_load_key_file, \"gtk_page_setup_load_key_file\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_to_file, \"gtk_page_setup_to_file\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_to_key_file, \"gtk_page_setup_to_key_file\", LIBRARY.GTK);

	// gtk.PaperSize

	Linker.link(gtk_paper_size_new, \"gtk_paper_size_new\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_new_from_ppd, \"gtk_paper_size_new_from_ppd\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_new_custom, \"gtk_paper_size_new_custom\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_copy, \"gtk_paper_size_copy\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_free, \"gtk_paper_size_free\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_is_equal, \"gtk_paper_size_is_equal\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_paper_sizes, \"gtk_paper_size_get_paper_sizes\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_name, \"gtk_paper_size_get_name\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_display_name, \"gtk_paper_size_get_display_name\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_ppd_name, \"gtk_paper_size_get_ppd_name\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_width, \"gtk_paper_size_get_width\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_height, \"gtk_paper_size_get_height\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_is_custom, \"gtk_paper_size_is_custom\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_set_size, \"gtk_paper_size_set_size\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_default_top_margin, \"gtk_paper_size_get_default_top_margin\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_default_bottom_margin, \"gtk_paper_size_get_default_bottom_margin\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_default_left_margin, \"gtk_paper_size_get_default_left_margin\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_default_right_margin, \"gtk_paper_size_get_default_right_margin\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_get_default, \"gtk_paper_size_get_default\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_new_from_key_file, \"gtk_paper_size_new_from_key_file\", LIBRARY.GTK);
	Linker.link(gtk_paper_size_to_key_file, \"gtk_paper_size_to_key_file\", LIBRARY.GTK);

	// gtk.Printer

	Linker.link(gtk_printer_new, \"gtk_printer_new\", LIBRARY.GTK);
	Linker.link(gtk_printer_get_backend, \"gtk_printer_get_backend\", LIBRARY.GTK);
	Linker.link(gtk_printer_get_name, \"gtk_printer_get_name\", LIBRARY.GTK);
	Linker.link(gtk_printer_get_state_message, \"gtk_printer_get_state_message\", LIBRARY.GTK);
	Linker.link(gtk_printer_get_description, \"gtk_printer_get_description\", LIBRARY.GTK);
	Linker.link(gtk_printer_get_location, \"gtk_printer_get_location\", LIBRARY.GTK);
	Linker.link(gtk_printer_get_icon_name, \"gtk_printer_get_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_printer_get_job_count, \"gtk_printer_get_job_count\", LIBRARY.GTK);
	Linker.link(gtk_printer_is_active, \"gtk_printer_is_active\", LIBRARY.GTK);
	Linker.link(gtk_printer_is_paused, \"gtk_printer_is_paused\", LIBRARY.GTK);
	Linker.link(gtk_printer_is_accepting_jobs, \"gtk_printer_is_accepting_jobs\", LIBRARY.GTK);
	Linker.link(gtk_printer_is_virtual, \"gtk_printer_is_virtual\", LIBRARY.GTK);
	Linker.link(gtk_printer_is_default, \"gtk_printer_is_default\", LIBRARY.GTK);
	Linker.link(gtk_printer_accepts_ps, \"gtk_printer_accepts_ps\", LIBRARY.GTK);
	Linker.link(gtk_printer_accepts_pdf, \"gtk_printer_accepts_pdf\", LIBRARY.GTK);
	Linker.link(gtk_printer_list_papers, \"gtk_printer_list_papers\", LIBRARY.GTK);
	Linker.link(gtk_printer_compare, \"gtk_printer_compare\", LIBRARY.GTK);
	Linker.link(gtk_printer_has_details, \"gtk_printer_has_details\", LIBRARY.GTK);
	Linker.link(gtk_printer_request_details, \"gtk_printer_request_details\", LIBRARY.GTK);
	Linker.link(gtk_printer_get_capabilities, \"gtk_printer_get_capabilities\", LIBRARY.GTK);
	Linker.link(gtk_printer_get_default_page_size, \"gtk_printer_get_default_page_size\", LIBRARY.GTK);
	Linker.link(gtk_printer_get_hard_margins, \"gtk_printer_get_hard_margins\", LIBRARY.GTK);
	Linker.link(gtk_enumerate_printers, \"gtk_enumerate_printers\", LIBRARY.GTK);

	// gtk.PrintJob

	Linker.link(gtk_print_job_new, \"gtk_print_job_new\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_settings, \"gtk_print_job_get_settings\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_printer, \"gtk_print_job_get_printer\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_title, \"gtk_print_job_get_title\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_status, \"gtk_print_job_get_status\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_source_file, \"gtk_print_job_set_source_file\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_surface, \"gtk_print_job_get_surface\", LIBRARY.GTK);
	Linker.link(gtk_print_job_send, \"gtk_print_job_send\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_track_print_status, \"gtk_print_job_set_track_print_status\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_track_print_status, \"gtk_print_job_get_track_print_status\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_pages, \"gtk_print_job_get_pages\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_pages, \"gtk_print_job_set_pages\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_page_ranges, \"gtk_print_job_get_page_ranges\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_page_ranges, \"gtk_print_job_set_page_ranges\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_page_set, \"gtk_print_job_get_page_set\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_page_set, \"gtk_print_job_set_page_set\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_num_copies, \"gtk_print_job_get_num_copies\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_num_copies, \"gtk_print_job_set_num_copies\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_scale, \"gtk_print_job_get_scale\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_scale, \"gtk_print_job_set_scale\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_n_up, \"gtk_print_job_get_n_up\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_n_up, \"gtk_print_job_set_n_up\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_n_up_layout, \"gtk_print_job_get_n_up_layout\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_n_up_layout, \"gtk_print_job_set_n_up_layout\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_rotate, \"gtk_print_job_get_rotate\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_rotate, \"gtk_print_job_set_rotate\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_collate, \"gtk_print_job_get_collate\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_collate, \"gtk_print_job_set_collate\", LIBRARY.GTK);
	Linker.link(gtk_print_job_get_reverse, \"gtk_print_job_get_reverse\", LIBRARY.GTK);
	Linker.link(gtk_print_job_set_reverse, \"gtk_print_job_set_reverse\", LIBRARY.GTK);

	// gtk.PrintUnixDialog

	Linker.link(gtk_print_unix_dialog_new, \"gtk_print_unix_dialog_new\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_page_setup, \"gtk_print_unix_dialog_set_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_page_setup, \"gtk_print_unix_dialog_get_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_current_page, \"gtk_print_unix_dialog_set_current_page\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_current_page, \"gtk_print_unix_dialog_get_current_page\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_settings, \"gtk_print_unix_dialog_set_settings\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_settings, \"gtk_print_unix_dialog_get_settings\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_selected_printer, \"gtk_print_unix_dialog_get_selected_printer\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_add_custom_tab, \"gtk_print_unix_dialog_add_custom_tab\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_support_selection, \"gtk_print_unix_dialog_set_support_selection\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_support_selection, \"gtk_print_unix_dialog_get_support_selection\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_has_selection, \"gtk_print_unix_dialog_set_has_selection\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_has_selection, \"gtk_print_unix_dialog_get_has_selection\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_embed_page_setup, \"gtk_print_unix_dialog_set_embed_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_embed_page_setup, \"gtk_print_unix_dialog_get_embed_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_page_setup_set, \"gtk_print_unix_dialog_get_page_setup_set\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_set_manual_capabilities, \"gtk_print_unix_dialog_set_manual_capabilities\", LIBRARY.GTK);
	Linker.link(gtk_print_unix_dialog_get_manual_capabilities, \"gtk_print_unix_dialog_get_manual_capabilities\", LIBRARY.GTK);

	// gtk.PageSetupUnixDialog

	Linker.link(gtk_page_setup_unix_dialog_new, \"gtk_page_setup_unix_dialog_new\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_unix_dialog_set_page_setup, \"gtk_page_setup_unix_dialog_set_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_unix_dialog_get_page_setup, \"gtk_page_setup_unix_dialog_get_page_setup\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_unix_dialog_set_print_settings, \"gtk_page_setup_unix_dialog_set_print_settings\", LIBRARY.GTK);
	Linker.link(gtk_page_setup_unix_dialog_get_print_settings, \"gtk_page_setup_unix_dialog_get_print_settings\", LIBRARY.GTK);

	// gtk.Adjustment

	Linker.link(gtk_adjustment_new, \"gtk_adjustment_new\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_value, \"gtk_adjustment_get_value\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_value, \"gtk_adjustment_set_value\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_clamp_page, \"gtk_adjustment_clamp_page\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_changed, \"gtk_adjustment_changed\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_value_changed, \"gtk_adjustment_value_changed\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_configure, \"gtk_adjustment_configure\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_lower, \"gtk_adjustment_get_lower\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_page_increment, \"gtk_adjustment_get_page_increment\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_page_size, \"gtk_adjustment_get_page_size\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_step_increment, \"gtk_adjustment_get_step_increment\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_minimum_increment, \"gtk_adjustment_get_minimum_increment\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_get_upper, \"gtk_adjustment_get_upper\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_lower, \"gtk_adjustment_set_lower\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_page_increment, \"gtk_adjustment_set_page_increment\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_page_size, \"gtk_adjustment_set_page_size\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_step_increment, \"gtk_adjustment_set_step_increment\", LIBRARY.GTK);
	Linker.link(gtk_adjustment_set_upper, \"gtk_adjustment_set_upper\", LIBRARY.GTK);

	// gtk.Arrow

	Linker.link(gtk_arrow_new, \"gtk_arrow_new\", LIBRARY.GTK);
	Linker.link(gtk_arrow_set, \"gtk_arrow_set\", LIBRARY.GTK);

	// gtk.Calendar

	Linker.link(gtk_calendar_new, \"gtk_calendar_new\", LIBRARY.GTK);
	Linker.link(gtk_calendar_select_month, \"gtk_calendar_select_month\", LIBRARY.GTK);
	Linker.link(gtk_calendar_select_day, \"gtk_calendar_select_day\", LIBRARY.GTK);
	Linker.link(gtk_calendar_mark_day, \"gtk_calendar_mark_day\", LIBRARY.GTK);
	Linker.link(gtk_calendar_unmark_day, \"gtk_calendar_unmark_day\", LIBRARY.GTK);
	Linker.link(gtk_calendar_get_day_is_marked, \"gtk_calendar_get_day_is_marked\", LIBRARY.GTK);
	Linker.link(gtk_calendar_clear_marks, \"gtk_calendar_clear_marks\", LIBRARY.GTK);
	Linker.link(gtk_calendar_get_display_options, \"gtk_calendar_get_display_options\", LIBRARY.GTK);
	Linker.link(gtk_calendar_set_display_options, \"gtk_calendar_set_display_options\", LIBRARY.GTK);
	Linker.link(gtk_calendar_get_date, \"gtk_calendar_get_date\", LIBRARY.GTK);
	Linker.link(gtk_calendar_set_detail_func, \"gtk_calendar_set_detail_func\", LIBRARY.GTK);
	Linker.link(gtk_calendar_get_detail_width_chars, \"gtk_calendar_get_detail_width_chars\", LIBRARY.GTK);
	Linker.link(gtk_calendar_set_detail_width_chars, \"gtk_calendar_set_detail_width_chars\", LIBRARY.GTK);
	Linker.link(gtk_calendar_get_detail_height_rows, \"gtk_calendar_get_detail_height_rows\", LIBRARY.GTK);
	Linker.link(gtk_calendar_set_detail_height_rows, \"gtk_calendar_set_detail_height_rows\", LIBRARY.GTK);

	// gtk.DrawingArea

	Linker.link(gtk_drawing_area_new, \"gtk_drawing_area_new\", LIBRARY.GTK);

	// gtk.EventBox

	Linker.link(gtk_event_box_new, \"gtk_event_box_new\", LIBRARY.GTK);
	Linker.link(gtk_event_box_set_above_child, \"gtk_event_box_set_above_child\", LIBRARY.GTK);
	Linker.link(gtk_event_box_get_above_child, \"gtk_event_box_get_above_child\", LIBRARY.GTK);
	Linker.link(gtk_event_box_set_visible_window, \"gtk_event_box_set_visible_window\", LIBRARY.GTK);
	Linker.link(gtk_event_box_get_visible_window, \"gtk_event_box_get_visible_window\", LIBRARY.GTK);

	// gtk.HandleBox

	Linker.link(gtk_handle_box_new, \"gtk_handle_box_new\", LIBRARY.GTK);
	Linker.link(gtk_handle_box_set_shadow_type, \"gtk_handle_box_set_shadow_type\", LIBRARY.GTK);
	Linker.link(gtk_handle_box_set_handle_position, \"gtk_handle_box_set_handle_position\", LIBRARY.GTK);
	Linker.link(gtk_handle_box_set_snap_edge, \"gtk_handle_box_set_snap_edge\", LIBRARY.GTK);
	Linker.link(gtk_handle_box_get_handle_position, \"gtk_handle_box_get_handle_position\", LIBRARY.GTK);
	Linker.link(gtk_handle_box_get_shadow_type, \"gtk_handle_box_get_shadow_type\", LIBRARY.GTK);
	Linker.link(gtk_handle_box_get_snap_edge, \"gtk_handle_box_get_snap_edge\", LIBRARY.GTK);
	Linker.link(gtk_handle_box_get_child_detached, \"gtk_handle_box_get_child_detached\", LIBRARY.GTK);

	// gtk.IMContextSimple

	Linker.link(gtk_im_context_simple_new, \"gtk_im_context_simple_new\", LIBRARY.GTK);
	Linker.link(gtk_im_context_simple_add_table, \"gtk_im_context_simple_add_table\", LIBRARY.GTK);

	// gtk.IMMulticontext

	Linker.link(gtk_im_multicontext_new, \"gtk_im_multicontext_new\", LIBRARY.GTK);
	Linker.link(gtk_im_multicontext_append_menuitems, \"gtk_im_multicontext_append_menuitems\", LIBRARY.GTK);
	Linker.link(gtk_im_multicontext_get_context_id, \"gtk_im_multicontext_get_context_id\", LIBRARY.GTK);
	Linker.link(gtk_im_multicontext_set_context_id, \"gtk_im_multicontext_set_context_id\", LIBRARY.GTK);

	// gtk.SizeGroup

	Linker.link(gtk_size_group_new, \"gtk_size_group_new\", LIBRARY.GTK);
	Linker.link(gtk_size_group_set_mode, \"gtk_size_group_set_mode\", LIBRARY.GTK);
	Linker.link(gtk_size_group_get_mode, \"gtk_size_group_get_mode\", LIBRARY.GTK);
	Linker.link(gtk_size_group_set_ignore_hidden, \"gtk_size_group_set_ignore_hidden\", LIBRARY.GTK);
	Linker.link(gtk_size_group_get_ignore_hidden, \"gtk_size_group_get_ignore_hidden\", LIBRARY.GTK);
	Linker.link(gtk_size_group_add_widget, \"gtk_size_group_add_widget\", LIBRARY.GTK);
	Linker.link(gtk_size_group_remove_widget, \"gtk_size_group_remove_widget\", LIBRARY.GTK);
	Linker.link(gtk_size_group_get_widgets, \"gtk_size_group_get_widgets\", LIBRARY.GTK);

	// gtk.Tooltip

	Linker.link(gtk_tooltip_set_markup, \"gtk_tooltip_set_markup\", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_text, \"gtk_tooltip_set_text\", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_icon, \"gtk_tooltip_set_icon\", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_icon_from_stock, \"gtk_tooltip_set_icon_from_stock\", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_icon_from_icon_name, \"gtk_tooltip_set_icon_from_icon_name\", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_icon_from_gicon, \"gtk_tooltip_set_icon_from_gicon\", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_custom, \"gtk_tooltip_set_custom\", LIBRARY.GTK);
	Linker.link(gtk_tooltip_trigger_tooltip_query, \"gtk_tooltip_trigger_tooltip_query\", LIBRARY.GTK);
	Linker.link(gtk_tooltip_set_tip_area, \"gtk_tooltip_set_tip_area\", LIBRARY.GTK);

	// gtk.Viewport

	Linker.link(gtk_viewport_new, \"gtk_viewport_new\", LIBRARY.GTK);
	Linker.link(gtk_viewport_get_hadjustment, \"gtk_viewport_get_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_viewport_get_vadjustment, \"gtk_viewport_get_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_viewport_set_hadjustment, \"gtk_viewport_set_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_viewport_set_vadjustment, \"gtk_viewport_set_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_viewport_set_shadow_type, \"gtk_viewport_set_shadow_type\", LIBRARY.GTK);
	Linker.link(gtk_viewport_get_shadow_type, \"gtk_viewport_get_shadow_type\", LIBRARY.GTK);
	Linker.link(gtk_viewport_get_bin_window, \"gtk_viewport_get_bin_window\", LIBRARY.GTK);
	Linker.link(gtk_viewport_get_view_window, \"gtk_viewport_get_view_window\", LIBRARY.GTK);

	// gtk.Accessible

	Linker.link(gtk_accessible_connect_widget_destroyed, \"gtk_accessible_connect_widget_destroyed\", LIBRARY.GTK);
	Linker.link(gtk_accessible_get_widget, \"gtk_accessible_get_widget\", LIBRARY.GTK);
	Linker.link(gtk_accessible_set_widget, \"gtk_accessible_set_widget\", LIBRARY.GTK);

	// gtk.Widget

	Linker.link(gtk_widget_new, \"gtk_widget_new\", LIBRARY.GTK);
	Linker.link(gtk_widget_destroy, \"gtk_widget_destroy\", LIBRARY.GTK);
	Linker.link(gtk_widget_in_destruction, \"gtk_widget_in_destruction\", LIBRARY.GTK);
	Linker.link(gtk_widget_destroyed, \"gtk_widget_destroyed\", LIBRARY.GTK);
	Linker.link(gtk_widget_unparent, \"gtk_widget_unparent\", LIBRARY.GTK);
	Linker.link(gtk_widget_show, \"gtk_widget_show\", LIBRARY.GTK);
	Linker.link(gtk_widget_show_now, \"gtk_widget_show_now\", LIBRARY.GTK);
	Linker.link(gtk_widget_hide, \"gtk_widget_hide\", LIBRARY.GTK);
	Linker.link(gtk_widget_show_all, \"gtk_widget_show_all\", LIBRARY.GTK);
	Linker.link(gtk_widget_map, \"gtk_widget_map\", LIBRARY.GTK);
	Linker.link(gtk_widget_unmap, \"gtk_widget_unmap\", LIBRARY.GTK);
	Linker.link(gtk_widget_realize, \"gtk_widget_realize\", LIBRARY.GTK);
	Linker.link(gtk_widget_unrealize, \"gtk_widget_unrealize\", LIBRARY.GTK);
	Linker.link(gtk_widget_draw, \"gtk_widget_draw\", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_draw, \"gtk_widget_queue_draw\", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_resize, \"gtk_widget_queue_resize\", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_resize_no_redraw, \"gtk_widget_queue_resize_no_redraw\", LIBRARY.GTK);
	Linker.link(gtk_widget_size_request, \"gtk_widget_size_request\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_child_requisition, \"gtk_widget_get_child_requisition\", LIBRARY.GTK);
	Linker.link(gtk_widget_size_allocate, \"gtk_widget_size_allocate\", LIBRARY.GTK);
	Linker.link(gtk_widget_add_accelerator, \"gtk_widget_add_accelerator\", LIBRARY.GTK);
	Linker.link(gtk_widget_remove_accelerator, \"gtk_widget_remove_accelerator\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_accel_path, \"gtk_widget_set_accel_path\", LIBRARY.GTK);
	Linker.link(gtk_widget_list_accel_closures, \"gtk_widget_list_accel_closures\", LIBRARY.GTK);
	Linker.link(gtk_widget_can_activate_accel, \"gtk_widget_can_activate_accel\", LIBRARY.GTK);
	Linker.link(gtk_widget_event, \"gtk_widget_event\", LIBRARY.GTK);
	Linker.link(gtk_widget_activate, \"gtk_widget_activate\", LIBRARY.GTK);
	Linker.link(gtk_widget_reparent, \"gtk_widget_reparent\", LIBRARY.GTK);
	Linker.link(gtk_widget_intersect, \"gtk_widget_intersect\", LIBRARY.GTK);
	Linker.link(gtk_widget_is_focus, \"gtk_widget_is_focus\", LIBRARY.GTK);
	Linker.link(gtk_widget_grab_focus, \"gtk_widget_grab_focus\", LIBRARY.GTK);
	Linker.link(gtk_widget_grab_default, \"gtk_widget_grab_default\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_name, \"gtk_widget_set_name\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_name, \"gtk_widget_get_name\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_state, \"gtk_widget_set_state\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_sensitive, \"gtk_widget_set_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_parent, \"gtk_widget_set_parent\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_parent_window, \"gtk_widget_set_parent_window\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_parent_window, \"gtk_widget_get_parent_window\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_events, \"gtk_widget_set_events\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_events, \"gtk_widget_get_events\", LIBRARY.GTK);
	Linker.link(gtk_widget_add_events, \"gtk_widget_add_events\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_device_events, \"gtk_widget_set_device_events\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_device_events, \"gtk_widget_get_device_events\", LIBRARY.GTK);
	Linker.link(gtk_widget_add_device_events, \"gtk_widget_add_device_events\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_device_enabled, \"gtk_widget_set_device_enabled\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_device_enabled, \"gtk_widget_get_device_enabled\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_toplevel, \"gtk_widget_get_toplevel\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_ancestor, \"gtk_widget_get_ancestor\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_visual, \"gtk_widget_get_visual\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_visual, \"gtk_widget_set_visual\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_pointer, \"gtk_widget_get_pointer\", LIBRARY.GTK);
	Linker.link(gtk_widget_is_ancestor, \"gtk_widget_is_ancestor\", LIBRARY.GTK);
	Linker.link(gtk_widget_translate_coordinates, \"gtk_widget_translate_coordinates\", LIBRARY.GTK);
	Linker.link(gtk_widget_hide_on_delete, \"gtk_widget_hide_on_delete\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_style, \"gtk_widget_set_style\", LIBRARY.GTK);
	Linker.link(gtk_widget_ensure_style, \"gtk_widget_ensure_style\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_style, \"gtk_widget_get_style\", LIBRARY.GTK);
	Linker.link(gtk_widget_reset_rc_styles, \"gtk_widget_reset_rc_styles\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_default_style, \"gtk_widget_get_default_style\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_direction, \"gtk_widget_set_direction\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_direction, \"gtk_widget_get_direction\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_default_direction, \"gtk_widget_set_default_direction\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_default_direction, \"gtk_widget_get_default_direction\", LIBRARY.GTK);
	Linker.link(gtk_widget_shape_combine_region, \"gtk_widget_shape_combine_region\", LIBRARY.GTK);
	Linker.link(gtk_widget_input_shape_combine_region, \"gtk_widget_input_shape_combine_region\", LIBRARY.GTK);
	Linker.link(gtk_widget_path, \"gtk_widget_path\", LIBRARY.GTK);
	Linker.link(gtk_widget_class_path, \"gtk_widget_class_path\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_composite_name, \"gtk_widget_get_composite_name\", LIBRARY.GTK);
	Linker.link(gtk_widget_override_background_color, \"gtk_widget_override_background_color\", LIBRARY.GTK);
	Linker.link(gtk_widget_override_color, \"gtk_widget_override_color\", LIBRARY.GTK);
	Linker.link(gtk_widget_override_font, \"gtk_widget_override_font\", LIBRARY.GTK);
	Linker.link(gtk_widget_override_symbolic_color, \"gtk_widget_override_symbolic_color\", LIBRARY.GTK);
	Linker.link(gtk_widget_override_cursor, \"gtk_widget_override_cursor\", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_style, \"gtk_widget_modify_style\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_modifier_style, \"gtk_widget_get_modifier_style\", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_fg, \"gtk_widget_modify_fg\", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_bg, \"gtk_widget_modify_bg\", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_text, \"gtk_widget_modify_text\", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_base, \"gtk_widget_modify_base\", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_font, \"gtk_widget_modify_font\", LIBRARY.GTK);
	Linker.link(gtk_widget_modify_cursor, \"gtk_widget_modify_cursor\", LIBRARY.GTK);
	Linker.link(gtk_widget_create_pango_context, \"gtk_widget_create_pango_context\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_pango_context, \"gtk_widget_get_pango_context\", LIBRARY.GTK);
	Linker.link(gtk_widget_create_pango_layout, \"gtk_widget_create_pango_layout\", LIBRARY.GTK);
	Linker.link(gtk_widget_render_icon, \"gtk_widget_render_icon\", LIBRARY.GTK);
	Linker.link(gtk_widget_render_icon_pixbuf, \"gtk_widget_render_icon_pixbuf\", LIBRARY.GTK);
	Linker.link(gtk_widget_pop_composite_child, \"gtk_widget_pop_composite_child\", LIBRARY.GTK);
	Linker.link(gtk_widget_push_composite_child, \"gtk_widget_push_composite_child\", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_draw_area, \"gtk_widget_queue_draw_area\", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_draw_region, \"gtk_widget_queue_draw_region\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_app_paintable, \"gtk_widget_set_app_paintable\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_double_buffered, \"gtk_widget_set_double_buffered\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_redraw_on_allocate, \"gtk_widget_set_redraw_on_allocate\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_composite_name, \"gtk_widget_set_composite_name\", LIBRARY.GTK);
	Linker.link(gtk_widget_mnemonic_activate, \"gtk_widget_mnemonic_activate\", LIBRARY.GTK);
	Linker.link(gtk_widget_class_install_style_property, \"gtk_widget_class_install_style_property\", LIBRARY.GTK);
	Linker.link(gtk_widget_class_install_style_property_parser, \"gtk_widget_class_install_style_property_parser\", LIBRARY.GTK);
	Linker.link(gtk_widget_class_find_style_property, \"gtk_widget_class_find_style_property\", LIBRARY.GTK);
	Linker.link(gtk_widget_class_list_style_properties, \"gtk_widget_class_list_style_properties\", LIBRARY.GTK);
	Linker.link(gtk_widget_region_intersect, \"gtk_widget_region_intersect\", LIBRARY.GTK);
	Linker.link(gtk_widget_send_expose, \"gtk_widget_send_expose\", LIBRARY.GTK);
	Linker.link(gtk_widget_send_focus_change, \"gtk_widget_send_focus_change\", LIBRARY.GTK);
	Linker.link(gtk_widget_style_get, \"gtk_widget_style_get\", LIBRARY.GTK);
	Linker.link(gtk_widget_style_get_property, \"gtk_widget_style_get_property\", LIBRARY.GTK);
	Linker.link(gtk_widget_style_get_valist, \"gtk_widget_style_get_valist\", LIBRARY.GTK);
	Linker.link(gtk_widget_style_attach, \"gtk_widget_style_attach\", LIBRARY.GTK);
	Linker.link(gtk_widget_class_set_accessible_type, \"gtk_widget_class_set_accessible_type\", LIBRARY.GTK);
	Linker.link(gtk_widget_class_set_accessible_role, \"gtk_widget_class_set_accessible_role\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_accessible, \"gtk_widget_get_accessible\", LIBRARY.GTK);
	Linker.link(gtk_widget_child_focus, \"gtk_widget_child_focus\", LIBRARY.GTK);
	Linker.link(gtk_widget_child_notify, \"gtk_widget_child_notify\", LIBRARY.GTK);
	Linker.link(gtk_widget_freeze_child_notify, \"gtk_widget_freeze_child_notify\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_child_visible, \"gtk_widget_get_child_visible\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_parent, \"gtk_widget_get_parent\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_settings, \"gtk_widget_get_settings\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_clipboard, \"gtk_widget_get_clipboard\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_display, \"gtk_widget_get_display\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_root_window, \"gtk_widget_get_root_window\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_screen, \"gtk_widget_get_screen\", LIBRARY.GTK);
	Linker.link(gtk_widget_has_screen, \"gtk_widget_has_screen\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_size_request, \"gtk_widget_get_size_request\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_child_visible, \"gtk_widget_set_child_visible\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_size_request, \"gtk_widget_set_size_request\", LIBRARY.GTK);
	Linker.link(gtk_widget_thaw_child_notify, \"gtk_widget_thaw_child_notify\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_no_show_all, \"gtk_widget_set_no_show_all\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_no_show_all, \"gtk_widget_get_no_show_all\", LIBRARY.GTK);
	Linker.link(gtk_widget_list_mnemonic_labels, \"gtk_widget_list_mnemonic_labels\", LIBRARY.GTK);
	Linker.link(gtk_widget_add_mnemonic_label, \"gtk_widget_add_mnemonic_label\", LIBRARY.GTK);
	Linker.link(gtk_widget_remove_mnemonic_label, \"gtk_widget_remove_mnemonic_label\", LIBRARY.GTK);
	Linker.link(gtk_widget_is_composited, \"gtk_widget_is_composited\", LIBRARY.GTK);
	Linker.link(gtk_widget_error_bell, \"gtk_widget_error_bell\", LIBRARY.GTK);
	Linker.link(gtk_widget_keynav_failed, \"gtk_widget_keynav_failed\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_tooltip_markup, \"gtk_widget_get_tooltip_markup\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_tooltip_markup, \"gtk_widget_set_tooltip_markup\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_tooltip_text, \"gtk_widget_get_tooltip_text\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_tooltip_text, \"gtk_widget_set_tooltip_text\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_tooltip_window, \"gtk_widget_get_tooltip_window\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_tooltip_window, \"gtk_widget_set_tooltip_window\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_has_tooltip, \"gtk_widget_get_has_tooltip\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_has_tooltip, \"gtk_widget_set_has_tooltip\", LIBRARY.GTK);
	Linker.link(gtk_widget_trigger_tooltip_query, \"gtk_widget_trigger_tooltip_query\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_window, \"gtk_widget_get_window\", LIBRARY.GTK);
	Linker.link(gtk_cairo_should_draw_window, \"gtk_cairo_should_draw_window\", LIBRARY.GTK);
	Linker.link(gtk_cairo_transform_to_window, \"gtk_cairo_transform_to_window\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_allocated_width, \"gtk_widget_get_allocated_width\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_allocated_height, \"gtk_widget_get_allocated_height\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_allocation, \"gtk_widget_get_allocation\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_allocation, \"gtk_widget_set_allocation\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_app_paintable, \"gtk_widget_get_app_paintable\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_can_default, \"gtk_widget_get_can_default\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_can_default, \"gtk_widget_set_can_default\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_can_focus, \"gtk_widget_get_can_focus\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_can_focus, \"gtk_widget_set_can_focus\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_double_buffered, \"gtk_widget_get_double_buffered\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_has_window, \"gtk_widget_get_has_window\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_has_window, \"gtk_widget_set_has_window\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_sensitive, \"gtk_widget_get_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_widget_is_sensitive, \"gtk_widget_is_sensitive\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_state, \"gtk_widget_get_state\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_visible, \"gtk_widget_get_visible\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_visible, \"gtk_widget_set_visible\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_state_flags, \"gtk_widget_set_state_flags\", LIBRARY.GTK);
	Linker.link(gtk_widget_unset_state_flags, \"gtk_widget_unset_state_flags\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_state_flags, \"gtk_widget_get_state_flags\", LIBRARY.GTK);
	Linker.link(gtk_widget_has_default, \"gtk_widget_has_default\", LIBRARY.GTK);
	Linker.link(gtk_widget_has_focus, \"gtk_widget_has_focus\", LIBRARY.GTK);
	Linker.link(gtk_widget_has_visible_focus, \"gtk_widget_has_visible_focus\", LIBRARY.GTK);
	Linker.link(gtk_widget_has_grab, \"gtk_widget_has_grab\", LIBRARY.GTK);
	Linker.link(gtk_widget_has_rc_style, \"gtk_widget_has_rc_style\", LIBRARY.GTK);
	Linker.link(gtk_widget_is_drawable, \"gtk_widget_is_drawable\", LIBRARY.GTK);
	Linker.link(gtk_widget_is_toplevel, \"gtk_widget_is_toplevel\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_window, \"gtk_widget_set_window\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_receives_default, \"gtk_widget_set_receives_default\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_receives_default, \"gtk_widget_get_receives_default\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_support_multidevice, \"gtk_widget_set_support_multidevice\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_support_multidevice, \"gtk_widget_get_support_multidevice\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_realized, \"gtk_widget_set_realized\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_realized, \"gtk_widget_get_realized\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_mapped, \"gtk_widget_set_mapped\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_mapped, \"gtk_widget_get_mapped\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_requisition, \"gtk_widget_get_requisition\", LIBRARY.GTK);
	Linker.link(gtk_widget_device_is_shadowed, \"gtk_widget_device_is_shadowed\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_modifier_mask, \"gtk_widget_get_modifier_mask\", LIBRARY.GTK);
	Linker.link(gtk_widget_insert_action_group, \"gtk_widget_insert_action_group\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_path, \"gtk_widget_get_path\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_style_context, \"gtk_widget_get_style_context\", LIBRARY.GTK);
	Linker.link(gtk_widget_reset_style, \"gtk_widget_reset_style\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_preferred_height, \"gtk_widget_get_preferred_height\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_preferred_width, \"gtk_widget_get_preferred_width\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_preferred_height_for_width, \"gtk_widget_get_preferred_height_for_width\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_preferred_width_for_height, \"gtk_widget_get_preferred_width_for_height\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_request_mode, \"gtk_widget_get_request_mode\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_preferred_size, \"gtk_widget_get_preferred_size\", LIBRARY.GTK);
	Linker.link(gtk_distribute_natural_allocation, \"gtk_distribute_natural_allocation\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_halign, \"gtk_widget_get_halign\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_halign, \"gtk_widget_set_halign\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_valign, \"gtk_widget_get_valign\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_valign, \"gtk_widget_set_valign\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_margin_left, \"gtk_widget_get_margin_left\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_margin_left, \"gtk_widget_set_margin_left\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_margin_right, \"gtk_widget_get_margin_right\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_margin_right, \"gtk_widget_set_margin_right\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_margin_top, \"gtk_widget_get_margin_top\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_margin_top, \"gtk_widget_set_margin_top\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_margin_bottom, \"gtk_widget_get_margin_bottom\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_margin_bottom, \"gtk_widget_set_margin_bottom\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_hexpand, \"gtk_widget_get_hexpand\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_hexpand, \"gtk_widget_set_hexpand\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_hexpand_set, \"gtk_widget_get_hexpand_set\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_hexpand_set, \"gtk_widget_set_hexpand_set\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_vexpand, \"gtk_widget_get_vexpand\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_vexpand, \"gtk_widget_set_vexpand\", LIBRARY.GTK);
	Linker.link(gtk_widget_get_vexpand_set, \"gtk_widget_get_vexpand_set\", LIBRARY.GTK);
	Linker.link(gtk_widget_set_vexpand_set, \"gtk_widget_set_vexpand_set\", LIBRARY.GTK);
	Linker.link(gtk_widget_queue_compute_expand, \"gtk_widget_queue_compute_expand\", LIBRARY.GTK);
	Linker.link(gtk_widget_compute_expand, \"gtk_widget_compute_expand\", LIBRARY.GTK);

	// gtk.Requisition

	Linker.link(gtk_requisition_new, \"gtk_requisition_new\", LIBRARY.GTK);
	Linker.link(gtk_requisition_copy, \"gtk_requisition_copy\", LIBRARY.GTK);
	Linker.link(gtk_requisition_free, \"gtk_requisition_free\", LIBRARY.GTK);

	// gtk.Container

	Linker.link(gtk_container_add, \"gtk_container_add\", LIBRARY.GTK);
	Linker.link(gtk_container_remove, \"gtk_container_remove\", LIBRARY.GTK);
	Linker.link(gtk_container_add_with_properties, \"gtk_container_add_with_properties\", LIBRARY.GTK);
	Linker.link(gtk_container_get_resize_mode, \"gtk_container_get_resize_mode\", LIBRARY.GTK);
	Linker.link(gtk_container_set_resize_mode, \"gtk_container_set_resize_mode\", LIBRARY.GTK);
	Linker.link(gtk_container_check_resize, \"gtk_container_check_resize\", LIBRARY.GTK);
	Linker.link(gtk_container_foreach, \"gtk_container_foreach\", LIBRARY.GTK);
	Linker.link(gtk_container_get_children, \"gtk_container_get_children\", LIBRARY.GTK);
	Linker.link(gtk_container_get_path_for_child, \"gtk_container_get_path_for_child\", LIBRARY.GTK);
	Linker.link(gtk_container_set_reallocate_redraws, \"gtk_container_set_reallocate_redraws\", LIBRARY.GTK);
	Linker.link(gtk_container_get_focus_child, \"gtk_container_get_focus_child\", LIBRARY.GTK);
	Linker.link(gtk_container_set_focus_child, \"gtk_container_set_focus_child\", LIBRARY.GTK);
	Linker.link(gtk_container_get_focus_vadjustment, \"gtk_container_get_focus_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_container_set_focus_vadjustment, \"gtk_container_set_focus_vadjustment\", LIBRARY.GTK);
	Linker.link(gtk_container_get_focus_hadjustment, \"gtk_container_get_focus_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_container_set_focus_hadjustment, \"gtk_container_set_focus_hadjustment\", LIBRARY.GTK);
	Linker.link(gtk_container_resize_children, \"gtk_container_resize_children\", LIBRARY.GTK);
	Linker.link(gtk_container_child_type, \"gtk_container_child_type\", LIBRARY.GTK);
	Linker.link(gtk_container_child_get, \"gtk_container_child_get\", LIBRARY.GTK);
	Linker.link(gtk_container_child_set, \"gtk_container_child_set\", LIBRARY.GTK);
	Linker.link(gtk_container_child_get_property, \"gtk_container_child_get_property\", LIBRARY.GTK);
	Linker.link(gtk_container_child_set_property, \"gtk_container_child_set_property\", LIBRARY.GTK);
	Linker.link(gtk_container_child_get_valist, \"gtk_container_child_get_valist\", LIBRARY.GTK);
	Linker.link(gtk_container_child_set_valist, \"gtk_container_child_set_valist\", LIBRARY.GTK);
	Linker.link(gtk_container_child_notify, \"gtk_container_child_notify\", LIBRARY.GTK);
	Linker.link(gtk_container_forall, \"gtk_container_forall\", LIBRARY.GTK);
	Linker.link(gtk_container_get_border_width, \"gtk_container_get_border_width\", LIBRARY.GTK);
	Linker.link(gtk_container_set_border_width, \"gtk_container_set_border_width\", LIBRARY.GTK);
	Linker.link(gtk_container_propagate_draw, \"gtk_container_propagate_draw\", LIBRARY.GTK);
	Linker.link(gtk_container_get_focus_chain, \"gtk_container_get_focus_chain\", LIBRARY.GTK);
	Linker.link(gtk_container_set_focus_chain, \"gtk_container_set_focus_chain\", LIBRARY.GTK);
	Linker.link(gtk_container_unset_focus_chain, \"gtk_container_unset_focus_chain\", LIBRARY.GTK);
	Linker.link(gtk_container_class_find_child_property, \"gtk_container_class_find_child_property\", LIBRARY.GTK);
	Linker.link(gtk_container_class_install_child_property, \"gtk_container_class_install_child_property\", LIBRARY.GTK);
	Linker.link(gtk_container_class_list_child_properties, \"gtk_container_class_list_child_properties\", LIBRARY.GTK);
	Linker.link(gtk_container_class_handle_border_width, \"gtk_container_class_handle_border_width\", LIBRARY.GTK);

	// gtk.Bin

	Linker.link(gtk_bin_get_child, \"gtk_bin_get_child\", LIBRARY.GTK);

	// gtk.MenuShell

	Linker.link(gtk_menu_shell_append, \"gtk_menu_shell_append\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_prepend, \"gtk_menu_shell_prepend\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_insert, \"gtk_menu_shell_insert\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_deactivate, \"gtk_menu_shell_deactivate\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_select_item, \"gtk_menu_shell_select_item\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_select_first, \"gtk_menu_shell_select_first\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_deselect, \"gtk_menu_shell_deselect\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_activate_item, \"gtk_menu_shell_activate_item\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_cancel, \"gtk_menu_shell_cancel\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_set_take_focus, \"gtk_menu_shell_set_take_focus\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_get_take_focus, \"gtk_menu_shell_get_take_focus\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_get_selected_item, \"gtk_menu_shell_get_selected_item\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_get_parent_shell, \"gtk_menu_shell_get_parent_shell\", LIBRARY.GTK);
	Linker.link(gtk_menu_shell_bind_model, \"gtk_menu_shell_bind_model\", LIBRARY.GTK);

	// gtk.Misc

	Linker.link(gtk_misc_set_alignment, \"gtk_misc_set_alignment\", LIBRARY.GTK);
	Linker.link(gtk_misc_set_padding, \"gtk_misc_set_padding\", LIBRARY.GTK);
	Linker.link(gtk_misc_get_alignment, \"gtk_misc_get_alignment\", LIBRARY.GTK);
	Linker.link(gtk_misc_get_padding, \"gtk_misc_get_padding\", LIBRARY.GTK);

	// gtk.Range

	Linker.link(gtk_range_get_fill_level, \"gtk_range_get_fill_level\", LIBRARY.GTK);
	Linker.link(gtk_range_get_restrict_to_fill_level, \"gtk_range_get_restrict_to_fill_level\", LIBRARY.GTK);
	Linker.link(gtk_range_get_show_fill_level, \"gtk_range_get_show_fill_level\", LIBRARY.GTK);
	Linker.link(gtk_range_set_fill_level, \"gtk_range_set_fill_level\", LIBRARY.GTK);
	Linker.link(gtk_range_set_restrict_to_fill_level, \"gtk_range_set_restrict_to_fill_level\", LIBRARY.GTK);
	Linker.link(gtk_range_set_show_fill_level, \"gtk_range_set_show_fill_level\", LIBRARY.GTK);
	Linker.link(gtk_range_get_adjustment, \"gtk_range_get_adjustment\", LIBRARY.GTK);
	Linker.link(gtk_range_set_adjustment, \"gtk_range_set_adjustment\", LIBRARY.GTK);
	Linker.link(gtk_range_get_inverted, \"gtk_range_get_inverted\", LIBRARY.GTK);
	Linker.link(gtk_range_set_inverted, \"gtk_range_set_inverted\", LIBRARY.GTK);
	Linker.link(gtk_range_get_value, \"gtk_range_get_value\", LIBRARY.GTK);
	Linker.link(gtk_range_set_value, \"gtk_range_set_value\", LIBRARY.GTK);
	Linker.link(gtk_range_set_increments, \"gtk_range_set_increments\", LIBRARY.GTK);
	Linker.link(gtk_range_set_range, \"gtk_range_set_range\", LIBRARY.GTK);
	Linker.link(gtk_range_get_round_digits, \"gtk_range_get_round_digits\", LIBRARY.GTK);
	Linker.link(gtk_range_set_round_digits, \"gtk_range_set_round_digits\", LIBRARY.GTK);
	Linker.link(gtk_range_set_lower_stepper_sensitivity, \"gtk_range_set_lower_stepper_sensitivity\", LIBRARY.GTK);
	Linker.link(gtk_range_get_lower_stepper_sensitivity, \"gtk_range_get_lower_stepper_sensitivity\", LIBRARY.GTK);
	Linker.link(gtk_range_set_upper_stepper_sensitivity, \"gtk_range_set_upper_stepper_sensitivity\", LIBRARY.GTK);
	Linker.link(gtk_range_get_upper_stepper_sensitivity, \"gtk_range_get_upper_stepper_sensitivity\", LIBRARY.GTK);
	Linker.link(gtk_range_get_flippable, \"gtk_range_get_flippable\", LIBRARY.GTK);
	Linker.link(gtk_range_set_flippable, \"gtk_range_set_flippable\", LIBRARY.GTK);
	Linker.link(gtk_range_get_min_slider_size, \"gtk_range_get_min_slider_size\", LIBRARY.GTK);
	Linker.link(gtk_range_get_range_rect, \"gtk_range_get_range_rect\", LIBRARY.GTK);
	Linker.link(gtk_range_get_slider_range, \"gtk_range_get_slider_range\", LIBRARY.GTK);
	Linker.link(gtk_range_get_slider_size_fixed, \"gtk_range_get_slider_size_fixed\", LIBRARY.GTK);
	Linker.link(gtk_range_set_min_slider_size, \"gtk_range_set_min_slider_size\", LIBRARY.GTK);
	Linker.link(gtk_range_set_slider_size_fixed, \"gtk_range_set_slider_size_fixed\", LIBRARY.GTK);

	// gtk.IMContext

	Linker.link(gtk_im_context_set_client_window, \"gtk_im_context_set_client_window\", LIBRARY.GTK);
	Linker.link(gtk_im_context_get_preedit_string, \"gtk_im_context_get_preedit_string\", LIBRARY.GTK);
	Linker.link(gtk_im_context_filter_keypress, \"gtk_im_context_filter_keypress\", LIBRARY.GTK);
	Linker.link(gtk_im_context_focus_in, \"gtk_im_context_focus_in\", LIBRARY.GTK);
	Linker.link(gtk_im_context_focus_out, \"gtk_im_context_focus_out\", LIBRARY.GTK);
	Linker.link(gtk_im_context_reset, \"gtk_im_context_reset\", LIBRARY.GTK);
	Linker.link(gtk_im_context_set_cursor_location, \"gtk_im_context_set_cursor_location\", LIBRARY.GTK);
	Linker.link(gtk_im_context_set_use_preedit, \"gtk_im_context_set_use_preedit\", LIBRARY.GTK);
	Linker.link(gtk_im_context_set_surrounding, \"gtk_im_context_set_surrounding\", LIBRARY.GTK);
	Linker.link(gtk_im_context_get_surrounding, \"gtk_im_context_get_surrounding\", LIBRARY.GTK);
	Linker.link(gtk_im_context_delete_surrounding, \"gtk_im_context_delete_surrounding\", LIBRARY.GTK);

	// gtk.Plug

	Linker.link(gtk_plug_construct, \"gtk_plug_construct\", LIBRARY.GTK);
	Linker.link(gtk_plug_construct_for_display, \"gtk_plug_construct_for_display\", LIBRARY.GTK);
	Linker.link(gtk_plug_new, \"gtk_plug_new\", LIBRARY.GTK);
	Linker.link(gtk_plug_new_for_display, \"gtk_plug_new_for_display\", LIBRARY.GTK);
	Linker.link(gtk_plug_get_id, \"gtk_plug_get_id\", LIBRARY.GTK);
	Linker.link(gtk_plug_get_embedded, \"gtk_plug_get_embedded\", LIBRARY.GTK);
	Linker.link(gtk_plug_get_socket_window, \"gtk_plug_get_socket_window\", LIBRARY.GTK);

	// gtk.Socket

	Linker.link(gtk_socket_new, \"gtk_socket_new\", LIBRARY.GTK);
	Linker.link(gtk_socket_add_id, \"gtk_socket_add_id\", LIBRARY.GTK);
	Linker.link(gtk_socket_get_id, \"gtk_socket_get_id\", LIBRARY.GTK);
	Linker.link(gtk_socket_get_plug_window, \"gtk_socket_get_plug_window\", LIBRARY.GTK);

	// gtk.RecentManager

	Linker.link(gtk_recent_manager_new, \"gtk_recent_manager_new\", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_get_default, \"gtk_recent_manager_get_default\", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_add_item, \"gtk_recent_manager_add_item\", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_add_full, \"gtk_recent_manager_add_full\", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_remove_item, \"gtk_recent_manager_remove_item\", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_lookup_item, \"gtk_recent_manager_lookup_item\", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_has_item, \"gtk_recent_manager_has_item\", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_move_item, \"gtk_recent_manager_move_item\", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_get_items, \"gtk_recent_manager_get_items\", LIBRARY.GTK);
	Linker.link(gtk_recent_manager_purge_items, \"gtk_recent_manager_purge_items\", LIBRARY.GTK);

	// gtk.RecentInfo

	Linker.link(gtk_recent_info_ref, \"gtk_recent_info_ref\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_unref, \"gtk_recent_info_unref\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_uri, \"gtk_recent_info_get_uri\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_display_name, \"gtk_recent_info_get_display_name\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_description, \"gtk_recent_info_get_description\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_mime_type, \"gtk_recent_info_get_mime_type\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_added, \"gtk_recent_info_get_added\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_modified, \"gtk_recent_info_get_modified\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_visited, \"gtk_recent_info_get_visited\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_private_hint, \"gtk_recent_info_get_private_hint\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_application_info, \"gtk_recent_info_get_application_info\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_applications, \"gtk_recent_info_get_applications\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_last_application, \"gtk_recent_info_last_application\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_has_application, \"gtk_recent_info_has_application\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_create_app_info, \"gtk_recent_info_create_app_info\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_groups, \"gtk_recent_info_get_groups\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_has_group, \"gtk_recent_info_has_group\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_icon, \"gtk_recent_info_get_icon\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_gicon, \"gtk_recent_info_get_gicon\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_short_name, \"gtk_recent_info_get_short_name\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_uri_display, \"gtk_recent_info_get_uri_display\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_get_age, \"gtk_recent_info_get_age\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_is_local, \"gtk_recent_info_is_local\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_exists, \"gtk_recent_info_exists\", LIBRARY.GTK);
	Linker.link(gtk_recent_info_match, \"gtk_recent_info_match\", LIBRARY.GTK);

	// gtk.RecentChooserT


	// gtk.RecentChooserT

	Linker.link(gtk_recent_chooser_set_show_private, \"gtk_recent_chooser_set_show_private\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_show_private, \"gtk_recent_chooser_get_show_private\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_show_not_found, \"gtk_recent_chooser_set_show_not_found\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_show_not_found, \"gtk_recent_chooser_get_show_not_found\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_show_icons, \"gtk_recent_chooser_set_show_icons\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_show_icons, \"gtk_recent_chooser_get_show_icons\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_select_multiple, \"gtk_recent_chooser_set_select_multiple\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_select_multiple, \"gtk_recent_chooser_get_select_multiple\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_local_only, \"gtk_recent_chooser_set_local_only\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_local_only, \"gtk_recent_chooser_get_local_only\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_limit, \"gtk_recent_chooser_set_limit\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_limit, \"gtk_recent_chooser_get_limit\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_show_tips, \"gtk_recent_chooser_set_show_tips\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_show_tips, \"gtk_recent_chooser_get_show_tips\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_sort_type, \"gtk_recent_chooser_set_sort_type\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_sort_type, \"gtk_recent_chooser_get_sort_type\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_sort_func, \"gtk_recent_chooser_set_sort_func\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_current_uri, \"gtk_recent_chooser_set_current_uri\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_current_uri, \"gtk_recent_chooser_get_current_uri\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_current_item, \"gtk_recent_chooser_get_current_item\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_select_uri, \"gtk_recent_chooser_select_uri\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_unselect_uri, \"gtk_recent_chooser_unselect_uri\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_select_all, \"gtk_recent_chooser_select_all\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_unselect_all, \"gtk_recent_chooser_unselect_all\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_items, \"gtk_recent_chooser_get_items\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_uris, \"gtk_recent_chooser_get_uris\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_add_filter, \"gtk_recent_chooser_add_filter\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_remove_filter, \"gtk_recent_chooser_remove_filter\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_list_filters, \"gtk_recent_chooser_list_filters\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_set_filter, \"gtk_recent_chooser_set_filter\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_get_filter, \"gtk_recent_chooser_get_filter\", LIBRARY.GTK);

	// gtk.RecentChooserDialog

	Linker.link(gtk_recent_chooser_dialog_new, \"gtk_recent_chooser_dialog_new\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_dialog_new_for_manager, \"gtk_recent_chooser_dialog_new_for_manager\", LIBRARY.GTK);

	// gtk.RecentChooserMenu

	Linker.link(gtk_recent_chooser_menu_new, \"gtk_recent_chooser_menu_new\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_menu_new_for_manager, \"gtk_recent_chooser_menu_new_for_manager\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_menu_get_show_numbers, \"gtk_recent_chooser_menu_get_show_numbers\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_menu_set_show_numbers, \"gtk_recent_chooser_menu_set_show_numbers\", LIBRARY.GTK);

	// gtk.RecentChooserWidget

	Linker.link(gtk_recent_chooser_widget_new, \"gtk_recent_chooser_widget_new\", LIBRARY.GTK);
	Linker.link(gtk_recent_chooser_widget_new_for_manager, \"gtk_recent_chooser_widget_new_for_manager\", LIBRARY.GTK);

	// gtk.RecentFilter

	Linker.link(gtk_recent_filter_new, \"gtk_recent_filter_new\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_get_name, \"gtk_recent_filter_get_name\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_set_name, \"gtk_recent_filter_set_name\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_mime_type, \"gtk_recent_filter_add_mime_type\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_pattern, \"gtk_recent_filter_add_pattern\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_pixbuf_formats, \"gtk_recent_filter_add_pixbuf_formats\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_application, \"gtk_recent_filter_add_application\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_group, \"gtk_recent_filter_add_group\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_age, \"gtk_recent_filter_add_age\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_add_custom, \"gtk_recent_filter_add_custom\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_get_needed, \"gtk_recent_filter_get_needed\", LIBRARY.GTK);
	Linker.link(gtk_recent_filter_filter, \"gtk_recent_filter_filter\", LIBRARY.GTK);

	// gtk.AppChooserT


	// gtk.AppChooserT

	Linker.link(gtk_app_chooser_get_app_info, \"gtk_app_chooser_get_app_info\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_get_content_type, \"gtk_app_chooser_get_content_type\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_refresh, \"gtk_app_chooser_refresh\", LIBRARY.GTK);

	// gtk.AppChooserButton

	Linker.link(gtk_app_chooser_button_new, \"gtk_app_chooser_button_new\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_button_append_custom_item, \"gtk_app_chooser_button_append_custom_item\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_button_append_separator, \"gtk_app_chooser_button_append_separator\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_button_set_active_custom_item, \"gtk_app_chooser_button_set_active_custom_item\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_button_get_show_default_item, \"gtk_app_chooser_button_get_show_default_item\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_button_set_show_default_item, \"gtk_app_chooser_button_set_show_default_item\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_button_get_show_dialog_item, \"gtk_app_chooser_button_get_show_dialog_item\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_button_set_show_dialog_item, \"gtk_app_chooser_button_set_show_dialog_item\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_button_get_heading, \"gtk_app_chooser_button_get_heading\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_button_set_heading, \"gtk_app_chooser_button_set_heading\", LIBRARY.GTK);

	// gtk.AppChooserDialog

	Linker.link(gtk_app_chooser_dialog_new, \"gtk_app_chooser_dialog_new\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_dialog_new_for_content_type, \"gtk_app_chooser_dialog_new_for_content_type\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_dialog_get_widget, \"gtk_app_chooser_dialog_get_widget\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_dialog_set_heading, \"gtk_app_chooser_dialog_set_heading\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_dialog_get_heading, \"gtk_app_chooser_dialog_get_heading\", LIBRARY.GTK);

	// gtk.AppChooserWidget

	Linker.link(gtk_app_chooser_widget_new, \"gtk_app_chooser_widget_new\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_set_show_default, \"gtk_app_chooser_widget_set_show_default\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_get_show_default, \"gtk_app_chooser_widget_get_show_default\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_set_show_recommended, \"gtk_app_chooser_widget_set_show_recommended\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_get_show_recommended, \"gtk_app_chooser_widget_get_show_recommended\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_set_show_fallback, \"gtk_app_chooser_widget_set_show_fallback\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_get_show_fallback, \"gtk_app_chooser_widget_get_show_fallback\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_set_show_other, \"gtk_app_chooser_widget_set_show_other\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_get_show_other, \"gtk_app_chooser_widget_get_show_other\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_set_show_all, \"gtk_app_chooser_widget_set_show_all\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_get_show_all, \"gtk_app_chooser_widget_get_show_all\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_set_default_text, \"gtk_app_chooser_widget_set_default_text\", LIBRARY.GTK);
	Linker.link(gtk_app_chooser_widget_get_default_text, \"gtk_app_chooser_widget_get_default_text\", LIBRARY.GTK);

	// gtk.BuildableT


	// gtk.BuildableT

	Linker.link(gtk_buildable_set_name, \"gtk_buildable_set_name\", LIBRARY.GTK);
	Linker.link(gtk_buildable_get_name, \"gtk_buildable_get_name\", LIBRARY.GTK);
	Linker.link(gtk_buildable_add_child, \"gtk_buildable_add_child\", LIBRARY.GTK);
	Linker.link(gtk_buildable_set_buildable_property, \"gtk_buildable_set_buildable_property\", LIBRARY.GTK);
	Linker.link(gtk_buildable_construct_child, \"gtk_buildable_construct_child\", LIBRARY.GTK);
	Linker.link(gtk_buildable_custom_tag_start, \"gtk_buildable_custom_tag_start\", LIBRARY.GTK);
	Linker.link(gtk_buildable_custom_tag_end, \"gtk_buildable_custom_tag_end\", LIBRARY.GTK);
	Linker.link(gtk_buildable_custom_finished, \"gtk_buildable_custom_finished\", LIBRARY.GTK);
	Linker.link(gtk_buildable_parser_finished, \"gtk_buildable_parser_finished\", LIBRARY.GTK);
	Linker.link(gtk_buildable_get_internal_child, \"gtk_buildable_get_internal_child\", LIBRARY.GTK);

	// gtk.Builder

	Linker.link(gtk_builder_new, \"gtk_builder_new\", LIBRARY.GTK);
	Linker.link(gtk_builder_add_from_file, \"gtk_builder_add_from_file\", LIBRARY.GTK);
	Linker.link(gtk_builder_add_from_resource, \"gtk_builder_add_from_resource\", LIBRARY.GTK);
	Linker.link(gtk_builder_add_from_string, \"gtk_builder_add_from_string\", LIBRARY.GTK);
	Linker.link(gtk_builder_add_objects_from_file, \"gtk_builder_add_objects_from_file\", LIBRARY.GTK);
	Linker.link(gtk_builder_add_objects_from_string, \"gtk_builder_add_objects_from_string\", LIBRARY.GTK);
	Linker.link(gtk_builder_add_objects_from_resource, \"gtk_builder_add_objects_from_resource\", LIBRARY.GTK);
	Linker.link(gtk_builder_get_object, \"gtk_builder_get_object\", LIBRARY.GTK);
	Linker.link(gtk_builder_get_objects, \"gtk_builder_get_objects\", LIBRARY.GTK);
	Linker.link(gtk_builder_connect_signals, \"gtk_builder_connect_signals\", LIBRARY.GTK);
	Linker.link(gtk_builder_connect_signals_full, \"gtk_builder_connect_signals_full\", LIBRARY.GTK);
	Linker.link(gtk_builder_set_translation_domain, \"gtk_builder_set_translation_domain\", LIBRARY.GTK);
	Linker.link(gtk_builder_get_translation_domain, \"gtk_builder_get_translation_domain\", LIBRARY.GTK);
	Linker.link(gtk_builder_get_type_from_name, \"gtk_builder_get_type_from_name\", LIBRARY.GTK);
	Linker.link(gtk_builder_value_from_string, \"gtk_builder_value_from_string\", LIBRARY.GTK);
	Linker.link(gtk_builder_value_from_string_type, \"gtk_builder_value_from_string_type\", LIBRARY.GTK);

	// gtk.Application

	Linker.link(gtk_application_new, \"gtk_application_new\", LIBRARY.GTK);
	Linker.link(gtk_application_add_window, \"gtk_application_add_window\", LIBRARY.GTK);
	Linker.link(gtk_application_remove_window, \"gtk_application_remove_window\", LIBRARY.GTK);
	Linker.link(gtk_application_get_windows, \"gtk_application_get_windows\", LIBRARY.GTK);
	Linker.link(gtk_application_get_window_by_id, \"gtk_application_get_window_by_id\", LIBRARY.GTK);
	Linker.link(gtk_application_get_active_window, \"gtk_application_get_active_window\", LIBRARY.GTK);
	Linker.link(gtk_application_inhibit, \"gtk_application_inhibit\", LIBRARY.GTK);
	Linker.link(gtk_application_uninhibit, \"gtk_application_uninhibit\", LIBRARY.GTK);
	Linker.link(gtk_application_is_inhibited, \"gtk_application_is_inhibited\", LIBRARY.GTK);
	Linker.link(gtk_application_get_app_menu, \"gtk_application_get_app_menu\", LIBRARY.GTK);
	Linker.link(gtk_application_set_app_menu, \"gtk_application_set_app_menu\", LIBRARY.GTK);
	Linker.link(gtk_application_get_menubar, \"gtk_application_get_menubar\", LIBRARY.GTK);
	Linker.link(gtk_application_set_menubar, \"gtk_application_set_menubar\", LIBRARY.GTK);
	Linker.link(gtk_application_add_accelerator, \"gtk_application_add_accelerator\", LIBRARY.GTK);
	Linker.link(gtk_application_remove_accelerator, \"gtk_application_remove_accelerator\", LIBRARY.GTK);

	// gtk.ApplicationWindow

	Linker.link(gtk_application_window_new, \"gtk_application_window_new\", LIBRARY.GTK);
	Linker.link(gtk_application_window_set_show_menubar, \"gtk_application_window_set_show_menubar\", LIBRARY.GTK);
	Linker.link(gtk_application_window_get_show_menubar, \"gtk_application_window_get_show_menubar\", LIBRARY.GTK);
	Linker.link(gtk_application_window_get_id, \"gtk_application_window_get_id\", LIBRARY.GTK);

	// gtk.ActionableT


	// gtk.ActionableT

	Linker.link(gtk_actionable_get_action_name, \"gtk_actionable_get_action_name\", LIBRARY.GTK);
	Linker.link(gtk_actionable_set_action_name, \"gtk_actionable_set_action_name\", LIBRARY.GTK);
	Linker.link(gtk_actionable_get_action_target_value, \"gtk_actionable_get_action_target_value\", LIBRARY.GTK);
	Linker.link(gtk_actionable_set_action_target_value, \"gtk_actionable_set_action_target_value\", LIBRARY.GTK);
	Linker.link(gtk_actionable_set_action_target, \"gtk_actionable_set_action_target\", LIBRARY.GTK);
	Linker.link(gtk_actionable_set_detailed_action_name, \"gtk_actionable_set_detailed_action_name\", LIBRARY.GTK);
}");

mixin( gshared ~"extern(C)
{
	// gtk.Main

	void function() c_gtk_disable_setlocale;
	PangoLanguage* function() c_gtk_get_default_language;
	gboolean function(int* argc, char*** argv) c_gtk_parse_args;
	void function(int* argc, char*** argv) c_gtk_init;
	gboolean function(int* argc, char*** argv) c_gtk_init_check;
	gboolean function(gint* argc, gchar*** argv, gchar* parameterString, GOptionEntry* entries, gchar* translationDomain, GError** error) c_gtk_init_with_args;
	GOptionGroup* function(gboolean openDefaultDisplay) c_gtk_get_option_group;
	gboolean function() c_gtk_events_pending;
	void function() c_gtk_main;
	guint function() c_gtk_main_level;
	void function() c_gtk_main_quit;
	gboolean function() c_gtk_main_iteration;
	gboolean function(gboolean blocking) c_gtk_main_iteration_do;
	void function(GdkEvent* event) c_gtk_main_do_event;
	void function(GtkWidget* widget) c_gtk_grab_add;
	GtkWidget* function() c_gtk_grab_get_current;
	void function(GtkWidget* widget) c_gtk_grab_remove;
	void function(GtkWidget* widget, GdkDevice* device, gboolean blockOthers) c_gtk_device_grab_add;
	void function(GtkWidget* widget, GdkDevice* device) c_gtk_device_grab_remove;
	guint function(GtkKeySnoopFunc snooper, void* funcData) c_gtk_key_snooper_install;
	void function(guint snooperHandlerId) c_gtk_key_snooper_remove;
	GdkEvent* function() c_gtk_get_current_event;
	guint32 function() c_gtk_get_current_event_time;
	gboolean function(GdkModifierType* state) c_gtk_get_current_event_state;
	GdkDevice* function() c_gtk_get_current_event_device;
	GtkWidget* function(GdkEvent* event) c_gtk_get_event_widget;
	void function(GtkWidget* widget, GdkEvent* event) c_gtk_propagate_event;

	// gtk.Version

	guint function() c_gtk_get_major_version;
	guint function() c_gtk_get_minor_version;
	guint function() c_gtk_get_micro_version;
	guint function() c_gtk_get_binary_age;
	guint function() c_gtk_get_interface_age;
	gchar* function(guint requiredMajor, guint requiredMinor, guint requiredMicro) c_gtk_check_version;

	// gtk.AccelGroup

	GtkAccelGroup* function() c_gtk_accel_group_new;
	void function(GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags, GClosure* closure) c_gtk_accel_group_connect;
	void function(GtkAccelGroup* accelGroup, gchar* accelPath, GClosure* closure) c_gtk_accel_group_connect_by_path;
	gboolean function(GtkAccelGroup* accelGroup, GClosure* closure) c_gtk_accel_group_disconnect;
	gboolean function(GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods) c_gtk_accel_group_disconnect_key;
	gboolean function(GtkAccelGroup* accelGroup, GQuark accelQuark, GObject* acceleratable, guint accelKey, GdkModifierType accelMods) c_gtk_accel_group_activate;
	void function(GtkAccelGroup* accelGroup) c_gtk_accel_group_lock;
	void function(GtkAccelGroup* accelGroup) c_gtk_accel_group_unlock;
	gboolean function(GtkAccelGroup* accelGroup) c_gtk_accel_group_get_is_locked;
	GtkAccelGroup* function(GClosure* closure) c_gtk_accel_group_from_accel_closure;
	GdkModifierType function(GtkAccelGroup* accelGroup) c_gtk_accel_group_get_modifier_mask;
	gboolean function(GObject* object, guint accelKey, GdkModifierType accelMods) c_gtk_accel_groups_activate;
	GSList* function(GObject* object) c_gtk_accel_groups_from_object;
	GtkAccelKey* function(GtkAccelGroup* accelGroup, GtkAccelGroupFindFunc findFunc, void* data) c_gtk_accel_group_find;
	gboolean function(guint keyval, GdkModifierType modifiers) c_gtk_accelerator_valid;
	void function(gchar* accelerator, guint* acceleratorKey, GdkModifierType* acceleratorMods) c_gtk_accelerator_parse;
	gchar* function(guint acceleratorKey, GdkModifierType acceleratorMods) c_gtk_accelerator_name;
	gchar* function(guint acceleratorKey, GdkModifierType acceleratorMods) c_gtk_accelerator_get_label;
	void function(gchar* accelerator, guint* acceleratorKey, guint** acceleratorCodes, GdkModifierType* acceleratorMods) c_gtk_accelerator_parse_with_keycode;
	gchar* function(GdkDisplay* display, guint acceleratorKey, guint keycode, GdkModifierType acceleratorMods) c_gtk_accelerator_name_with_keycode;
	gchar* function(GdkDisplay* display, guint acceleratorKey, guint keycode, GdkModifierType acceleratorMods) c_gtk_accelerator_get_label_with_keycode;
	void function(GdkModifierType defaultModMask) c_gtk_accelerator_set_default_mod_mask;
	GdkModifierType function() c_gtk_accelerator_get_default_mod_mask;

	// gtk.AccelMap

	void function(gchar* accelPath, guint accelKey, GdkModifierType accelMods) c_gtk_accel_map_add_entry;
	gboolean function(gchar* accelPath, GtkAccelKey* key) c_gtk_accel_map_lookup_entry;
	gboolean function(gchar* accelPath, guint accelKey, GdkModifierType accelMods, gboolean replace) c_gtk_accel_map_change_entry;
	void function(gchar* fileName) c_gtk_accel_map_load;
	void function(gchar* fileName) c_gtk_accel_map_save;
	void function(void* data, GtkAccelMapForeach foreachFunc) c_gtk_accel_map_foreach;
	void function(gint fd) c_gtk_accel_map_load_fd;
	void function(gint fd) c_gtk_accel_map_save_fd;
	void function(GScanner* scanner) c_gtk_accel_map_load_scanner;
	void function(gchar* filterPattern) c_gtk_accel_map_add_filter;
	void function(void* data, GtkAccelMapForeach foreachFunc) c_gtk_accel_map_foreach_unfiltered;
	GtkAccelMap* function() c_gtk_accel_map_get;
	void function(gchar* accelPath) c_gtk_accel_map_lock_path;
	void function(gchar* accelPath) c_gtk_accel_map_unlock_path;

	// gtk.Clipboard

	GtkClipboard* function(GdkAtom selection) c_gtk_clipboard_get;
	GtkClipboard* function(GdkDisplay* display, GdkAtom selection) c_gtk_clipboard_get_for_display;
	GdkDisplay* function(GtkClipboard* clipboard) c_gtk_clipboard_get_display;
	gboolean function(GtkClipboard* clipboard, GtkTargetEntry* targets, guint nTargets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, void* userData) c_gtk_clipboard_set_with_data;
	gboolean function(GtkClipboard* clipboard, GtkTargetEntry* targets, guint nTargets, GtkClipboardGetFunc getFunc, GtkClipboardClearFunc clearFunc, GObject* owner) c_gtk_clipboard_set_with_owner;
	GObject* function(GtkClipboard* clipboard) c_gtk_clipboard_get_owner;
	void function(GtkClipboard* clipboard) c_gtk_clipboard_clear;
	void function(GtkClipboard* clipboard, gchar* text, gint len) c_gtk_clipboard_set_text;
	void function(GtkClipboard* clipboard, GdkPixbuf* pixbuf) c_gtk_clipboard_set_image;
	void function(GtkClipboard* clipboard, GdkAtom target, GtkClipboardReceivedFunc callback, void* userData) c_gtk_clipboard_request_contents;
	void function(GtkClipboard* clipboard, GtkClipboardTextReceivedFunc callback, void* userData) c_gtk_clipboard_request_text;
	void function(GtkClipboard* clipboard, GtkClipboardImageReceivedFunc callback, void* userData) c_gtk_clipboard_request_image;
	void function(GtkClipboard* clipboard, GtkClipboardTargetsReceivedFunc callback, void* userData) c_gtk_clipboard_request_targets;
	void function(GtkClipboard* clipboard, GtkTextBuffer* buffer, GtkClipboardRichTextReceivedFunc callback, void* userData) c_gtk_clipboard_request_rich_text;
	void function(GtkClipboard* clipboard, GtkClipboardURIReceivedFunc callback, void* userData) c_gtk_clipboard_request_uris;
	GtkSelectionData* function(GtkClipboard* clipboard, GdkAtom target) c_gtk_clipboard_wait_for_contents;
	gchar* function(GtkClipboard* clipboard) c_gtk_clipboard_wait_for_text;
	GdkPixbuf* function(GtkClipboard* clipboard) c_gtk_clipboard_wait_for_image;
	guint8* function(GtkClipboard* clipboard, GtkTextBuffer* buffer, GdkAtom* format, gsize* length) c_gtk_clipboard_wait_for_rich_text;
	gchar** function(GtkClipboard* clipboard) c_gtk_clipboard_wait_for_uris;
	gboolean function(GtkClipboard* clipboard) c_gtk_clipboard_wait_is_text_available;
	gboolean function(GtkClipboard* clipboard) c_gtk_clipboard_wait_is_image_available;
	gboolean function(GtkClipboard* clipboard, GtkTextBuffer* buffer) c_gtk_clipboard_wait_is_rich_text_available;
	gboolean function(GtkClipboard* clipboard) c_gtk_clipboard_wait_is_uris_available;
	gboolean function(GtkClipboard* clipboard, GdkAtom** targets, gint* nTargets) c_gtk_clipboard_wait_for_targets;
	gboolean function(GtkClipboard* clipboard, GdkAtom target) c_gtk_clipboard_wait_is_target_available;
	void function(GtkClipboard* clipboard, GtkTargetEntry* targets, gint nTargets) c_gtk_clipboard_set_can_store;
	void function(GtkClipboard* clipboard) c_gtk_clipboard_store;

	// gtk.DragAndDrop

	void function(GtkWidget* widget, GtkDestDefaults flags, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_drag_dest_set;
	void function(GtkWidget* widget, GdkWindow* proxyWindow, GdkDragProtocol protocol, gboolean useCoordinates) c_gtk_drag_dest_set_proxy;
	void function(GtkWidget* widget) c_gtk_drag_dest_unset;
	GdkAtom function(GtkWidget* widget, GdkDragContext* context, GtkTargetList* targetList) c_gtk_drag_dest_find_target;
	GtkTargetList* function(GtkWidget* widget) c_gtk_drag_dest_get_target_list;
	void function(GtkWidget* widget, GtkTargetList* targetList) c_gtk_drag_dest_set_target_list;
	void function(GtkWidget* widget) c_gtk_drag_dest_add_text_targets;
	void function(GtkWidget* widget) c_gtk_drag_dest_add_image_targets;
	void function(GtkWidget* widget) c_gtk_drag_dest_add_uri_targets;
	void function(GtkWidget* widget, gboolean trackMotion) c_gtk_drag_dest_set_track_motion;
	gboolean function(GtkWidget* widget) c_gtk_drag_dest_get_track_motion;
	void function(GdkDragContext* context, gboolean success, gboolean del, guint32 time) c_gtk_drag_finish;
	void function(GtkWidget* widget, GdkDragContext* context, GdkAtom target, guint32 time) c_gtk_drag_get_data;
	GtkWidget* function(GdkDragContext* context) c_gtk_drag_get_source_widget;
	void function(GtkWidget* widget) c_gtk_drag_highlight;
	void function(GtkWidget* widget) c_gtk_drag_unhighlight;
	GdkDragContext* function(GtkWidget* widget, GtkTargetList* targets, GdkDragAction actions, gint button, GdkEvent* event) c_gtk_drag_begin;
	void function(GdkDragContext* context, GtkWidget* widget, gint hotX, gint hotY) c_gtk_drag_set_icon_widget;
	void function(GdkDragContext* context, GdkPixbuf* pixbuf, gint hotX, gint hotY) c_gtk_drag_set_icon_pixbuf;
	void function(GdkDragContext* context, gchar* stockId, gint hotX, gint hotY) c_gtk_drag_set_icon_stock;
	void function(GdkDragContext* context, cairo_surface_t* surface) c_gtk_drag_set_icon_surface;
	void function(GdkDragContext* context, gchar* iconName, gint hotX, gint hotY) c_gtk_drag_set_icon_name;
	void function(GdkDragContext* context, GIcon* icon, gint hotX, gint hotY) c_gtk_drag_set_icon_gicon;
	void function(GdkDragContext* context) c_gtk_drag_set_icon_default;
	gboolean function(GtkWidget* widget, gint startX, gint startY, gint currentX, gint currentY) c_gtk_drag_check_threshold;
	void function(GtkWidget* widget, GdkModifierType startButtonMask, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_drag_source_set;
	void function(GtkWidget* widget, GdkPixbuf* pixbuf) c_gtk_drag_source_set_icon_pixbuf;
	void function(GtkWidget* widget, gchar* stockId) c_gtk_drag_source_set_icon_stock;
	void function(GtkWidget* widget, gchar* iconName) c_gtk_drag_source_set_icon_name;
	void function(GtkWidget* widget, GIcon* icon) c_gtk_drag_source_set_icon_gicon;
	void function(GtkWidget* widget) c_gtk_drag_source_unset;
	void function(GtkWidget* widget, GtkTargetList* targetList) c_gtk_drag_source_set_target_list;
	GtkTargetList* function(GtkWidget* widget) c_gtk_drag_source_get_target_list;
	void function(GtkWidget* widget) c_gtk_drag_source_add_text_targets;
	void function(GtkWidget* widget) c_gtk_drag_source_add_image_targets;
	void function(GtkWidget* widget) c_gtk_drag_source_add_uri_targets;

	// gtk.StockItem

	void function(GtkStockItem* items, guint nItems) c_gtk_stock_add;
	void function(GtkStockItem* items, guint nItems) c_gtk_stock_add_static;
	GtkStockItem* function(GtkStockItem* item) c_gtk_stock_item_copy;
	void function(GtkStockItem* item) c_gtk_stock_item_free;
	GSList* function() c_gtk_stock_list_ids;
	gboolean function(gchar* stockId, GtkStockItem* item) c_gtk_stock_lookup;
	void function(gchar* domain, GtkTranslateFunc func, void* data, GDestroyNotify notify) c_gtk_stock_set_translate_func;

	// gtk.Settings

	GtkSettings* function() c_gtk_settings_get_default;
	GtkSettings* function(GdkScreen* screen) c_gtk_settings_get_for_screen;
	void function(GParamSpec* pspec) c_gtk_settings_install_property;
	void function(GParamSpec* pspec, GtkRcPropertyParser parser) c_gtk_settings_install_property_parser;
	gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue) c_gtk_rc_property_parse_color;
	gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue) c_gtk_rc_property_parse_enum;
	gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue) c_gtk_rc_property_parse_flags;
	gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue) c_gtk_rc_property_parse_requisition;
	gboolean function(GParamSpec* pspec, GString* gstring, GValue* propertyValue) c_gtk_rc_property_parse_border;
	void function(GtkSettings* settings, gchar* name, GtkSettingsValue* svalue) c_gtk_settings_set_property_value;
	void function(GtkSettings* settings, gchar* name, gchar* vString, gchar* origin) c_gtk_settings_set_string_property;
	void function(GtkSettings* settings, gchar* name, glong vLong, gchar* origin) c_gtk_settings_set_long_property;
	void function(GtkSettings* settings, gchar* name, gdouble vDouble, gchar* origin) c_gtk_settings_set_double_property;

	// gtk.BindingSet

	void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers, gchar* signalName, GSList* bindingArgs) c_gtk_binding_entry_add_signall;
	GtkBindingSet* function(gchar* setName) c_gtk_binding_set_new;
	GtkBindingSet* function(void* objectClass) c_gtk_binding_set_by_class;
	GtkBindingSet* function(gchar* setName) c_gtk_binding_set_find;
	gboolean function(GObject* object, guint keyval, GdkModifierType modifiers) c_gtk_bindings_activate;
	gboolean function(GObject* object, GdkEventKey* event) c_gtk_bindings_activate_event;
	gboolean function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers, GObject* object) c_gtk_binding_set_activate;
	void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers, gchar* signalName, guint nArgs, ... ) c_gtk_binding_entry_add_signal;
	GTokenType function(GtkBindingSet* bindingSet, gchar* signalDesc) c_gtk_binding_entry_add_signal_from_string;
	void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers) c_gtk_binding_entry_skip;
	void function(GtkBindingSet* bindingSet, guint keyval, GdkModifierType modifiers) c_gtk_binding_entry_remove;
	void function(GtkBindingSet* bindingSet, GtkPathType pathType, gchar* pathPattern, GtkPathPriorityType priority) c_gtk_binding_set_add_path;

	// gtk.TargetEntry

	GtkTargetEntry* function(gchar* target, guint flags, guint info) c_gtk_target_entry_new;
	GtkTargetEntry* function(GtkTargetEntry* data) c_gtk_target_entry_copy;
	void function(GtkTargetEntry* data) c_gtk_target_entry_free;

	// gtk.TargetList

	GtkTargetList* function(GtkTargetEntry* targets, guint ntargets) c_gtk_target_list_new;
	GtkTargetList* function(GtkTargetList* list) c_gtk_target_list_ref;
	void function(GtkTargetList* list) c_gtk_target_list_unref;
	void function(GtkTargetList* list, GdkAtom target, guint flags, guint info) c_gtk_target_list_add;
	void function(GtkTargetList* list, GtkTargetEntry* targets, guint ntargets) c_gtk_target_list_add_table;
	void function(GtkTargetList* list, guint info) c_gtk_target_list_add_text_targets;
	void function(GtkTargetList* list, guint info, gboolean writable) c_gtk_target_list_add_image_targets;
	void function(GtkTargetList* list, guint info) c_gtk_target_list_add_uri_targets;
	void function(GtkTargetList* list, guint info, gboolean deserializable, GtkTextBuffer* buffer) c_gtk_target_list_add_rich_text_targets;
	void function(GtkTargetList* list, GdkAtom target) c_gtk_target_list_remove;
	gboolean function(GtkTargetList* list, GdkAtom target, guint* info) c_gtk_target_list_find;
	void function(GtkTargetEntry* targets, gint nTargets) c_gtk_target_table_free;
	GtkTargetEntry* function(GtkTargetList* list, gint* nTargets) c_gtk_target_table_new_from_list;
	gboolean function(GdkAtom* targets, gint nTargets, gboolean writable) c_gtk_targets_include_image;
	gboolean function(GdkAtom* targets, gint nTargets) c_gtk_targets_include_text;
	gboolean function(GdkAtom* targets, gint nTargets) c_gtk_targets_include_uri;
	gboolean function(GdkAtom* targets, gint nTargets, GtkTextBuffer* buffer) c_gtk_targets_include_rich_text;

	// gtk.SelectionData

	gboolean function(GtkWidget* widget, GdkAtom selection, guint32 time) c_gtk_selection_owner_set;
	gboolean function(GdkDisplay* display, GtkWidget* widget, GdkAtom selection, guint32 time) c_gtk_selection_owner_set_for_display;
	void function(GtkWidget* widget, GdkAtom selection, GdkAtom target, guint info) c_gtk_selection_add_target;
	void function(GtkWidget* widget, GdkAtom selection, GtkTargetEntry* targets, guint ntargets) c_gtk_selection_add_targets;
	void function(GtkWidget* widget, GdkAtom selection) c_gtk_selection_clear_targets;
	gboolean function(GtkWidget* widget, GdkAtom selection, GdkAtom target, guint32 time) c_gtk_selection_convert;
	void function(GtkSelectionData* selectionData, GdkAtom type, gint format, guchar* data, gint length) c_gtk_selection_data_set;
	gboolean function(GtkSelectionData* selectionData, gchar* str, gint len) c_gtk_selection_data_set_text;
	guchar* function(GtkSelectionData* selectionData) c_gtk_selection_data_get_text;
	gboolean function(GtkSelectionData* selectionData, GdkPixbuf* pixbuf) c_gtk_selection_data_set_pixbuf;
	GdkPixbuf* function(GtkSelectionData* selectionData) c_gtk_selection_data_get_pixbuf;
	gboolean function(GtkSelectionData* selectionData, gchar** uris) c_gtk_selection_data_set_uris;
	gchar** function(GtkSelectionData* selectionData) c_gtk_selection_data_get_uris;
	gboolean function(GtkSelectionData* selectionData, GdkAtom** targets, gint* nAtoms) c_gtk_selection_data_get_targets;
	gboolean function(GtkSelectionData* selectionData, gboolean writable) c_gtk_selection_data_targets_include_image;
	gboolean function(GtkSelectionData* selectionData) c_gtk_selection_data_targets_include_text;
	gboolean function(GtkSelectionData* selectionData) c_gtk_selection_data_targets_include_uri;
	gboolean function(GtkSelectionData* selectionData, GtkTextBuffer* buffer) c_gtk_selection_data_targets_include_rich_text;
	GdkAtom function(GtkSelectionData* selectionData) c_gtk_selection_data_get_selection;
	guchar* function(GtkSelectionData* selectionData) c_gtk_selection_data_get_data;
	gint function(GtkSelectionData* selectionData) c_gtk_selection_data_get_length;
	guchar* function(GtkSelectionData* selectionData, gint* length) c_gtk_selection_data_get_data_with_length;
	GdkAtom function(GtkSelectionData* selectionData) c_gtk_selection_data_get_data_type;
	GdkDisplay* function(GtkSelectionData* selectionData) c_gtk_selection_data_get_display;
	gint function(GtkSelectionData* selectionData) c_gtk_selection_data_get_format;
	GdkAtom function(GtkSelectionData* selectionData) c_gtk_selection_data_get_target;
	void function(GtkWidget* widget) c_gtk_selection_remove_all;
	GtkSelectionData* function(GtkSelectionData* data) c_gtk_selection_data_copy;
	void function(GtkSelectionData* data) c_gtk_selection_data_free;

	// gtk.Testing

	GtkWidget* function(gchar* windowTitle, gchar* dialogText) c_gtk_test_create_simple_window;
	GtkWidget* function(GType widgetType, gchar* firstPropertyName, ... ) c_gtk_test_create_widget;
	GtkWidget* function(gchar* windowTitle, gchar* dialogText, ... ) c_gtk_test_display_button_window;
	GtkWidget* function(GtkWidget* widget, gchar* labelPattern) c_gtk_test_find_label;
	GtkWidget* function(GtkWidget* baseWidget, GType widgetType) c_gtk_test_find_sibling;
	GtkWidget* function(GtkWidget* widget, gchar* labelPattern, GType widgetType) c_gtk_test_find_widget;
	void function(int* argcp, char*** argvp, ... ) c_gtk_test_init;
	GType* function(guint* nTypes) c_gtk_test_list_all_types;
	void function() c_gtk_test_register_all_types;
	double function(GtkWidget* widget) c_gtk_test_slider_get_value;
	void function(GtkWidget* widget, double percentage) c_gtk_test_slider_set_perc;
	gboolean function(GtkSpinButton* spinner, guint button, gboolean upwards) c_gtk_test_spin_button_click;
	gchar* function(GtkWidget* widget) c_gtk_test_text_get;
	void function(GtkWidget* widget, gchar* string) c_gtk_test_text_set;
	gboolean function(GtkWidget* widget, guint button, GdkModifierType modifiers) c_gtk_test_widget_click;
	gboolean function(GtkWidget* widget, guint keyval, GdkModifierType modifiers) c_gtk_test_widget_send_key;

	// gtk.MountOperation

	GMountOperation* function(GtkWindow* parent) c_gtk_mount_operation_new;
	gboolean function(GtkMountOperation* op) c_gtk_mount_operation_is_showing;
	void function(GtkMountOperation* op, GtkWindow* parent) c_gtk_mount_operation_set_parent;
	GtkWindow* function(GtkMountOperation* op) c_gtk_mount_operation_get_parent;
	void function(GtkMountOperation* op, GdkScreen* screen) c_gtk_mount_operation_set_screen;
	GdkScreen* function(GtkMountOperation* op) c_gtk_mount_operation_get_screen;
	gboolean function(GdkScreen* screen, gchar* uri, guint32 timestamp, GError** error) c_gtk_show_uri;

	// gtk.StyleContext

	GtkStyleContext* function() c_gtk_style_context_new;
	void function(GtkStyleContext* context, GtkStyleProvider* provider, guint priority) c_gtk_style_context_add_provider;
	void function(GdkScreen* screen, GtkStyleProvider* provider, guint priority) c_gtk_style_context_add_provider_for_screen;
	void function(GtkStyleContext* context, GtkStateFlags state, ... ) c_gtk_style_context_get;
	GtkTextDirection function(GtkStyleContext* context) c_gtk_style_context_get_direction;
	GtkJunctionSides function(GtkStyleContext* context) c_gtk_style_context_get_junction_sides;
	GtkStyleContext* function(GtkStyleContext* context) c_gtk_style_context_get_parent;
	GtkWidgetPath* function(GtkStyleContext* context) c_gtk_style_context_get_path;
	void function(GtkStyleContext* context, gchar* property, GtkStateFlags state, GValue* value) c_gtk_style_context_get_property;
	GdkScreen* function(GtkStyleContext* context) c_gtk_style_context_get_screen;
	GtkStateFlags function(GtkStyleContext* context) c_gtk_style_context_get_state;
	void function(GtkStyleContext* context, ... ) c_gtk_style_context_get_style;
	void function(GtkStyleContext* context, gchar* propertyName, GValue* value) c_gtk_style_context_get_style_property;
	void function(GtkStyleContext* context, va_list args) c_gtk_style_context_get_style_valist;
	void function(GtkStyleContext* context, GtkStateFlags state, va_list args) c_gtk_style_context_get_valist;
	GtkCssSection* function(GtkStyleContext* context, gchar* property) c_gtk_style_context_get_section;
	void function(GtkStyleContext* context, GtkStateFlags state, GdkRGBA* color) c_gtk_style_context_get_color;
	void function(GtkStyleContext* context, GtkStateFlags state, GdkRGBA* color) c_gtk_style_context_get_background_color;
	void function(GtkStyleContext* context, GtkStateFlags state, GdkRGBA* color) c_gtk_style_context_get_border_color;
	void function(GtkStyleContext* context, GtkStateFlags state, GtkBorder* border) c_gtk_style_context_get_border;
	void function(GtkStyleContext* context, GtkStateFlags state, GtkBorder* padding) c_gtk_style_context_get_padding;
	void function(GtkStyleContext* context, GtkStateFlags state, GtkBorder* margin) c_gtk_style_context_get_margin;
	PangoFontDescription* function(GtkStyleContext* context, GtkStateFlags state) c_gtk_style_context_get_font;
	void function(GtkStyleContext* context) c_gtk_style_context_invalidate;
	gboolean function(GtkStyleContext* context, GtkStateType state, gdouble* progress) c_gtk_style_context_state_is_running;
	gboolean function(GtkStyleContext* context, gchar* colorName, GdkRGBA* color) c_gtk_style_context_lookup_color;
	GtkIconSet* function(GtkStyleContext* context, gchar* stockId) c_gtk_style_context_lookup_icon_set;
	void function(GtkStyleContext* context, GdkWindow* window, void* regionId, GtkStateType state, gboolean stateValue) c_gtk_style_context_notify_state_change;
	void function(GtkStyleContext* context) c_gtk_style_context_pop_animatable_region;
	void function(GtkStyleContext* context, void* regionId) c_gtk_style_context_push_animatable_region;
	void function(GtkStyleContext* context, void* regionId) c_gtk_style_context_cancel_animations;
	void function(GtkStyleContext* context, GdkWindow* window, gint dx, gint dy) c_gtk_style_context_scroll_animations;
	void function(GtkStyleContext* context, GtkStyleProvider* provider) c_gtk_style_context_remove_provider;
	void function(GdkScreen* screen, GtkStyleProvider* provider) c_gtk_style_context_remove_provider_for_screen;
	void function(GdkScreen* screen) c_gtk_style_context_reset_widgets;
	void function(GtkStyleContext* context, GdkWindow* window) c_gtk_style_context_set_background;
	void function(GtkStyleContext* context) c_gtk_style_context_restore;
	void function(GtkStyleContext* context) c_gtk_style_context_save;
	void function(GtkStyleContext* context, GtkTextDirection direction) c_gtk_style_context_set_direction;
	void function(GtkStyleContext* context, GtkJunctionSides sides) c_gtk_style_context_set_junction_sides;
	void function(GtkStyleContext* context, GtkStyleContext* parent) c_gtk_style_context_set_parent;
	void function(GtkStyleContext* context, GtkWidgetPath* path) c_gtk_style_context_set_path;
	void function(GtkStyleContext* context, gchar* className) c_gtk_style_context_add_class;
	void function(GtkStyleContext* context, gchar* className) c_gtk_style_context_remove_class;
	gboolean function(GtkStyleContext* context, gchar* className) c_gtk_style_context_has_class;
	GList* function(GtkStyleContext* context) c_gtk_style_context_list_classes;
	void function(GtkStyleContext* context, gchar* regionName, GtkRegionFlags flags) c_gtk_style_context_add_region;
	void function(GtkStyleContext* context, gchar* regionName) c_gtk_style_context_remove_region;
	gboolean function(GtkStyleContext* context, gchar* regionName, GtkRegionFlags* flagsReturn) c_gtk_style_context_has_region;
	GList* function(GtkStyleContext* context) c_gtk_style_context_list_regions;
	void function(GtkStyleContext* context, GdkScreen* screen) c_gtk_style_context_set_screen;
	void function(GtkStyleContext* context, GtkStateFlags flags) c_gtk_style_context_set_state;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble angle, gdouble x, gdouble y, gdouble size) c_gtk_render_arrow;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height) c_gtk_render_background;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height) c_gtk_render_check;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height) c_gtk_render_expander;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height, GtkPositionType gapSide) c_gtk_render_extension;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height) c_gtk_render_focus;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height) c_gtk_render_frame;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height, GtkPositionType gapSide, gdouble xy0_Gap, gdouble xy1_Gap) c_gtk_render_frame_gap;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height) c_gtk_render_handle;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, PangoLayout* layout) c_gtk_render_layout;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x0, gdouble y0, gdouble x1, gdouble y1) c_gtk_render_line;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height) c_gtk_render_option;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height, GtkOrientation orientation) c_gtk_render_slider;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, gdouble width, gdouble height) c_gtk_render_activity;
	GdkPixbuf* function(GtkStyleContext* context, GtkIconSource* source, GtkIconSize size) c_gtk_render_icon_pixbuf;
	void function(GtkStyleContext* context, cairo_t* cr, GdkPixbuf* pixbuf, gdouble x, gdouble y) c_gtk_render_icon;
	void function(GtkStyleContext* context, cairo_t* cr, gdouble x, gdouble y, PangoLayout* layout, int index, PangoDirection direction) c_gtk_render_insertion_cursor;

	// gtk.Border

	GtkBorder* function() c_gtk_border_new;
	GtkBorder* function(GtkBorder* border) c_gtk_border_copy;
	void function(GtkBorder* border) c_gtk_border_free;

	// gtk.CssProvider

	GtkCssProvider* function() c_gtk_css_provider_get_default;
	GtkCssProvider* function(gchar* name, gchar* variant) c_gtk_css_provider_get_named;
	gboolean function(GtkCssProvider* cssProvider, gchar* data, gssize length, GError** error) c_gtk_css_provider_load_from_data;
	gboolean function(GtkCssProvider* cssProvider, GFile* file, GError** error) c_gtk_css_provider_load_from_file;
	gboolean function(GtkCssProvider* cssProvider, gchar* path, GError** error) c_gtk_css_provider_load_from_path;
	GtkCssProvider* function() c_gtk_css_provider_new;
	char* function(GtkCssProvider* provider) c_gtk_css_provider_to_string;

	// gtk.CssSection

	guint function(GtkCssSection* section) c_gtk_css_section_get_end_line;
	guint function(GtkCssSection* section) c_gtk_css_section_get_end_position;
	GFile* function(GtkCssSection* section) c_gtk_css_section_get_file;
	GtkCssSection* function(GtkCssSection* section) c_gtk_css_section_get_parent;
	GtkCssSectionType function(GtkCssSection* section) c_gtk_css_section_get_section_type;
	guint function(GtkCssSection* section) c_gtk_css_section_get_start_line;
	guint function(GtkCssSection* section) c_gtk_css_section_get_start_position;
	GtkCssSection* function(GtkCssSection* section) c_gtk_css_section_ref;
	void function(GtkCssSection* section) c_gtk_css_section_unref;

	// gtk.StyleProviderT


	// gtk.StyleProviderT

	GtkIconFactory* function(GtkStyleProvider* provider, GtkWidgetPath* path) c_gtk_style_provider_get_icon_factory;
	GtkStyleProperties* function(GtkStyleProvider* provider, GtkWidgetPath* path) c_gtk_style_provider_get_style;
	gboolean function(GtkStyleProvider* provider, GtkWidgetPath* path, GtkStateFlags state, GParamSpec* pspec, GValue* value) c_gtk_style_provider_get_style_property;

	// gtk.StyleProperties

	void function(GtkStyleProperties* props) c_gtk_style_properties_clear;
	void function(GtkStyleProperties* props, GtkStateFlags state, ... ) c_gtk_style_properties_get;
	gboolean function(GtkStyleProperties* props, gchar* property, GtkStateFlags state, GValue* value) c_gtk_style_properties_get_property;
	void function(GtkStyleProperties* props, GtkStateFlags state, va_list args) c_gtk_style_properties_get_valist;
	GtkSymbolicColor* function(GtkStyleProperties* props, gchar* name) c_gtk_style_properties_lookup_color;
	gboolean function(gchar* propertyName, GtkStylePropertyParser* parseFunc, GParamSpec** pspec) c_gtk_style_properties_lookup_property;
	void function(GtkStyleProperties* props, gchar* name, GtkSymbolicColor* color) c_gtk_style_properties_map_color;
	void function(GtkStyleProperties* props, GtkStyleProperties* propsToMerge, gboolean replace) c_gtk_style_properties_merge;
	GtkStyleProperties* function() c_gtk_style_properties_new;
	void function(GtkStylePropertyParser parseFunc, GParamSpec* pspec) c_gtk_style_properties_register_property;
	void function(GtkStyleProperties* props, GtkStateFlags state, ... ) c_gtk_style_properties_set;
	void function(GtkStyleProperties* props, gchar* property, GtkStateFlags state, GValue* value) c_gtk_style_properties_set_property;
	void function(GtkStyleProperties* props, GtkStateFlags state, va_list args) c_gtk_style_properties_set_valist;
	void function(GtkStyleProperties* props, gchar* property, GtkStateFlags state) c_gtk_style_properties_unset_property;

	// gtk.ThemingEngine

	void function(GtkThemingEngine* engine, GtkStateFlags state, ... ) c_gtk_theming_engine_get;
	GtkTextDirection function(GtkThemingEngine* engine) c_gtk_theming_engine_get_direction;
	GtkJunctionSides function(GtkThemingEngine* engine) c_gtk_theming_engine_get_junction_sides;
	GtkWidgetPath* function(GtkThemingEngine* engine) c_gtk_theming_engine_get_path;
	void function(GtkThemingEngine* engine, gchar* property, GtkStateFlags state, GValue* value) c_gtk_theming_engine_get_property;
	GdkScreen* function(GtkThemingEngine* engine) c_gtk_theming_engine_get_screen;
	GtkStateFlags function(GtkThemingEngine* engine) c_gtk_theming_engine_get_state;
	void function(GtkThemingEngine* engine, ... ) c_gtk_theming_engine_get_style;
	void function(GtkThemingEngine* engine, gchar* propertyName, GValue* value) c_gtk_theming_engine_get_style_property;
	void function(GtkThemingEngine* engine, va_list args) c_gtk_theming_engine_get_style_valist;
	void function(GtkThemingEngine* engine, GtkStateFlags state, va_list args) c_gtk_theming_engine_get_valist;
	void function(GtkThemingEngine* engine, GtkStateFlags state, GdkRGBA* color) c_gtk_theming_engine_get_color;
	void function(GtkThemingEngine* engine, GtkStateFlags state, GdkRGBA* color) c_gtk_theming_engine_get_background_color;
	void function(GtkThemingEngine* engine, GtkStateFlags state, GdkRGBA* color) c_gtk_theming_engine_get_border_color;
	void function(GtkThemingEngine* engine, GtkStateFlags state, GtkBorder* border) c_gtk_theming_engine_get_border;
	void function(GtkThemingEngine* engine, GtkStateFlags state, GtkBorder* padding) c_gtk_theming_engine_get_padding;
	void function(GtkThemingEngine* engine, GtkStateFlags state, GtkBorder* margin) c_gtk_theming_engine_get_margin;
	PangoFontDescription* function(GtkThemingEngine* engine, GtkStateFlags state) c_gtk_theming_engine_get_font;
	gboolean function(GtkThemingEngine* engine, gchar* styleClass) c_gtk_theming_engine_has_class;
	gboolean function(GtkThemingEngine* engine, gchar* styleRegion, GtkRegionFlags* flags) c_gtk_theming_engine_has_region;
	gboolean function(GtkThemingEngine* engine, gchar* colorName, GdkRGBA* color) c_gtk_theming_engine_lookup_color;
	gboolean function(GtkThemingEngine* engine, GtkStateType state, gdouble* progress) c_gtk_theming_engine_state_is_running;
	GtkThemingEngine* function(gchar* name) c_gtk_theming_engine_load;
	void function(gchar* nameSpace, GtkStylePropertyParser parseFunc, GParamSpec* pspec) c_gtk_theming_engine_register_property;

	// gtk.WidgetPath

	gint function(GtkWidgetPath* path, GType type) c_gtk_widget_path_append_type;
	gint function(GtkWidgetPath* path, GtkWidgetPath* siblings, guint siblingIndex) c_gtk_widget_path_append_with_siblings;
	gint function(GtkWidgetPath* path, GtkWidget* widget) c_gtk_widget_path_append_for_widget;
	GtkWidgetPath* function(GtkWidgetPath* path) c_gtk_widget_path_copy;
	GtkWidgetPath* function(GtkWidgetPath* path) c_gtk_widget_path_ref;
	void function(GtkWidgetPath* path) c_gtk_widget_path_unref;
	void function(GtkWidgetPath* path) c_gtk_widget_path_free;
	GType function(GtkWidgetPath* path) c_gtk_widget_path_get_object_type;
	gboolean function(GtkWidgetPath* path, GType type) c_gtk_widget_path_has_parent;
	gboolean function(GtkWidgetPath* path, GType type) c_gtk_widget_path_is_type;
	void function(GtkWidgetPath* path, gint pos, gchar* name) c_gtk_widget_path_iter_add_class;
	void function(GtkWidgetPath* path, gint pos, gchar* name, GtkRegionFlags flags) c_gtk_widget_path_iter_add_region;
	void function(GtkWidgetPath* path, gint pos) c_gtk_widget_path_iter_clear_classes;
	void function(GtkWidgetPath* path, gint pos) c_gtk_widget_path_iter_clear_regions;
	gchar* function(GtkWidgetPath* path, gint pos) c_gtk_widget_path_iter_get_name;
	GType function(GtkWidgetPath* path, gint pos) c_gtk_widget_path_iter_get_object_type;
	GtkWidgetPath* function(GtkWidgetPath* path, gint pos) c_gtk_widget_path_iter_get_siblings;
	guint function(GtkWidgetPath* path, gint pos) c_gtk_widget_path_iter_get_sibling_index;
	gboolean function(GtkWidgetPath* path, gint pos, gchar* name) c_gtk_widget_path_iter_has_class;
	gboolean function(GtkWidgetPath* path, gint pos, gchar* name) c_gtk_widget_path_iter_has_name;
	gboolean function(GtkWidgetPath* path, gint pos, GQuark qname) c_gtk_widget_path_iter_has_qclass;
	gboolean function(GtkWidgetPath* path, gint pos, GQuark qname) c_gtk_widget_path_iter_has_qname;
	gboolean function(GtkWidgetPath* path, gint pos, GQuark qname, GtkRegionFlags* flags) c_gtk_widget_path_iter_has_qregion;
	gboolean function(GtkWidgetPath* path, gint pos, gchar* name, GtkRegionFlags* flags) c_gtk_widget_path_iter_has_region;
	GSList* function(GtkWidgetPath* path, gint pos) c_gtk_widget_path_iter_list_classes;
	GSList* function(GtkWidgetPath* path, gint pos) c_gtk_widget_path_iter_list_regions;
	void function(GtkWidgetPath* path, gint pos, gchar* name) c_gtk_widget_path_iter_remove_class;
	void function(GtkWidgetPath* path, gint pos, gchar* name) c_gtk_widget_path_iter_remove_region;
	void function(GtkWidgetPath* path, gint pos, gchar* name) c_gtk_widget_path_iter_set_name;
	void function(GtkWidgetPath* path, gint pos, GType type) c_gtk_widget_path_iter_set_object_type;
	gint function(GtkWidgetPath* path) c_gtk_widget_path_length;
	GtkWidgetPath* function() c_gtk_widget_path_new;
	void function(GtkWidgetPath* path, GType type) c_gtk_widget_path_prepend_type;
	char* function(GtkWidgetPath* path) c_gtk_widget_path_to_string;

	// gtk.SymbolicColor

	GtkSymbolicColor* function(GdkRGBA* color) c_gtk_symbolic_color_new_literal;
	GtkSymbolicColor* function(gchar* name) c_gtk_symbolic_color_new_name;
	GtkSymbolicColor* function(GtkSymbolicColor* color, gdouble factor) c_gtk_symbolic_color_new_shade;
	GtkSymbolicColor* function(GtkSymbolicColor* color, gdouble factor) c_gtk_symbolic_color_new_alpha;
	GtkSymbolicColor* function(GtkSymbolicColor* color1, GtkSymbolicColor* color2, gdouble factor) c_gtk_symbolic_color_new_mix;
	GtkSymbolicColor* function(gchar* themeClass, gint id) c_gtk_symbolic_color_new_win32;
	GtkSymbolicColor* function(GtkSymbolicColor* color) c_gtk_symbolic_color_ref;
	void function(GtkSymbolicColor* color) c_gtk_symbolic_color_unref;
	gboolean function(GtkSymbolicColor* color, GtkStyleProperties* props, GdkRGBA* resolvedColor) c_gtk_symbolic_color_resolve;
	char* function(GtkSymbolicColor* color) c_gtk_symbolic_color_to_string;

	// gtk.Gradient

	GtkGradient* function(gdouble x0, gdouble y0, gdouble x1, gdouble y1) c_gtk_gradient_new_linear;
	GtkGradient* function(gdouble x0, gdouble y0, gdouble radius0, gdouble x1, gdouble y1, gdouble radius1) c_gtk_gradient_new_radial;
	void function(GtkGradient* gradient, gdouble offset, GtkSymbolicColor* color) c_gtk_gradient_add_color_stop;
	GtkGradient* function(GtkGradient* gradient) c_gtk_gradient_ref;
	void function(GtkGradient* gradient) c_gtk_gradient_unref;
	gboolean function(GtkGradient* gradient, GtkStyleProperties* props, cairo_pattern_t** resolvedGradient) c_gtk_gradient_resolve;
	cairo_pattern_t* function(GtkGradient* gradient, GtkStyleContext* context) c_gtk_gradient_resolve_for_context;
	char* function(GtkGradient* gradient) c_gtk_gradient_to_string;

	// gtk.IconTheme

	GtkIconTheme* function() c_gtk_icon_theme_new;
	GtkIconTheme* function() c_gtk_icon_theme_get_default;
	GtkIconTheme* function(GdkScreen* screen) c_gtk_icon_theme_get_for_screen;
	void function(GtkIconTheme* iconTheme, GdkScreen* screen) c_gtk_icon_theme_set_screen;
	void function(GtkIconTheme* iconTheme, gchar** path, gint nElements) c_gtk_icon_theme_set_search_path;
	void function(GtkIconTheme* iconTheme, gchar*** path, gint* nElements) c_gtk_icon_theme_get_search_path;
	void function(GtkIconTheme* iconTheme, gchar* path) c_gtk_icon_theme_append_search_path;
	void function(GtkIconTheme* iconTheme, gchar* path) c_gtk_icon_theme_prepend_search_path;
	void function(GtkIconTheme* iconTheme, gchar* themeName) c_gtk_icon_theme_set_custom_theme;
	gboolean function(GtkIconTheme* iconTheme, gchar* iconName) c_gtk_icon_theme_has_icon;
	GtkIconInfo* function(GtkIconTheme* iconTheme, gchar* iconName, gint size, GtkIconLookupFlags flags) c_gtk_icon_theme_lookup_icon;
	GtkIconInfo* function(GtkIconTheme* iconTheme, gchar** iconNames, gint size, GtkIconLookupFlags flags) c_gtk_icon_theme_choose_icon;
	GtkIconInfo* function(GtkIconTheme* iconTheme, GIcon* icon, gint size, GtkIconLookupFlags flags) c_gtk_icon_theme_lookup_by_gicon;
	GdkPixbuf* function(GtkIconTheme* iconTheme, gchar* iconName, gint size, GtkIconLookupFlags flags, GError** error) c_gtk_icon_theme_load_icon;
	GList* function(GtkIconTheme* iconTheme) c_gtk_icon_theme_list_contexts;
	GList* function(GtkIconTheme* iconTheme, gchar* context) c_gtk_icon_theme_list_icons;
	gint* function(GtkIconTheme* iconTheme, gchar* iconName) c_gtk_icon_theme_get_icon_sizes;
	char* function(GtkIconTheme* iconTheme) c_gtk_icon_theme_get_example_icon_name;
	gboolean function(GtkIconTheme* iconTheme) c_gtk_icon_theme_rescan_if_needed;
	void function(gchar* iconName, gint size, GdkPixbuf* pixbuf) c_gtk_icon_theme_add_builtin_icon;

	// gtk.IconInfo

	GtkIconInfo* function(GtkIconInfo* iconInfo) c_gtk_icon_info_copy;
	void function(GtkIconInfo* iconInfo) c_gtk_icon_info_free;
	GtkIconInfo* function(GtkIconTheme* iconTheme, GdkPixbuf* pixbuf) c_gtk_icon_info_new_for_pixbuf;
	gint function(GtkIconInfo* iconInfo) c_gtk_icon_info_get_base_size;
	gchar* function(GtkIconInfo* iconInfo) c_gtk_icon_info_get_filename;
	GdkPixbuf* function(GtkIconInfo* iconInfo) c_gtk_icon_info_get_builtin_pixbuf;
	GdkPixbuf* function(GtkIconInfo* iconInfo, GError** error) c_gtk_icon_info_load_icon;
	GdkPixbuf* function(GtkIconInfo* iconInfo, GdkRGBA* fg, GdkRGBA* successColor, GdkRGBA* warningColor, GdkRGBA* errorColor, gboolean* wasSymbolic, GError** error) c_gtk_icon_info_load_symbolic;
	GdkPixbuf* function(GtkIconInfo* iconInfo, GtkStyle* style, GtkStateType state, gboolean* wasSymbolic, GError** error) c_gtk_icon_info_load_symbolic_for_style;
	GdkPixbuf* function(GtkIconInfo* iconInfo, GtkStyleContext* context, gboolean* wasSymbolic, GError** error) c_gtk_icon_info_load_symbolic_for_context;
	void function(GtkIconInfo* iconInfo, gboolean rawCoordinates) c_gtk_icon_info_set_raw_coordinates;
	gboolean function(GtkIconInfo* iconInfo, GdkRectangle* rectangle) c_gtk_icon_info_get_embedded_rect;
	gboolean function(GtkIconInfo* iconInfo, GdkPoint** points, gint* nPoints) c_gtk_icon_info_get_attach_points;
	gchar* function(GtkIconInfo* iconInfo) c_gtk_icon_info_get_display_name;

	// gtk.IconSource

	GtkIconSource* function(GtkIconSource* source) c_gtk_icon_source_copy;
	void function(GtkIconSource* source) c_gtk_icon_source_free;
	GtkTextDirection function(GtkIconSource* source) c_gtk_icon_source_get_direction;
	gboolean function(GtkIconSource* source) c_gtk_icon_source_get_direction_wildcarded;
	gchar* function(GtkIconSource* source) c_gtk_icon_source_get_filename;
	GdkPixbuf* function(GtkIconSource* source) c_gtk_icon_source_get_pixbuf;
	gchar* function(GtkIconSource* source) c_gtk_icon_source_get_icon_name;
	GtkIconSize function(GtkIconSource* source) c_gtk_icon_source_get_size;
	gboolean function(GtkIconSource* source) c_gtk_icon_source_get_size_wildcarded;
	GtkStateType function(GtkIconSource* source) c_gtk_icon_source_get_state;
	gboolean function(GtkIconSource* source) c_gtk_icon_source_get_state_wildcarded;
	GtkIconSource* function() c_gtk_icon_source_new;
	void function(GtkIconSource* source, GtkTextDirection direction) c_gtk_icon_source_set_direction;
	void function(GtkIconSource* source, gboolean setting) c_gtk_icon_source_set_direction_wildcarded;
	void function(GtkIconSource* source, gchar* filename) c_gtk_icon_source_set_filename;
	void function(GtkIconSource* source, GdkPixbuf* pixbuf) c_gtk_icon_source_set_pixbuf;
	void function(GtkIconSource* source, gchar* iconName) c_gtk_icon_source_set_icon_name;
	void function(GtkIconSource* source, GtkIconSize size) c_gtk_icon_source_set_size;
	void function(GtkIconSource* source, gboolean setting) c_gtk_icon_source_set_size_wildcarded;
	void function(GtkIconSource* source, GtkStateType state) c_gtk_icon_source_set_state;
	void function(GtkIconSource* source, gboolean setting) c_gtk_icon_source_set_state_wildcarded;

	// gtk.IconFactory

	void function(GtkIconFactory* factory, gchar* stockId, GtkIconSet* iconSet) c_gtk_icon_factory_add;
	void function(GtkIconFactory* factory) c_gtk_icon_factory_add_default;
	GtkIconSet* function(GtkIconFactory* factory, gchar* stockId) c_gtk_icon_factory_lookup;
	GtkIconSet* function(gchar* stockId) c_gtk_icon_factory_lookup_default;
	GtkIconFactory* function() c_gtk_icon_factory_new;
	void function(GtkIconFactory* factory) c_gtk_icon_factory_remove_default;

	// gtk.IconSet

	void function(GtkIconSet* iconSet, GtkIconSource* source) c_gtk_icon_set_add_source;
	GtkIconSet* function(GtkIconSet* iconSet) c_gtk_icon_set_copy;
	GtkIconSet* function() c_gtk_icon_set_new;
	GtkIconSet* function(GdkPixbuf* pixbuf) c_gtk_icon_set_new_from_pixbuf;
	GtkIconSet* function(GtkIconSet* iconSet) c_gtk_icon_set_ref;
	GdkPixbuf* function(GtkIconSet* iconSet, GtkStyle* style, GtkTextDirection direction, GtkStateType state, GtkIconSize size, GtkWidget* widget, gchar* detail) c_gtk_icon_set_render_icon;
	GdkPixbuf* function(GtkIconSet* iconSet, GtkStyleContext* context, GtkIconSize size) c_gtk_icon_set_render_icon_pixbuf;
	void function(GtkIconSet* iconSet) c_gtk_icon_set_unref;
	void function(GtkIconSet* iconSet, GtkIconSize** sizes, gint* nSizes) c_gtk_icon_set_get_sizes;

	// gtk.IconSize

	gboolean function(GtkIconSize size, gint* width, gint* height) c_gtk_icon_size_lookup;
	gboolean function(GtkSettings* settings, GtkIconSize size, gint* width, gint* height) c_gtk_icon_size_lookup_for_settings;
	GtkIconSize function(gchar* name, gint width, gint height) c_gtk_icon_size_register;
	void function(gchar* alia, GtkIconSize target) c_gtk_icon_size_register_alias;
	GtkIconSize function(gchar* name) c_gtk_icon_size_from_name;
	gchar* function(GtkIconSize size) c_gtk_icon_size_get_name;

	// gtk.NumerableIcon

	GIcon* function(GIcon* baseIcon) c_gtk_numerable_icon_new;
	GIcon* function(GIcon* baseIcon, GtkStyleContext* context) c_gtk_numerable_icon_new_with_style_context;
	GIcon* function(GtkNumerableIcon* self) c_gtk_numerable_icon_get_background_gicon;
	void function(GtkNumerableIcon* self, GIcon* icon) c_gtk_numerable_icon_set_background_gicon;
	gchar* function(GtkNumerableIcon* self) c_gtk_numerable_icon_get_background_icon_name;
	void function(GtkNumerableIcon* self, gchar* iconName) c_gtk_numerable_icon_set_background_icon_name;
	gint function(GtkNumerableIcon* self) c_gtk_numerable_icon_get_count;
	void function(GtkNumerableIcon* self, gint count) c_gtk_numerable_icon_set_count;
	gchar* function(GtkNumerableIcon* self) c_gtk_numerable_icon_get_label;
	void function(GtkNumerableIcon* self, gchar* label) c_gtk_numerable_icon_set_label;
	GtkStyleContext* function(GtkNumerableIcon* self) c_gtk_numerable_icon_get_style_context;
	void function(GtkNumerableIcon* self, GtkStyleContext* style) c_gtk_numerable_icon_set_style_context;

	// gtk.RcStyle

	GScanner* function() c_gtk_rc_scanner_new;
	GtkStyle* function(GtkWidget* widget) c_gtk_rc_get_style;
	GtkStyle* function(GtkSettings* settings, char* widgetPath, char* classPath, GType type) c_gtk_rc_get_style_by_paths;
	void function(gchar* filename) c_gtk_rc_parse;
	void function(gchar* rcString) c_gtk_rc_parse_string;
	gboolean function() c_gtk_rc_reparse_all;
	gboolean function(GtkSettings* settings, gboolean forceLoad) c_gtk_rc_reparse_all_for_settings;
	void function(GtkSettings* settings) c_gtk_rc_reset_styles;
	void function(gchar* filename) c_gtk_rc_add_default_file;
	gchar** function() c_gtk_rc_get_default_files;
	void function(gchar** filenames) c_gtk_rc_set_default_files;
	guint function(GScanner* scanner, GdkColor* color) c_gtk_rc_parse_color;
	guint function(GScanner* scanner, GtkRcStyle* style, GdkColor* color) c_gtk_rc_parse_color_full;
	guint function(GScanner* scanner, GtkStateType* state) c_gtk_rc_parse_state;
	guint function(GScanner* scanner, GtkPathPriorityType* priority) c_gtk_rc_parse_priority;
	gchar* function(gchar* moduleFile) c_gtk_rc_find_module_in_path;
	gchar* function(GtkSettings* settings, GScanner* scanner, gchar* pixmapFile) c_gtk_rc_find_pixmap_in_path;
	gchar* function() c_gtk_rc_get_module_dir;
	gchar* function() c_gtk_rc_get_im_module_path;
	gchar* function() c_gtk_rc_get_im_module_file;
	gchar* function() c_gtk_rc_get_theme_dir;
	GtkRcStyle* function() c_gtk_rc_style_new;
	GtkRcStyle* function(GtkRcStyle* orig) c_gtk_rc_style_copy;

	// gtk.Style

	GtkStyle* function() c_gtk_style_new;
	GtkStyle* function(GtkStyle* style) c_gtk_style_copy;
	GtkStyle* function(GtkStyle* style, GdkWindow* window) c_gtk_style_attach;
	void function(GtkStyle* style) c_gtk_style_detach;
	gboolean function(GtkStyle* style) c_gtk_style_has_context;
	void function(GtkStyle* style, GdkWindow* window, GtkStateType stateType) c_gtk_style_set_background;
	void function(GtkStyle* style, cairo_t* cr, GdkWindow* window, GtkStateType stateType, gint x, gint y, gint width, gint height) c_gtk_style_apply_default_background;
	gboolean function(GtkStyle* style, gchar* colorName, GdkColor* color) c_gtk_style_lookup_color;
	GtkIconSet* function(GtkStyle* style, gchar* stockId) c_gtk_style_lookup_icon_set;
	GdkPixbuf* function(GtkStyle* style, GtkIconSource* source, GtkTextDirection direction, GtkStateType state, GtkIconSize size, GtkWidget* widget, gchar* detail) c_gtk_style_render_icon;
	void function(GtkStyle* style, GType widgetType, gchar* propertyName, GValue* value) c_gtk_style_get_style_property;
	void function(GtkStyle* style, GType widgetType, gchar* firstPropertyName, va_list varArgs) c_gtk_style_get_valist;
	void function(GtkStyle* style, GType widgetType, gchar* firstPropertyName, ... ) c_gtk_style_get;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, GtkArrowType arrowType, gboolean fill, gint x, gint y, gint width, gint height) c_gtk_paint_arrow;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_box;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkPositionType gapSide, gint gapX, gint gapWidth) c_gtk_paint_box_gap;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_check;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_diamond;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkPositionType gapSide) c_gtk_paint_extension;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_flat_box;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_focus;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkOrientation orientation) c_gtk_paint_handle;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, gchar* detail, gint x1, gint x2, gint y) c_gtk_paint_hline;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_option;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_shadow;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkPositionType gapSide, gint gapX, gint gapWidth) c_gtk_paint_shadow_gap;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height, GtkOrientation orientation) c_gtk_paint_slider;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, gchar* detail, guint step, gint x, gint y, gint width, gint height) c_gtk_paint_spinner;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkShadowType shadowType, GtkWidget* widget, gchar* detail, gint x, gint y, gint width, gint height) c_gtk_paint_tab;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, gchar* detail, gint y1_, gint y2_, gint x) c_gtk_paint_vline;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, gchar* detail, gint x, gint y, GtkExpanderStyle expanderStyle) c_gtk_paint_expander;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, gboolean useText, GtkWidget* widget, gchar* detail, gint x, gint y, PangoLayout* layout) c_gtk_paint_layout;
	void function(GtkStyle* style, cairo_t* cr, GtkStateType stateType, GtkWidget* widget, gchar* detail, GdkWindowEdge edge, gint x, gint y, gint width, gint height) c_gtk_paint_resize_grip;
	void function(GtkWidget* widget, cairo_t* cr, GdkRectangle* location, gboolean isPrimary, GtkTextDirection direction, gboolean drawArrow) c_gtk_draw_insertion_cursor;

	// gtk.Dialog

	GtkWidget* function() c_gtk_dialog_new;
	GtkWidget* function(gchar* title, GtkWindow* parent, GtkDialogFlags flags, gchar* firstButtonText, ... ) c_gtk_dialog_new_with_buttons;
	gint function(GtkDialog* dialog) c_gtk_dialog_run;
	void function(GtkDialog* dialog, gint responseId) c_gtk_dialog_response;
	GtkWidget* function(GtkDialog* dialog, gchar* buttonText, gint responseId) c_gtk_dialog_add_button;
	void function(GtkDialog* dialog, gchar* firstButtonText, ... ) c_gtk_dialog_add_buttons;
	void function(GtkDialog* dialog, GtkWidget* child, gint responseId) c_gtk_dialog_add_action_widget;
	void function(GtkDialog* dialog, gint responseId) c_gtk_dialog_set_default_response;
	void function(GtkDialog* dialog, gint responseId, gboolean setting) c_gtk_dialog_set_response_sensitive;
	gint function(GtkDialog* dialog, GtkWidget* widget) c_gtk_dialog_get_response_for_widget;
	GtkWidget* function(GtkDialog* dialog, gint responseId) c_gtk_dialog_get_widget_for_response;
	GtkWidget* function(GtkDialog* dialog) c_gtk_dialog_get_action_area;
	GtkWidget* function(GtkDialog* dialog) c_gtk_dialog_get_content_area;
	gboolean function(GdkScreen* screen) c_gtk_alternative_dialog_button_order;
	void function(GtkDialog* dialog, gint firstResponseId, ... ) c_gtk_dialog_set_alternative_button_order;
	void function(GtkDialog* dialog, gint nParams, gint* newOrder) c_gtk_dialog_set_alternative_button_order_from_array;

	// gtk.Invisible

	GtkWidget* function() c_gtk_invisible_new;
	GtkWidget* function(GdkScreen* screen) c_gtk_invisible_new_for_screen;
	void function(GtkInvisible* invisible, GdkScreen* screen) c_gtk_invisible_set_screen;
	GdkScreen* function(GtkInvisible* invisible) c_gtk_invisible_get_screen;

	// gtk.MessageDialog

	GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, gchar* messageFormat, ... ) c_gtk_message_dialog_new;
	GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, gchar* messageFormat, ... ) c_gtk_message_dialog_new_with_markup;
	void function(GtkMessageDialog* messageDialog, gchar* str) c_gtk_message_dialog_set_markup;
	void function(GtkMessageDialog* dialog, GtkWidget* image) c_gtk_message_dialog_set_image;
	GtkWidget* function(GtkMessageDialog* dialog) c_gtk_message_dialog_get_image;
	void function(GtkMessageDialog* messageDialog, gchar* messageFormat, ... ) c_gtk_message_dialog_format_secondary_text;
	void function(GtkMessageDialog* messageDialog, gchar* messageFormat, ... ) c_gtk_message_dialog_format_secondary_markup;
	GtkWidget* function(GtkMessageDialog* messageDialog) c_gtk_message_dialog_get_message_area;

	// gtk.PopupBox


	// gtk.Window

	GtkWidget* function(GtkWindowType type) c_gtk_window_new;
	void function(GtkWindow* window, gchar* title) c_gtk_window_set_title;
	void function(GtkWindow* window, gchar* wmclassName, gchar* wmclassClass) c_gtk_window_set_wmclass;
	void function(GtkWindow* window, gboolean resizable) c_gtk_window_set_resizable;
	gboolean function(GtkWindow* window) c_gtk_window_get_resizable;
	void function(GtkWindow* window, GtkAccelGroup* accelGroup) c_gtk_window_add_accel_group;
	void function(GtkWindow* window, GtkAccelGroup* accelGroup) c_gtk_window_remove_accel_group;
	gboolean function(GtkWindow* window) c_gtk_window_activate_focus;
	gboolean function(GtkWindow* window) c_gtk_window_activate_default;
	void function(GtkWindow* window, gboolean modal) c_gtk_window_set_modal;
	void function(GtkWindow* window, gint width, gint height) c_gtk_window_set_default_size;
	void function(GtkWindow* window, gint width, gint height) c_gtk_window_set_default_geometry;
	void function(GtkWindow* window, GtkWidget* geometryWidget, GdkGeometry* geometry, GdkWindowHints geomMask) c_gtk_window_set_geometry_hints;
	void function(GtkWindow* window, GdkGravity gravity) c_gtk_window_set_gravity;
	GdkGravity function(GtkWindow* window) c_gtk_window_get_gravity;
	void function(GtkWindow* window, GtkWindowPosition position) c_gtk_window_set_position;
	void function(GtkWindow* window, GtkWindow* parent) c_gtk_window_set_transient_for;
	void function(GtkWindow* window, GtkWidget* attachWidget) c_gtk_window_set_attached_to;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_destroy_with_parent;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_hide_titlebar_when_maximized;
	void function(GtkWindow* window, GdkScreen* screen) c_gtk_window_set_screen;
	GdkScreen* function(GtkWindow* window) c_gtk_window_get_screen;
	gboolean function(GtkWindow* window) c_gtk_window_is_active;
	gboolean function(GtkWindow* window) c_gtk_window_has_toplevel_focus;
	GList* function() c_gtk_window_list_toplevels;
	void function(GtkWindow* window, guint keyval, GtkWidget* target) c_gtk_window_add_mnemonic;
	void function(GtkWindow* window, guint keyval, GtkWidget* target) c_gtk_window_remove_mnemonic;
	gboolean function(GtkWindow* window, guint keyval, GdkModifierType modifier) c_gtk_window_mnemonic_activate;
	gboolean function(GtkWindow* window, GdkEventKey* event) c_gtk_window_activate_key;
	gboolean function(GtkWindow* window, GdkEventKey* event) c_gtk_window_propagate_key_event;
	GtkWidget* function(GtkWindow* window) c_gtk_window_get_focus;
	void function(GtkWindow* window, GtkWidget* focus) c_gtk_window_set_focus;
	GtkWidget* function(GtkWindow* window) c_gtk_window_get_default_widget;
	void function(GtkWindow* window, GtkWidget* defaultWidget) c_gtk_window_set_default;
	void function(GtkWindow* window) c_gtk_window_present;
	void function(GtkWindow* window, guint32 timestamp) c_gtk_window_present_with_time;
	void function(GtkWindow* window) c_gtk_window_iconify;
	void function(GtkWindow* window) c_gtk_window_deiconify;
	void function(GtkWindow* window) c_gtk_window_stick;
	void function(GtkWindow* window) c_gtk_window_unstick;
	void function(GtkWindow* window) c_gtk_window_maximize;
	void function(GtkWindow* window) c_gtk_window_unmaximize;
	void function(GtkWindow* window) c_gtk_window_fullscreen;
	void function(GtkWindow* window) c_gtk_window_unfullscreen;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_keep_above;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_keep_below;
	void function(GtkWindow* window, GdkWindowEdge edge, gint button, gint rootX, gint rootY, guint32 timestamp) c_gtk_window_begin_resize_drag;
	void function(GtkWindow* window, gint button, gint rootX, gint rootY, guint32 timestamp) c_gtk_window_begin_move_drag;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_decorated;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_deletable;
	void function(GtkWindow* window, GdkModifierType modifier) c_gtk_window_set_mnemonic_modifier;
	void function(GtkWindow* window, GdkWindowTypeHint hint) c_gtk_window_set_type_hint;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_skip_taskbar_hint;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_skip_pager_hint;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_urgency_hint;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_accept_focus;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_focus_on_map;
	void function(GtkWindow* window, gchar* startupId) c_gtk_window_set_startup_id;
	void function(GtkWindow* window, gchar* role) c_gtk_window_set_role;
	gboolean function(GtkWindow* window) c_gtk_window_get_decorated;
	gboolean function(GtkWindow* window) c_gtk_window_get_deletable;
	GList* function() c_gtk_window_get_default_icon_list;
	gchar* function() c_gtk_window_get_default_icon_name;
	void function(GtkWindow* window, gint* width, gint* height) c_gtk_window_get_default_size;
	gboolean function(GtkWindow* window) c_gtk_window_get_destroy_with_parent;
	gboolean function(GtkWindow* window) c_gtk_window_get_hide_titlebar_when_maximized;
	GdkPixbuf* function(GtkWindow* window) c_gtk_window_get_icon;
	GList* function(GtkWindow* window) c_gtk_window_get_icon_list;
	gchar* function(GtkWindow* window) c_gtk_window_get_icon_name;
	GdkModifierType function(GtkWindow* window) c_gtk_window_get_mnemonic_modifier;
	gboolean function(GtkWindow* window) c_gtk_window_get_modal;
	void function(GtkWindow* window, gint* rootX, gint* rootY) c_gtk_window_get_position;
	gchar* function(GtkWindow* window) c_gtk_window_get_role;
	void function(GtkWindow* window, gint* width, gint* height) c_gtk_window_get_size;
	gchar* function(GtkWindow* window) c_gtk_window_get_title;
	GtkWindow* function(GtkWindow* window) c_gtk_window_get_transient_for;
	GtkWidget* function(GtkWindow* window) c_gtk_window_get_attached_to;
	GdkWindowTypeHint function(GtkWindow* window) c_gtk_window_get_type_hint;
	gboolean function(GtkWindow* window) c_gtk_window_get_skip_taskbar_hint;
	gboolean function(GtkWindow* window) c_gtk_window_get_skip_pager_hint;
	gboolean function(GtkWindow* window) c_gtk_window_get_urgency_hint;
	gboolean function(GtkWindow* window) c_gtk_window_get_accept_focus;
	gboolean function(GtkWindow* window) c_gtk_window_get_focus_on_map;
	GtkWindowGroup* function(GtkWindow* window) c_gtk_window_get_group;
	gboolean function(GtkWindow* window) c_gtk_window_has_group;
	GtkWindowType function(GtkWindow* window) c_gtk_window_get_window_type;
	void function(GtkWindow* window, gint x, gint y) c_gtk_window_move;
	gboolean function(GtkWindow* window, gchar* geometry) c_gtk_window_parse_geometry;
	void function(GtkWindow* window) c_gtk_window_reshow_with_initial_size;
	void function(GtkWindow* window, gint width, gint height) c_gtk_window_resize;
	void function(GtkWindow* window, gint width, gint height) c_gtk_window_resize_to_geometry;
	void function(GList* list) c_gtk_window_set_default_icon_list;
	void function(GdkPixbuf* icon) c_gtk_window_set_default_icon;
	gboolean function(gchar* filename, GError** err) c_gtk_window_set_default_icon_from_file;
	void function(gchar* name) c_gtk_window_set_default_icon_name;
	void function(GtkWindow* window, GdkPixbuf* icon) c_gtk_window_set_icon;
	void function(GtkWindow* window, GList* list) c_gtk_window_set_icon_list;
	gboolean function(GtkWindow* window, gchar* filename, GError** err) c_gtk_window_set_icon_from_file;
	void function(GtkWindow* window, gchar* name) c_gtk_window_set_icon_name;
	void function(gboolean setting) c_gtk_window_set_auto_startup_notification;
	gdouble function(GtkWindow* window) c_gtk_window_get_opacity;
	void function(GtkWindow* window, gdouble opacity) c_gtk_window_set_opacity;
	gboolean function(GtkWindow* window) c_gtk_window_get_mnemonics_visible;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_mnemonics_visible;
	gboolean function(GtkWindow* window) c_gtk_window_get_focus_visible;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_focus_visible;
	void function(GtkWindow* window, gboolean value) c_gtk_window_set_has_resize_grip;
	gboolean function(GtkWindow* window) c_gtk_window_get_has_resize_grip;
	gboolean function(GtkWindow* window) c_gtk_window_resize_grip_is_visible;
	gboolean function(GtkWindow* window, GdkRectangle* rect) c_gtk_window_get_resize_grip_area;
	GtkApplication* function(GtkWindow* window) c_gtk_window_get_application;
	void function(GtkWindow* window, GtkApplication* application) c_gtk_window_set_application;
	void function(GtkWindow* window, gboolean setting) c_gtk_window_set_has_user_ref_count;

	// gtk.


	// gtk.WindowGroup

	GtkWindowGroup* function() c_gtk_window_group_new;
	void function(GtkWindowGroup* windowGroup, GtkWindow* window) c_gtk_window_group_add_window;
	void function(GtkWindowGroup* windowGroup, GtkWindow* window) c_gtk_window_group_remove_window;
	GList* function(GtkWindowGroup* windowGroup) c_gtk_window_group_list_windows;
	GtkWidget* function(GtkWindowGroup* windowGroup) c_gtk_window_group_get_current_grab;
	GtkWidget* function(GtkWindowGroup* windowGroup, GdkDevice* device) c_gtk_window_group_get_current_device_grab;

	// gtk.AboutDialog

	GtkWidget* function() c_gtk_about_dialog_new;
	gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_program_name;
	void function(GtkAboutDialog* about, gchar* name) c_gtk_about_dialog_set_program_name;
	gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_version;
	void function(GtkAboutDialog* about, gchar* versio) c_gtk_about_dialog_set_version;
	gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_copyright;
	void function(GtkAboutDialog* about, gchar* copyright) c_gtk_about_dialog_set_copyright;
	gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_comments;
	void function(GtkAboutDialog* about, gchar* comments) c_gtk_about_dialog_set_comments;
	gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_license;
	void function(GtkAboutDialog* about, gchar* license) c_gtk_about_dialog_set_license;
	gboolean function(GtkAboutDialog* about) c_gtk_about_dialog_get_wrap_license;
	void function(GtkAboutDialog* about, gboolean wrapLicense) c_gtk_about_dialog_set_wrap_license;
	GtkLicense function(GtkAboutDialog* about) c_gtk_about_dialog_get_license_type;
	void function(GtkAboutDialog* about, GtkLicense licenseType) c_gtk_about_dialog_set_license_type;
	gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_website;
	void function(GtkAboutDialog* about, gchar* website) c_gtk_about_dialog_set_website;
	gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_website_label;
	void function(GtkAboutDialog* about, gchar* websiteLabel) c_gtk_about_dialog_set_website_label;
	gchar** function(GtkAboutDialog* about) c_gtk_about_dialog_get_authors;
	void function(GtkAboutDialog* about, gchar** authors) c_gtk_about_dialog_set_authors;
	gchar** function(GtkAboutDialog* about) c_gtk_about_dialog_get_artists;
	void function(GtkAboutDialog* about, gchar** artists) c_gtk_about_dialog_set_artists;
	gchar** function(GtkAboutDialog* about) c_gtk_about_dialog_get_documenters;
	void function(GtkAboutDialog* about, gchar** documenters) c_gtk_about_dialog_set_documenters;
	gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_translator_credits;
	void function(GtkAboutDialog* about, gchar* translatorCredits) c_gtk_about_dialog_set_translator_credits;
	GdkPixbuf* function(GtkAboutDialog* about) c_gtk_about_dialog_get_logo;
	void function(GtkAboutDialog* about, GdkPixbuf* logo) c_gtk_about_dialog_set_logo;
	gchar* function(GtkAboutDialog* about) c_gtk_about_dialog_get_logo_icon_name;
	void function(GtkAboutDialog* about, gchar* iconName) c_gtk_about_dialog_set_logo_icon_name;
	void function(GtkAboutDialog* about, gchar* sectionName, gchar** people) c_gtk_about_dialog_add_credit_section;
	void function(GtkWindow* parent, gchar* firstPropertyName, ... ) c_gtk_show_about_dialog;

	// gtk.Assistant

	GtkWidget* function() c_gtk_assistant_new;
	gint function(GtkAssistant* assistant) c_gtk_assistant_get_current_page;
	void function(GtkAssistant* assistant, gint pageNum) c_gtk_assistant_set_current_page;
	gint function(GtkAssistant* assistant) c_gtk_assistant_get_n_pages;
	GtkWidget* function(GtkAssistant* assistant, gint pageNum) c_gtk_assistant_get_nth_page;
	gint function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_prepend_page;
	gint function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_append_page;
	gint function(GtkAssistant* assistant, GtkWidget* page, gint position) c_gtk_assistant_insert_page;
	void function(GtkAssistant* assistant, gint pageNum) c_gtk_assistant_remove_page;
	void function(GtkAssistant* assistant, GtkAssistantPageFunc pageFunc, void* data, GDestroyNotify destroy) c_gtk_assistant_set_forward_page_func;
	void function(GtkAssistant* assistant, GtkWidget* page, GtkAssistantPageType type) c_gtk_assistant_set_page_type;
	GtkAssistantPageType function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_type;
	void function(GtkAssistant* assistant, GtkWidget* page, gchar* title) c_gtk_assistant_set_page_title;
	gchar* function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_title;
	void function(GtkAssistant* assistant, GtkWidget* page, GdkPixbuf* pixbuf) c_gtk_assistant_set_page_header_image;
	GdkPixbuf* function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_header_image;
	void function(GtkAssistant* assistant, GtkWidget* page, GdkPixbuf* pixbuf) c_gtk_assistant_set_page_side_image;
	GdkPixbuf* function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_side_image;
	void function(GtkAssistant* assistant, GtkWidget* page, gboolean complete) c_gtk_assistant_set_page_complete;
	gboolean function(GtkAssistant* assistant, GtkWidget* page) c_gtk_assistant_get_page_complete;
	void function(GtkAssistant* assistant, GtkWidget* child) c_gtk_assistant_add_action_widget;
	void function(GtkAssistant* assistant, GtkWidget* child) c_gtk_assistant_remove_action_widget;
	void function(GtkAssistant* assistant) c_gtk_assistant_update_buttons_state;
	void function(GtkAssistant* assistant) c_gtk_assistant_commit;
	void function(GtkAssistant* assistant) c_gtk_assistant_next_page;
	void function(GtkAssistant* assistant) c_gtk_assistant_previous_page;

	// gtk.OffscreenWindow

	GtkWidget* function() c_gtk_offscreen_window_new;
	cairo_surface_t* function(GtkOffscreenWindow* offscreen) c_gtk_offscreen_window_get_surface;
	GdkPixbuf* function(GtkOffscreenWindow* offscreen) c_gtk_offscreen_window_get_pixbuf;

	// gtk.AccelLabel

	GtkWidget* function(gchar* string) c_gtk_accel_label_new;
	void function(GtkAccelLabel* accelLabel, GClosure* accelClosure) c_gtk_accel_label_set_accel_closure;
	GtkWidget* function(GtkAccelLabel* accelLabel) c_gtk_accel_label_get_accel_widget;
	void function(GtkAccelLabel* accelLabel, GtkWidget* accelWidget) c_gtk_accel_label_set_accel_widget;
	guint function(GtkAccelLabel* accelLabel) c_gtk_accel_label_get_accel_width;
	void function(GtkAccelLabel* accelLabel, guint acceleratorKey, GdkModifierType acceleratorMods) c_gtk_accel_label_set_accel;
	gboolean function(GtkAccelLabel* accelLabel) c_gtk_accel_label_refetch;

	// gtk.Image

	void function(GtkImage* image, GtkIconSet** iconSet, GtkIconSize* size) c_gtk_image_get_icon_set;
	GdkPixbuf* function(GtkImage* image) c_gtk_image_get_pixbuf;
	void function(GtkImage* image, gchar** stockId, GtkIconSize* size) c_gtk_image_get_stock;
	GdkPixbufAnimation* function(GtkImage* image) c_gtk_image_get_animation;
	void function(GtkImage* image, gchar** iconName, GtkIconSize* size) c_gtk_image_get_icon_name;
	void function(GtkImage* image, GIcon** gicon, GtkIconSize* size) c_gtk_image_get_gicon;
	GtkImageType function(GtkImage* image) c_gtk_image_get_storage_type;
	GtkWidget* function(gchar* filename) c_gtk_image_new_from_file;
	GtkWidget* function(GtkIconSet* iconSet, GtkIconSize size) c_gtk_image_new_from_icon_set;
	GtkWidget* function(GdkPixbuf* pixbuf) c_gtk_image_new_from_pixbuf;
	GtkWidget* function(gchar* stockId, GtkIconSize size) c_gtk_image_new_from_stock;
	GtkWidget* function(GdkPixbufAnimation* animation) c_gtk_image_new_from_animation;
	GtkWidget* function(gchar* iconName, GtkIconSize size) c_gtk_image_new_from_icon_name;
	GtkWidget* function(GIcon* icon, GtkIconSize size) c_gtk_image_new_from_gicon;
	GtkWidget* function(gchar* resourcePath) c_gtk_image_new_from_resource;
	void function(GtkImage* image, gchar* filename) c_gtk_image_set_from_file;
	void function(GtkImage* image, GtkIconSet* iconSet, GtkIconSize size) c_gtk_image_set_from_icon_set;
	void function(GtkImage* image, GdkPixbuf* pixbuf) c_gtk_image_set_from_pixbuf;
	void function(GtkImage* image, gchar* stockId, GtkIconSize size) c_gtk_image_set_from_stock;
	void function(GtkImage* image, GdkPixbufAnimation* animation) c_gtk_image_set_from_animation;
	void function(GtkImage* image, gchar* iconName, GtkIconSize size) c_gtk_image_set_from_icon_name;
	void function(GtkImage* image, GIcon* icon, GtkIconSize size) c_gtk_image_set_from_gicon;
	void function(GtkImage* image, gchar* resourcePath) c_gtk_image_set_from_resource;
	void function(GtkImage* image) c_gtk_image_clear;
	GtkWidget* function() c_gtk_image_new;
	void function(GtkImage* image, gint pixelSize) c_gtk_image_set_pixel_size;
	gint function(GtkImage* image) c_gtk_image_get_pixel_size;

	// gtk.Label

	GtkWidget* function(gchar* str) c_gtk_label_new;
	void function(GtkLabel* label, gchar* str) c_gtk_label_set_text;
	void function(GtkLabel* label, PangoAttrList* attrs) c_gtk_label_set_attributes;
	void function(GtkLabel* label, gchar* str) c_gtk_label_set_markup;
	void function(GtkLabel* label, gchar* str) c_gtk_label_set_markup_with_mnemonic;
	void function(GtkLabel* label, gchar* pattern) c_gtk_label_set_pattern;
	void function(GtkLabel* label, GtkJustification jtype) c_gtk_label_set_justify;
	void function(GtkLabel* label, PangoEllipsizeMode mode) c_gtk_label_set_ellipsize;
	void function(GtkLabel* label, gint nChars) c_gtk_label_set_width_chars;
	void function(GtkLabel* label, gint nChars) c_gtk_label_set_max_width_chars;
	void function(GtkLabel* label, gboolean wrap) c_gtk_label_set_line_wrap;
	void function(GtkLabel* label, PangoWrapMode wrapMode) c_gtk_label_set_line_wrap_mode;
	void function(GtkLabel* label, gint* x, gint* y) c_gtk_label_get_layout_offsets;
	guint function(GtkLabel* label) c_gtk_label_get_mnemonic_keyval;
	gboolean function(GtkLabel* label) c_gtk_label_get_selectable;
	gchar* function(GtkLabel* label) c_gtk_label_get_text;
	GtkWidget* function(gchar* str) c_gtk_label_new_with_mnemonic;
	void function(GtkLabel* label, gint startOffset, gint endOffset) c_gtk_label_select_region;
	void function(GtkLabel* label, GtkWidget* widget) c_gtk_label_set_mnemonic_widget;
	void function(GtkLabel* label, gboolean setting) c_gtk_label_set_selectable;
	void function(GtkLabel* label, gchar* str) c_gtk_label_set_text_with_mnemonic;
	PangoAttrList* function(GtkLabel* label) c_gtk_label_get_attributes;
	GtkJustification function(GtkLabel* label) c_gtk_label_get_justify;
	PangoEllipsizeMode function(GtkLabel* label) c_gtk_label_get_ellipsize;
	gint function(GtkLabel* label) c_gtk_label_get_width_chars;
	gint function(GtkLabel* label) c_gtk_label_get_max_width_chars;
	gchar* function(GtkLabel* label) c_gtk_label_get_label;
	PangoLayout* function(GtkLabel* label) c_gtk_label_get_layout;
	gboolean function(GtkLabel* label) c_gtk_label_get_line_wrap;
	PangoWrapMode function(GtkLabel* label) c_gtk_label_get_line_wrap_mode;
	GtkWidget* function(GtkLabel* label) c_gtk_label_get_mnemonic_widget;
	gboolean function(GtkLabel* label, gint* start, gint* end) c_gtk_label_get_selection_bounds;
	gboolean function(GtkLabel* label) c_gtk_label_get_use_markup;
	gboolean function(GtkLabel* label) c_gtk_label_get_use_underline;
	gboolean function(GtkLabel* label) c_gtk_label_get_single_line_mode;
	gdouble function(GtkLabel* label) c_gtk_label_get_angle;
	void function(GtkLabel* label, gchar* str) c_gtk_label_set_label;
	void function(GtkLabel* label, gboolean setting) c_gtk_label_set_use_markup;
	void function(GtkLabel* label, gboolean setting) c_gtk_label_set_use_underline;
	void function(GtkLabel* label, gboolean singleLineMode) c_gtk_label_set_single_line_mode;
	void function(GtkLabel* label, gdouble angle) c_gtk_label_set_angle;
	gchar* function(GtkLabel* label) c_gtk_label_get_current_uri;
	void function(GtkLabel* label, gboolean trackLinks) c_gtk_label_set_track_visited_links;
	gboolean function(GtkLabel* label) c_gtk_label_get_track_visited_links;

	// gtk.ProgressBar

	GtkWidget* function() c_gtk_progress_bar_new;
	void function(GtkProgressBar* pbar) c_gtk_progress_bar_pulse;
	void function(GtkProgressBar* pbar, gdouble fraction) c_gtk_progress_bar_set_fraction;
	gdouble function(GtkProgressBar* pbar) c_gtk_progress_bar_get_fraction;
	void function(GtkProgressBar* pbar, gboolean inverted) c_gtk_progress_bar_set_inverted;
	gboolean function(GtkProgressBar* pbar) c_gtk_progress_bar_get_inverted;
	void function(GtkProgressBar* pbar, gboolean showText) c_gtk_progress_bar_set_show_text;
	gboolean function(GtkProgressBar* pbar) c_gtk_progress_bar_get_show_text;
	void function(GtkProgressBar* pbar, gchar* text) c_gtk_progress_bar_set_text;
	gchar* function(GtkProgressBar* pbar) c_gtk_progress_bar_get_text;
	void function(GtkProgressBar* pbar, PangoEllipsizeMode mode) c_gtk_progress_bar_set_ellipsize;
	PangoEllipsizeMode function(GtkProgressBar* pbar) c_gtk_progress_bar_get_ellipsize;
	void function(GtkProgressBar* pbar, gdouble fraction) c_gtk_progress_bar_set_pulse_step;
	gdouble function(GtkProgressBar* pbar) c_gtk_progress_bar_get_pulse_step;

	// gtk.Statusbar

	GtkWidget* function() c_gtk_statusbar_new;
	guint function(GtkStatusbar* statusbar, gchar* contextDescription) c_gtk_statusbar_get_context_id;
	guint function(GtkStatusbar* statusbar, guint contextId, gchar* text) c_gtk_statusbar_push;
	void function(GtkStatusbar* statusbar, guint contextId) c_gtk_statusbar_pop;
	void function(GtkStatusbar* statusbar, guint contextId, guint messageId) c_gtk_statusbar_remove;
	void function(GtkStatusbar* statusbar, guint contextId) c_gtk_statusbar_remove_all;
	GtkWidget* function(GtkStatusbar* statusbar) c_gtk_statusbar_get_message_area;

	// gtk.LevelBar

	GtkWidget* function() c_gtk_level_bar_new;
	GtkWidget* function(gdouble minValue, gdouble maxValue) c_gtk_level_bar_new_for_interval;
	void function(GtkLevelBar* self, GtkLevelBarMode mode) c_gtk_level_bar_set_mode;
	GtkLevelBarMode function(GtkLevelBar* self) c_gtk_level_bar_get_mode;
	void function(GtkLevelBar* self, gdouble value) c_gtk_level_bar_set_value;
	gdouble function(GtkLevelBar* self) c_gtk_level_bar_get_value;
	void function(GtkLevelBar* self, gdouble value) c_gtk_level_bar_set_min_value;
	gdouble function(GtkLevelBar* self) c_gtk_level_bar_get_min_value;
	void function(GtkLevelBar* self, gdouble value) c_gtk_level_bar_set_max_value;
	gdouble function(GtkLevelBar* self) c_gtk_level_bar_get_max_value;
	void function(GtkLevelBar* self, gchar* name, gdouble value) c_gtk_level_bar_add_offset_value;
	void function(GtkLevelBar* self, gchar* name) c_gtk_level_bar_remove_offset_value;
	gboolean function(GtkLevelBar* self, gchar* name, gdouble* value) c_gtk_level_bar_get_offset_value;

	// gtk.InfoBar

	GtkWidget* function() c_gtk_info_bar_new;
	GtkWidget* function(gchar* firstButtonText, ... ) c_gtk_info_bar_new_with_buttons;
	void function(GtkInfoBar* infoBar, GtkWidget* child, gint responseId) c_gtk_info_bar_add_action_widget;
	GtkWidget* function(GtkInfoBar* infoBar, gchar* buttonText, gint responseId) c_gtk_info_bar_add_button;
	void function(GtkInfoBar* infoBar, gchar* firstButtonText, ... ) c_gtk_info_bar_add_buttons;
	void function(GtkInfoBar* infoBar, gint responseId, gboolean setting) c_gtk_info_bar_set_response_sensitive;
	void function(GtkInfoBar* infoBar, gint responseId) c_gtk_info_bar_set_default_response;
	void function(GtkInfoBar* infoBar, gint responseId) c_gtk_info_bar_response;
	void function(GtkInfoBar* infoBar, GtkMessageType messageType) c_gtk_info_bar_set_message_type;
	GtkMessageType function(GtkInfoBar* infoBar) c_gtk_info_bar_get_message_type;
	GtkWidget* function(GtkInfoBar* infoBar) c_gtk_info_bar_get_action_area;
	GtkWidget* function(GtkInfoBar* infoBar) c_gtk_info_bar_get_content_area;

	// gtk.StatusIcon

	GtkStatusIcon* function() c_gtk_status_icon_new;
	GtkStatusIcon* function(GdkPixbuf* pixbuf) c_gtk_status_icon_new_from_pixbuf;
	GtkStatusIcon* function(gchar* filename) c_gtk_status_icon_new_from_file;
	GtkStatusIcon* function(gchar* stockId) c_gtk_status_icon_new_from_stock;
	GtkStatusIcon* function(gchar* iconName) c_gtk_status_icon_new_from_icon_name;
	GtkStatusIcon* function(GIcon* icon) c_gtk_status_icon_new_from_gicon;
	void function(GtkStatusIcon* statusIcon, GdkPixbuf* pixbuf) c_gtk_status_icon_set_from_pixbuf;
	void function(GtkStatusIcon* statusIcon, gchar* filename) c_gtk_status_icon_set_from_file;
	void function(GtkStatusIcon* statusIcon, gchar* stockId) c_gtk_status_icon_set_from_stock;
	void function(GtkStatusIcon* statusIcon, gchar* iconName) c_gtk_status_icon_set_from_icon_name;
	void function(GtkStatusIcon* statusIcon, GIcon* icon) c_gtk_status_icon_set_from_gicon;
	GtkImageType function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_storage_type;
	GdkPixbuf* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_pixbuf;
	gchar* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_stock;
	gchar* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_icon_name;
	GIcon* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_gicon;
	gint function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_size;
	void function(GtkStatusIcon* statusIcon, GdkScreen* screen) c_gtk_status_icon_set_screen;
	GdkScreen* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_screen;
	void function(GtkStatusIcon* statusIcon, gchar* text) c_gtk_status_icon_set_tooltip_text;
	gchar* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_tooltip_text;
	void function(GtkStatusIcon* statusIcon, gchar* markup) c_gtk_status_icon_set_tooltip_markup;
	gchar* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_tooltip_markup;
	void function(GtkStatusIcon* statusIcon, gboolean hasTooltip) c_gtk_status_icon_set_has_tooltip;
	gboolean function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_has_tooltip;
	void function(GtkStatusIcon* statusIcon, gchar* title) c_gtk_status_icon_set_title;
	gchar* function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_title;
	void function(GtkStatusIcon* statusIcon, gchar* name) c_gtk_status_icon_set_name;
	void function(GtkStatusIcon* statusIcon, gboolean visible) c_gtk_status_icon_set_visible;
	gboolean function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_visible;
	gboolean function(GtkStatusIcon* statusIcon) c_gtk_status_icon_is_embedded;
	void function(GtkMenu* menu, gint* x, gint* y, gboolean* pushIn, void* userData) c_gtk_status_icon_position_menu;
	gboolean function(GtkStatusIcon* statusIcon, GdkScreen** screen, GdkRectangle* area, GtkOrientation* orientation) c_gtk_status_icon_get_geometry;
	guint32 function(GtkStatusIcon* statusIcon) c_gtk_status_icon_get_x11_window_id;

	// gtk.Spinner

	GtkWidget* function() c_gtk_spinner_new;
	void function(GtkSpinner* spinner) c_gtk_spinner_start;
	void function(GtkSpinner* spinner) c_gtk_spinner_stop;

	// gtk.Button

	GtkWidget* function() c_gtk_button_new;
	GtkWidget* function(gchar* label) c_gtk_button_new_with_label;
	GtkWidget* function(gchar* label) c_gtk_button_new_with_mnemonic;
	GtkWidget* function(gchar* stockId) c_gtk_button_new_from_stock;
	void function(GtkButton* button) c_gtk_button_pressed;
	void function(GtkButton* button) c_gtk_button_released;
	void function(GtkButton* button) c_gtk_button_clicked;
	void function(GtkButton* button) c_gtk_button_enter;
	void function(GtkButton* button) c_gtk_button_leave;
	void function(GtkButton* button, GtkReliefStyle newstyle) c_gtk_button_set_relief;
	GtkReliefStyle function(GtkButton* button) c_gtk_button_get_relief;
	gchar* function(GtkButton* button) c_gtk_button_get_label;
	void function(GtkButton* button, gchar* label) c_gtk_button_set_label;
	gboolean function(GtkButton* button) c_gtk_button_get_use_stock;
	void function(GtkButton* button, gboolean useStock) c_gtk_button_set_use_stock;
	gboolean function(GtkButton* button) c_gtk_button_get_use_underline;
	void function(GtkButton* button, gboolean useUnderline) c_gtk_button_set_use_underline;
	void function(GtkButton* button, gboolean focusOnClick) c_gtk_button_set_focus_on_click;
	gboolean function(GtkButton* button) c_gtk_button_get_focus_on_click;
	void function(GtkButton* button, gfloat xalign, gfloat yalign) c_gtk_button_set_alignment;
	void function(GtkButton* button, gfloat* xalign, gfloat* yalign) c_gtk_button_get_alignment;
	void function(GtkButton* button, GtkWidget* image) c_gtk_button_set_image;
	GtkWidget* function(GtkButton* button) c_gtk_button_get_image;
	void function(GtkButton* button, GtkPositionType position) c_gtk_button_set_image_position;
	GtkPositionType function(GtkButton* button) c_gtk_button_get_image_position;
	void function(GtkButton* button, gboolean alwaysShow) c_gtk_button_set_always_show_image;
	gboolean function(GtkButton* button) c_gtk_button_get_always_show_image;
	GdkWindow* function(GtkButton* button) c_gtk_button_get_event_window;

	// gtk.CheckButton

	GtkWidget* function() c_gtk_check_button_new;
	GtkWidget* function(gchar* label) c_gtk_check_button_new_with_label;
	GtkWidget* function(gchar* label) c_gtk_check_button_new_with_mnemonic;

	// gtk.RadioButton

	GtkWidget* function(GSList* group) c_gtk_radio_button_new;
	GtkWidget* function(GtkRadioButton* radioGroupMember) c_gtk_radio_button_new_from_widget;
	GtkWidget* function(GSList* group, gchar* label) c_gtk_radio_button_new_with_label;
	GtkWidget* function(GtkRadioButton* radioGroupMember, gchar* label) c_gtk_radio_button_new_with_label_from_widget;
	GtkWidget* function(GSList* group, gchar* label) c_gtk_radio_button_new_with_mnemonic;
	GtkWidget* function(GtkRadioButton* radioGroupMember, gchar* label) c_gtk_radio_button_new_with_mnemonic_from_widget;
	void function(GtkRadioButton* radioButton, GSList* group) c_gtk_radio_button_set_group;
	GSList* function(GtkRadioButton* radioButton) c_gtk_radio_button_get_group;
	void function(GtkRadioButton* radioButton, GtkRadioButton* groupSource) c_gtk_radio_button_join_group;

	// gtk.ToggleButton

	GtkWidget* function() c_gtk_toggle_button_new;
	GtkWidget* function(gchar* label) c_gtk_toggle_button_new_with_label;
	GtkWidget* function(gchar* label) c_gtk_toggle_button_new_with_mnemonic;
	void function(GtkToggleButton* toggleButton, gboolean drawIndicator) c_gtk_toggle_button_set_mode;
	gboolean function(GtkToggleButton* toggleButton) c_gtk_toggle_button_get_mode;
	void function(GtkToggleButton* toggleButton) c_gtk_toggle_button_toggled;
	gboolean function(GtkToggleButton* toggleButton) c_gtk_toggle_button_get_active;
	void function(GtkToggleButton* toggleButton, gboolean isActive) c_gtk_toggle_button_set_active;
	gboolean function(GtkToggleButton* toggleButton) c_gtk_toggle_button_get_inconsistent;
	void function(GtkToggleButton* toggleButton, gboolean setting) c_gtk_toggle_button_set_inconsistent;

	// gtk.LinkButton

	GtkWidget* function(gchar* uri) c_gtk_link_button_new;
	GtkWidget* function(gchar* uri, gchar* label) c_gtk_link_button_new_with_label;
	gchar* function(GtkLinkButton* linkButton) c_gtk_link_button_get_uri;
	void function(GtkLinkButton* linkButton, gchar* uri) c_gtk_link_button_set_uri;
	gboolean function(GtkLinkButton* linkButton) c_gtk_link_button_get_visited;
	void function(GtkLinkButton* linkButton, gboolean visited) c_gtk_link_button_set_visited;

	// gtk.ScaleButton

	GtkWidget* function(GtkIconSize size, gdouble min, gdouble max, gdouble step, gchar** icons) c_gtk_scale_button_new;
	void function(GtkScaleButton* button, GtkAdjustment* adjustment) c_gtk_scale_button_set_adjustment;
	void function(GtkScaleButton* button, gchar** icons) c_gtk_scale_button_set_icons;
	void function(GtkScaleButton* button, gdouble value) c_gtk_scale_button_set_value;
	GtkAdjustment* function(GtkScaleButton* button) c_gtk_scale_button_get_adjustment;
	gdouble function(GtkScaleButton* button) c_gtk_scale_button_get_value;
	GtkWidget* function(GtkScaleButton* button) c_gtk_scale_button_get_popup;
	GtkWidget* function(GtkScaleButton* button) c_gtk_scale_button_get_plus_button;
	GtkWidget* function(GtkScaleButton* button) c_gtk_scale_button_get_minus_button;

	// gtk.VolumeButton

	GtkWidget* function() c_gtk_volume_button_new;

	// gtk.Switch

	GtkWidget* function() c_gtk_switch_new;
	void function(GtkSwitch* sw, gboolean isActive) c_gtk_switch_set_active;
	gboolean function(GtkSwitch* sw) c_gtk_switch_get_active;

	// gtk.LockButton

	GtkWidget* function(GPermission* permission) c_gtk_lock_button_new;
	GPermission* function(GtkLockButton* button) c_gtk_lock_button_get_permission;
	void function(GtkLockButton* button, GPermission* permission) c_gtk_lock_button_set_permission;

	// gtk.MenuButton

	GtkWidget* function() c_gtk_menu_button_new;
	void function(GtkMenuButton* menuButton, GtkWidget* popup) c_gtk_menu_button_set_popup;
	GtkMenu* function(GtkMenuButton* menuButton) c_gtk_menu_button_get_popup;
	void function(GtkMenuButton* menuButton, GMenuModel* menuModel) c_gtk_menu_button_set_menu_model;
	GMenuModel* function(GtkMenuButton* menuButton) c_gtk_menu_button_get_menu_model;
	void function(GtkMenuButton* menuButton, GtkArrowType direction) c_gtk_menu_button_set_direction;
	GtkArrowType function(GtkMenuButton* menuButton) c_gtk_menu_button_get_direction;
	void function(GtkMenuButton* menuButton, GtkWidget* alignWidget) c_gtk_menu_button_set_align_widget;
	GtkWidget* function(GtkMenuButton* menuButton) c_gtk_menu_button_get_align_widget;

	// gtk.Entry

	GtkWidget* function() c_gtk_entry_new;
	GtkWidget* function(GtkEntryBuffer* buffer) c_gtk_entry_new_with_buffer;
	GtkEntryBuffer* function(GtkEntry* entry) c_gtk_entry_get_buffer;
	void function(GtkEntry* entry, GtkEntryBuffer* buffer) c_gtk_entry_set_buffer;
	void function(GtkEntry* entry, gchar* text) c_gtk_entry_set_text;
	gchar* function(GtkEntry* entry) c_gtk_entry_get_text;
	guint16 function(GtkEntry* entry) c_gtk_entry_get_text_length;
	void function(GtkEntry* entry, GdkRectangle* textArea) c_gtk_entry_get_text_area;
	void function(GtkEntry* entry, gboolean visible) c_gtk_entry_set_visibility;
	void function(GtkEntry* entry, gunichar ch) c_gtk_entry_set_invisible_char;
	void function(GtkEntry* entry) c_gtk_entry_unset_invisible_char;
	void function(GtkEntry* entry, gint max) c_gtk_entry_set_max_length;
	gboolean function(GtkEntry* entry) c_gtk_entry_get_activates_default;
	gboolean function(GtkEntry* entry) c_gtk_entry_get_has_frame;
	GtkBorder* function(GtkEntry* entry) c_gtk_entry_get_inner_border;
	gint function(GtkEntry* entry) c_gtk_entry_get_width_chars;
	void function(GtkEntry* entry, gboolean setting) c_gtk_entry_set_activates_default;
	void function(GtkEntry* entry, gboolean setting) c_gtk_entry_set_has_frame;
	void function(GtkEntry* entry, GtkBorder* border) c_gtk_entry_set_inner_border;
	void function(GtkEntry* entry, gint nChars) c_gtk_entry_set_width_chars;
	gunichar function(GtkEntry* entry) c_gtk_entry_get_invisible_char;
	void function(GtkEntry* entry, gfloat xalign) c_gtk_entry_set_alignment;
	gfloat function(GtkEntry* entry) c_gtk_entry_get_alignment;
	void function(GtkEntry* entry, gchar* text) c_gtk_entry_set_placeholder_text;
	gchar* function(GtkEntry* entry) c_gtk_entry_get_placeholder_text;
	void function(GtkEntry* entry, gboolean overwrite) c_gtk_entry_set_overwrite_mode;
	gboolean function(GtkEntry* entry) c_gtk_entry_get_overwrite_mode;
	PangoLayout* function(GtkEntry* entry) c_gtk_entry_get_layout;
	void function(GtkEntry* entry, gint* x, gint* y) c_gtk_entry_get_layout_offsets;
	gint function(GtkEntry* entry, gint layoutIndex) c_gtk_entry_layout_index_to_text_index;
	gint function(GtkEntry* entry, gint textIndex) c_gtk_entry_text_index_to_layout_index;
	void function(GtkEntry* entry, PangoAttrList* attrs) c_gtk_entry_set_attributes;
	PangoAttrList* function(GtkEntry* entry) c_gtk_entry_get_attributes;
	gint function(GtkEntry* entry) c_gtk_entry_get_max_length;
	gboolean function(GtkEntry* entry) c_gtk_entry_get_visibility;
	void function(GtkEntry* entry, GtkEntryCompletion* completion) c_gtk_entry_set_completion;
	GtkEntryCompletion* function(GtkEntry* entry) c_gtk_entry_get_completion;
	void function(GtkEntry* entry, GtkAdjustment* adjustment) c_gtk_entry_set_cursor_hadjustment;
	GtkAdjustment* function(GtkEntry* entry) c_gtk_entry_get_cursor_hadjustment;
	void function(GtkEntry* entry, gdouble fraction) c_gtk_entry_set_progress_fraction;
	gdouble function(GtkEntry* entry) c_gtk_entry_get_progress_fraction;
	void function(GtkEntry* entry, gdouble fraction) c_gtk_entry_set_progress_pulse_step;
	gdouble function(GtkEntry* entry) c_gtk_entry_get_progress_pulse_step;
	void function(GtkEntry* entry) c_gtk_entry_progress_pulse;
	gboolean function(GtkEntry* entry, GdkEventKey* event) c_gtk_entry_im_context_filter_keypress;
	void function(GtkEntry* entry) c_gtk_entry_reset_im_context;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkPixbuf* pixbuf) c_gtk_entry_set_icon_from_pixbuf;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gchar* stockId) c_gtk_entry_set_icon_from_stock;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gchar* iconName) c_gtk_entry_set_icon_from_icon_name;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GIcon* icon) c_gtk_entry_set_icon_from_gicon;
	GtkImageType function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_storage_type;
	GdkPixbuf* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_pixbuf;
	gchar* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_stock;
	gchar* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_name;
	GIcon* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_gicon;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gboolean activatable) c_gtk_entry_set_icon_activatable;
	gboolean function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_activatable;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gboolean sensitive) c_gtk_entry_set_icon_sensitive;
	gboolean function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_sensitive;
	gint function(GtkEntry* entry, gint x, gint y) c_gtk_entry_get_icon_at_pos;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gchar* tooltip) c_gtk_entry_set_icon_tooltip_text;
	gchar* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_tooltip_text;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, gchar* tooltip) c_gtk_entry_set_icon_tooltip_markup;
	gchar* function(GtkEntry* entry, GtkEntryIconPosition iconPos) c_gtk_entry_get_icon_tooltip_markup;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GtkTargetList* targetList, GdkDragAction actions) c_gtk_entry_set_icon_drag_source;
	gint function(GtkEntry* entry) c_gtk_entry_get_current_icon_drag_source;
	void function(GtkEntry* entry, GtkEntryIconPosition iconPos, GdkRectangle* iconArea) c_gtk_entry_get_icon_area;
	void function(GtkEntry* entry, GtkInputPurpose purpose) c_gtk_entry_set_input_purpose;
	GtkInputPurpose function(GtkEntry* entry) c_gtk_entry_get_input_purpose;
	void function(GtkEntry* entry, GtkInputHints hints) c_gtk_entry_set_input_hints;
	GtkInputHints function(GtkEntry* entry) c_gtk_entry_get_input_hints;

	// gtk.EntryBuffer

	GtkEntryBuffer* function(gchar* initialChars, gint nInitialChars) c_gtk_entry_buffer_new;
	gchar* function(GtkEntryBuffer* buffer) c_gtk_entry_buffer_get_text;
	void function(GtkEntryBuffer* buffer, gchar* chars, gint nChars) c_gtk_entry_buffer_set_text;
	gsize function(GtkEntryBuffer* buffer) c_gtk_entry_buffer_get_bytes;
	guint function(GtkEntryBuffer* buffer) c_gtk_entry_buffer_get_length;
	gint function(GtkEntryBuffer* buffer) c_gtk_entry_buffer_get_max_length;
	void function(GtkEntryBuffer* buffer, gint maxLength) c_gtk_entry_buffer_set_max_length;
	guint function(GtkEntryBuffer* buffer, guint position, gchar* chars, gint nChars) c_gtk_entry_buffer_insert_text;
	guint function(GtkEntryBuffer* buffer, guint position, gint nChars) c_gtk_entry_buffer_delete_text;
	void function(GtkEntryBuffer* buffer, guint position, guint nChars) c_gtk_entry_buffer_emit_deleted_text;
	void function(GtkEntryBuffer* buffer, guint position, gchar* chars, guint nChars) c_gtk_entry_buffer_emit_inserted_text;

	// gtk.EntryCompletion

	GtkEntryCompletion* function() c_gtk_entry_completion_new;
	GtkEntryCompletion* function(GtkCellArea* area) c_gtk_entry_completion_new_with_area;
	GtkWidget* function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_entry;
	void function(GtkEntryCompletion* completion, GtkTreeModel* model) c_gtk_entry_completion_set_model;
	GtkTreeModel* function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_model;
	void function(GtkEntryCompletion* completion, GtkEntryCompletionMatchFunc func, void* funcData, GDestroyNotify funcNotify) c_gtk_entry_completion_set_match_func;
	void function(GtkEntryCompletion* completion, gint length) c_gtk_entry_completion_set_minimum_key_length;
	gint function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_minimum_key_length;
	gchar* function(GtkEntryCompletion* completion, char* key) c_gtk_entry_completion_compute_prefix;
	void function(GtkEntryCompletion* completion) c_gtk_entry_completion_complete;
	gchar* function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_completion_prefix;
	void function(GtkEntryCompletion* completion) c_gtk_entry_completion_insert_prefix;
	void function(GtkEntryCompletion* completion, gint index, gchar* text) c_gtk_entry_completion_insert_action_text;
	void function(GtkEntryCompletion* completion, gint index, gchar* markup) c_gtk_entry_completion_insert_action_markup;
	void function(GtkEntryCompletion* completion, gint index) c_gtk_entry_completion_delete_action;
	void function(GtkEntryCompletion* completion, gint column) c_gtk_entry_completion_set_text_column;
	gint function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_text_column;
	void function(GtkEntryCompletion* completion, gboolean inlineCompletion) c_gtk_entry_completion_set_inline_completion;
	gboolean function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_inline_completion;
	void function(GtkEntryCompletion* completion, gboolean inlineSelection) c_gtk_entry_completion_set_inline_selection;
	gboolean function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_inline_selection;
	void function(GtkEntryCompletion* completion, gboolean popupCompletion) c_gtk_entry_completion_set_popup_completion;
	gboolean function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_popup_completion;
	void function(GtkEntryCompletion* completion, gboolean popupSetWidth) c_gtk_entry_completion_set_popup_set_width;
	gboolean function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_popup_set_width;
	void function(GtkEntryCompletion* completion, gboolean popupSingleMatch) c_gtk_entry_completion_set_popup_single_match;
	gboolean function(GtkEntryCompletion* completion) c_gtk_entry_completion_get_popup_single_match;

	// gtk.Scale

	GtkWidget* function(GtkOrientation orientation, GtkAdjustment* adjustment) c_gtk_scale_new;
	GtkWidget* function(GtkOrientation orientation, gdouble min, gdouble max, gdouble step) c_gtk_scale_new_with_range;
	void function(GtkScale* scale, gint digits) c_gtk_scale_set_digits;
	void function(GtkScale* scale, gboolean drawValue) c_gtk_scale_set_draw_value;
	void function(GtkScale* scale, gboolean hasOrigin) c_gtk_scale_set_has_origin;
	void function(GtkScale* scale, GtkPositionType pos) c_gtk_scale_set_value_pos;
	gint function(GtkScale* scale) c_gtk_scale_get_digits;
	gboolean function(GtkScale* scale) c_gtk_scale_get_draw_value;
	gboolean function(GtkScale* scale) c_gtk_scale_get_has_origin;
	GtkPositionType function(GtkScale* scale) c_gtk_scale_get_value_pos;
	PangoLayout* function(GtkScale* scale) c_gtk_scale_get_layout;
	void function(GtkScale* scale, gint* x, gint* y) c_gtk_scale_get_layout_offsets;
	void function(GtkScale* scale, gdouble value, GtkPositionType position, gchar* markup) c_gtk_scale_add_mark;
	void function(GtkScale* scale) c_gtk_scale_clear_marks;

	// gtk.HScale

	GtkWidget* function(GtkAdjustment* adjustment) c_gtk_hscale_new;
	GtkWidget* function(gdouble min, gdouble max, gdouble step) c_gtk_hscale_new_with_range;

	// gtk.VScale

	GtkWidget* function(GtkAdjustment* adjustment) c_gtk_vscale_new;
	GtkWidget* function(gdouble min, gdouble max, gdouble step) c_gtk_vscale_new_with_range;

	// gtk.SpinButton

	void function(GtkSpinButton* spinButton, GtkAdjustment* adjustment, gdouble climbRate, guint digits) c_gtk_spin_button_configure;
	GtkWidget* function(GtkAdjustment* adjustment, gdouble climbRate, guint digits) c_gtk_spin_button_new;
	GtkWidget* function(gdouble min, gdouble max, gdouble step) c_gtk_spin_button_new_with_range;
	void function(GtkSpinButton* spinButton, GtkAdjustment* adjustment) c_gtk_spin_button_set_adjustment;
	GtkAdjustment* function(GtkSpinButton* spinButton) c_gtk_spin_button_get_adjustment;
	void function(GtkSpinButton* spinButton, guint digits) c_gtk_spin_button_set_digits;
	void function(GtkSpinButton* spinButton, gdouble step, gdouble page) c_gtk_spin_button_set_increments;
	void function(GtkSpinButton* spinButton, gdouble min, gdouble max) c_gtk_spin_button_set_range;
	gint function(GtkSpinButton* spinButton) c_gtk_spin_button_get_value_as_int;
	void function(GtkSpinButton* spinButton, gdouble value) c_gtk_spin_button_set_value;
	void function(GtkSpinButton* spinButton, GtkSpinButtonUpdatePolicy policy) c_gtk_spin_button_set_update_policy;
	void function(GtkSpinButton* spinButton, gboolean numeric) c_gtk_spin_button_set_numeric;
	void function(GtkSpinButton* spinButton, GtkSpinType direction, gdouble increment) c_gtk_spin_button_spin;
	void function(GtkSpinButton* spinButton, gboolean wrap) c_gtk_spin_button_set_wrap;
	void function(GtkSpinButton* spinButton, gboolean snapToTicks) c_gtk_spin_button_set_snap_to_ticks;
	void function(GtkSpinButton* spinButton) c_gtk_spin_button_update;
	guint function(GtkSpinButton* spinButton) c_gtk_spin_button_get_digits;
	void function(GtkSpinButton* spinButton, gdouble* step, gdouble* page) c_gtk_spin_button_get_increments;
	gboolean function(GtkSpinButton* spinButton) c_gtk_spin_button_get_numeric;
	void function(GtkSpinButton* spinButton, gdouble* min, gdouble* max) c_gtk_spin_button_get_range;
	gboolean function(GtkSpinButton* spinButton) c_gtk_spin_button_get_snap_to_ticks;
	GtkSpinButtonUpdatePolicy function(GtkSpinButton* spinButton) c_gtk_spin_button_get_update_policy;
	gdouble function(GtkSpinButton* spinButton) c_gtk_spin_button_get_value;
	gboolean function(GtkSpinButton* spinButton) c_gtk_spin_button_get_wrap;

	// gtk.SearchEntry

	GtkWidget* function() c_gtk_search_entry_new;

	// gtk.EditableT


	// gtk.EditableT

	void function(GtkEditable* editable, gint startPos, gint endPos) c_gtk_editable_select_region;
	gboolean function(GtkEditable* editable, gint* startPos, gint* endPos) c_gtk_editable_get_selection_bounds;
	void function(GtkEditable* editable, gchar* newText, gint newTextLength, gint* position) c_gtk_editable_insert_text;
	void function(GtkEditable* editable, gint startPos, gint endPos) c_gtk_editable_delete_text;
	gchar* function(GtkEditable* editable, gint startPos, gint endPos) c_gtk_editable_get_chars;
	void function(GtkEditable* editable) c_gtk_editable_cut_clipboard;
	void function(GtkEditable* editable) c_gtk_editable_copy_clipboard;
	void function(GtkEditable* editable) c_gtk_editable_paste_clipboard;
	void function(GtkEditable* editable) c_gtk_editable_delete_selection;
	void function(GtkEditable* editable, gint position) c_gtk_editable_set_position;
	gint function(GtkEditable* editable) c_gtk_editable_get_position;
	void function(GtkEditable* editable, gboolean isEditable) c_gtk_editable_set_editable;
	gboolean function(GtkEditable* editable) c_gtk_editable_get_editable;

	// gtk.TextIter

	GtkTextBuffer* function(GtkTextIter* iter) c_gtk_text_iter_get_buffer;
	GtkTextIter* function(GtkTextIter* iter) c_gtk_text_iter_copy;
	void function(GtkTextIter* iter, GtkTextIter* other) c_gtk_text_iter_assign;
	void function(GtkTextIter* iter) c_gtk_text_iter_free;
	gint function(GtkTextIter* iter) c_gtk_text_iter_get_offset;
	gint function(GtkTextIter* iter) c_gtk_text_iter_get_line;
	gint function(GtkTextIter* iter) c_gtk_text_iter_get_line_offset;
	gint function(GtkTextIter* iter) c_gtk_text_iter_get_line_index;
	gint function(GtkTextIter* iter) c_gtk_text_iter_get_visible_line_index;
	gint function(GtkTextIter* iter) c_gtk_text_iter_get_visible_line_offset;
	gunichar function(GtkTextIter* iter) c_gtk_text_iter_get_char;
	gchar* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_slice;
	gchar* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_text;
	gchar* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_visible_slice;
	gchar* function(GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_get_visible_text;
	GdkPixbuf* function(GtkTextIter* iter) c_gtk_text_iter_get_pixbuf;
	GSList* function(GtkTextIter* iter) c_gtk_text_iter_get_marks;
	GSList* function(GtkTextIter* iter, gboolean toggledOn) c_gtk_text_iter_get_toggled_tags;
	GtkTextChildAnchor* function(GtkTextIter* iter) c_gtk_text_iter_get_child_anchor;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_begins_tag;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_ends_tag;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_toggles_tag;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_has_tag;
	GSList* function(GtkTextIter* iter) c_gtk_text_iter_get_tags;
	gboolean function(GtkTextIter* iter, gboolean defaultSetting) c_gtk_text_iter_editable;
	gboolean function(GtkTextIter* iter, gboolean defaultEditability) c_gtk_text_iter_can_insert;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_starts_word;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_ends_word;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_inside_word;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_starts_line;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_ends_line;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_starts_sentence;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_ends_sentence;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_inside_sentence;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_is_cursor_position;
	gint function(GtkTextIter* iter) c_gtk_text_iter_get_chars_in_line;
	gint function(GtkTextIter* iter) c_gtk_text_iter_get_bytes_in_line;
	gboolean function(GtkTextIter* iter, GtkTextAttributes* values) c_gtk_text_iter_get_attributes;
	PangoLanguage* function(GtkTextIter* iter) c_gtk_text_iter_get_language;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_is_end;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_is_start;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_char;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_char;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_chars;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_chars;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_line;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_line;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_lines;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_lines;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_word_ends;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_word_starts;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_word_end;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_word_start;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_cursor_position;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_cursor_position;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_cursor_positions;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_cursor_positions;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_sentence_start;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_sentence_starts;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_sentence_end;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_sentence_ends;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_visible_word_ends;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_visible_word_starts;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_visible_word_end;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_visible_word_start;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_visible_cursor_position;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_visible_cursor_position;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_visible_cursor_positions;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_visible_cursor_positions;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_visible_line;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_backward_visible_line;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_forward_visible_lines;
	gboolean function(GtkTextIter* iter, gint count) c_gtk_text_iter_backward_visible_lines;
	void function(GtkTextIter* iter, gint charOffset) c_gtk_text_iter_set_offset;
	void function(GtkTextIter* iter, gint lineNumber) c_gtk_text_iter_set_line;
	void function(GtkTextIter* iter, gint charOnLine) c_gtk_text_iter_set_line_offset;
	void function(GtkTextIter* iter, gint byteOnLine) c_gtk_text_iter_set_line_index;
	void function(GtkTextIter* iter, gint byteOnLine) c_gtk_text_iter_set_visible_line_index;
	void function(GtkTextIter* iter, gint charOnLine) c_gtk_text_iter_set_visible_line_offset;
	void function(GtkTextIter* iter) c_gtk_text_iter_forward_to_end;
	gboolean function(GtkTextIter* iter) c_gtk_text_iter_forward_to_line_end;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_forward_to_tag_toggle;
	gboolean function(GtkTextIter* iter, GtkTextTag* tag) c_gtk_text_iter_backward_to_tag_toggle;
	gboolean function(GtkTextIter* iter, GtkTextCharPredicate pred, void* userData, GtkTextIter* limit) c_gtk_text_iter_forward_find_char;
	gboolean function(GtkTextIter* iter, GtkTextCharPredicate pred, void* userData, GtkTextIter* limit) c_gtk_text_iter_backward_find_char;
	gboolean function(GtkTextIter* iter, gchar* str, GtkTextSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit) c_gtk_text_iter_forward_search;
	gboolean function(GtkTextIter* iter, gchar* str, GtkTextSearchFlags flags, GtkTextIter* matchStart, GtkTextIter* matchEnd, GtkTextIter* limit) c_gtk_text_iter_backward_search;
	gboolean function(GtkTextIter* lhs, GtkTextIter* rhs) c_gtk_text_iter_equal;
	gint function(GtkTextIter* lhs, GtkTextIter* rhs) c_gtk_text_iter_compare;
	gboolean function(GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end) c_gtk_text_iter_in_range;
	void function(GtkTextIter* first, GtkTextIter* second) c_gtk_text_iter_order;

	// gtk.TextMark

	GtkTextMark* function(gchar* name, gboolean leftGravity) c_gtk_text_mark_new;
	void function(GtkTextMark* mark, gboolean setting) c_gtk_text_mark_set_visible;
	gboolean function(GtkTextMark* mark) c_gtk_text_mark_get_visible;
	gboolean function(GtkTextMark* mark) c_gtk_text_mark_get_deleted;
	gchar* function(GtkTextMark* mark) c_gtk_text_mark_get_name;
	GtkTextBuffer* function(GtkTextMark* mark) c_gtk_text_mark_get_buffer;
	gboolean function(GtkTextMark* mark) c_gtk_text_mark_get_left_gravity;

	// gtk.TextBuffer

	GtkTextBuffer* function(GtkTextTagTable* table) c_gtk_text_buffer_new;
	gint function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_line_count;
	gint function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_char_count;
	GtkTextTagTable* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_tag_table;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len) c_gtk_text_buffer_insert;
	void function(GtkTextBuffer* buffer, gchar* text, gint len) c_gtk_text_buffer_insert_at_cursor;
	gboolean function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len, gboolean defaultEditable) c_gtk_text_buffer_insert_interactive;
	gboolean function(GtkTextBuffer* buffer, gchar* text, gint len, gboolean defaultEditable) c_gtk_text_buffer_insert_interactive_at_cursor;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_insert_range;
	gboolean function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextIter* start, GtkTextIter* end, gboolean defaultEditable) c_gtk_text_buffer_insert_range_interactive;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len, GtkTextTag* firstTag, ... ) c_gtk_text_buffer_insert_with_tags;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gchar* text, gint len, gchar* firstTagName, ... ) c_gtk_text_buffer_insert_with_tags_by_name;
	void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_delete;
	gboolean function(GtkTextBuffer* buffer, GtkTextIter* startIter, GtkTextIter* endIter, gboolean defaultEditable) c_gtk_text_buffer_delete_interactive;
	gboolean function(GtkTextBuffer* buffer, GtkTextIter* iter, gboolean interactive, gboolean defaultEditable) c_gtk_text_buffer_backspace;
	void function(GtkTextBuffer* buffer, gchar* text, gint len) c_gtk_text_buffer_set_text;
	gchar* function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end, gboolean includeHiddenChars) c_gtk_text_buffer_get_text;
	gchar* function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end, gboolean includeHiddenChars) c_gtk_text_buffer_get_slice;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GdkPixbuf* pixbuf) c_gtk_text_buffer_insert_pixbuf;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor) c_gtk_text_buffer_insert_child_anchor;
	GtkTextChildAnchor* function(GtkTextBuffer* buffer, GtkTextIter* iter) c_gtk_text_buffer_create_child_anchor;
	GtkTextMark* function(GtkTextBuffer* buffer, gchar* markName, GtkTextIter* where, gboolean leftGravity) c_gtk_text_buffer_create_mark;
	void function(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where) c_gtk_text_buffer_move_mark;
	void function(GtkTextBuffer* buffer, gchar* name, GtkTextIter* where) c_gtk_text_buffer_move_mark_by_name;
	void function(GtkTextBuffer* buffer, GtkTextMark* mark, GtkTextIter* where) c_gtk_text_buffer_add_mark;
	void function(GtkTextBuffer* buffer, GtkTextMark* mark) c_gtk_text_buffer_delete_mark;
	void function(GtkTextBuffer* buffer, gchar* name) c_gtk_text_buffer_delete_mark_by_name;
	GtkTextMark* function(GtkTextBuffer* buffer, gchar* name) c_gtk_text_buffer_get_mark;
	GtkTextMark* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_insert;
	GtkTextMark* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_selection_bound;
	gboolean function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_has_selection;
	void function(GtkTextBuffer* buffer, GtkTextIter* where) c_gtk_text_buffer_place_cursor;
	void function(GtkTextBuffer* buffer, GtkTextIter* ins, GtkTextIter* bound) c_gtk_text_buffer_select_range;
	void function(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_apply_tag;
	void function(GtkTextBuffer* buffer, GtkTextTag* tag, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_remove_tag;
	void function(GtkTextBuffer* buffer, gchar* name, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_apply_tag_by_name;
	void function(GtkTextBuffer* buffer, gchar* name, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_remove_tag_by_name;
	void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_remove_all_tags;
	GtkTextTag* function(GtkTextBuffer* buffer, gchar* tagName, gchar* firstPropertyName, ... ) c_gtk_text_buffer_create_tag;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint lineNumber, gint charOffset) c_gtk_text_buffer_get_iter_at_line_offset;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint charOffset) c_gtk_text_buffer_get_iter_at_offset;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint lineNumber) c_gtk_text_buffer_get_iter_at_line;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, gint lineNumber, gint byteIndex) c_gtk_text_buffer_get_iter_at_line_index;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextMark* mark) c_gtk_text_buffer_get_iter_at_mark;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter, GtkTextChildAnchor* anchor) c_gtk_text_buffer_get_iter_at_child_anchor;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter) c_gtk_text_buffer_get_start_iter;
	void function(GtkTextBuffer* buffer, GtkTextIter* iter) c_gtk_text_buffer_get_end_iter;
	void function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_get_bounds;
	gboolean function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_modified;
	void function(GtkTextBuffer* buffer, gboolean setting) c_gtk_text_buffer_set_modified;
	gboolean function(GtkTextBuffer* buffer, gboolean interactive, gboolean defaultEditable) c_gtk_text_buffer_delete_selection;
	void function(GtkTextBuffer* buffer, GtkClipboard* clipboard, GtkTextIter* overrideLocation, gboolean defaultEditable) c_gtk_text_buffer_paste_clipboard;
	void function(GtkTextBuffer* buffer, GtkClipboard* clipboard) c_gtk_text_buffer_copy_clipboard;
	void function(GtkTextBuffer* buffer, GtkClipboard* clipboard, gboolean defaultEditable) c_gtk_text_buffer_cut_clipboard;
	gboolean function(GtkTextBuffer* buffer, GtkTextIter* start, GtkTextIter* end) c_gtk_text_buffer_get_selection_bounds;
	void function(GtkTextBuffer* buffer) c_gtk_text_buffer_begin_user_action;
	void function(GtkTextBuffer* buffer) c_gtk_text_buffer_end_user_action;
	void function(GtkTextBuffer* buffer, GtkClipboard* clipboard) c_gtk_text_buffer_add_selection_clipboard;
	void function(GtkTextBuffer* buffer, GtkClipboard* clipboard) c_gtk_text_buffer_remove_selection_clipboard;
	gboolean function(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GdkAtom format, GtkTextIter* iter, guint8* data, gsize length, GError** error) c_gtk_text_buffer_deserialize;
	gboolean function(GtkTextBuffer* buffer, GdkAtom format) c_gtk_text_buffer_deserialize_get_can_create_tags;
	void function(GtkTextBuffer* buffer, GdkAtom format, gboolean canCreateTags) c_gtk_text_buffer_deserialize_set_can_create_tags;
	GtkTargetList* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_copy_target_list;
	GdkAtom* function(GtkTextBuffer* buffer, gint* nFormats) c_gtk_text_buffer_get_deserialize_formats;
	GtkTargetList* function(GtkTextBuffer* buffer) c_gtk_text_buffer_get_paste_target_list;
	GdkAtom* function(GtkTextBuffer* buffer, gint* nFormats) c_gtk_text_buffer_get_serialize_formats;
	GdkAtom function(GtkTextBuffer* buffer, gchar* mimeType, GtkTextBufferDeserializeFunc funct, void* userData, GDestroyNotify userDataDestroy) c_gtk_text_buffer_register_deserialize_format;
	GdkAtom function(GtkTextBuffer* buffer, gchar* tagsetName) c_gtk_text_buffer_register_deserialize_tagset;
	GdkAtom function(GtkTextBuffer* buffer, gchar* mimeType, GtkTextBufferSerializeFunc funct, void* userData, GDestroyNotify userDataDestroy) c_gtk_text_buffer_register_serialize_format;
	GdkAtom function(GtkTextBuffer* buffer, gchar* tagsetName) c_gtk_text_buffer_register_serialize_tagset;
	guint8* function(GtkTextBuffer* registerBuffer, GtkTextBuffer* contentBuffer, GdkAtom format, GtkTextIter* start, GtkTextIter* end, gsize* length) c_gtk_text_buffer_serialize;
	void function(GtkTextBuffer* buffer, GdkAtom format) c_gtk_text_buffer_unregister_deserialize_format;
	void function(GtkTextBuffer* buffer, GdkAtom format) c_gtk_text_buffer_unregister_serialize_format;

	// gtk.TextTag

	GtkTextTag* function(gchar* name) c_gtk_text_tag_new;
	gint function(GtkTextTag* tag) c_gtk_text_tag_get_priority;
	void function(GtkTextTag* tag, gint priority) c_gtk_text_tag_set_priority;
	gboolean function(GtkTextTag* tag, GObject* eventObject, GdkEvent* event, GtkTextIter* iter) c_gtk_text_tag_event;

	// gtk.TextAttributes

	GtkTextAttributes* function() c_gtk_text_attributes_new;
	GtkTextAttributes* function(GtkTextAttributes* src) c_gtk_text_attributes_copy;
	void function(GtkTextAttributes* src, GtkTextAttributes* dest) c_gtk_text_attributes_copy_values;
	void function(GtkTextAttributes* values) c_gtk_text_attributes_unref;
	GtkTextAttributes* function(GtkTextAttributes* values) c_gtk_text_attributes_ref;

	// gtk.TextTagTable

	GtkTextTagTable* function() c_gtk_text_tag_table_new;
	void function(GtkTextTagTable* table, GtkTextTag* tag) c_gtk_text_tag_table_add;
	void function(GtkTextTagTable* table, GtkTextTag* tag) c_gtk_text_tag_table_remove;
	GtkTextTag* function(GtkTextTagTable* table, gchar* name) c_gtk_text_tag_table_lookup;
	void function(GtkTextTagTable* table, GtkTextTagTableForeach func, void* data) c_gtk_text_tag_table_foreach;
	gint function(GtkTextTagTable* table) c_gtk_text_tag_table_get_size;

	// gtk.TextView

	GtkWidget* function() c_gtk_text_view_new;
	GtkWidget* function(GtkTextBuffer* buffer) c_gtk_text_view_new_with_buffer;
	void function(GtkTextView* textView, GtkTextBuffer* buffer) c_gtk_text_view_set_buffer;
	GtkTextBuffer* function(GtkTextView* textView) c_gtk_text_view_get_buffer;
	GtkAdjustment* function(GtkTextView* textView) c_gtk_text_view_get_hadjustment;
	GtkAdjustment* function(GtkTextView* textView) c_gtk_text_view_get_vadjustment;
	void function(GtkTextView* textView, GtkTextMark* mark, gdouble withinMargin, gboolean useAlign, gdouble xalign, gdouble yalign) c_gtk_text_view_scroll_to_mark;
	gboolean function(GtkTextView* textView, GtkTextIter* iter, gdouble withinMargin, gboolean useAlign, gdouble xalign, gdouble yalign) c_gtk_text_view_scroll_to_iter;
	void function(GtkTextView* textView, GtkTextMark* mark) c_gtk_text_view_scroll_mark_onscreen;
	gboolean function(GtkTextView* textView, GtkTextMark* mark) c_gtk_text_view_move_mark_onscreen;
	gboolean function(GtkTextView* textView) c_gtk_text_view_place_cursor_onscreen;
	void function(GtkTextView* textView, GdkRectangle* visibleRect) c_gtk_text_view_get_visible_rect;
	void function(GtkTextView* textView, GtkTextIter* iter, GdkRectangle* location) c_gtk_text_view_get_iter_location;
	void function(GtkTextView* textView, GtkTextIter* iter, GdkRectangle* strong, GdkRectangle* weak) c_gtk_text_view_get_cursor_locations;
	void function(GtkTextView* textView, GtkTextIter* targetIter, gint y, gint* lineTop) c_gtk_text_view_get_line_at_y;
	void function(GtkTextView* textView, GtkTextIter* iter, gint* y, gint* height) c_gtk_text_view_get_line_yrange;
	void function(GtkTextView* textView, GtkTextIter* iter, gint x, gint y) c_gtk_text_view_get_iter_at_location;
	void function(GtkTextView* textView, GtkTextIter* iter, gint* trailing, gint x, gint y) c_gtk_text_view_get_iter_at_position;
	void function(GtkTextView* textView, GtkTextWindowType win, gint bufferX, gint bufferY, gint* windowX, gint* windowY) c_gtk_text_view_buffer_to_window_coords;
	void function(GtkTextView* textView, GtkTextWindowType win, gint windowX, gint windowY, gint* bufferX, gint* bufferY) c_gtk_text_view_window_to_buffer_coords;
	GdkWindow* function(GtkTextView* textView, GtkTextWindowType win) c_gtk_text_view_get_window;
	GtkTextWindowType function(GtkTextView* textView, GdkWindow* window) c_gtk_text_view_get_window_type;
	void function(GtkTextView* textView, GtkTextWindowType type, gint size) c_gtk_text_view_set_border_window_size;
	gint function(GtkTextView* textView, GtkTextWindowType type) c_gtk_text_view_get_border_window_size;
	gboolean function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_forward_display_line;
	gboolean function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_backward_display_line;
	gboolean function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_forward_display_line_end;
	gboolean function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_backward_display_line_start;
	gboolean function(GtkTextView* textView, GtkTextIter* iter) c_gtk_text_view_starts_display_line;
	gboolean function(GtkTextView* textView, GtkTextIter* iter, gint count) c_gtk_text_view_move_visually;
	void function(GtkTextView* textView, GtkWidget* child, GtkTextChildAnchor* anchor) c_gtk_text_view_add_child_at_anchor;
	void function(GtkTextView* textView, GtkWidget* child, GtkTextWindowType whichWindow, gint xpos, gint ypos) c_gtk_text_view_add_child_in_window;
	void function(GtkTextView* textView, GtkWidget* child, gint xpos, gint ypos) c_gtk_text_view_move_child;
	void function(GtkTextView* textView, GtkWrapMode wrapMode) c_gtk_text_view_set_wrap_mode;
	GtkWrapMode function(GtkTextView* textView) c_gtk_text_view_get_wrap_mode;
	void function(GtkTextView* textView, gboolean setting) c_gtk_text_view_set_editable;
	gboolean function(GtkTextView* textView) c_gtk_text_view_get_editable;
	void function(GtkTextView* textView, gboolean setting) c_gtk_text_view_set_cursor_visible;
	gboolean function(GtkTextView* textView) c_gtk_text_view_get_cursor_visible;
	void function(GtkTextView* textView, gboolean overwrite) c_gtk_text_view_set_overwrite;
	gboolean function(GtkTextView* textView) c_gtk_text_view_get_overwrite;
	void function(GtkTextView* textView, gint pixelsAboveLines) c_gtk_text_view_set_pixels_above_lines;
	gint function(GtkTextView* textView) c_gtk_text_view_get_pixels_above_lines;
	void function(GtkTextView* textView, gint pixelsBelowLines) c_gtk_text_view_set_pixels_below_lines;
	gint function(GtkTextView* textView) c_gtk_text_view_get_pixels_below_lines;
	void function(GtkTextView* textView, gint pixelsInsideWrap) c_gtk_text_view_set_pixels_inside_wrap;
	gint function(GtkTextView* textView) c_gtk_text_view_get_pixels_inside_wrap;
	void function(GtkTextView* textView, GtkJustification justification) c_gtk_text_view_set_justification;
	GtkJustification function(GtkTextView* textView) c_gtk_text_view_get_justification;
	void function(GtkTextView* textView, gint leftMargin) c_gtk_text_view_set_left_margin;
	gint function(GtkTextView* textView) c_gtk_text_view_get_left_margin;
	void function(GtkTextView* textView, gint rightMargin) c_gtk_text_view_set_right_margin;
	gint function(GtkTextView* textView) c_gtk_text_view_get_right_margin;
	void function(GtkTextView* textView, gint indent) c_gtk_text_view_set_indent;
	gint function(GtkTextView* textView) c_gtk_text_view_get_indent;
	void function(GtkTextView* textView, PangoTabArray* tabs) c_gtk_text_view_set_tabs;
	PangoTabArray* function(GtkTextView* textView) c_gtk_text_view_get_tabs;
	void function(GtkTextView* textView, gboolean acceptsTab) c_gtk_text_view_set_accepts_tab;
	gboolean function(GtkTextView* textView) c_gtk_text_view_get_accepts_tab;
	GtkTextAttributes* function(GtkTextView* textView) c_gtk_text_view_get_default_attributes;
	gboolean function(GtkTextView* textView, GdkEventKey* event) c_gtk_text_view_im_context_filter_keypress;
	void function(GtkTextView* textView) c_gtk_text_view_reset_im_context;
	void function(GtkTextView* textView, GtkInputPurpose purpose) c_gtk_text_view_set_input_purpose;
	GtkInputPurpose function(GtkTextView* textView) c_gtk_text_view_get_input_purpose;
	void function(GtkTextView* textView, GtkInputHints hints) c_gtk_text_view_set_input_hints;
	GtkInputHints function(GtkTextView* textView) c_gtk_text_view_get_input_hints;

	// gtk.TextChildAnchor

	GtkTextChildAnchor* function() c_gtk_text_child_anchor_new;
	GList* function(GtkTextChildAnchor* anchor) c_gtk_text_child_anchor_get_widgets;
	gboolean function(GtkTextChildAnchor* anchor) c_gtk_text_child_anchor_get_deleted;

	// gtk.TreePath

	GtkTreePath* function() c_gtk_tree_path_new;
	GtkTreePath* function(gchar* path) c_gtk_tree_path_new_from_string;
	GtkTreePath* function(gint firstIndex, ... ) c_gtk_tree_path_new_from_indices;
	gchar* function(GtkTreePath* path) c_gtk_tree_path_to_string;
	GtkTreePath* function() c_gtk_tree_path_new_first;
	void function(GtkTreePath* path, gint index) c_gtk_tree_path_append_index;
	void function(GtkTreePath* path, gint index) c_gtk_tree_path_prepend_index;
	gint function(GtkTreePath* path) c_gtk_tree_path_get_depth;
	gint* function(GtkTreePath* path) c_gtk_tree_path_get_indices;
	gint* function(GtkTreePath* path, gint* depth) c_gtk_tree_path_get_indices_with_depth;
	void function(GtkTreePath* path) c_gtk_tree_path_free;
	GtkTreePath* function(GtkTreePath* path) c_gtk_tree_path_copy;
	gint function(GtkTreePath* a, GtkTreePath* b) c_gtk_tree_path_compare;
	void function(GtkTreePath* path) c_gtk_tree_path_next;
	gboolean function(GtkTreePath* path) c_gtk_tree_path_prev;
	gboolean function(GtkTreePath* path) c_gtk_tree_path_up;
	void function(GtkTreePath* path) c_gtk_tree_path_down;
	gboolean function(GtkTreePath* path, GtkTreePath* descendant) c_gtk_tree_path_is_ancestor;
	gboolean function(GtkTreePath* path, GtkTreePath* ancestor) c_gtk_tree_path_is_descendant;

	// gtk.TreeModelT


	// gtk.TreeModelT

	GtkTreeModelFlags function(GtkTreeModel* treeModel) c_gtk_tree_model_get_flags;
	gint function(GtkTreeModel* treeModel) c_gtk_tree_model_get_n_columns;
	GType function(GtkTreeModel* treeModel, gint index) c_gtk_tree_model_get_column_type;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreePath* path) c_gtk_tree_model_get_iter;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, gchar* pathString) c_gtk_tree_model_get_iter_from_string;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_get_iter_first;
	GtkTreePath* function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_get_path;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter, gint column, GValue* value) c_gtk_tree_model_get_value;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_next;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_previous;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent) c_gtk_tree_model_iter_children;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_has_child;
	gint function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_iter_n_children;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* parent, gint n) c_gtk_tree_model_iter_nth_child;
	gboolean function(GtkTreeModel* treeModel, GtkTreeIter* iter, GtkTreeIter* child) c_gtk_tree_model_iter_parent;
	gchar* function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_get_string_from_iter;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_ref_node;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter) c_gtk_tree_model_unref_node;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter, ... ) c_gtk_tree_model_get;
	void function(GtkTreeModel* treeModel, GtkTreeIter* iter, va_list varArgs) c_gtk_tree_model_get_valist;
	void function(GtkTreeModel* model, GtkTreeModelForeachFunc func, void* userData) c_gtk_tree_model_foreach;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) c_gtk_tree_model_row_changed;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) c_gtk_tree_model_row_inserted;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter) c_gtk_tree_model_row_has_child_toggled;
	void function(GtkTreeModel* treeModel, GtkTreePath* path) c_gtk_tree_model_row_deleted;
	void function(GtkTreeModel* treeModel, GtkTreePath* path, GtkTreeIter* iter, gint* newOrder) c_gtk_tree_model_rows_reordered;

	// gtk.TreeIter

	GtkTreeIter* function(GtkTreeIter* iter) c_gtk_tree_iter_copy;
	void function(GtkTreeIter* iter) c_gtk_tree_iter_free;

	// gtk.TreeRowReference

	GtkTreeRowReference* function(GtkTreeModel* model, GtkTreePath* path) c_gtk_tree_row_reference_new;
	GtkTreeRowReference* function(GObject* proxy, GtkTreeModel* model, GtkTreePath* path) c_gtk_tree_row_reference_new_proxy;
	GtkTreeModel* function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_get_model;
	GtkTreePath* function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_get_path;
	gboolean function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_valid;
	void function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_free;
	GtkTreeRowReference* function(GtkTreeRowReference* reference) c_gtk_tree_row_reference_copy;
	void function(GObject* proxy, GtkTreePath* path) c_gtk_tree_row_reference_inserted;
	void function(GObject* proxy, GtkTreePath* path) c_gtk_tree_row_reference_deleted;
	void function(GObject* proxy, GtkTreePath* path, GtkTreeIter* iter, gint* newOrder) c_gtk_tree_row_reference_reordered;

	// gtk.TreeIterError


	// gtk.


	// gtk.TreeSelection

	void function(GtkTreeSelection* selection, GtkSelectionMode type) c_gtk_tree_selection_set_mode;
	GtkSelectionMode function(GtkTreeSelection* selection) c_gtk_tree_selection_get_mode;
	void function(GtkTreeSelection* selection, GtkTreeSelectionFunc func, void* data, GDestroyNotify destroy) c_gtk_tree_selection_set_select_function;
	GtkTreeSelectionFunc function(GtkTreeSelection* selection) c_gtk_tree_selection_get_select_function;
	gpointer function(GtkTreeSelection* selection) c_gtk_tree_selection_get_user_data;
	GtkTreeView* function(GtkTreeSelection* selection) c_gtk_tree_selection_get_tree_view;
	gboolean function(GtkTreeSelection* selection, GtkTreeModel** model, GtkTreeIter* iter) c_gtk_tree_selection_get_selected;
	void function(GtkTreeSelection* selection, GtkTreeSelectionForeachFunc func, void* data) c_gtk_tree_selection_selected_foreach;
	GList* function(GtkTreeSelection* selection, GtkTreeModel** model) c_gtk_tree_selection_get_selected_rows;
	gint function(GtkTreeSelection* selection) c_gtk_tree_selection_count_selected_rows;
	void function(GtkTreeSelection* selection, GtkTreePath* path) c_gtk_tree_selection_select_path;
	void function(GtkTreeSelection* selection, GtkTreePath* path) c_gtk_tree_selection_unselect_path;
	gboolean function(GtkTreeSelection* selection, GtkTreePath* path) c_gtk_tree_selection_path_is_selected;
	void function(GtkTreeSelection* selection, GtkTreeIter* iter) c_gtk_tree_selection_select_iter;
	void function(GtkTreeSelection* selection, GtkTreeIter* iter) c_gtk_tree_selection_unselect_iter;
	gboolean function(GtkTreeSelection* selection, GtkTreeIter* iter) c_gtk_tree_selection_iter_is_selected;
	void function(GtkTreeSelection* selection) c_gtk_tree_selection_select_all;
	void function(GtkTreeSelection* selection) c_gtk_tree_selection_unselect_all;
	void function(GtkTreeSelection* selection, GtkTreePath* startPath, GtkTreePath* endPath) c_gtk_tree_selection_select_range;
	void function(GtkTreeSelection* selection, GtkTreePath* startPath, GtkTreePath* endPath) c_gtk_tree_selection_unselect_range;

	// gtk.TreeViewColumn

	GtkTreeViewColumn* function() c_gtk_tree_view_column_new;
	GtkTreeViewColumn* function(GtkCellArea* area) c_gtk_tree_view_column_new_with_area;
	GtkTreeViewColumn* function(gchar* title, GtkCellRenderer* cell, ... ) c_gtk_tree_view_column_new_with_attributes;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, gboolean expand) c_gtk_tree_view_column_pack_start;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell, gboolean expand) c_gtk_tree_view_column_pack_end;
	void function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_clear;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, gchar* attribute, gint column) c_gtk_tree_view_column_add_attribute;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, ... ) c_gtk_tree_view_column_set_attributes;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, GtkTreeCellDataFunc func, void* funcData, GDestroyNotify destroy) c_gtk_tree_view_column_set_cell_data_func;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer) c_gtk_tree_view_column_clear_attributes;
	void function(GtkTreeViewColumn* treeColumn, gint spacing) c_gtk_tree_view_column_set_spacing;
	gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_spacing;
	void function(GtkTreeViewColumn* treeColumn, gboolean visible) c_gtk_tree_view_column_set_visible;
	gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_visible;
	void function(GtkTreeViewColumn* treeColumn, gboolean resizable) c_gtk_tree_view_column_set_resizable;
	gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_resizable;
	void function(GtkTreeViewColumn* treeColumn, GtkTreeViewColumnSizing type) c_gtk_tree_view_column_set_sizing;
	GtkTreeViewColumnSizing function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sizing;
	gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_width;
	gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_fixed_width;
	void function(GtkTreeViewColumn* treeColumn, gint fixedWidth) c_gtk_tree_view_column_set_fixed_width;
	void function(GtkTreeViewColumn* treeColumn, gint minWidth) c_gtk_tree_view_column_set_min_width;
	gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_min_width;
	void function(GtkTreeViewColumn* treeColumn, gint maxWidth) c_gtk_tree_view_column_set_max_width;
	gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_max_width;
	void function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_clicked;
	void function(GtkTreeViewColumn* treeColumn, gchar* title) c_gtk_tree_view_column_set_title;
	gchar* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_title;
	void function(GtkTreeViewColumn* treeColumn, gboolean expand) c_gtk_tree_view_column_set_expand;
	gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_expand;
	void function(GtkTreeViewColumn* treeColumn, gboolean clickable) c_gtk_tree_view_column_set_clickable;
	gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_clickable;
	void function(GtkTreeViewColumn* treeColumn, GtkWidget* widget) c_gtk_tree_view_column_set_widget;
	GtkWidget* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_widget;
	GtkWidget* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_button;
	void function(GtkTreeViewColumn* treeColumn, gfloat xalign) c_gtk_tree_view_column_set_alignment;
	gfloat function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_alignment;
	void function(GtkTreeViewColumn* treeColumn, gboolean reorderable) c_gtk_tree_view_column_set_reorderable;
	gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_reorderable;
	void function(GtkTreeViewColumn* treeColumn, gint sortColumnId) c_gtk_tree_view_column_set_sort_column_id;
	gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sort_column_id;
	void function(GtkTreeViewColumn* treeColumn, gboolean setting) c_gtk_tree_view_column_set_sort_indicator;
	gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sort_indicator;
	void function(GtkTreeViewColumn* treeColumn, GtkSortType order) c_gtk_tree_view_column_set_sort_order;
	GtkSortType function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_sort_order;
	void function(GtkTreeViewColumn* treeColumn, GtkTreeModel* treeModel, GtkTreeIter* iter, gboolean isExpander, gboolean isExpanded) c_gtk_tree_view_column_cell_set_cell_data;
	void function(GtkTreeViewColumn* treeColumn, GdkRectangle* cellArea, gint* xOffset, gint* yOffset, gint* width, gint* height) c_gtk_tree_view_column_cell_get_size;
	gboolean function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cellRenderer, gint* xOffset, gint* width) c_gtk_tree_view_column_cell_get_position;
	gboolean function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_cell_is_visible;
	void function(GtkTreeViewColumn* treeColumn, GtkCellRenderer* cell) c_gtk_tree_view_column_focus_cell;
	void function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_queue_resize;
	GtkWidget* function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_tree_view;
	gint function(GtkTreeViewColumn* treeColumn) c_gtk_tree_view_column_get_x_offset;

	// gtk.TreeView

	GtkWidget* function() c_gtk_tree_view_new;
	gint function(GtkTreeView* treeView) c_gtk_tree_view_get_level_indentation;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_show_expanders;
	void function(GtkTreeView* treeView, gint indentation) c_gtk_tree_view_set_level_indentation;
	void function(GtkTreeView* treeView, gboolean enabled) c_gtk_tree_view_set_show_expanders;
	GtkWidget* function(GtkTreeModel* model) c_gtk_tree_view_new_with_model;
	GtkTreeModel* function(GtkTreeView* treeView) c_gtk_tree_view_get_model;
	void function(GtkTreeView* treeView, GtkTreeModel* model) c_gtk_tree_view_set_model;
	GtkTreeSelection* function(GtkTreeView* treeView) c_gtk_tree_view_get_selection;
	GtkAdjustment* function(GtkTreeView* treeView) c_gtk_tree_view_get_hadjustment;
	void function(GtkTreeView* treeView, GtkAdjustment* adjustment) c_gtk_tree_view_set_hadjustment;
	GtkAdjustment* function(GtkTreeView* treeView) c_gtk_tree_view_get_vadjustment;
	void function(GtkTreeView* treeView, GtkAdjustment* adjustment) c_gtk_tree_view_set_vadjustment;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_headers_visible;
	void function(GtkTreeView* treeView, gboolean headersVisible) c_gtk_tree_view_set_headers_visible;
	void function(GtkTreeView* treeView) c_gtk_tree_view_columns_autosize;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_headers_clickable;
	void function(GtkTreeView* treeView, gboolean setting) c_gtk_tree_view_set_headers_clickable;
	void function(GtkTreeView* treeView, gboolean setting) c_gtk_tree_view_set_rules_hint;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_rules_hint;
	gint function(GtkTreeView* treeView, GtkTreeViewColumn* column) c_gtk_tree_view_append_column;
	gint function(GtkTreeView* treeView, GtkTreeViewColumn* column) c_gtk_tree_view_remove_column;
	gint function(GtkTreeView* treeView, GtkTreeViewColumn* column, gint position) c_gtk_tree_view_insert_column;
	gint function(GtkTreeView* treeView, gint position, gchar* title, GtkCellRenderer* cell, ... ) c_gtk_tree_view_insert_column_with_attributes;
	gint function(GtkTreeView* treeView, gint position, gchar* title, GtkCellRenderer* cell, GtkTreeCellDataFunc func, void* data, GDestroyNotify dnotify) c_gtk_tree_view_insert_column_with_data_func;
	guint function(GtkTreeView* treeView) c_gtk_tree_view_get_n_columns;
	GtkTreeViewColumn* function(GtkTreeView* treeView, gint n) c_gtk_tree_view_get_column;
	GList* function(GtkTreeView* treeView) c_gtk_tree_view_get_columns;
	void function(GtkTreeView* treeView, GtkTreeViewColumn* column, GtkTreeViewColumn* baseColumn) c_gtk_tree_view_move_column_after;
	void function(GtkTreeView* treeView, GtkTreeViewColumn* column) c_gtk_tree_view_set_expander_column;
	GtkTreeViewColumn* function(GtkTreeView* treeView) c_gtk_tree_view_get_expander_column;
	void function(GtkTreeView* treeView, GtkTreeViewColumnDropFunc func, void* userData, GDestroyNotify destroy) c_gtk_tree_view_set_column_drag_function;
	void function(GtkTreeView* treeView, gint treeX, gint treeY) c_gtk_tree_view_scroll_to_point;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, gboolean useAlign, gfloat rowAlign, gfloat colAlign) c_gtk_tree_view_scroll_to_cell;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* focusColumn, gboolean startEditing) c_gtk_tree_view_set_cursor;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* focusColumn, GtkCellRenderer* focusCell, gboolean startEditing) c_gtk_tree_view_set_cursor_on_cell;
	void function(GtkTreeView* treeView, GtkTreePath** path, GtkTreeViewColumn** focusColumn) c_gtk_tree_view_get_cursor;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column) c_gtk_tree_view_row_activated;
	void function(GtkTreeView* treeView) c_gtk_tree_view_expand_all;
	void function(GtkTreeView* treeView) c_gtk_tree_view_collapse_all;
	void function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_expand_to_path;
	gboolean function(GtkTreeView* treeView, GtkTreePath* path, gboolean openAll) c_gtk_tree_view_expand_row;
	gboolean function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_collapse_row;
	void function(GtkTreeView* treeView, GtkTreeViewMappingFunc func, void* data) c_gtk_tree_view_map_expanded_rows;
	gboolean function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_row_expanded;
	void function(GtkTreeView* treeView, gboolean reorderable) c_gtk_tree_view_set_reorderable;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_reorderable;
	gboolean function(GtkTreeView* treeView, gint x, gint y, GtkTreePath** path, GtkTreeViewColumn** column, gint* cellX, gint* cellY) c_gtk_tree_view_get_path_at_pos;
	gboolean function(GtkTreeView* treeView, gint x, gint y, GtkTreePath** path, GtkTreeViewColumn** column, gint* cellX, gint* cellY) c_gtk_tree_view_is_blank_at_pos;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect) c_gtk_tree_view_get_cell_area;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewColumn* column, GdkRectangle* rect) c_gtk_tree_view_get_background_area;
	void function(GtkTreeView* treeView, GdkRectangle* visibleRect) c_gtk_tree_view_get_visible_rect;
	gboolean function(GtkTreeView* treeView, GtkTreePath** startPath, GtkTreePath** endPath) c_gtk_tree_view_get_visible_range;
	GdkWindow* function(GtkTreeView* treeView) c_gtk_tree_view_get_bin_window;
	void function(GtkTreeView* treeView, gint bx, gint by, gint* tx, gint* ty) c_gtk_tree_view_convert_bin_window_to_tree_coords;
	void function(GtkTreeView* treeView, gint bx, gint by, gint* wx, gint* wy) c_gtk_tree_view_convert_bin_window_to_widget_coords;
	void function(GtkTreeView* treeView, gint tx, gint ty, gint* bx, gint* by) c_gtk_tree_view_convert_tree_to_bin_window_coords;
	void function(GtkTreeView* treeView, gint tx, gint ty, gint* wx, gint* wy) c_gtk_tree_view_convert_tree_to_widget_coords;
	void function(GtkTreeView* treeView, gint wx, gint wy, gint* bx, gint* by) c_gtk_tree_view_convert_widget_to_bin_window_coords;
	void function(GtkTreeView* treeView, gint wx, gint wy, gint* tx, gint* ty) c_gtk_tree_view_convert_widget_to_tree_coords;
	void function(GtkTreeView* treeView, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_tree_view_enable_model_drag_dest;
	void function(GtkTreeView* treeView, GdkModifierType startButtonMask, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_tree_view_enable_model_drag_source;
	void function(GtkTreeView* treeView) c_gtk_tree_view_unset_rows_drag_source;
	void function(GtkTreeView* treeView) c_gtk_tree_view_unset_rows_drag_dest;
	void function(GtkTreeView* treeView, GtkTreePath* path, GtkTreeViewDropPosition pos) c_gtk_tree_view_set_drag_dest_row;
	void function(GtkTreeView* treeView, GtkTreePath** path, GtkTreeViewDropPosition* pos) c_gtk_tree_view_get_drag_dest_row;
	gboolean function(GtkTreeView* treeView, gint dragX, gint dragY, GtkTreePath** path, GtkTreeViewDropPosition* pos) c_gtk_tree_view_get_dest_row_at_pos;
	cairo_surface_t* function(GtkTreeView* treeView, GtkTreePath* path) c_gtk_tree_view_create_row_drag_icon;
	void function(GtkTreeView* treeView, gboolean enableSearch) c_gtk_tree_view_set_enable_search;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_enable_search;
	gint function(GtkTreeView* treeView) c_gtk_tree_view_get_search_column;
	void function(GtkTreeView* treeView, gint column) c_gtk_tree_view_set_search_column;
	GtkTreeViewSearchEqualFunc function(GtkTreeView* treeView) c_gtk_tree_view_get_search_equal_func;
	void function(GtkTreeView* treeView, GtkTreeViewSearchEqualFunc searchEqualFunc, void* searchUserData, GDestroyNotify searchDestroy) c_gtk_tree_view_set_search_equal_func;
	GtkEntry* function(GtkTreeView* treeView) c_gtk_tree_view_get_search_entry;
	void function(GtkTreeView* treeView, GtkEntry* entry) c_gtk_tree_view_set_search_entry;
	GtkTreeViewSearchPositionFunc function(GtkTreeView* treeView) c_gtk_tree_view_get_search_position_func;
	void function(GtkTreeView* treeView, GtkTreeViewSearchPositionFunc func, void* data, GDestroyNotify destroy) c_gtk_tree_view_set_search_position_func;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_fixed_height_mode;
	void function(GtkTreeView* treeView, gboolean enable) c_gtk_tree_view_set_fixed_height_mode;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_hover_selection;
	void function(GtkTreeView* treeView, gboolean hover) c_gtk_tree_view_set_hover_selection;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_hover_expand;
	void function(GtkTreeView* treeView, gboolean expand) c_gtk_tree_view_set_hover_expand;
	void function(GtkTreeView* treeView, GtkTreeDestroyCountFunc func, void* data, GDestroyNotify destroy) c_gtk_tree_view_set_destroy_count_func;
	GtkTreeViewRowSeparatorFunc function(GtkTreeView* treeView) c_gtk_tree_view_get_row_separator_func;
	void function(GtkTreeView* treeView, GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy) c_gtk_tree_view_set_row_separator_func;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_rubber_banding;
	void function(GtkTreeView* treeView, gboolean enable) c_gtk_tree_view_set_rubber_banding;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_is_rubber_banding_active;
	gboolean function(GtkTreeView* treeView) c_gtk_tree_view_get_enable_tree_lines;
	void function(GtkTreeView* treeView, gboolean enabled) c_gtk_tree_view_set_enable_tree_lines;
	GtkTreeViewGridLines function(GtkTreeView* treeView) c_gtk_tree_view_get_grid_lines;
	void function(GtkTreeView* treeView, GtkTreeViewGridLines gridLines) c_gtk_tree_view_set_grid_lines;
	void function(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path) c_gtk_tree_view_set_tooltip_row;
	void function(GtkTreeView* treeView, GtkTooltip* tooltip, GtkTreePath* path, GtkTreeViewColumn* column, GtkCellRenderer* cell) c_gtk_tree_view_set_tooltip_cell;
	gboolean function(GtkTreeView* treeView, gint* x, gint* y, gboolean keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter) c_gtk_tree_view_get_tooltip_context;
	gint function(GtkTreeView* treeView) c_gtk_tree_view_get_tooltip_column;
	void function(GtkTreeView* treeView, gint column) c_gtk_tree_view_set_tooltip_column;

	// gtk.TreeDragSourceT


	// gtk.TreeDragSourceT

	gboolean function(GtkTreeDragSource* dragSource, GtkTreePath* path) c_gtk_tree_drag_source_drag_data_delete;
	gboolean function(GtkTreeDragSource* dragSource, GtkTreePath* path, GtkSelectionData* selectionData) c_gtk_tree_drag_source_drag_data_get;
	gboolean function(GtkTreeDragSource* dragSource, GtkTreePath* path) c_gtk_tree_drag_source_row_draggable;
	gboolean function(GtkSelectionData* selectionData, GtkTreeModel* treeModel, GtkTreePath* path) c_gtk_tree_set_row_drag_data;
	gboolean function(GtkSelectionData* selectionData, GtkTreeModel** treeModel, GtkTreePath** path) c_gtk_tree_get_row_drag_data;

	// gtk.TreeDragDestT


	// gtk.TreeDragDestT

	gboolean function(GtkTreeDragDest* dragDest, GtkTreePath* dest, GtkSelectionData* selectionData) c_gtk_tree_drag_dest_drag_data_received;
	gboolean function(GtkTreeDragDest* dragDest, GtkTreePath* destPath, GtkSelectionData* selectionData) c_gtk_tree_drag_dest_row_drop_possible;

	// gtk.CellView

	GtkWidget* function() c_gtk_cell_view_new;
	GtkWidget* function(GtkCellArea* area, GtkCellAreaContext* context) c_gtk_cell_view_new_with_context;
	GtkWidget* function(gchar* text) c_gtk_cell_view_new_with_text;
	GtkWidget* function(gchar* markup) c_gtk_cell_view_new_with_markup;
	GtkWidget* function(GdkPixbuf* pixbuf) c_gtk_cell_view_new_with_pixbuf;
	void function(GtkCellView* cellView, GtkTreeModel* model) c_gtk_cell_view_set_model;
	GtkTreeModel* function(GtkCellView* cellView) c_gtk_cell_view_get_model;
	void function(GtkCellView* cellView, GtkTreePath* path) c_gtk_cell_view_set_displayed_row;
	GtkTreePath* function(GtkCellView* cellView) c_gtk_cell_view_get_displayed_row;
	gboolean function(GtkCellView* cellView, GtkTreePath* path, GtkRequisition* requisition) c_gtk_cell_view_get_size_of_row;
	void function(GtkCellView* cellView, GdkColor* color) c_gtk_cell_view_set_background_color;
	void function(GtkCellView* cellView, GdkRGBA* rgba) c_gtk_cell_view_set_background_rgba;
	void function(GtkCellView* cellView, gboolean drawSensitive) c_gtk_cell_view_set_draw_sensitive;
	gboolean function(GtkCellView* cellView) c_gtk_cell_view_get_draw_sensitive;
	void function(GtkCellView* cellView, gboolean fitModel) c_gtk_cell_view_set_fit_model;
	gboolean function(GtkCellView* cellView) c_gtk_cell_view_get_fit_model;

	// gtk.IconView

	GtkWidget* function() c_gtk_icon_view_new;
	GtkWidget* function(GtkCellArea* area) c_gtk_icon_view_new_with_area;
	GtkWidget* function(GtkTreeModel* model) c_gtk_icon_view_new_with_model;
	void function(GtkIconView* iconView, GtkTreeModel* model) c_gtk_icon_view_set_model;
	GtkTreeModel* function(GtkIconView* iconView) c_gtk_icon_view_get_model;
	void function(GtkIconView* iconView, gint column) c_gtk_icon_view_set_text_column;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_text_column;
	void function(GtkIconView* iconView, gint column) c_gtk_icon_view_set_markup_column;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_markup_column;
	void function(GtkIconView* iconView, gint column) c_gtk_icon_view_set_pixbuf_column;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_pixbuf_column;
	GtkTreePath* function(GtkIconView* iconView, gint x, gint y) c_gtk_icon_view_get_path_at_pos;
	gboolean function(GtkIconView* iconView, gint x, gint y, GtkTreePath** path, GtkCellRenderer** cell) c_gtk_icon_view_get_item_at_pos;
	void function(GtkIconView* iconView, gint wx, gint wy, gint* bx, gint* by) c_gtk_icon_view_convert_widget_to_bin_window_coords;
	void function(GtkIconView* iconView, GtkTreePath* path, GtkCellRenderer* cell, gboolean startEditing) c_gtk_icon_view_set_cursor;
	gboolean function(GtkIconView* iconView, GtkTreePath** path, GtkCellRenderer** cell) c_gtk_icon_view_get_cursor;
	void function(GtkIconView* iconView, GtkIconViewForeachFunc func, void* data) c_gtk_icon_view_selected_foreach;
	void function(GtkIconView* iconView, GtkSelectionMode mode) c_gtk_icon_view_set_selection_mode;
	GtkSelectionMode function(GtkIconView* iconView) c_gtk_icon_view_get_selection_mode;
	void function(GtkIconView* iconView, GtkOrientation orientation) c_gtk_icon_view_set_item_orientation;
	GtkOrientation function(GtkIconView* iconView) c_gtk_icon_view_get_item_orientation;
	void function(GtkIconView* iconView, gint columns) c_gtk_icon_view_set_columns;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_columns;
	void function(GtkIconView* iconView, gint itemWidth) c_gtk_icon_view_set_item_width;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_item_width;
	void function(GtkIconView* iconView, gint spacing) c_gtk_icon_view_set_spacing;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_spacing;
	void function(GtkIconView* iconView, gint rowSpacing) c_gtk_icon_view_set_row_spacing;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_row_spacing;
	void function(GtkIconView* iconView, gint columnSpacing) c_gtk_icon_view_set_column_spacing;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_column_spacing;
	void function(GtkIconView* iconView, gint margin) c_gtk_icon_view_set_margin;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_margin;
	void function(GtkIconView* iconView, gint itemPadding) c_gtk_icon_view_set_item_padding;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_item_padding;
	gboolean function(GtkIconView* iconView, GtkTreePath* path, GtkCellRenderer* cell, GdkRectangle* rect) c_gtk_icon_view_get_cell_rect;
	void function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_select_path;
	void function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_unselect_path;
	gboolean function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_path_is_selected;
	GList* function(GtkIconView* iconView) c_gtk_icon_view_get_selected_items;
	void function(GtkIconView* iconView) c_gtk_icon_view_select_all;
	void function(GtkIconView* iconView) c_gtk_icon_view_unselect_all;
	void function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_item_activated;
	void function(GtkIconView* iconView, GtkTreePath* path, gboolean useAlign, gfloat rowAlign, gfloat colAlign) c_gtk_icon_view_scroll_to_path;
	gboolean function(GtkIconView* iconView, GtkTreePath** startPath, GtkTreePath** endPath) c_gtk_icon_view_get_visible_range;
	void function(GtkIconView* iconView, GtkTooltip* tooltip, GtkTreePath* path) c_gtk_icon_view_set_tooltip_item;
	void function(GtkIconView* iconView, GtkTooltip* tooltip, GtkTreePath* path, GtkCellRenderer* cell) c_gtk_icon_view_set_tooltip_cell;
	gboolean function(GtkIconView* iconView, gint* x, gint* y, gboolean keyboardTip, GtkTreeModel** model, GtkTreePath** path, GtkTreeIter* iter) c_gtk_icon_view_get_tooltip_context;
	void function(GtkIconView* iconView, gint column) c_gtk_icon_view_set_tooltip_column;
	gint function(GtkIconView* iconView) c_gtk_icon_view_get_tooltip_column;
	gint function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_get_item_row;
	gint function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_get_item_column;
	void function(GtkIconView* iconView, GdkModifierType startButtonMask, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_icon_view_enable_model_drag_source;
	void function(GtkIconView* iconView, GtkTargetEntry* targets, gint nTargets, GdkDragAction actions) c_gtk_icon_view_enable_model_drag_dest;
	void function(GtkIconView* iconView) c_gtk_icon_view_unset_model_drag_source;
	void function(GtkIconView* iconView) c_gtk_icon_view_unset_model_drag_dest;
	void function(GtkIconView* iconView, gboolean reorderable) c_gtk_icon_view_set_reorderable;
	gboolean function(GtkIconView* iconView) c_gtk_icon_view_get_reorderable;
	void function(GtkIconView* iconView, GtkTreePath* path, GtkIconViewDropPosition pos) c_gtk_icon_view_set_drag_dest_item;
	void function(GtkIconView* iconView, GtkTreePath** path, GtkIconViewDropPosition* pos) c_gtk_icon_view_get_drag_dest_item;
	gboolean function(GtkIconView* iconView, gint dragX, gint dragY, GtkTreePath** path, GtkIconViewDropPosition* pos) c_gtk_icon_view_get_dest_item_at_pos;
	cairo_surface_t* function(GtkIconView* iconView, GtkTreePath* path) c_gtk_icon_view_create_drag_icon;

	// gtk.TreeSortableT


	// gtk.TreeSortableT

	void function(GtkTreeSortable* sortable) c_gtk_tree_sortable_sort_column_changed;
	gboolean function(GtkTreeSortable* sortable, gint* sortColumnId, GtkSortType* order) c_gtk_tree_sortable_get_sort_column_id;
	void function(GtkTreeSortable* sortable, gint sortColumnId, GtkSortType order) c_gtk_tree_sortable_set_sort_column_id;
	void function(GtkTreeSortable* sortable, gint sortColumnId, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy) c_gtk_tree_sortable_set_sort_func;
	void function(GtkTreeSortable* sortable, GtkTreeIterCompareFunc sortFunc, void* userData, GDestroyNotify destroy) c_gtk_tree_sortable_set_default_sort_func;
	gboolean function(GtkTreeSortable* sortable) c_gtk_tree_sortable_has_default_sort_func;

	// gtk.TreeModelSort

	GtkTreeModel* function(GtkTreeModel* childModel) c_gtk_tree_model_sort_new_with_model;
	GtkTreeModel* function(GtkTreeModelSort* treeModel) c_gtk_tree_model_sort_get_model;
	GtkTreePath* function(GtkTreeModelSort* treeModelSort, GtkTreePath* childPath) c_gtk_tree_model_sort_convert_child_path_to_path;
	gboolean function(GtkTreeModelSort* treeModelSort, GtkTreeIter* sortIter, GtkTreeIter* childIter) c_gtk_tree_model_sort_convert_child_iter_to_iter;
	GtkTreePath* function(GtkTreeModelSort* treeModelSort, GtkTreePath* sortedPath) c_gtk_tree_model_sort_convert_path_to_child_path;
	void function(GtkTreeModelSort* treeModelSort, GtkTreeIter* childIter, GtkTreeIter* sortedIter) c_gtk_tree_model_sort_convert_iter_to_child_iter;
	void function(GtkTreeModelSort* treeModelSort) c_gtk_tree_model_sort_reset_default_sort_func;
	void function(GtkTreeModelSort* treeModelSort) c_gtk_tree_model_sort_clear_cache;
	gboolean function(GtkTreeModelSort* treeModelSort, GtkTreeIter* iter) c_gtk_tree_model_sort_iter_is_valid;

	// gtk.TreeModelFilter

	GtkTreeModel* function(GtkTreeModel* childModel, GtkTreePath* root) c_gtk_tree_model_filter_new;
	void function(GtkTreeModelFilter* filter, GtkTreeModelFilterVisibleFunc func, void* data, GDestroyNotify destroy) c_gtk_tree_model_filter_set_visible_func;
	void function(GtkTreeModelFilter* filter, gint nColumns, GType* types, GtkTreeModelFilterModifyFunc func, void* data, GDestroyNotify destroy) c_gtk_tree_model_filter_set_modify_func;
	void function(GtkTreeModelFilter* filter, gint column) c_gtk_tree_model_filter_set_visible_column;
	GtkTreeModel* function(GtkTreeModelFilter* filter) c_gtk_tree_model_filter_get_model;
	gboolean function(GtkTreeModelFilter* filter, GtkTreeIter* filterIter, GtkTreeIter* childIter) c_gtk_tree_model_filter_convert_child_iter_to_iter;
	void function(GtkTreeModelFilter* filter, GtkTreeIter* childIter, GtkTreeIter* filterIter) c_gtk_tree_model_filter_convert_iter_to_child_iter;
	GtkTreePath* function(GtkTreeModelFilter* filter, GtkTreePath* childPath) c_gtk_tree_model_filter_convert_child_path_to_path;
	GtkTreePath* function(GtkTreeModelFilter* filter, GtkTreePath* filterPath) c_gtk_tree_model_filter_convert_path_to_child_path;
	void function(GtkTreeModelFilter* filter) c_gtk_tree_model_filter_refilter;
	void function(GtkTreeModelFilter* filter) c_gtk_tree_model_filter_clear_cache;

	// gtk.CellLayoutT


	// gtk.CellLayoutT

	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gboolean expand) c_gtk_cell_layout_pack_start;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gboolean expand) c_gtk_cell_layout_pack_end;
	GtkCellArea* function(GtkCellLayout* cellLayout) c_gtk_cell_layout_get_area;
	GList* function(GtkCellLayout* cellLayout) c_gtk_cell_layout_get_cells;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gint position) c_gtk_cell_layout_reorder;
	void function(GtkCellLayout* cellLayout) c_gtk_cell_layout_clear;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, ... ) c_gtk_cell_layout_set_attributes;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, gchar* attribute, gint column) c_gtk_cell_layout_add_attribute;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell, GtkCellLayoutDataFunc func, void* funcData, GDestroyNotify destroy) c_gtk_cell_layout_set_cell_data_func;
	void function(GtkCellLayout* cellLayout, GtkCellRenderer* cell) c_gtk_cell_layout_clear_attributes;

	// gtk.CellArea

	void function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_add;
	void function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_remove;
	gboolean function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_has_renderer;
	void function(GtkCellArea* area, GtkCellCallback callback, void* callbackData) c_gtk_cell_area_foreach;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, GdkRectangle* backgroundArea, GtkCellAllocCallback callback, void* callbackData) c_gtk_cell_area_foreach_alloc;
	gint function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkEvent* event, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_area_event;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, cairo_t* cr, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags, gboolean paintFocus) c_gtk_cell_area_render;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GtkCellRenderer* renderer, GdkRectangle* cellArea, GdkRectangle* allocation) c_gtk_cell_area_get_cell_allocation;
	GtkCellRenderer* function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, gint x, gint y, GdkRectangle* allocArea) c_gtk_cell_area_get_cell_at_position;
	GtkCellAreaContext* function(GtkCellArea* area) c_gtk_cell_area_create_context;
	GtkCellAreaContext* function(GtkCellArea* area, GtkCellAreaContext* context) c_gtk_cell_area_copy_context;
	GtkSizeRequestMode function(GtkCellArea* area) c_gtk_cell_area_get_request_mode;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, gint* minimumWidth, gint* naturalWidth) c_gtk_cell_area_get_preferred_width;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, gint width, gint* minimumHeight, gint* naturalHeight) c_gtk_cell_area_get_preferred_height_for_width;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, gint* minimumHeight, gint* naturalHeight) c_gtk_cell_area_get_preferred_height;
	void function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, gint height, gint* minimumWidth, gint* naturalWidth) c_gtk_cell_area_get_preferred_width_for_height;
	gchar* function(GtkCellArea* area) c_gtk_cell_area_get_current_path_string;
	void function(GtkCellArea* area, GtkTreeModel* treeModel, GtkTreeIter* iter, gboolean isExpander, gboolean isExpanded) c_gtk_cell_area_apply_attributes;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, gchar* attribute, gint column) c_gtk_cell_area_attribute_connect;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, gchar* attribute) c_gtk_cell_area_attribute_disconnect;
	void function(GtkCellAreaClass* aclass, guint propertyId, GParamSpec* pspec) c_gtk_cell_area_class_install_cell_property;
	GParamSpec* function(GtkCellAreaClass* aclass, gchar* propertyName) c_gtk_cell_area_class_find_cell_property;
	GParamSpec** function(GtkCellAreaClass* aclass, guint* nProperties) c_gtk_cell_area_class_list_cell_properties;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, gchar* firstPropName, ... ) c_gtk_cell_area_add_with_properties;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, gchar* firstPropName, ... ) c_gtk_cell_area_cell_set;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, gchar* firstPropName, ... ) c_gtk_cell_area_cell_get;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, gchar* firstPropertyName, va_list varArgs) c_gtk_cell_area_cell_set_valist;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, gchar* firstPropertyName, va_list varArgs) c_gtk_cell_area_cell_get_valist;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, gchar* propertyName, GValue* value) c_gtk_cell_area_cell_set_property;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, gchar* propertyName, GValue* value) c_gtk_cell_area_cell_get_property;
	gboolean function(GtkCellArea* area) c_gtk_cell_area_is_activatable;
	gboolean function(GtkCellArea* area, GtkCellAreaContext* context, GtkWidget* widget, GdkRectangle* cellArea, GtkCellRendererState flags, gboolean editOnly) c_gtk_cell_area_activate;
	gboolean function(GtkCellArea* area, GtkDirectionType direction) c_gtk_cell_area_focus;
	void function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_set_focus_cell;
	GtkCellRenderer* function(GtkCellArea* area) c_gtk_cell_area_get_focus_cell;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling) c_gtk_cell_area_add_focus_sibling;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling) c_gtk_cell_area_remove_focus_sibling;
	gboolean function(GtkCellArea* area, GtkCellRenderer* renderer, GtkCellRenderer* sibling) c_gtk_cell_area_is_focus_sibling;
	GList* function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_get_focus_siblings;
	GtkCellRenderer* function(GtkCellArea* area, GtkCellRenderer* renderer) c_gtk_cell_area_get_focus_from_sibling;
	GtkCellRenderer* function(GtkCellArea* area) c_gtk_cell_area_get_edited_cell;
	GtkCellEditable* function(GtkCellArea* area) c_gtk_cell_area_get_edit_widget;
	gboolean function(GtkCellArea* area, GtkWidget* widget, GtkCellRenderer* renderer, GdkEvent* event, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_area_activate_cell;
	void function(GtkCellArea* area, gboolean canceled) c_gtk_cell_area_stop_editing;
	void function(GtkCellArea* area, GtkWidget* widget, GdkRectangle* cellArea, GdkRectangle* innerArea) c_gtk_cell_area_inner_cell_area;
	void function(GtkCellArea* area, GtkCellRenderer* renderer, GtkOrientation orientation, GtkWidget* widget, gint forSize, gint* minimumSize, gint* naturalSize) c_gtk_cell_area_request_renderer;

	// gtk.CellAreaBox

	GtkCellArea* function() c_gtk_cell_area_box_new;
	void function(GtkCellAreaBox* box, GtkCellRenderer* renderer, gboolean expand, gboolean alig, gboolean fixed) c_gtk_cell_area_box_pack_start;
	void function(GtkCellAreaBox* box, GtkCellRenderer* renderer, gboolean expand, gboolean alig, gboolean fixed) c_gtk_cell_area_box_pack_end;
	gint function(GtkCellAreaBox* box) c_gtk_cell_area_box_get_spacing;
	void function(GtkCellAreaBox* box, gint spacing) c_gtk_cell_area_box_set_spacing;

	// gtk.CellAreaContext

	GtkCellArea* function(GtkCellAreaContext* context) c_gtk_cell_area_context_get_area;
	void function(GtkCellAreaContext* context, gint width, gint height) c_gtk_cell_area_context_allocate;
	void function(GtkCellAreaContext* context) c_gtk_cell_area_context_reset;
	void function(GtkCellAreaContext* context, gint* minimumWidth, gint* naturalWidth) c_gtk_cell_area_context_get_preferred_width;
	void function(GtkCellAreaContext* context, gint* minimumHeight, gint* naturalHeight) c_gtk_cell_area_context_get_preferred_height;
	void function(GtkCellAreaContext* context, gint width, gint* minimumHeight, gint* naturalHeight) c_gtk_cell_area_context_get_preferred_height_for_width;
	void function(GtkCellAreaContext* context, gint height, gint* minimumWidth, gint* naturalWidth) c_gtk_cell_area_context_get_preferred_width_for_height;
	void function(GtkCellAreaContext* context, gint* width, gint* height) c_gtk_cell_area_context_get_allocation;
	void function(GtkCellAreaContext* context, gint minimumWidth, gint naturalWidth) c_gtk_cell_area_context_push_preferred_width;
	void function(GtkCellAreaContext* context, gint minimumHeight, gint naturalHeight) c_gtk_cell_area_context_push_preferred_height;

	// gtk.CellRenderer

	void function(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState flags, GdkRectangle* cellArea, GdkRectangle* alignedArea) c_gtk_cell_renderer_get_aligned_area;
	void function(GtkCellRenderer* cell, GtkWidget* widget, GdkRectangle* cellArea, gint* xOffset, gint* yOffset, gint* width, gint* height) c_gtk_cell_renderer_get_size;
	void function(GtkCellRenderer* cell, cairo_t* cr, GtkWidget* widget, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_renderer_render;
	gboolean function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, gchar* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_renderer_activate;
	GtkCellEditable* function(GtkCellRenderer* cell, GdkEvent* event, GtkWidget* widget, gchar* path, GdkRectangle* backgroundArea, GdkRectangle* cellArea, GtkCellRendererState flags) c_gtk_cell_renderer_start_editing;
	void function(GtkCellRenderer* cell, gboolean canceled) c_gtk_cell_renderer_stop_editing;
	void function(GtkCellRenderer* cell, gint* width, gint* height) c_gtk_cell_renderer_get_fixed_size;
	void function(GtkCellRenderer* cell, gint width, gint height) c_gtk_cell_renderer_set_fixed_size;
	gboolean function(GtkCellRenderer* cell) c_gtk_cell_renderer_get_visible;
	void function(GtkCellRenderer* cell, gboolean visible) c_gtk_cell_renderer_set_visible;
	gboolean function(GtkCellRenderer* cell) c_gtk_cell_renderer_get_sensitive;
	void function(GtkCellRenderer* cell, gboolean sensitive) c_gtk_cell_renderer_set_sensitive;
	void function(GtkCellRenderer* cell, gfloat* xalign, gfloat* yalign) c_gtk_cell_renderer_get_alignment;
	void function(GtkCellRenderer* cell, gfloat xalign, gfloat yalign) c_gtk_cell_renderer_set_alignment;
	void function(GtkCellRenderer* cell, gint* xpad, gint* ypad) c_gtk_cell_renderer_get_padding;
	void function(GtkCellRenderer* cell, gint xpad, gint ypad) c_gtk_cell_renderer_set_padding;
	GtkStateFlags function(GtkCellRenderer* cell, GtkWidget* widget, GtkCellRendererState cellState) c_gtk_cell_renderer_get_state;
	gboolean function(GtkCellRenderer* cell) c_gtk_cell_renderer_is_activatable;
	void function(GtkCellRenderer* cell, GtkWidget* widget, gint* minimumSize, gint* naturalSize) c_gtk_cell_renderer_get_preferred_height;
	void function(GtkCellRenderer* cell, GtkWidget* widget, gint width, gint* minimumHeight, gint* naturalHeight) c_gtk_cell_renderer_get_preferred_height_for_width;
	void function(GtkCellRenderer* cell, GtkWidget* widget, GtkRequisition* minimumSize, GtkRequisition* naturalSize) c_gtk_cell_renderer_get_preferred_size;
	void function(GtkCellRenderer* cell, GtkWidget* widget, gint* minimumSize, gint* naturalSize) c_gtk_cell_renderer_get_preferred_width;
	void function(GtkCellRenderer* cell, GtkWidget* widget, gint height, gint* minimumWidth, gint* naturalWidth) c_gtk_cell_renderer_get_preferred_width_for_height;
	GtkSizeRequestMode function(GtkCellRenderer* cell) c_gtk_cell_renderer_get_request_mode;

	// gtk.CellEditableT


	// gtk.CellEditableT

	void function(GtkCellEditable* cellEditable, GdkEvent* event) c_gtk_cell_editable_start_editing;
	void function(GtkCellEditable* cellEditable) c_gtk_cell_editable_editing_done;
	void function(GtkCellEditable* cellEditable) c_gtk_cell_editable_remove_widget;

	// gtk.CellEditable


	// gtk.CellRendererAccel

	GtkCellRenderer* function() c_gtk_cell_renderer_accel_new;

	// gtk.CellRendererCombo

	GtkCellRenderer* function() c_gtk_cell_renderer_combo_new;

	// gtk.CellRendererPixbuf

	GtkCellRenderer* function() c_gtk_cell_renderer_pixbuf_new;

	// gtk.CellRendererProgress

	GtkCellRenderer* function() c_gtk_cell_renderer_progress_new;

	// gtk.CellRendererSpin

	GtkCellRenderer* function() c_gtk_cell_renderer_spin_new;

	// gtk.CellRendererText

	GtkCellRenderer* function() c_gtk_cell_renderer_text_new;
	void function(GtkCellRendererText* renderer, gint numberOfRows) c_gtk_cell_renderer_text_set_fixed_height_from_font;

	// gtk.CellRendererToggle

	GtkCellRenderer* function() c_gtk_cell_renderer_toggle_new;
	gboolean function(GtkCellRendererToggle* toggle) c_gtk_cell_renderer_toggle_get_radio;
	void function(GtkCellRendererToggle* toggle, gboolean radio) c_gtk_cell_renderer_toggle_set_radio;
	gboolean function(GtkCellRendererToggle* toggle) c_gtk_cell_renderer_toggle_get_active;
	void function(GtkCellRendererToggle* toggle, gboolean setting) c_gtk_cell_renderer_toggle_set_active;
	gboolean function(GtkCellRendererToggle* toggle) c_gtk_cell_renderer_toggle_get_activatable;
	void function(GtkCellRendererToggle* toggle, gboolean setting) c_gtk_cell_renderer_toggle_set_activatable;

	// gtk.CellRendererSpinner

	GtkCellRenderer* function() c_gtk_cell_renderer_spinner_new;

	// gtk.


	// gtk.ListStore

	GtkListStore* function(gint nColumns, ... ) c_gtk_list_store_new;
	GtkListStore* function(gint nColumns, GType* types) c_gtk_list_store_newv;
	void function(GtkListStore* listStore, gint nColumns, GType* types) c_gtk_list_store_set_column_types;
	void function(GtkListStore* listStore, GtkTreeIter* iter, ... ) c_gtk_list_store_set;
	void function(GtkListStore* listStore, GtkTreeIter* iter, va_list varArgs) c_gtk_list_store_set_valist;
	void function(GtkListStore* listStore, GtkTreeIter* iter, gint column, GValue* value) c_gtk_list_store_set_value;
	void function(GtkListStore* listStore, GtkTreeIter* iter, gint* columns, GValue* values, gint nValues) c_gtk_list_store_set_valuesv;
	gboolean function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_remove;
	void function(GtkListStore* listStore, GtkTreeIter* iter, gint position) c_gtk_list_store_insert;
	void function(GtkListStore* listStore, GtkTreeIter* iter, GtkTreeIter* sibling) c_gtk_list_store_insert_before;
	void function(GtkListStore* listStore, GtkTreeIter* iter, GtkTreeIter* sibling) c_gtk_list_store_insert_after;
	void function(GtkListStore* listStore, GtkTreeIter* iter, gint position, ... ) c_gtk_list_store_insert_with_values;
	void function(GtkListStore* listStore, GtkTreeIter* iter, gint position, gint* columns, GValue* values, gint nValues) c_gtk_list_store_insert_with_valuesv;
	void function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_prepend;
	void function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_append;
	void function(GtkListStore* listStore) c_gtk_list_store_clear;
	gboolean function(GtkListStore* listStore, GtkTreeIter* iter) c_gtk_list_store_iter_is_valid;
	void function(GtkListStore* store, gint* newOrder) c_gtk_list_store_reorder;
	void function(GtkListStore* store, GtkTreeIter* a, GtkTreeIter* b) c_gtk_list_store_swap;
	void function(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_list_store_move_before;
	void function(GtkListStore* store, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_list_store_move_after;

	// gtk.TreeStore

	GtkTreeStore* function(gint nColumns, ... ) c_gtk_tree_store_new;
	GtkTreeStore* function(gint nColumns, GType* types) c_gtk_tree_store_newv;
	void function(GtkTreeStore* treeStore, gint nColumns, GType* types) c_gtk_tree_store_set_column_types;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, gint column, GValue* value) c_gtk_tree_store_set_value;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, ... ) c_gtk_tree_store_set;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, va_list varArgs) c_gtk_tree_store_set_valist;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, gint* columns, GValue* values, gint nValues) c_gtk_tree_store_set_valuesv;
	gboolean function(GtkTreeStore* treeStore, GtkTreeIter* iter) c_gtk_tree_store_remove;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, gint position) c_gtk_tree_store_insert;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling) c_gtk_tree_store_insert_before;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, GtkTreeIter* sibling) c_gtk_tree_store_insert_after;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, gint position, ... ) c_gtk_tree_store_insert_with_values;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent, gint position, gint* columns, GValue* values, gint nValues) c_gtk_tree_store_insert_with_valuesv;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent) c_gtk_tree_store_prepend;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* parent) c_gtk_tree_store_append;
	gboolean function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* descendant) c_gtk_tree_store_is_ancestor;
	gint function(GtkTreeStore* treeStore, GtkTreeIter* iter) c_gtk_tree_store_iter_depth;
	void function(GtkTreeStore* treeStore) c_gtk_tree_store_clear;
	gboolean function(GtkTreeStore* treeStore, GtkTreeIter* iter) c_gtk_tree_store_iter_is_valid;
	void function(GtkTreeStore* treeStore, GtkTreeIter* parent, gint* newOrder) c_gtk_tree_store_reorder;
	void function(GtkTreeStore* treeStore, GtkTreeIter* a, GtkTreeIter* b) c_gtk_tree_store_swap;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_tree_store_move_before;
	void function(GtkTreeStore* treeStore, GtkTreeIter* iter, GtkTreeIter* position) c_gtk_tree_store_move_after;

	// gtk.ComboBox

	GtkWidget* function() c_gtk_combo_box_new;
	GtkWidget* function() c_gtk_combo_box_new_with_entry;
	GtkWidget* function(GtkTreeModel* model) c_gtk_combo_box_new_with_model;
	GtkWidget* function(GtkTreeModel* model) c_gtk_combo_box_new_with_model_and_entry;
	GtkWidget* function(GtkCellArea* area) c_gtk_combo_box_new_with_area;
	GtkWidget* function(GtkCellArea* area) c_gtk_combo_box_new_with_area_and_entry;
	gint function(GtkComboBox* comboBox) c_gtk_combo_box_get_wrap_width;
	void function(GtkComboBox* comboBox, gint width) c_gtk_combo_box_set_wrap_width;
	gint function(GtkComboBox* comboBox) c_gtk_combo_box_get_row_span_column;
	void function(GtkComboBox* comboBox, gint rowSpan) c_gtk_combo_box_set_row_span_column;
	gint function(GtkComboBox* comboBox) c_gtk_combo_box_get_column_span_column;
	void function(GtkComboBox* comboBox, gint columnSpan) c_gtk_combo_box_set_column_span_column;
	gint function(GtkComboBox* comboBox) c_gtk_combo_box_get_active;
	void function(GtkComboBox* comboBox, gint index) c_gtk_combo_box_set_active;
	gboolean function(GtkComboBox* comboBox, GtkTreeIter* iter) c_gtk_combo_box_get_active_iter;
	void function(GtkComboBox* comboBox, GtkTreeIter* iter) c_gtk_combo_box_set_active_iter;
	gint function(GtkComboBox* comboBox) c_gtk_combo_box_get_id_column;
	void function(GtkComboBox* comboBox, gint idColumn) c_gtk_combo_box_set_id_column;
	gchar* function(GtkComboBox* comboBox) c_gtk_combo_box_get_active_id;
	gboolean function(GtkComboBox* comboBox, gchar* activeId) c_gtk_combo_box_set_active_id;
	GtkTreeModel* function(GtkComboBox* comboBox) c_gtk_combo_box_get_model;
	void function(GtkComboBox* comboBox, GtkTreeModel* model) c_gtk_combo_box_set_model;
	void function(GtkComboBox* comboBox, GdkDevice* device) c_gtk_combo_box_popup_for_device;
	void function(GtkComboBox* comboBox) c_gtk_combo_box_popup;
	void function(GtkComboBox* comboBox) c_gtk_combo_box_popdown;
	AtkObject* function(GtkComboBox* comboBox) c_gtk_combo_box_get_popup_accessible;
	GtkTreeViewRowSeparatorFunc function(GtkComboBox* comboBox) c_gtk_combo_box_get_row_separator_func;
	void function(GtkComboBox* comboBox, GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy) c_gtk_combo_box_set_row_separator_func;
	void function(GtkComboBox* comboBox, gboolean addTearoffs) c_gtk_combo_box_set_add_tearoffs;
	gboolean function(GtkComboBox* comboBox) c_gtk_combo_box_get_add_tearoffs;
	void function(GtkComboBox* comboBox, gchar* title) c_gtk_combo_box_set_title;
	gchar* function(GtkComboBox* comboBox) c_gtk_combo_box_get_title;
	void function(GtkComboBox* combo, gboolean focusOnClick) c_gtk_combo_box_set_focus_on_click;
	gboolean function(GtkComboBox* combo) c_gtk_combo_box_get_focus_on_click;
	void function(GtkComboBox* comboBox, GtkSensitivityType sensitivity) c_gtk_combo_box_set_button_sensitivity;
	GtkSensitivityType function(GtkComboBox* comboBox) c_gtk_combo_box_get_button_sensitivity;
	gboolean function(GtkComboBox* comboBox) c_gtk_combo_box_get_has_entry;
	void function(GtkComboBox* comboBox, gint textColumn) c_gtk_combo_box_set_entry_text_column;
	gint function(GtkComboBox* comboBox) c_gtk_combo_box_get_entry_text_column;
	void function(GtkComboBox* comboBox, gboolean fixed) c_gtk_combo_box_set_popup_fixed_width;
	gboolean function(GtkComboBox* comboBox) c_gtk_combo_box_get_popup_fixed_width;

	// gtk.ComboBoxText

	GtkWidget* function() c_gtk_combo_box_text_new;
	GtkWidget* function() c_gtk_combo_box_text_new_with_entry;
	void function(GtkComboBoxText* comboBox, gchar* id, gchar* text) c_gtk_combo_box_text_append;
	void function(GtkComboBoxText* comboBox, gchar* id, gchar* text) c_gtk_combo_box_text_prepend;
	void function(GtkComboBoxText* comboBox, gint position, gchar* id, gchar* text) c_gtk_combo_box_text_insert;
	void function(GtkComboBoxText* comboBox, gchar* text) c_gtk_combo_box_text_append_text;
	void function(GtkComboBoxText* comboBox, gchar* text) c_gtk_combo_box_text_prepend_text;
	void function(GtkComboBoxText* comboBox, gint position, gchar* text) c_gtk_combo_box_text_insert_text;
	void function(GtkComboBoxText* comboBox, gint position) c_gtk_combo_box_text_remove;
	void function(GtkComboBoxText* comboBox) c_gtk_combo_box_text_remove_all;
	gchar* function(GtkComboBoxText* comboBox) c_gtk_combo_box_text_get_active_text;

	// gtk.Menu

	GtkWidget* function() c_gtk_menu_new;
	GtkWidget* function(GMenuModel* model) c_gtk_menu_new_from_model;
	void function(GtkMenu* menu, GdkScreen* screen) c_gtk_menu_set_screen;
	void function(GtkMenu* menu, GtkWidget* child, gint position) c_gtk_menu_reorder_child;
	void function(GtkMenu* menu, GtkWidget* child, guint leftAttach, guint rightAttach, guint topAttach, guint bottomAttach) c_gtk_menu_attach;
	void function(GtkMenu* menu, GdkDevice* device, GtkWidget* parentMenuShell, GtkWidget* parentMenuItem, GtkMenuPositionFunc func, void* data, GDestroyNotify destroy, guint button, guint32 activateTime) c_gtk_menu_popup_for_device;
	void function(GtkMenu* menu, GtkWidget* parentMenuShell, GtkWidget* parentMenuItem, GtkMenuPositionFunc func, void* data, guint button, guint32 activateTime) c_gtk_menu_popup;
	void function(GtkMenu* menu, GtkAccelGroup* accelGroup) c_gtk_menu_set_accel_group;
	GtkAccelGroup* function(GtkMenu* menu) c_gtk_menu_get_accel_group;
	void function(GtkMenu* menu, gchar* accelPath) c_gtk_menu_set_accel_path;
	gchar* function(GtkMenu* menu) c_gtk_menu_get_accel_path;
	void function(GtkMenu* menu, gchar* title) c_gtk_menu_set_title;
	gchar* function(GtkMenu* menu) c_gtk_menu_get_title;
	void function(GtkMenu* menu, gint monitorNum) c_gtk_menu_set_monitor;
	gint function(GtkMenu* menu) c_gtk_menu_get_monitor;
	gboolean function(GtkMenu* menu) c_gtk_menu_get_tearoff_state;
	void function(GtkMenu* menu, gboolean reserveToggleSize) c_gtk_menu_set_reserve_toggle_size;
	gboolean function(GtkMenu* menu) c_gtk_menu_get_reserve_toggle_size;
	void function(GtkMenu* menu) c_gtk_menu_popdown;
	void function(GtkMenu* menu) c_gtk_menu_reposition;
	GtkWidget* function(GtkMenu* menu) c_gtk_menu_get_active;
	void function(GtkMenu* menu, guint index) c_gtk_menu_set_active;
	void function(GtkMenu* menu, gboolean tornOff) c_gtk_menu_set_tearoff_state;
	void function(GtkMenu* menu, GtkWidget* attachWidget, GtkMenuDetachFunc detacher) c_gtk_menu_attach_to_widget;
	void function(GtkMenu* menu) c_gtk_menu_detach;
	GtkWidget* function(GtkMenu* menu) c_gtk_menu_get_attach_widget;
	GList* function(GtkWidget* widget) c_gtk_menu_get_for_attach_widget;

	// gtk.MenuBar

	GtkWidget* function() c_gtk_menu_bar_new;
	GtkWidget* function(GMenuModel* model) c_gtk_menu_bar_new_from_model;
	void function(GtkMenuBar* menubar, GtkPackDirection packDir) c_gtk_menu_bar_set_pack_direction;
	GtkPackDirection function(GtkMenuBar* menubar) c_gtk_menu_bar_get_pack_direction;
	void function(GtkMenuBar* menubar, GtkPackDirection childPackDir) c_gtk_menu_bar_set_child_pack_direction;
	GtkPackDirection function(GtkMenuBar* menubar) c_gtk_menu_bar_get_child_pack_direction;

	// gtk.MenuItem

	GtkWidget* function() c_gtk_menu_item_new;
	GtkWidget* function(gchar* label) c_gtk_menu_item_new_with_label;
	GtkWidget* function(gchar* label) c_gtk_menu_item_new_with_mnemonic;
	void function(GtkMenuItem* menuItem, gboolean rightJustified) c_gtk_menu_item_set_right_justified;
	gboolean function(GtkMenuItem* menuItem) c_gtk_menu_item_get_right_justified;
	gchar* function(GtkMenuItem* menuItem) c_gtk_menu_item_get_label;
	void function(GtkMenuItem* menuItem, gchar* label) c_gtk_menu_item_set_label;
	gboolean function(GtkMenuItem* menuItem) c_gtk_menu_item_get_use_underline;
	void function(GtkMenuItem* menuItem, gboolean setting) c_gtk_menu_item_set_use_underline;
	void function(GtkMenuItem* menuItem, GtkWidget* submenu) c_gtk_menu_item_set_submenu;
	GtkWidget* function(GtkMenuItem* menuItem) c_gtk_menu_item_get_submenu;
	void function(GtkMenuItem* menuItem, gchar* accelPath) c_gtk_menu_item_set_accel_path;
	gchar* function(GtkMenuItem* menuItem) c_gtk_menu_item_get_accel_path;
	void function(GtkMenuItem* menuItem) c_gtk_menu_item_select;
	void function(GtkMenuItem* menuItem) c_gtk_menu_item_deselect;
	void function(GtkMenuItem* menuItem) c_gtk_menu_item_activate;
	void function(GtkMenuItem* menuItem, gint* requisition) c_gtk_menu_item_toggle_size_request;
	void function(GtkMenuItem* menuItem, gint allocation) c_gtk_menu_item_toggle_size_allocate;
	gboolean function(GtkMenuItem* menuItem) c_gtk_menu_item_get_reserve_indicator;
	void function(GtkMenuItem* menuItem, gboolean reserve) c_gtk_menu_item_set_reserve_indicator;

	// gtk.ImageMenuItem

	void function(GtkImageMenuItem* imageMenuItem, GtkWidget* image) c_gtk_image_menu_item_set_image;
	GtkWidget* function(GtkImageMenuItem* imageMenuItem) c_gtk_image_menu_item_get_image;
	GtkWidget* function() c_gtk_image_menu_item_new;
	GtkWidget* function(gchar* stockId, GtkAccelGroup* accelGroup) c_gtk_image_menu_item_new_from_stock;
	GtkWidget* function(gchar* label) c_gtk_image_menu_item_new_with_label;
	GtkWidget* function(gchar* label) c_gtk_image_menu_item_new_with_mnemonic;
	gboolean function(GtkImageMenuItem* imageMenuItem) c_gtk_image_menu_item_get_use_stock;
	void function(GtkImageMenuItem* imageMenuItem, gboolean useStock) c_gtk_image_menu_item_set_use_stock;
	gboolean function(GtkImageMenuItem* imageMenuItem) c_gtk_image_menu_item_get_always_show_image;
	void function(GtkImageMenuItem* imageMenuItem, gboolean alwaysShow) c_gtk_image_menu_item_set_always_show_image;
	void function(GtkImageMenuItem* imageMenuItem, GtkAccelGroup* accelGroup) c_gtk_image_menu_item_set_accel_group;

	// gtk.RadioMenuItem

	GtkWidget* function(GSList* group) c_gtk_radio_menu_item_new;
	GtkWidget* function(GSList* group, gchar* label) c_gtk_radio_menu_item_new_with_label;
	GtkWidget* function(GSList* group, gchar* label) c_gtk_radio_menu_item_new_with_mnemonic;
	GtkWidget* function(GtkRadioMenuItem* group) c_gtk_radio_menu_item_new_from_widget;
	GtkWidget* function(GtkRadioMenuItem* group, gchar* label) c_gtk_radio_menu_item_new_with_label_from_widget;
	GtkWidget* function(GtkRadioMenuItem* group, gchar* label) c_gtk_radio_menu_item_new_with_mnemonic_from_widget;
	void function(GtkRadioMenuItem* radioMenuItem, GSList* group) c_gtk_radio_menu_item_set_group;
	GSList* function(GtkRadioMenuItem* radioMenuItem) c_gtk_radio_menu_item_get_group;

	// gtk.CheckMenuItem

	GtkWidget* function() c_gtk_check_menu_item_new;
	GtkWidget* function(gchar* label) c_gtk_check_menu_item_new_with_label;
	GtkWidget* function(gchar* label) c_gtk_check_menu_item_new_with_mnemonic;
	gboolean function(GtkCheckMenuItem* checkMenuItem) c_gtk_check_menu_item_get_active;
	void function(GtkCheckMenuItem* checkMenuItem, gboolean isActive) c_gtk_check_menu_item_set_active;
	void function(GtkCheckMenuItem* checkMenuItem) c_gtk_check_menu_item_toggled;
	gboolean function(GtkCheckMenuItem* checkMenuItem) c_gtk_check_menu_item_get_inconsistent;
	void function(GtkCheckMenuItem* checkMenuItem, gboolean setting) c_gtk_check_menu_item_set_inconsistent;
	void function(GtkCheckMenuItem* checkMenuItem, gboolean drawAsRadio) c_gtk_check_menu_item_set_draw_as_radio;
	gboolean function(GtkCheckMenuItem* checkMenuItem) c_gtk_check_menu_item_get_draw_as_radio;

	// gtk.SeparatorMenuItem

	GtkWidget* function() c_gtk_separator_menu_item_new;

	// gtk.TearoffMenuItem

	GtkWidget* function() c_gtk_tearoff_menu_item_new;

	// gtk.ToolShellT


	// gtk.ToolShellT

	PangoEllipsizeMode function(GtkToolShell* shell) c_gtk_tool_shell_get_ellipsize_mode;
	GtkIconSize function(GtkToolShell* shell) c_gtk_tool_shell_get_icon_size;
	GtkOrientation function(GtkToolShell* shell) c_gtk_tool_shell_get_orientation;
	GtkReliefStyle function(GtkToolShell* shell) c_gtk_tool_shell_get_relief_style;
	GtkToolbarStyle function(GtkToolShell* shell) c_gtk_tool_shell_get_style;
	gfloat function(GtkToolShell* shell) c_gtk_tool_shell_get_text_alignment;
	GtkOrientation function(GtkToolShell* shell) c_gtk_tool_shell_get_text_orientation;
	void function(GtkToolShell* shell) c_gtk_tool_shell_rebuild_menu;
	GtkSizeGroup* function(GtkToolShell* shell) c_gtk_tool_shell_get_text_size_group;

	// gtk.Toolbar

	GtkWidget* function() c_gtk_toolbar_new;
	void function(GtkToolbar* toolbar, GtkToolItem* item, gint pos) c_gtk_toolbar_insert;
	gint function(GtkToolbar* toolbar, GtkToolItem* item) c_gtk_toolbar_get_item_index;
	gint function(GtkToolbar* toolbar) c_gtk_toolbar_get_n_items;
	GtkToolItem* function(GtkToolbar* toolbar, gint n) c_gtk_toolbar_get_nth_item;
	gint function(GtkToolbar* toolbar, gint x, gint y) c_gtk_toolbar_get_drop_index;
	void function(GtkToolbar* toolbar, GtkToolItem* toolItem, gint index) c_gtk_toolbar_set_drop_highlight_item;
	void function(GtkToolbar* toolbar, gboolean showArrow) c_gtk_toolbar_set_show_arrow;
	void function(GtkToolbar* toolbar) c_gtk_toolbar_unset_icon_size;
	gboolean function(GtkToolbar* toolbar) c_gtk_toolbar_get_show_arrow;
	GtkToolbarStyle function(GtkToolbar* toolbar) c_gtk_toolbar_get_style;
	GtkIconSize function(GtkToolbar* toolbar) c_gtk_toolbar_get_icon_size;
	GtkReliefStyle function(GtkToolbar* toolbar) c_gtk_toolbar_get_relief_style;
	void function(GtkToolbar* toolbar, GtkToolbarStyle style) c_gtk_toolbar_set_style;
	void function(GtkToolbar* toolbar, GtkIconSize iconSize) c_gtk_toolbar_set_icon_size;
	void function(GtkToolbar* toolbar) c_gtk_toolbar_unset_style;

	// gtk.ToolItem

	GtkToolItem* function() c_gtk_tool_item_new;
	void function(GtkToolItem* toolItem, gboolean homogeneous) c_gtk_tool_item_set_homogeneous;
	gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_homogeneous;
	void function(GtkToolItem* toolItem, gboolean expand) c_gtk_tool_item_set_expand;
	gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_expand;
	void function(GtkToolItem* toolItem, gchar* text) c_gtk_tool_item_set_tooltip_text;
	void function(GtkToolItem* toolItem, gchar* markup) c_gtk_tool_item_set_tooltip_markup;
	void function(GtkToolItem* toolItem, gboolean useDragWindow) c_gtk_tool_item_set_use_drag_window;
	gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_use_drag_window;
	void function(GtkToolItem* toolItem, gboolean visibleHorizontal) c_gtk_tool_item_set_visible_horizontal;
	gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_visible_horizontal;
	void function(GtkToolItem* toolItem, gboolean visibleVertical) c_gtk_tool_item_set_visible_vertical;
	gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_visible_vertical;
	void function(GtkToolItem* toolItem, gboolean isImportant) c_gtk_tool_item_set_is_important;
	gboolean function(GtkToolItem* toolItem) c_gtk_tool_item_get_is_important;
	PangoEllipsizeMode function(GtkToolItem* toolItem) c_gtk_tool_item_get_ellipsize_mode;
	GtkIconSize function(GtkToolItem* toolItem) c_gtk_tool_item_get_icon_size;
	GtkOrientation function(GtkToolItem* toolItem) c_gtk_tool_item_get_orientation;
	GtkToolbarStyle function(GtkToolItem* toolItem) c_gtk_tool_item_get_toolbar_style;
	GtkReliefStyle function(GtkToolItem* toolItem) c_gtk_tool_item_get_relief_style;
	gfloat function(GtkToolItem* toolItem) c_gtk_tool_item_get_text_alignment;
	GtkOrientation function(GtkToolItem* toolItem) c_gtk_tool_item_get_text_orientation;
	GtkWidget* function(GtkToolItem* toolItem) c_gtk_tool_item_retrieve_proxy_menu_item;
	GtkWidget* function(GtkToolItem* toolItem, gchar* menuItemId) c_gtk_tool_item_get_proxy_menu_item;
	void function(GtkToolItem* toolItem, gchar* menuItemId, GtkWidget* menuItem) c_gtk_tool_item_set_proxy_menu_item;
	void function(GtkToolItem* toolItem) c_gtk_tool_item_rebuild_menu;
	void function(GtkToolItem* toolItem) c_gtk_tool_item_toolbar_reconfigured;
	GtkSizeGroup* function(GtkToolItem* toolItem) c_gtk_tool_item_get_text_size_group;

	// gtk.ToolPalette

	GtkWidget* function() c_gtk_tool_palette_new;
	gboolean function(GtkToolPalette* palette, GtkToolItemGroup* group) c_gtk_tool_palette_get_exclusive;
	void function(GtkToolPalette* palette, GtkToolItemGroup* group, gboolean exclusive) c_gtk_tool_palette_set_exclusive;
	gboolean function(GtkToolPalette* palette, GtkToolItemGroup* group) c_gtk_tool_palette_get_expand;
	void function(GtkToolPalette* palette, GtkToolItemGroup* group, gboolean expand) c_gtk_tool_palette_set_expand;
	gint function(GtkToolPalette* palette, GtkToolItemGroup* group) c_gtk_tool_palette_get_group_position;
	void function(GtkToolPalette* palette, GtkToolItemGroup* group, gint position) c_gtk_tool_palette_set_group_position;
	GtkIconSize function(GtkToolPalette* palette) c_gtk_tool_palette_get_icon_size;
	void function(GtkToolPalette* palette, GtkIconSize iconSize) c_gtk_tool_palette_set_icon_size;
	void function(GtkToolPalette* palette) c_gtk_tool_palette_unset_icon_size;
	GtkToolbarStyle function(GtkToolPalette* palette) c_gtk_tool_palette_get_style;
	void function(GtkToolPalette* palette, GtkToolbarStyle style) c_gtk_tool_palette_set_style;
	void function(GtkToolPalette* palette) c_gtk_tool_palette_unset_style;
	void function(GtkToolPalette* palette, GtkWidget* widget, GtkDestDefaults flags, GtkToolPaletteDragTargets targets, GdkDragAction actions) c_gtk_tool_palette_add_drag_dest;
	GtkWidget* function(GtkToolPalette* palette, GtkSelectionData* selection) c_gtk_tool_palette_get_drag_item;
	GtkTargetEntry* function() c_gtk_tool_palette_get_drag_target_group;
	GtkTargetEntry* function() c_gtk_tool_palette_get_drag_target_item;
	GtkToolItemGroup* function(GtkToolPalette* palette, gint x, gint y) c_gtk_tool_palette_get_drop_group;
	GtkToolItem* function(GtkToolPalette* palette, gint x, gint y) c_gtk_tool_palette_get_drop_item;
	void function(GtkToolPalette* palette, GtkToolPaletteDragTargets targets) c_gtk_tool_palette_set_drag_source;
	GtkAdjustment* function(GtkToolPalette* palette) c_gtk_tool_palette_get_hadjustment;
	GtkAdjustment* function(GtkToolPalette* palette) c_gtk_tool_palette_get_vadjustment;

	// gtk.ToolItemGroup

	gboolean function(GtkToolItemGroup* group) c_gtk_tool_item_group_get_collapsed;
	GtkToolItem* function(GtkToolItemGroup* group, gint x, gint y) c_gtk_tool_item_group_get_drop_item;
	PangoEllipsizeMode function(GtkToolItemGroup* group) c_gtk_tool_item_group_get_ellipsize;
	gint function(GtkToolItemGroup* group, GtkToolItem* item) c_gtk_tool_item_group_get_item_position;
	guint function(GtkToolItemGroup* group) c_gtk_tool_item_group_get_n_items;
	gchar* function(GtkToolItemGroup* group) c_gtk_tool_item_group_get_label;
	GtkWidget* function(GtkToolItemGroup* group) c_gtk_tool_item_group_get_label_widget;
	GtkToolItem* function(GtkToolItemGroup* group, guint index) c_gtk_tool_item_group_get_nth_item;
	GtkReliefStyle function(GtkToolItemGroup* group) c_gtk_tool_item_group_get_header_relief;
	void function(GtkToolItemGroup* group, GtkToolItem* item, gint position) c_gtk_tool_item_group_insert;
	GtkWidget* function(gchar* label) c_gtk_tool_item_group_new;
	void function(GtkToolItemGroup* group, gboolean collapsed) c_gtk_tool_item_group_set_collapsed;
	void function(GtkToolItemGroup* group, PangoEllipsizeMode ellipsize) c_gtk_tool_item_group_set_ellipsize;
	void function(GtkToolItemGroup* group, GtkToolItem* item, gint position) c_gtk_tool_item_group_set_item_position;
	void function(GtkToolItemGroup* group, gchar* label) c_gtk_tool_item_group_set_label;
	void function(GtkToolItemGroup* group, GtkWidget* labelWidget) c_gtk_tool_item_group_set_label_widget;
	void function(GtkToolItemGroup* group, GtkReliefStyle style) c_gtk_tool_item_group_set_header_relief;

	// gtk.SeparatorToolItem

	GtkToolItem* function() c_gtk_separator_tool_item_new;
	void function(GtkSeparatorToolItem* item, gboolean draw) c_gtk_separator_tool_item_set_draw;
	gboolean function(GtkSeparatorToolItem* item) c_gtk_separator_tool_item_get_draw;

	// gtk.ToolButton

	GtkToolItem* function(GtkWidget* iconWidget, gchar* label) c_gtk_tool_button_new;
	GtkToolItem* function(gchar* stockId) c_gtk_tool_button_new_from_stock;
	void function(GtkToolButton* button, gchar* label) c_gtk_tool_button_set_label;
	gchar* function(GtkToolButton* button) c_gtk_tool_button_get_label;
	void function(GtkToolButton* button, gboolean useUnderline) c_gtk_tool_button_set_use_underline;
	gboolean function(GtkToolButton* button) c_gtk_tool_button_get_use_underline;
	void function(GtkToolButton* button, gchar* stockId) c_gtk_tool_button_set_stock_id;
	gchar* function(GtkToolButton* button) c_gtk_tool_button_get_stock_id;
	void function(GtkToolButton* button, gchar* iconName) c_gtk_tool_button_set_icon_name;
	gchar* function(GtkToolButton* button) c_gtk_tool_button_get_icon_name;
	void function(GtkToolButton* button, GtkWidget* iconWidget) c_gtk_tool_button_set_icon_widget;
	GtkWidget* function(GtkToolButton* button) c_gtk_tool_button_get_icon_widget;
	void function(GtkToolButton* button, GtkWidget* labelWidget) c_gtk_tool_button_set_label_widget;
	GtkWidget* function(GtkToolButton* button) c_gtk_tool_button_get_label_widget;

	// gtk.MenuToolButton

	GtkToolItem* function(GtkWidget* iconWidget, gchar* label) c_gtk_menu_tool_button_new;
	GtkToolItem* function(gchar* stockId) c_gtk_menu_tool_button_new_from_stock;
	void function(GtkMenuToolButton* button, GtkWidget* menu) c_gtk_menu_tool_button_set_menu;
	GtkWidget* function(GtkMenuToolButton* button) c_gtk_menu_tool_button_get_menu;
	void function(GtkMenuToolButton* button, gchar* text) c_gtk_menu_tool_button_set_arrow_tooltip_text;
	void function(GtkMenuToolButton* button, gchar* markup) c_gtk_menu_tool_button_set_arrow_tooltip_markup;

	// gtk.ToggleToolButton

	GtkToolItem* function() c_gtk_toggle_tool_button_new;
	GtkToolItem* function(gchar* stockId) c_gtk_toggle_tool_button_new_from_stock;
	void function(GtkToggleToolButton* button, gboolean isActive) c_gtk_toggle_tool_button_set_active;
	gboolean function(GtkToggleToolButton* button) c_gtk_toggle_tool_button_get_active;

	// gtk.RadioToolButton

	GtkToolItem* function(GSList* group) c_gtk_radio_tool_button_new;
	GtkToolItem* function(GSList* group, gchar* stockId) c_gtk_radio_tool_button_new_from_stock;
	GtkToolItem* function(GtkRadioToolButton* group) c_gtk_radio_tool_button_new_from_widget;
	GtkToolItem* function(GtkRadioToolButton* group, gchar* stockId) c_gtk_radio_tool_button_new_with_stock_from_widget;
	GSList* function(GtkRadioToolButton* button) c_gtk_radio_tool_button_get_group;
	void function(GtkRadioToolButton* button, GSList* group) c_gtk_radio_tool_button_set_group;

	// gtk.UIManager

	GtkUIManager* function() c_gtk_ui_manager_new;
	void function(GtkUIManager* manager, gboolean addTearoffs) c_gtk_ui_manager_set_add_tearoffs;
	gboolean function(GtkUIManager* manager) c_gtk_ui_manager_get_add_tearoffs;
	void function(GtkUIManager* manager, GtkActionGroup* actionGroup, gint pos) c_gtk_ui_manager_insert_action_group;
	void function(GtkUIManager* manager, GtkActionGroup* actionGroup) c_gtk_ui_manager_remove_action_group;
	GList* function(GtkUIManager* manager) c_gtk_ui_manager_get_action_groups;
	GtkAccelGroup* function(GtkUIManager* manager) c_gtk_ui_manager_get_accel_group;
	GtkWidget* function(GtkUIManager* manager, gchar* path) c_gtk_ui_manager_get_widget;
	GSList* function(GtkUIManager* manager, GtkUIManagerItemType types) c_gtk_ui_manager_get_toplevels;
	GtkAction* function(GtkUIManager* manager, gchar* path) c_gtk_ui_manager_get_action;
	guint function(GtkUIManager* manager, gchar* resourcePath, GError** error) c_gtk_ui_manager_add_ui_from_resource;
	guint function(GtkUIManager* manager, gchar* buffer, gssize length, GError** error) c_gtk_ui_manager_add_ui_from_string;
	guint function(GtkUIManager* manager, gchar* filename, GError** error) c_gtk_ui_manager_add_ui_from_file;
	guint function(GtkUIManager* manager) c_gtk_ui_manager_new_merge_id;
	void function(GtkUIManager* manager, guint mergeId, gchar* path, gchar* name, gchar* action, GtkUIManagerItemType type, gboolean top) c_gtk_ui_manager_add_ui;
	void function(GtkUIManager* manager, guint mergeId) c_gtk_ui_manager_remove_ui;
	gchar* function(GtkUIManager* manager) c_gtk_ui_manager_get_ui;
	void function(GtkUIManager* manager) c_gtk_ui_manager_ensure_update;

	// gtk.ActionGroup

	GtkActionGroup* function(gchar* name) c_gtk_action_group_new;
	gchar* function(GtkActionGroup* actionGroup) c_gtk_action_group_get_name;
	gboolean function(GtkActionGroup* actionGroup) c_gtk_action_group_get_sensitive;
	void function(GtkActionGroup* actionGroup, gboolean sensitive) c_gtk_action_group_set_sensitive;
	gboolean function(GtkActionGroup* actionGroup) c_gtk_action_group_get_visible;
	void function(GtkActionGroup* actionGroup, gboolean visible) c_gtk_action_group_set_visible;
	GtkAccelGroup* function(GtkActionGroup* actionGroup) c_gtk_action_group_get_accel_group;
	void function(GtkActionGroup* actionGroup, GtkAccelGroup* accelGroup) c_gtk_action_group_set_accel_group;
	GtkAction* function(GtkActionGroup* actionGroup, gchar* actionName) c_gtk_action_group_get_action;
	GList* function(GtkActionGroup* actionGroup) c_gtk_action_group_list_actions;
	void function(GtkActionGroup* actionGroup, GtkAction* action) c_gtk_action_group_add_action;
	void function(GtkActionGroup* actionGroup, GtkAction* action, gchar* accelerator) c_gtk_action_group_add_action_with_accel;
	void function(GtkActionGroup* actionGroup, GtkAction* action) c_gtk_action_group_remove_action;
	void function(GtkActionGroup* actionGroup, GtkActionEntry* entries, guint nEntries, void* userData) c_gtk_action_group_add_actions;
	void function(GtkActionGroup* actionGroup, GtkActionEntry* entries, guint nEntries, void* userData, GDestroyNotify destroy) c_gtk_action_group_add_actions_full;
	void function(GtkActionGroup* actionGroup, GtkToggleActionEntry* entries, guint nEntries, void* userData) c_gtk_action_group_add_toggle_actions;
	void function(GtkActionGroup* actionGroup, GtkToggleActionEntry* entries, guint nEntries, void* userData, GDestroyNotify destroy) c_gtk_action_group_add_toggle_actions_full;
	void function(GtkActionGroup* actionGroup, GtkRadioActionEntry* entries, guint nEntries, gint value, GCallback onChange, void* userData) c_gtk_action_group_add_radio_actions;
	void function(GtkActionGroup* actionGroup, GtkRadioActionEntry* entries, guint nEntries, gint value, GCallback onChange, void* userData, GDestroyNotify destroy) c_gtk_action_group_add_radio_actions_full;
	void function(GtkActionGroup* actionGroup, GtkTranslateFunc func, void* data, GDestroyNotify notify) c_gtk_action_group_set_translate_func;
	void function(GtkActionGroup* actionGroup, gchar* domain) c_gtk_action_group_set_translation_domain;
	gchar* function(GtkActionGroup* actionGroup, gchar* string) c_gtk_action_group_translate_string;

	// gtk.Action

	GtkAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId) c_gtk_action_new;
	gchar* function(GtkAction* action) c_gtk_action_get_name;
	gboolean function(GtkAction* action) c_gtk_action_is_sensitive;
	gboolean function(GtkAction* action) c_gtk_action_get_sensitive;
	void function(GtkAction* action, gboolean sensitive) c_gtk_action_set_sensitive;
	gboolean function(GtkAction* action) c_gtk_action_is_visible;
	gboolean function(GtkAction* action) c_gtk_action_get_visible;
	void function(GtkAction* action, gboolean visible) c_gtk_action_set_visible;
	void function(GtkAction* action) c_gtk_action_activate;
	GtkWidget* function(GtkAction* action, GtkIconSize iconSize) c_gtk_action_create_icon;
	GtkWidget* function(GtkAction* action) c_gtk_action_create_menu_item;
	GtkWidget* function(GtkAction* action) c_gtk_action_create_tool_item;
	GtkWidget* function(GtkAction* action) c_gtk_action_create_menu;
	GSList* function(GtkAction* action) c_gtk_action_get_proxies;
	void function(GtkAction* action) c_gtk_action_connect_accelerator;
	void function(GtkAction* action) c_gtk_action_disconnect_accelerator;
	void function(GtkAction* action) c_gtk_action_block_activate;
	void function(GtkAction* action) c_gtk_action_unblock_activate;
	gboolean function(GtkAction* action) c_gtk_action_get_always_show_image;
	void function(GtkAction* action, gboolean alwaysShow) c_gtk_action_set_always_show_image;
	gchar* function(GtkAction* action) c_gtk_action_get_accel_path;
	void function(GtkAction* action, gchar* accelPath) c_gtk_action_set_accel_path;
	GClosure* function(GtkAction* action) c_gtk_action_get_accel_closure;
	void function(GtkAction* action, GtkAccelGroup* accelGroup) c_gtk_action_set_accel_group;
	void function(GtkAction* action, gchar* label) c_gtk_action_set_label;
	gchar* function(GtkAction* action) c_gtk_action_get_label;
	void function(GtkAction* action, gchar* shortLabel) c_gtk_action_set_short_label;
	gchar* function(GtkAction* action) c_gtk_action_get_short_label;
	void function(GtkAction* action, gchar* tooltip) c_gtk_action_set_tooltip;
	gchar* function(GtkAction* action) c_gtk_action_get_tooltip;
	void function(GtkAction* action, gchar* stockId) c_gtk_action_set_stock_id;
	gchar* function(GtkAction* action) c_gtk_action_get_stock_id;
	void function(GtkAction* action, GIcon* icon) c_gtk_action_set_gicon;
	GIcon* function(GtkAction* action) c_gtk_action_get_gicon;
	void function(GtkAction* action, gchar* iconName) c_gtk_action_set_icon_name;
	gchar* function(GtkAction* action) c_gtk_action_get_icon_name;
	void function(GtkAction* action, gboolean visibleHorizontal) c_gtk_action_set_visible_horizontal;
	gboolean function(GtkAction* action) c_gtk_action_get_visible_horizontal;
	void function(GtkAction* action, gboolean visibleVertical) c_gtk_action_set_visible_vertical;
	gboolean function(GtkAction* action) c_gtk_action_get_visible_vertical;
	void function(GtkAction* action, gboolean isImportant) c_gtk_action_set_is_important;
	gboolean function(GtkAction* action) c_gtk_action_get_is_important;

	// gtk.ToggleAction

	GtkToggleAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId) c_gtk_toggle_action_new;
	void function(GtkToggleAction* action) c_gtk_toggle_action_toggled;
	void function(GtkToggleAction* action, gboolean isActive) c_gtk_toggle_action_set_active;
	gboolean function(GtkToggleAction* action) c_gtk_toggle_action_get_active;
	void function(GtkToggleAction* action, gboolean drawAsRadio) c_gtk_toggle_action_set_draw_as_radio;
	gboolean function(GtkToggleAction* action) c_gtk_toggle_action_get_draw_as_radio;

	// gtk.RadioAction

	GtkRadioAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId, gint value) c_gtk_radio_action_new;
	GSList* function(GtkRadioAction* action) c_gtk_radio_action_get_group;
	void function(GtkRadioAction* action, GSList* group) c_gtk_radio_action_set_group;
	void function(GtkRadioAction* action, GtkRadioAction* groupSource) c_gtk_radio_action_join_group;
	gint function(GtkRadioAction* action) c_gtk_radio_action_get_current_value;
	void function(GtkRadioAction* action, gint currentValue) c_gtk_radio_action_set_current_value;

	// gtk.RecentAction

	GtkAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId) c_gtk_recent_action_new;
	GtkAction* function(gchar* name, gchar* label, gchar* tooltip, gchar* stockId, GtkRecentManager* manager) c_gtk_recent_action_new_for_manager;
	gboolean function(GtkRecentAction* action) c_gtk_recent_action_get_show_numbers;
	void function(GtkRecentAction* action, gboolean showNumbers) c_gtk_recent_action_set_show_numbers;

	// gtk.ActivatableT


	// gtk.ActivatableT

	void function(GtkActivatable* activatable, GtkAction* action) c_gtk_activatable_do_set_related_action;
	GtkAction* function(GtkActivatable* activatable) c_gtk_activatable_get_related_action;
	gboolean function(GtkActivatable* activatable) c_gtk_activatable_get_use_action_appearance;
	void function(GtkActivatable* activatable, GtkAction* action) c_gtk_activatable_sync_action_properties;
	void function(GtkActivatable* activatable, GtkAction* action) c_gtk_activatable_set_related_action;
	void function(GtkActivatable* activatable, gboolean useAppearance) c_gtk_activatable_set_use_action_appearance;

	// gtk.ColorChooserT


	// gtk.ColorChooserT

	void function(GtkColorChooser* chooser, GdkRGBA* color) c_gtk_color_chooser_get_rgba;
	void function(GtkColorChooser* chooser, GdkRGBA* color) c_gtk_color_chooser_set_rgba;
	gboolean function(GtkColorChooser* chooser) c_gtk_color_chooser_get_use_alpha;
	void function(GtkColorChooser* chooser, gboolean useAlpha) c_gtk_color_chooser_set_use_alpha;
	void function(GtkColorChooser* chooser, GtkOrientation orientation, gint colorsPerLine, gint nColors, GdkRGBA* colors) c_gtk_color_chooser_add_palette;

	// gtk.ColorButton

	GtkWidget* function() c_gtk_color_button_new;
	GtkWidget* function(GdkColor* color) c_gtk_color_button_new_with_color;
	GtkWidget* function(GdkRGBA* rgba) c_gtk_color_button_new_with_rgba;
	void function(GtkColorButton* button, GdkColor* color) c_gtk_color_button_set_color;
	void function(GtkColorButton* button, GdkColor* color) c_gtk_color_button_get_color;
	void function(GtkColorButton* button, guint16 alpha) c_gtk_color_button_set_alpha;
	guint16 function(GtkColorButton* button) c_gtk_color_button_get_alpha;
	void function(GtkColorButton* button, GdkRGBA* rgba) c_gtk_color_button_set_rgba;
	void function(GtkColorButton* button, GdkRGBA* rgba) c_gtk_color_button_get_rgba;
	void function(GtkColorButton* button, gboolean useAlpha) c_gtk_color_button_set_use_alpha;
	gboolean function(GtkColorButton* button) c_gtk_color_button_get_use_alpha;
	void function(GtkColorButton* button, gchar* title) c_gtk_color_button_set_title;
	gchar* function(GtkColorButton* button) c_gtk_color_button_get_title;

	// gtk.ColorChooserWidget

	GtkWidget* function() c_gtk_color_chooser_widget_new;

	// gtk.ColorChooserDialog

	GtkWidget* function(gchar* title, GtkWindow* parent) c_gtk_color_chooser_dialog_new;

	// gtk.ColorSelection

	GtkWidget* function() c_gtk_color_selection_new;
	void function(GtkColorSelection* colorsel, gboolean hasOpacity) c_gtk_color_selection_set_has_opacity_control;
	gboolean function(GtkColorSelection* colorsel) c_gtk_color_selection_get_has_opacity_control;
	void function(GtkColorSelection* colorsel, gboolean hasPalette) c_gtk_color_selection_set_has_palette;
	gboolean function(GtkColorSelection* colorsel) c_gtk_color_selection_get_has_palette;
	guint16 function(GtkColorSelection* colorsel) c_gtk_color_selection_get_current_alpha;
	void function(GtkColorSelection* colorsel, guint16 alpha) c_gtk_color_selection_set_current_alpha;
	void function(GtkColorSelection* colorsel, GdkColor* color) c_gtk_color_selection_get_current_color;
	void function(GtkColorSelection* colorsel, GdkColor* color) c_gtk_color_selection_set_current_color;
	guint16 function(GtkColorSelection* colorsel) c_gtk_color_selection_get_previous_alpha;
	void function(GtkColorSelection* colorsel, guint16 alpha) c_gtk_color_selection_set_previous_alpha;
	void function(GtkColorSelection* colorsel, GdkColor* color) c_gtk_color_selection_get_previous_color;
	void function(GtkColorSelection* colorsel, GdkColor* color) c_gtk_color_selection_set_previous_color;
	void function(GtkColorSelection* colorsel, GdkRGBA* rgba) c_gtk_color_selection_get_current_rgba;
	void function(GtkColorSelection* colorsel, GdkRGBA* rgba) c_gtk_color_selection_set_current_rgba;
	void function(GtkColorSelection* colorsel, GdkRGBA* rgba) c_gtk_color_selection_get_previous_rgba;
	void function(GtkColorSelection* colorsel, GdkRGBA* rgba) c_gtk_color_selection_set_previous_rgba;
	gboolean function(GtkColorSelection* colorsel) c_gtk_color_selection_is_adjusting;
	gboolean function(gchar* str, GdkColor** colors, gint* nColors) c_gtk_color_selection_palette_from_string;
	gchar* function(GdkColor* colors, gint nColors) c_gtk_color_selection_palette_to_string;
	GtkColorSelectionChangePaletteWithScreenFunc function(GtkColorSelectionChangePaletteWithScreenFunc func) c_gtk_color_selection_set_change_palette_with_screen_hook;

	// gtk.ColorSelectionDialog

	GtkWidget* function(gchar* title) c_gtk_color_selection_dialog_new;
	GtkWidget* function(GtkColorSelectionDialog* colorsel) c_gtk_color_selection_dialog_get_color_selection;

	// gtk.HSV

	GtkWidget* function() c_gtk_hsv_new;
	void function(GtkHSV* hsv, double h, double s, double v) c_gtk_hsv_set_color;
	void function(GtkHSV* hsv, gdouble* h, gdouble* s, gdouble* v) c_gtk_hsv_get_color;
	void function(GtkHSV* hsv, gint size, gint ringWidth) c_gtk_hsv_set_metrics;
	void function(GtkHSV* hsv, gint* size, gint* ringWidth) c_gtk_hsv_get_metrics;
	gboolean function(GtkHSV* hsv) c_gtk_hsv_is_adjusting;
	void function(gdouble h, gdouble s, gdouble v, gdouble* r, gdouble* g, gdouble* b) c_gtk_hsv_to_rgb;
	void function(gdouble r, gdouble g, gdouble b, gdouble* h, gdouble* s, gdouble* v) c_gtk_rgb_to_hsv;

	// gtk.FileChooserT


	// gtk.FileChooserT

	void function(GtkFileChooser* chooser, GtkFileChooserAction action) c_gtk_file_chooser_set_action;
	GtkFileChooserAction function(GtkFileChooser* chooser) c_gtk_file_chooser_get_action;
	void function(GtkFileChooser* chooser, gboolean localOnly) c_gtk_file_chooser_set_local_only;
	gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_local_only;
	void function(GtkFileChooser* chooser, gboolean selectMultiple) c_gtk_file_chooser_set_select_multiple;
	gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_select_multiple;
	void function(GtkFileChooser* chooser, gboolean showHidden) c_gtk_file_chooser_set_show_hidden;
	gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_show_hidden;
	void function(GtkFileChooser* chooser, gboolean doOverwriteConfirmation) c_gtk_file_chooser_set_do_overwrite_confirmation;
	gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_do_overwrite_confirmation;
	void function(GtkFileChooser* chooser, gboolean createFolders) c_gtk_file_chooser_set_create_folders;
	gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_create_folders;
	void function(GtkFileChooser* chooser, gchar* name) c_gtk_file_chooser_set_current_name;
	gchar* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_filename;
	gboolean function(GtkFileChooser* chooser, char* filename) c_gtk_file_chooser_set_filename;
	gboolean function(GtkFileChooser* chooser, char* filename) c_gtk_file_chooser_select_filename;
	void function(GtkFileChooser* chooser, char* filename) c_gtk_file_chooser_unselect_filename;
	void function(GtkFileChooser* chooser) c_gtk_file_chooser_select_all;
	void function(GtkFileChooser* chooser) c_gtk_file_chooser_unselect_all;
	GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_filenames;
	gboolean function(GtkFileChooser* chooser, gchar* filename) c_gtk_file_chooser_set_current_folder;
	gchar* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_current_folder;
	gchar* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_uri;
	gboolean function(GtkFileChooser* chooser, char* uri) c_gtk_file_chooser_set_uri;
	gboolean function(GtkFileChooser* chooser, char* uri) c_gtk_file_chooser_select_uri;
	void function(GtkFileChooser* chooser, char* uri) c_gtk_file_chooser_unselect_uri;
	GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_uris;
	gboolean function(GtkFileChooser* chooser, gchar* uri) c_gtk_file_chooser_set_current_folder_uri;
	gchar* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_current_folder_uri;
	void function(GtkFileChooser* chooser, GtkWidget* previewWidget) c_gtk_file_chooser_set_preview_widget;
	GtkWidget* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_preview_widget;
	void function(GtkFileChooser* chooser, gboolean active) c_gtk_file_chooser_set_preview_widget_active;
	gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_preview_widget_active;
	void function(GtkFileChooser* chooser, gboolean useLabel) c_gtk_file_chooser_set_use_preview_label;
	gboolean function(GtkFileChooser* chooser) c_gtk_file_chooser_get_use_preview_label;
	char* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_preview_filename;
	char* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_preview_uri;
	void function(GtkFileChooser* chooser, GtkWidget* extraWidget) c_gtk_file_chooser_set_extra_widget;
	GtkWidget* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_extra_widget;
	void function(GtkFileChooser* chooser, GtkFileFilter* filter) c_gtk_file_chooser_add_filter;
	void function(GtkFileChooser* chooser, GtkFileFilter* filter) c_gtk_file_chooser_remove_filter;
	GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_list_filters;
	void function(GtkFileChooser* chooser, GtkFileFilter* filter) c_gtk_file_chooser_set_filter;
	GtkFileFilter* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_filter;
	gboolean function(GtkFileChooser* chooser, char* folder, GError** error) c_gtk_file_chooser_add_shortcut_folder;
	gboolean function(GtkFileChooser* chooser, char* folder, GError** error) c_gtk_file_chooser_remove_shortcut_folder;
	GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_list_shortcut_folders;
	gboolean function(GtkFileChooser* chooser, char* uri, GError** error) c_gtk_file_chooser_add_shortcut_folder_uri;
	gboolean function(GtkFileChooser* chooser, char* uri, GError** error) c_gtk_file_chooser_remove_shortcut_folder_uri;
	GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_list_shortcut_folder_uris;
	GFile* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_current_folder_file;
	GFile* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_file;
	GSList* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_files;
	GFile* function(GtkFileChooser* chooser) c_gtk_file_chooser_get_preview_file;
	gboolean function(GtkFileChooser* chooser, GFile* file, GError** error) c_gtk_file_chooser_select_file;
	gboolean function(GtkFileChooser* chooser, GFile* file, GError** error) c_gtk_file_chooser_set_current_folder_file;
	gboolean function(GtkFileChooser* chooser, GFile* file, GError** error) c_gtk_file_chooser_set_file;
	void function(GtkFileChooser* chooser, GFile* file) c_gtk_file_chooser_unselect_file;

	// gtk.FileChooserButton

	GtkWidget* function(gchar* title, GtkFileChooserAction action) c_gtk_file_chooser_button_new;
	GtkWidget* function(GtkWidget* dialog) c_gtk_file_chooser_button_new_with_dialog;
	gchar* function(GtkFileChooserButton* button) c_gtk_file_chooser_button_get_title;
	void function(GtkFileChooserButton* button, gchar* title) c_gtk_file_chooser_button_set_title;
	gint function(GtkFileChooserButton* button) c_gtk_file_chooser_button_get_width_chars;
	void function(GtkFileChooserButton* button, gint nChars) c_gtk_file_chooser_button_set_width_chars;
	gboolean function(GtkFileChooserButton* button) c_gtk_file_chooser_button_get_focus_on_click;
	void function(GtkFileChooserButton* button, gboolean focusOnClick) c_gtk_file_chooser_button_set_focus_on_click;

	// gtk.FileChooserDialog

	GtkWidget* function(gchar* title, GtkWindow* parent, GtkFileChooserAction action, gchar* firstButtonText, ... ) c_gtk_file_chooser_dialog_new;

	// gtk.FileChooserWidget

	GtkWidget* function(GtkFileChooserAction action) c_gtk_file_chooser_widget_new;

	// gtk.FileFilter

	GtkFileFilter* function() c_gtk_file_filter_new;
	void function(GtkFileFilter* filter, gchar* name) c_gtk_file_filter_set_name;
	gchar* function(GtkFileFilter* filter) c_gtk_file_filter_get_name;
	void function(GtkFileFilter* filter, gchar* mimeType) c_gtk_file_filter_add_mime_type;
	void function(GtkFileFilter* filter, gchar* pattern) c_gtk_file_filter_add_pattern;
	void function(GtkFileFilter* filter) c_gtk_file_filter_add_pixbuf_formats;
	void function(GtkFileFilter* filter, GtkFileFilterFlags needed, GtkFileFilterFunc func, void* data, GDestroyNotify notify) c_gtk_file_filter_add_custom;
	GtkFileFilterFlags function(GtkFileFilter* filter) c_gtk_file_filter_get_needed;
	gboolean function(GtkFileFilter* filter, GtkFileFilterInfo* filterInfo) c_gtk_file_filter_filter;

	// gtk.FontChooserT


	// gtk.FontChooserT

	PangoFontFamily* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font_family;
	PangoFontFace* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font_face;
	gint function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font_size;
	gchar* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font;
	void function(GtkFontChooser* fontchooser, gchar* fontname) c_gtk_font_chooser_set_font;
	PangoFontDescription* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_font_desc;
	void function(GtkFontChooser* fontchooser, PangoFontDescription* fontDesc) c_gtk_font_chooser_set_font_desc;
	gchar* function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_preview_text;
	void function(GtkFontChooser* fontchooser, gchar* text) c_gtk_font_chooser_set_preview_text;
	gboolean function(GtkFontChooser* fontchooser) c_gtk_font_chooser_get_show_preview_entry;
	void function(GtkFontChooser* fontchooser, gboolean showPreviewEntry) c_gtk_font_chooser_set_show_preview_entry;
	void function(GtkFontChooser* fontchooser, GtkFontFilterFunc filter, void* userData, GDestroyNotify destroy) c_gtk_font_chooser_set_filter_func;

	// gtk.FontButton

	GtkWidget* function() c_gtk_font_button_new;
	GtkWidget* function(gchar* fontname) c_gtk_font_button_new_with_font;
	gboolean function(GtkFontButton* fontButton, gchar* fontname) c_gtk_font_button_set_font_name;
	gchar* function(GtkFontButton* fontButton) c_gtk_font_button_get_font_name;
	void function(GtkFontButton* fontButton, gboolean showStyle) c_gtk_font_button_set_show_style;
	gboolean function(GtkFontButton* fontButton) c_gtk_font_button_get_show_style;
	void function(GtkFontButton* fontButton, gboolean showSize) c_gtk_font_button_set_show_size;
	gboolean function(GtkFontButton* fontButton) c_gtk_font_button_get_show_size;
	void function(GtkFontButton* fontButton, gboolean useFont) c_gtk_font_button_set_use_font;
	gboolean function(GtkFontButton* fontButton) c_gtk_font_button_get_use_font;
	void function(GtkFontButton* fontButton, gboolean useSize) c_gtk_font_button_set_use_size;
	gboolean function(GtkFontButton* fontButton) c_gtk_font_button_get_use_size;
	void function(GtkFontButton* fontButton, gchar* title) c_gtk_font_button_set_title;
	gchar* function(GtkFontButton* fontButton) c_gtk_font_button_get_title;

	// gtk.FontChooserWidget

	GtkWidget* function() c_gtk_font_chooser_widget_new;

	// gtk.FontChooserDialog

	GtkWidget* function(gchar* title, GtkWindow* parent) c_gtk_font_chooser_dialog_new;

	// gtk.FontSelection

	GtkWidget* function() c_gtk_font_selection_new;
	gchar* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_font_name;
	gboolean function(GtkFontSelection* fontsel, gchar* fontname) c_gtk_font_selection_set_font_name;
	gchar* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_preview_text;
	void function(GtkFontSelection* fontsel, gchar* text) c_gtk_font_selection_set_preview_text;
	PangoFontFace* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_face;
	GtkWidget* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_face_list;
	PangoFontFamily* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_family;
	gint function(GtkFontSelection* fontsel) c_gtk_font_selection_get_size;
	GtkWidget* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_family_list;
	GtkWidget* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_preview_entry;
	GtkWidget* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_size_entry;
	GtkWidget* function(GtkFontSelection* fontsel) c_gtk_font_selection_get_size_list;

	// gtk.FontSelectionDialog

	GtkWidget* function(gchar* title) c_gtk_font_selection_dialog_new;
	gchar* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_font_name;
	gboolean function(GtkFontSelectionDialog* fsd, gchar* fontname) c_gtk_font_selection_dialog_set_font_name;
	gchar* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_preview_text;
	void function(GtkFontSelectionDialog* fsd, gchar* text) c_gtk_font_selection_dialog_set_preview_text;
	GtkWidget* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_cancel_button;
	GtkWidget* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_ok_button;
	GtkWidget* function(GtkFontSelectionDialog* fsd) c_gtk_font_selection_dialog_get_font_selection;

	// gtk.Grid

	GtkWidget* function() c_gtk_grid_new;
	void function(GtkGrid* grid, GtkWidget* child, gint left, gint top, gint width, gint height) c_gtk_grid_attach;
	void function(GtkGrid* grid, GtkWidget* child, GtkWidget* sibling, GtkPositionType side, gint width, gint height) c_gtk_grid_attach_next_to;
	GtkWidget* function(GtkGrid* grid, gint left, gint top) c_gtk_grid_get_child_at;
	void function(GtkGrid* grid, gint position) c_gtk_grid_insert_row;
	void function(GtkGrid* grid, gint position) c_gtk_grid_insert_column;
	void function(GtkGrid* grid, GtkWidget* sibling, GtkPositionType side) c_gtk_grid_insert_next_to;
	void function(GtkGrid* grid, gboolean homogeneous) c_gtk_grid_set_row_homogeneous;
	gboolean function(GtkGrid* grid) c_gtk_grid_get_row_homogeneous;
	void function(GtkGrid* grid, guint spacing) c_gtk_grid_set_row_spacing;
	guint function(GtkGrid* grid) c_gtk_grid_get_row_spacing;
	void function(GtkGrid* grid, gboolean homogeneous) c_gtk_grid_set_column_homogeneous;
	gboolean function(GtkGrid* grid) c_gtk_grid_get_column_homogeneous;
	void function(GtkGrid* grid, guint spacing) c_gtk_grid_set_column_spacing;
	guint function(GtkGrid* grid) c_gtk_grid_get_column_spacing;

	// gtk.Alignment

	GtkWidget* function(gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale) c_gtk_alignment_new;
	void function(GtkAlignment* alignment, gfloat xalign, gfloat yalign, gfloat xscale, gfloat yscale) c_gtk_alignment_set;
	void function(GtkAlignment* alignment, guint* paddingTop, guint* paddingBottom, guint* paddingLeft, guint* paddingRight) c_gtk_alignment_get_padding;
	void function(GtkAlignment* alignment, guint paddingTop, guint paddingBottom, guint paddingLeft, guint paddingRight) c_gtk_alignment_set_padding;

	// gtk.AspectFrame

	GtkWidget* function(gchar* label, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obeyChild) c_gtk_aspect_frame_new;
	void function(GtkAspectFrame* aspectFrame, gfloat xalign, gfloat yalign, gfloat ratio, gboolean obeyChild) c_gtk_aspect_frame_set;

	// gtk.Box

	GtkWidget* function(GtkOrientation orientation, gint spacing) c_gtk_box_new;
	void function(GtkBox* box, GtkWidget* child, gboolean expand, gboolean fill, guint padding) c_gtk_box_pack_start;
	void function(GtkBox* box, GtkWidget* child, gboolean expand, gboolean fill, guint padding) c_gtk_box_pack_end;
	gboolean function(GtkBox* box) c_gtk_box_get_homogeneous;
	void function(GtkBox* box, gboolean homogeneous) c_gtk_box_set_homogeneous;
	gint function(GtkBox* box) c_gtk_box_get_spacing;
	void function(GtkBox* box, gint spacing) c_gtk_box_set_spacing;
	void function(GtkBox* box, GtkWidget* child, gint position) c_gtk_box_reorder_child;
	void function(GtkBox* box, GtkWidget* child, gboolean* expand, gboolean* fill, guint* padding, GtkPackType* packType) c_gtk_box_query_child_packing;
	void function(GtkBox* box, GtkWidget* child, gboolean expand, gboolean fill, guint padding, GtkPackType packType) c_gtk_box_set_child_packing;

	// gtk.HBox

	GtkWidget* function(gboolean homogeneous, gint spacing) c_gtk_hbox_new;

	// gtk.VBox

	GtkWidget* function(gboolean homogeneous, gint spacing) c_gtk_vbox_new;

	// gtk.ButtonBox

	GtkWidget* function(GtkOrientation orientation) c_gtk_button_box_new;
	GtkButtonBoxStyle function(GtkButtonBox* widget) c_gtk_button_box_get_layout;
	gboolean function(GtkButtonBox* widget, GtkWidget* child) c_gtk_button_box_get_child_secondary;
	gboolean function(GtkButtonBox* widget, GtkWidget* child) c_gtk_button_box_get_child_non_homogeneous;
	void function(GtkButtonBox* widget, GtkButtonBoxStyle layoutStyle) c_gtk_button_box_set_layout;
	void function(GtkButtonBox* widget, GtkWidget* child, gboolean isSecondary) c_gtk_button_box_set_child_secondary;
	void function(GtkButtonBox* widget, GtkWidget* child, gboolean nonHomogeneous) c_gtk_button_box_set_child_non_homogeneous;

	// gtk.HButtonBox

	GtkWidget* function() c_gtk_hbutton_box_new;

	// gtk.VButtonBox

	GtkWidget* function() c_gtk_vbutton_box_new;

	// gtk.Fixed

	GtkWidget* function() c_gtk_fixed_new;
	void function(GtkFixed* fixed, GtkWidget* widget, gint x, gint y) c_gtk_fixed_put;
	void function(GtkFixed* fixed, GtkWidget* widget, gint x, gint y) c_gtk_fixed_move;

	// gtk.Paned

	GtkWidget* function(GtkOrientation orientation) c_gtk_paned_new;
	void function(GtkPaned* paned, GtkWidget* child) c_gtk_paned_add1;
	void function(GtkPaned* paned, GtkWidget* child) c_gtk_paned_add2;
	void function(GtkPaned* paned, GtkWidget* child, gboolean resize, gboolean shrink) c_gtk_paned_pack1;
	void function(GtkPaned* paned, GtkWidget* child, gboolean resize, gboolean shrink) c_gtk_paned_pack2;
	GtkWidget* function(GtkPaned* paned) c_gtk_paned_get_child1;
	GtkWidget* function(GtkPaned* paned) c_gtk_paned_get_child2;
	void function(GtkPaned* paned, gint position) c_gtk_paned_set_position;
	gint function(GtkPaned* paned) c_gtk_paned_get_position;
	GdkWindow* function(GtkPaned* paned) c_gtk_paned_get_handle_window;

	// gtk.HPaned

	GtkWidget* function() c_gtk_hpaned_new;

	// gtk.VPaned

	GtkWidget* function() c_gtk_vpaned_new;

	// gtk.Layout

	GtkWidget* function(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment) c_gtk_layout_new;
	void function(GtkLayout* layout, GtkWidget* childWidget, gint x, gint y) c_gtk_layout_put;
	void function(GtkLayout* layout, GtkWidget* childWidget, gint x, gint y) c_gtk_layout_move;
	void function(GtkLayout* layout, guint width, guint height) c_gtk_layout_set_size;
	void function(GtkLayout* layout, guint* width, guint* height) c_gtk_layout_get_size;
	GtkAdjustment* function(GtkLayout* layout) c_gtk_layout_get_hadjustment;
	GtkAdjustment* function(GtkLayout* layout) c_gtk_layout_get_vadjustment;
	void function(GtkLayout* layout, GtkAdjustment* adjustment) c_gtk_layout_set_hadjustment;
	void function(GtkLayout* layout, GtkAdjustment* adjustment) c_gtk_layout_set_vadjustment;
	GdkWindow* function(GtkLayout* layout) c_gtk_layout_get_bin_window;

	// gtk.Notebook

	GtkWidget* function() c_gtk_notebook_new;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel) c_gtk_notebook_append_page;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel) c_gtk_notebook_append_page_menu;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel) c_gtk_notebook_prepend_page;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel) c_gtk_notebook_prepend_page_menu;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, gint position) c_gtk_notebook_insert_page;
	gint function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel, GtkWidget* menuLabel, gint position) c_gtk_notebook_insert_page_menu;
	void function(GtkNotebook* notebook, gint pageNum) c_gtk_notebook_remove_page;
	gint function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_page_num;
	void function(GtkNotebook* notebook) c_gtk_notebook_next_page;
	void function(GtkNotebook* notebook) c_gtk_notebook_prev_page;
	void function(GtkNotebook* notebook, GtkWidget* child, gint position) c_gtk_notebook_reorder_child;
	void function(GtkNotebook* notebook, GtkPositionType pos) c_gtk_notebook_set_tab_pos;
	void function(GtkNotebook* notebook, gboolean showTabs) c_gtk_notebook_set_show_tabs;
	void function(GtkNotebook* notebook, gboolean showBorder) c_gtk_notebook_set_show_border;
	void function(GtkNotebook* notebook, gboolean scrollable) c_gtk_notebook_set_scrollable;
	void function(GtkNotebook* notebook) c_gtk_notebook_popup_enable;
	void function(GtkNotebook* notebook) c_gtk_notebook_popup_disable;
	gint function(GtkNotebook* notebook) c_gtk_notebook_get_current_page;
	GtkWidget* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_menu_label;
	GtkWidget* function(GtkNotebook* notebook, gint pageNum) c_gtk_notebook_get_nth_page;
	gint function(GtkNotebook* notebook) c_gtk_notebook_get_n_pages;
	GtkWidget* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_label;
	void function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* menuLabel) c_gtk_notebook_set_menu_label;
	void function(GtkNotebook* notebook, GtkWidget* child, gchar* menuText) c_gtk_notebook_set_menu_label_text;
	void function(GtkNotebook* notebook, GtkWidget* child, GtkWidget* tabLabel) c_gtk_notebook_set_tab_label;
	void function(GtkNotebook* notebook, GtkWidget* child, gchar* tabText) c_gtk_notebook_set_tab_label_text;
	void function(GtkNotebook* notebook, GtkWidget* child, gboolean reorderable) c_gtk_notebook_set_tab_reorderable;
	void function(GtkNotebook* notebook, GtkWidget* child, gboolean detachable) c_gtk_notebook_set_tab_detachable;
	gchar* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_menu_label_text;
	gboolean function(GtkNotebook* notebook) c_gtk_notebook_get_scrollable;
	gboolean function(GtkNotebook* notebook) c_gtk_notebook_get_show_border;
	gboolean function(GtkNotebook* notebook) c_gtk_notebook_get_show_tabs;
	gchar* function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_label_text;
	GtkPositionType function(GtkNotebook* notebook) c_gtk_notebook_get_tab_pos;
	gboolean function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_reorderable;
	gboolean function(GtkNotebook* notebook, GtkWidget* child) c_gtk_notebook_get_tab_detachable;
	guint16 function(GtkNotebook* notebook) c_gtk_notebook_get_tab_hborder;
	guint16 function(GtkNotebook* notebook) c_gtk_notebook_get_tab_vborder;
	void function(GtkNotebook* notebook, gint pageNum) c_gtk_notebook_set_current_page;
	void function(GtkNotebook* notebook, gchar* groupName) c_gtk_notebook_set_group_name;
	gchar* function(GtkNotebook* notebook) c_gtk_notebook_get_group_name;
	void function(GtkNotebook* notebook, GtkWidget* widget, GtkPackType packType) c_gtk_notebook_set_action_widget;
	GtkWidget* function(GtkNotebook* notebook, GtkPackType packType) c_gtk_notebook_get_action_widget;

	// gtk.Table

	GtkWidget* function(guint rows, guint columns, gboolean homogeneous) c_gtk_table_new;
	void function(GtkTable* table, guint rows, guint columns) c_gtk_table_resize;
	void function(GtkTable* table, guint* rows, guint* columns) c_gtk_table_get_size;
	void function(GtkTable* table, GtkWidget* child, guint leftAttach, guint rightAttach, guint topAttach, guint bottomAttach, GtkAttachOptions xoptions, GtkAttachOptions yoptions, guint xpadding, guint ypadding) c_gtk_table_attach;
	void function(GtkTable* table, GtkWidget* widget, guint leftAttach, guint rightAttach, guint topAttach, guint bottomAttach) c_gtk_table_attach_defaults;
	void function(GtkTable* table, guint row, guint spacing) c_gtk_table_set_row_spacing;
	void function(GtkTable* table, guint column, guint spacing) c_gtk_table_set_col_spacing;
	void function(GtkTable* table, guint spacing) c_gtk_table_set_row_spacings;
	void function(GtkTable* table, guint spacing) c_gtk_table_set_col_spacings;
	void function(GtkTable* table, gboolean homogeneous) c_gtk_table_set_homogeneous;
	guint function(GtkTable* table) c_gtk_table_get_default_row_spacing;
	gboolean function(GtkTable* table) c_gtk_table_get_homogeneous;
	guint function(GtkTable* table, guint row) c_gtk_table_get_row_spacing;
	guint function(GtkTable* table, guint column) c_gtk_table_get_col_spacing;
	guint function(GtkTable* table) c_gtk_table_get_default_col_spacing;

	// gtk.Expander

	GtkWidget* function(gchar* label) c_gtk_expander_new;
	GtkWidget* function(gchar* label) c_gtk_expander_new_with_mnemonic;
	void function(GtkExpander* expander, gboolean expanded) c_gtk_expander_set_expanded;
	gboolean function(GtkExpander* expander) c_gtk_expander_get_expanded;
	void function(GtkExpander* expander, gint spacing) c_gtk_expander_set_spacing;
	gint function(GtkExpander* expander) c_gtk_expander_get_spacing;
	void function(GtkExpander* expander, gchar* label) c_gtk_expander_set_label;
	gchar* function(GtkExpander* expander) c_gtk_expander_get_label;
	void function(GtkExpander* expander, gboolean useUnderline) c_gtk_expander_set_use_underline;
	gboolean function(GtkExpander* expander) c_gtk_expander_get_use_underline;
	void function(GtkExpander* expander, gboolean useMarkup) c_gtk_expander_set_use_markup;
	gboolean function(GtkExpander* expander) c_gtk_expander_get_use_markup;
	void function(GtkExpander* expander, GtkWidget* labelWidget) c_gtk_expander_set_label_widget;
	GtkWidget* function(GtkExpander* expander) c_gtk_expander_get_label_widget;
	void function(GtkExpander* expander, gboolean labelFill) c_gtk_expander_set_label_fill;
	gboolean function(GtkExpander* expander) c_gtk_expander_get_label_fill;
	void function(GtkExpander* expander, gboolean resizeToplevel) c_gtk_expander_set_resize_toplevel;
	gboolean function(GtkExpander* expander) c_gtk_expander_get_resize_toplevel;

	// gtk.Overlay

	GtkWidget* function() c_gtk_overlay_new;
	void function(GtkOverlay* overlay, GtkWidget* widget) c_gtk_overlay_add_overlay;

	// gtk.OrientableT


	// gtk.OrientableT

	GtkOrientation function(GtkOrientable* orientable) c_gtk_orientable_get_orientation;
	void function(GtkOrientable* orientable, GtkOrientation orientation) c_gtk_orientable_set_orientation;

	// gtk.Frame

	GtkWidget* function(gchar* label) c_gtk_frame_new;
	void function(GtkFrame* frame, gchar* label) c_gtk_frame_set_label;
	void function(GtkFrame* frame, GtkWidget* labelWidget) c_gtk_frame_set_label_widget;
	void function(GtkFrame* frame, gfloat xalign, gfloat yalign) c_gtk_frame_set_label_align;
	void function(GtkFrame* frame, GtkShadowType type) c_gtk_frame_set_shadow_type;
	gchar* function(GtkFrame* frame) c_gtk_frame_get_label;
	void function(GtkFrame* frame, gfloat* xalign, gfloat* yalign) c_gtk_frame_get_label_align;
	GtkWidget* function(GtkFrame* frame) c_gtk_frame_get_label_widget;
	GtkShadowType function(GtkFrame* frame) c_gtk_frame_get_shadow_type;

	// gtk.Separator

	GtkWidget* function(GtkOrientation orientation) c_gtk_separator_new;

	// gtk.HSeparator

	GtkWidget* function() c_gtk_hseparator_new;

	// gtk.VSeparator

	GtkWidget* function() c_gtk_vseparator_new;

	// gtk.Scrollbar

	GtkWidget* function(GtkOrientation orientation, GtkAdjustment* adjustment) c_gtk_scrollbar_new;

	// gtk.HScrollbar

	GtkWidget* function(GtkAdjustment* adjustment) c_gtk_hscrollbar_new;

	// gtk.VScrollbar

	GtkWidget* function(GtkAdjustment* adjustment) c_gtk_vscrollbar_new;

	// gtk.ScrolledWindow

	GtkWidget* function(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment) c_gtk_scrolled_window_new;
	GtkAdjustment* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_hadjustment;
	GtkAdjustment* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_vadjustment;
	GtkWidget* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_hscrollbar;
	GtkWidget* function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_vscrollbar;
	void function(GtkScrolledWindow* scrolledWindow, GtkPolicyType hscrollbarPolicy, GtkPolicyType vscrollbarPolicy) c_gtk_scrolled_window_set_policy;
	void function(GtkScrolledWindow* scrolledWindow, GtkWidget* child) c_gtk_scrolled_window_add_with_viewport;
	void function(GtkScrolledWindow* scrolledWindow, GtkCornerType windowPlacement) c_gtk_scrolled_window_set_placement;
	void function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_unset_placement;
	void function(GtkScrolledWindow* scrolledWindow, GtkShadowType type) c_gtk_scrolled_window_set_shadow_type;
	void function(GtkScrolledWindow* scrolledWindow, GtkAdjustment* hadjustment) c_gtk_scrolled_window_set_hadjustment;
	void function(GtkScrolledWindow* scrolledWindow, GtkAdjustment* vadjustment) c_gtk_scrolled_window_set_vadjustment;
	GtkCornerType function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_placement;
	void function(GtkScrolledWindow* scrolledWindow, GtkPolicyType* hscrollbarPolicy, GtkPolicyType* vscrollbarPolicy) c_gtk_scrolled_window_get_policy;
	GtkShadowType function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_shadow_type;
	gint function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_min_content_width;
	void function(GtkScrolledWindow* scrolledWindow, gint width) c_gtk_scrolled_window_set_min_content_width;
	gint function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_min_content_height;
	void function(GtkScrolledWindow* scrolledWindow, gint height) c_gtk_scrolled_window_set_min_content_height;
	void function(GtkScrolledWindow* scrolledWindow, gboolean kineticScrolling) c_gtk_scrolled_window_set_kinetic_scrolling;
	gboolean function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_kinetic_scrolling;
	void function(GtkScrolledWindow* scrolledWindow, gboolean captureButtonPress) c_gtk_scrolled_window_set_capture_button_press;
	gboolean function(GtkScrolledWindow* scrolledWindow) c_gtk_scrolled_window_get_capture_button_press;

	// gtk.ScrollableT


	// gtk.ScrollableT

	GtkAdjustment* function(GtkScrollable* scrollable) c_gtk_scrollable_get_hadjustment;
	void function(GtkScrollable* scrollable, GtkAdjustment* hadjustment) c_gtk_scrollable_set_hadjustment;
	GtkAdjustment* function(GtkScrollable* scrollable) c_gtk_scrollable_get_vadjustment;
	void function(GtkScrollable* scrollable, GtkAdjustment* vadjustment) c_gtk_scrollable_set_vadjustment;
	GtkScrollablePolicy function(GtkScrollable* scrollable) c_gtk_scrollable_get_hscroll_policy;
	void function(GtkScrollable* scrollable, GtkScrollablePolicy policy) c_gtk_scrollable_set_hscroll_policy;
	GtkScrollablePolicy function(GtkScrollable* scrollable) c_gtk_scrollable_get_vscroll_policy;
	void function(GtkScrollable* scrollable, GtkScrollablePolicy policy) c_gtk_scrollable_set_vscroll_policy;

	// gtk.PrintOperation

	GtkPrintOperation* function() c_gtk_print_operation_new;
	void function(GtkPrintOperation* op, gboolean allowAsync) c_gtk_print_operation_set_allow_async;
	void function(GtkPrintOperation* op, GError** error) c_gtk_print_operation_get_error;
	void function(GtkPrintOperation* op, GtkPageSetup* defaultPageSetup) c_gtk_print_operation_set_default_page_setup;
	GtkPageSetup* function(GtkPrintOperation* op) c_gtk_print_operation_get_default_page_setup;
	void function(GtkPrintOperation* op, GtkPrintSettings* printSettings) c_gtk_print_operation_set_print_settings;
	GtkPrintSettings* function(GtkPrintOperation* op) c_gtk_print_operation_get_print_settings;
	void function(GtkPrintOperation* op, gchar* jobName) c_gtk_print_operation_set_job_name;
	void function(GtkPrintOperation* op, gint nPages) c_gtk_print_operation_set_n_pages;
	gint function(GtkPrintOperation* op) c_gtk_print_operation_get_n_pages_to_print;
	void function(GtkPrintOperation* op, gint currentPage) c_gtk_print_operation_set_current_page;
	void function(GtkPrintOperation* op, gboolean fullPage) c_gtk_print_operation_set_use_full_page;
	void function(GtkPrintOperation* op, GtkUnit unit) c_gtk_print_operation_set_unit;
	void function(GtkPrintOperation* op, gchar* filename) c_gtk_print_operation_set_export_filename;
	void function(GtkPrintOperation* op, gboolean showProgress) c_gtk_print_operation_set_show_progress;
	void function(GtkPrintOperation* op, gboolean trackStatus) c_gtk_print_operation_set_track_print_status;
	void function(GtkPrintOperation* op, gchar* label) c_gtk_print_operation_set_custom_tab_label;
	GtkPrintOperationResult function(GtkPrintOperation* op, GtkPrintOperationAction action, GtkWindow* parent, GError** error) c_gtk_print_operation_run;
	void function(GtkPrintOperation* op) c_gtk_print_operation_cancel;
	void function(GtkPrintOperation* op) c_gtk_print_operation_draw_page_finish;
	void function(GtkPrintOperation* op) c_gtk_print_operation_set_defer_drawing;
	GtkPrintStatus function(GtkPrintOperation* op) c_gtk_print_operation_get_status;
	gchar* function(GtkPrintOperation* op) c_gtk_print_operation_get_status_string;
	gboolean function(GtkPrintOperation* op) c_gtk_print_operation_is_finished;
	void function(GtkPrintOperation* op, gboolean supportSelection) c_gtk_print_operation_set_support_selection;
	gboolean function(GtkPrintOperation* op) c_gtk_print_operation_get_support_selection;
	void function(GtkPrintOperation* op, gboolean hasSelection) c_gtk_print_operation_set_has_selection;
	gboolean function(GtkPrintOperation* op) c_gtk_print_operation_get_has_selection;
	void function(GtkPrintOperation* op, gboolean embed) c_gtk_print_operation_set_embed_page_setup;
	gboolean function(GtkPrintOperation* op) c_gtk_print_operation_get_embed_page_setup;
	GtkPageSetup* function(GtkWindow* parent, GtkPageSetup* pageSetup, GtkPrintSettings* settings) c_gtk_print_run_page_setup_dialog;
	void function(GtkWindow* parent, GtkPageSetup* pageSetup, GtkPrintSettings* settings, GtkPageSetupDoneFunc doneCb, void* data) c_gtk_print_run_page_setup_dialog_async;

	// gtk.PrintOperationPreviewT


	// gtk.PrintOperationPreviewT

	void function(GtkPrintOperationPreview* preview) c_gtk_print_operation_preview_end_preview;
	gboolean function(GtkPrintOperationPreview* preview, gint pageNr) c_gtk_print_operation_preview_is_selected;
	void function(GtkPrintOperationPreview* preview, gint pageNr) c_gtk_print_operation_preview_render_page;

	// gtk.PrintContext

	cairo_t* function(GtkPrintContext* context) c_gtk_print_context_get_cairo_context;
	void function(GtkPrintContext* context, cairo_t* cr, double dpiX, double dpiY) c_gtk_print_context_set_cairo_context;
	GtkPageSetup* function(GtkPrintContext* context) c_gtk_print_context_get_page_setup;
	gdouble function(GtkPrintContext* context) c_gtk_print_context_get_width;
	gdouble function(GtkPrintContext* context) c_gtk_print_context_get_height;
	gdouble function(GtkPrintContext* context) c_gtk_print_context_get_dpi_x;
	gdouble function(GtkPrintContext* context) c_gtk_print_context_get_dpi_y;
	PangoFontMap* function(GtkPrintContext* context) c_gtk_print_context_get_pango_fontmap;
	PangoContext* function(GtkPrintContext* context) c_gtk_print_context_create_pango_context;
	PangoLayout* function(GtkPrintContext* context) c_gtk_print_context_create_pango_layout;
	gboolean function(GtkPrintContext* context, gdouble* top, gdouble* bottom, gdouble* left, gdouble* right) c_gtk_print_context_get_hard_margins;

	// gtk.PrintSettings

	GtkPrintSettings* function() c_gtk_print_settings_new;
	GtkPrintSettings* function(GtkPrintSettings* other) c_gtk_print_settings_copy;
	gboolean function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_has_key;
	gchar* function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_get;
	void function(GtkPrintSettings* settings, gchar* key, gchar* value) c_gtk_print_settings_set;
	void function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_unset;
	void function(GtkPrintSettings* settings, GtkPrintSettingsFunc func, void* userData) c_gtk_print_settings_foreach;
	gboolean function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_get_bool;
	void function(GtkPrintSettings* settings, gchar* key, gboolean value) c_gtk_print_settings_set_bool;
	gdouble function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_get_double;
	gdouble function(GtkPrintSettings* settings, gchar* key, gdouble def) c_gtk_print_settings_get_double_with_default;
	void function(GtkPrintSettings* settings, gchar* key, gdouble value) c_gtk_print_settings_set_double;
	gdouble function(GtkPrintSettings* settings, gchar* key, GtkUnit unit) c_gtk_print_settings_get_length;
	void function(GtkPrintSettings* settings, gchar* key, gdouble value, GtkUnit unit) c_gtk_print_settings_set_length;
	gint function(GtkPrintSettings* settings, gchar* key) c_gtk_print_settings_get_int;
	gint function(GtkPrintSettings* settings, gchar* key, gint def) c_gtk_print_settings_get_int_with_default;
	void function(GtkPrintSettings* settings, gchar* key, gint value) c_gtk_print_settings_set_int;
	gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_printer;
	void function(GtkPrintSettings* settings, gchar* printer) c_gtk_print_settings_set_printer;
	GtkPageOrientation function(GtkPrintSettings* settings) c_gtk_print_settings_get_orientation;
	void function(GtkPrintSettings* settings, GtkPageOrientation orientation) c_gtk_print_settings_set_orientation;
	GtkPaperSize* function(GtkPrintSettings* settings) c_gtk_print_settings_get_paper_size;
	void function(GtkPrintSettings* settings, GtkPaperSize* paperSize) c_gtk_print_settings_set_paper_size;
	gdouble function(GtkPrintSettings* settings, GtkUnit unit) c_gtk_print_settings_get_paper_width;
	void function(GtkPrintSettings* settings, gdouble width, GtkUnit unit) c_gtk_print_settings_set_paper_width;
	gdouble function(GtkPrintSettings* settings, GtkUnit unit) c_gtk_print_settings_get_paper_height;
	void function(GtkPrintSettings* settings, gdouble height, GtkUnit unit) c_gtk_print_settings_set_paper_height;
	gboolean function(GtkPrintSettings* settings) c_gtk_print_settings_get_use_color;
	void function(GtkPrintSettings* settings, gboolean useColor) c_gtk_print_settings_set_use_color;
	gboolean function(GtkPrintSettings* settings) c_gtk_print_settings_get_collate;
	void function(GtkPrintSettings* settings, gboolean collate) c_gtk_print_settings_set_collate;
	gboolean function(GtkPrintSettings* settings) c_gtk_print_settings_get_reverse;
	void function(GtkPrintSettings* settings, gboolean reverse) c_gtk_print_settings_set_reverse;
	GtkPrintDuplex function(GtkPrintSettings* settings) c_gtk_print_settings_get_duplex;
	void function(GtkPrintSettings* settings, GtkPrintDuplex duplex) c_gtk_print_settings_set_duplex;
	GtkPrintQuality function(GtkPrintSettings* settings) c_gtk_print_settings_get_quality;
	void function(GtkPrintSettings* settings, GtkPrintQuality quality) c_gtk_print_settings_set_quality;
	gint function(GtkPrintSettings* settings) c_gtk_print_settings_get_n_copies;
	void function(GtkPrintSettings* settings, gint numCopies) c_gtk_print_settings_set_n_copies;
	gint function(GtkPrintSettings* settings) c_gtk_print_settings_get_number_up;
	void function(GtkPrintSettings* settings, gint numberUp) c_gtk_print_settings_set_number_up;
	GtkNumberUpLayout function(GtkPrintSettings* settings) c_gtk_print_settings_get_number_up_layout;
	void function(GtkPrintSettings* settings, GtkNumberUpLayout numberUpLayout) c_gtk_print_settings_set_number_up_layout;
	gint function(GtkPrintSettings* settings) c_gtk_print_settings_get_resolution;
	void function(GtkPrintSettings* settings, gint resolution) c_gtk_print_settings_set_resolution;
	void function(GtkPrintSettings* settings, gint resolutionX, gint resolutionY) c_gtk_print_settings_set_resolution_xy;
	gint function(GtkPrintSettings* settings) c_gtk_print_settings_get_resolution_x;
	gint function(GtkPrintSettings* settings) c_gtk_print_settings_get_resolution_y;
	gdouble function(GtkPrintSettings* settings) c_gtk_print_settings_get_printer_lpi;
	void function(GtkPrintSettings* settings, gdouble lpi) c_gtk_print_settings_set_printer_lpi;
	gdouble function(GtkPrintSettings* settings) c_gtk_print_settings_get_scale;
	void function(GtkPrintSettings* settings, gdouble scale) c_gtk_print_settings_set_scale;
	GtkPrintPages function(GtkPrintSettings* settings) c_gtk_print_settings_get_print_pages;
	void function(GtkPrintSettings* settings, GtkPrintPages pages) c_gtk_print_settings_set_print_pages;
	GtkPageRange* function(GtkPrintSettings* settings, gint* numRanges) c_gtk_print_settings_get_page_ranges;
	void function(GtkPrintSettings* settings, GtkPageRange* pageRanges, gint numRanges) c_gtk_print_settings_set_page_ranges;
	GtkPageSet function(GtkPrintSettings* settings) c_gtk_print_settings_get_page_set;
	void function(GtkPrintSettings* settings, GtkPageSet pageSet) c_gtk_print_settings_set_page_set;
	gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_default_source;
	void function(GtkPrintSettings* settings, gchar* defaultSource) c_gtk_print_settings_set_default_source;
	gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_media_type;
	void function(GtkPrintSettings* settings, gchar* mediaType) c_gtk_print_settings_set_media_type;
	gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_dither;
	void function(GtkPrintSettings* settings, gchar* dither) c_gtk_print_settings_set_dither;
	gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_finishings;
	void function(GtkPrintSettings* settings, gchar* finishings) c_gtk_print_settings_set_finishings;
	gchar* function(GtkPrintSettings* settings) c_gtk_print_settings_get_output_bin;
	void function(GtkPrintSettings* settings, gchar* outputBin) c_gtk_print_settings_set_output_bin;
	GtkPrintSettings* function(gchar* fileName, GError** error) c_gtk_print_settings_new_from_file;
	GtkPrintSettings* function(GKeyFile* keyFile, gchar* groupName, GError** error) c_gtk_print_settings_new_from_key_file;
	gboolean function(GtkPrintSettings* settings, gchar* fileName, GError** error) c_gtk_print_settings_load_file;
	gboolean function(GtkPrintSettings* settings, GKeyFile* keyFile, gchar* groupName, GError** error) c_gtk_print_settings_load_key_file;
	gboolean function(GtkPrintSettings* settings, gchar* fileName, GError** error) c_gtk_print_settings_to_file;
	void function(GtkPrintSettings* settings, GKeyFile* keyFile, gchar* groupName) c_gtk_print_settings_to_key_file;

	// gtk.PageSetup

	GtkPageSetup* function() c_gtk_page_setup_new;
	GtkPageSetup* function(GtkPageSetup* other) c_gtk_page_setup_copy;
	GtkPageOrientation function(GtkPageSetup* setup) c_gtk_page_setup_get_orientation;
	void function(GtkPageSetup* setup, GtkPageOrientation orientation) c_gtk_page_setup_set_orientation;
	GtkPaperSize* function(GtkPageSetup* setup) c_gtk_page_setup_get_paper_size;
	void function(GtkPageSetup* setup, GtkPaperSize* size) c_gtk_page_setup_set_paper_size;
	gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_top_margin;
	void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit) c_gtk_page_setup_set_top_margin;
	gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_bottom_margin;
	void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit) c_gtk_page_setup_set_bottom_margin;
	gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_left_margin;
	void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit) c_gtk_page_setup_set_left_margin;
	gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_right_margin;
	void function(GtkPageSetup* setup, gdouble margin, GtkUnit unit) c_gtk_page_setup_set_right_margin;
	void function(GtkPageSetup* setup, GtkPaperSize* size) c_gtk_page_setup_set_paper_size_and_default_margins;
	gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_paper_width;
	gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_paper_height;
	gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_page_width;
	gdouble function(GtkPageSetup* setup, GtkUnit unit) c_gtk_page_setup_get_page_height;
	GtkPageSetup* function(gchar* fileName, GError** error) c_gtk_page_setup_new_from_file;
	GtkPageSetup* function(GKeyFile* keyFile, gchar* groupName, GError** error) c_gtk_page_setup_new_from_key_file;
	gboolean function(GtkPageSetup* setup, char* fileName, GError** error) c_gtk_page_setup_load_file;
	gboolean function(GtkPageSetup* setup, GKeyFile* keyFile, gchar* groupName, GError** error) c_gtk_page_setup_load_key_file;
	gboolean function(GtkPageSetup* setup, char* fileName, GError** error) c_gtk_page_setup_to_file;
	void function(GtkPageSetup* setup, GKeyFile* keyFile, gchar* groupName) c_gtk_page_setup_to_key_file;

	// gtk.PaperSize

	GtkPaperSize* function(gchar* name) c_gtk_paper_size_new;
	GtkPaperSize* function(gchar* ppdName, gchar* ppdDisplayName, gdouble width, gdouble height) c_gtk_paper_size_new_from_ppd;
	GtkPaperSize* function(gchar* name, gchar* displayName, gdouble width, gdouble height, GtkUnit unit) c_gtk_paper_size_new_custom;
	GtkPaperSize* function(GtkPaperSize* other) c_gtk_paper_size_copy;
	void function(GtkPaperSize* size) c_gtk_paper_size_free;
	gboolean function(GtkPaperSize* size1, GtkPaperSize* size2) c_gtk_paper_size_is_equal;
	GList* function(gboolean includeCustom) c_gtk_paper_size_get_paper_sizes;
	gchar* function(GtkPaperSize* size) c_gtk_paper_size_get_name;
	gchar* function(GtkPaperSize* size) c_gtk_paper_size_get_display_name;
	gchar* function(GtkPaperSize* size) c_gtk_paper_size_get_ppd_name;
	gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_width;
	gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_height;
	gboolean function(GtkPaperSize* size) c_gtk_paper_size_is_custom;
	void function(GtkPaperSize* size, gdouble width, gdouble height, GtkUnit unit) c_gtk_paper_size_set_size;
	gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_top_margin;
	gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_bottom_margin;
	gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_left_margin;
	gdouble function(GtkPaperSize* size, GtkUnit unit) c_gtk_paper_size_get_default_right_margin;
	gchar* function() c_gtk_paper_size_get_default;
	GtkPaperSize* function(GKeyFile* keyFile, gchar* groupName, GError** error) c_gtk_paper_size_new_from_key_file;
	void function(GtkPaperSize* size, GKeyFile* keyFile, gchar* groupName) c_gtk_paper_size_to_key_file;

	// gtk.Printer

	GtkPrinter* function(gchar* name, GtkPrintBackend* backend, gboolean virtual) c_gtk_printer_new;
	GtkPrintBackend* function(GtkPrinter* printer) c_gtk_printer_get_backend;
	gchar* function(GtkPrinter* printer) c_gtk_printer_get_name;
	gchar* function(GtkPrinter* printer) c_gtk_printer_get_state_message;
	gchar* function(GtkPrinter* printer) c_gtk_printer_get_description;
	gchar* function(GtkPrinter* printer) c_gtk_printer_get_location;
	gchar* function(GtkPrinter* printer) c_gtk_printer_get_icon_name;
	gint function(GtkPrinter* printer) c_gtk_printer_get_job_count;
	gboolean function(GtkPrinter* printer) c_gtk_printer_is_active;
	gboolean function(GtkPrinter* printer) c_gtk_printer_is_paused;
	gboolean function(GtkPrinter* printer) c_gtk_printer_is_accepting_jobs;
	gboolean function(GtkPrinter* printer) c_gtk_printer_is_virtual;
	gboolean function(GtkPrinter* printer) c_gtk_printer_is_default;
	gboolean function(GtkPrinter* printer) c_gtk_printer_accepts_ps;
	gboolean function(GtkPrinter* printer) c_gtk_printer_accepts_pdf;
	GList* function(GtkPrinter* printer) c_gtk_printer_list_papers;
	gint function(GtkPrinter* a, GtkPrinter* b) c_gtk_printer_compare;
	gboolean function(GtkPrinter* printer) c_gtk_printer_has_details;
	void function(GtkPrinter* printer) c_gtk_printer_request_details;
	GtkPrintCapabilities function(GtkPrinter* printer) c_gtk_printer_get_capabilities;
	GtkPageSetup* function(GtkPrinter* printer) c_gtk_printer_get_default_page_size;
	gboolean function(GtkPrinter* printer, gdouble* top, gdouble* bottom, gdouble* left, gdouble* right) c_gtk_printer_get_hard_margins;
	void function(GtkPrinterFunc func, void* data, GDestroyNotify destroy, gboolean wait) c_gtk_enumerate_printers;

	// gtk.PrintJob

	GtkPrintJob* function(gchar* title, GtkPrinter* printer, GtkPrintSettings* settings, GtkPageSetup* pageSetup) c_gtk_print_job_new;
	GtkPrintSettings* function(GtkPrintJob* job) c_gtk_print_job_get_settings;
	GtkPrinter* function(GtkPrintJob* job) c_gtk_print_job_get_printer;
	gchar* function(GtkPrintJob* job) c_gtk_print_job_get_title;
	GtkPrintStatus function(GtkPrintJob* job) c_gtk_print_job_get_status;
	gboolean function(GtkPrintJob* job, gchar* filename, GError** error) c_gtk_print_job_set_source_file;
	cairo_surface_t* function(GtkPrintJob* job, GError** error) c_gtk_print_job_get_surface;
	void function(GtkPrintJob* job, GtkPrintJobCompleteFunc callback, void* userData, GDestroyNotify dnotify) c_gtk_print_job_send;
	void function(GtkPrintJob* job, gboolean trackStatus) c_gtk_print_job_set_track_print_status;
	gboolean function(GtkPrintJob* job) c_gtk_print_job_get_track_print_status;
	GtkPrintPages function(GtkPrintJob* job) c_gtk_print_job_get_pages;
	void function(GtkPrintJob* job, GtkPrintPages pages) c_gtk_print_job_set_pages;
	GtkPageRange* function(GtkPrintJob* job, gint* nRanges) c_gtk_print_job_get_page_ranges;
	void function(GtkPrintJob* job, GtkPageRange* ranges, gint nRanges) c_gtk_print_job_set_page_ranges;
	GtkPageSet function(GtkPrintJob* job) c_gtk_print_job_get_page_set;
	void function(GtkPrintJob* job, GtkPageSet pageSet) c_gtk_print_job_set_page_set;
	gint function(GtkPrintJob* job) c_gtk_print_job_get_num_copies;
	void function(GtkPrintJob* job, gint numCopies) c_gtk_print_job_set_num_copies;
	gdouble function(GtkPrintJob* job) c_gtk_print_job_get_scale;
	void function(GtkPrintJob* job, gdouble scale) c_gtk_print_job_set_scale;
	guint function(GtkPrintJob* job) c_gtk_print_job_get_n_up;
	void function(GtkPrintJob* job, guint nUp) c_gtk_print_job_set_n_up;
	GtkNumberUpLayout function(GtkPrintJob* job) c_gtk_print_job_get_n_up_layout;
	void function(GtkPrintJob* job, GtkNumberUpLayout layout) c_gtk_print_job_set_n_up_layout;
	gboolean function(GtkPrintJob* job) c_gtk_print_job_get_rotate;
	void function(GtkPrintJob* job, gboolean rotate) c_gtk_print_job_set_rotate;
	gboolean function(GtkPrintJob* job) c_gtk_print_job_get_collate;
	void function(GtkPrintJob* job, gboolean collate) c_gtk_print_job_set_collate;
	gboolean function(GtkPrintJob* job) c_gtk_print_job_get_reverse;
	void function(GtkPrintJob* job, gboolean reverse) c_gtk_print_job_set_reverse;

	// gtk.PrintUnixDialog

	GtkWidget* function(gchar* title, GtkWindow* parent) c_gtk_print_unix_dialog_new;
	void function(GtkPrintUnixDialog* dialog, GtkPageSetup* pageSetup) c_gtk_print_unix_dialog_set_page_setup;
	GtkPageSetup* function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_page_setup;
	void function(GtkPrintUnixDialog* dialog, gint currentPage) c_gtk_print_unix_dialog_set_current_page;
	gint function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_current_page;
	void function(GtkPrintUnixDialog* dialog, GtkPrintSettings* settings) c_gtk_print_unix_dialog_set_settings;
	GtkPrintSettings* function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_settings;
	GtkPrinter* function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_selected_printer;
	void function(GtkPrintUnixDialog* dialog, GtkWidget* child, GtkWidget* tabLabel) c_gtk_print_unix_dialog_add_custom_tab;
	void function(GtkPrintUnixDialog* dialog, gboolean supportSelection) c_gtk_print_unix_dialog_set_support_selection;
	gboolean function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_support_selection;
	void function(GtkPrintUnixDialog* dialog, gboolean hasSelection) c_gtk_print_unix_dialog_set_has_selection;
	gboolean function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_has_selection;
	void function(GtkPrintUnixDialog* dialog, gboolean embed) c_gtk_print_unix_dialog_set_embed_page_setup;
	gboolean function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_embed_page_setup;
	gboolean function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_page_setup_set;
	void function(GtkPrintUnixDialog* dialog, GtkPrintCapabilities capabilities) c_gtk_print_unix_dialog_set_manual_capabilities;
	GtkPrintCapabilities function(GtkPrintUnixDialog* dialog) c_gtk_print_unix_dialog_get_manual_capabilities;

	// gtk.PageSetupUnixDialog

	GtkWidget* function(gchar* title, GtkWindow* parent) c_gtk_page_setup_unix_dialog_new;
	void function(GtkPageSetupUnixDialog* dialog, GtkPageSetup* pageSetup) c_gtk_page_setup_unix_dialog_set_page_setup;
	GtkPageSetup* function(GtkPageSetupUnixDialog* dialog) c_gtk_page_setup_unix_dialog_get_page_setup;
	void function(GtkPageSetupUnixDialog* dialog, GtkPrintSettings* printSettings) c_gtk_page_setup_unix_dialog_set_print_settings;
	GtkPrintSettings* function(GtkPageSetupUnixDialog* dialog) c_gtk_page_setup_unix_dialog_get_print_settings;

	// gtk.Adjustment

	GtkAdjustment* function(gdouble value, gdouble lower, gdouble upper, gdouble stepIncrement, gdouble pageIncrement, gdouble pageSize) c_gtk_adjustment_new;
	gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_value;
	void function(GtkAdjustment* adjustment, gdouble value) c_gtk_adjustment_set_value;
	void function(GtkAdjustment* adjustment, gdouble lower, gdouble upper) c_gtk_adjustment_clamp_page;
	void function(GtkAdjustment* adjustment) c_gtk_adjustment_changed;
	void function(GtkAdjustment* adjustment) c_gtk_adjustment_value_changed;
	void function(GtkAdjustment* adjustment, gdouble value, gdouble lower, gdouble upper, gdouble stepIncrement, gdouble pageIncrement, gdouble pageSize) c_gtk_adjustment_configure;
	gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_lower;
	gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_page_increment;
	gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_page_size;
	gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_step_increment;
	gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_minimum_increment;
	gdouble function(GtkAdjustment* adjustment) c_gtk_adjustment_get_upper;
	void function(GtkAdjustment* adjustment, gdouble lower) c_gtk_adjustment_set_lower;
	void function(GtkAdjustment* adjustment, gdouble pageIncrement) c_gtk_adjustment_set_page_increment;
	void function(GtkAdjustment* adjustment, gdouble pageSize) c_gtk_adjustment_set_page_size;
	void function(GtkAdjustment* adjustment, gdouble stepIncrement) c_gtk_adjustment_set_step_increment;
	void function(GtkAdjustment* adjustment, gdouble upper) c_gtk_adjustment_set_upper;

	// gtk.Arrow

	GtkWidget* function(GtkArrowType arrowType, GtkShadowType shadowType) c_gtk_arrow_new;
	void function(GtkArrow* arrow, GtkArrowType arrowType, GtkShadowType shadowType) c_gtk_arrow_set;

	// gtk.Calendar

	GtkWidget* function() c_gtk_calendar_new;
	void function(GtkCalendar* calendar, guint month, guint year) c_gtk_calendar_select_month;
	void function(GtkCalendar* calendar, guint day) c_gtk_calendar_select_day;
	void function(GtkCalendar* calendar, guint day) c_gtk_calendar_mark_day;
	void function(GtkCalendar* calendar, guint day) c_gtk_calendar_unmark_day;
	gboolean function(GtkCalendar* calendar, guint day) c_gtk_calendar_get_day_is_marked;
	void function(GtkCalendar* calendar) c_gtk_calendar_clear_marks;
	GtkCalendarDisplayOptions function(GtkCalendar* calendar) c_gtk_calendar_get_display_options;
	void function(GtkCalendar* calendar, GtkCalendarDisplayOptions flags) c_gtk_calendar_set_display_options;
	void function(GtkCalendar* calendar, guint* year, guint* month, guint* day) c_gtk_calendar_get_date;
	void function(GtkCalendar* calendar, GtkCalendarDetailFunc func, void* data, GDestroyNotify destroy) c_gtk_calendar_set_detail_func;
	gint function(GtkCalendar* calendar) c_gtk_calendar_get_detail_width_chars;
	void function(GtkCalendar* calendar, gint chars) c_gtk_calendar_set_detail_width_chars;
	gint function(GtkCalendar* calendar) c_gtk_calendar_get_detail_height_rows;
	void function(GtkCalendar* calendar, gint rows) c_gtk_calendar_set_detail_height_rows;

	// gtk.DrawingArea

	GtkWidget* function() c_gtk_drawing_area_new;

	// gtk.EventBox

	GtkWidget* function() c_gtk_event_box_new;
	void function(GtkEventBox* eventBox, gboolean aboveChild) c_gtk_event_box_set_above_child;
	gboolean function(GtkEventBox* eventBox) c_gtk_event_box_get_above_child;
	void function(GtkEventBox* eventBox, gboolean visibleWindow) c_gtk_event_box_set_visible_window;
	gboolean function(GtkEventBox* eventBox) c_gtk_event_box_get_visible_window;

	// gtk.HandleBox

	GtkWidget* function() c_gtk_handle_box_new;
	void function(GtkHandleBox* handleBox, GtkShadowType type) c_gtk_handle_box_set_shadow_type;
	void function(GtkHandleBox* handleBox, GtkPositionType position) c_gtk_handle_box_set_handle_position;
	void function(GtkHandleBox* handleBox, GtkPositionType edge) c_gtk_handle_box_set_snap_edge;
	GtkPositionType function(GtkHandleBox* handleBox) c_gtk_handle_box_get_handle_position;
	GtkShadowType function(GtkHandleBox* handleBox) c_gtk_handle_box_get_shadow_type;
	GtkPositionType function(GtkHandleBox* handleBox) c_gtk_handle_box_get_snap_edge;
	gboolean function(GtkHandleBox* handleBox) c_gtk_handle_box_get_child_detached;

	// gtk.IMContextSimple

	GtkIMContext* function() c_gtk_im_context_simple_new;
	void function(GtkIMContextSimple* contextSimple, guint16* data, gint maxSeqLen, gint nSeqs) c_gtk_im_context_simple_add_table;

	// gtk.IMMulticontext

	GtkIMContext* function() c_gtk_im_multicontext_new;
	void function(GtkIMMulticontext* context, GtkMenuShell* menushell) c_gtk_im_multicontext_append_menuitems;
	char* function(GtkIMMulticontext* context) c_gtk_im_multicontext_get_context_id;
	void function(GtkIMMulticontext* context, char* contextId) c_gtk_im_multicontext_set_context_id;

	// gtk.SizeGroup

	GtkSizeGroup* function(GtkSizeGroupMode mode) c_gtk_size_group_new;
	void function(GtkSizeGroup* sizeGroup, GtkSizeGroupMode mode) c_gtk_size_group_set_mode;
	GtkSizeGroupMode function(GtkSizeGroup* sizeGroup) c_gtk_size_group_get_mode;
	void function(GtkSizeGroup* sizeGroup, gboolean ignoreHidden) c_gtk_size_group_set_ignore_hidden;
	gboolean function(GtkSizeGroup* sizeGroup) c_gtk_size_group_get_ignore_hidden;
	void function(GtkSizeGroup* sizeGroup, GtkWidget* widget) c_gtk_size_group_add_widget;
	void function(GtkSizeGroup* sizeGroup, GtkWidget* widget) c_gtk_size_group_remove_widget;
	GSList* function(GtkSizeGroup* sizeGroup) c_gtk_size_group_get_widgets;

	// gtk.Tooltip

	void function(GtkTooltip* tooltip, gchar* markup) c_gtk_tooltip_set_markup;
	void function(GtkTooltip* tooltip, gchar* text) c_gtk_tooltip_set_text;
	void function(GtkTooltip* tooltip, GdkPixbuf* pixbuf) c_gtk_tooltip_set_icon;
	void function(GtkTooltip* tooltip, gchar* stockId, GtkIconSize size) c_gtk_tooltip_set_icon_from_stock;
	void function(GtkTooltip* tooltip, gchar* iconName, GtkIconSize size) c_gtk_tooltip_set_icon_from_icon_name;
	void function(GtkTooltip* tooltip, GIcon* gicon, GtkIconSize size) c_gtk_tooltip_set_icon_from_gicon;
	void function(GtkTooltip* tooltip, GtkWidget* customWidget) c_gtk_tooltip_set_custom;
	void function(GdkDisplay* display) c_gtk_tooltip_trigger_tooltip_query;
	void function(GtkTooltip* tooltip, GdkRectangle* rect) c_gtk_tooltip_set_tip_area;

	// gtk.Viewport

	GtkWidget* function(GtkAdjustment* hadjustment, GtkAdjustment* vadjustment) c_gtk_viewport_new;
	GtkAdjustment* function(GtkViewport* viewport) c_gtk_viewport_get_hadjustment;
	GtkAdjustment* function(GtkViewport* viewport) c_gtk_viewport_get_vadjustment;
	void function(GtkViewport* viewport, GtkAdjustment* adjustment) c_gtk_viewport_set_hadjustment;
	void function(GtkViewport* viewport, GtkAdjustment* adjustment) c_gtk_viewport_set_vadjustment;
	void function(GtkViewport* viewport, GtkShadowType type) c_gtk_viewport_set_shadow_type;
	GtkShadowType function(GtkViewport* viewport) c_gtk_viewport_get_shadow_type;
	GdkWindow* function(GtkViewport* viewport) c_gtk_viewport_get_bin_window;
	GdkWindow* function(GtkViewport* viewport) c_gtk_viewport_get_view_window;

	// gtk.Accessible

	void function(GtkAccessible* accessible) c_gtk_accessible_connect_widget_destroyed;
	GtkWidget* function(GtkAccessible* accessible) c_gtk_accessible_get_widget;
	void function(GtkAccessible* accessible, GtkWidget* widget) c_gtk_accessible_set_widget;

	// gtk.Widget

	GtkWidget* function(GType type, gchar* firstPropertyName, ... ) c_gtk_widget_new;
	void function(GtkWidget* widget) c_gtk_widget_destroy;
	gboolean function(GtkWidget* widget) c_gtk_widget_in_destruction;
	void function(GtkWidget* widget, GtkWidget** widgetPointer) c_gtk_widget_destroyed;
	void function(GtkWidget* widget) c_gtk_widget_unparent;
	void function(GtkWidget* widget) c_gtk_widget_show;
	void function(GtkWidget* widget) c_gtk_widget_show_now;
	void function(GtkWidget* widget) c_gtk_widget_hide;
	void function(GtkWidget* widget) c_gtk_widget_show_all;
	void function(GtkWidget* widget) c_gtk_widget_map;
	void function(GtkWidget* widget) c_gtk_widget_unmap;
	void function(GtkWidget* widget) c_gtk_widget_realize;
	void function(GtkWidget* widget) c_gtk_widget_unrealize;
	void function(GtkWidget* widget, cairo_t* cr) c_gtk_widget_draw;
	void function(GtkWidget* widget) c_gtk_widget_queue_draw;
	void function(GtkWidget* widget) c_gtk_widget_queue_resize;
	void function(GtkWidget* widget) c_gtk_widget_queue_resize_no_redraw;
	void function(GtkWidget* widget, GtkRequisition* requisition) c_gtk_widget_size_request;
	void function(GtkWidget* widget, GtkRequisition* requisition) c_gtk_widget_get_child_requisition;
	void function(GtkWidget* widget, GtkAllocation* allocation) c_gtk_widget_size_allocate;
	void function(GtkWidget* widget, gchar* accelSignal, GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods, GtkAccelFlags accelFlags) c_gtk_widget_add_accelerator;
	gboolean function(GtkWidget* widget, GtkAccelGroup* accelGroup, guint accelKey, GdkModifierType accelMods) c_gtk_widget_remove_accelerator;
	void function(GtkWidget* widget, gchar* accelPath, GtkAccelGroup* accelGroup) c_gtk_widget_set_accel_path;
	GList* function(GtkWidget* widget) c_gtk_widget_list_accel_closures;
	gboolean function(GtkWidget* widget, guint signalId) c_gtk_widget_can_activate_accel;
	gboolean function(GtkWidget* widget, GdkEvent* event) c_gtk_widget_event;
	gboolean function(GtkWidget* widget) c_gtk_widget_activate;
	void function(GtkWidget* widget, GtkWidget* newParent) c_gtk_widget_reparent;
	gboolean function(GtkWidget* widget, GdkRectangle* area, GdkRectangle* intersection) c_gtk_widget_intersect;
	gboolean function(GtkWidget* widget) c_gtk_widget_is_focus;
	void function(GtkWidget* widget) c_gtk_widget_grab_focus;
	void function(GtkWidget* widget) c_gtk_widget_grab_default;
	void function(GtkWidget* widget, gchar* name) c_gtk_widget_set_name;
	gchar* function(GtkWidget* widget) c_gtk_widget_get_name;
	void function(GtkWidget* widget, GtkStateType state) c_gtk_widget_set_state;
	void function(GtkWidget* widget, gboolean sensitive) c_gtk_widget_set_sensitive;
	void function(GtkWidget* widget, GtkWidget* parent) c_gtk_widget_set_parent;
	void function(GtkWidget* widget, GdkWindow* parentWindow) c_gtk_widget_set_parent_window;
	GdkWindow* function(GtkWidget* widget) c_gtk_widget_get_parent_window;
	void function(GtkWidget* widget, gint events) c_gtk_widget_set_events;
	gint function(GtkWidget* widget) c_gtk_widget_get_events;
	void function(GtkWidget* widget, gint events) c_gtk_widget_add_events;
	void function(GtkWidget* widget, GdkDevice* device, GdkEventMask events) c_gtk_widget_set_device_events;
	GdkEventMask function(GtkWidget* widget, GdkDevice* device) c_gtk_widget_get_device_events;
	void function(GtkWidget* widget, GdkDevice* device, GdkEventMask events) c_gtk_widget_add_device_events;
	void function(GtkWidget* widget, GdkDevice* device, gboolean enabled) c_gtk_widget_set_device_enabled;
	gboolean function(GtkWidget* widget, GdkDevice* device) c_gtk_widget_get_device_enabled;
	GtkWidget* function(GtkWidget* widget) c_gtk_widget_get_toplevel;
	GtkWidget* function(GtkWidget* widget, GType widgetType) c_gtk_widget_get_ancestor;
	GdkVisual* function(GtkWidget* widget) c_gtk_widget_get_visual;
	void function(GtkWidget* widget, GdkVisual* visual) c_gtk_widget_set_visual;
	void function(GtkWidget* widget, gint* x, gint* y) c_gtk_widget_get_pointer;
	gboolean function(GtkWidget* widget, GtkWidget* ancestor) c_gtk_widget_is_ancestor;
	gboolean function(GtkWidget* srcWidget, GtkWidget* destWidget, gint srcX, gint srcY, gint* destX, gint* destY) c_gtk_widget_translate_coordinates;
	gboolean function(GtkWidget* widget) c_gtk_widget_hide_on_delete;
	void function(GtkWidget* widget, GtkStyle* style) c_gtk_widget_set_style;
	void function(GtkWidget* widget) c_gtk_widget_ensure_style;
	GtkStyle* function(GtkWidget* widget) c_gtk_widget_get_style;
	void function(GtkWidget* widget) c_gtk_widget_reset_rc_styles;
	GtkStyle* function() c_gtk_widget_get_default_style;
	void function(GtkWidget* widget, GtkTextDirection dir) c_gtk_widget_set_direction;
	GtkTextDirection function(GtkWidget* widget) c_gtk_widget_get_direction;
	void function(GtkTextDirection dir) c_gtk_widget_set_default_direction;
	GtkTextDirection function() c_gtk_widget_get_default_direction;
	void function(GtkWidget* widget, cairo_region_t* region) c_gtk_widget_shape_combine_region;
	void function(GtkWidget* widget, cairo_region_t* region) c_gtk_widget_input_shape_combine_region;
	void function(GtkWidget* widget, guint* pathLength, gchar** path, gchar** pathReversed) c_gtk_widget_path;
	void function(GtkWidget* widget, guint* pathLength, gchar** path, gchar** pathReversed) c_gtk_widget_class_path;
	gchar* function(GtkWidget* widget) c_gtk_widget_get_composite_name;
	void function(GtkWidget* widget, GtkStateFlags state, GdkRGBA* color) c_gtk_widget_override_background_color;
	void function(GtkWidget* widget, GtkStateFlags state, GdkRGBA* color) c_gtk_widget_override_color;
	void function(GtkWidget* widget, PangoFontDescription* fontDesc) c_gtk_widget_override_font;
	void function(GtkWidget* widget, gchar* name, GdkRGBA* color) c_gtk_widget_override_symbolic_color;
	void function(GtkWidget* widget, GdkRGBA* cursor, GdkRGBA* secondaryCursor) c_gtk_widget_override_cursor;
	void function(GtkWidget* widget, GtkRcStyle* style) c_gtk_widget_modify_style;
	GtkRcStyle* function(GtkWidget* widget) c_gtk_widget_get_modifier_style;
	void function(GtkWidget* widget, GtkStateType state, GdkColor* color) c_gtk_widget_modify_fg;
	void function(GtkWidget* widget, GtkStateType state, GdkColor* color) c_gtk_widget_modify_bg;
	void function(GtkWidget* widget, GtkStateType state, GdkColor* color) c_gtk_widget_modify_text;
	void function(GtkWidget* widget, GtkStateType state, GdkColor* color) c_gtk_widget_modify_base;
	void function(GtkWidget* widget, PangoFontDescription* fontDesc) c_gtk_widget_modify_font;
	void function(GtkWidget* widget, GdkColor* primary, GdkColor* secondary) c_gtk_widget_modify_cursor;
	PangoContext* function(GtkWidget* widget) c_gtk_widget_create_pango_context;
	PangoContext* function(GtkWidget* widget) c_gtk_widget_get_pango_context;
	PangoLayout* function(GtkWidget* widget, gchar* text) c_gtk_widget_create_pango_layout;
	GdkPixbuf* function(GtkWidget* widget, gchar* stockId, GtkIconSize size, gchar* detail) c_gtk_widget_render_icon;
	GdkPixbuf* function(GtkWidget* widget, gchar* stockId, GtkIconSize size) c_gtk_widget_render_icon_pixbuf;
	void function() c_gtk_widget_pop_composite_child;
	void function() c_gtk_widget_push_composite_child;
	void function(GtkWidget* widget, gint x, gint y, gint width, gint height) c_gtk_widget_queue_draw_area;
	void function(GtkWidget* widget, cairo_region_t* region) c_gtk_widget_queue_draw_region;
	void function(GtkWidget* widget, gboolean appPaintable) c_gtk_widget_set_app_paintable;
	void function(GtkWidget* widget, gboolean doubleBuffered) c_gtk_widget_set_double_buffered;
	void function(GtkWidget* widget, gboolean redrawOnAllocate) c_gtk_widget_set_redraw_on_allocate;
	void function(GtkWidget* widget, gchar* name) c_gtk_widget_set_composite_name;
	gboolean function(GtkWidget* widget, gboolean groupCycling) c_gtk_widget_mnemonic_activate;
	void function(GtkWidgetClass* klass, GParamSpec* pspec) c_gtk_widget_class_install_style_property;
	void function(GtkWidgetClass* klass, GParamSpec* pspec, GtkRcPropertyParser parser) c_gtk_widget_class_install_style_property_parser;
	GParamSpec* function(GtkWidgetClass* klass, gchar* propertyName) c_gtk_widget_class_find_style_property;
	GParamSpec** function(GtkWidgetClass* klass, guint* nProperties) c_gtk_widget_class_list_style_properties;
	cairo_region_t* function(GtkWidget* widget, cairo_region_t* region) c_gtk_widget_region_intersect;
	gint function(GtkWidget* widget, GdkEvent* event) c_gtk_widget_send_expose;
	gboolean function(GtkWidget* widget, GdkEvent* event) c_gtk_widget_send_focus_change;
	void function(GtkWidget* widget, gchar* firstPropertyName, ... ) c_gtk_widget_style_get;
	void function(GtkWidget* widget, gchar* propertyName, GValue* value) c_gtk_widget_style_get_property;
	void function(GtkWidget* widget, gchar* firstPropertyName, va_list varArgs) c_gtk_widget_style_get_valist;
	void function(GtkWidget* widget) c_gtk_widget_style_attach;
	void function(GtkWidgetClass* widgetClass, GType type) c_gtk_widget_class_set_accessible_type;
	void function(GtkWidgetClass* widgetClass, AtkRole role) c_gtk_widget_class_set_accessible_role;
	AtkObject* function(GtkWidget* widget) c_gtk_widget_get_accessible;
	gboolean function(GtkWidget* widget, GtkDirectionType direction) c_gtk_widget_child_focus;
	void function(GtkWidget* widget, gchar* childProperty) c_gtk_widget_child_notify;
	void function(GtkWidget* widget) c_gtk_widget_freeze_child_notify;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_child_visible;
	GtkWidget* function(GtkWidget* widget) c_gtk_widget_get_parent;
	GtkSettings* function(GtkWidget* widget) c_gtk_widget_get_settings;
	GtkClipboard* function(GtkWidget* widget, GdkAtom selection) c_gtk_widget_get_clipboard;
	GdkDisplay* function(GtkWidget* widget) c_gtk_widget_get_display;
	GdkWindow* function(GtkWidget* widget) c_gtk_widget_get_root_window;
	GdkScreen* function(GtkWidget* widget) c_gtk_widget_get_screen;
	gboolean function(GtkWidget* widget) c_gtk_widget_has_screen;
	void function(GtkWidget* widget, gint* width, gint* height) c_gtk_widget_get_size_request;
	void function(GtkWidget* widget, gboolean isVisible) c_gtk_widget_set_child_visible;
	void function(GtkWidget* widget, gint width, gint height) c_gtk_widget_set_size_request;
	void function(GtkWidget* widget) c_gtk_widget_thaw_child_notify;
	void function(GtkWidget* widget, gboolean noShowAll) c_gtk_widget_set_no_show_all;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_no_show_all;
	GList* function(GtkWidget* widget) c_gtk_widget_list_mnemonic_labels;
	void function(GtkWidget* widget, GtkWidget* label) c_gtk_widget_add_mnemonic_label;
	void function(GtkWidget* widget, GtkWidget* label) c_gtk_widget_remove_mnemonic_label;
	gboolean function(GtkWidget* widget) c_gtk_widget_is_composited;
	void function(GtkWidget* widget) c_gtk_widget_error_bell;
	gboolean function(GtkWidget* widget, GtkDirectionType direction) c_gtk_widget_keynav_failed;
	gchar* function(GtkWidget* widget) c_gtk_widget_get_tooltip_markup;
	void function(GtkWidget* widget, gchar* markup) c_gtk_widget_set_tooltip_markup;
	gchar* function(GtkWidget* widget) c_gtk_widget_get_tooltip_text;
	void function(GtkWidget* widget, gchar* text) c_gtk_widget_set_tooltip_text;
	GtkWindow* function(GtkWidget* widget) c_gtk_widget_get_tooltip_window;
	void function(GtkWidget* widget, GtkWindow* customWindow) c_gtk_widget_set_tooltip_window;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_has_tooltip;
	void function(GtkWidget* widget, gboolean hasTooltip) c_gtk_widget_set_has_tooltip;
	void function(GtkWidget* widget) c_gtk_widget_trigger_tooltip_query;
	GdkWindow* function(GtkWidget* widget) c_gtk_widget_get_window;
	gboolean function(cairo_t* cr, GdkWindow* window) c_gtk_cairo_should_draw_window;
	void function(cairo_t* cr, GtkWidget* widget, GdkWindow* window) c_gtk_cairo_transform_to_window;
	int function(GtkWidget* widget) c_gtk_widget_get_allocated_width;
	int function(GtkWidget* widget) c_gtk_widget_get_allocated_height;
	void function(GtkWidget* widget, GtkAllocation* allocation) c_gtk_widget_get_allocation;
	void function(GtkWidget* widget, GtkAllocation* allocation) c_gtk_widget_set_allocation;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_app_paintable;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_can_default;
	void function(GtkWidget* widget, gboolean canDefault) c_gtk_widget_set_can_default;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_can_focus;
	void function(GtkWidget* widget, gboolean canFocus) c_gtk_widget_set_can_focus;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_double_buffered;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_has_window;
	void function(GtkWidget* widget, gboolean hasWindow) c_gtk_widget_set_has_window;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_sensitive;
	gboolean function(GtkWidget* widget) c_gtk_widget_is_sensitive;
	GtkStateType function(GtkWidget* widget) c_gtk_widget_get_state;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_visible;
	void function(GtkWidget* widget, gboolean visible) c_gtk_widget_set_visible;
	void function(GtkWidget* widget, GtkStateFlags flags, gboolean clear) c_gtk_widget_set_state_flags;
	void function(GtkWidget* widget, GtkStateFlags flags) c_gtk_widget_unset_state_flags;
	GtkStateFlags function(GtkWidget* widget) c_gtk_widget_get_state_flags;
	gboolean function(GtkWidget* widget) c_gtk_widget_has_default;
	gboolean function(GtkWidget* widget) c_gtk_widget_has_focus;
	gboolean function(GtkWidget* widget) c_gtk_widget_has_visible_focus;
	gboolean function(GtkWidget* widget) c_gtk_widget_has_grab;
	gboolean function(GtkWidget* widget) c_gtk_widget_has_rc_style;
	gboolean function(GtkWidget* widget) c_gtk_widget_is_drawable;
	gboolean function(GtkWidget* widget) c_gtk_widget_is_toplevel;
	void function(GtkWidget* widget, GdkWindow* window) c_gtk_widget_set_window;
	void function(GtkWidget* widget, gboolean receivesDefault) c_gtk_widget_set_receives_default;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_receives_default;
	void function(GtkWidget* widget, gboolean supportMultidevice) c_gtk_widget_set_support_multidevice;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_support_multidevice;
	void function(GtkWidget* widget, gboolean realized) c_gtk_widget_set_realized;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_realized;
	void function(GtkWidget* widget, gboolean mapped) c_gtk_widget_set_mapped;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_mapped;
	void function(GtkWidget* widget, GtkRequisition* requisition) c_gtk_widget_get_requisition;
	gboolean function(GtkWidget* widget, GdkDevice* device) c_gtk_widget_device_is_shadowed;
	GdkModifierType function(GtkWidget* widget, GdkModifierIntent intent) c_gtk_widget_get_modifier_mask;
	void function(GtkWidget* widget, gchar* name, GActionGroup* group) c_gtk_widget_insert_action_group;
	GtkWidgetPath* function(GtkWidget* widget) c_gtk_widget_get_path;
	GtkStyleContext* function(GtkWidget* widget) c_gtk_widget_get_style_context;
	void function(GtkWidget* widget) c_gtk_widget_reset_style;
	void function(GtkWidget* widget, gint* minimumHeight, gint* naturalHeight) c_gtk_widget_get_preferred_height;
	void function(GtkWidget* widget, gint* minimumWidth, gint* naturalWidth) c_gtk_widget_get_preferred_width;
	void function(GtkWidget* widget, gint width, gint* minimumHeight, gint* naturalHeight) c_gtk_widget_get_preferred_height_for_width;
	void function(GtkWidget* widget, gint height, gint* minimumWidth, gint* naturalWidth) c_gtk_widget_get_preferred_width_for_height;
	GtkSizeRequestMode function(GtkWidget* widget) c_gtk_widget_get_request_mode;
	void function(GtkWidget* widget, GtkRequisition* minimumSize, GtkRequisition* naturalSize) c_gtk_widget_get_preferred_size;
	gint function(gint extraSpace, guint nRequestedSizes, GtkRequestedSize* sizes) c_gtk_distribute_natural_allocation;
	GtkAlign function(GtkWidget* widget) c_gtk_widget_get_halign;
	void function(GtkWidget* widget, GtkAlign alig) c_gtk_widget_set_halign;
	GtkAlign function(GtkWidget* widget) c_gtk_widget_get_valign;
	void function(GtkWidget* widget, GtkAlign alig) c_gtk_widget_set_valign;
	gint function(GtkWidget* widget) c_gtk_widget_get_margin_left;
	void function(GtkWidget* widget, gint margin) c_gtk_widget_set_margin_left;
	gint function(GtkWidget* widget) c_gtk_widget_get_margin_right;
	void function(GtkWidget* widget, gint margin) c_gtk_widget_set_margin_right;
	gint function(GtkWidget* widget) c_gtk_widget_get_margin_top;
	void function(GtkWidget* widget, gint margin) c_gtk_widget_set_margin_top;
	gint function(GtkWidget* widget) c_gtk_widget_get_margin_bottom;
	void function(GtkWidget* widget, gint margin) c_gtk_widget_set_margin_bottom;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_hexpand;
	void function(GtkWidget* widget, gboolean expand) c_gtk_widget_set_hexpand;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_hexpand_set;
	void function(GtkWidget* widget, gboolean set) c_gtk_widget_set_hexpand_set;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_vexpand;
	void function(GtkWidget* widget, gboolean expand) c_gtk_widget_set_vexpand;
	gboolean function(GtkWidget* widget) c_gtk_widget_get_vexpand_set;
	void function(GtkWidget* widget, gboolean set) c_gtk_widget_set_vexpand_set;
	void function(GtkWidget* widget) c_gtk_widget_queue_compute_expand;
	gboolean function(GtkWidget* widget, GtkOrientation orientation) c_gtk_widget_compute_expand;

	// gtk.Requisition

	GtkRequisition* function() c_gtk_requisition_new;
	GtkRequisition* function(GtkRequisition* requisition) c_gtk_requisition_copy;
	void function(GtkRequisition* requisition) c_gtk_requisition_free;

	// gtk.Container

	void function(GtkContainer* container, GtkWidget* widget) c_gtk_container_add;
	void function(GtkContainer* container, GtkWidget* widget) c_gtk_container_remove;
	void function(GtkContainer* container, GtkWidget* widget, gchar* firstPropName, ... ) c_gtk_container_add_with_properties;
	GtkResizeMode function(GtkContainer* container) c_gtk_container_get_resize_mode;
	void function(GtkContainer* container, GtkResizeMode resizeMode) c_gtk_container_set_resize_mode;
	void function(GtkContainer* container) c_gtk_container_check_resize;
	void function(GtkContainer* container, GtkCallback callback, void* callbackData) c_gtk_container_foreach;
	GList* function(GtkContainer* container) c_gtk_container_get_children;
	GtkWidgetPath* function(GtkContainer* container, GtkWidget* child) c_gtk_container_get_path_for_child;
	void function(GtkContainer* container, gboolean needsRedraws) c_gtk_container_set_reallocate_redraws;
	GtkWidget* function(GtkContainer* container) c_gtk_container_get_focus_child;
	void function(GtkContainer* container, GtkWidget* child) c_gtk_container_set_focus_child;
	GtkAdjustment* function(GtkContainer* container) c_gtk_container_get_focus_vadjustment;
	void function(GtkContainer* container, GtkAdjustment* adjustment) c_gtk_container_set_focus_vadjustment;
	GtkAdjustment* function(GtkContainer* container) c_gtk_container_get_focus_hadjustment;
	void function(GtkContainer* container, GtkAdjustment* adjustment) c_gtk_container_set_focus_hadjustment;
	void function(GtkContainer* container) c_gtk_container_resize_children;
	GType function(GtkContainer* container) c_gtk_container_child_type;
	void function(GtkContainer* container, GtkWidget* child, gchar* firstPropName, ... ) c_gtk_container_child_get;
	void function(GtkContainer* container, GtkWidget* child, gchar* firstPropName, ... ) c_gtk_container_child_set;
	void function(GtkContainer* container, GtkWidget* child, gchar* propertyName, GValue* value) c_gtk_container_child_get_property;
	void function(GtkContainer* container, GtkWidget* child, gchar* propertyName, GValue* value) c_gtk_container_child_set_property;
	void function(GtkContainer* container, GtkWidget* child, gchar* firstPropertyName, va_list varArgs) c_gtk_container_child_get_valist;
	void function(GtkContainer* container, GtkWidget* child, gchar* firstPropertyName, va_list varArgs) c_gtk_container_child_set_valist;
	void function(GtkContainer* container, GtkWidget* child, gchar* childProperty) c_gtk_container_child_notify;
	void function(GtkContainer* container, GtkCallback callback, void* callbackData) c_gtk_container_forall;
	guint function(GtkContainer* container) c_gtk_container_get_border_width;
	void function(GtkContainer* container, guint borderWidth) c_gtk_container_set_border_width;
	void function(GtkContainer* container, GtkWidget* child, cairo_t* cr) c_gtk_container_propagate_draw;
	gboolean function(GtkContainer* container, GList** focusableWidgets) c_gtk_container_get_focus_chain;
	void function(GtkContainer* container, GList* focusableWidgets) c_gtk_container_set_focus_chain;
	void function(GtkContainer* container) c_gtk_container_unset_focus_chain;
	GParamSpec* function(GObjectClass* cclass, gchar* propertyName) c_gtk_container_class_find_child_property;
	void function(GtkContainerClass* cclass, guint propertyId, GParamSpec* pspec) c_gtk_container_class_install_child_property;
	GParamSpec** function(GObjectClass* cclass, guint* nProperties) c_gtk_container_class_list_child_properties;
	void function(GtkContainerClass* klass) c_gtk_container_class_handle_border_width;

	// gtk.Bin

	GtkWidget* function(GtkBin* bin) c_gtk_bin_get_child;

	// gtk.MenuShell

	void function(GtkMenuShell* menuShell, GtkWidget* child) c_gtk_menu_shell_append;
	void function(GtkMenuShell* menuShell, GtkWidget* child) c_gtk_menu_shell_prepend;
	void function(GtkMenuShell* menuShell, GtkWidget* child, gint position) c_gtk_menu_shell_insert;
	void function(GtkMenuShell* menuShell) c_gtk_menu_shell_deactivate;
	void function(GtkMenuShell* menuShell, GtkWidget* menuItem) c_gtk_menu_shell_select_item;
	void function(GtkMenuShell* menuShell, gboolean searchSensitive) c_gtk_menu_shell_select_first;
	void function(GtkMenuShell* menuShell) c_gtk_menu_shell_deselect;
	void function(GtkMenuShell* menuShell, GtkWidget* menuItem, gboolean forceDeactivate) c_gtk_menu_shell_activate_item;
	void function(GtkMenuShell* menuShell) c_gtk_menu_shell_cancel;
	void function(GtkMenuShell* menuShell, gboolean takeFocus) c_gtk_menu_shell_set_take_focus;
	gboolean function(GtkMenuShell* menuShell) c_gtk_menu_shell_get_take_focus;
	GtkWidget* function(GtkMenuShell* menuShell) c_gtk_menu_shell_get_selected_item;
	GtkWidget* function(GtkMenuShell* menuShell) c_gtk_menu_shell_get_parent_shell;
	void function(GtkMenuShell* menuShell, GMenuModel* model, gchar* actionNamespace, gboolean withSeparators) c_gtk_menu_shell_bind_model;

	// gtk.Misc

	void function(GtkMisc* misc, gfloat xalign, gfloat yalign) c_gtk_misc_set_alignment;
	void function(GtkMisc* misc, gint xpad, gint ypad) c_gtk_misc_set_padding;
	void function(GtkMisc* misc, gfloat* xalign, gfloat* yalign) c_gtk_misc_get_alignment;
	void function(GtkMisc* misc, gint* xpad, gint* ypad) c_gtk_misc_get_padding;

	// gtk.Range

	gdouble function(GtkRange* range) c_gtk_range_get_fill_level;
	gboolean function(GtkRange* range) c_gtk_range_get_restrict_to_fill_level;
	gboolean function(GtkRange* range) c_gtk_range_get_show_fill_level;
	void function(GtkRange* range, gdouble fillLevel) c_gtk_range_set_fill_level;
	void function(GtkRange* range, gboolean restrictToFillLevel) c_gtk_range_set_restrict_to_fill_level;
	void function(GtkRange* range, gboolean showFillLevel) c_gtk_range_set_show_fill_level;
	GtkAdjustment* function(GtkRange* range) c_gtk_range_get_adjustment;
	void function(GtkRange* range, GtkAdjustment* adjustment) c_gtk_range_set_adjustment;
	gboolean function(GtkRange* range) c_gtk_range_get_inverted;
	void function(GtkRange* range, gboolean setting) c_gtk_range_set_inverted;
	gdouble function(GtkRange* range) c_gtk_range_get_value;
	void function(GtkRange* range, gdouble value) c_gtk_range_set_value;
	void function(GtkRange* range, gdouble step, gdouble page) c_gtk_range_set_increments;
	void function(GtkRange* range, gdouble min, gdouble max) c_gtk_range_set_range;
	gint function(GtkRange* range) c_gtk_range_get_round_digits;
	void function(GtkRange* range, gint roundDigits) c_gtk_range_set_round_digits;
	void function(GtkRange* range, GtkSensitivityType sensitivity) c_gtk_range_set_lower_stepper_sensitivity;
	GtkSensitivityType function(GtkRange* range) c_gtk_range_get_lower_stepper_sensitivity;
	void function(GtkRange* range, GtkSensitivityType sensitivity) c_gtk_range_set_upper_stepper_sensitivity;
	GtkSensitivityType function(GtkRange* range) c_gtk_range_get_upper_stepper_sensitivity;
	gboolean function(GtkRange* range) c_gtk_range_get_flippable;
	void function(GtkRange* range, gboolean flippable) c_gtk_range_set_flippable;
	gint function(GtkRange* range) c_gtk_range_get_min_slider_size;
	void function(GtkRange* range, GdkRectangle* rangeRect) c_gtk_range_get_range_rect;
	void function(GtkRange* range, gint* sliderStart, gint* sliderEnd) c_gtk_range_get_slider_range;
	gboolean function(GtkRange* range) c_gtk_range_get_slider_size_fixed;
	void function(GtkRange* range, gint minSize) c_gtk_range_set_min_slider_size;
	void function(GtkRange* range, gboolean sizeFixed) c_gtk_range_set_slider_size_fixed;

	// gtk.IMContext

	void function(GtkIMContext* context, GdkWindow* window) c_gtk_im_context_set_client_window;
	void function(GtkIMContext* context, gchar** str, PangoAttrList** attrs, gint* cursorPos) c_gtk_im_context_get_preedit_string;
	gboolean function(GtkIMContext* context, GdkEventKey* event) c_gtk_im_context_filter_keypress;
	void function(GtkIMContext* context) c_gtk_im_context_focus_in;
	void function(GtkIMContext* context) c_gtk_im_context_focus_out;
	void function(GtkIMContext* context) c_gtk_im_context_reset;
	void function(GtkIMContext* context, GdkRectangle* area) c_gtk_im_context_set_cursor_location;
	void function(GtkIMContext* context, gboolean usePreedit) c_gtk_im_context_set_use_preedit;
	void function(GtkIMContext* context, gchar* text, gint len, gint cursorIndex) c_gtk_im_context_set_surrounding;
	gboolean function(GtkIMContext* context, gchar** text, gint* cursorIndex) c_gtk_im_context_get_surrounding;
	gboolean function(GtkIMContext* context, gint offset, gint nChars) c_gtk_im_context_delete_surrounding;

	// gtk.Plug

	void function(GtkPlug* plug, gulong socketId) c_gtk_plug_construct;
	void function(GtkPlug* plug, GdkDisplay* display, gulong socketId) c_gtk_plug_construct_for_display;
	GtkWidget* function(gulong socketId) c_gtk_plug_new;
	GtkWidget* function(GdkDisplay* display, gulong socketId) c_gtk_plug_new_for_display;
	gulong function(GtkPlug* plug) c_gtk_plug_get_id;
	gboolean function(GtkPlug* plug) c_gtk_plug_get_embedded;
	GdkWindow* function(GtkPlug* plug) c_gtk_plug_get_socket_window;

	// gtk.Socket

	GtkWidget* function() c_gtk_socket_new;
	void function(GtkSocket* socket, gulong window) c_gtk_socket_add_id;
	gulong function(GtkSocket* socket) c_gtk_socket_get_id;
	GdkWindow* function(GtkSocket* socket) c_gtk_socket_get_plug_window;

	// gtk.RecentManager

	GtkRecentManager* function() c_gtk_recent_manager_new;
	GtkRecentManager* function() c_gtk_recent_manager_get_default;
	gboolean function(GtkRecentManager* manager, gchar* uri) c_gtk_recent_manager_add_item;
	gboolean function(GtkRecentManager* manager, gchar* uri, GtkRecentData* recentData) c_gtk_recent_manager_add_full;
	gboolean function(GtkRecentManager* manager, gchar* uri, GError** error) c_gtk_recent_manager_remove_item;
	GtkRecentInfo* function(GtkRecentManager* manager, gchar* uri, GError** error) c_gtk_recent_manager_lookup_item;
	gboolean function(GtkRecentManager* manager, gchar* uri) c_gtk_recent_manager_has_item;
	gboolean function(GtkRecentManager* manager, gchar* uri, gchar* newUri, GError** error) c_gtk_recent_manager_move_item;
	GList* function(GtkRecentManager* manager) c_gtk_recent_manager_get_items;
	gint function(GtkRecentManager* manager, GError** error) c_gtk_recent_manager_purge_items;

	// gtk.RecentInfo

	GtkRecentInfo* function(GtkRecentInfo* info) c_gtk_recent_info_ref;
	void function(GtkRecentInfo* info) c_gtk_recent_info_unref;
	gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_uri;
	gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_display_name;
	gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_description;
	gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_mime_type;
	time_t function(GtkRecentInfo* info) c_gtk_recent_info_get_added;
	time_t function(GtkRecentInfo* info) c_gtk_recent_info_get_modified;
	time_t function(GtkRecentInfo* info) c_gtk_recent_info_get_visited;
	gboolean function(GtkRecentInfo* info) c_gtk_recent_info_get_private_hint;
	gboolean function(GtkRecentInfo* info, gchar* appName, gchar** appExec, guint* count, time_t* time) c_gtk_recent_info_get_application_info;
	gchar** function(GtkRecentInfo* info, gsize* length) c_gtk_recent_info_get_applications;
	gchar* function(GtkRecentInfo* info) c_gtk_recent_info_last_application;
	gboolean function(GtkRecentInfo* info, gchar* appName) c_gtk_recent_info_has_application;
	GAppInfo* function(GtkRecentInfo* info, gchar* appName, GError** error) c_gtk_recent_info_create_app_info;
	gchar** function(GtkRecentInfo* info, gsize* length) c_gtk_recent_info_get_groups;
	gboolean function(GtkRecentInfo* info, gchar* groupName) c_gtk_recent_info_has_group;
	GdkPixbuf* function(GtkRecentInfo* info, gint size) c_gtk_recent_info_get_icon;
	GIcon* function(GtkRecentInfo* info) c_gtk_recent_info_get_gicon;
	gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_short_name;
	gchar* function(GtkRecentInfo* info) c_gtk_recent_info_get_uri_display;
	gint function(GtkRecentInfo* info) c_gtk_recent_info_get_age;
	gboolean function(GtkRecentInfo* info) c_gtk_recent_info_is_local;
	gboolean function(GtkRecentInfo* info) c_gtk_recent_info_exists;
	gboolean function(GtkRecentInfo* infoA, GtkRecentInfo* infoB) c_gtk_recent_info_match;

	// gtk.RecentChooserT


	// gtk.RecentChooserT

	void function(GtkRecentChooser* chooser, gboolean showPrivate) c_gtk_recent_chooser_set_show_private;
	gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_show_private;
	void function(GtkRecentChooser* chooser, gboolean showNotFound) c_gtk_recent_chooser_set_show_not_found;
	gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_show_not_found;
	void function(GtkRecentChooser* chooser, gboolean showIcons) c_gtk_recent_chooser_set_show_icons;
	gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_show_icons;
	void function(GtkRecentChooser* chooser, gboolean selectMultiple) c_gtk_recent_chooser_set_select_multiple;
	gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_select_multiple;
	void function(GtkRecentChooser* chooser, gboolean localOnly) c_gtk_recent_chooser_set_local_only;
	gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_local_only;
	void function(GtkRecentChooser* chooser, gint limit) c_gtk_recent_chooser_set_limit;
	gint function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_limit;
	void function(GtkRecentChooser* chooser, gboolean showTips) c_gtk_recent_chooser_set_show_tips;
	gboolean function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_show_tips;
	void function(GtkRecentChooser* chooser, GtkRecentSortType sortType) c_gtk_recent_chooser_set_sort_type;
	GtkRecentSortType function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_sort_type;
	void function(GtkRecentChooser* chooser, GtkRecentSortFunc sortFunc, void* sortData, GDestroyNotify dataDestroy) c_gtk_recent_chooser_set_sort_func;
	gboolean function(GtkRecentChooser* chooser, gchar* uri, GError** error) c_gtk_recent_chooser_set_current_uri;
	gchar* function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_current_uri;
	GtkRecentInfo* function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_current_item;
	gboolean function(GtkRecentChooser* chooser, gchar* uri, GError** error) c_gtk_recent_chooser_select_uri;
	void function(GtkRecentChooser* chooser, gchar* uri) c_gtk_recent_chooser_unselect_uri;
	void function(GtkRecentChooser* chooser) c_gtk_recent_chooser_select_all;
	void function(GtkRecentChooser* chooser) c_gtk_recent_chooser_unselect_all;
	GList* function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_items;
	gchar** function(GtkRecentChooser* chooser, gsize* length) c_gtk_recent_chooser_get_uris;
	void function(GtkRecentChooser* chooser, GtkRecentFilter* filter) c_gtk_recent_chooser_add_filter;
	void function(GtkRecentChooser* chooser, GtkRecentFilter* filter) c_gtk_recent_chooser_remove_filter;
	GSList* function(GtkRecentChooser* chooser) c_gtk_recent_chooser_list_filters;
	void function(GtkRecentChooser* chooser, GtkRecentFilter* filter) c_gtk_recent_chooser_set_filter;
	GtkRecentFilter* function(GtkRecentChooser* chooser) c_gtk_recent_chooser_get_filter;

	// gtk.RecentChooserDialog

	GtkWidget* function(gchar* title, GtkWindow* parent, gchar* firstButtonText, ... ) c_gtk_recent_chooser_dialog_new;
	GtkWidget* function(gchar* title, GtkWindow* parent, GtkRecentManager* manager, gchar* firstButtonText, ... ) c_gtk_recent_chooser_dialog_new_for_manager;

	// gtk.RecentChooserMenu

	GtkWidget* function() c_gtk_recent_chooser_menu_new;
	GtkWidget* function(GtkRecentManager* manager) c_gtk_recent_chooser_menu_new_for_manager;
	gboolean function(GtkRecentChooserMenu* menu) c_gtk_recent_chooser_menu_get_show_numbers;
	void function(GtkRecentChooserMenu* menu, gboolean showNumbers) c_gtk_recent_chooser_menu_set_show_numbers;

	// gtk.RecentChooserWidget

	GtkWidget* function() c_gtk_recent_chooser_widget_new;
	GtkWidget* function(GtkRecentManager* manager) c_gtk_recent_chooser_widget_new_for_manager;

	// gtk.RecentFilter

	GtkRecentFilter* function() c_gtk_recent_filter_new;
	gchar* function(GtkRecentFilter* filter) c_gtk_recent_filter_get_name;
	void function(GtkRecentFilter* filter, gchar* name) c_gtk_recent_filter_set_name;
	void function(GtkRecentFilter* filter, gchar* mimeType) c_gtk_recent_filter_add_mime_type;
	void function(GtkRecentFilter* filter, gchar* pattern) c_gtk_recent_filter_add_pattern;
	void function(GtkRecentFilter* filter) c_gtk_recent_filter_add_pixbuf_formats;
	void function(GtkRecentFilter* filter, gchar* application) c_gtk_recent_filter_add_application;
	void function(GtkRecentFilter* filter, gchar* group) c_gtk_recent_filter_add_group;
	void function(GtkRecentFilter* filter, gint days) c_gtk_recent_filter_add_age;
	void function(GtkRecentFilter* filter, GtkRecentFilterFlags needed, GtkRecentFilterFunc func, void* data, GDestroyNotify dataDestroy) c_gtk_recent_filter_add_custom;
	GtkRecentFilterFlags function(GtkRecentFilter* filter) c_gtk_recent_filter_get_needed;
	gboolean function(GtkRecentFilter* filter, GtkRecentFilterInfo* filterInfo) c_gtk_recent_filter_filter;

	// gtk.AppChooserT


	// gtk.AppChooserT

	GAppInfo* function(GtkAppChooser* self) c_gtk_app_chooser_get_app_info;
	gchar* function(GtkAppChooser* self) c_gtk_app_chooser_get_content_type;
	void function(GtkAppChooser* self) c_gtk_app_chooser_refresh;

	// gtk.AppChooserButton

	GtkWidget* function(gchar* contentType) c_gtk_app_chooser_button_new;
	void function(GtkAppChooserButton* self, gchar* name, gchar* label, GIcon* icon) c_gtk_app_chooser_button_append_custom_item;
	void function(GtkAppChooserButton* self) c_gtk_app_chooser_button_append_separator;
	void function(GtkAppChooserButton* self, gchar* name) c_gtk_app_chooser_button_set_active_custom_item;
	gboolean function(GtkAppChooserButton* self) c_gtk_app_chooser_button_get_show_default_item;
	void function(GtkAppChooserButton* self, gboolean setting) c_gtk_app_chooser_button_set_show_default_item;
	gboolean function(GtkAppChooserButton* self) c_gtk_app_chooser_button_get_show_dialog_item;
	void function(GtkAppChooserButton* self, gboolean setting) c_gtk_app_chooser_button_set_show_dialog_item;
	gchar* function(GtkAppChooserButton* self) c_gtk_app_chooser_button_get_heading;
	void function(GtkAppChooserButton* self, gchar* heading) c_gtk_app_chooser_button_set_heading;

	// gtk.AppChooserDialog

	GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, GFile* file) c_gtk_app_chooser_dialog_new;
	GtkWidget* function(GtkWindow* parent, GtkDialogFlags flags, gchar* contentType) c_gtk_app_chooser_dialog_new_for_content_type;
	GtkWidget* function(GtkAppChooserDialog* self) c_gtk_app_chooser_dialog_get_widget;
	void function(GtkAppChooserDialog* self, gchar* heading) c_gtk_app_chooser_dialog_set_heading;
	gchar* function(GtkAppChooserDialog* self) c_gtk_app_chooser_dialog_get_heading;

	// gtk.AppChooserWidget

	GtkWidget* function(gchar* contentType) c_gtk_app_chooser_widget_new;
	void function(GtkAppChooserWidget* self, gboolean setting) c_gtk_app_chooser_widget_set_show_default;
	gboolean function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_show_default;
	void function(GtkAppChooserWidget* self, gboolean setting) c_gtk_app_chooser_widget_set_show_recommended;
	gboolean function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_show_recommended;
	void function(GtkAppChooserWidget* self, gboolean setting) c_gtk_app_chooser_widget_set_show_fallback;
	gboolean function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_show_fallback;
	void function(GtkAppChooserWidget* self, gboolean setting) c_gtk_app_chooser_widget_set_show_other;
	gboolean function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_show_other;
	void function(GtkAppChooserWidget* self, gboolean setting) c_gtk_app_chooser_widget_set_show_all;
	gboolean function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_show_all;
	void function(GtkAppChooserWidget* self, gchar* text) c_gtk_app_chooser_widget_set_default_text;
	gchar* function(GtkAppChooserWidget* self) c_gtk_app_chooser_widget_get_default_text;

	// gtk.BuildableT


	// gtk.BuildableT

	void function(GtkBuildable* buildable, gchar* name) c_gtk_buildable_set_name;
	gchar* function(GtkBuildable* buildable) c_gtk_buildable_get_name;
	void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* type) c_gtk_buildable_add_child;
	void function(GtkBuildable* buildable, GtkBuilder* builder, gchar* name, GValue* value) c_gtk_buildable_set_buildable_property;
	GObject* function(GtkBuildable* buildable, GtkBuilder* builder, gchar* name) c_gtk_buildable_construct_child;
	gboolean function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* tagname, GMarkupParser* parser, void** data) c_gtk_buildable_custom_tag_start;
	void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* tagname, void** data) c_gtk_buildable_custom_tag_end;
	void function(GtkBuildable* buildable, GtkBuilder* builder, GObject* child, gchar* tagname, void* data) c_gtk_buildable_custom_finished;
	void function(GtkBuildable* buildable, GtkBuilder* builder) c_gtk_buildable_parser_finished;
	GObject* function(GtkBuildable* buildable, GtkBuilder* builder, gchar* childname) c_gtk_buildable_get_internal_child;

	// gtk.Builder

	GtkBuilder* function() c_gtk_builder_new;
	guint function(GtkBuilder* builder, gchar* filename, GError** error) c_gtk_builder_add_from_file;
	guint function(GtkBuilder* builder, gchar* resourcePath, GError** error) c_gtk_builder_add_from_resource;
	guint function(GtkBuilder* builder, gchar* buffer, gsize length, GError** error) c_gtk_builder_add_from_string;
	guint function(GtkBuilder* builder, gchar* filename, gchar** objectIds, GError** error) c_gtk_builder_add_objects_from_file;
	guint function(GtkBuilder* builder, gchar* buffer, gsize length, gchar** objectIds, GError** error) c_gtk_builder_add_objects_from_string;
	guint function(GtkBuilder* builder, gchar* resourcePath, gchar** objectIds, GError** error) c_gtk_builder_add_objects_from_resource;
	GObject* function(GtkBuilder* builder, gchar* name) c_gtk_builder_get_object;
	GSList* function(GtkBuilder* builder) c_gtk_builder_get_objects;
	void function(GtkBuilder* builder, void* userData) c_gtk_builder_connect_signals;
	void function(GtkBuilder* builder, GtkBuilderConnectFunc func, void* userData) c_gtk_builder_connect_signals_full;
	void function(GtkBuilder* builder, gchar* domain) c_gtk_builder_set_translation_domain;
	gchar* function(GtkBuilder* builder) c_gtk_builder_get_translation_domain;
	GType function(GtkBuilder* builder, char* typeName) c_gtk_builder_get_type_from_name;
	gboolean function(GtkBuilder* builder, GParamSpec* pspec, gchar* string, GValue* value, GError** error) c_gtk_builder_value_from_string;
	gboolean function(GtkBuilder* builder, GType type, gchar* string, GValue* value, GError** error) c_gtk_builder_value_from_string_type;

	// gtk.Application

	GtkApplication* function(gchar* applicationId, GApplicationFlags flags) c_gtk_application_new;
	void function(GtkApplication* application, GtkWindow* window) c_gtk_application_add_window;
	void function(GtkApplication* application, GtkWindow* window) c_gtk_application_remove_window;
	GList* function(GtkApplication* application) c_gtk_application_get_windows;
	GtkWindow* function(GtkApplication* application, guint id) c_gtk_application_get_window_by_id;
	GtkWindow* function(GtkApplication* application) c_gtk_application_get_active_window;
	guint function(GtkApplication* application, GtkWindow* window, GtkApplicationInhibitFlags flags, gchar* reason) c_gtk_application_inhibit;
	void function(GtkApplication* application, guint cookie) c_gtk_application_uninhibit;
	gboolean function(GtkApplication* application, GtkApplicationInhibitFlags flags) c_gtk_application_is_inhibited;
	GMenuModel* function(GtkApplication* application) c_gtk_application_get_app_menu;
	void function(GtkApplication* application, GMenuModel* appMenu) c_gtk_application_set_app_menu;
	GMenuModel* function(GtkApplication* application) c_gtk_application_get_menubar;
	void function(GtkApplication* application, GMenuModel* menubar) c_gtk_application_set_menubar;
	void function(GtkApplication* application, gchar* accelerator, gchar* actionName, GVariant* parameter) c_gtk_application_add_accelerator;
	void function(GtkApplication* application, gchar* actionName, GVariant* parameter) c_gtk_application_remove_accelerator;

	// gtk.ApplicationWindow

	GtkWidget* function(GtkApplication* application) c_gtk_application_window_new;
	void function(GtkApplicationWindow* window, gboolean showMenubar) c_gtk_application_window_set_show_menubar;
	gboolean function(GtkApplicationWindow* window) c_gtk_application_window_get_show_menubar;
	guint function(GtkApplicationWindow* window) c_gtk_application_window_get_id;

	// gtk.ActionableT


	// gtk.ActionableT

	gchar* function(GtkActionable* actionable) c_gtk_actionable_get_action_name;
	void function(GtkActionable* actionable, gchar* actionName) c_gtk_actionable_set_action_name;
	GVariant* function(GtkActionable* actionable) c_gtk_actionable_get_action_target_value;
	void function(GtkActionable* actionable, GVariant* targetValue) c_gtk_actionable_set_action_target_value;
	void function(GtkActionable* actionable, gchar* formatString, ... ) c_gtk_actionable_set_action_target;
	void function(GtkActionable* actionable, gchar* detailedActionName) c_gtk_actionable_set_detailed_action_name;
}");

// gtk.Main

alias c_gtk_disable_setlocale  gtk_disable_setlocale;
alias c_gtk_get_default_language  gtk_get_default_language;
alias c_gtk_parse_args  gtk_parse_args;
alias c_gtk_init  gtk_init;
alias c_gtk_init_check  gtk_init_check;
alias c_gtk_init_with_args  gtk_init_with_args;
alias c_gtk_get_option_group  gtk_get_option_group;
alias c_gtk_events_pending  gtk_events_pending;
alias c_gtk_main  gtk_main;
alias c_gtk_main_level  gtk_main_level;
alias c_gtk_main_quit  gtk_main_quit;
alias c_gtk_main_iteration  gtk_main_iteration;
alias c_gtk_main_iteration_do  gtk_main_iteration_do;
alias c_gtk_main_do_event  gtk_main_do_event;
alias c_gtk_grab_add  gtk_grab_add;
alias c_gtk_grab_get_current  gtk_grab_get_current;
alias c_gtk_grab_remove  gtk_grab_remove;
alias c_gtk_device_grab_add  gtk_device_grab_add;
alias c_gtk_device_grab_remove  gtk_device_grab_remove;
alias c_gtk_key_snooper_install  gtk_key_snooper_install;
alias c_gtk_key_snooper_remove  gtk_key_snooper_remove;
alias c_gtk_get_current_event  gtk_get_current_event;
alias c_gtk_get_current_event_time  gtk_get_current_event_time;
alias c_gtk_get_current_event_state  gtk_get_current_event_state;
alias c_gtk_get_current_event_device  gtk_get_current_event_device;
alias c_gtk_get_event_widget  gtk_get_event_widget;
alias c_gtk_propagate_event  gtk_propagate_event;

// gtk.Version

alias c_gtk_get_major_version  gtk_get_major_version;
alias c_gtk_get_minor_version  gtk_get_minor_version;
alias c_gtk_get_micro_version  gtk_get_micro_version;
alias c_gtk_get_binary_age  gtk_get_binary_age;
alias c_gtk_get_interface_age  gtk_get_interface_age;
alias c_gtk_check_version  gtk_check_version;

// gtk.AccelGroup

alias c_gtk_accel_group_new  gtk_accel_group_new;
alias c_gtk_accel_group_connect  gtk_accel_group_connect;
alias c_gtk_accel_group_connect_by_path  gtk_accel_group_connect_by_path;
alias c_gtk_accel_group_disconnect  gtk_accel_group_disconnect;
alias c_gtk_accel_group_disconnect_key  gtk_accel_group_disconnect_key;
alias c_gtk_accel_group_activate  gtk_accel_group_activate;
alias c_gtk_accel_group_lock  gtk_accel_group_lock;
alias c_gtk_accel_group_unlock  gtk_accel_group_unlock;
alias c_gtk_accel_group_get_is_locked  gtk_accel_group_get_is_locked;
alias c_gtk_accel_group_from_accel_closure  gtk_accel_group_from_accel_closure;
alias c_gtk_accel_group_get_modifier_mask  gtk_accel_group_get_modifier_mask;
alias c_gtk_accel_groups_activate  gtk_accel_groups_activate;
alias c_gtk_accel_groups_from_object  gtk_accel_groups_from_object;
alias c_gtk_accel_group_find  gtk_accel_group_find;
alias c_gtk_accelerator_valid  gtk_accelerator_valid;
alias c_gtk_accelerator_parse  gtk_accelerator_parse;
alias c_gtk_accelerator_name  gtk_accelerator_name;
alias c_gtk_accelerator_get_label  gtk_accelerator_get_label;
alias c_gtk_accelerator_parse_with_keycode  gtk_accelerator_parse_with_keycode;
alias c_gtk_accelerator_name_with_keycode  gtk_accelerator_name_with_keycode;
alias c_gtk_accelerator_get_label_with_keycode  gtk_accelerator_get_label_with_keycode;
alias c_gtk_accelerator_set_default_mod_mask  gtk_accelerator_set_default_mod_mask;
alias c_gtk_accelerator_get_default_mod_mask  gtk_accelerator_get_default_mod_mask;

// gtk.AccelMap

alias c_gtk_accel_map_add_entry  gtk_accel_map_add_entry;
alias c_gtk_accel_map_lookup_entry  gtk_accel_map_lookup_entry;
alias c_gtk_accel_map_change_entry  gtk_accel_map_change_entry;
alias c_gtk_accel_map_load  gtk_accel_map_load;
alias c_gtk_accel_map_save  gtk_accel_map_save;
alias c_gtk_accel_map_foreach  gtk_accel_map_foreach;
alias c_gtk_accel_map_load_fd  gtk_accel_map_load_fd;
alias c_gtk_accel_map_save_fd  gtk_accel_map_save_fd;
alias c_gtk_accel_map_load_scanner  gtk_accel_map_load_scanner;
alias c_gtk_accel_map_add_filter  gtk_accel_map_add_filter;
alias c_gtk_accel_map_foreach_unfiltered  gtk_accel_map_foreach_unfiltered;
alias c_gtk_accel_map_get  gtk_accel_map_get;
alias c_gtk_accel_map_lock_path  gtk_accel_map_lock_path;
alias c_gtk_accel_map_unlock_path  gtk_accel_map_unlock_path;

// gtk.Clipboard

alias c_gtk_clipboard_get  gtk_clipboard_get;
alias c_gtk_clipboard_get_for_display  gtk_clipboard_get_for_display;
alias c_gtk_clipboard_get_display  gtk_clipboard_get_display;
alias c_gtk_clipboard_set_with_data  gtk_clipboard_set_with_data;
alias c_gtk_clipboard_set_with_owner  gtk_clipboard_set_with_owner;
alias c_gtk_clipboard_get_owner  gtk_clipboard_get_owner;
alias c_gtk_clipboard_clear  gtk_clipboard_clear;
alias c_gtk_clipboard_set_text  gtk_clipboard_set_text;
alias c_gtk_clipboard_set_image  gtk_clipboard_set_image;
alias c_gtk_clipboard_request_contents  gtk_clipboard_request_contents;
alias c_gtk_clipboard_request_text  gtk_clipboard_request_text;
alias c_gtk_clipboard_request_image  gtk_clipboard_request_image;
alias c_gtk_clipboard_request_targets  gtk_clipboard_request_targets;
alias c_gtk_clipboard_request_rich_text  gtk_clipboard_request_rich_text;
alias c_gtk_clipboard_request_uris  gtk_clipboard_request_uris;
alias c_gtk_clipboard_wait_for_contents  gtk_clipboard_wait_for_contents;
alias c_gtk_clipboard_wait_for_text  gtk_clipboard_wait_for_text;
alias c_gtk_clipboard_wait_for_image  gtk_clipboard_wait_for_image;
alias c_gtk_clipboard_wait_for_rich_text  gtk_clipboard_wait_for_rich_text;
alias c_gtk_clipboard_wait_for_uris  gtk_clipboard_wait_for_uris;
alias c_gtk_clipboard_wait_is_text_available  gtk_clipboard_wait_is_text_available;
alias c_gtk_clipboard_wait_is_image_available  gtk_clipboard_wait_is_image_available;
alias c_gtk_clipboard_wait_is_rich_text_available  gtk_clipboard_wait_is_rich_text_available;
alias c_gtk_clipboard_wait_is_uris_available  gtk_clipboard_wait_is_uris_available;
alias c_gtk_clipboard_wait_for_targets  gtk_clipboard_wait_for_targets;
alias c_gtk_clipboard_wait_is_target_available  gtk_clipboard_wait_is_target_available;
alias c_gtk_clipboard_set_can_store  gtk_clipboard_set_can_store;
alias c_gtk_clipboard_store  gtk_clipboard_store;

// gtk.DragAndDrop

alias c_gtk_drag_dest_set  gtk_drag_dest_set;
alias c_gtk_drag_dest_set_proxy  gtk_drag_dest_set_proxy;
alias c_gtk_drag_dest_unset  gtk_drag_dest_unset;
alias c_gtk_drag_dest_find_target  gtk_drag_dest_find_target;
alias c_gtk_drag_dest_get_target_list  gtk_drag_dest_get_target_list;
alias c_gtk_drag_dest_set_target_list  gtk_drag_dest_set_target_list;
alias c_gtk_drag_dest_add_text_targets  gtk_drag_dest_add_text_targets;
alias c_gtk_drag_dest_add_image_targets  gtk_drag_dest_add_image_targets;
alias c_gtk_drag_dest_add_uri_targets  gtk_drag_dest_add_uri_targets;
alias c_gtk_drag_dest_set_track_motion  gtk_drag_dest_set_track_motion;
alias c_gtk_drag_dest_get_track_motion  gtk_drag_dest_get_track_motion;
alias c_gtk_drag_finish  gtk_drag_finish;
alias c_gtk_drag_get_data  gtk_drag_get_data;
alias c_gtk_drag_get_source_widget  gtk_drag_get_source_widget;
alias c_gtk_drag_highlight  gtk_drag_highlight;
alias c_gtk_drag_unhighlight  gtk_drag_unhighlight;
alias c_gtk_drag_begin  gtk_drag_begin;
alias c_gtk_drag_set_icon_widget  gtk_drag_set_icon_widget;
alias c_gtk_drag_set_icon_pixbuf  gtk_drag_set_icon_pixbuf;
alias c_gtk_drag_set_icon_stock  gtk_drag_set_icon_stock;
alias c_gtk_drag_set_icon_surface  gtk_drag_set_icon_surface;
alias c_gtk_drag_set_icon_name  gtk_drag_set_icon_name;
alias c_gtk_drag_set_icon_gicon  gtk_drag_set_icon_gicon;
alias c_gtk_drag_set_icon_default  gtk_drag_set_icon_default;
alias c_gtk_drag_check_threshold  gtk_drag_check_threshold;
alias c_gtk_drag_source_set  gtk_drag_source_set;
alias c_gtk_drag_source_set_icon_pixbuf  gtk_drag_source_set_icon_pixbuf;
alias c_gtk_drag_source_set_icon_stock  gtk_drag_source_set_icon_stock;
alias c_gtk_drag_source_set_icon_name  gtk_drag_source_set_icon_name;
alias c_gtk_drag_source_set_icon_gicon  gtk_drag_source_set_icon_gicon;
alias c_gtk_drag_source_unset  gtk_drag_source_unset;
alias c_gtk_drag_source_set_target_list  gtk_drag_source_set_target_list;
alias c_gtk_drag_source_get_target_list  gtk_drag_source_get_target_list;
alias c_gtk_drag_source_add_text_targets  gtk_drag_source_add_text_targets;
alias c_gtk_drag_source_add_image_targets  gtk_drag_source_add_image_targets;
alias c_gtk_drag_source_add_uri_targets  gtk_drag_source_add_uri_targets;

// gtk.StockItem

alias c_gtk_stock_add  gtk_stock_add;
alias c_gtk_stock_add_static  gtk_stock_add_static;
alias c_gtk_stock_item_copy  gtk_stock_item_copy;
alias c_gtk_stock_item_free  gtk_stock_item_free;
alias c_gtk_stock_list_ids  gtk_stock_list_ids;
alias c_gtk_stock_lookup  gtk_stock_lookup;
alias c_gtk_stock_set_translate_func  gtk_stock_set_translate_func;

// gtk.Settings

alias c_gtk_settings_get_default  gtk_settings_get_default;
alias c_gtk_settings_get_for_screen  gtk_settings_get_for_screen;
alias c_gtk_settings_install_property  gtk_settings_install_property;
alias c_gtk_settings_install_property_parser  gtk_settings_install_property_parser;
alias c_gtk_rc_property_parse_color  gtk_rc_property_parse_color;
alias c_gtk_rc_property_parse_enum  gtk_rc_property_parse_enum;
alias c_gtk_rc_property_parse_flags  gtk_rc_property_parse_flags;
alias c_gtk_rc_property_parse_requisition  gtk_rc_property_parse_requisition;
alias c_gtk_rc_property_parse_border  gtk_rc_property_parse_border;
alias c_gtk_settings_set_property_value  gtk_settings_set_property_value;
alias c_gtk_settings_set_string_property  gtk_settings_set_string_property;
alias c_gtk_settings_set_long_property  gtk_settings_set_long_property;
alias c_gtk_settings_set_double_property  gtk_settings_set_double_property;

// gtk.BindingSet

alias c_gtk_binding_entry_add_signall  gtk_binding_entry_add_signall;
alias c_gtk_binding_set_new  gtk_binding_set_new;
alias c_gtk_binding_set_by_class  gtk_binding_set_by_class;
alias c_gtk_binding_set_find  gtk_binding_set_find;
alias c_gtk_bindings_activate  gtk_bindings_activate;
alias c_gtk_bindings_activate_event  gtk_bindings_activate_event;
alias c_gtk_binding_set_activate  gtk_binding_set_activate;
alias c_gtk_binding_entry_add_signal  gtk_binding_entry_add_signal;
alias c_gtk_binding_entry_add_signal_from_string  gtk_binding_entry_add_signal_from_string;
alias c_gtk_binding_entry_skip  gtk_binding_entry_skip;
alias c_gtk_binding_entry_remove  gtk_binding_entry_remove;
alias c_gtk_binding_set_add_path  gtk_binding_set_add_path;

// gtk.TargetEntry

alias c_gtk_target_entry_new  gtk_target_entry_new;
alias c_gtk_target_entry_copy  gtk_target_entry_copy;
alias c_gtk_target_entry_free  gtk_target_entry_free;

// gtk.TargetList

alias c_gtk_target_list_new  gtk_target_list_new;
alias c_gtk_target_list_ref  gtk_target_list_ref;
alias c_gtk_target_list_unref  gtk_target_list_unref;
alias c_gtk_target_list_add  gtk_target_list_add;
alias c_gtk_target_list_add_table  gtk_target_list_add_table;
alias c_gtk_target_list_add_text_targets  gtk_target_list_add_text_targets;
alias c_gtk_target_list_add_image_targets  gtk_target_list_add_image_targets;
alias c_gtk_target_list_add_uri_targets  gtk_target_list_add_uri_targets;
alias c_gtk_target_list_add_rich_text_targets  gtk_target_list_add_rich_text_targets;
alias c_gtk_target_list_remove  gtk_target_list_remove;
alias c_gtk_target_list_find  gtk_target_list_find;
alias c_gtk_target_table_free  gtk_target_table_free;
alias c_gtk_target_table_new_from_list  gtk_target_table_new_from_list;
alias c_gtk_targets_include_image  gtk_targets_include_image;
alias c_gtk_targets_include_text  gtk_targets_include_text;
alias c_gtk_targets_include_uri  gtk_targets_include_uri;
alias c_gtk_targets_include_rich_text  gtk_targets_include_rich_text;

// gtk.SelectionData

alias c_gtk_selection_owner_set  gtk_selection_owner_set;
alias c_gtk_selection_owner_set_for_display  gtk_selection_owner_set_for_display;
alias c_gtk_selection_add_target  gtk_selection_add_target;
alias c_gtk_selection_add_targets  gtk_selection_add_targets;
alias c_gtk_selection_clear_targets  gtk_selection_clear_targets;
alias c_gtk_selection_convert  gtk_selection_convert;
alias c_gtk_selection_data_set  gtk_selection_data_set;
alias c_gtk_selection_data_set_text  gtk_selection_data_set_text;
alias c_gtk_selection_data_get_text  gtk_selection_data_get_text;
alias c_gtk_selection_data_set_pixbuf  gtk_selection_data_set_pixbuf;
alias c_gtk_selection_data_get_pixbuf  gtk_selection_data_get_pixbuf;
alias c_gtk_selection_data_set_uris  gtk_selection_data_set_uris;
alias c_gtk_selection_data_get_uris  gtk_selection_data_get_uris;
alias c_gtk_selection_data_get_targets  gtk_selection_data_get_targets;
alias c_gtk_selection_data_targets_include_image  gtk_selection_data_targets_include_image;
alias c_gtk_selection_data_targets_include_text  gtk_selection_data_targets_include_text;
alias c_gtk_selection_data_targets_include_uri  gtk_selection_data_targets_include_uri;
alias c_gtk_selection_data_targets_include_rich_text  gtk_selection_data_targets_include_rich_text;
alias c_gtk_selection_data_get_selection  gtk_selection_data_get_selection;
alias c_gtk_selection_data_get_data  gtk_selection_data_get_data;
alias c_gtk_selection_data_get_length  gtk_selection_data_get_length;
alias c_gtk_selection_data_get_data_with_length  gtk_selection_data_get_data_with_length;
alias c_gtk_selection_data_get_data_type  gtk_selection_data_get_data_type;
alias c_gtk_selection_data_get_display  gtk_selection_data_get_display;
alias c_gtk_selection_data_get_format  gtk_selection_data_get_format;
alias c_gtk_selection_data_get_target  gtk_selection_data_get_target;
alias c_gtk_selection_remove_all  gtk_selection_remove_all;
alias c_gtk_selection_data_copy  gtk_selection_data_copy;
alias c_gtk_selection_data_free  gtk_selection_data_free;

// gtk.Testing

alias c_gtk_test_create_simple_window  gtk_test_create_simple_window;
alias c_gtk_test_create_widget  gtk_test_create_widget;
alias c_gtk_test_display_button_window  gtk_test_display_button_window;
alias c_gtk_test_find_label  gtk_test_find_label;
alias c_gtk_test_find_sibling  gtk_test_find_sibling;
alias c_gtk_test_find_widget  gtk_test_find_widget;
alias c_gtk_test_init  gtk_test_init;
alias c_gtk_test_list_all_types  gtk_test_list_all_types;
alias c_gtk_test_register_all_types  gtk_test_register_all_types;
alias c_gtk_test_slider_get_value  gtk_test_slider_get_value;
alias c_gtk_test_slider_set_perc  gtk_test_slider_set_perc;
alias c_gtk_test_spin_button_click  gtk_test_spin_button_click;
alias c_gtk_test_text_get  gtk_test_text_get;
alias c_gtk_test_text_set  gtk_test_text_set;
alias c_gtk_test_widget_click  gtk_test_widget_click;
alias c_gtk_test_widget_send_key  gtk_test_widget_send_key;

// gtk.MountOperation

alias c_gtk_mount_operation_new  gtk_mount_operation_new;
alias c_gtk_mount_operation_is_showing  gtk_mount_operation_is_showing;
alias c_gtk_mount_operation_set_parent  gtk_mount_operation_set_parent;
alias c_gtk_mount_operation_get_parent  gtk_mount_operation_get_parent;
alias c_gtk_mount_operation_set_screen  gtk_mount_operation_set_screen;
alias c_gtk_mount_operation_get_screen  gtk_mount_operation_get_screen;
alias c_gtk_show_uri  gtk_show_uri;

// gtk.StyleContext

alias c_gtk_style_context_new  gtk_style_context_new;
alias c_gtk_style_context_add_provider  gtk_style_context_add_provider;
alias c_gtk_style_context_add_provider_for_screen  gtk_style_context_add_provider_for_screen;
alias c_gtk_style_context_get  gtk_style_context_get;
alias c_gtk_style_context_get_direction  gtk_style_context_get_direction;
alias c_gtk_style_context_get_junction_sides  gtk_style_context_get_junction_sides;
alias c_gtk_style_context_get_parent  gtk_style_context_get_parent;
alias c_gtk_style_context_get_path  gtk_style_context_get_path;
alias c_gtk_style_context_get_property  gtk_style_context_get_property;
alias c_gtk_style_context_get_screen  gtk_style_context_get_screen;
alias c_gtk_style_context_get_state  gtk_style_context_get_state;
alias c_gtk_style_context_get_style  gtk_style_context_get_style;
alias c_gtk_style_context_get_style_property  gtk_style_context_get_style_property;
alias c_gtk_style_context_get_style_valist  gtk_style_context_get_style_valist;
alias c_gtk_style_context_get_valist  gtk_style_context_get_valist;
alias c_gtk_style_context_get_section  gtk_style_context_get_section;
alias c_gtk_style_context_get_color  gtk_style_context_get_color;
alias c_gtk_style_context_get_background_color  gtk_style_context_get_background_color;
alias c_gtk_style_context_get_border_color  gtk_style_context_get_border_color;
alias c_gtk_style_context_get_border  gtk_style_context_get_border;
alias c_gtk_style_context_get_padding  gtk_style_context_get_padding;
alias c_gtk_style_context_get_margin  gtk_style_context_get_margin;
alias c_gtk_style_context_get_font  gtk_style_context_get_font;
alias c_gtk_style_context_invalidate  gtk_style_context_invalidate;
alias c_gtk_style_context_state_is_running  gtk_style_context_state_is_running;
alias c_gtk_style_context_lookup_color  gtk_style_context_lookup_color;
alias c_gtk_style_context_lookup_icon_set  gtk_style_context_lookup_icon_set;
alias c_gtk_style_context_notify_state_change  gtk_style_context_notify_state_change;
alias c_gtk_style_context_pop_animatable_region  gtk_style_context_pop_animatable_region;
alias c_gtk_style_context_push_animatable_region  gtk_style_context_push_animatable_region;
alias c_gtk_style_context_cancel_animations  gtk_style_context_cancel_animations;
alias c_gtk_style_context_scroll_animations  gtk_style_context_scroll_animations;
alias c_gtk_style_context_remove_provider  gtk_style_context_remove_provider;
alias c_gtk_style_context_remove_provider_for_screen  gtk_style_context_remove_provider_for_screen;
alias c_gtk_style_context_reset_widgets  gtk_style_context_reset_widgets;
alias c_gtk_style_context_set_background  gtk_style_context_set_background;
alias c_gtk_style_context_restore  gtk_style_context_restore;
alias c_gtk_style_context_save  gtk_style_context_save;
alias c_gtk_style_context_set_direction  gtk_style_context_set_direction;
alias c_gtk_style_context_set_junction_sides  gtk_style_context_set_junction_sides;
alias c_gtk_style_context_set_parent  gtk_style_context_set_parent;
alias c_gtk_style_context_set_path  gtk_style_context_set_path;
alias c_gtk_style_context_add_class  gtk_style_context_add_class;
alias c_gtk_style_context_remove_class  gtk_style_context_remove_class;
alias c_gtk_style_context_has_class  gtk_style_context_has_class;
alias c_gtk_style_context_list_classes  gtk_style_context_list_classes;
alias c_gtk_style_context_add_region  gtk_style_context_add_region;
alias c_gtk_style_context_remove_region  gtk_style_context_remove_region;
alias c_gtk_style_context_has_region  gtk_style_context_has_region;
alias c_gtk_style_context_list_regions  gtk_style_context_list_regions;
alias c_gtk_style_context_set_screen  gtk_style_context_set_screen;
alias c_gtk_style_context_set_state  gtk_style_context_set_state;
alias c_gtk_render_arrow  gtk_render_arrow;
alias c_gtk_render_background  gtk_render_background;
alias c_gtk_render_check  gtk_render_check;
alias c_gtk_render_expander  gtk_render_expander;
alias c_gtk_render_extension  gtk_render_extension;
alias c_gtk_render_focus  gtk_render_focus;
alias c_gtk_render_frame  gtk_render_frame;
alias c_gtk_render_frame_gap  gtk_render_frame_gap;
alias c_gtk_render_handle  gtk_render_handle;
alias c_gtk_render_layout  gtk_render_layout;
alias c_gtk_render_line  gtk_render_line;
alias c_gtk_render_option  gtk_render_option;
alias c_gtk_render_slider  gtk_render_slider;
alias c_gtk_render_activity  gtk_render_activity;
alias c_gtk_render_icon_pixbuf  gtk_render_icon_pixbuf;
alias c_gtk_render_icon  gtk_render_icon;
alias c_gtk_render_insertion_cursor  gtk_render_insertion_cursor;

// gtk.Border

alias c_gtk_border_new  gtk_border_new;
alias c_gtk_border_copy  gtk_border_copy;
alias c_gtk_border_free  gtk_border_free;

// gtk.CssProvider

alias c_gtk_css_provider_get_default  gtk_css_provider_get_default;
alias c_gtk_css_provider_get_named  gtk_css_provider_get_named;
alias c_gtk_css_provider_load_from_data  gtk_css_provider_load_from_data;
alias c_gtk_css_provider_load_from_file  gtk_css_provider_load_from_file;
alias c_gtk_css_provider_load_from_path  gtk_css_provider_load_from_path;
alias c_gtk_css_provider_new  gtk_css_provider_new;
alias c_gtk_css_provider_to_string  gtk_css_provider_to_string;

// gtk.CssSection

alias c_gtk_css_section_get_end_line  gtk_css_section_get_end_line;
alias c_gtk_css_section_get_end_position  gtk_css_section_get_end_position;
alias c_gtk_css_section_get_file  gtk_css_section_get_file;
alias c_gtk_css_section_get_parent  gtk_css_section_get_parent;
alias c_gtk_css_section_get_section_type  gtk_css_section_get_section_type;
alias c_gtk_css_section_get_start_line  gtk_css_section_get_start_line;
alias c_gtk_css_section_get_start_position  gtk_css_section_get_start_position;
alias c_gtk_css_section_ref  gtk_css_section_ref;
alias c_gtk_css_section_unref  gtk_css_section_unref;

// gtk.StyleProviderT


// gtk.StyleProviderT

alias c_gtk_style_provider_get_icon_factory  gtk_style_provider_get_icon_factory;
alias c_gtk_style_provider_get_style  gtk_style_provider_get_style;
alias c_gtk_style_provider_get_style_property  gtk_style_provider_get_style_property;

// gtk.StyleProperties

alias c_gtk_style_properties_clear  gtk_style_properties_clear;
alias c_gtk_style_properties_get  gtk_style_properties_get;
alias c_gtk_style_properties_get_property  gtk_style_properties_get_property;
alias c_gtk_style_properties_get_valist  gtk_style_properties_get_valist;
alias c_gtk_style_properties_lookup_color  gtk_style_properties_lookup_color;
alias c_gtk_style_properties_lookup_property  gtk_style_properties_lookup_property;
alias c_gtk_style_properties_map_color  gtk_style_properties_map_color;
alias c_gtk_style_properties_merge  gtk_style_properties_merge;
alias c_gtk_style_properties_new  gtk_style_properties_new;
alias c_gtk_style_properties_register_property  gtk_style_properties_register_property;
alias c_gtk_style_properties_set  gtk_style_properties_set;
alias c_gtk_style_properties_set_property  gtk_style_properties_set_property;
alias c_gtk_style_properties_set_valist  gtk_style_properties_set_valist;
alias c_gtk_style_properties_unset_property  gtk_style_properties_unset_property;

// gtk.ThemingEngine

alias c_gtk_theming_engine_get  gtk_theming_engine_get;
alias c_gtk_theming_engine_get_direction  gtk_theming_engine_get_direction;
alias c_gtk_theming_engine_get_junction_sides  gtk_theming_engine_get_junction_sides;
alias c_gtk_theming_engine_get_path  gtk_theming_engine_get_path;
alias c_gtk_theming_engine_get_property  gtk_theming_engine_get_property;
alias c_gtk_theming_engine_get_screen  gtk_theming_engine_get_screen;
alias c_gtk_theming_engine_get_state  gtk_theming_engine_get_state;
alias c_gtk_theming_engine_get_style  gtk_theming_engine_get_style;
alias c_gtk_theming_engine_get_style_property  gtk_theming_engine_get_style_property;
alias c_gtk_theming_engine_get_style_valist  gtk_theming_engine_get_style_valist;
alias c_gtk_theming_engine_get_valist  gtk_theming_engine_get_valist;
alias c_gtk_theming_engine_get_color  gtk_theming_engine_get_color;
alias c_gtk_theming_engine_get_background_color  gtk_theming_engine_get_background_color;
alias c_gtk_theming_engine_get_border_color  gtk_theming_engine_get_border_color;
alias c_gtk_theming_engine_get_border  gtk_theming_engine_get_border;
alias c_gtk_theming_engine_get_padding  gtk_theming_engine_get_padding;
alias c_gtk_theming_engine_get_margin  gtk_theming_engine_get_margin;
alias c_gtk_theming_engine_get_font  gtk_theming_engine_get_font;
alias c_gtk_theming_engine_has_class  gtk_theming_engine_has_class;
alias c_gtk_theming_engine_has_region  gtk_theming_engine_has_region;
alias c_gtk_theming_engine_lookup_color  gtk_theming_engine_lookup_color;
alias c_gtk_theming_engine_state_is_running  gtk_theming_engine_state_is_running;
alias c_gtk_theming_engine_load  gtk_theming_engine_load;
alias c_gtk_theming_engine_register_property  gtk_theming_engine_register_property;

// gtk.WidgetPath

alias c_gtk_widget_path_append_type  gtk_widget_path_append_type;
alias c_gtk_widget_path_append_with_siblings  gtk_widget_path_append_with_siblings;
alias c_gtk_widget_path_append_for_widget  gtk_widget_path_append_for_widget;
alias c_gtk_widget_path_copy  gtk_widget_path_copy;
alias c_gtk_widget_path_ref  gtk_widget_path_ref;
alias c_gtk_widget_path_unref  gtk_widget_path_unref;
alias c_gtk_widget_path_free  gtk_widget_path_free;
alias c_gtk_widget_path_get_object_type  gtk_widget_path_get_object_type;
alias c_gtk_widget_path_has_parent  gtk_widget_path_has_parent;
alias c_gtk_widget_path_is_type  gtk_widget_path_is_type;
alias c_gtk_widget_path_iter_add_class  gtk_widget_path_iter_add_class;
alias c_gtk_widget_path_iter_add_region  gtk_widget_path_iter_add_region;
alias c_gtk_widget_path_iter_clear_classes  gtk_widget_path_iter_clear_classes;
alias c_gtk_widget_path_iter_clear_regions  gtk_widget_path_iter_clear_regions;
alias c_gtk_widget_path_iter_get_name  gtk_widget_path_iter_get_name;
alias c_gtk_widget_path_iter_get_object_type  gtk_widget_path_iter_get_object_type;
alias c_gtk_widget_path_iter_get_siblings  gtk_widget_path_iter_get_siblings;
alias c_gtk_widget_path_iter_get_sibling_index  gtk_widget_path_iter_get_sibling_index;
alias c_gtk_widget_path_iter_has_class  gtk_widget_path_iter_has_class;
alias c_gtk_widget_path_iter_has_name  gtk_widget_path_iter_has_name;
alias c_gtk_widget_path_iter_has_qclass  gtk_widget_path_iter_has_qclass;
alias c_gtk_widget_path_iter_has_qname  gtk_widget_path_iter_has_qname;
alias c_gtk_widget_path_iter_has_qregion  gtk_widget_path_iter_has_qregion;
alias c_gtk_widget_path_iter_has_region  gtk_widget_path_iter_has_region;
alias c_gtk_widget_path_iter_list_classes  gtk_widget_path_iter_list_classes;
alias c_gtk_widget_path_iter_list_regions  gtk_widget_path_iter_list_regions;
alias c_gtk_widget_path_iter_remove_class  gtk_widget_path_iter_remove_class;
alias c_gtk_widget_path_iter_remove_region  gtk_widget_path_iter_remove_region;
alias c_gtk_widget_path_iter_set_name  gtk_widget_path_iter_set_name;
alias c_gtk_widget_path_iter_set_object_type  gtk_widget_path_iter_set_object_type;
alias c_gtk_widget_path_length  gtk_widget_path_length;
alias c_gtk_widget_path_new  gtk_widget_path_new;
alias c_gtk_widget_path_prepend_type  gtk_widget_path_prepend_type;
alias c_gtk_widget_path_to_string  gtk_widget_path_to_string;

// gtk.SymbolicColor

alias c_gtk_symbolic_color_new_literal  gtk_symbolic_color_new_literal;
alias c_gtk_symbolic_color_new_name  gtk_symbolic_color_new_name;
alias c_gtk_symbolic_color_new_shade  gtk_symbolic_color_new_shade;
alias c_gtk_symbolic_color_new_alpha  gtk_symbolic_color_new_alpha;
alias c_gtk_symbolic_color_new_mix  gtk_symbolic_color_new_mix;
alias c_gtk_symbolic_color_new_win32  gtk_symbolic_color_new_win32;
alias c_gtk_symbolic_color_ref  gtk_symbolic_color_ref;
alias c_gtk_symbolic_color_unref  gtk_symbolic_color_unref;
alias c_gtk_symbolic_color_resolve  gtk_symbolic_color_resolve;
alias c_gtk_symbolic_color_to_string  gtk_symbolic_color_to_string;

// gtk.Gradient

alias c_gtk_gradient_new_linear  gtk_gradient_new_linear;
alias c_gtk_gradient_new_radial  gtk_gradient_new_radial;
alias c_gtk_gradient_add_color_stop  gtk_gradient_add_color_stop;
alias c_gtk_gradient_ref  gtk_gradient_ref;
alias c_gtk_gradient_unref  gtk_gradient_unref;
alias c_gtk_gradient_resolve  gtk_gradient_resolve;
alias c_gtk_gradient_resolve_for_context  gtk_gradient_resolve_for_context;
alias c_gtk_gradient_to_string  gtk_gradient_to_string;

// gtk.IconTheme

alias c_gtk_icon_theme_new  gtk_icon_theme_new;
alias c_gtk_icon_theme_get_default  gtk_icon_theme_get_default;
alias c_gtk_icon_theme_get_for_screen  gtk_icon_theme_get_for_screen;
alias c_gtk_icon_theme_set_screen  gtk_icon_theme_set_screen;
alias c_gtk_icon_theme_set_search_path  gtk_icon_theme_set_search_path;
alias c_gtk_icon_theme_get_search_path  gtk_icon_theme_get_search_path;
alias c_gtk_icon_theme_append_search_path  gtk_icon_theme_append_search_path;
alias c_gtk_icon_theme_prepend_search_path  gtk_icon_theme_prepend_search_path;
alias c_gtk_icon_theme_set_custom_theme  gtk_icon_theme_set_custom_theme;
alias c_gtk_icon_theme_has_icon  gtk_icon_theme_has_icon;
alias c_gtk_icon_theme_lookup_icon  gtk_icon_theme_lookup_icon;
alias c_gtk_icon_theme_choose_icon  gtk_icon_theme_choose_icon;
alias c_gtk_icon_theme_lookup_by_gicon  gtk_icon_theme_lookup_by_gicon;
alias c_gtk_icon_theme_load_icon  gtk_icon_theme_load_icon;
alias c_gtk_icon_theme_list_contexts  gtk_icon_theme_list_contexts;
alias c_gtk_icon_theme_list_icons  gtk_icon_theme_list_icons;
alias c_gtk_icon_theme_get_icon_sizes  gtk_icon_theme_get_icon_sizes;
alias c_gtk_icon_theme_get_example_icon_name  gtk_icon_theme_get_example_icon_name;
alias c_gtk_icon_theme_rescan_if_needed  gtk_icon_theme_rescan_if_needed;
alias c_gtk_icon_theme_add_builtin_icon  gtk_icon_theme_add_builtin_icon;

// gtk.IconInfo

alias c_gtk_icon_info_copy  gtk_icon_info_copy;
alias c_gtk_icon_info_free  gtk_icon_info_free;
alias c_gtk_icon_info_new_for_pixbuf  gtk_icon_info_new_for_pixbuf;
alias c_gtk_icon_info_get_base_size  gtk_icon_info_get_base_size;
alias c_gtk_icon_info_get_filename  gtk_icon_info_get_filename;
alias c_gtk_icon_info_get_builtin_pixbuf  gtk_icon_info_get_builtin_pixbuf;
alias c_gtk_icon_info_load_icon  gtk_icon_info_load_icon;
alias c_gtk_icon_info_load_symbolic  gtk_icon_info_load_symbolic;
alias c_gtk_icon_info_load_symbolic_for_style  gtk_icon_info_load_symbolic_for_style;
alias c_gtk_icon_info_load_symbolic_for_context  gtk_icon_info_load_symbolic_for_context;
alias c_gtk_icon_info_set_raw_coordinates  gtk_icon_info_set_raw_coordinates;
alias c_gtk_icon_info_get_embedded_rect  gtk_icon_info_get_embedded_rect;
alias c_gtk_icon_info_get_attach_points  gtk_icon_info_get_attach_points;
alias c_gtk_icon_info_get_display_name  gtk_icon_info_get_display_name;

// gtk.IconSource

alias c_gtk_icon_source_copy  gtk_icon_source_copy;
alias c_gtk_icon_source_free  gtk_icon_source_free;
alias c_gtk_icon_source_get_direction  gtk_icon_source_get_direction;
alias c_gtk_icon_source_get_direction_wildcarded  gtk_icon_source_get_direction_wildcarded;
alias c_gtk_icon_source_get_filename  gtk_icon_source_get_filename;
alias c_gtk_icon_source_get_pixbuf  gtk_icon_source_get_pixbuf;
alias c_gtk_icon_source_get_icon_name  gtk_icon_source_get_icon_name;
alias c_gtk_icon_source_get_size  gtk_icon_source_get_size;
alias c_gtk_icon_source_get_size_wildcarded  gtk_icon_source_get_size_wildcarded;
alias c_gtk_icon_source_get_state  gtk_icon_source_get_state;
alias c_gtk_icon_source_get_state_wildcarded  gtk_icon_source_get_state_wildcarded;
alias c_gtk_icon_source_new  gtk_icon_source_new;
alias c_gtk_icon_source_set_direction  gtk_icon_source_set_direction;
alias c_gtk_icon_source_set_direction_wildcarded  gtk_icon_source_set_direction_wildcarded;
alias c_gtk_icon_source_set_filename  gtk_icon_source_set_filename;
alias c_gtk_icon_source_set_pixbuf  gtk_icon_source_set_pixbuf;
alias c_gtk_icon_source_set_icon_name  gtk_icon_source_set_icon_name;
alias c_gtk_icon_source_set_size  gtk_icon_source_set_size;
alias c_gtk_icon_source_set_size_wildcarded  gtk_icon_source_set_size_wildcarded;
alias c_gtk_icon_source_set_state  gtk_icon_source_set_state;
alias c_gtk_icon_source_set_state_wildcarded  gtk_icon_source_set_state_wildcarded;

// gtk.IconFactory

alias c_gtk_icon_factory_add  gtk_icon_factory_add;
alias c_gtk_icon_factory_add_default  gtk_icon_factory_add_default;
alias c_gtk_icon_factory_lookup  gtk_icon_factory_lookup;
alias c_gtk_icon_factory_lookup_default  gtk_icon_factory_lookup_default;
alias c_gtk_icon_factory_new  gtk_icon_factory_new;
alias c_gtk_icon_factory_remove_default  gtk_icon_factory_remove_default;

// gtk.IconSet

alias c_gtk_icon_set_add_source  gtk_icon_set_add_source;
alias c_gtk_icon_set_copy  gtk_icon_set_copy;
alias c_gtk_icon_set_new  gtk_icon_set_new;
alias c_gtk_icon_set_new_from_pixbuf  gtk_icon_set_new_from_pixbuf;
alias c_gtk_icon_set_ref  gtk_icon_set_ref;
alias c_gtk_icon_set_render_icon  gtk_icon_set_render_icon;
alias c_gtk_icon_set_render_icon_pixbuf  gtk_icon_set_render_icon_pixbuf;
alias c_gtk_icon_set_unref  gtk_icon_set_unref;
alias c_gtk_icon_set_get_sizes  gtk_icon_set_get_sizes;

// gtk.IconSize

alias c_gtk_icon_size_lookup  gtk_icon_size_lookup;
alias c_gtk_icon_size_lookup_for_settings  gtk_icon_size_lookup_for_settings;
alias c_gtk_icon_size_register  gtk_icon_size_register;
alias c_gtk_icon_size_register_alias  gtk_icon_size_register_alias;
alias c_gtk_icon_size_from_name  gtk_icon_size_from_name;
alias c_gtk_icon_size_get_name  gtk_icon_size_get_name;

// gtk.NumerableIcon

alias c_gtk_numerable_icon_new  gtk_numerable_icon_new;
alias c_gtk_numerable_icon_new_with_style_context  gtk_numerable_icon_new_with_style_context;
alias c_gtk_numerable_icon_get_background_gicon  gtk_numerable_icon_get_background_gicon;
alias c_gtk_numerable_icon_set_background_gicon  gtk_numerable_icon_set_background_gicon;
alias c_gtk_numerable_icon_get_background_icon_name  gtk_numerable_icon_get_background_icon_name;
alias c_gtk_numerable_icon_set_background_icon_name  gtk_numerable_icon_set_background_icon_name;
alias c_gtk_numerable_icon_get_count  gtk_numerable_icon_get_count;
alias c_gtk_numerable_icon_set_count  gtk_numerable_icon_set_count;
alias c_gtk_numerable_icon_get_label  gtk_numerable_icon_get_label;
alias c_gtk_numerable_icon_set_label  gtk_numerable_icon_set_label;
alias c_gtk_numerable_icon_get_style_context  gtk_numerable_icon_get_style_context;
alias c_gtk_numerable_icon_set_style_context  gtk_numerable_icon_set_style_context;

// gtk.RcStyle

alias c_gtk_rc_scanner_new  gtk_rc_scanner_new;
alias c_gtk_rc_get_style  gtk_rc_get_style;
alias c_gtk_rc_get_style_by_paths  gtk_rc_get_style_by_paths;
alias c_gtk_rc_parse  gtk_rc_parse;
alias c_gtk_rc_parse_string  gtk_rc_parse_string;
alias c_gtk_rc_reparse_all  gtk_rc_reparse_all;
alias c_gtk_rc_reparse_all_for_settings  gtk_rc_reparse_all_for_settings;
alias c_gtk_rc_reset_styles  gtk_rc_reset_styles;
alias c_gtk_rc_add_default_file  gtk_rc_add_default_file;
alias c_gtk_rc_get_default_files  gtk_rc_get_default_files;
alias c_gtk_rc_set_default_files  gtk_rc_set_default_files;
alias c_gtk_rc_parse_color  gtk_rc_parse_color;
alias c_gtk_rc_parse_color_full  gtk_rc_parse_color_full;
alias c_gtk_rc_parse_state  gtk_rc_parse_state;
alias c_gtk_rc_parse_priority  gtk_rc_parse_priority;
alias c_gtk_rc_find_module_in_path  gtk_rc_find_module_in_path;
alias c_gtk_rc_find_pixmap_in_path  gtk_rc_find_pixmap_in_path;
alias c_gtk_rc_get_module_dir  gtk_rc_get_module_dir;
alias c_gtk_rc_get_im_module_path  gtk_rc_get_im_module_path;
alias c_gtk_rc_get_im_module_file  gtk_rc_get_im_module_file;
alias c_gtk_rc_get_theme_dir  gtk_rc_get_theme_dir;
alias c_gtk_rc_style_new  gtk_rc_style_new;
alias c_gtk_rc_style_copy  gtk_rc_style_copy;

// gtk.Style

alias c_gtk_style_new  gtk_style_new;
alias c_gtk_style_copy  gtk_style_copy;
alias c_gtk_style_attach  gtk_style_attach;
alias c_gtk_style_detach  gtk_style_detach;
alias c_gtk_style_has_context  gtk_style_has_context;
alias c_gtk_style_set_background  gtk_style_set_background;
alias c_gtk_style_apply_default_background  gtk_style_apply_default_background;
alias c_gtk_style_lookup_color  gtk_style_lookup_color;
alias c_gtk_style_lookup_icon_set  gtk_style_lookup_icon_set;
alias c_gtk_style_render_icon  gtk_style_render_icon;
alias c_gtk_style_get_style_property  gtk_style_get_style_property;
alias c_gtk_style_get_valist  gtk_style_get_valist;
alias c_gtk_style_get  gtk_style_get;
alias c_gtk_paint_arrow  gtk_paint_arrow;
alias c_gtk_paint_box  gtk_paint_box;
alias c_gtk_paint_box_gap  gtk_paint_box_gap;
alias c_gtk_paint_check  gtk_paint_check;
alias c_gtk_paint_diamond  gtk_paint_diamond;
alias c_gtk_paint_extension  gtk_paint_extension;
alias c_gtk_paint_flat_box  gtk_paint_flat_box;
alias c_gtk_paint_focus  gtk_paint_focus;
alias c_gtk_paint_handle  gtk_paint_handle;
alias c_gtk_paint_hline  gtk_paint_hline;
alias c_gtk_paint_option  gtk_paint_option;
alias c_gtk_paint_shadow  gtk_paint_shadow;
alias c_gtk_paint_shadow_gap  gtk_paint_shadow_gap;
alias c_gtk_paint_slider  gtk_paint_slider;
alias c_gtk_paint_spinner  gtk_paint_spinner;
alias c_gtk_paint_tab  gtk_paint_tab;
alias c_gtk_paint_vline  gtk_paint_vline;
alias c_gtk_paint_expander  gtk_paint_expander;
alias c_gtk_paint_layout  gtk_paint_layout;
alias c_gtk_paint_resize_grip  gtk_paint_resize_grip;
alias c_gtk_draw_insertion_cursor  gtk_draw_insertion_cursor;

// gtk.Dialog

alias c_gtk_dialog_new  gtk_dialog_new;
alias c_gtk_dialog_new_with_buttons  gtk_dialog_new_with_buttons;
alias c_gtk_dialog_run  gtk_dialog_run;
alias c_gtk_dialog_response  gtk_dialog_response;
alias c_gtk_dialog_add_button  gtk_dialog_add_button;
alias c_gtk_dialog_add_buttons  gtk_dialog_add_buttons;
alias c_gtk_dialog_add_action_widget  gtk_dialog_add_action_widget;
alias c_gtk_dialog_set_default_response  gtk_dialog_set_default_response;
alias c_gtk_dialog_set_response_sensitive  gtk_dialog_set_response_sensitive;
alias c_gtk_dialog_get_response_for_widget  gtk_dialog_get_response_for_widget;
alias c_gtk_dialog_get_widget_for_response  gtk_dialog_get_widget_for_response;
alias c_gtk_dialog_get_action_area  gtk_dialog_get_action_area;
alias c_gtk_dialog_get_content_area  gtk_dialog_get_content_area;
alias c_gtk_alternative_dialog_button_order  gtk_alternative_dialog_button_order;
alias c_gtk_dialog_set_alternative_button_order  gtk_dialog_set_alternative_button_order;
alias c_gtk_dialog_set_alternative_button_order_from_array  gtk_dialog_set_alternative_button_order_from_array;

// gtk.Invisible

alias c_gtk_invisible_new  gtk_invisible_new;
alias c_gtk_invisible_new_for_screen  gtk_invisible_new_for_screen;
alias c_gtk_invisible_set_screen  gtk_invisible_set_screen;
alias c_gtk_invisible_get_screen  gtk_invisible_get_screen;

// gtk.MessageDialog

alias c_gtk_message_dialog_new  gtk_message_dialog_new;
alias c_gtk_message_dialog_new_with_markup  gtk_message_dialog_new_with_markup;
alias c_gtk_message_dialog_set_markup  gtk_message_dialog_set_markup;
alias c_gtk_message_dialog_set_image  gtk_message_dialog_set_image;
alias c_gtk_message_dialog_get_image  gtk_message_dialog_get_image;
alias c_gtk_message_dialog_format_secondary_text  gtk_message_dialog_format_secondary_text;
alias c_gtk_message_dialog_format_secondary_markup  gtk_message_dialog_format_secondary_markup;
alias c_gtk_message_dialog_get_message_area  gtk_message_dialog_get_message_area;

// gtk.PopupBox


// gtk.Window

alias c_gtk_window_new  gtk_window_new;
alias c_gtk_window_set_title  gtk_window_set_title;
alias c_gtk_window_set_wmclass  gtk_window_set_wmclass;
alias c_gtk_window_set_resizable  gtk_window_set_resizable;
alias c_gtk_window_get_resizable  gtk_window_get_resizable;
alias c_gtk_window_add_accel_group  gtk_window_add_accel_group;
alias c_gtk_window_remove_accel_group  gtk_window_remove_accel_group;
alias c_gtk_window_activate_focus  gtk_window_activate_focus;
alias c_gtk_window_activate_default  gtk_window_activate_default;
alias c_gtk_window_set_modal  gtk_window_set_modal;
alias c_gtk_window_set_default_size  gtk_window_set_default_size;
alias c_gtk_window_set_default_geometry  gtk_window_set_default_geometry;
alias c_gtk_window_set_geometry_hints  gtk_window_set_geometry_hints;
alias c_gtk_window_set_gravity  gtk_window_set_gravity;
alias c_gtk_window_get_gravity  gtk_window_get_gravity;
alias c_gtk_window_set_position  gtk_window_set_position;
alias c_gtk_window_set_transient_for  gtk_window_set_transient_for;
alias c_gtk_window_set_attached_to  gtk_window_set_attached_to;
alias c_gtk_window_set_destroy_with_parent  gtk_window_set_destroy_with_parent;
alias c_gtk_window_set_hide_titlebar_when_maximized  gtk_window_set_hide_titlebar_when_maximized;
alias c_gtk_window_set_screen  gtk_window_set_screen;
alias c_gtk_window_get_screen  gtk_window_get_screen;
alias c_gtk_window_is_active  gtk_window_is_active;
alias c_gtk_window_has_toplevel_focus  gtk_window_has_toplevel_focus;
alias c_gtk_window_list_toplevels  gtk_window_list_toplevels;
alias c_gtk_window_add_mnemonic  gtk_window_add_mnemonic;
alias c_gtk_window_remove_mnemonic  gtk_window_remove_mnemonic;
alias c_gtk_window_mnemonic_activate  gtk_window_mnemonic_activate;
alias c_gtk_window_activate_key  gtk_window_activate_key;
alias c_gtk_window_propagate_key_event  gtk_window_propagate_key_event;
alias c_gtk_window_get_focus  gtk_window_get_focus;
alias c_gtk_window_set_focus  gtk_window_set_focus;
alias c_gtk_window_get_default_widget  gtk_window_get_default_widget;
alias c_gtk_window_set_default  gtk_window_set_default;
alias c_gtk_window_present  gtk_window_present;
alias c_gtk_window_present_with_time  gtk_window_present_with_time;
alias c_gtk_window_iconify  gtk_window_iconify;
alias c_gtk_window_deiconify  gtk_window_deiconify;
alias c_gtk_window_stick  gtk_window_stick;
alias c_gtk_window_unstick  gtk_window_unstick;
alias c_gtk_window_maximize  gtk_window_maximize;
alias c_gtk_window_unmaximize  gtk_window_unmaximize;
alias c_gtk_window_fullscreen  gtk_window_fullscreen;
alias c_gtk_window_unfullscreen  gtk_window_unfullscreen;
alias c_gtk_window_set_keep_above  gtk_window_set_keep_above;
alias c_gtk_window_set_keep_below  gtk_window_set_keep_below;
alias c_gtk_window_begin_resize_drag  gtk_window_begin_resize_drag;
alias c_gtk_window_begin_move_drag  gtk_window_begin_move_drag;
alias c_gtk_window_set_decorated  gtk_window_set_decorated;
alias c_gtk_window_set_deletable  gtk_window_set_deletable;
alias c_gtk_window_set_mnemonic_modifier  gtk_window_set_mnemonic_modifier;
alias c_gtk_window_set_type_hint  gtk_window_set_type_hint;
alias c_gtk_window_set_skip_taskbar_hint  gtk_window_set_skip_taskbar_hint;
alias c_gtk_window_set_skip_pager_hint  gtk_window_set_skip_pager_hint;
alias c_gtk_window_set_urgency_hint  gtk_window_set_urgency_hint;
alias c_gtk_window_set_accept_focus  gtk_window_set_accept_focus;
alias c_gtk_window_set_focus_on_map  gtk_window_set_focus_on_map;
alias c_gtk_window_set_startup_id  gtk_window_set_startup_id;
alias c_gtk_window_set_role  gtk_window_set_role;
alias c_gtk_window_get_decorated  gtk_window_get_decorated;
alias c_gtk_window_get_deletable  gtk_window_get_deletable;
alias c_gtk_window_get_default_icon_list  gtk_window_get_default_icon_list;
alias c_gtk_window_get_default_icon_name  gtk_window_get_default_icon_name;
alias c_gtk_window_get_default_size  gtk_window_get_default_size;
alias c_gtk_window_get_destroy_with_parent  gtk_window_get_destroy_with_parent;
alias c_gtk_window_get_hide_titlebar_when_maximized  gtk_window_get_hide_titlebar_when_maximized;
alias c_gtk_window_get_icon  gtk_window_get_icon;
alias c_gtk_window_get_icon_list  gtk_window_get_icon_list;
alias c_gtk_window_get_icon_name  gtk_window_get_icon_name;
alias c_gtk_window_get_mnemonic_modifier  gtk_window_get_mnemonic_modifier;
alias c_gtk_window_get_modal  gtk_window_get_modal;
alias c_gtk_window_get_position  gtk_window_get_position;
alias c_gtk_window_get_role  gtk_window_get_role;
alias c_gtk_window_get_size  gtk_window_get_size;
alias c_gtk_window_get_title  gtk_window_get_title;
alias c_gtk_window_get_transient_for  gtk_window_get_transient_for;
alias c_gtk_window_get_attached_to  gtk_window_get_attached_to;
alias c_gtk_window_get_type_hint  gtk_window_get_type_hint;
alias c_gtk_window_get_skip_taskbar_hint  gtk_window_get_skip_taskbar_hint;
alias c_gtk_window_get_skip_pager_hint  gtk_window_get_skip_pager_hint;
alias c_gtk_window_get_urgency_hint  gtk_window_get_urgency_hint;
alias c_gtk_window_get_accept_focus  gtk_window_get_accept_focus;
alias c_gtk_window_get_focus_on_map  gtk_window_get_focus_on_map;
alias c_gtk_window_get_group  gtk_window_get_group;
alias c_gtk_window_has_group  gtk_window_has_group;
alias c_gtk_window_get_window_type  gtk_window_get_window_type;
alias c_gtk_window_move  gtk_window_move;
alias c_gtk_window_parse_geometry  gtk_window_parse_geometry;
alias c_gtk_window_reshow_with_initial_size  gtk_window_reshow_with_initial_size;
alias c_gtk_window_resize  gtk_window_resize;
alias c_gtk_window_resize_to_geometry  gtk_window_resize_to_geometry;
alias c_gtk_window_set_default_icon_list  gtk_window_set_default_icon_list;
alias c_gtk_window_set_default_icon  gtk_window_set_default_icon;
alias c_gtk_window_set_default_icon_from_file  gtk_window_set_default_icon_from_file;
alias c_gtk_window_set_default_icon_name  gtk_window_set_default_icon_name;
alias c_gtk_window_set_icon  gtk_window_set_icon;
alias c_gtk_window_set_icon_list  gtk_window_set_icon_list;
alias c_gtk_window_set_icon_from_file  gtk_window_set_icon_from_file;
alias c_gtk_window_set_icon_name  gtk_window_set_icon_name;
alias c_gtk_window_set_auto_startup_notification  gtk_window_set_auto_startup_notification;
alias c_gtk_window_get_opacity  gtk_window_get_opacity;
alias c_gtk_window_set_opacity  gtk_window_set_opacity;
alias c_gtk_window_get_mnemonics_visible  gtk_window_get_mnemonics_visible;
alias c_gtk_window_set_mnemonics_visible  gtk_window_set_mnemonics_visible;
alias c_gtk_window_get_focus_visible  gtk_window_get_focus_visible;
alias c_gtk_window_set_focus_visible  gtk_window_set_focus_visible;
alias c_gtk_window_set_has_resize_grip  gtk_window_set_has_resize_grip;
alias c_gtk_window_get_has_resize_grip  gtk_window_get_has_resize_grip;
alias c_gtk_window_resize_grip_is_visible  gtk_window_resize_grip_is_visible;
alias c_gtk_window_get_resize_grip_area  gtk_window_get_resize_grip_area;
alias c_gtk_window_get_application  gtk_window_get_application;
alias c_gtk_window_set_application  gtk_window_set_application;
alias c_gtk_window_set_has_user_ref_count  gtk_window_set_has_user_ref_count;

// gtk.


// gtk.WindowGroup

alias c_gtk_window_group_new  gtk_window_group_new;
alias c_gtk_window_group_add_window  gtk_window_group_add_window;
alias c_gtk_window_group_remove_window  gtk_window_group_remove_window;
alias c_gtk_window_group_list_windows  gtk_window_group_list_windows;
alias c_gtk_window_group_get_current_grab  gtk_window_group_get_current_grab;
alias c_gtk_window_group_get_current_device_grab  gtk_window_group_get_current_device_grab;

// gtk.AboutDialog

alias c_gtk_about_dialog_new  gtk_about_dialog_new;
alias c_gtk_about_dialog_get_program_name  gtk_about_dialog_get_program_name;
alias c_gtk_about_dialog_set_program_name  gtk_about_dialog_set_program_name;
alias c_gtk_about_dialog_get_version  gtk_about_dialog_get_version;
alias c_gtk_about_dialog_set_version  gtk_about_dialog_set_version;
alias c_gtk_about_dialog_get_copyright  gtk_about_dialog_get_copyright;
alias c_gtk_about_dialog_set_copyright  gtk_about_dialog_set_copyright;
alias c_gtk_about_dialog_get_comments  gtk_about_dialog_get_comments;
alias c_gtk_about_dialog_set_comments  gtk_about_dialog_set_comments;
alias c_gtk_about_dialog_get_license  gtk_about_dialog_get_license;
alias c_gtk_about_dialog_set_license  gtk_about_dialog_set_license;
alias c_gtk_about_dialog_get_wrap_license  gtk_about_dialog_get_wrap_license;
alias c_gtk_about_dialog_set_wrap_license  gtk_about_dialog_set_wrap_license;
alias c_gtk_about_dialog_get_license_type  gtk_about_dialog_get_license_type;
alias c_gtk_about_dialog_set_license_type  gtk_about_dialog_set_license_type;
alias c_gtk_about_dialog_get_website  gtk_about_dialog_get_website;
alias c_gtk_about_dialog_set_website  gtk_about_dialog_set_website;
alias c_gtk_about_dialog_get_website_label  gtk_about_dialog_get_website_label;
alias c_gtk_about_dialog_set_website_label  gtk_about_dialog_set_website_label;
alias c_gtk_about_dialog_get_authors  gtk_about_dialog_get_authors;
alias c_gtk_about_dialog_set_authors  gtk_about_dialog_set_authors;
alias c_gtk_about_dialog_get_artists  gtk_about_dialog_get_artists;
alias c_gtk_about_dialog_set_artists  gtk_about_dialog_set_artists;
alias c_gtk_about_dialog_get_documenters  gtk_about_dialog_get_documenters;
alias c_gtk_about_dialog_set_documenters  gtk_about_dialog_set_documenters;
alias c_gtk_about_dialog_get_translator_credits  gtk_about_dialog_get_translator_credits;
alias c_gtk_about_dialog_set_translator_credits  gtk_about_dialog_set_translator_credits;
alias c_gtk_about_dialog_get_logo  gtk_about_dialog_get_logo;
alias c_gtk_about_dialog_set_logo  gtk_about_dialog_set_logo;
alias c_gtk_about_dialog_get_logo_icon_name  gtk_about_dialog_get_logo_icon_name;
alias c_gtk_about_dialog_set_logo_icon_name  gtk_about_dialog_set_logo_icon_name;
alias c_gtk_about_dialog_add_credit_section  gtk_about_dialog_add_credit_section;
alias c_gtk_show_about_dialog  gtk_show_about_dialog;

// gtk.Assistant

alias c_gtk_assistant_new  gtk_assistant_new;
alias c_gtk_assistant_get_current_page  gtk_assistant_get_current_page;
alias c_gtk_assistant_set_current_page  gtk_assistant_set_current_page;
alias c_gtk_assistant_get_n_pages  gtk_assistant_get_n_pages;
alias c_gtk_assistant_get_nth_page  gtk_assistant_get_nth_page;
alias c_gtk_assistant_prepend_page  gtk_assistant_prepend_page;
alias c_gtk_assistant_append_page  gtk_assistant_append_page;
alias c_gtk_assistant_insert_page  gtk_assistant_insert_page;
alias c_gtk_assistant_remove_page  gtk_assistant_remove_page;
alias c_gtk_assistant_set_forward_page_func  gtk_assistant_set_forward_page_func;
alias c_gtk_assistant_set_page_type  gtk_assistant_set_page_type;
alias c_gtk_assistant_get_page_type  gtk_assistant_get_page_type;
alias c_gtk_assistant_set_page_title  gtk_assistant_set_page_title;
alias c_gtk_assistant_get_page_title  gtk_assistant_get_page_title;
alias c_gtk_assistant_set_page_header_image  gtk_assistant_set_page_header_image;
alias c_gtk_assistant_get_page_header_image  gtk_assistant_get_page_header_image;
alias c_gtk_assistant_set_page_side_image  gtk_assistant_set_page_side_image;
alias c_gtk_assistant_get_page_side_image  gtk_assistant_get_page_side_image;
alias c_gtk_assistant_set_page_complete  gtk_assistant_set_page_complete;
alias c_gtk_assistant_get_page_complete  gtk_assistant_get_page_complete;
alias c_gtk_assistant_add_action_widget  gtk_assistant_add_action_widget;
alias c_gtk_assistant_remove_action_widget  gtk_assistant_remove_action_widget;
alias c_gtk_assistant_update_buttons_state  gtk_assistant_update_buttons_state;
alias c_gtk_assistant_commit  gtk_assistant_commit;
alias c_gtk_assistant_next_page  gtk_assistant_next_page;
alias c_gtk_assistant_previous_page  gtk_assistant_previous_page;

// gtk.OffscreenWindow

alias c_gtk_offscreen_window_new  gtk_offscreen_window_new;
alias c_gtk_offscreen_window_get_surface  gtk_offscreen_window_get_surface;
alias c_gtk_offscreen_window_get_pixbuf  gtk_offscreen_window_get_pixbuf;

// gtk.AccelLabel

alias c_gtk_accel_label_new  gtk_accel_label_new;
alias c_gtk_accel_label_set_accel_closure  gtk_accel_label_set_accel_closure;
alias c_gtk_accel_label_get_accel_widget  gtk_accel_label_get_accel_widget;
alias c_gtk_accel_label_set_accel_widget  gtk_accel_label_set_accel_widget;
alias c_gtk_accel_label_get_accel_width  gtk_accel_label_get_accel_width;
alias c_gtk_accel_label_set_accel  gtk_accel_label_set_accel;
alias c_gtk_accel_label_refetch  gtk_accel_label_refetch;

// gtk.Image

alias c_gtk_image_get_icon_set  gtk_image_get_icon_set;
alias c_gtk_image_get_pixbuf  gtk_image_get_pixbuf;
alias c_gtk_image_get_stock  gtk_image_get_stock;
alias c_gtk_image_get_animation  gtk_image_get_animation;
alias c_gtk_image_get_icon_name  gtk_image_get_icon_name;
alias c_gtk_image_get_gicon  gtk_image_get_gicon;
alias c_gtk_image_get_storage_type  gtk_image_get_storage_type;
alias c_gtk_image_new_from_file  gtk_image_new_from_file;
alias c_gtk_image_new_from_icon_set  gtk_image_new_from_icon_set;
alias c_gtk_image_new_from_pixbuf  gtk_image_new_from_pixbuf;
alias c_gtk_image_new_from_stock  gtk_image_new_from_stock;
alias c_gtk_image_new_from_animation  gtk_image_new_from_animation;
alias c_gtk_image_new_from_icon_name  gtk_image_new_from_icon_name;
alias c_gtk_image_new_from_gicon  gtk_image_new_from_gicon;
alias c_gtk_image_new_from_resource  gtk_image_new_from_resource;
alias c_gtk_image_set_from_file  gtk_image_set_from_file;
alias c_gtk_image_set_from_icon_set  gtk_image_set_from_icon_set;
alias c_gtk_image_set_from_pixbuf  gtk_image_set_from_pixbuf;
alias c_gtk_image_set_from_stock  gtk_image_set_from_stock;
alias c_gtk_image_set_from_animation  gtk_image_set_from_animation;
alias c_gtk_image_set_from_icon_name  gtk_image_set_from_icon_name;
alias c_gtk_image_set_from_gicon  gtk_image_set_from_gicon;
alias c_gtk_image_set_from_resource  gtk_image_set_from_resource;
alias c_gtk_image_clear  gtk_image_clear;
alias c_gtk_image_new  gtk_image_new;
alias c_gtk_image_set_pixel_size  gtk_image_set_pixel_size;
alias c_gtk_image_get_pixel_size  gtk_image_get_pixel_size;

// gtk.Label

alias c_gtk_label_new  gtk_label_new;
alias c_gtk_label_set_text  gtk_label_set_text;
alias c_gtk_label_set_attributes  gtk_label_set_attributes;
alias c_gtk_label_set_markup  gtk_label_set_markup;
alias c_gtk_label_set_markup_with_mnemonic  gtk_label_set_markup_with_mnemonic;
alias c_gtk_label_set_pattern  gtk_label_set_pattern;
alias c_gtk_label_set_justify  gtk_label_set_justify;
alias c_gtk_label_set_ellipsize  gtk_label_set_ellipsize;
alias c_gtk_label_set_width_chars  gtk_label_set_width_chars;
alias c_gtk_label_set_max_width_chars  gtk_label_set_max_width_chars;
alias c_gtk_label_set_line_wrap  gtk_label_set_line_wrap;
alias c_gtk_label_set_line_wrap_mode  gtk_label_set_line_wrap_mode;
alias c_gtk_label_get_layout_offsets  gtk_label_get_layout_offsets;
alias c_gtk_label_get_mnemonic_keyval  gtk_label_get_mnemonic_keyval;
alias c_gtk_label_get_selectable  gtk_label_get_selectable;
alias c_gtk_label_get_text  gtk_label_get_text;
alias c_gtk_label_new_with_mnemonic  gtk_label_new_with_mnemonic;
alias c_gtk_label_select_region  gtk_label_select_region;
alias c_gtk_label_set_mnemonic_widget  gtk_label_set_mnemonic_widget;
alias c_gtk_label_set_selectable  gtk_label_set_selectable;
alias c_gtk_label_set_text_with_mnemonic  gtk_label_set_text_with_mnemonic;
alias c_gtk_label_get_attributes  gtk_label_get_attributes;
alias c_gtk_label_get_justify  gtk_label_get_justify;
alias c_gtk_label_get_ellipsize  gtk_label_get_ellipsize;
alias c_gtk_label_get_width_chars  gtk_label_get_width_chars;
alias c_gtk_label_get_max_width_chars  gtk_label_get_max_width_chars;
alias c_gtk_label_get_label  gtk_label_get_label;
alias c_gtk_label_get_layout  gtk_label_get_layout;
alias c_gtk_label_get_line_wrap  gtk_label_get_line_wrap;
alias c_gtk_label_get_line_wrap_mode  gtk_label_get_line_wrap_mode;
alias c_gtk_label_get_mnemonic_widget  gtk_label_get_mnemonic_widget;
alias c_gtk_label_get_selection_bounds  gtk_label_get_selection_bounds;
alias c_gtk_label_get_use_markup  gtk_label_get_use_markup;
alias c_gtk_label_get_use_underline  gtk_label_get_use_underline;
alias c_gtk_label_get_single_line_mode  gtk_label_get_single_line_mode;
alias c_gtk_label_get_angle  gtk_label_get_angle;
alias c_gtk_label_set_label  gtk_label_set_label;
alias c_gtk_label_set_use_markup  gtk_label_set_use_markup;
alias c_gtk_label_set_use_underline  gtk_label_set_use_underline;
alias c_gtk_label_set_single_line_mode  gtk_label_set_single_line_mode;
alias c_gtk_label_set_angle  gtk_label_set_angle;
alias c_gtk_label_get_current_uri  gtk_label_get_current_uri;
alias c_gtk_label_set_track_visited_links  gtk_label_set_track_visited_links;
alias c_gtk_label_get_track_visited_links  gtk_label_get_track_visited_links;

// gtk.ProgressBar

alias c_gtk_progress_bar_new  gtk_progress_bar_new;
alias c_gtk_progress_bar_pulse  gtk_progress_bar_pulse;
alias c_gtk_progress_bar_set_fraction  gtk_progress_bar_set_fraction;
alias c_gtk_progress_bar_get_fraction  gtk_progress_bar_get_fraction;
alias c_gtk_progress_bar_set_inverted  gtk_progress_bar_set_inverted;
alias c_gtk_progress_bar_get_inverted  gtk_progress_bar_get_inverted;
alias c_gtk_progress_bar_set_show_text  gtk_progress_bar_set_show_text;
alias c_gtk_progress_bar_get_show_text  gtk_progress_bar_get_show_text;
alias c_gtk_progress_bar_set_text  gtk_progress_bar_set_text;
alias c_gtk_progress_bar_get_text  gtk_progress_bar_get_text;
alias c_gtk_progress_bar_set_ellipsize  gtk_progress_bar_set_ellipsize;
alias c_gtk_progress_bar_get_ellipsize  gtk_progress_bar_get_ellipsize;
alias c_gtk_progress_bar_set_pulse_step  gtk_progress_bar_set_pulse_step;
alias c_gtk_progress_bar_get_pulse_step  gtk_progress_bar_get_pulse_step;

// gtk.Statusbar

alias c_gtk_statusbar_new  gtk_statusbar_new;
alias c_gtk_statusbar_get_context_id  gtk_statusbar_get_context_id;
alias c_gtk_statusbar_push  gtk_statusbar_push;
alias c_gtk_statusbar_pop  gtk_statusbar_pop;
alias c_gtk_statusbar_remove  gtk_statusbar_remove;
alias c_gtk_statusbar_remove_all  gtk_statusbar_remove_all;
alias c_gtk_statusbar_get_message_area  gtk_statusbar_get_message_area;

// gtk.LevelBar

alias c_gtk_level_bar_new  gtk_level_bar_new;
alias c_gtk_level_bar_new_for_interval  gtk_level_bar_new_for_interval;
alias c_gtk_level_bar_set_mode  gtk_level_bar_set_mode;
alias c_gtk_level_bar_get_mode  gtk_level_bar_get_mode;
alias c_gtk_level_bar_set_value  gtk_level_bar_set_value;
alias c_gtk_level_bar_get_value  gtk_level_bar_get_value;
alias c_gtk_level_bar_set_min_value  gtk_level_bar_set_min_value;
alias c_gtk_level_bar_get_min_value  gtk_level_bar_get_min_value;
alias c_gtk_level_bar_set_max_value  gtk_level_bar_set_max_value;
alias c_gtk_level_bar_get_max_value  gtk_level_bar_get_max_value;
alias c_gtk_level_bar_add_offset_value  gtk_level_bar_add_offset_value;
alias c_gtk_level_bar_remove_offset_value  gtk_level_bar_remove_offset_value;
alias c_gtk_level_bar_get_offset_value  gtk_level_bar_get_offset_value;

// gtk.InfoBar

alias c_gtk_info_bar_new  gtk_info_bar_new;
alias c_gtk_info_bar_new_with_buttons  gtk_info_bar_new_with_buttons;
alias c_gtk_info_bar_add_action_widget  gtk_info_bar_add_action_widget;
alias c_gtk_info_bar_add_button  gtk_info_bar_add_button;
alias c_gtk_info_bar_add_buttons  gtk_info_bar_add_buttons;
alias c_gtk_info_bar_set_response_sensitive  gtk_info_bar_set_response_sensitive;
alias c_gtk_info_bar_set_default_response  gtk_info_bar_set_default_response;
alias c_gtk_info_bar_response  gtk_info_bar_response;
alias c_gtk_info_bar_set_message_type  gtk_info_bar_set_message_type;
alias c_gtk_info_bar_get_message_type  gtk_info_bar_get_message_type;
alias c_gtk_info_bar_get_action_area  gtk_info_bar_get_action_area;
alias c_gtk_info_bar_get_content_area  gtk_info_bar_get_content_area;

// gtk.StatusIcon

alias c_gtk_status_icon_new  gtk_status_icon_new;
alias c_gtk_status_icon_new_from_pixbuf  gtk_status_icon_new_from_pixbuf;
alias c_gtk_status_icon_new_from_file  gtk_status_icon_new_from_file;
alias c_gtk_status_icon_new_from_stock  gtk_status_icon_new_from_stock;
alias c_gtk_status_icon_new_from_icon_name  gtk_status_icon_new_from_icon_name;
alias c_gtk_status_icon_new_from_gicon  gtk_status_icon_new_from_gicon;
alias c_gtk_status_icon_set_from_pixbuf  gtk_status_icon_set_from_pixbuf;
alias c_gtk_status_icon_set_from_file  gtk_status_icon_set_from_file;
alias c_gtk_status_icon_set_from_stock  gtk_status_icon_set_from_stock;
alias c_gtk_status_icon_set_from_icon_name  gtk_status_icon_set_from_icon_name;
alias c_gtk_status_icon_set_from_gicon  gtk_status_icon_set_from_gicon;
alias c_gtk_status_icon_get_storage_type  gtk_status_icon_get_storage_type;
alias c_gtk_status_icon_get_pixbuf  gtk_status_icon_get_pixbuf;
alias c_gtk_status_icon_get_stock  gtk_status_icon_get_stock;
alias c_gtk_status_icon_get_icon_name  gtk_status_icon_get_icon_name;
alias c_gtk_status_icon_get_gicon  gtk_status_icon_get_gicon;
alias c_gtk_status_icon_get_size  gtk_status_icon_get_size;
alias c_gtk_status_icon_set_screen  gtk_status_icon_set_screen;
alias c_gtk_status_icon_get_screen  gtk_status_icon_get_screen;
alias c_gtk_status_icon_set_tooltip_text  gtk_status_icon_set_tooltip_text;
alias c_gtk_status_icon_get_tooltip_text  gtk_status_icon_get_tooltip_text;
alias c_gtk_status_icon_set_tooltip_markup  gtk_status_icon_set_tooltip_markup;
alias c_gtk_status_icon_get_tooltip_markup  gtk_status_icon_get_tooltip_markup;
alias c_gtk_status_icon_set_has_tooltip  gtk_status_icon_set_has_tooltip;
alias c_gtk_status_icon_get_has_tooltip  gtk_status_icon_get_has_tooltip;
alias c_gtk_status_icon_set_title  gtk_status_icon_set_title;
alias c_gtk_status_icon_get_title  gtk_status_icon_get_title;
alias c_gtk_status_icon_set_name  gtk_status_icon_set_name;
alias c_gtk_status_icon_set_visible  gtk_status_icon_set_visible;
alias c_gtk_status_icon_get_visible  gtk_status_icon_get_visible;
alias c_gtk_status_icon_is_embedded  gtk_status_icon_is_embedded;
alias c_gtk_status_icon_position_menu  gtk_status_icon_position_menu;
alias c_gtk_status_icon_get_geometry  gtk_status_icon_get_geometry;
alias c_gtk_status_icon_get_x11_window_id  gtk_status_icon_get_x11_window_id;

// gtk.Spinner

alias c_gtk_spinner_new  gtk_spinner_new;
alias c_gtk_spinner_start  gtk_spinner_start;
alias c_gtk_spinner_stop  gtk_spinner_stop;

// gtk.Button

alias c_gtk_button_new  gtk_button_new;
alias c_gtk_button_new_with_label  gtk_button_new_with_label;
alias c_gtk_button_new_with_mnemonic  gtk_button_new_with_mnemonic;
alias c_gtk_button_new_from_stock  gtk_button_new_from_stock;
alias c_gtk_button_pressed  gtk_button_pressed;
alias c_gtk_button_released  gtk_button_released;
alias c_gtk_button_clicked  gtk_button_clicked;
alias c_gtk_button_enter  gtk_button_enter;
alias c_gtk_button_leave  gtk_button_leave;
alias c_gtk_button_set_relief  gtk_button_set_relief;
alias c_gtk_button_get_relief  gtk_button_get_relief;
alias c_gtk_button_get_label  gtk_button_get_label;
alias c_gtk_button_set_label  gtk_button_set_label;
alias c_gtk_button_get_use_stock  gtk_button_get_use_stock;
alias c_gtk_button_set_use_stock  gtk_button_set_use_stock;
alias c_gtk_button_get_use_underline  gtk_button_get_use_underline;
alias c_gtk_button_set_use_underline  gtk_button_set_use_underline;
alias c_gtk_button_set_focus_on_click  gtk_button_set_focus_on_click;
alias c_gtk_button_get_focus_on_click  gtk_button_get_focus_on_click;
alias c_gtk_button_set_alignment  gtk_button_set_alignment;
alias c_gtk_button_get_alignment  gtk_button_get_alignment;
alias c_gtk_button_set_image  gtk_button_set_image;
alias c_gtk_button_get_image  gtk_button_get_image;
alias c_gtk_button_set_image_position  gtk_button_set_image_position;
alias c_gtk_button_get_image_position  gtk_button_get_image_position;
alias c_gtk_button_set_always_show_image  gtk_button_set_always_show_image;
alias c_gtk_button_get_always_show_image  gtk_button_get_always_show_image;
alias c_gtk_button_get_event_window  gtk_button_get_event_window;

// gtk.CheckButton

alias c_gtk_check_button_new  gtk_check_button_new;
alias c_gtk_check_button_new_with_label  gtk_check_button_new_with_label;
alias c_gtk_check_button_new_with_mnemonic  gtk_check_button_new_with_mnemonic;

// gtk.RadioButton

alias c_gtk_radio_button_new  gtk_radio_button_new;
alias c_gtk_radio_button_new_from_widget  gtk_radio_button_new_from_widget;
alias c_gtk_radio_button_new_with_label  gtk_radio_button_new_with_label;
alias c_gtk_radio_button_new_with_label_from_widget  gtk_radio_button_new_with_label_from_widget;
alias c_gtk_radio_button_new_with_mnemonic  gtk_radio_button_new_with_mnemonic;
alias c_gtk_radio_button_new_with_mnemonic_from_widget  gtk_radio_button_new_with_mnemonic_from_widget;
alias c_gtk_radio_button_set_group  gtk_radio_button_set_group;
alias c_gtk_radio_button_get_group  gtk_radio_button_get_group;
alias c_gtk_radio_button_join_group  gtk_radio_button_join_group;

// gtk.ToggleButton

alias c_gtk_toggle_button_new  gtk_toggle_button_new;
alias c_gtk_toggle_button_new_with_label  gtk_toggle_button_new_with_label;
alias c_gtk_toggle_button_new_with_mnemonic  gtk_toggle_button_new_with_mnemonic;
alias c_gtk_toggle_button_set_mode  gtk_toggle_button_set_mode;
alias c_gtk_toggle_button_get_mode  gtk_toggle_button_get_mode;
alias c_gtk_toggle_button_toggled  gtk_toggle_button_toggled;
alias c_gtk_toggle_button_get_active  gtk_toggle_button_get_active;
alias c_gtk_toggle_button_set_active  gtk_toggle_button_set_active;
alias c_gtk_toggle_button_get_inconsistent  gtk_toggle_button_get_inconsistent;
alias c_gtk_toggle_button_set_inconsistent  gtk_toggle_button_set_inconsistent;

// gtk.LinkButton

alias c_gtk_link_button_new  gtk_link_button_new;
alias c_gtk_link_button_new_with_label  gtk_link_button_new_with_label;
alias c_gtk_link_button_get_uri  gtk_link_button_get_uri;
alias c_gtk_link_button_set_uri  gtk_link_button_set_uri;
alias c_gtk_link_button_get_visited  gtk_link_button_get_visited;
alias c_gtk_link_button_set_visited  gtk_link_button_set_visited;

// gtk.ScaleButton

alias c_gtk_scale_button_new  gtk_scale_button_new;
alias c_gtk_scale_button_set_adjustment  gtk_scale_button_set_adjustment;
alias c_gtk_scale_button_set_icons  gtk_scale_button_set_icons;
alias c_gtk_scale_button_set_value  gtk_scale_button_set_value;
alias c_gtk_scale_button_get_adjustment  gtk_scale_button_get_adjustment;
alias c_gtk_scale_button_get_value  gtk_scale_button_get_value;
alias c_gtk_scale_button_get_popup  gtk_scale_button_get_popup;
alias c_gtk_scale_button_get_plus_button  gtk_scale_button_get_plus_button;
alias c_gtk_scale_button_get_minus_button  gtk_scale_button_get_minus_button;

// gtk.VolumeButton

alias c_gtk_volume_button_new  gtk_volume_button_new;

// gtk.Switch

alias c_gtk_switch_new  gtk_switch_new;
alias c_gtk_switch_set_active  gtk_switch_set_active;
alias c_gtk_switch_get_active  gtk_switch_get_active;

// gtk.LockButton

alias c_gtk_lock_button_new  gtk_lock_button_new;
alias c_gtk_lock_button_get_permission  gtk_lock_button_get_permission;
alias c_gtk_lock_button_set_permission  gtk_lock_button_set_permission;

// gtk.MenuButton

alias c_gtk_menu_button_new  gtk_menu_button_new;
alias c_gtk_menu_button_set_popup  gtk_menu_button_set_popup;
alias c_gtk_menu_button_get_popup  gtk_menu_button_get_popup;
alias c_gtk_menu_button_set_menu_model  gtk_menu_button_set_menu_model;
alias c_gtk_menu_button_get_menu_model  gtk_menu_button_get_menu_model;
alias c_gtk_menu_button_set_direction  gtk_menu_button_set_direction;
alias c_gtk_menu_button_get_direction  gtk_menu_button_get_direction;
alias c_gtk_menu_button_set_align_widget  gtk_menu_button_set_align_widget;
alias c_gtk_menu_button_get_align_widget  gtk_menu_button_get_align_widget;

// gtk.Entry

alias c_gtk_entry_new  gtk_entry_new;
alias c_gtk_entry_new_with_buffer  gtk_entry_new_with_buffer;
alias c_gtk_entry_get_buffer  gtk_entry_get_buffer;
alias c_gtk_entry_set_buffer  gtk_entry_set_buffer;
alias c_gtk_entry_set_text  gtk_entry_set_text;
alias c_gtk_entry_get_text  gtk_entry_get_text;
alias c_gtk_entry_get_text_length  gtk_entry_get_text_length;
alias c_gtk_entry_get_text_area  gtk_entry_get_text_area;
alias c_gtk_entry_set_visibility  gtk_entry_set_visibility;
alias c_gtk_entry_set_invisible_char  gtk_entry_set_invisible_char;
alias c_gtk_entry_unset_invisible_char  gtk_entry_unset_invisible_char;
alias c_gtk_entry_set_max_length  gtk_entry_set_max_length;
alias c_gtk_entry_get_activates_default  gtk_entry_get_activates_default;
alias c_gtk_entry_get_has_frame  gtk_entry_get_has_frame;
alias c_gtk_entry_get_inner_border  gtk_entry_get_inner_border;
alias c_gtk_entry_get_width_chars  gtk_entry_get_width_chars;
alias c_gtk_entry_set_activates_default  gtk_entry_set_activates_default;
alias c_gtk_entry_set_has_frame  gtk_entry_set_has_frame;
alias c_gtk_entry_set_inner_border  gtk_entry_set_inner_border;
alias c_gtk_entry_set_width_chars  gtk_entry_set_width_chars;
alias c_gtk_entry_get_invisible_char  gtk_entry_get_invisible_char;
alias c_gtk_entry_set_alignment  gtk_entry_set_alignment;
alias c_gtk_entry_get_alignment  gtk_entry_get_alignment;
alias c_gtk_entry_set_placeholder_text  gtk_entry_set_placeholder_text;
alias c_gtk_entry_get_placeholder_text  gtk_entry_get_placeholder_text;
alias c_gtk_entry_set_overwrite_mode  gtk_entry_set_overwrite_mode;
alias c_gtk_entry_get_overwrite_mode  gtk_entry_get_overwrite_mode;
alias c_gtk_entry_get_layout  gtk_entry_get_layout;
alias c_gtk_entry_get_layout_offsets  gtk_entry_get_layout_offsets;
alias c_gtk_entry_layout_index_to_text_index  gtk_entry_layout_index_to_text_index;
alias c_gtk_entry_text_index_to_layout_index  gtk_entry_text_index_to_layout_index;
alias c_gtk_entry_set_attributes  gtk_entry_set_attributes;
alias c_gtk_entry_get_attributes  gtk_entry_get_attributes;
alias c_gtk_entry_get_max_length  gtk_entry_get_max_length;
alias c_gtk_entry_get_visibility  gtk_entry_get_visibility;
alias c_gtk_entry_set_completion  gtk_entry_set_completion;
alias c_gtk_entry_get_completion  gtk_entry_get_completion;
alias c_gtk_entry_set_cursor_hadjustment  gtk_entry_set_cursor_hadjustment;
alias c_gtk_entry_get_cursor_hadjustment  gtk_entry_get_cursor_hadjustment;
alias c_gtk_entry_set_progress_fraction  gtk_entry_set_progress_fraction;
alias c_gtk_entry_get_progress_fraction  gtk_entry_get_progress_fraction;
alias c_gtk_entry_set_progress_pulse_step  gtk_entry_set_progress_pulse_step;
alias c_gtk_entry_get_progress_pulse_step  gtk_entry_get_progress_pulse_step;
alias c_gtk_entry_progress_pulse  gtk_entry_progress_pulse;
alias c_gtk_entry_im_context_filter_keypress  gtk_entry_im_context_filter_keypress;
alias c_gtk_entry_reset_im_context  gtk_entry_reset_im_context;
alias c_gtk_entry_set_icon_from_pixbuf  gtk_entry_set_icon_from_pixbuf;
alias c_gtk_entry_set_icon_from_stock  gtk_entry_set_icon_from_stock;
alias c_gtk_entry_set_icon_from_icon_name  gtk_entry_set_icon_from_icon_name;
alias c_gtk_entry_set_icon_from_gicon  gtk_entry_set_icon_from_gicon;
alias c_gtk_entry_get_icon_storage_type  gtk_entry_get_icon_storage_type;
alias c_gtk_entry_get_icon_pixbuf  gtk_entry_get_icon_pixbuf;
alias c_gtk_entry_get_icon_stock  gtk_entry_get_icon_stock;
alias c_gtk_entry_get_icon_name  gtk_entry_get_icon_name;
alias c_gtk_entry_get_icon_gicon  gtk_entry_get_icon_gicon;
alias c_gtk_entry_set_icon_activatable  gtk_entry_set_icon_activatable;
alias c_gtk_entry_get_icon_activatable  gtk_entry_get_icon_activatable;
alias c_gtk_entry_set_icon_sensitive  gtk_entry_set_icon_sensitive;
alias c_gtk_entry_get_icon_sensitive  gtk_entry_get_icon_sensitive;
alias c_gtk_entry_get_icon_at_pos  gtk_entry_get_icon_at_pos;
alias c_gtk_entry_set_icon_tooltip_text  gtk_entry_set_icon_tooltip_text;
alias c_gtk_entry_get_icon_tooltip_text  gtk_entry_get_icon_tooltip_text;
alias c_gtk_entry_set_icon_tooltip_markup  gtk_entry_set_icon_tooltip_markup;
alias c_gtk_entry_get_icon_tooltip_markup  gtk_entry_get_icon_tooltip_markup;
alias c_gtk_entry_set_icon_drag_source  gtk_entry_set_icon_drag_source;
alias c_gtk_entry_get_current_icon_drag_source  gtk_entry_get_current_icon_drag_source;
alias c_gtk_entry_get_icon_area  gtk_entry_get_icon_area;
alias c_gtk_entry_set_input_purpose  gtk_entry_set_input_purpose;
alias c_gtk_entry_get_input_purpose  gtk_entry_get_input_purpose;
alias c_gtk_entry_set_input_hints  gtk_entry_set_input_hints;
alias c_gtk_entry_get_input_hints  gtk_entry_get_input_hints;

// gtk.EntryBuffer

alias c_gtk_entry_buffer_new  gtk_entry_buffer_new;
alias c_gtk_entry_buffer_get_text  gtk_entry_buffer_get_text;
alias c_gtk_entry_buffer_set_text  gtk_entry_buffer_set_text;
alias c_gtk_entry_buffer_get_bytes  gtk_entry_buffer_get_bytes;
alias c_gtk_entry_buffer_get_length  gtk_entry_buffer_get_length;
alias c_gtk_entry_buffer_get_max_length  gtk_entry_buffer_get_max_length;
alias c_gtk_entry_buffer_set_max_length  gtk_entry_buffer_set_max_length;
alias c_gtk_entry_buffer_insert_text  gtk_entry_buffer_insert_text;
alias c_gtk_entry_buffer_delete_text  gtk_entry_buffer_delete_text;
alias c_gtk_entry_buffer_emit_deleted_text  gtk_entry_buffer_emit_deleted_text;
alias c_gtk_entry_buffer_emit_inserted_text  gtk_entry_buffer_emit_inserted_text;

// gtk.EntryCompletion

alias c_gtk_entry_completion_new  gtk_entry_completion_new;
alias c_gtk_entry_completion_new_with_area  gtk_entry_completion_new_with_area;
alias c_gtk_entry_completion_get_entry  gtk_entry_completion_get_entry;
alias c_gtk_entry_completion_set_model  gtk_entry_completion_set_model;
alias c_gtk_entry_completion_get_model  gtk_entry_completion_get_model;
alias c_gtk_entry_completion_set_match_func  gtk_entry_completion_set_match_func;
alias c_gtk_entry_completion_set_minimum_key_length  gtk_entry_completion_set_minimum_key_length;
alias c_gtk_entry_completion_get_minimum_key_length  gtk_entry_completion_get_minimum_key_length;
alias c_gtk_entry_completion_compute_prefix  gtk_entry_completion_compute_prefix;
alias c_gtk_entry_completion_complete  gtk_entry_completion_complete;
alias c_gtk_entry_completion_get_completion_prefix  gtk_entry_completion_get_completion_prefix;
alias c_gtk_entry_completion_insert_prefix  gtk_entry_completion_insert_prefix;
alias c_gtk_entry_completion_insert_action_text  gtk_entry_completion_insert_action_text;
alias c_gtk_entry_completion_insert_action_markup  gtk_entry_completion_insert_action_markup;
alias c_gtk_entry_completion_delete_action  gtk_entry_completion_delete_action;
alias c_gtk_entry_completion_set_text_column  gtk_entry_completion_set_text_column;
alias c_gtk_entry_completion_get_text_column  gtk_entry_completion_get_text_column;
alias c_gtk_entry_completion_set_inline_completion  gtk_entry_completion_set_inline_completion;
alias c_gtk_entry_completion_get_inline_completion  gtk_entry_completion_get_inline_completion;
alias c_gtk_entry_completion_set_inline_selection  gtk_entry_completion_set_inline_selection;
alias c_gtk_entry_completion_get_inline_selection  gtk_entry_completion_get_inline_selection;
alias c_gtk_entry_completion_set_popup_completion  gtk_entry_completion_set_popup_completion;
alias c_gtk_entry_completion_get_popup_completion  gtk_entry_completion_get_popup_completion;
alias c_gtk_entry_completion_set_popup_set_width  gtk_entry_completion_set_popup_set_width;
alias c_gtk_entry_completion_get_popup_set_width  gtk_entry_completion_get_popup_set_width;
alias c_gtk_entry_completion_set_popup_single_match  gtk_entry_completion_set_popup_single_match;
alias c_gtk_entry_completion_get_popup_single_match  gtk_entry_completion_get_popup_single_match;

// gtk.Scale

alias c_gtk_scale_new  gtk_scale_new;
alias c_gtk_scale_new_with_range  gtk_scale_new_with_range;
alias c_gtk_scale_set_digits  gtk_scale_set_digits;
alias c_gtk_scale_set_draw_value  gtk_scale_set_draw_value;
alias c_gtk_scale_set_has_origin  gtk_scale_set_has_origin;
alias c_gtk_scale_set_value_pos  gtk_scale_set_value_pos;
alias c_gtk_scale_get_digits  gtk_scale_get_digits;
alias c_gtk_scale_get_draw_value  gtk_scale_get_draw_value;
alias c_gtk_scale_get_has_origin  gtk_scale_get_has_origin;
alias c_gtk_scale_get_value_pos  gtk_scale_get_value_pos;
alias c_gtk_scale_get_layout  gtk_scale_get_layout;
alias c_gtk_scale_get_layout_offsets  gtk_scale_get_layout_offsets;
alias c_gtk_scale_add_mark  gtk_scale_add_mark;
alias c_gtk_scale_clear_marks  gtk_scale_clear_marks;

// gtk.HScale

alias c_gtk_hscale_new  gtk_hscale_new;
alias c_gtk_hscale_new_with_range  gtk_hscale_new_with_range;

// gtk.VScale

alias c_gtk_vscale_new  gtk_vscale_new;
alias c_gtk_vscale_new_with_range  gtk_vscale_new_with_range;

// gtk.SpinButton

alias c_gtk_spin_button_configure  gtk_spin_button_configure;
alias c_gtk_spin_button_new  gtk_spin_button_new;
alias c_gtk_spin_button_new_with_range  gtk_spin_button_new_with_range;
alias c_gtk_spin_button_set_adjustment  gtk_spin_button_set_adjustment;
alias c_gtk_spin_button_get_adjustment  gtk_spin_button_get_adjustment;
alias c_gtk_spin_button_set_digits  gtk_spin_button_set_digits;
alias c_gtk_spin_button_set_increments  gtk_spin_button_set_increments;
alias c_gtk_spin_button_set_range  gtk_spin_button_set_range;
alias c_gtk_spin_button_get_value_as_int  gtk_spin_button_get_value_as_int;
alias c_gtk_spin_button_set_value  gtk_spin_button_set_value;
alias c_gtk_spin_button_set_update_policy  gtk_spin_button_set_update_policy;
alias c_gtk_spin_button_set_numeric  gtk_spin_button_set_numeric;
alias c_gtk_spin_button_spin  gtk_spin_button_spin;
alias c_gtk_spin_button_set_wrap  gtk_spin_button_set_wrap;
alias c_gtk_spin_button_set_snap_to_ticks  gtk_spin_button_set_snap_to_ticks;
alias c_gtk_spin_button_update  gtk_spin_button_update;
alias c_gtk_spin_button_get_digits  gtk_spin_button_get_digits;
alias c_gtk_spin_button_get_increments  gtk_spin_button_get_increments;
alias c_gtk_spin_button_get_numeric  gtk_spin_button_get_numeric;
alias c_gtk_spin_button_get_range  gtk_spin_button_get_range;
alias c_gtk_spin_button_get_snap_to_ticks  gtk_spin_button_get_snap_to_ticks;
alias c_gtk_spin_button_get_update_policy  gtk_spin_button_get_update_policy;
alias c_gtk_spin_button_get_value  gtk_spin_button_get_value;
alias c_gtk_spin_button_get_wrap  gtk_spin_button_get_wrap;

// gtk.SearchEntry

alias c_gtk_search_entry_new  gtk_search_entry_new;

// gtk.EditableT


// gtk.EditableT

alias c_gtk_editable_select_region  gtk_editable_select_region;
alias c_gtk_editable_get_selection_bounds  gtk_editable_get_selection_bounds;
alias c_gtk_editable_insert_text  gtk_editable_insert_text;
alias c_gtk_editable_delete_text  gtk_editable_delete_text;
alias c_gtk_editable_get_chars  gtk_editable_get_chars;
alias c_gtk_editable_cut_clipboard  gtk_editable_cut_clipboard;
alias c_gtk_editable_copy_clipboard  gtk_editable_copy_clipboard;
alias c_gtk_editable_paste_clipboard  gtk_editable_paste_clipboard;
alias c_gtk_editable_delete_selection  gtk_editable_delete_selection;
alias c_gtk_editable_set_position  gtk_editable_set_position;
alias c_gtk_editable_get_position  gtk_editable_get_position;
alias c_gtk_editable_set_editable  gtk_editable_set_editable;
alias c_gtk_editable_get_editable  gtk_editable_get_editable;

// gtk.TextIter

alias c_gtk_text_iter_get_buffer  gtk_text_iter_get_buffer;
alias c_gtk_text_iter_copy  gtk_text_iter_copy;
alias c_gtk_text_iter_assign  gtk_text_iter_assign;
alias c_gtk_text_iter_free  gtk_text_iter_free;
alias c_gtk_text_iter_get_offset  gtk_text_iter_get_offset;
alias c_gtk_text_iter_get_line  gtk_text_iter_get_line;
alias c_gtk_text_iter_get_line_offset  gtk_text_iter_get_line_offset;
alias c_gtk_text_iter_get_line_index  gtk_text_iter_get_line_index;
alias c_gtk_text_iter_get_visible_line_index  gtk_text_iter_get_visible_line_index;
alias c_gtk_text_iter_get_visible_line_offset  gtk_text_iter_get_visible_line_offset;
alias c_gtk_text_iter_get_char  gtk_text_iter_get_char;
alias c_gtk_text_iter_get_slice  gtk_text_iter_get_slice;
alias c_gtk_text_iter_get_text  gtk_text_iter_get_text;
alias c_gtk_text_iter_get_visible_slice  gtk_text_iter_get_visible_slice;
alias c_gtk_text_iter_get_visible_text  gtk_text_iter_get_visible_text;
alias c_gtk_text_iter_get_pixbuf  gtk_text_iter_get_pixbuf;
alias c_gtk_text_iter_get_marks  gtk_text_iter_get_marks;
alias c_gtk_text_iter_get_toggled_tags  gtk_text_iter_get_toggled_tags;
alias c_gtk_text_iter_get_child_anchor  gtk_text_iter_get_child_anchor;
alias c_gtk_text_iter_begins_tag  gtk_text_iter_begins_tag;
alias c_gtk_text_iter_ends_tag  gtk_text_iter_ends_tag;
alias c_gtk_text_iter_toggles_tag  gtk_text_iter_toggles_tag;
alias c_gtk_text_iter_has_tag  gtk_text_iter_has_tag;
alias c_gtk_text_iter_get_tags  gtk_text_iter_get_tags;
alias c_gtk_text_iter_editable  gtk_text_iter_editable;
alias c_gtk_text_iter_can_insert  gtk_text_iter_can_insert;
alias c_gtk_text_iter_starts_word  gtk_text_iter_starts_word;
alias c_gtk_text_iter_ends_word  gtk_text_iter_ends_word;
alias c_gtk_text_iter_inside_word  gtk_text_iter_inside_word;
alias c_gtk_text_iter_starts_line  gtk_text_iter_starts_line;
alias c_gtk_text_iter_ends_line  gtk_text_iter_ends_line;
alias c_gtk_text_iter_starts_sentence  gtk_text_iter_starts_sentence;
alias c_gtk_text_iter_ends_sentence  gtk_text_iter_ends_sentence;
alias c_gtk_text_iter_inside_sentence  gtk_text_iter_inside_sentence;
alias c_gtk_text_iter_is_cursor_position  gtk_text_iter_is_cursor_position;
alias c_gtk_text_iter_get_chars_in_line  gtk_text_iter_get_chars_in_line;
alias c_gtk_text_iter_get_bytes_in_line  gtk_text_iter_get_bytes_in_line;
alias c_gtk_text_iter_get_attributes  gtk_text_iter_get_attributes;
alias c_gtk_text_iter_get_language  gtk_text_iter_get_language;
alias c_gtk_text_iter_is_end  gtk_text_iter_is_end;
alias c_gtk_text_iter_is_start  gtk_text_iter_is_start;
alias c_gtk_text_iter_forward_char  gtk_text_iter_forward_char;
alias c_gtk_text_iter_backward_char  gtk_text_iter_backward_char;
alias c_gtk_text_iter_forward_chars  gtk_text_iter_forward_chars;
alias c_gtk_text_iter_backward_chars  gtk_text_iter_backward_chars;
alias c_gtk_text_iter_forward_line  gtk_text_iter_forward_line;
alias c_gtk_text_iter_backward_line  gtk_text_iter_backward_line;
alias c_gtk_text_iter_forward_lines  gtk_text_iter_forward_lines;
alias c_gtk_text_iter_backward_lines  gtk_text_iter_backward_lines;
alias c_gtk_text_iter_forward_word_ends  gtk_text_iter_forward_word_ends;
alias c_gtk_text_iter_backward_word_starts  gtk_text_iter_backward_word_starts;
alias c_gtk_text_iter_forward_word_end  gtk_text_iter_forward_word_end;
alias c_gtk_text_iter_backward_word_start  gtk_text_iter_backward_word_start;
alias c_gtk_text_iter_forward_cursor_position  gtk_text_iter_forward_cursor_position;
alias c_gtk_text_iter_backward_cursor_position  gtk_text_iter_backward_cursor_position;
alias c_gtk_text_iter_forward_cursor_positions  gtk_text_iter_forward_cursor_positions;
alias c_gtk_text_iter_backward_cursor_positions  gtk_text_iter_backward_cursor_positions;
alias c_gtk_text_iter_backward_sentence_start  gtk_text_iter_backward_sentence_start;
alias c_gtk_text_iter_backward_sentence_starts  gtk_text_iter_backward_sentence_starts;
alias c_gtk_text_iter_forward_sentence_end  gtk_text_iter_forward_sentence_end;
alias c_gtk_text_iter_forward_sentence_ends  gtk_text_iter_forward_sentence_ends;
alias c_gtk_text_iter_forward_visible_word_ends  gtk_text_iter_forward_visible_word_ends;
alias c_gtk_text_iter_backward_visible_word_starts  gtk_text_iter_backward_visible_word_starts;
alias c_gtk_text_iter_forward_visible_word_end  gtk_text_iter_forward_visible_word_end;
alias c_gtk_text_iter_backward_visible_word_start  gtk_text_iter_backward_visible_word_start;
alias c_gtk_text_iter_forward_visible_cursor_position  gtk_text_iter_forward_visible_cursor_position;
alias c_gtk_text_iter_backward_visible_cursor_position  gtk_text_iter_backward_visible_cursor_position;
alias c_gtk_text_iter_forward_visible_cursor_positions  gtk_text_iter_forward_visible_cursor_positions;
alias c_gtk_text_iter_backward_visible_cursor_positions  gtk_text_iter_backward_visible_cursor_positions;
alias c_gtk_text_iter_forward_visible_line  gtk_text_iter_forward_visible_line;
alias c_gtk_text_iter_backward_visible_line  gtk_text_iter_backward_visible_line;
alias c_gtk_text_iter_forward_visible_lines  gtk_text_iter_forward_visible_lines;
alias c_gtk_text_iter_backward_visible_lines  gtk_text_iter_backward_visible_lines;
alias c_gtk_text_iter_set_offset  gtk_text_iter_set_offset;
alias c_gtk_text_iter_set_line  gtk_text_iter_set_line;
alias c_gtk_text_iter_set_line_offset  gtk_text_iter_set_line_offset;
alias c_gtk_text_iter_set_line_index  gtk_text_iter_set_line_index;
alias c_gtk_text_iter_set_visible_line_index  gtk_text_iter_set_visible_line_index;
alias c_gtk_text_iter_set_visible_line_offset  gtk_text_iter_set_visible_line_offset;
alias c_gtk_text_iter_forward_to_end  gtk_text_iter_forward_to_end;
alias c_gtk_text_iter_forward_to_line_end  gtk_text_iter_forward_to_line_end;
alias c_gtk_text_iter_forward_to_tag_toggle  gtk_text_iter_forward_to_tag_toggle;
alias c_gtk_text_iter_backward_to_tag_toggle  gtk_text_iter_backward_to_tag_toggle;
alias c_gtk_text_iter_forward_find_char  gtk_text_iter_forward_find_char;
alias c_gtk_text_iter_backward_find_char  gtk_text_iter_backward_find_char;
alias c_gtk_text_iter_forward_search  gtk_text_iter_forward_search;
alias c_gtk_text_iter_backward_search  gtk_text_iter_backward_search;
alias c_gtk_text_iter_equal  gtk_text_iter_equal;
alias c_gtk_text_iter_compare  gtk_text_iter_compare;
alias c_gtk_text_iter_in_range  gtk_text_iter_in_range;
alias c_gtk_text_iter_order  gtk_text_iter_order;

// gtk.TextMark

alias c_gtk_text_mark_new  gtk_text_mark_new;
alias c_gtk_text_mark_set_visible  gtk_text_mark_set_visible;
alias c_gtk_text_mark_get_visible  gtk_text_mark_get_visible;
alias c_gtk_text_mark_get_deleted  gtk_text_mark_get_deleted;
alias c_gtk_text_mark_get_name  gtk_text_mark_get_name;
alias c_gtk_text_mark_get_buffer  gtk_text_mark_get_buffer;
alias c_gtk_text_mark_get_left_gravity  gtk_text_mark_get_left_gravity;

// gtk.TextBuffer

alias c_gtk_text_buffer_new  gtk_text_buffer_new;
alias c_gtk_text_buffer_get_line_count  gtk_text_buffer_get_line_count;
alias c_gtk_text_buffer_get_char_count  gtk_text_buffer_get_char_count;
alias c_gtk_text_buffer_get_tag_table  gtk_text_buffer_get_tag_table;
alias c_gtk_text_buffer_insert  gtk_text_buffer_insert;
alias c_gtk_text_buffer_insert_at_cursor  gtk_text_buffer_insert_at_cursor;
alias c_gtk_text_buffer_insert_interactive  gtk_text_buffer_insert_interactive;
alias c_gtk_text_buffer_insert_interactive_at_cursor  gtk_text_buffer_insert_interactive_at_cursor;
alias c_gtk_text_buffer_insert_range  gtk_text_buffer_insert_range;
alias c_gtk_text_buffer_insert_range_interactive  gtk_text_buffer_insert_range_interactive;
alias c_gtk_text_buffer_insert_with_tags  gtk_text_buffer_insert_with_tags;
alias c_gtk_text_buffer_insert_with_tags_by_name  gtk_text_buffer_insert_with_tags_by_name;
alias c_gtk_text_buffer_delete  gtk_text_buffer_delete;
alias c_gtk_text_buffer_delete_interactive  gtk_text_buffer_delete_interactive;
alias c_gtk_text_buffer_backspace  gtk_text_buffer_backspace;
alias c_gtk_text_buffer_set_text  gtk_text_buffer_set_text;
alias c_gtk_text_buffer_get_text  gtk_text_buffer_get_text;
alias c_gtk_text_buffer_get_slice  gtk_text_buffer_get_slice;
alias c_gtk_text_buffer_insert_pixbuf  gtk_text_buffer_insert_pixbuf;
alias c_gtk_text_buffer_insert_child_anchor  gtk_text_buffer_insert_child_anchor;
alias c_gtk_text_buffer_create_child_anchor  gtk_text_buffer_create_child_anchor;
alias c_gtk_text_buffer_create_mark  gtk_text_buffer_create_mark;
alias c_gtk_text_buffer_move_mark  gtk_text_buffer_move_mark;
alias c_gtk_text_buffer_move_mark_by_name  gtk_text_buffer_move_mark_by_name;
alias c_gtk_text_buffer_add_mark  gtk_text_buffer_add_mark;
alias c_gtk_text_buffer_delete_mark  gtk_text_buffer_delete_mark;
alias c_gtk_text_buffer_delete_mark_by_name  gtk_text_buffer_delete_mark_by_name;
alias c_gtk_text_buffer_get_mark  gtk_text_buffer_get_mark;
alias c_gtk_text_buffer_get_insert  gtk_text_buffer_get_insert;
alias c_gtk_text_buffer_get_selection_bound  gtk_text_buffer_get_selection_bound;
alias c_gtk_text_buffer_get_has_selection  gtk_text_buffer_get_has_selection;
alias c_gtk_text_buffer_place_cursor  gtk_text_buffer_place_cursor;
alias c_gtk_text_buffer_select_range  gtk_text_buffer_select_range;
alias c_gtk_text_buffer_apply_tag  gtk_text_buffer_apply_tag;
alias c_gtk_text_buffer_remove_tag  gtk_text_buffer_remove_tag;
alias c_gtk_text_buffer_apply_tag_by_name  gtk_text_buffer_apply_tag_by_name;
alias c_gtk_text_buffer_remove_tag_by_name  gtk_text_buffer_remove_tag_by_name;
alias c_gtk_text_buffer_remove_all_tags  gtk_text_buffer_remove_all_tags;
alias c_gtk_text_buffer_create_tag  gtk_text_buffer_create_tag;
alias c_gtk_text_buffer_get_iter_at_line_offset  gtk_text_buffer_get_iter_at_line_offset;
alias c_gtk_text_buffer_get_iter_at_offset  gtk_text_buffer_get_iter_at_offset;
alias c_gtk_text_buffer_get_iter_at_line  gtk_text_buffer_get_iter_at_line;
alias c_gtk_text_buffer_get_iter_at_line_index  gtk_text_buffer_get_iter_at_line_index;
alias c_gtk_text_buffer_get_iter_at_mark  gtk_text_buffer_get_iter_at_mark;
alias c_gtk_text_buffer_get_iter_at_child_anchor  gtk_text_buffer_get_iter_at_child_anchor;
alias c_gtk_text_buffer_get_start_iter  gtk_text_buffer_get_start_iter;
alias c_gtk_text_buffer_get_end_iter  gtk_text_buffer_get_end_iter;
alias c_gtk_text_buffer_get_bounds  gtk_text_buffer_get_bounds;
alias c_gtk_text_buffer_get_modified  gtk_text_buffer_get_modified;
alias c_gtk_text_buffer_set_modified  gtk_text_buffer_set_modified;
alias c_gtk_text_buffer_delete_selection  gtk_text_buffer_delete_selection;
alias c_gtk_text_buffer_paste_clipboard  gtk_text_buffer_paste_clipboard;
alias c_gtk_text_buffer_copy_clipboard  gtk_text_buffer_copy_clipboard;
alias c_gtk_text_buffer_cut_clipboard  gtk_text_buffer_cut_clipboard;
alias c_gtk_text_buffer_get_selection_bounds  gtk_text_buffer_get_selection_bounds;
alias c_gtk_text_buffer_begin_user_action  gtk_text_buffer_begin_user_action;
alias c_gtk_text_buffer_end_user_action  gtk_text_buffer_end_user_action;
alias c_gtk_text_buffer_add_selection_clipboard  gtk_text_buffer_add_selection_clipboard;
alias c_gtk_text_buffer_remove_selection_clipboard  gtk_text_buffer_remove_selection_clipboard;
alias c_gtk_text_buffer_deserialize  gtk_text_buffer_deserialize;
alias c_gtk_text_buffer_deserialize_get_can_create_tags  gtk_text_buffer_deserialize_get_can_create_tags;
alias c_gtk_text_buffer_deserialize_set_can_create_tags  gtk_text_buffer_deserialize_set_can_create_tags;
alias c_gtk_text_buffer_get_copy_target_list  gtk_text_buffer_get_copy_target_list;
alias c_gtk_text_buffer_get_deserialize_formats  gtk_text_buffer_get_deserialize_formats;
alias c_gtk_text_buffer_get_paste_target_list  gtk_text_buffer_get_paste_target_list;
alias c_gtk_text_buffer_get_serialize_formats  gtk_text_buffer_get_serialize_formats;
alias c_gtk_text_buffer_register_deserialize_format  gtk_text_buffer_register_deserialize_format;
alias c_gtk_text_buffer_register_deserialize_tagset  gtk_text_buffer_register_deserialize_tagset;
alias c_gtk_text_buffer_register_serialize_format  gtk_text_buffer_register_serialize_format;
alias c_gtk_text_buffer_register_serialize_tagset  gtk_text_buffer_register_serialize_tagset;
alias c_gtk_text_buffer_serialize  gtk_text_buffer_serialize;
alias c_gtk_text_buffer_unregister_deserialize_format  gtk_text_buffer_unregister_deserialize_format;
alias c_gtk_text_buffer_unregister_serialize_format  gtk_text_buffer_unregister_serialize_format;

// gtk.TextTag

alias c_gtk_text_tag_new  gtk_text_tag_new;
alias c_gtk_text_tag_get_priority  gtk_text_tag_get_priority;
alias c_gtk_text_tag_set_priority  gtk_text_tag_set_priority;
alias c_gtk_text_tag_event  gtk_text_tag_event;

// gtk.TextAttributes

alias c_gtk_text_attributes_new  gtk_text_attributes_new;
alias c_gtk_text_attributes_copy  gtk_text_attributes_copy;
alias c_gtk_text_attributes_copy_values  gtk_text_attributes_copy_values;
alias c_gtk_text_attributes_unref  gtk_text_attributes_unref;
alias c_gtk_text_attributes_ref  gtk_text_attributes_ref;

// gtk.TextTagTable

alias c_gtk_text_tag_table_new  gtk_text_tag_table_new;
alias c_gtk_text_tag_table_add  gtk_text_tag_table_add;
alias c_gtk_text_tag_table_remove  gtk_text_tag_table_remove;
alias c_gtk_text_tag_table_lookup  gtk_text_tag_table_lookup;
alias c_gtk_text_tag_table_foreach  gtk_text_tag_table_foreach;
alias c_gtk_text_tag_table_get_size  gtk_text_tag_table_get_size;

// gtk.TextView

alias c_gtk_text_view_new  gtk_text_view_new;
alias c_gtk_text_view_new_with_buffer  gtk_text_view_new_with_buffer;
alias c_gtk_text_view_set_buffer  gtk_text_view_set_buffer;
alias c_gtk_text_view_get_buffer  gtk_text_view_get_buffer;
alias c_gtk_text_view_get_hadjustment  gtk_text_view_get_hadjustment;
alias c_gtk_text_view_get_vadjustment  gtk_text_view_get_vadjustment;
alias c_gtk_text_view_scroll_to_mark  gtk_text_view_scroll_to_mark;
alias c_gtk_text_view_scroll_to_iter  gtk_text_view_scroll_to_iter;
alias c_gtk_text_view_scroll_mark_onscreen  gtk_text_view_scroll_mark_onscreen;
alias c_gtk_text_view_move_mark_onscreen  gtk_text_view_move_mark_onscreen;
alias c_gtk_text_view_place_cursor_onscreen  gtk_text_view_place_cursor_onscreen;
alias c_gtk_text_view_get_visible_rect  gtk_text_view_get_visible_rect;
alias c_gtk_text_view_get_iter_location  gtk_text_view_get_iter_location;
alias c_gtk_text_view_get_cursor_locations  gtk_text_view_get_cursor_locations;
alias c_gtk_text_view_get_line_at_y  gtk_text_view_get_line_at_y;
alias c_gtk_text_view_get_line_yrange  gtk_text_view_get_line_yrange;
alias c_gtk_text_view_get_iter_at_location  gtk_text_view_get_iter_at_location;
alias c_gtk_text_view_get_iter_at_position  gtk_text_view_get_iter_at_position;
alias c_gtk_text_view_buffer_to_window_coords  gtk_text_view_buffer_to_window_coords;
alias c_gtk_text_view_window_to_buffer_coords  gtk_text_view_window_to_buffer_coords;
alias c_gtk_text_view_get_window  gtk_text_view_get_window;
alias c_gtk_text_view_get_window_type  gtk_text_view_get_window_type;
alias c_gtk_text_view_set_border_window_size  gtk_text_view_set_border_window_size;
alias c_gtk_text_view_get_border_window_size  gtk_text_view_get_border_window_size;
alias c_gtk_text_view_forward_display_line  gtk_text_view_forward_display_line;
alias c_gtk_text_view_backward_display_line  gtk_text_view_backward_display_line;
alias c_gtk_text_view_forward_display_line_end  gtk_text_view_forward_display_line_end;
alias c_gtk_text_view_backward_display_line_start  gtk_text_view_backward_display_line_start;
alias c_gtk_text_view_starts_display_line  gtk_text_view_starts_display_line;
alias c_gtk_text_view_move_visually  gtk_text_view_move_visually;
alias c_gtk_text_view_add_child_at_anchor  gtk_text_view_add_child_at_anchor;
alias c_gtk_text_view_add_child_in_window  gtk_text_view_add_child_in_window;
alias c_gtk_text_view_move_child  gtk_text_view_move_child;
alias c_gtk_text_view_set_wrap_mode  gtk_text_view_set_wrap_mode;
alias c_gtk_text_view_get_wrap_mode  gtk_text_view_get_wrap_mode;
alias c_gtk_text_view_set_editable  gtk_text_view_set_editable;
alias c_gtk_text_view_get_editable  gtk_text_view_get_editable;
alias c_gtk_text_view_set_cursor_visible  gtk_text_view_set_cursor_visible;
alias c_gtk_text_view_get_cursor_visible  gtk_text_view_get_cursor_visible;
alias c_gtk_text_view_set_overwrite  gtk_text_view_set_overwrite;
alias c_gtk_text_view_get_overwrite  gtk_text_view_get_overwrite;
alias c_gtk_text_view_set_pixels_above_lines  gtk_text_view_set_pixels_above_lines;
alias c_gtk_text_view_get_pixels_above_lines  gtk_text_view_get_pixels_above_lines;
alias c_gtk_text_view_set_pixels_below_lines  gtk_text_view_set_pixels_below_lines;
alias c_gtk_text_view_get_pixels_below_lines  gtk_text_view_get_pixels_below_lines;
alias c_gtk_text_view_set_pixels_inside_wrap  gtk_text_view_set_pixels_inside_wrap;
alias c_gtk_text_view_get_pixels_inside_wrap  gtk_text_view_get_pixels_inside_wrap;
alias c_gtk_text_view_set_justification  gtk_text_view_set_justification;
alias c_gtk_text_view_get_justification  gtk_text_view_get_justification;
alias c_gtk_text_view_set_left_margin  gtk_text_view_set_left_margin;
alias c_gtk_text_view_get_left_margin  gtk_text_view_get_left_margin;
alias c_gtk_text_view_set_right_margin  gtk_text_view_set_right_margin;
alias c_gtk_text_view_get_right_margin  gtk_text_view_get_right_margin;
alias c_gtk_text_view_set_indent  gtk_text_view_set_indent;
alias c_gtk_text_view_get_indent  gtk_text_view_get_indent;
alias c_gtk_text_view_set_tabs  gtk_text_view_set_tabs;
alias c_gtk_text_view_get_tabs  gtk_text_view_get_tabs;
alias c_gtk_text_view_set_accepts_tab  gtk_text_view_set_accepts_tab;
alias c_gtk_text_view_get_accepts_tab  gtk_text_view_get_accepts_tab;
alias c_gtk_text_view_get_default_attributes  gtk_text_view_get_default_attributes;
alias c_gtk_text_view_im_context_filter_keypress  gtk_text_view_im_context_filter_keypress;
alias c_gtk_text_view_reset_im_context  gtk_text_view_reset_im_context;
alias c_gtk_text_view_set_input_purpose  gtk_text_view_set_input_purpose;
alias c_gtk_text_view_get_input_purpose  gtk_text_view_get_input_purpose;
alias c_gtk_text_view_set_input_hints  gtk_text_view_set_input_hints;
alias c_gtk_text_view_get_input_hints  gtk_text_view_get_input_hints;

// gtk.TextChildAnchor

alias c_gtk_text_child_anchor_new  gtk_text_child_anchor_new;
alias c_gtk_text_child_anchor_get_widgets  gtk_text_child_anchor_get_widgets;
alias c_gtk_text_child_anchor_get_deleted  gtk_text_child_anchor_get_deleted;

// gtk.TreePath

alias c_gtk_tree_path_new  gtk_tree_path_new;
alias c_gtk_tree_path_new_from_string  gtk_tree_path_new_from_string;
alias c_gtk_tree_path_new_from_indices  gtk_tree_path_new_from_indices;
alias c_gtk_tree_path_to_string  gtk_tree_path_to_string;
alias c_gtk_tree_path_new_first  gtk_tree_path_new_first;
alias c_gtk_tree_path_append_index  gtk_tree_path_append_index;
alias c_gtk_tree_path_prepend_index  gtk_tree_path_prepend_index;
alias c_gtk_tree_path_get_depth  gtk_tree_path_get_depth;
alias c_gtk_tree_path_get_indices  gtk_tree_path_get_indices;
alias c_gtk_tree_path_get_indices_with_depth  gtk_tree_path_get_indices_with_depth;
alias c_gtk_tree_path_free  gtk_tree_path_free;
alias c_gtk_tree_path_copy  gtk_tree_path_copy;
alias c_gtk_tree_path_compare  gtk_tree_path_compare;
alias c_gtk_tree_path_next  gtk_tree_path_next;
alias c_gtk_tree_path_prev  gtk_tree_path_prev;
alias c_gtk_tree_path_up  gtk_tree_path_up;
alias c_gtk_tree_path_down  gtk_tree_path_down;
alias c_gtk_tree_path_is_ancestor  gtk_tree_path_is_ancestor;
alias c_gtk_tree_path_is_descendant  gtk_tree_path_is_descendant;

// gtk.TreeModelT


// gtk.TreeModelT

alias c_gtk_tree_model_get_flags  gtk_tree_model_get_flags;
alias c_gtk_tree_model_get_n_columns  gtk_tree_model_get_n_columns;
alias c_gtk_tree_model_get_column_type  gtk_tree_model_get_column_type;
alias c_gtk_tree_model_get_iter  gtk_tree_model_get_iter;
alias c_gtk_tree_model_get_iter_from_string  gtk_tree_model_get_iter_from_string;
alias c_gtk_tree_model_get_iter_first  gtk_tree_model_get_iter_first;
alias c_gtk_tree_model_get_path  gtk_tree_model_get_path;
alias c_gtk_tree_model_get_value  gtk_tree_model_get_value;
alias c_gtk_tree_model_iter_next  gtk_tree_model_iter_next;
alias c_gtk_tree_model_iter_previous  gtk_tree_model_iter_previous;
alias c_gtk_tree_model_iter_children  gtk_tree_model_iter_children;
alias c_gtk_tree_model_iter_has_child  gtk_tree_model_iter_has_child;
alias c_gtk_tree_model_iter_n_children  gtk_tree_model_iter_n_children;
alias c_gtk_tree_model_iter_nth_child  gtk_tree_model_iter_nth_child;
alias c_gtk_tree_model_iter_parent  gtk_tree_model_iter_parent;
alias c_gtk_tree_model_get_string_from_iter  gtk_tree_model_get_string_from_iter;
alias c_gtk_tree_model_ref_node  gtk_tree_model_ref_node;
alias c_gtk_tree_model_unref_node  gtk_tree_model_unref_node;
alias c_gtk_tree_model_get  gtk_tree_model_get;
alias c_gtk_tree_model_get_valist  gtk_tree_model_get_valist;
alias c_gtk_tree_model_foreach  gtk_tree_model_foreach;
alias c_gtk_tree_model_row_changed  gtk_tree_model_row_changed;
alias c_gtk_tree_model_row_inserted  gtk_tree_model_row_inserted;
alias c_gtk_tree_model_row_has_child_toggled  gtk_tree_model_row_has_child_toggled;
alias c_gtk_tree_model_row_deleted  gtk_tree_model_row_deleted;
alias c_gtk_tree_model_rows_reordered  gtk_tree_model_rows_reordered;

// gtk.TreeIter

alias c_gtk_tree_iter_copy  gtk_tree_iter_copy;
alias c_gtk_tree_iter_free  gtk_tree_iter_free;

// gtk.TreeRowReference

alias c_gtk_tree_row_reference_new  gtk_tree_row_reference_new;
alias c_gtk_tree_row_reference_new_proxy  gtk_tree_row_reference_new_proxy;
alias c_gtk_tree_row_reference_get_model  gtk_tree_row_reference_get_model;
alias c_gtk_tree_row_reference_get_path  gtk_tree_row_reference_get_path;
alias c_gtk_tree_row_reference_valid  gtk_tree_row_reference_valid;
alias c_gtk_tree_row_reference_free  gtk_tree_row_reference_free;
alias c_gtk_tree_row_reference_copy  gtk_tree_row_reference_copy;
alias c_gtk_tree_row_reference_inserted  gtk_tree_row_reference_inserted;
alias c_gtk_tree_row_reference_deleted  gtk_tree_row_reference_deleted;
alias c_gtk_tree_row_reference_reordered  gtk_tree_row_reference_reordered;

// gtk.TreeIterError


// gtk.


// gtk.TreeSelection

alias c_gtk_tree_selection_set_mode  gtk_tree_selection_set_mode;
alias c_gtk_tree_selection_get_mode  gtk_tree_selection_get_mode;
alias c_gtk_tree_selection_set_select_function  gtk_tree_selection_set_select_function;
alias c_gtk_tree_selection_get_select_function  gtk_tree_selection_get_select_function;
alias c_gtk_tree_selection_get_user_data  gtk_tree_selection_get_user_data;
alias c_gtk_tree_selection_get_tree_view  gtk_tree_selection_get_tree_view;
alias c_gtk_tree_selection_get_selected  gtk_tree_selection_get_selected;
alias c_gtk_tree_selection_selected_foreach  gtk_tree_selection_selected_foreach;
alias c_gtk_tree_selection_get_selected_rows  gtk_tree_selection_get_selected_rows;
alias c_gtk_tree_selection_count_selected_rows  gtk_tree_selection_count_selected_rows;
alias c_gtk_tree_selection_select_path  gtk_tree_selection_select_path;
alias c_gtk_tree_selection_unselect_path  gtk_tree_selection_unselect_path;
alias c_gtk_tree_selection_path_is_selected  gtk_tree_selection_path_is_selected;
alias c_gtk_tree_selection_select_iter  gtk_tree_selection_select_iter;
alias c_gtk_tree_selection_unselect_iter  gtk_tree_selection_unselect_iter;
alias c_gtk_tree_selection_iter_is_selected  gtk_tree_selection_iter_is_selected;
alias c_gtk_tree_selection_select_all  gtk_tree_selection_select_all;
alias c_gtk_tree_selection_unselect_all  gtk_tree_selection_unselect_all;
alias c_gtk_tree_selection_select_range  gtk_tree_selection_select_range;
alias c_gtk_tree_selection_unselect_range  gtk_tree_selection_unselect_range;

// gtk.TreeViewColumn

alias c_gtk_tree_view_column_new  gtk_tree_view_column_new;
alias c_gtk_tree_view_column_new_with_area  gtk_tree_view_column_new_with_area;
alias c_gtk_tree_view_column_new_with_attributes  gtk_tree_view_column_new_with_attributes;
alias c_gtk_tree_view_column_pack_start  gtk_tree_view_column_pack_start;
alias c_gtk_tree_view_column_pack_end  gtk_tree_view_column_pack_end;
alias c_gtk_tree_view_column_clear  gtk_tree_view_column_clear;
alias c_gtk_tree_view_column_add_attribute  gtk_tree_view_column_add_attribute;
alias c_gtk_tree_view_column_set_attributes  gtk_tree_view_column_set_attributes;
alias c_gtk_tree_view_column_set_cell_data_func  gtk_tree_view_column_set_cell_data_func;
alias c_gtk_tree_view_column_clear_attributes  gtk_tree_view_column_clear_attributes;
alias c_gtk_tree_view_column_set_spacing  gtk_tree_view_column_set_spacing;
alias c_gtk_tree_view_column_get_spacing  gtk_tree_view_column_get_spacing;
alias c_gtk_tree_view_column_set_visible  gtk_tree_view_column_set_visible;
alias c_gtk_tree_view_column_get_visible  gtk_tree_view_column_get_visible;
alias c_gtk_tree_view_column_set_resizable  gtk_tree_view_column_set_resizable;
alias c_gtk_tree_view_column_get_resizable  gtk_tree_view_column_get_resizable;
alias c_gtk_tree_view_column_set_sizing  gtk_tree_view_column_set_sizing;
alias c_gtk_tree_view_column_get_sizing  gtk_tree_view_column_get_sizing;
alias c_gtk_tree_view_column_get_width  gtk_tree_view_column_get_width;
alias c_gtk_tree_view_column_get_fixed_width  gtk_tree_view_column_get_fixed_width;
alias c_gtk_tree_view_column_set_fixed_width  gtk_tree_view_column_set_fixed_width;
alias c_gtk_tree_view_column_set_min_width  gtk_tree_view_column_set_min_width;
alias c_gtk_tree_view_column_get_min_width  gtk_tree_view_column_get_min_width;
alias c_gtk_tree_view_column_set_max_width  gtk_tree_view_column_set_max_width;
alias c_gtk_tree_view_column_get_max_width  gtk_tree_view_column_get_max_width;
alias c_gtk_tree_view_column_clicked  gtk_tree_view_column_clicked;
alias c_gtk_tree_view_column_set_title  gtk_tree_view_column_set_title;
alias c_gtk_tree_view_column_get_title  gtk_tree_view_column_get_title;
alias c_gtk_tree_view_column_set_expand  gtk_tree_view_column_set_expand;
alias c_gtk_tree_view_column_get_expand  gtk_tree_view_column_get_expand;
alias c_gtk_tree_view_column_set_clickable  gtk_tree_view_column_set_clickable;
alias c_gtk_tree_view_column_get_clickable  gtk_tree_view_column_get_clickable;
alias c_gtk_tree_view_column_set_widget  gtk_tree_view_column_set_widget;
alias c_gtk_tree_view_column_get_widget  gtk_tree_view_column_get_widget;
alias c_gtk_tree_view_column_get_button  gtk_tree_view_column_get_button;
alias c_gtk_tree_view_column_set_alignment  gtk_tree_view_column_set_alignment;
alias c_gtk_tree_view_column_get_alignment  gtk_tree_view_column_get_alignment;
alias c_gtk_tree_view_column_set_reorderable  gtk_tree_view_column_set_reorderable;
alias c_gtk_tree_view_column_get_reorderable  gtk_tree_view_column_get_reorderable;
alias c_gtk_tree_view_column_set_sort_column_id  gtk_tree_view_column_set_sort_column_id;
alias c_gtk_tree_view_column_get_sort_column_id  gtk_tree_view_column_get_sort_column_id;
alias c_gtk_tree_view_column_set_sort_indicator  gtk_tree_view_column_set_sort_indicator;
alias c_gtk_tree_view_column_get_sort_indicator  gtk_tree_view_column_get_sort_indicator;
alias c_gtk_tree_view_column_set_sort_order  gtk_tree_view_column_set_sort_order;
alias c_gtk_tree_view_column_get_sort_order  gtk_tree_view_column_get_sort_order;
alias c_gtk_tree_view_column_cell_set_cell_data  gtk_tree_view_column_cell_set_cell_data;
alias c_gtk_tree_view_column_cell_get_size  gtk_tree_view_column_cell_get_size;
alias c_gtk_tree_view_column_cell_get_position  gtk_tree_view_column_cell_get_position;
alias c_gtk_tree_view_column_cell_is_visible  gtk_tree_view_column_cell_is_visible;
alias c_gtk_tree_view_column_focus_cell  gtk_tree_view_column_focus_cell;
alias c_gtk_tree_view_column_queue_resize  gtk_tree_view_column_queue_resize;
alias c_gtk_tree_view_column_get_tree_view  gtk_tree_view_column_get_tree_view;
alias c_gtk_tree_view_column_get_x_offset  gtk_tree_view_column_get_x_offset;

// gtk.TreeView

alias c_gtk_tree_view_new  gtk_tree_view_new;
alias c_gtk_tree_view_get_level_indentation  gtk_tree_view_get_level_indentation;
alias c_gtk_tree_view_get_show_expanders  gtk_tree_view_get_show_expanders;
alias c_gtk_tree_view_set_level_indentation  gtk_tree_view_set_level_indentation;
alias c_gtk_tree_view_set_show_expanders  gtk_tree_view_set_show_expanders;
alias c_gtk_tree_view_new_with_model  gtk_tree_view_new_with_model;
alias c_gtk_tree_view_get_model  gtk_tree_view_get_model;
alias c_gtk_tree_view_set_model  gtk_tree_view_set_model;
alias c_gtk_tree_view_get_selection  gtk_tree_view_get_selection;
alias c_gtk_tree_view_get_hadjustment  gtk_tree_view_get_hadjustment;
alias c_gtk_tree_view_set_hadjustment  gtk_tree_view_set_hadjustment;
alias c_gtk_tree_view_get_vadjustment  gtk_tree_view_get_vadjustment;
alias c_gtk_tree_view_set_vadjustment  gtk_tree_view_set_vadjustment;
alias c_gtk_tree_view_get_headers_visible  gtk_tree_view_get_headers_visible;
alias c_gtk_tree_view_set_headers_visible  gtk_tree_view_set_headers_visible;
alias c_gtk_tree_view_columns_autosize  gtk_tree_view_columns_autosize;
alias c_gtk_tree_view_get_headers_clickable  gtk_tree_view_get_headers_clickable;
alias c_gtk_tree_view_set_headers_clickable  gtk_tree_view_set_headers_clickable;
alias c_gtk_tree_view_set_rules_hint  gtk_tree_view_set_rules_hint;
alias c_gtk_tree_view_get_rules_hint  gtk_tree_view_get_rules_hint;
alias c_gtk_tree_view_append_column  gtk_tree_view_append_column;
alias c_gtk_tree_view_remove_column  gtk_tree_view_remove_column;
alias c_gtk_tree_view_insert_column  gtk_tree_view_insert_column;
alias c_gtk_tree_view_insert_column_with_attributes  gtk_tree_view_insert_column_with_attributes;
alias c_gtk_tree_view_insert_column_with_data_func  gtk_tree_view_insert_column_with_data_func;
alias c_gtk_tree_view_get_n_columns  gtk_tree_view_get_n_columns;
alias c_gtk_tree_view_get_column  gtk_tree_view_get_column;
alias c_gtk_tree_view_get_columns  gtk_tree_view_get_columns;
alias c_gtk_tree_view_move_column_after  gtk_tree_view_move_column_after;
alias c_gtk_tree_view_set_expander_column  gtk_tree_view_set_expander_column;
alias c_gtk_tree_view_get_expander_column  gtk_tree_view_get_expander_column;
alias c_gtk_tree_view_set_column_drag_function  gtk_tree_view_set_column_drag_function;
alias c_gtk_tree_view_scroll_to_point  gtk_tree_view_scroll_to_point;
alias c_gtk_tree_view_scroll_to_cell  gtk_tree_view_scroll_to_cell;
alias c_gtk_tree_view_set_cursor  gtk_tree_view_set_cursor;
alias c_gtk_tree_view_set_cursor_on_cell  gtk_tree_view_set_cursor_on_cell;
alias c_gtk_tree_view_get_cursor  gtk_tree_view_get_cursor;
alias c_gtk_tree_view_row_activated  gtk_tree_view_row_activated;
alias c_gtk_tree_view_expand_all  gtk_tree_view_expand_all;
alias c_gtk_tree_view_collapse_all  gtk_tree_view_collapse_all;
alias c_gtk_tree_view_expand_to_path  gtk_tree_view_expand_to_path;
alias c_gtk_tree_view_expand_row  gtk_tree_view_expand_row;
alias c_gtk_tree_view_collapse_row  gtk_tree_view_collapse_row;
alias c_gtk_tree_view_map_expanded_rows  gtk_tree_view_map_expanded_rows;
alias c_gtk_tree_view_row_expanded  gtk_tree_view_row_expanded;
alias c_gtk_tree_view_set_reorderable  gtk_tree_view_set_reorderable;
alias c_gtk_tree_view_get_reorderable  gtk_tree_view_get_reorderable;
alias c_gtk_tree_view_get_path_at_pos  gtk_tree_view_get_path_at_pos;
alias c_gtk_tree_view_is_blank_at_pos  gtk_tree_view_is_blank_at_pos;
alias c_gtk_tree_view_get_cell_area  gtk_tree_view_get_cell_area;
alias c_gtk_tree_view_get_background_area  gtk_tree_view_get_background_area;
alias c_gtk_tree_view_get_visible_rect  gtk_tree_view_get_visible_rect;
alias c_gtk_tree_view_get_visible_range  gtk_tree_view_get_visible_range;
alias c_gtk_tree_view_get_bin_window  gtk_tree_view_get_bin_window;
alias c_gtk_tree_view_convert_bin_window_to_tree_coords  gtk_tree_view_convert_bin_window_to_tree_coords;
alias c_gtk_tree_view_convert_bin_window_to_widget_coords  gtk_tree_view_convert_bin_window_to_widget_coords;
alias c_gtk_tree_view_convert_tree_to_bin_window_coords  gtk_tree_view_convert_tree_to_bin_window_coords;
alias c_gtk_tree_view_convert_tree_to_widget_coords  gtk_tree_view_convert_tree_to_widget_coords;
alias c_gtk_tree_view_convert_widget_to_bin_window_coords  gtk_tree_view_convert_widget_to_bin_window_coords;
alias c_gtk_tree_view_convert_widget_to_tree_coords  gtk_tree_view_convert_widget_to_tree_coords;
alias c_gtk_tree_view_enable_model_drag_dest  gtk_tree_view_enable_model_drag_dest;
alias c_gtk_tree_view_enable_model_drag_source  gtk_tree_view_enable_model_drag_source;
alias c_gtk_tree_view_unset_rows_drag_source  gtk_tree_view_unset_rows_drag_source;
alias c_gtk_tree_view_unset_rows_drag_dest  gtk_tree_view_unset_rows_drag_dest;
alias c_gtk_tree_view_set_drag_dest_row  gtk_tree_view_set_drag_dest_row;
alias c_gtk_tree_view_get_drag_dest_row  gtk_tree_view_get_drag_dest_row;
alias c_gtk_tree_view_get_dest_row_at_pos  gtk_tree_view_get_dest_row_at_pos;
alias c_gtk_tree_view_create_row_drag_icon  gtk_tree_view_create_row_drag_icon;
alias c_gtk_tree_view_set_enable_search  gtk_tree_view_set_enable_search;
alias c_gtk_tree_view_get_enable_search  gtk_tree_view_get_enable_search;
alias c_gtk_tree_view_get_search_column  gtk_tree_view_get_search_column;
alias c_gtk_tree_view_set_search_column  gtk_tree_view_set_search_column;
alias c_gtk_tree_view_get_search_equal_func  gtk_tree_view_get_search_equal_func;
alias c_gtk_tree_view_set_search_equal_func  gtk_tree_view_set_search_equal_func;
alias c_gtk_tree_view_get_search_entry  gtk_tree_view_get_search_entry;
alias c_gtk_tree_view_set_search_entry  gtk_tree_view_set_search_entry;
alias c_gtk_tree_view_get_search_position_func  gtk_tree_view_get_search_position_func;
alias c_gtk_tree_view_set_search_position_func  gtk_tree_view_set_search_position_func;
alias c_gtk_tree_view_get_fixed_height_mode  gtk_tree_view_get_fixed_height_mode;
alias c_gtk_tree_view_set_fixed_height_mode  gtk_tree_view_set_fixed_height_mode;
alias c_gtk_tree_view_get_hover_selection  gtk_tree_view_get_hover_selection;
alias c_gtk_tree_view_set_hover_selection  gtk_tree_view_set_hover_selection;
alias c_gtk_tree_view_get_hover_expand  gtk_tree_view_get_hover_expand;
alias c_gtk_tree_view_set_hover_expand  gtk_tree_view_set_hover_expand;
alias c_gtk_tree_view_set_destroy_count_func  gtk_tree_view_set_destroy_count_func;
alias c_gtk_tree_view_get_row_separator_func  gtk_tree_view_get_row_separator_func;
alias c_gtk_tree_view_set_row_separator_func  gtk_tree_view_set_row_separator_func;
alias c_gtk_tree_view_get_rubber_banding  gtk_tree_view_get_rubber_banding;
alias c_gtk_tree_view_set_rubber_banding  gtk_tree_view_set_rubber_banding;
alias c_gtk_tree_view_is_rubber_banding_active  gtk_tree_view_is_rubber_banding_active;
alias c_gtk_tree_view_get_enable_tree_lines  gtk_tree_view_get_enable_tree_lines;
alias c_gtk_tree_view_set_enable_tree_lines  gtk_tree_view_set_enable_tree_lines;
alias c_gtk_tree_view_get_grid_lines  gtk_tree_view_get_grid_lines;
alias c_gtk_tree_view_set_grid_lines  gtk_tree_view_set_grid_lines;
alias c_gtk_tree_view_set_tooltip_row  gtk_tree_view_set_tooltip_row;
alias c_gtk_tree_view_set_tooltip_cell  gtk_tree_view_set_tooltip_cell;
alias c_gtk_tree_view_get_tooltip_context  gtk_tree_view_get_tooltip_context;
alias c_gtk_tree_view_get_tooltip_column  gtk_tree_view_get_tooltip_column;
alias c_gtk_tree_view_set_tooltip_column  gtk_tree_view_set_tooltip_column;

// gtk.TreeDragSourceT


// gtk.TreeDragSourceT

alias c_gtk_tree_drag_source_drag_data_delete  gtk_tree_drag_source_drag_data_delete;
alias c_gtk_tree_drag_source_drag_data_get  gtk_tree_drag_source_drag_data_get;
alias c_gtk_tree_drag_source_row_draggable  gtk_tree_drag_source_row_draggable;
alias c_gtk_tree_set_row_drag_data  gtk_tree_set_row_drag_data;
alias c_gtk_tree_get_row_drag_data  gtk_tree_get_row_drag_data;

// gtk.TreeDragDestT


// gtk.TreeDragDestT

alias c_gtk_tree_drag_dest_drag_data_received  gtk_tree_drag_dest_drag_data_received;
alias c_gtk_tree_drag_dest_row_drop_possible  gtk_tree_drag_dest_row_drop_possible;

// gtk.CellView

alias c_gtk_cell_view_new  gtk_cell_view_new;
alias c_gtk_cell_view_new_with_context  gtk_cell_view_new_with_context;
alias c_gtk_cell_view_new_with_text  gtk_cell_view_new_with_text;
alias c_gtk_cell_view_new_with_markup  gtk_cell_view_new_with_markup;
alias c_gtk_cell_view_new_with_pixbuf  gtk_cell_view_new_with_pixbuf;
alias c_gtk_cell_view_set_model  gtk_cell_view_set_model;
alias c_gtk_cell_view_get_model  gtk_cell_view_get_model;
alias c_gtk_cell_view_set_displayed_row  gtk_cell_view_set_displayed_row;
alias c_gtk_cell_view_get_displayed_row  gtk_cell_view_get_displayed_row;
alias c_gtk_cell_view_get_size_of_row  gtk_cell_view_get_size_of_row;
alias c_gtk_cell_view_set_background_color  gtk_cell_view_set_background_color;
alias c_gtk_cell_view_set_background_rgba  gtk_cell_view_set_background_rgba;
alias c_gtk_cell_view_set_draw_sensitive  gtk_cell_view_set_draw_sensitive;
alias c_gtk_cell_view_get_draw_sensitive  gtk_cell_view_get_draw_sensitive;
alias c_gtk_cell_view_set_fit_model  gtk_cell_view_set_fit_model;
alias c_gtk_cell_view_get_fit_model  gtk_cell_view_get_fit_model;

// gtk.IconView

alias c_gtk_icon_view_new  gtk_icon_view_new;
alias c_gtk_icon_view_new_with_area  gtk_icon_view_new_with_area;
alias c_gtk_icon_view_new_with_model  gtk_icon_view_new_with_model;
alias c_gtk_icon_view_set_model  gtk_icon_view_set_model;
alias c_gtk_icon_view_get_model  gtk_icon_view_get_model;
alias c_gtk_icon_view_set_text_column  gtk_icon_view_set_text_column;
alias c_gtk_icon_view_get_text_column  gtk_icon_view_get_text_column;
alias c_gtk_icon_view_set_markup_column  gtk_icon_view_set_markup_column;
alias c_gtk_icon_view_get_markup_column  gtk_icon_view_get_markup_column;
alias c_gtk_icon_view_set_pixbuf_column  gtk_icon_view_set_pixbuf_column;
alias c_gtk_icon_view_get_pixbuf_column  gtk_icon_view_get_pixbuf_column;
alias c_gtk_icon_view_get_path_at_pos  gtk_icon_view_get_path_at_pos;
alias c_gtk_icon_view_get_item_at_pos  gtk_icon_view_get_item_at_pos;
alias c_gtk_icon_view_convert_widget_to_bin_window_coords  gtk_icon_view_convert_widget_to_bin_window_coords;
alias c_gtk_icon_view_set_cursor  gtk_icon_view_set_cursor;
alias c_gtk_icon_view_get_cursor  gtk_icon_view_get_cursor;
alias c_gtk_icon_view_selected_foreach  gtk_icon_view_selected_foreach;
alias c_gtk_icon_view_set_selection_mode  gtk_icon_view_set_selection_mode;
alias c_gtk_icon_view_get_selection_mode  gtk_icon_view_get_selection_mode;
alias c_gtk_icon_view_set_item_orientation  gtk_icon_view_set_item_orientation;
alias c_gtk_icon_view_get_item_orientation  gtk_icon_view_get_item_orientation;
alias c_gtk_icon_view_set_columns  gtk_icon_view_set_columns;
alias c_gtk_icon_view_get_columns  gtk_icon_view_get_columns;
alias c_gtk_icon_view_set_item_width  gtk_icon_view_set_item_width;
alias c_gtk_icon_view_get_item_width  gtk_icon_view_get_item_width;
alias c_gtk_icon_view_set_spacing  gtk_icon_view_set_spacing;
alias c_gtk_icon_view_get_spacing  gtk_icon_view_get_spacing;
alias c_gtk_icon_view_set_row_spacing  gtk_icon_view_set_row_spacing;
alias c_gtk_icon_view_get_row_spacing  gtk_icon_view_get_row_spacing;
alias c_gtk_icon_view_set_column_spacing  gtk_icon_view_set_column_spacing;
alias c_gtk_icon_view_get_column_spacing  gtk_icon_view_get_column_spacing;
alias c_gtk_icon_view_set_margin  gtk_icon_view_set_margin;
alias c_gtk_icon_view_get_margin  gtk_icon_view_get_margin;
alias c_gtk_icon_view_set_item_padding  gtk_icon_view_set_item_padding;
alias c_gtk_icon_view_get_item_padding  gtk_icon_view_get_item_padding;
alias c_gtk_icon_view_get_cell_rect  gtk_icon_view_get_cell_rect;
alias c_gtk_icon_view_select_path  gtk_icon_view_select_path;
alias c_gtk_icon_view_unselect_path  gtk_icon_view_unselect_path;
alias c_gtk_icon_view_path_is_selected  gtk_icon_view_path_is_selected;
alias c_gtk_icon_view_get_selected_items  gtk_icon_view_get_selected_items;
alias c_gtk_icon_view_select_all  gtk_icon_view_select_all;
alias c_gtk_icon_view_unselect_all  gtk_icon_view_unselect_all;
alias c_gtk_icon_view_item_activated  gtk_icon_view_item_activated;
alias c_gtk_icon_view_scroll_to_path  gtk_icon_view_scroll_to_path;
alias c_gtk_icon_view_get_visible_range  gtk_icon_view_get_visible_range;
alias c_gtk_icon_view_set_tooltip_item  gtk_icon_view_set_tooltip_item;
alias c_gtk_icon_view_set_tooltip_cell  gtk_icon_view_set_tooltip_cell;
alias c_gtk_icon_view_get_tooltip_context  gtk_icon_view_get_tooltip_context;
alias c_gtk_icon_view_set_tooltip_column  gtk_icon_view_set_tooltip_column;
alias c_gtk_icon_view_get_tooltip_column  gtk_icon_view_get_tooltip_column;
alias c_gtk_icon_view_get_item_row  gtk_icon_view_get_item_row;
alias c_gtk_icon_view_get_item_column  gtk_icon_view_get_item_column;
alias c_gtk_icon_view_enable_model_drag_source  gtk_icon_view_enable_model_drag_source;
alias c_gtk_icon_view_enable_model_drag_dest  gtk_icon_view_enable_model_drag_dest;
alias c_gtk_icon_view_unset_model_drag_source  gtk_icon_view_unset_model_drag_source;
alias c_gtk_icon_view_unset_model_drag_dest  gtk_icon_view_unset_model_drag_dest;
alias c_gtk_icon_view_set_reorderable  gtk_icon_view_set_reorderable;
alias c_gtk_icon_view_get_reorderable  gtk_icon_view_get_reorderable;
alias c_gtk_icon_view_set_drag_dest_item  gtk_icon_view_set_drag_dest_item;
alias c_gtk_icon_view_get_drag_dest_item  gtk_icon_view_get_drag_dest_item;
alias c_gtk_icon_view_get_dest_item_at_pos  gtk_icon_view_get_dest_item_at_pos;
alias c_gtk_icon_view_create_drag_icon  gtk_icon_view_create_drag_icon;

// gtk.TreeSortableT


// gtk.TreeSortableT

alias c_gtk_tree_sortable_sort_column_changed  gtk_tree_sortable_sort_column_changed;
alias c_gtk_tree_sortable_get_sort_column_id  gtk_tree_sortable_get_sort_column_id;
alias c_gtk_tree_sortable_set_sort_column_id  gtk_tree_sortable_set_sort_column_id;
alias c_gtk_tree_sortable_set_sort_func  gtk_tree_sortable_set_sort_func;
alias c_gtk_tree_sortable_set_default_sort_func  gtk_tree_sortable_set_default_sort_func;
alias c_gtk_tree_sortable_has_default_sort_func  gtk_tree_sortable_has_default_sort_func;

// gtk.TreeModelSort

alias c_gtk_tree_model_sort_new_with_model  gtk_tree_model_sort_new_with_model;
alias c_gtk_tree_model_sort_get_model  gtk_tree_model_sort_get_model;
alias c_gtk_tree_model_sort_convert_child_path_to_path  gtk_tree_model_sort_convert_child_path_to_path;
alias c_gtk_tree_model_sort_convert_child_iter_to_iter  gtk_tree_model_sort_convert_child_iter_to_iter;
alias c_gtk_tree_model_sort_convert_path_to_child_path  gtk_tree_model_sort_convert_path_to_child_path;
alias c_gtk_tree_model_sort_convert_iter_to_child_iter  gtk_tree_model_sort_convert_iter_to_child_iter;
alias c_gtk_tree_model_sort_reset_default_sort_func  gtk_tree_model_sort_reset_default_sort_func;
alias c_gtk_tree_model_sort_clear_cache  gtk_tree_model_sort_clear_cache;
alias c_gtk_tree_model_sort_iter_is_valid  gtk_tree_model_sort_iter_is_valid;

// gtk.TreeModelFilter

alias c_gtk_tree_model_filter_new  gtk_tree_model_filter_new;
alias c_gtk_tree_model_filter_set_visible_func  gtk_tree_model_filter_set_visible_func;
alias c_gtk_tree_model_filter_set_modify_func  gtk_tree_model_filter_set_modify_func;
alias c_gtk_tree_model_filter_set_visible_column  gtk_tree_model_filter_set_visible_column;
alias c_gtk_tree_model_filter_get_model  gtk_tree_model_filter_get_model;
alias c_gtk_tree_model_filter_convert_child_iter_to_iter  gtk_tree_model_filter_convert_child_iter_to_iter;
alias c_gtk_tree_model_filter_convert_iter_to_child_iter  gtk_tree_model_filter_convert_iter_to_child_iter;
alias c_gtk_tree_model_filter_convert_child_path_to_path  gtk_tree_model_filter_convert_child_path_to_path;
alias c_gtk_tree_model_filter_convert_path_to_child_path  gtk_tree_model_filter_convert_path_to_child_path;
alias c_gtk_tree_model_filter_refilter  gtk_tree_model_filter_refilter;
alias c_gtk_tree_model_filter_clear_cache  gtk_tree_model_filter_clear_cache;

// gtk.CellLayoutT


// gtk.CellLayoutT

alias c_gtk_cell_layout_pack_start  gtk_cell_layout_pack_start;
alias c_gtk_cell_layout_pack_end  gtk_cell_layout_pack_end;
alias c_gtk_cell_layout_get_area  gtk_cell_layout_get_area;
alias c_gtk_cell_layout_get_cells  gtk_cell_layout_get_cells;
alias c_gtk_cell_layout_reorder  gtk_cell_layout_reorder;
alias c_gtk_cell_layout_clear  gtk_cell_layout_clear;
alias c_gtk_cell_layout_set_attributes  gtk_cell_layout_set_attributes;
alias c_gtk_cell_layout_add_attribute  gtk_cell_layout_add_attribute;
alias c_gtk_cell_layout_set_cell_data_func  gtk_cell_layout_set_cell_data_func;
alias c_gtk_cell_layout_clear_attributes  gtk_cell_layout_clear_attributes;

// gtk.CellArea

alias c_gtk_cell_area_add  gtk_cell_area_add;
alias c_gtk_cell_area_remove  gtk_cell_area_remove;
alias c_gtk_cell_area_has_renderer  gtk_cell_area_has_renderer;
alias c_gtk_cell_area_foreach  gtk_cell_area_foreach;
alias c_gtk_cell_area_foreach_alloc  gtk_cell_area_foreach_alloc;
alias c_gtk_cell_area_event  gtk_cell_area_event;
alias c_gtk_cell_area_render  gtk_cell_area_render;
alias c_gtk_cell_area_get_cell_allocation  gtk_cell_area_get_cell_allocation;
alias c_gtk_cell_area_get_cell_at_position  gtk_cell_area_get_cell_at_position;
alias c_gtk_cell_area_create_context  gtk_cell_area_create_context;
alias c_gtk_cell_area_copy_context  gtk_cell_area_copy_context;
alias c_gtk_cell_area_get_request_mode  gtk_cell_area_get_request_mode;
alias c_gtk_cell_area_get_preferred_width  gtk_cell_area_get_preferred_width;
alias c_gtk_cell_area_get_preferred_height_for_width  gtk_cell_area_get_preferred_height_for_width;
alias c_gtk_cell_area_get_preferred_height  gtk_cell_area_get_preferred_height;
alias c_gtk_cell_area_get_preferred_width_for_height  gtk_cell_area_get_preferred_width_for_height;
alias c_gtk_cell_area_get_current_path_string  gtk_cell_area_get_current_path_string;
alias c_gtk_cell_area_apply_attributes  gtk_cell_area_apply_attributes;
alias c_gtk_cell_area_attribute_connect  gtk_cell_area_attribute_connect;
alias c_gtk_cell_area_attribute_disconnect  gtk_cell_area_attribute_disconnect;
alias c_gtk_cell_area_class_install_cell_property  gtk_cell_area_class_install_cell_property;
alias c_gtk_cell_area_class_find_cell_property  gtk_cell_area_class_find_cell_property;
alias c_gtk_cell_area_class_list_cell_properties  gtk_cell_area_class_list_cell_properties;
alias c_gtk_cell_area_add_with_properties  gtk_cell_area_add_with_properties;
alias c_gtk_cell_area_cell_set  gtk_cell_area_cell_set;
alias c_gtk_cell_area_cell_get  gtk_cell_area_cell_get;
alias c_gtk_cell_area_cell_set_valist  gtk_cell_area_cell_set_valist;
alias c_gtk_cell_area_cell_get_valist  gtk_cell_area_cell_get_valist;
alias c_gtk_cell_area_cell_set_property  gtk_cell_area_cell_set_property;
alias c_gtk_cell_area_cell_get_property  gtk_cell_area_cell_get_property;
alias c_gtk_cell_area_is_activatable  gtk_cell_area_is_activatable;
alias c_gtk_cell_area_activate  gtk_cell_area_activate;
alias c_gtk_cell_area_focus  gtk_cell_area_focus;
alias c_gtk_cell_area_set_focus_cell  gtk_cell_area_set_focus_cell;
alias c_gtk_cell_area_get_focus_cell  gtk_cell_area_get_focus_cell;
alias c_gtk_cell_area_add_focus_sibling  gtk_cell_area_add_focus_sibling;
alias c_gtk_cell_area_remove_focus_sibling  gtk_cell_area_remove_focus_sibling;
alias c_gtk_cell_area_is_focus_sibling  gtk_cell_area_is_focus_sibling;
alias c_gtk_cell_area_get_focus_siblings  gtk_cell_area_get_focus_siblings;
alias c_gtk_cell_area_get_focus_from_sibling  gtk_cell_area_get_focus_from_sibling;
alias c_gtk_cell_area_get_edited_cell  gtk_cell_area_get_edited_cell;
alias c_gtk_cell_area_get_edit_widget  gtk_cell_area_get_edit_widget;
alias c_gtk_cell_area_activate_cell  gtk_cell_area_activate_cell;
alias c_gtk_cell_area_stop_editing  gtk_cell_area_stop_editing;
alias c_gtk_cell_area_inner_cell_area  gtk_cell_area_inner_cell_area;
alias c_gtk_cell_area_request_renderer  gtk_cell_area_request_renderer;

// gtk.CellAreaBox

alias c_gtk_cell_area_box_new  gtk_cell_area_box_new;
alias c_gtk_cell_area_box_pack_start  gtk_cell_area_box_pack_start;
alias c_gtk_cell_area_box_pack_end  gtk_cell_area_box_pack_end;
alias c_gtk_cell_area_box_get_spacing  gtk_cell_area_box_get_spacing;
alias c_gtk_cell_area_box_set_spacing  gtk_cell_area_box_set_spacing;

// gtk.CellAreaContext

alias c_gtk_cell_area_context_get_area  gtk_cell_area_context_get_area;
alias c_gtk_cell_area_context_allocate  gtk_cell_area_context_allocate;
alias c_gtk_cell_area_context_reset  gtk_cell_area_context_reset;
alias c_gtk_cell_area_context_get_preferred_width  gtk_cell_area_context_get_preferred_width;
alias c_gtk_cell_area_context_get_preferred_height  gtk_cell_area_context_get_preferred_height;
alias c_gtk_cell_area_context_get_preferred_height_for_width  gtk_cell_area_context_get_preferred_height_for_width;
alias c_gtk_cell_area_context_get_preferred_width_for_height  gtk_cell_area_context_get_preferred_width_for_height;
alias c_gtk_cell_area_context_get_allocation  gtk_cell_area_context_get_allocation;
alias c_gtk_cell_area_context_push_preferred_width  gtk_cell_area_context_push_preferred_width;
alias c_gtk_cell_area_context_push_preferred_height  gtk_cell_area_context_push_preferred_height;

// gtk.CellRenderer

alias c_gtk_cell_renderer_get_aligned_area  gtk_cell_renderer_get_aligned_area;
alias c_gtk_cell_renderer_get_size  gtk_cell_renderer_get_size;
alias c_gtk_cell_renderer_render  gtk_cell_renderer_render;
alias c_gtk_cell_renderer_activate  gtk_cell_renderer_activate;
alias c_gtk_cell_renderer_start_editing  gtk_cell_renderer_start_editing;
alias c_gtk_cell_renderer_stop_editing  gtk_cell_renderer_stop_editing;
alias c_gtk_cell_renderer_get_fixed_size  gtk_cell_renderer_get_fixed_size;
alias c_gtk_cell_renderer_set_fixed_size  gtk_cell_renderer_set_fixed_size;
alias c_gtk_cell_renderer_get_visible  gtk_cell_renderer_get_visible;
alias c_gtk_cell_renderer_set_visible  gtk_cell_renderer_set_visible;
alias c_gtk_cell_renderer_get_sensitive  gtk_cell_renderer_get_sensitive;
alias c_gtk_cell_renderer_set_sensitive  gtk_cell_renderer_set_sensitive;
alias c_gtk_cell_renderer_get_alignment  gtk_cell_renderer_get_alignment;
alias c_gtk_cell_renderer_set_alignment  gtk_cell_renderer_set_alignment;
alias c_gtk_cell_renderer_get_padding  gtk_cell_renderer_get_padding;
alias c_gtk_cell_renderer_set_padding  gtk_cell_renderer_set_padding;
alias c_gtk_cell_renderer_get_state  gtk_cell_renderer_get_state;
alias c_gtk_cell_renderer_is_activatable  gtk_cell_renderer_is_activatable;
alias c_gtk_cell_renderer_get_preferred_height  gtk_cell_renderer_get_preferred_height;
alias c_gtk_cell_renderer_get_preferred_height_for_width  gtk_cell_renderer_get_preferred_height_for_width;
alias c_gtk_cell_renderer_get_preferred_size  gtk_cell_renderer_get_preferred_size;
alias c_gtk_cell_renderer_get_preferred_width  gtk_cell_renderer_get_preferred_width;
alias c_gtk_cell_renderer_get_preferred_width_for_height  gtk_cell_renderer_get_preferred_width_for_height;
alias c_gtk_cell_renderer_get_request_mode  gtk_cell_renderer_get_request_mode;

// gtk.CellEditableT


// gtk.CellEditableT

alias c_gtk_cell_editable_start_editing  gtk_cell_editable_start_editing;
alias c_gtk_cell_editable_editing_done  gtk_cell_editable_editing_done;
alias c_gtk_cell_editable_remove_widget  gtk_cell_editable_remove_widget;

// gtk.CellEditable


// gtk.CellRendererAccel

alias c_gtk_cell_renderer_accel_new  gtk_cell_renderer_accel_new;

// gtk.CellRendererCombo

alias c_gtk_cell_renderer_combo_new  gtk_cell_renderer_combo_new;

// gtk.CellRendererPixbuf

alias c_gtk_cell_renderer_pixbuf_new  gtk_cell_renderer_pixbuf_new;

// gtk.CellRendererProgress

alias c_gtk_cell_renderer_progress_new  gtk_cell_renderer_progress_new;

// gtk.CellRendererSpin

alias c_gtk_cell_renderer_spin_new  gtk_cell_renderer_spin_new;

// gtk.CellRendererText

alias c_gtk_cell_renderer_text_new  gtk_cell_renderer_text_new;
alias c_gtk_cell_renderer_text_set_fixed_height_from_font  gtk_cell_renderer_text_set_fixed_height_from_font;

// gtk.CellRendererToggle

alias c_gtk_cell_renderer_toggle_new  gtk_cell_renderer_toggle_new;
alias c_gtk_cell_renderer_toggle_get_radio  gtk_cell_renderer_toggle_get_radio;
alias c_gtk_cell_renderer_toggle_set_radio  gtk_cell_renderer_toggle_set_radio;
alias c_gtk_cell_renderer_toggle_get_active  gtk_cell_renderer_toggle_get_active;
alias c_gtk_cell_renderer_toggle_set_active  gtk_cell_renderer_toggle_set_active;
alias c_gtk_cell_renderer_toggle_get_activatable  gtk_cell_renderer_toggle_get_activatable;
alias c_gtk_cell_renderer_toggle_set_activatable  gtk_cell_renderer_toggle_set_activatable;

// gtk.CellRendererSpinner

alias c_gtk_cell_renderer_spinner_new  gtk_cell_renderer_spinner_new;

// gtk.


// gtk.ListStore

alias c_gtk_list_store_new  gtk_list_store_new;
alias c_gtk_list_store_newv  gtk_list_store_newv;
alias c_gtk_list_store_set_column_types  gtk_list_store_set_column_types;
alias c_gtk_list_store_set  gtk_list_store_set;
alias c_gtk_list_store_set_valist  gtk_list_store_set_valist;
alias c_gtk_list_store_set_value  gtk_list_store_set_value;
alias c_gtk_list_store_set_valuesv  gtk_list_store_set_valuesv;
alias c_gtk_list_store_remove  gtk_list_store_remove;
alias c_gtk_list_store_insert  gtk_list_store_insert;
alias c_gtk_list_store_insert_before  gtk_list_store_insert_before;
alias c_gtk_list_store_insert_after  gtk_list_store_insert_after;
alias c_gtk_list_store_insert_with_values  gtk_list_store_insert_with_values;
alias c_gtk_list_store_insert_with_valuesv  gtk_list_store_insert_with_valuesv;
alias c_gtk_list_store_prepend  gtk_list_store_prepend;
alias c_gtk_list_store_append  gtk_list_store_append;
alias c_gtk_list_store_clear  gtk_list_store_clear;
alias c_gtk_list_store_iter_is_valid  gtk_list_store_iter_is_valid;
alias c_gtk_list_store_reorder  gtk_list_store_reorder;
alias c_gtk_list_store_swap  gtk_list_store_swap;
alias c_gtk_list_store_move_before  gtk_list_store_move_before;
alias c_gtk_list_store_move_after  gtk_list_store_move_after;

// gtk.TreeStore

alias c_gtk_tree_store_new  gtk_tree_store_new;
alias c_gtk_tree_store_newv  gtk_tree_store_newv;
alias c_gtk_tree_store_set_column_types  gtk_tree_store_set_column_types;
alias c_gtk_tree_store_set_value  gtk_tree_store_set_value;
alias c_gtk_tree_store_set  gtk_tree_store_set;
alias c_gtk_tree_store_set_valist  gtk_tree_store_set_valist;
alias c_gtk_tree_store_set_valuesv  gtk_tree_store_set_valuesv;
alias c_gtk_tree_store_remove  gtk_tree_store_remove;
alias c_gtk_tree_store_insert  gtk_tree_store_insert;
alias c_gtk_tree_store_insert_before  gtk_tree_store_insert_before;
alias c_gtk_tree_store_insert_after  gtk_tree_store_insert_after;
alias c_gtk_tree_store_insert_with_values  gtk_tree_store_insert_with_values;
alias c_gtk_tree_store_insert_with_valuesv  gtk_tree_store_insert_with_valuesv;
alias c_gtk_tree_store_prepend  gtk_tree_store_prepend;
alias c_gtk_tree_store_append  gtk_tree_store_append;
alias c_gtk_tree_store_is_ancestor  gtk_tree_store_is_ancestor;
alias c_gtk_tree_store_iter_depth  gtk_tree_store_iter_depth;
alias c_gtk_tree_store_clear  gtk_tree_store_clear;
alias c_gtk_tree_store_iter_is_valid  gtk_tree_store_iter_is_valid;
alias c_gtk_tree_store_reorder  gtk_tree_store_reorder;
alias c_gtk_tree_store_swap  gtk_tree_store_swap;
alias c_gtk_tree_store_move_before  gtk_tree_store_move_before;
alias c_gtk_tree_store_move_after  gtk_tree_store_move_after;

// gtk.ComboBox

alias c_gtk_combo_box_new  gtk_combo_box_new;
alias c_gtk_combo_box_new_with_entry  gtk_combo_box_new_with_entry;
alias c_gtk_combo_box_new_with_model  gtk_combo_box_new_with_model;
alias c_gtk_combo_box_new_with_model_and_entry  gtk_combo_box_new_with_model_and_entry;
alias c_gtk_combo_box_new_with_area  gtk_combo_box_new_with_area;
alias c_gtk_combo_box_new_with_area_and_entry  gtk_combo_box_new_with_area_and_entry;
alias c_gtk_combo_box_get_wrap_width  gtk_combo_box_get_wrap_width;
alias c_gtk_combo_box_set_wrap_width  gtk_combo_box_set_wrap_width;
alias c_gtk_combo_box_get_row_span_column  gtk_combo_box_get_row_span_column;
alias c_gtk_combo_box_set_row_span_column  gtk_combo_box_set_row_span_column;
alias c_gtk_combo_box_get_column_span_column  gtk_combo_box_get_column_span_column;
alias c_gtk_combo_box_set_column_span_column  gtk_combo_box_set_column_span_column;
alias c_gtk_combo_box_get_active  gtk_combo_box_get_active;
alias c_gtk_combo_box_set_active  gtk_combo_box_set_active;
alias c_gtk_combo_box_get_active_iter  gtk_combo_box_get_active_iter;
alias c_gtk_combo_box_set_active_iter  gtk_combo_box_set_active_iter;
alias c_gtk_combo_box_get_id_column  gtk_combo_box_get_id_column;
alias c_gtk_combo_box_set_id_column  gtk_combo_box_set_id_column;
alias c_gtk_combo_box_get_active_id  gtk_combo_box_get_active_id;
alias c_gtk_combo_box_set_active_id  gtk_combo_box_set_active_id;
alias c_gtk_combo_box_get_model  gtk_combo_box_get_model;
alias c_gtk_combo_box_set_model  gtk_combo_box_set_model;
alias c_gtk_combo_box_popup_for_device  gtk_combo_box_popup_for_device;
alias c_gtk_combo_box_popup  gtk_combo_box_popup;
alias c_gtk_combo_box_popdown  gtk_combo_box_popdown;
alias c_gtk_combo_box_get_popup_accessible  gtk_combo_box_get_popup_accessible;
alias c_gtk_combo_box_get_row_separator_func  gtk_combo_box_get_row_separator_func;
alias c_gtk_combo_box_set_row_separator_func  gtk_combo_box_set_row_separator_func;
alias c_gtk_combo_box_set_add_tearoffs  gtk_combo_box_set_add_tearoffs;
alias c_gtk_combo_box_get_add_tearoffs  gtk_combo_box_get_add_tearoffs;
alias c_gtk_combo_box_set_title  gtk_combo_box_set_title;
alias c_gtk_combo_box_get_title  gtk_combo_box_get_title;
alias c_gtk_combo_box_set_focus_on_click  gtk_combo_box_set_focus_on_click;
alias c_gtk_combo_box_get_focus_on_click  gtk_combo_box_get_focus_on_click;
alias c_gtk_combo_box_set_button_sensitivity  gtk_combo_box_set_button_sensitivity;
alias c_gtk_combo_box_get_button_sensitivity  gtk_combo_box_get_button_sensitivity;
alias c_gtk_combo_box_get_has_entry  gtk_combo_box_get_has_entry;
alias c_gtk_combo_box_set_entry_text_column  gtk_combo_box_set_entry_text_column;
alias c_gtk_combo_box_get_entry_text_column  gtk_combo_box_get_entry_text_column;
alias c_gtk_combo_box_set_popup_fixed_width  gtk_combo_box_set_popup_fixed_width;
alias c_gtk_combo_box_get_popup_fixed_width  gtk_combo_box_get_popup_fixed_width;

// gtk.ComboBoxText

alias c_gtk_combo_box_text_new  gtk_combo_box_text_new;
alias c_gtk_combo_box_text_new_with_entry  gtk_combo_box_text_new_with_entry;
alias c_gtk_combo_box_text_append  gtk_combo_box_text_append;
alias c_gtk_combo_box_text_prepend  gtk_combo_box_text_prepend;
alias c_gtk_combo_box_text_insert  gtk_combo_box_text_insert;
alias c_gtk_combo_box_text_append_text  gtk_combo_box_text_append_text;
alias c_gtk_combo_box_text_prepend_text  gtk_combo_box_text_prepend_text;
alias c_gtk_combo_box_text_insert_text  gtk_combo_box_text_insert_text;
alias c_gtk_combo_box_text_remove  gtk_combo_box_text_remove;
alias c_gtk_combo_box_text_remove_all  gtk_combo_box_text_remove_all;
alias c_gtk_combo_box_text_get_active_text  gtk_combo_box_text_get_active_text;

// gtk.Menu

alias c_gtk_menu_new  gtk_menu_new;
alias c_gtk_menu_new_from_model  gtk_menu_new_from_model;
alias c_gtk_menu_set_screen  gtk_menu_set_screen;
alias c_gtk_menu_reorder_child  gtk_menu_reorder_child;
alias c_gtk_menu_attach  gtk_menu_attach;
alias c_gtk_menu_popup_for_device  gtk_menu_popup_for_device;
alias c_gtk_menu_popup  gtk_menu_popup;
alias c_gtk_menu_set_accel_group  gtk_menu_set_accel_group;
alias c_gtk_menu_get_accel_group  gtk_menu_get_accel_group;
alias c_gtk_menu_set_accel_path  gtk_menu_set_accel_path;
alias c_gtk_menu_get_accel_path  gtk_menu_get_accel_path;
alias c_gtk_menu_set_title  gtk_menu_set_title;
alias c_gtk_menu_get_title  gtk_menu_get_title;
alias c_gtk_menu_set_monitor  gtk_menu_set_monitor;
alias c_gtk_menu_get_monitor  gtk_menu_get_monitor;
alias c_gtk_menu_get_tearoff_state  gtk_menu_get_tearoff_state;
alias c_gtk_menu_set_reserve_toggle_size  gtk_menu_set_reserve_toggle_size;
alias c_gtk_menu_get_reserve_toggle_size  gtk_menu_get_reserve_toggle_size;
alias c_gtk_menu_popdown  gtk_menu_popdown;
alias c_gtk_menu_reposition  gtk_menu_reposition;
alias c_gtk_menu_get_active  gtk_menu_get_active;
alias c_gtk_menu_set_active  gtk_menu_set_active;
alias c_gtk_menu_set_tearoff_state  gtk_menu_set_tearoff_state;
alias c_gtk_menu_attach_to_widget  gtk_menu_attach_to_widget;
alias c_gtk_menu_detach  gtk_menu_detach;
alias c_gtk_menu_get_attach_widget  gtk_menu_get_attach_widget;
alias c_gtk_menu_get_for_attach_widget  gtk_menu_get_for_attach_widget;

// gtk.MenuBar

alias c_gtk_menu_bar_new  gtk_menu_bar_new;
alias c_gtk_menu_bar_new_from_model  gtk_menu_bar_new_from_model;
alias c_gtk_menu_bar_set_pack_direction  gtk_menu_bar_set_pack_direction;
alias c_gtk_menu_bar_get_pack_direction  gtk_menu_bar_get_pack_direction;
alias c_gtk_menu_bar_set_child_pack_direction  gtk_menu_bar_set_child_pack_direction;
alias c_gtk_menu_bar_get_child_pack_direction  gtk_menu_bar_get_child_pack_direction;

// gtk.MenuItem

alias c_gtk_menu_item_new  gtk_menu_item_new;
alias c_gtk_menu_item_new_with_label  gtk_menu_item_new_with_label;
alias c_gtk_menu_item_new_with_mnemonic  gtk_menu_item_new_with_mnemonic;
alias c_gtk_menu_item_set_right_justified  gtk_menu_item_set_right_justified;
alias c_gtk_menu_item_get_right_justified  gtk_menu_item_get_right_justified;
alias c_gtk_menu_item_get_label  gtk_menu_item_get_label;
alias c_gtk_menu_item_set_label  gtk_menu_item_set_label;
alias c_gtk_menu_item_get_use_underline  gtk_menu_item_get_use_underline;
alias c_gtk_menu_item_set_use_underline  gtk_menu_item_set_use_underline;
alias c_gtk_menu_item_set_submenu  gtk_menu_item_set_submenu;
alias c_gtk_menu_item_get_submenu  gtk_menu_item_get_submenu;
alias c_gtk_menu_item_set_accel_path  gtk_menu_item_set_accel_path;
alias c_gtk_menu_item_get_accel_path  gtk_menu_item_get_accel_path;
alias c_gtk_menu_item_select  gtk_menu_item_select;
alias c_gtk_menu_item_deselect  gtk_menu_item_deselect;
alias c_gtk_menu_item_activate  gtk_menu_item_activate;
alias c_gtk_menu_item_toggle_size_request  gtk_menu_item_toggle_size_request;
alias c_gtk_menu_item_toggle_size_allocate  gtk_menu_item_toggle_size_allocate;
alias c_gtk_menu_item_get_reserve_indicator  gtk_menu_item_get_reserve_indicator;
alias c_gtk_menu_item_set_reserve_indicator  gtk_menu_item_set_reserve_indicator;

// gtk.ImageMenuItem

alias c_gtk_image_menu_item_set_image  gtk_image_menu_item_set_image;
alias c_gtk_image_menu_item_get_image  gtk_image_menu_item_get_image;
alias c_gtk_image_menu_item_new  gtk_image_menu_item_new;
alias c_gtk_image_menu_item_new_from_stock  gtk_image_menu_item_new_from_stock;
alias c_gtk_image_menu_item_new_with_label  gtk_image_menu_item_new_with_label;
alias c_gtk_image_menu_item_new_with_mnemonic  gtk_image_menu_item_new_with_mnemonic;
alias c_gtk_image_menu_item_get_use_stock  gtk_image_menu_item_get_use_stock;
alias c_gtk_image_menu_item_set_use_stock  gtk_image_menu_item_set_use_stock;
alias c_gtk_image_menu_item_get_always_show_image  gtk_image_menu_item_get_always_show_image;
alias c_gtk_image_menu_item_set_always_show_image  gtk_image_menu_item_set_always_show_image;
alias c_gtk_image_menu_item_set_accel_group  gtk_image_menu_item_set_accel_group;

// gtk.RadioMenuItem

alias c_gtk_radio_menu_item_new  gtk_radio_menu_item_new;
alias c_gtk_radio_menu_item_new_with_label  gtk_radio_menu_item_new_with_label;
alias c_gtk_radio_menu_item_new_with_mnemonic  gtk_radio_menu_item_new_with_mnemonic;
alias c_gtk_radio_menu_item_new_from_widget  gtk_radio_menu_item_new_from_widget;
alias c_gtk_radio_menu_item_new_with_label_from_widget  gtk_radio_menu_item_new_with_label_from_widget;
alias c_gtk_radio_menu_item_new_with_mnemonic_from_widget  gtk_radio_menu_item_new_with_mnemonic_from_widget;
alias c_gtk_radio_menu_item_set_group  gtk_radio_menu_item_set_group;
alias c_gtk_radio_menu_item_get_group  gtk_radio_menu_item_get_group;

// gtk.CheckMenuItem

alias c_gtk_check_menu_item_new  gtk_check_menu_item_new;
alias c_gtk_check_menu_item_new_with_label  gtk_check_menu_item_new_with_label;
alias c_gtk_check_menu_item_new_with_mnemonic  gtk_check_menu_item_new_with_mnemonic;
alias c_gtk_check_menu_item_get_active  gtk_check_menu_item_get_active;
alias c_gtk_check_menu_item_set_active  gtk_check_menu_item_set_active;
alias c_gtk_check_menu_item_toggled  gtk_check_menu_item_toggled;
alias c_gtk_check_menu_item_get_inconsistent  gtk_check_menu_item_get_inconsistent;
alias c_gtk_check_menu_item_set_inconsistent  gtk_check_menu_item_set_inconsistent;
alias c_gtk_check_menu_item_set_draw_as_radio  gtk_check_menu_item_set_draw_as_radio;
alias c_gtk_check_menu_item_get_draw_as_radio  gtk_check_menu_item_get_draw_as_radio;

// gtk.SeparatorMenuItem

alias c_gtk_separator_menu_item_new  gtk_separator_menu_item_new;

// gtk.TearoffMenuItem

alias c_gtk_tearoff_menu_item_new  gtk_tearoff_menu_item_new;

// gtk.ToolShellT


// gtk.ToolShellT

alias c_gtk_tool_shell_get_ellipsize_mode  gtk_tool_shell_get_ellipsize_mode;
alias c_gtk_tool_shell_get_icon_size  gtk_tool_shell_get_icon_size;
alias c_gtk_tool_shell_get_orientation  gtk_tool_shell_get_orientation;
alias c_gtk_tool_shell_get_relief_style  gtk_tool_shell_get_relief_style;
alias c_gtk_tool_shell_get_style  gtk_tool_shell_get_style;
alias c_gtk_tool_shell_get_text_alignment  gtk_tool_shell_get_text_alignment;
alias c_gtk_tool_shell_get_text_orientation  gtk_tool_shell_get_text_orientation;
alias c_gtk_tool_shell_rebuild_menu  gtk_tool_shell_rebuild_menu;
alias c_gtk_tool_shell_get_text_size_group  gtk_tool_shell_get_text_size_group;

// gtk.Toolbar

alias c_gtk_toolbar_new  gtk_toolbar_new;
alias c_gtk_toolbar_insert  gtk_toolbar_insert;
alias c_gtk_toolbar_get_item_index  gtk_toolbar_get_item_index;
alias c_gtk_toolbar_get_n_items  gtk_toolbar_get_n_items;
alias c_gtk_toolbar_get_nth_item  gtk_toolbar_get_nth_item;
alias c_gtk_toolbar_get_drop_index  gtk_toolbar_get_drop_index;
alias c_gtk_toolbar_set_drop_highlight_item  gtk_toolbar_set_drop_highlight_item;
alias c_gtk_toolbar_set_show_arrow  gtk_toolbar_set_show_arrow;
alias c_gtk_toolbar_unset_icon_size  gtk_toolbar_unset_icon_size;
alias c_gtk_toolbar_get_show_arrow  gtk_toolbar_get_show_arrow;
alias c_gtk_toolbar_get_style  gtk_toolbar_get_style;
alias c_gtk_toolbar_get_icon_size  gtk_toolbar_get_icon_size;
alias c_gtk_toolbar_get_relief_style  gtk_toolbar_get_relief_style;
alias c_gtk_toolbar_set_style  gtk_toolbar_set_style;
alias c_gtk_toolbar_set_icon_size  gtk_toolbar_set_icon_size;
alias c_gtk_toolbar_unset_style  gtk_toolbar_unset_style;

// gtk.ToolItem

alias c_gtk_tool_item_new  gtk_tool_item_new;
alias c_gtk_tool_item_set_homogeneous  gtk_tool_item_set_homogeneous;
alias c_gtk_tool_item_get_homogeneous  gtk_tool_item_get_homogeneous;
alias c_gtk_tool_item_set_expand  gtk_tool_item_set_expand;
alias c_gtk_tool_item_get_expand  gtk_tool_item_get_expand;
alias c_gtk_tool_item_set_tooltip_text  gtk_tool_item_set_tooltip_text;
alias c_gtk_tool_item_set_tooltip_markup  gtk_tool_item_set_tooltip_markup;
alias c_gtk_tool_item_set_use_drag_window  gtk_tool_item_set_use_drag_window;
alias c_gtk_tool_item_get_use_drag_window  gtk_tool_item_get_use_drag_window;
alias c_gtk_tool_item_set_visible_horizontal  gtk_tool_item_set_visible_horizontal;
alias c_gtk_tool_item_get_visible_horizontal  gtk_tool_item_get_visible_horizontal;
alias c_gtk_tool_item_set_visible_vertical  gtk_tool_item_set_visible_vertical;
alias c_gtk_tool_item_get_visible_vertical  gtk_tool_item_get_visible_vertical;
alias c_gtk_tool_item_set_is_important  gtk_tool_item_set_is_important;
alias c_gtk_tool_item_get_is_important  gtk_tool_item_get_is_important;
alias c_gtk_tool_item_get_ellipsize_mode  gtk_tool_item_get_ellipsize_mode;
alias c_gtk_tool_item_get_icon_size  gtk_tool_item_get_icon_size;
alias c_gtk_tool_item_get_orientation  gtk_tool_item_get_orientation;
alias c_gtk_tool_item_get_toolbar_style  gtk_tool_item_get_toolbar_style;
alias c_gtk_tool_item_get_relief_style  gtk_tool_item_get_relief_style;
alias c_gtk_tool_item_get_text_alignment  gtk_tool_item_get_text_alignment;
alias c_gtk_tool_item_get_text_orientation  gtk_tool_item_get_text_orientation;
alias c_gtk_tool_item_retrieve_proxy_menu_item  gtk_tool_item_retrieve_proxy_menu_item;
alias c_gtk_tool_item_get_proxy_menu_item  gtk_tool_item_get_proxy_menu_item;
alias c_gtk_tool_item_set_proxy_menu_item  gtk_tool_item_set_proxy_menu_item;
alias c_gtk_tool_item_rebuild_menu  gtk_tool_item_rebuild_menu;
alias c_gtk_tool_item_toolbar_reconfigured  gtk_tool_item_toolbar_reconfigured;
alias c_gtk_tool_item_get_text_size_group  gtk_tool_item_get_text_size_group;

// gtk.ToolPalette

alias c_gtk_tool_palette_new  gtk_tool_palette_new;
alias c_gtk_tool_palette_get_exclusive  gtk_tool_palette_get_exclusive;
alias c_gtk_tool_palette_set_exclusive  gtk_tool_palette_set_exclusive;
alias c_gtk_tool_palette_get_expand  gtk_tool_palette_get_expand;
alias c_gtk_tool_palette_set_expand  gtk_tool_palette_set_expand;
alias c_gtk_tool_palette_get_group_position  gtk_tool_palette_get_group_position;
alias c_gtk_tool_palette_set_group_position  gtk_tool_palette_set_group_position;
alias c_gtk_tool_palette_get_icon_size  gtk_tool_palette_get_icon_size;
alias c_gtk_tool_palette_set_icon_size  gtk_tool_palette_set_icon_size;
alias c_gtk_tool_palette_unset_icon_size  gtk_tool_palette_unset_icon_size;
alias c_gtk_tool_palette_get_style  gtk_tool_palette_get_style;
alias c_gtk_tool_palette_set_style  gtk_tool_palette_set_style;
alias c_gtk_tool_palette_unset_style  gtk_tool_palette_unset_style;
alias c_gtk_tool_palette_add_drag_dest  gtk_tool_palette_add_drag_dest;
alias c_gtk_tool_palette_get_drag_item  gtk_tool_palette_get_drag_item;
alias c_gtk_tool_palette_get_drag_target_group  gtk_tool_palette_get_drag_target_group;
alias c_gtk_tool_palette_get_drag_target_item  gtk_tool_palette_get_drag_target_item;
alias c_gtk_tool_palette_get_drop_group  gtk_tool_palette_get_drop_group;
alias c_gtk_tool_palette_get_drop_item  gtk_tool_palette_get_drop_item;
alias c_gtk_tool_palette_set_drag_source  gtk_tool_palette_set_drag_source;
alias c_gtk_tool_palette_get_hadjustment  gtk_tool_palette_get_hadjustment;
alias c_gtk_tool_palette_get_vadjustment  gtk_tool_palette_get_vadjustment;

// gtk.ToolItemGroup

alias c_gtk_tool_item_group_get_collapsed  gtk_tool_item_group_get_collapsed;
alias c_gtk_tool_item_group_get_drop_item  gtk_tool_item_group_get_drop_item;
alias c_gtk_tool_item_group_get_ellipsize  gtk_tool_item_group_get_ellipsize;
alias c_gtk_tool_item_group_get_item_position  gtk_tool_item_group_get_item_position;
alias c_gtk_tool_item_group_get_n_items  gtk_tool_item_group_get_n_items;
alias c_gtk_tool_item_group_get_label  gtk_tool_item_group_get_label;
alias c_gtk_tool_item_group_get_label_widget  gtk_tool_item_group_get_label_widget;
alias c_gtk_tool_item_group_get_nth_item  gtk_tool_item_group_get_nth_item;
alias c_gtk_tool_item_group_get_header_relief  gtk_tool_item_group_get_header_relief;
alias c_gtk_tool_item_group_insert  gtk_tool_item_group_insert;
alias c_gtk_tool_item_group_new  gtk_tool_item_group_new;
alias c_gtk_tool_item_group_set_collapsed  gtk_tool_item_group_set_collapsed;
alias c_gtk_tool_item_group_set_ellipsize  gtk_tool_item_group_set_ellipsize;
alias c_gtk_tool_item_group_set_item_position  gtk_tool_item_group_set_item_position;
alias c_gtk_tool_item_group_set_label  gtk_tool_item_group_set_label;
alias c_gtk_tool_item_group_set_label_widget  gtk_tool_item_group_set_label_widget;
alias c_gtk_tool_item_group_set_header_relief  gtk_tool_item_group_set_header_relief;

// gtk.SeparatorToolItem

alias c_gtk_separator_tool_item_new  gtk_separator_tool_item_new;
alias c_gtk_separator_tool_item_set_draw  gtk_separator_tool_item_set_draw;
alias c_gtk_separator_tool_item_get_draw  gtk_separator_tool_item_get_draw;

// gtk.ToolButton

alias c_gtk_tool_button_new  gtk_tool_button_new;
alias c_gtk_tool_button_new_from_stock  gtk_tool_button_new_from_stock;
alias c_gtk_tool_button_set_label  gtk_tool_button_set_label;
alias c_gtk_tool_button_get_label  gtk_tool_button_get_label;
alias c_gtk_tool_button_set_use_underline  gtk_tool_button_set_use_underline;
alias c_gtk_tool_button_get_use_underline  gtk_tool_button_get_use_underline;
alias c_gtk_tool_button_set_stock_id  gtk_tool_button_set_stock_id;
alias c_gtk_tool_button_get_stock_id  gtk_tool_button_get_stock_id;
alias c_gtk_tool_button_set_icon_name  gtk_tool_button_set_icon_name;
alias c_gtk_tool_button_get_icon_name  gtk_tool_button_get_icon_name;
alias c_gtk_tool_button_set_icon_widget  gtk_tool_button_set_icon_widget;
alias c_gtk_tool_button_get_icon_widget  gtk_tool_button_get_icon_widget;
alias c_gtk_tool_button_set_label_widget  gtk_tool_button_set_label_widget;
alias c_gtk_tool_button_get_label_widget  gtk_tool_button_get_label_widget;

// gtk.MenuToolButton

alias c_gtk_menu_tool_button_new  gtk_menu_tool_button_new;
alias c_gtk_menu_tool_button_new_from_stock  gtk_menu_tool_button_new_from_stock;
alias c_gtk_menu_tool_button_set_menu  gtk_menu_tool_button_set_menu;
alias c_gtk_menu_tool_button_get_menu  gtk_menu_tool_button_get_menu;
alias c_gtk_menu_tool_button_set_arrow_tooltip_text  gtk_menu_tool_button_set_arrow_tooltip_text;
alias c_gtk_menu_tool_button_set_arrow_tooltip_markup  gtk_menu_tool_button_set_arrow_tooltip_markup;

// gtk.ToggleToolButton

alias c_gtk_toggle_tool_button_new  gtk_toggle_tool_button_new;
alias c_gtk_toggle_tool_button_new_from_stock  gtk_toggle_tool_button_new_from_stock;
alias c_gtk_toggle_tool_button_set_active  gtk_toggle_tool_button_set_active;
alias c_gtk_toggle_tool_button_get_active  gtk_toggle_tool_button_get_active;

// gtk.RadioToolButton

alias c_gtk_radio_tool_button_new  gtk_radio_tool_button_new;
alias c_gtk_radio_tool_button_new_from_stock  gtk_radio_tool_button_new_from_stock;
alias c_gtk_radio_tool_button_new_from_widget  gtk_radio_tool_button_new_from_widget;
alias c_gtk_radio_tool_button_new_with_stock_from_widget  gtk_radio_tool_button_new_with_stock_from_widget;
alias c_gtk_radio_tool_button_get_group  gtk_radio_tool_button_get_group;
alias c_gtk_radio_tool_button_set_group  gtk_radio_tool_button_set_group;

// gtk.UIManager

alias c_gtk_ui_manager_new  gtk_ui_manager_new;
alias c_gtk_ui_manager_set_add_tearoffs  gtk_ui_manager_set_add_tearoffs;
alias c_gtk_ui_manager_get_add_tearoffs  gtk_ui_manager_get_add_tearoffs;
alias c_gtk_ui_manager_insert_action_group  gtk_ui_manager_insert_action_group;
alias c_gtk_ui_manager_remove_action_group  gtk_ui_manager_remove_action_group;
alias c_gtk_ui_manager_get_action_groups  gtk_ui_manager_get_action_groups;
alias c_gtk_ui_manager_get_accel_group  gtk_ui_manager_get_accel_group;
alias c_gtk_ui_manager_get_widget  gtk_ui_manager_get_widget;
alias c_gtk_ui_manager_get_toplevels  gtk_ui_manager_get_toplevels;
alias c_gtk_ui_manager_get_action  gtk_ui_manager_get_action;
alias c_gtk_ui_manager_add_ui_from_resource  gtk_ui_manager_add_ui_from_resource;
alias c_gtk_ui_manager_add_ui_from_string  gtk_ui_manager_add_ui_from_string;
alias c_gtk_ui_manager_add_ui_from_file  gtk_ui_manager_add_ui_from_file;
alias c_gtk_ui_manager_new_merge_id  gtk_ui_manager_new_merge_id;
alias c_gtk_ui_manager_add_ui  gtk_ui_manager_add_ui;
alias c_gtk_ui_manager_remove_ui  gtk_ui_manager_remove_ui;
alias c_gtk_ui_manager_get_ui  gtk_ui_manager_get_ui;
alias c_gtk_ui_manager_ensure_update  gtk_ui_manager_ensure_update;

// gtk.ActionGroup

alias c_gtk_action_group_new  gtk_action_group_new;
alias c_gtk_action_group_get_name  gtk_action_group_get_name;
alias c_gtk_action_group_get_sensitive  gtk_action_group_get_sensitive;
alias c_gtk_action_group_set_sensitive  gtk_action_group_set_sensitive;
alias c_gtk_action_group_get_visible  gtk_action_group_get_visible;
alias c_gtk_action_group_set_visible  gtk_action_group_set_visible;
alias c_gtk_action_group_get_accel_group  gtk_action_group_get_accel_group;
alias c_gtk_action_group_set_accel_group  gtk_action_group_set_accel_group;
alias c_gtk_action_group_get_action  gtk_action_group_get_action;
alias c_gtk_action_group_list_actions  gtk_action_group_list_actions;
alias c_gtk_action_group_add_action  gtk_action_group_add_action;
alias c_gtk_action_group_add_action_with_accel  gtk_action_group_add_action_with_accel;
alias c_gtk_action_group_remove_action  gtk_action_group_remove_action;
alias c_gtk_action_group_add_actions  gtk_action_group_add_actions;
alias c_gtk_action_group_add_actions_full  gtk_action_group_add_actions_full;
alias c_gtk_action_group_add_toggle_actions  gtk_action_group_add_toggle_actions;
alias c_gtk_action_group_add_toggle_actions_full  gtk_action_group_add_toggle_actions_full;
alias c_gtk_action_group_add_radio_actions  gtk_action_group_add_radio_actions;
alias c_gtk_action_group_add_radio_actions_full  gtk_action_group_add_radio_actions_full;
alias c_gtk_action_group_set_translate_func  gtk_action_group_set_translate_func;
alias c_gtk_action_group_set_translation_domain  gtk_action_group_set_translation_domain;
alias c_gtk_action_group_translate_string  gtk_action_group_translate_string;

// gtk.Action

alias c_gtk_action_new  gtk_action_new;
alias c_gtk_action_get_name  gtk_action_get_name;
alias c_gtk_action_is_sensitive  gtk_action_is_sensitive;
alias c_gtk_action_get_sensitive  gtk_action_get_sensitive;
alias c_gtk_action_set_sensitive  gtk_action_set_sensitive;
alias c_gtk_action_is_visible  gtk_action_is_visible;
alias c_gtk_action_get_visible  gtk_action_get_visible;
alias c_gtk_action_set_visible  gtk_action_set_visible;
alias c_gtk_action_activate  gtk_action_activate;
alias c_gtk_action_create_icon  gtk_action_create_icon;
alias c_gtk_action_create_menu_item  gtk_action_create_menu_item;
alias c_gtk_action_create_tool_item  gtk_action_create_tool_item;
alias c_gtk_action_create_menu  gtk_action_create_menu;
alias c_gtk_action_get_proxies  gtk_action_get_proxies;
alias c_gtk_action_connect_accelerator  gtk_action_connect_accelerator;
alias c_gtk_action_disconnect_accelerator  gtk_action_disconnect_accelerator;
alias c_gtk_action_block_activate  gtk_action_block_activate;
alias c_gtk_action_unblock_activate  gtk_action_unblock_activate;
alias c_gtk_action_get_always_show_image  gtk_action_get_always_show_image;
alias c_gtk_action_set_always_show_image  gtk_action_set_always_show_image;
alias c_gtk_action_get_accel_path  gtk_action_get_accel_path;
alias c_gtk_action_set_accel_path  gtk_action_set_accel_path;
alias c_gtk_action_get_accel_closure  gtk_action_get_accel_closure;
alias c_gtk_action_set_accel_group  gtk_action_set_accel_group;
alias c_gtk_action_set_label  gtk_action_set_label;
alias c_gtk_action_get_label  gtk_action_get_label;
alias c_gtk_action_set_short_label  gtk_action_set_short_label;
alias c_gtk_action_get_short_label  gtk_action_get_short_label;
alias c_gtk_action_set_tooltip  gtk_action_set_tooltip;
alias c_gtk_action_get_tooltip  gtk_action_get_tooltip;
alias c_gtk_action_set_stock_id  gtk_action_set_stock_id;
alias c_gtk_action_get_stock_id  gtk_action_get_stock_id;
alias c_gtk_action_set_gicon  gtk_action_set_gicon;
alias c_gtk_action_get_gicon  gtk_action_get_gicon;
alias c_gtk_action_set_icon_name  gtk_action_set_icon_name;
alias c_gtk_action_get_icon_name  gtk_action_get_icon_name;
alias c_gtk_action_set_visible_horizontal  gtk_action_set_visible_horizontal;
alias c_gtk_action_get_visible_horizontal  gtk_action_get_visible_horizontal;
alias c_gtk_action_set_visible_vertical  gtk_action_set_visible_vertical;
alias c_gtk_action_get_visible_vertical  gtk_action_get_visible_vertical;
alias c_gtk_action_set_is_important  gtk_action_set_is_important;
alias c_gtk_action_get_is_important  gtk_action_get_is_important;

// gtk.ToggleAction

alias c_gtk_toggle_action_new  gtk_toggle_action_new;
alias c_gtk_toggle_action_toggled  gtk_toggle_action_toggled;
alias c_gtk_toggle_action_set_active  gtk_toggle_action_set_active;
alias c_gtk_toggle_action_get_active  gtk_toggle_action_get_active;
alias c_gtk_toggle_action_set_draw_as_radio  gtk_toggle_action_set_draw_as_radio;
alias c_gtk_toggle_action_get_draw_as_radio  gtk_toggle_action_get_draw_as_radio;

// gtk.RadioAction

alias c_gtk_radio_action_new  gtk_radio_action_new;
alias c_gtk_radio_action_get_group  gtk_radio_action_get_group;
alias c_gtk_radio_action_set_group  gtk_radio_action_set_group;
alias c_gtk_radio_action_join_group  gtk_radio_action_join_group;
alias c_gtk_radio_action_get_current_value  gtk_radio_action_get_current_value;
alias c_gtk_radio_action_set_current_value  gtk_radio_action_set_current_value;

// gtk.RecentAction

alias c_gtk_recent_action_new  gtk_recent_action_new;
alias c_gtk_recent_action_new_for_manager  gtk_recent_action_new_for_manager;
alias c_gtk_recent_action_get_show_numbers  gtk_recent_action_get_show_numbers;
alias c_gtk_recent_action_set_show_numbers  gtk_recent_action_set_show_numbers;

// gtk.ActivatableT


// gtk.ActivatableT

alias c_gtk_activatable_do_set_related_action  gtk_activatable_do_set_related_action;
alias c_gtk_activatable_get_related_action  gtk_activatable_get_related_action;
alias c_gtk_activatable_get_use_action_appearance  gtk_activatable_get_use_action_appearance;
alias c_gtk_activatable_sync_action_properties  gtk_activatable_sync_action_properties;
alias c_gtk_activatable_set_related_action  gtk_activatable_set_related_action;
alias c_gtk_activatable_set_use_action_appearance  gtk_activatable_set_use_action_appearance;

// gtk.ColorChooserT


// gtk.ColorChooserT

alias c_gtk_color_chooser_get_rgba  gtk_color_chooser_get_rgba;
alias c_gtk_color_chooser_set_rgba  gtk_color_chooser_set_rgba;
alias c_gtk_color_chooser_get_use_alpha  gtk_color_chooser_get_use_alpha;
alias c_gtk_color_chooser_set_use_alpha  gtk_color_chooser_set_use_alpha;
alias c_gtk_color_chooser_add_palette  gtk_color_chooser_add_palette;

// gtk.ColorButton

alias c_gtk_color_button_new  gtk_color_button_new;
alias c_gtk_color_button_new_with_color  gtk_color_button_new_with_color;
alias c_gtk_color_button_new_with_rgba  gtk_color_button_new_with_rgba;
alias c_gtk_color_button_set_color  gtk_color_button_set_color;
alias c_gtk_color_button_get_color  gtk_color_button_get_color;
alias c_gtk_color_button_set_alpha  gtk_color_button_set_alpha;
alias c_gtk_color_button_get_alpha  gtk_color_button_get_alpha;
alias c_gtk_color_button_set_rgba  gtk_color_button_set_rgba;
alias c_gtk_color_button_get_rgba  gtk_color_button_get_rgba;
alias c_gtk_color_button_set_use_alpha  gtk_color_button_set_use_alpha;
alias c_gtk_color_button_get_use_alpha  gtk_color_button_get_use_alpha;
alias c_gtk_color_button_set_title  gtk_color_button_set_title;
alias c_gtk_color_button_get_title  gtk_color_button_get_title;

// gtk.ColorChooserWidget

alias c_gtk_color_chooser_widget_new  gtk_color_chooser_widget_new;

// gtk.ColorChooserDialog

alias c_gtk_color_chooser_dialog_new  gtk_color_chooser_dialog_new;

// gtk.ColorSelection

alias c_gtk_color_selection_new  gtk_color_selection_new;
alias c_gtk_color_selection_set_has_opacity_control  gtk_color_selection_set_has_opacity_control;
alias c_gtk_color_selection_get_has_opacity_control  gtk_color_selection_get_has_opacity_control;
alias c_gtk_color_selection_set_has_palette  gtk_color_selection_set_has_palette;
alias c_gtk_color_selection_get_has_palette  gtk_color_selection_get_has_palette;
alias c_gtk_color_selection_get_current_alpha  gtk_color_selection_get_current_alpha;
alias c_gtk_color_selection_set_current_alpha  gtk_color_selection_set_current_alpha;
alias c_gtk_color_selection_get_current_color  gtk_color_selection_get_current_color;
alias c_gtk_color_selection_set_current_color  gtk_color_selection_set_current_color;
alias c_gtk_color_selection_get_previous_alpha  gtk_color_selection_get_previous_alpha;
alias c_gtk_color_selection_set_previous_alpha  gtk_color_selection_set_previous_alpha;
alias c_gtk_color_selection_get_previous_color  gtk_color_selection_get_previous_color;
alias c_gtk_color_selection_set_previous_color  gtk_color_selection_set_previous_color;
alias c_gtk_color_selection_get_current_rgba  gtk_color_selection_get_current_rgba;
alias c_gtk_color_selection_set_current_rgba  gtk_color_selection_set_current_rgba;
alias c_gtk_color_selection_get_previous_rgba  gtk_color_selection_get_previous_rgba;
alias c_gtk_color_selection_set_previous_rgba  gtk_color_selection_set_previous_rgba;
alias c_gtk_color_selection_is_adjusting  gtk_color_selection_is_adjusting;
alias c_gtk_color_selection_palette_from_string  gtk_color_selection_palette_from_string;
alias c_gtk_color_selection_palette_to_string  gtk_color_selection_palette_to_string;
alias c_gtk_color_selection_set_change_palette_with_screen_hook  gtk_color_selection_set_change_palette_with_screen_hook;

// gtk.ColorSelectionDialog

alias c_gtk_color_selection_dialog_new  gtk_color_selection_dialog_new;
alias c_gtk_color_selection_dialog_get_color_selection  gtk_color_selection_dialog_get_color_selection;

// gtk.HSV

alias c_gtk_hsv_new  gtk_hsv_new;
alias c_gtk_hsv_set_color  gtk_hsv_set_color;
alias c_gtk_hsv_get_color  gtk_hsv_get_color;
alias c_gtk_hsv_set_metrics  gtk_hsv_set_metrics;
alias c_gtk_hsv_get_metrics  gtk_hsv_get_metrics;
alias c_gtk_hsv_is_adjusting  gtk_hsv_is_adjusting;
alias c_gtk_hsv_to_rgb  gtk_hsv_to_rgb;
alias c_gtk_rgb_to_hsv  gtk_rgb_to_hsv;

// gtk.FileChooserT


// gtk.FileChooserT

alias c_gtk_file_chooser_set_action  gtk_file_chooser_set_action;
alias c_gtk_file_chooser_get_action  gtk_file_chooser_get_action;
alias c_gtk_file_chooser_set_local_only  gtk_file_chooser_set_local_only;
alias c_gtk_file_chooser_get_local_only  gtk_file_chooser_get_local_only;
alias c_gtk_file_chooser_set_select_multiple  gtk_file_chooser_set_select_multiple;
alias c_gtk_file_chooser_get_select_multiple  gtk_file_chooser_get_select_multiple;
alias c_gtk_file_chooser_set_show_hidden  gtk_file_chooser_set_show_hidden;
alias c_gtk_file_chooser_get_show_hidden  gtk_file_chooser_get_show_hidden;
alias c_gtk_file_chooser_set_do_overwrite_confirmation  gtk_file_chooser_set_do_overwrite_confirmation;
alias c_gtk_file_chooser_get_do_overwrite_confirmation  gtk_file_chooser_get_do_overwrite_confirmation;
alias c_gtk_file_chooser_set_create_folders  gtk_file_chooser_set_create_folders;
alias c_gtk_file_chooser_get_create_folders  gtk_file_chooser_get_create_folders;
alias c_gtk_file_chooser_set_current_name  gtk_file_chooser_set_current_name;
alias c_gtk_file_chooser_get_filename  gtk_file_chooser_get_filename;
alias c_gtk_file_chooser_set_filename  gtk_file_chooser_set_filename;
alias c_gtk_file_chooser_select_filename  gtk_file_chooser_select_filename;
alias c_gtk_file_chooser_unselect_filename  gtk_file_chooser_unselect_filename;
alias c_gtk_file_chooser_select_all  gtk_file_chooser_select_all;
alias c_gtk_file_chooser_unselect_all  gtk_file_chooser_unselect_all;
alias c_gtk_file_chooser_get_filenames  gtk_file_chooser_get_filenames;
alias c_gtk_file_chooser_set_current_folder  gtk_file_chooser_set_current_folder;
alias c_gtk_file_chooser_get_current_folder  gtk_file_chooser_get_current_folder;
alias c_gtk_file_chooser_get_uri  gtk_file_chooser_get_uri;
alias c_gtk_file_chooser_set_uri  gtk_file_chooser_set_uri;
alias c_gtk_file_chooser_select_uri  gtk_file_chooser_select_uri;
alias c_gtk_file_chooser_unselect_uri  gtk_file_chooser_unselect_uri;
alias c_gtk_file_chooser_get_uris  gtk_file_chooser_get_uris;
alias c_gtk_file_chooser_set_current_folder_uri  gtk_file_chooser_set_current_folder_uri;
alias c_gtk_file_chooser_get_current_folder_uri  gtk_file_chooser_get_current_folder_uri;
alias c_gtk_file_chooser_set_preview_widget  gtk_file_chooser_set_preview_widget;
alias c_gtk_file_chooser_get_preview_widget  gtk_file_chooser_get_preview_widget;
alias c_gtk_file_chooser_set_preview_widget_active  gtk_file_chooser_set_preview_widget_active;
alias c_gtk_file_chooser_get_preview_widget_active  gtk_file_chooser_get_preview_widget_active;
alias c_gtk_file_chooser_set_use_preview_label  gtk_file_chooser_set_use_preview_label;
alias c_gtk_file_chooser_get_use_preview_label  gtk_file_chooser_get_use_preview_label;
alias c_gtk_file_chooser_get_preview_filename  gtk_file_chooser_get_preview_filename;
alias c_gtk_file_chooser_get_preview_uri  gtk_file_chooser_get_preview_uri;
alias c_gtk_file_chooser_set_extra_widget  gtk_file_chooser_set_extra_widget;
alias c_gtk_file_chooser_get_extra_widget  gtk_file_chooser_get_extra_widget;
alias c_gtk_file_chooser_add_filter  gtk_file_chooser_add_filter;
alias c_gtk_file_chooser_remove_filter  gtk_file_chooser_remove_filter;
alias c_gtk_file_chooser_list_filters  gtk_file_chooser_list_filters;
alias c_gtk_file_chooser_set_filter  gtk_file_chooser_set_filter;
alias c_gtk_file_chooser_get_filter  gtk_file_chooser_get_filter;
alias c_gtk_file_chooser_add_shortcut_folder  gtk_file_chooser_add_shortcut_folder;
alias c_gtk_file_chooser_remove_shortcut_folder  gtk_file_chooser_remove_shortcut_folder;
alias c_gtk_file_chooser_list_shortcut_folders  gtk_file_chooser_list_shortcut_folders;
alias c_gtk_file_chooser_add_shortcut_folder_uri  gtk_file_chooser_add_shortcut_folder_uri;
alias c_gtk_file_chooser_remove_shortcut_folder_uri  gtk_file_chooser_remove_shortcut_folder_uri;
alias c_gtk_file_chooser_list_shortcut_folder_uris  gtk_file_chooser_list_shortcut_folder_uris;
alias c_gtk_file_chooser_get_current_folder_file  gtk_file_chooser_get_current_folder_file;
alias c_gtk_file_chooser_get_file  gtk_file_chooser_get_file;
alias c_gtk_file_chooser_get_files  gtk_file_chooser_get_files;
alias c_gtk_file_chooser_get_preview_file  gtk_file_chooser_get_preview_file;
alias c_gtk_file_chooser_select_file  gtk_file_chooser_select_file;
alias c_gtk_file_chooser_set_current_folder_file  gtk_file_chooser_set_current_folder_file;
alias c_gtk_file_chooser_set_file  gtk_file_chooser_set_file;
alias c_gtk_file_chooser_unselect_file  gtk_file_chooser_unselect_file;

// gtk.FileChooserButton

alias c_gtk_file_chooser_button_new  gtk_file_chooser_button_new;
alias c_gtk_file_chooser_button_new_with_dialog  gtk_file_chooser_button_new_with_dialog;
alias c_gtk_file_chooser_button_get_title  gtk_file_chooser_button_get_title;
alias c_gtk_file_chooser_button_set_title  gtk_file_chooser_button_set_title;
alias c_gtk_file_chooser_button_get_width_chars  gtk_file_chooser_button_get_width_chars;
alias c_gtk_file_chooser_button_set_width_chars  gtk_file_chooser_button_set_width_chars;
alias c_gtk_file_chooser_button_get_focus_on_click  gtk_file_chooser_button_get_focus_on_click;
alias c_gtk_file_chooser_button_set_focus_on_click  gtk_file_chooser_button_set_focus_on_click;

// gtk.FileChooserDialog

alias c_gtk_file_chooser_dialog_new  gtk_file_chooser_dialog_new;

// gtk.FileChooserWidget

alias c_gtk_file_chooser_widget_new  gtk_file_chooser_widget_new;

// gtk.FileFilter

alias c_gtk_file_filter_new  gtk_file_filter_new;
alias c_gtk_file_filter_set_name  gtk_file_filter_set_name;
alias c_gtk_file_filter_get_name  gtk_file_filter_get_name;
alias c_gtk_file_filter_add_mime_type  gtk_file_filter_add_mime_type;
alias c_gtk_file_filter_add_pattern  gtk_file_filter_add_pattern;
alias c_gtk_file_filter_add_pixbuf_formats  gtk_file_filter_add_pixbuf_formats;
alias c_gtk_file_filter_add_custom  gtk_file_filter_add_custom;
alias c_gtk_file_filter_get_needed  gtk_file_filter_get_needed;
alias c_gtk_file_filter_filter  gtk_file_filter_filter;

// gtk.FontChooserT


// gtk.FontChooserT

alias c_gtk_font_chooser_get_font_family  gtk_font_chooser_get_font_family;
alias c_gtk_font_chooser_get_font_face  gtk_font_chooser_get_font_face;
alias c_gtk_font_chooser_get_font_size  gtk_font_chooser_get_font_size;
alias c_gtk_font_chooser_get_font  gtk_font_chooser_get_font;
alias c_gtk_font_chooser_set_font  gtk_font_chooser_set_font;
alias c_gtk_font_chooser_get_font_desc  gtk_font_chooser_get_font_desc;
alias c_gtk_font_chooser_set_font_desc  gtk_font_chooser_set_font_desc;
alias c_gtk_font_chooser_get_preview_text  gtk_font_chooser_get_preview_text;
alias c_gtk_font_chooser_set_preview_text  gtk_font_chooser_set_preview_text;
alias c_gtk_font_chooser_get_show_preview_entry  gtk_font_chooser_get_show_preview_entry;
alias c_gtk_font_chooser_set_show_preview_entry  gtk_font_chooser_set_show_preview_entry;
alias c_gtk_font_chooser_set_filter_func  gtk_font_chooser_set_filter_func;

// gtk.FontButton

alias c_gtk_font_button_new  gtk_font_button_new;
alias c_gtk_font_button_new_with_font  gtk_font_button_new_with_font;
alias c_gtk_font_button_set_font_name  gtk_font_button_set_font_name;
alias c_gtk_font_button_get_font_name  gtk_font_button_get_font_name;
alias c_gtk_font_button_set_show_style  gtk_font_button_set_show_style;
alias c_gtk_font_button_get_show_style  gtk_font_button_get_show_style;
alias c_gtk_font_button_set_show_size  gtk_font_button_set_show_size;
alias c_gtk_font_button_get_show_size  gtk_font_button_get_show_size;
alias c_gtk_font_button_set_use_font  gtk_font_button_set_use_font;
alias c_gtk_font_button_get_use_font  gtk_font_button_get_use_font;
alias c_gtk_font_button_set_use_size  gtk_font_button_set_use_size;
alias c_gtk_font_button_get_use_size  gtk_font_button_get_use_size;
alias c_gtk_font_button_set_title  gtk_font_button_set_title;
alias c_gtk_font_button_get_title  gtk_font_button_get_title;

// gtk.FontChooserWidget

alias c_gtk_font_chooser_widget_new  gtk_font_chooser_widget_new;

// gtk.FontChooserDialog

alias c_gtk_font_chooser_dialog_new  gtk_font_chooser_dialog_new;

// gtk.FontSelection

alias c_gtk_font_selection_new  gtk_font_selection_new;
alias c_gtk_font_selection_get_font_name  gtk_font_selection_get_font_name;
alias c_gtk_font_selection_set_font_name  gtk_font_selection_set_font_name;
alias c_gtk_font_selection_get_preview_text  gtk_font_selection_get_preview_text;
alias c_gtk_font_selection_set_preview_text  gtk_font_selection_set_preview_text;
alias c_gtk_font_selection_get_face  gtk_font_selection_get_face;
alias c_gtk_font_selection_get_face_list  gtk_font_selection_get_face_list;
alias c_gtk_font_selection_get_family  gtk_font_selection_get_family;
alias c_gtk_font_selection_get_size  gtk_font_selection_get_size;
alias c_gtk_font_selection_get_family_list  gtk_font_selection_get_family_list;
alias c_gtk_font_selection_get_preview_entry  gtk_font_selection_get_preview_entry;
alias c_gtk_font_selection_get_size_entry  gtk_font_selection_get_size_entry;
alias c_gtk_font_selection_get_size_list  gtk_font_selection_get_size_list;

// gtk.FontSelectionDialog

alias c_gtk_font_selection_dialog_new  gtk_font_selection_dialog_new;
alias c_gtk_font_selection_dialog_get_font_name  gtk_font_selection_dialog_get_font_name;
alias c_gtk_font_selection_dialog_set_font_name  gtk_font_selection_dialog_set_font_name;
alias c_gtk_font_selection_dialog_get_preview_text  gtk_font_selection_dialog_get_preview_text;
alias c_gtk_font_selection_dialog_set_preview_text  gtk_font_selection_dialog_set_preview_text;
alias c_gtk_font_selection_dialog_get_cancel_button  gtk_font_selection_dialog_get_cancel_button;
alias c_gtk_font_selection_dialog_get_ok_button  gtk_font_selection_dialog_get_ok_button;
alias c_gtk_font_selection_dialog_get_font_selection  gtk_font_selection_dialog_get_font_selection;

// gtk.Grid

alias c_gtk_grid_new  gtk_grid_new;
alias c_gtk_grid_attach  gtk_grid_attach;
alias c_gtk_grid_attach_next_to  gtk_grid_attach_next_to;
alias c_gtk_grid_get_child_at  gtk_grid_get_child_at;
alias c_gtk_grid_insert_row  gtk_grid_insert_row;
alias c_gtk_grid_insert_column  gtk_grid_insert_column;
alias c_gtk_grid_insert_next_to  gtk_grid_insert_next_to;
alias c_gtk_grid_set_row_homogeneous  gtk_grid_set_row_homogeneous;
alias c_gtk_grid_get_row_homogeneous  gtk_grid_get_row_homogeneous;
alias c_gtk_grid_set_row_spacing  gtk_grid_set_row_spacing;
alias c_gtk_grid_get_row_spacing  gtk_grid_get_row_spacing;
alias c_gtk_grid_set_column_homogeneous  gtk_grid_set_column_homogeneous;
alias c_gtk_grid_get_column_homogeneous  gtk_grid_get_column_homogeneous;
alias c_gtk_grid_set_column_spacing  gtk_grid_set_column_spacing;
alias c_gtk_grid_get_column_spacing  gtk_grid_get_column_spacing;

// gtk.Alignment

alias c_gtk_alignment_new  gtk_alignment_new;
alias c_gtk_alignment_set  gtk_alignment_set;
alias c_gtk_alignment_get_padding  gtk_alignment_get_padding;
alias c_gtk_alignment_set_padding  gtk_alignment_set_padding;

// gtk.AspectFrame

alias c_gtk_aspect_frame_new  gtk_aspect_frame_new;
alias c_gtk_aspect_frame_set  gtk_aspect_frame_set;

// gtk.Box

alias c_gtk_box_new  gtk_box_new;
alias c_gtk_box_pack_start  gtk_box_pack_start;
alias c_gtk_box_pack_end  gtk_box_pack_end;
alias c_gtk_box_get_homogeneous  gtk_box_get_homogeneous;
alias c_gtk_box_set_homogeneous  gtk_box_set_homogeneous;
alias c_gtk_box_get_spacing  gtk_box_get_spacing;
alias c_gtk_box_set_spacing  gtk_box_set_spacing;
alias c_gtk_box_reorder_child  gtk_box_reorder_child;
alias c_gtk_box_query_child_packing  gtk_box_query_child_packing;
alias c_gtk_box_set_child_packing  gtk_box_set_child_packing;

// gtk.HBox

alias c_gtk_hbox_new  gtk_hbox_new;

// gtk.VBox

alias c_gtk_vbox_new  gtk_vbox_new;

// gtk.ButtonBox

alias c_gtk_button_box_new  gtk_button_box_new;
alias c_gtk_button_box_get_layout  gtk_button_box_get_layout;
alias c_gtk_button_box_get_child_secondary  gtk_button_box_get_child_secondary;
alias c_gtk_button_box_get_child_non_homogeneous  gtk_button_box_get_child_non_homogeneous;
alias c_gtk_button_box_set_layout  gtk_button_box_set_layout;
alias c_gtk_button_box_set_child_secondary  gtk_button_box_set_child_secondary;
alias c_gtk_button_box_set_child_non_homogeneous  gtk_button_box_set_child_non_homogeneous;

// gtk.HButtonBox

alias c_gtk_hbutton_box_new  gtk_hbutton_box_new;

// gtk.VButtonBox

alias c_gtk_vbutton_box_new  gtk_vbutton_box_new;

// gtk.Fixed

alias c_gtk_fixed_new  gtk_fixed_new;
alias c_gtk_fixed_put  gtk_fixed_put;
alias c_gtk_fixed_move  gtk_fixed_move;

// gtk.Paned

alias c_gtk_paned_new  gtk_paned_new;
alias c_gtk_paned_add1  gtk_paned_add1;
alias c_gtk_paned_add2  gtk_paned_add2;
alias c_gtk_paned_pack1  gtk_paned_pack1;
alias c_gtk_paned_pack2  gtk_paned_pack2;
alias c_gtk_paned_get_child1  gtk_paned_get_child1;
alias c_gtk_paned_get_child2  gtk_paned_get_child2;
alias c_gtk_paned_set_position  gtk_paned_set_position;
alias c_gtk_paned_get_position  gtk_paned_get_position;
alias c_gtk_paned_get_handle_window  gtk_paned_get_handle_window;

// gtk.HPaned

alias c_gtk_hpaned_new  gtk_hpaned_new;

// gtk.VPaned

alias c_gtk_vpaned_new  gtk_vpaned_new;

// gtk.Layout

alias c_gtk_layout_new  gtk_layout_new;
alias c_gtk_layout_put  gtk_layout_put;
alias c_gtk_layout_move  gtk_layout_move;
alias c_gtk_layout_set_size  gtk_layout_set_size;
alias c_gtk_layout_get_size  gtk_layout_get_size;
alias c_gtk_layout_get_hadjustment  gtk_layout_get_hadjustment;
alias c_gtk_layout_get_vadjustment  gtk_layout_get_vadjustment;
alias c_gtk_layout_set_hadjustment  gtk_layout_set_hadjustment;
alias c_gtk_layout_set_vadjustment  gtk_layout_set_vadjustment;
alias c_gtk_layout_get_bin_window  gtk_layout_get_bin_window;

// gtk.Notebook

alias c_gtk_notebook_new  gtk_notebook_new;
alias c_gtk_notebook_append_page  gtk_notebook_append_page;
alias c_gtk_notebook_append_page_menu  gtk_notebook_append_page_menu;
alias c_gtk_notebook_prepend_page  gtk_notebook_prepend_page;
alias c_gtk_notebook_prepend_page_menu  gtk_notebook_prepend_page_menu;
alias c_gtk_notebook_insert_page  gtk_notebook_insert_page;
alias c_gtk_notebook_insert_page_menu  gtk_notebook_insert_page_menu;
alias c_gtk_notebook_remove_page  gtk_notebook_remove_page;
alias c_gtk_notebook_page_num  gtk_notebook_page_num;
alias c_gtk_notebook_next_page  gtk_notebook_next_page;
alias c_gtk_notebook_prev_page  gtk_notebook_prev_page;
alias c_gtk_notebook_reorder_child  gtk_notebook_reorder_child;
alias c_gtk_notebook_set_tab_pos  gtk_notebook_set_tab_pos;
alias c_gtk_notebook_set_show_tabs  gtk_notebook_set_show_tabs;
alias c_gtk_notebook_set_show_border  gtk_notebook_set_show_border;
alias c_gtk_notebook_set_scrollable  gtk_notebook_set_scrollable;
alias c_gtk_notebook_popup_enable  gtk_notebook_popup_enable;
alias c_gtk_notebook_popup_disable  gtk_notebook_popup_disable;
alias c_gtk_notebook_get_current_page  gtk_notebook_get_current_page;
alias c_gtk_notebook_get_menu_label  gtk_notebook_get_menu_label;
alias c_gtk_notebook_get_nth_page  gtk_notebook_get_nth_page;
alias c_gtk_notebook_get_n_pages  gtk_notebook_get_n_pages;
alias c_gtk_notebook_get_tab_label  gtk_notebook_get_tab_label;
alias c_gtk_notebook_set_menu_label  gtk_notebook_set_menu_label;
alias c_gtk_notebook_set_menu_label_text  gtk_notebook_set_menu_label_text;
alias c_gtk_notebook_set_tab_label  gtk_notebook_set_tab_label;
alias c_gtk_notebook_set_tab_label_text  gtk_notebook_set_tab_label_text;
alias c_gtk_notebook_set_tab_reorderable  gtk_notebook_set_tab_reorderable;
alias c_gtk_notebook_set_tab_detachable  gtk_notebook_set_tab_detachable;
alias c_gtk_notebook_get_menu_label_text  gtk_notebook_get_menu_label_text;
alias c_gtk_notebook_get_scrollable  gtk_notebook_get_scrollable;
alias c_gtk_notebook_get_show_border  gtk_notebook_get_show_border;
alias c_gtk_notebook_get_show_tabs  gtk_notebook_get_show_tabs;
alias c_gtk_notebook_get_tab_label_text  gtk_notebook_get_tab_label_text;
alias c_gtk_notebook_get_tab_pos  gtk_notebook_get_tab_pos;
alias c_gtk_notebook_get_tab_reorderable  gtk_notebook_get_tab_reorderable;
alias c_gtk_notebook_get_tab_detachable  gtk_notebook_get_tab_detachable;
alias c_gtk_notebook_get_tab_hborder  gtk_notebook_get_tab_hborder;
alias c_gtk_notebook_get_tab_vborder  gtk_notebook_get_tab_vborder;
alias c_gtk_notebook_set_current_page  gtk_notebook_set_current_page;
alias c_gtk_notebook_set_group_name  gtk_notebook_set_group_name;
alias c_gtk_notebook_get_group_name  gtk_notebook_get_group_name;
alias c_gtk_notebook_set_action_widget  gtk_notebook_set_action_widget;
alias c_gtk_notebook_get_action_widget  gtk_notebook_get_action_widget;

// gtk.Table

alias c_gtk_table_new  gtk_table_new;
alias c_gtk_table_resize  gtk_table_resize;
alias c_gtk_table_get_size  gtk_table_get_size;
alias c_gtk_table_attach  gtk_table_attach;
alias c_gtk_table_attach_defaults  gtk_table_attach_defaults;
alias c_gtk_table_set_row_spacing  gtk_table_set_row_spacing;
alias c_gtk_table_set_col_spacing  gtk_table_set_col_spacing;
alias c_gtk_table_set_row_spacings  gtk_table_set_row_spacings;
alias c_gtk_table_set_col_spacings  gtk_table_set_col_spacings;
alias c_gtk_table_set_homogeneous  gtk_table_set_homogeneous;
alias c_gtk_table_get_default_row_spacing  gtk_table_get_default_row_spacing;
alias c_gtk_table_get_homogeneous  gtk_table_get_homogeneous;
alias c_gtk_table_get_row_spacing  gtk_table_get_row_spacing;
alias c_gtk_table_get_col_spacing  gtk_table_get_col_spacing;
alias c_gtk_table_get_default_col_spacing  gtk_table_get_default_col_spacing;

// gtk.Expander

alias c_gtk_expander_new  gtk_expander_new;
alias c_gtk_expander_new_with_mnemonic  gtk_expander_new_with_mnemonic;
alias c_gtk_expander_set_expanded  gtk_expander_set_expanded;
alias c_gtk_expander_get_expanded  gtk_expander_get_expanded;
alias c_gtk_expander_set_spacing  gtk_expander_set_spacing;
alias c_gtk_expander_get_spacing  gtk_expander_get_spacing;
alias c_gtk_expander_set_label  gtk_expander_set_label;
alias c_gtk_expander_get_label  gtk_expander_get_label;
alias c_gtk_expander_set_use_underline  gtk_expander_set_use_underline;
alias c_gtk_expander_get_use_underline  gtk_expander_get_use_underline;
alias c_gtk_expander_set_use_markup  gtk_expander_set_use_markup;
alias c_gtk_expander_get_use_markup  gtk_expander_get_use_markup;
alias c_gtk_expander_set_label_widget  gtk_expander_set_label_widget;
alias c_gtk_expander_get_label_widget  gtk_expander_get_label_widget;
alias c_gtk_expander_set_label_fill  gtk_expander_set_label_fill;
alias c_gtk_expander_get_label_fill  gtk_expander_get_label_fill;
alias c_gtk_expander_set_resize_toplevel  gtk_expander_set_resize_toplevel;
alias c_gtk_expander_get_resize_toplevel  gtk_expander_get_resize_toplevel;

// gtk.Overlay

alias c_gtk_overlay_new  gtk_overlay_new;
alias c_gtk_overlay_add_overlay  gtk_overlay_add_overlay;

// gtk.OrientableT


// gtk.OrientableT

alias c_gtk_orientable_get_orientation  gtk_orientable_get_orientation;
alias c_gtk_orientable_set_orientation  gtk_orientable_set_orientation;

// gtk.Frame

alias c_gtk_frame_new  gtk_frame_new;
alias c_gtk_frame_set_label  gtk_frame_set_label;
alias c_gtk_frame_set_label_widget  gtk_frame_set_label_widget;
alias c_gtk_frame_set_label_align  gtk_frame_set_label_align;
alias c_gtk_frame_set_shadow_type  gtk_frame_set_shadow_type;
alias c_gtk_frame_get_label  gtk_frame_get_label;
alias c_gtk_frame_get_label_align  gtk_frame_get_label_align;
alias c_gtk_frame_get_label_widget  gtk_frame_get_label_widget;
alias c_gtk_frame_get_shadow_type  gtk_frame_get_shadow_type;

// gtk.Separator

alias c_gtk_separator_new  gtk_separator_new;

// gtk.HSeparator

alias c_gtk_hseparator_new  gtk_hseparator_new;

// gtk.VSeparator

alias c_gtk_vseparator_new  gtk_vseparator_new;

// gtk.Scrollbar

alias c_gtk_scrollbar_new  gtk_scrollbar_new;

// gtk.HScrollbar

alias c_gtk_hscrollbar_new  gtk_hscrollbar_new;

// gtk.VScrollbar

alias c_gtk_vscrollbar_new  gtk_vscrollbar_new;

// gtk.ScrolledWindow

alias c_gtk_scrolled_window_new  gtk_scrolled_window_new;
alias c_gtk_scrolled_window_get_hadjustment  gtk_scrolled_window_get_hadjustment;
alias c_gtk_scrolled_window_get_vadjustment  gtk_scrolled_window_get_vadjustment;
alias c_gtk_scrolled_window_get_hscrollbar  gtk_scrolled_window_get_hscrollbar;
alias c_gtk_scrolled_window_get_vscrollbar  gtk_scrolled_window_get_vscrollbar;
alias c_gtk_scrolled_window_set_policy  gtk_scrolled_window_set_policy;
alias c_gtk_scrolled_window_add_with_viewport  gtk_scrolled_window_add_with_viewport;
alias c_gtk_scrolled_window_set_placement  gtk_scrolled_window_set_placement;
alias c_gtk_scrolled_window_unset_placement  gtk_scrolled_window_unset_placement;
alias c_gtk_scrolled_window_set_shadow_type  gtk_scrolled_window_set_shadow_type;
alias c_gtk_scrolled_window_set_hadjustment  gtk_scrolled_window_set_hadjustment;
alias c_gtk_scrolled_window_set_vadjustment  gtk_scrolled_window_set_vadjustment;
alias c_gtk_scrolled_window_get_placement  gtk_scrolled_window_get_placement;
alias c_gtk_scrolled_window_get_policy  gtk_scrolled_window_get_policy;
alias c_gtk_scrolled_window_get_shadow_type  gtk_scrolled_window_get_shadow_type;
alias c_gtk_scrolled_window_get_min_content_width  gtk_scrolled_window_get_min_content_width;
alias c_gtk_scrolled_window_set_min_content_width  gtk_scrolled_window_set_min_content_width;
alias c_gtk_scrolled_window_get_min_content_height  gtk_scrolled_window_get_min_content_height;
alias c_gtk_scrolled_window_set_min_content_height  gtk_scrolled_window_set_min_content_height;
alias c_gtk_scrolled_window_set_kinetic_scrolling  gtk_scrolled_window_set_kinetic_scrolling;
alias c_gtk_scrolled_window_get_kinetic_scrolling  gtk_scrolled_window_get_kinetic_scrolling;
alias c_gtk_scrolled_window_set_capture_button_press  gtk_scrolled_window_set_capture_button_press;
alias c_gtk_scrolled_window_get_capture_button_press  gtk_scrolled_window_get_capture_button_press;

// gtk.ScrollableT


// gtk.ScrollableT

alias c_gtk_scrollable_get_hadjustment  gtk_scrollable_get_hadjustment;
alias c_gtk_scrollable_set_hadjustment  gtk_scrollable_set_hadjustment;
alias c_gtk_scrollable_get_vadjustment  gtk_scrollable_get_vadjustment;
alias c_gtk_scrollable_set_vadjustment  gtk_scrollable_set_vadjustment;
alias c_gtk_scrollable_get_hscroll_policy  gtk_scrollable_get_hscroll_policy;
alias c_gtk_scrollable_set_hscroll_policy  gtk_scrollable_set_hscroll_policy;
alias c_gtk_scrollable_get_vscroll_policy  gtk_scrollable_get_vscroll_policy;
alias c_gtk_scrollable_set_vscroll_policy  gtk_scrollable_set_vscroll_policy;

// gtk.PrintOperation

alias c_gtk_print_operation_new  gtk_print_operation_new;
alias c_gtk_print_operation_set_allow_async  gtk_print_operation_set_allow_async;
alias c_gtk_print_operation_get_error  gtk_print_operation_get_error;
alias c_gtk_print_operation_set_default_page_setup  gtk_print_operation_set_default_page_setup;
alias c_gtk_print_operation_get_default_page_setup  gtk_print_operation_get_default_page_setup;
alias c_gtk_print_operation_set_print_settings  gtk_print_operation_set_print_settings;
alias c_gtk_print_operation_get_print_settings  gtk_print_operation_get_print_settings;
alias c_gtk_print_operation_set_job_name  gtk_print_operation_set_job_name;
alias c_gtk_print_operation_set_n_pages  gtk_print_operation_set_n_pages;
alias c_gtk_print_operation_get_n_pages_to_print  gtk_print_operation_get_n_pages_to_print;
alias c_gtk_print_operation_set_current_page  gtk_print_operation_set_current_page;
alias c_gtk_print_operation_set_use_full_page  gtk_print_operation_set_use_full_page;
alias c_gtk_print_operation_set_unit  gtk_print_operation_set_unit;
alias c_gtk_print_operation_set_export_filename  gtk_print_operation_set_export_filename;
alias c_gtk_print_operation_set_show_progress  gtk_print_operation_set_show_progress;
alias c_gtk_print_operation_set_track_print_status  gtk_print_operation_set_track_print_status;
alias c_gtk_print_operation_set_custom_tab_label  gtk_print_operation_set_custom_tab_label;
alias c_gtk_print_operation_run  gtk_print_operation_run;
alias c_gtk_print_operation_cancel  gtk_print_operation_cancel;
alias c_gtk_print_operation_draw_page_finish  gtk_print_operation_draw_page_finish;
alias c_gtk_print_operation_set_defer_drawing  gtk_print_operation_set_defer_drawing;
alias c_gtk_print_operation_get_status  gtk_print_operation_get_status;
alias c_gtk_print_operation_get_status_string  gtk_print_operation_get_status_string;
alias c_gtk_print_operation_is_finished  gtk_print_operation_is_finished;
alias c_gtk_print_operation_set_support_selection  gtk_print_operation_set_support_selection;
alias c_gtk_print_operation_get_support_selection  gtk_print_operation_get_support_selection;
alias c_gtk_print_operation_set_has_selection  gtk_print_operation_set_has_selection;
alias c_gtk_print_operation_get_has_selection  gtk_print_operation_get_has_selection;
alias c_gtk_print_operation_set_embed_page_setup  gtk_print_operation_set_embed_page_setup;
alias c_gtk_print_operation_get_embed_page_setup  gtk_print_operation_get_embed_page_setup;
alias c_gtk_print_run_page_setup_dialog  gtk_print_run_page_setup_dialog;
alias c_gtk_print_run_page_setup_dialog_async  gtk_print_run_page_setup_dialog_async;

// gtk.PrintOperationPreviewT


// gtk.PrintOperationPreviewT

alias c_gtk_print_operation_preview_end_preview  gtk_print_operation_preview_end_preview;
alias c_gtk_print_operation_preview_is_selected  gtk_print_operation_preview_is_selected;
alias c_gtk_print_operation_preview_render_page  gtk_print_operation_preview_render_page;

// gtk.PrintContext

alias c_gtk_print_context_get_cairo_context  gtk_print_context_get_cairo_context;
alias c_gtk_print_context_set_cairo_context  gtk_print_context_set_cairo_context;
alias c_gtk_print_context_get_page_setup  gtk_print_context_get_page_setup;
alias c_gtk_print_context_get_width  gtk_print_context_get_width;
alias c_gtk_print_context_get_height  gtk_print_context_get_height;
alias c_gtk_print_context_get_dpi_x  gtk_print_context_get_dpi_x;
alias c_gtk_print_context_get_dpi_y  gtk_print_context_get_dpi_y;
alias c_gtk_print_context_get_pango_fontmap  gtk_print_context_get_pango_fontmap;
alias c_gtk_print_context_create_pango_context  gtk_print_context_create_pango_context;
alias c_gtk_print_context_create_pango_layout  gtk_print_context_create_pango_layout;
alias c_gtk_print_context_get_hard_margins  gtk_print_context_get_hard_margins;

// gtk.PrintSettings

alias c_gtk_print_settings_new  gtk_print_settings_new;
alias c_gtk_print_settings_copy  gtk_print_settings_copy;
alias c_gtk_print_settings_has_key  gtk_print_settings_has_key;
alias c_gtk_print_settings_get  gtk_print_settings_get;
alias c_gtk_print_settings_set  gtk_print_settings_set;
alias c_gtk_print_settings_unset  gtk_print_settings_unset;
alias c_gtk_print_settings_foreach  gtk_print_settings_foreach;
alias c_gtk_print_settings_get_bool  gtk_print_settings_get_bool;
alias c_gtk_print_settings_set_bool  gtk_print_settings_set_bool;
alias c_gtk_print_settings_get_double  gtk_print_settings_get_double;
alias c_gtk_print_settings_get_double_with_default  gtk_print_settings_get_double_with_default;
alias c_gtk_print_settings_set_double  gtk_print_settings_set_double;
alias c_gtk_print_settings_get_length  gtk_print_settings_get_length;
alias c_gtk_print_settings_set_length  gtk_print_settings_set_length;
alias c_gtk_print_settings_get_int  gtk_print_settings_get_int;
alias c_gtk_print_settings_get_int_with_default  gtk_print_settings_get_int_with_default;
alias c_gtk_print_settings_set_int  gtk_print_settings_set_int;
alias c_gtk_print_settings_get_printer  gtk_print_settings_get_printer;
alias c_gtk_print_settings_set_printer  gtk_print_settings_set_printer;
alias c_gtk_print_settings_get_orientation  gtk_print_settings_get_orientation;
alias c_gtk_print_settings_set_orientation  gtk_print_settings_set_orientation;
alias c_gtk_print_settings_get_paper_size  gtk_print_settings_get_paper_size;
alias c_gtk_print_settings_set_paper_size  gtk_print_settings_set_paper_size;
alias c_gtk_print_settings_get_paper_width  gtk_print_settings_get_paper_width;
alias c_gtk_print_settings_set_paper_width  gtk_print_settings_set_paper_width;
alias c_gtk_print_settings_get_paper_height  gtk_print_settings_get_paper_height;
alias c_gtk_print_settings_set_paper_height  gtk_print_settings_set_paper_height;
alias c_gtk_print_settings_get_use_color  gtk_print_settings_get_use_color;
alias c_gtk_print_settings_set_use_color  gtk_print_settings_set_use_color;
alias c_gtk_print_settings_get_collate  gtk_print_settings_get_collate;
alias c_gtk_print_settings_set_collate  gtk_print_settings_set_collate;
alias c_gtk_print_settings_get_reverse  gtk_print_settings_get_reverse;
alias c_gtk_print_settings_set_reverse  gtk_print_settings_set_reverse;
alias c_gtk_print_settings_get_duplex  gtk_print_settings_get_duplex;
alias c_gtk_print_settings_set_duplex  gtk_print_settings_set_duplex;
alias c_gtk_print_settings_get_quality  gtk_print_settings_get_quality;
alias c_gtk_print_settings_set_quality  gtk_print_settings_set_quality;
alias c_gtk_print_settings_get_n_copies  gtk_print_settings_get_n_copies;
alias c_gtk_print_settings_set_n_copies  gtk_print_settings_set_n_copies;
alias c_gtk_print_settings_get_number_up  gtk_print_settings_get_number_up;
alias c_gtk_print_settings_set_number_up  gtk_print_settings_set_number_up;
alias c_gtk_print_settings_get_number_up_layout  gtk_print_settings_get_number_up_layout;
alias c_gtk_print_settings_set_number_up_layout  gtk_print_settings_set_number_up_layout;
alias c_gtk_print_settings_get_resolution  gtk_print_settings_get_resolution;
alias c_gtk_print_settings_set_resolution  gtk_print_settings_set_resolution;
alias c_gtk_print_settings_set_resolution_xy  gtk_print_settings_set_resolution_xy;
alias c_gtk_print_settings_get_resolution_x  gtk_print_settings_get_resolution_x;
alias c_gtk_print_settings_get_resolution_y  gtk_print_settings_get_resolution_y;
alias c_gtk_print_settings_get_printer_lpi  gtk_print_settings_get_printer_lpi;
alias c_gtk_print_settings_set_printer_lpi  gtk_print_settings_set_printer_lpi;
alias c_gtk_print_settings_get_scale  gtk_print_settings_get_scale;
alias c_gtk_print_settings_set_scale  gtk_print_settings_set_scale;
alias c_gtk_print_settings_get_print_pages  gtk_print_settings_get_print_pages;
alias c_gtk_print_settings_set_print_pages  gtk_print_settings_set_print_pages;
alias c_gtk_print_settings_get_page_ranges  gtk_print_settings_get_page_ranges;
alias c_gtk_print_settings_set_page_ranges  gtk_print_settings_set_page_ranges;
alias c_gtk_print_settings_get_page_set  gtk_print_settings_get_page_set;
alias c_gtk_print_settings_set_page_set  gtk_print_settings_set_page_set;
alias c_gtk_print_settings_get_default_source  gtk_print_settings_get_default_source;
alias c_gtk_print_settings_set_default_source  gtk_print_settings_set_default_source;
alias c_gtk_print_settings_get_media_type  gtk_print_settings_get_media_type;
alias c_gtk_print_settings_set_media_type  gtk_print_settings_set_media_type;
alias c_gtk_print_settings_get_dither  gtk_print_settings_get_dither;
alias c_gtk_print_settings_set_dither  gtk_print_settings_set_dither;
alias c_gtk_print_settings_get_finishings  gtk_print_settings_get_finishings;
alias c_gtk_print_settings_set_finishings  gtk_print_settings_set_finishings;
alias c_gtk_print_settings_get_output_bin  gtk_print_settings_get_output_bin;
alias c_gtk_print_settings_set_output_bin  gtk_print_settings_set_output_bin;
alias c_gtk_print_settings_new_from_file  gtk_print_settings_new_from_file;
alias c_gtk_print_settings_new_from_key_file  gtk_print_settings_new_from_key_file;
alias c_gtk_print_settings_load_file  gtk_print_settings_load_file;
alias c_gtk_print_settings_load_key_file  gtk_print_settings_load_key_file;
alias c_gtk_print_settings_to_file  gtk_print_settings_to_file;
alias c_gtk_print_settings_to_key_file  gtk_print_settings_to_key_file;

// gtk.PageSetup

alias c_gtk_page_setup_new  gtk_page_setup_new;
alias c_gtk_page_setup_copy  gtk_page_setup_copy;
alias c_gtk_page_setup_get_orientation  gtk_page_setup_get_orientation;
alias c_gtk_page_setup_set_orientation  gtk_page_setup_set_orientation;
alias c_gtk_page_setup_get_paper_size  gtk_page_setup_get_paper_size;
alias c_gtk_page_setup_set_paper_size  gtk_page_setup_set_paper_size;
alias c_gtk_page_setup_get_top_margin  gtk_page_setup_get_top_margin;
alias c_gtk_page_setup_set_top_margin  gtk_page_setup_set_top_margin;
alias c_gtk_page_setup_get_bottom_margin  gtk_page_setup_get_bottom_margin;
alias c_gtk_page_setup_set_bottom_margin  gtk_page_setup_set_bottom_margin;
alias c_gtk_page_setup_get_left_margin  gtk_page_setup_get_left_margin;
alias c_gtk_page_setup_set_left_margin  gtk_page_setup_set_left_margin;
alias c_gtk_page_setup_get_right_margin  gtk_page_setup_get_right_margin;
alias c_gtk_page_setup_set_right_margin  gtk_page_setup_set_right_margin;
alias c_gtk_page_setup_set_paper_size_and_default_margins  gtk_page_setup_set_paper_size_and_default_margins;
alias c_gtk_page_setup_get_paper_width  gtk_page_setup_get_paper_width;
alias c_gtk_page_setup_get_paper_height  gtk_page_setup_get_paper_height;
alias c_gtk_page_setup_get_page_width  gtk_page_setup_get_page_width;
alias c_gtk_page_setup_get_page_height  gtk_page_setup_get_page_height;
alias c_gtk_page_setup_new_from_file  gtk_page_setup_new_from_file;
alias c_gtk_page_setup_new_from_key_file  gtk_page_setup_new_from_key_file;
alias c_gtk_page_setup_load_file  gtk_page_setup_load_file;
alias c_gtk_page_setup_load_key_file  gtk_page_setup_load_key_file;
alias c_gtk_page_setup_to_file  gtk_page_setup_to_file;
alias c_gtk_page_setup_to_key_file  gtk_page_setup_to_key_file;

// gtk.PaperSize

alias c_gtk_paper_size_new  gtk_paper_size_new;
alias c_gtk_paper_size_new_from_ppd  gtk_paper_size_new_from_ppd;
alias c_gtk_paper_size_new_custom  gtk_paper_size_new_custom;
alias c_gtk_paper_size_copy  gtk_paper_size_copy;
alias c_gtk_paper_size_free  gtk_paper_size_free;
alias c_gtk_paper_size_is_equal  gtk_paper_size_is_equal;
alias c_gtk_paper_size_get_paper_sizes  gtk_paper_size_get_paper_sizes;
alias c_gtk_paper_size_get_name  gtk_paper_size_get_name;
alias c_gtk_paper_size_get_display_name  gtk_paper_size_get_display_name;
alias c_gtk_paper_size_get_ppd_name  gtk_paper_size_get_ppd_name;
alias c_gtk_paper_size_get_width  gtk_paper_size_get_width;
alias c_gtk_paper_size_get_height  gtk_paper_size_get_height;
alias c_gtk_paper_size_is_custom  gtk_paper_size_is_custom;
alias c_gtk_paper_size_set_size  gtk_paper_size_set_size;
alias c_gtk_paper_size_get_default_top_margin  gtk_paper_size_get_default_top_margin;
alias c_gtk_paper_size_get_default_bottom_margin  gtk_paper_size_get_default_bottom_margin;
alias c_gtk_paper_size_get_default_left_margin  gtk_paper_size_get_default_left_margin;
alias c_gtk_paper_size_get_default_right_margin  gtk_paper_size_get_default_right_margin;
alias c_gtk_paper_size_get_default  gtk_paper_size_get_default;
alias c_gtk_paper_size_new_from_key_file  gtk_paper_size_new_from_key_file;
alias c_gtk_paper_size_to_key_file  gtk_paper_size_to_key_file;

// gtk.Printer

alias c_gtk_printer_new  gtk_printer_new;
alias c_gtk_printer_get_backend  gtk_printer_get_backend;
alias c_gtk_printer_get_name  gtk_printer_get_name;
alias c_gtk_printer_get_state_message  gtk_printer_get_state_message;
alias c_gtk_printer_get_description  gtk_printer_get_description;
alias c_gtk_printer_get_location  gtk_printer_get_location;
alias c_gtk_printer_get_icon_name  gtk_printer_get_icon_name;
alias c_gtk_printer_get_job_count  gtk_printer_get_job_count;
alias c_gtk_printer_is_active  gtk_printer_is_active;
alias c_gtk_printer_is_paused  gtk_printer_is_paused;
alias c_gtk_printer_is_accepting_jobs  gtk_printer_is_accepting_jobs;
alias c_gtk_printer_is_virtual  gtk_printer_is_virtual;
alias c_gtk_printer_is_default  gtk_printer_is_default;
alias c_gtk_printer_accepts_ps  gtk_printer_accepts_ps;
alias c_gtk_printer_accepts_pdf  gtk_printer_accepts_pdf;
alias c_gtk_printer_list_papers  gtk_printer_list_papers;
alias c_gtk_printer_compare  gtk_printer_compare;
alias c_gtk_printer_has_details  gtk_printer_has_details;
alias c_gtk_printer_request_details  gtk_printer_request_details;
alias c_gtk_printer_get_capabilities  gtk_printer_get_capabilities;
alias c_gtk_printer_get_default_page_size  gtk_printer_get_default_page_size;
alias c_gtk_printer_get_hard_margins  gtk_printer_get_hard_margins;
alias c_gtk_enumerate_printers  gtk_enumerate_printers;

// gtk.PrintJob

alias c_gtk_print_job_new  gtk_print_job_new;
alias c_gtk_print_job_get_settings  gtk_print_job_get_settings;
alias c_gtk_print_job_get_printer  gtk_print_job_get_printer;
alias c_gtk_print_job_get_title  gtk_print_job_get_title;
alias c_gtk_print_job_get_status  gtk_print_job_get_status;
alias c_gtk_print_job_set_source_file  gtk_print_job_set_source_file;
alias c_gtk_print_job_get_surface  gtk_print_job_get_surface;
alias c_gtk_print_job_send  gtk_print_job_send;
alias c_gtk_print_job_set_track_print_status  gtk_print_job_set_track_print_status;
alias c_gtk_print_job_get_track_print_status  gtk_print_job_get_track_print_status;
alias c_gtk_print_job_get_pages  gtk_print_job_get_pages;
alias c_gtk_print_job_set_pages  gtk_print_job_set_pages;
alias c_gtk_print_job_get_page_ranges  gtk_print_job_get_page_ranges;
alias c_gtk_print_job_set_page_ranges  gtk_print_job_set_page_ranges;
alias c_gtk_print_job_get_page_set  gtk_print_job_get_page_set;
alias c_gtk_print_job_set_page_set  gtk_print_job_set_page_set;
alias c_gtk_print_job_get_num_copies  gtk_print_job_get_num_copies;
alias c_gtk_print_job_set_num_copies  gtk_print_job_set_num_copies;
alias c_gtk_print_job_get_scale  gtk_print_job_get_scale;
alias c_gtk_print_job_set_scale  gtk_print_job_set_scale;
alias c_gtk_print_job_get_n_up  gtk_print_job_get_n_up;
alias c_gtk_print_job_set_n_up  gtk_print_job_set_n_up;
alias c_gtk_print_job_get_n_up_layout  gtk_print_job_get_n_up_layout;
alias c_gtk_print_job_set_n_up_layout  gtk_print_job_set_n_up_layout;
alias c_gtk_print_job_get_rotate  gtk_print_job_get_rotate;
alias c_gtk_print_job_set_rotate  gtk_print_job_set_rotate;
alias c_gtk_print_job_get_collate  gtk_print_job_get_collate;
alias c_gtk_print_job_set_collate  gtk_print_job_set_collate;
alias c_gtk_print_job_get_reverse  gtk_print_job_get_reverse;
alias c_gtk_print_job_set_reverse  gtk_print_job_set_reverse;

// gtk.PrintUnixDialog

alias c_gtk_print_unix_dialog_new  gtk_print_unix_dialog_new;
alias c_gtk_print_unix_dialog_set_page_setup  gtk_print_unix_dialog_set_page_setup;
alias c_gtk_print_unix_dialog_get_page_setup  gtk_print_unix_dialog_get_page_setup;
alias c_gtk_print_unix_dialog_set_current_page  gtk_print_unix_dialog_set_current_page;
alias c_gtk_print_unix_dialog_get_current_page  gtk_print_unix_dialog_get_current_page;
alias c_gtk_print_unix_dialog_set_settings  gtk_print_unix_dialog_set_settings;
alias c_gtk_print_unix_dialog_get_settings  gtk_print_unix_dialog_get_settings;
alias c_gtk_print_unix_dialog_get_selected_printer  gtk_print_unix_dialog_get_selected_printer;
alias c_gtk_print_unix_dialog_add_custom_tab  gtk_print_unix_dialog_add_custom_tab;
alias c_gtk_print_unix_dialog_set_support_selection  gtk_print_unix_dialog_set_support_selection;
alias c_gtk_print_unix_dialog_get_support_selection  gtk_print_unix_dialog_get_support_selection;
alias c_gtk_print_unix_dialog_set_has_selection  gtk_print_unix_dialog_set_has_selection;
alias c_gtk_print_unix_dialog_get_has_selection  gtk_print_unix_dialog_get_has_selection;
alias c_gtk_print_unix_dialog_set_embed_page_setup  gtk_print_unix_dialog_set_embed_page_setup;
alias c_gtk_print_unix_dialog_get_embed_page_setup  gtk_print_unix_dialog_get_embed_page_setup;
alias c_gtk_print_unix_dialog_get_page_setup_set  gtk_print_unix_dialog_get_page_setup_set;
alias c_gtk_print_unix_dialog_set_manual_capabilities  gtk_print_unix_dialog_set_manual_capabilities;
alias c_gtk_print_unix_dialog_get_manual_capabilities  gtk_print_unix_dialog_get_manual_capabilities;

// gtk.PageSetupUnixDialog

alias c_gtk_page_setup_unix_dialog_new  gtk_page_setup_unix_dialog_new;
alias c_gtk_page_setup_unix_dialog_set_page_setup  gtk_page_setup_unix_dialog_set_page_setup;
alias c_gtk_page_setup_unix_dialog_get_page_setup  gtk_page_setup_unix_dialog_get_page_setup;
alias c_gtk_page_setup_unix_dialog_set_print_settings  gtk_page_setup_unix_dialog_set_print_settings;
alias c_gtk_page_setup_unix_dialog_get_print_settings  gtk_page_setup_unix_dialog_get_print_settings;

// gtk.Adjustment

alias c_gtk_adjustment_new  gtk_adjustment_new;
alias c_gtk_adjustment_get_value  gtk_adjustment_get_value;
alias c_gtk_adjustment_set_value  gtk_adjustment_set_value;
alias c_gtk_adjustment_clamp_page  gtk_adjustment_clamp_page;
alias c_gtk_adjustment_changed  gtk_adjustment_changed;
alias c_gtk_adjustment_value_changed  gtk_adjustment_value_changed;
alias c_gtk_adjustment_configure  gtk_adjustment_configure;
alias c_gtk_adjustment_get_lower  gtk_adjustment_get_lower;
alias c_gtk_adjustment_get_page_increment  gtk_adjustment_get_page_increment;
alias c_gtk_adjustment_get_page_size  gtk_adjustment_get_page_size;
alias c_gtk_adjustment_get_step_increment  gtk_adjustment_get_step_increment;
alias c_gtk_adjustment_get_minimum_increment  gtk_adjustment_get_minimum_increment;
alias c_gtk_adjustment_get_upper  gtk_adjustment_get_upper;
alias c_gtk_adjustment_set_lower  gtk_adjustment_set_lower;
alias c_gtk_adjustment_set_page_increment  gtk_adjustment_set_page_increment;
alias c_gtk_adjustment_set_page_size  gtk_adjustment_set_page_size;
alias c_gtk_adjustment_set_step_increment  gtk_adjustment_set_step_increment;
alias c_gtk_adjustment_set_upper  gtk_adjustment_set_upper;

// gtk.Arrow

alias c_gtk_arrow_new  gtk_arrow_new;
alias c_gtk_arrow_set  gtk_arrow_set;

// gtk.Calendar

alias c_gtk_calendar_new  gtk_calendar_new;
alias c_gtk_calendar_select_month  gtk_calendar_select_month;
alias c_gtk_calendar_select_day  gtk_calendar_select_day;
alias c_gtk_calendar_mark_day  gtk_calendar_mark_day;
alias c_gtk_calendar_unmark_day  gtk_calendar_unmark_day;
alias c_gtk_calendar_get_day_is_marked  gtk_calendar_get_day_is_marked;
alias c_gtk_calendar_clear_marks  gtk_calendar_clear_marks;
alias c_gtk_calendar_get_display_options  gtk_calendar_get_display_options;
alias c_gtk_calendar_set_display_options  gtk_calendar_set_display_options;
alias c_gtk_calendar_get_date  gtk_calendar_get_date;
alias c_gtk_calendar_set_detail_func  gtk_calendar_set_detail_func;
alias c_gtk_calendar_get_detail_width_chars  gtk_calendar_get_detail_width_chars;
alias c_gtk_calendar_set_detail_width_chars  gtk_calendar_set_detail_width_chars;
alias c_gtk_calendar_get_detail_height_rows  gtk_calendar_get_detail_height_rows;
alias c_gtk_calendar_set_detail_height_rows  gtk_calendar_set_detail_height_rows;

// gtk.DrawingArea

alias c_gtk_drawing_area_new  gtk_drawing_area_new;

// gtk.EventBox

alias c_gtk_event_box_new  gtk_event_box_new;
alias c_gtk_event_box_set_above_child  gtk_event_box_set_above_child;
alias c_gtk_event_box_get_above_child  gtk_event_box_get_above_child;
alias c_gtk_event_box_set_visible_window  gtk_event_box_set_visible_window;
alias c_gtk_event_box_get_visible_window  gtk_event_box_get_visible_window;

// gtk.HandleBox

alias c_gtk_handle_box_new  gtk_handle_box_new;
alias c_gtk_handle_box_set_shadow_type  gtk_handle_box_set_shadow_type;
alias c_gtk_handle_box_set_handle_position  gtk_handle_box_set_handle_position;
alias c_gtk_handle_box_set_snap_edge  gtk_handle_box_set_snap_edge;
alias c_gtk_handle_box_get_handle_position  gtk_handle_box_get_handle_position;
alias c_gtk_handle_box_get_shadow_type  gtk_handle_box_get_shadow_type;
alias c_gtk_handle_box_get_snap_edge  gtk_handle_box_get_snap_edge;
alias c_gtk_handle_box_get_child_detached  gtk_handle_box_get_child_detached;

// gtk.IMContextSimple

alias c_gtk_im_context_simple_new  gtk_im_context_simple_new;
alias c_gtk_im_context_simple_add_table  gtk_im_context_simple_add_table;

// gtk.IMMulticontext

alias c_gtk_im_multicontext_new  gtk_im_multicontext_new;
alias c_gtk_im_multicontext_append_menuitems  gtk_im_multicontext_append_menuitems;
alias c_gtk_im_multicontext_get_context_id  gtk_im_multicontext_get_context_id;
alias c_gtk_im_multicontext_set_context_id  gtk_im_multicontext_set_context_id;

// gtk.SizeGroup

alias c_gtk_size_group_new  gtk_size_group_new;
alias c_gtk_size_group_set_mode  gtk_size_group_set_mode;
alias c_gtk_size_group_get_mode  gtk_size_group_get_mode;
alias c_gtk_size_group_set_ignore_hidden  gtk_size_group_set_ignore_hidden;
alias c_gtk_size_group_get_ignore_hidden  gtk_size_group_get_ignore_hidden;
alias c_gtk_size_group_add_widget  gtk_size_group_add_widget;
alias c_gtk_size_group_remove_widget  gtk_size_group_remove_widget;
alias c_gtk_size_group_get_widgets  gtk_size_group_get_widgets;

// gtk.Tooltip

alias c_gtk_tooltip_set_markup  gtk_tooltip_set_markup;
alias c_gtk_tooltip_set_text  gtk_tooltip_set_text;
alias c_gtk_tooltip_set_icon  gtk_tooltip_set_icon;
alias c_gtk_tooltip_set_icon_from_stock  gtk_tooltip_set_icon_from_stock;
alias c_gtk_tooltip_set_icon_from_icon_name  gtk_tooltip_set_icon_from_icon_name;
alias c_gtk_tooltip_set_icon_from_gicon  gtk_tooltip_set_icon_from_gicon;
alias c_gtk_tooltip_set_custom  gtk_tooltip_set_custom;
alias c_gtk_tooltip_trigger_tooltip_query  gtk_tooltip_trigger_tooltip_query;
alias c_gtk_tooltip_set_tip_area  gtk_tooltip_set_tip_area;

// gtk.Viewport

alias c_gtk_viewport_new  gtk_viewport_new;
alias c_gtk_viewport_get_hadjustment  gtk_viewport_get_hadjustment;
alias c_gtk_viewport_get_vadjustment  gtk_viewport_get_vadjustment;
alias c_gtk_viewport_set_hadjustment  gtk_viewport_set_hadjustment;
alias c_gtk_viewport_set_vadjustment  gtk_viewport_set_vadjustment;
alias c_gtk_viewport_set_shadow_type  gtk_viewport_set_shadow_type;
alias c_gtk_viewport_get_shadow_type  gtk_viewport_get_shadow_type;
alias c_gtk_viewport_get_bin_window  gtk_viewport_get_bin_window;
alias c_gtk_viewport_get_view_window  gtk_viewport_get_view_window;

// gtk.Accessible

alias c_gtk_accessible_connect_widget_destroyed  gtk_accessible_connect_widget_destroyed;
alias c_gtk_accessible_get_widget  gtk_accessible_get_widget;
alias c_gtk_accessible_set_widget  gtk_accessible_set_widget;

// gtk.Widget

alias c_gtk_widget_new  gtk_widget_new;
alias c_gtk_widget_destroy  gtk_widget_destroy;
alias c_gtk_widget_in_destruction  gtk_widget_in_destruction;
alias c_gtk_widget_destroyed  gtk_widget_destroyed;
alias c_gtk_widget_unparent  gtk_widget_unparent;
alias c_gtk_widget_show  gtk_widget_show;
alias c_gtk_widget_show_now  gtk_widget_show_now;
alias c_gtk_widget_hide  gtk_widget_hide;
alias c_gtk_widget_show_all  gtk_widget_show_all;
alias c_gtk_widget_map  gtk_widget_map;
alias c_gtk_widget_unmap  gtk_widget_unmap;
alias c_gtk_widget_realize  gtk_widget_realize;
alias c_gtk_widget_unrealize  gtk_widget_unrealize;
alias c_gtk_widget_draw  gtk_widget_draw;
alias c_gtk_widget_queue_draw  gtk_widget_queue_draw;
alias c_gtk_widget_queue_resize  gtk_widget_queue_resize;
alias c_gtk_widget_queue_resize_no_redraw  gtk_widget_queue_resize_no_redraw;
alias c_gtk_widget_size_request  gtk_widget_size_request;
alias c_gtk_widget_get_child_requisition  gtk_widget_get_child_requisition;
alias c_gtk_widget_size_allocate  gtk_widget_size_allocate;
alias c_gtk_widget_add_accelerator  gtk_widget_add_accelerator;
alias c_gtk_widget_remove_accelerator  gtk_widget_remove_accelerator;
alias c_gtk_widget_set_accel_path  gtk_widget_set_accel_path;
alias c_gtk_widget_list_accel_closures  gtk_widget_list_accel_closures;
alias c_gtk_widget_can_activate_accel  gtk_widget_can_activate_accel;
alias c_gtk_widget_event  gtk_widget_event;
alias c_gtk_widget_activate  gtk_widget_activate;
alias c_gtk_widget_reparent  gtk_widget_reparent;
alias c_gtk_widget_intersect  gtk_widget_intersect;
alias c_gtk_widget_is_focus  gtk_widget_is_focus;
alias c_gtk_widget_grab_focus  gtk_widget_grab_focus;
alias c_gtk_widget_grab_default  gtk_widget_grab_default;
alias c_gtk_widget_set_name  gtk_widget_set_name;
alias c_gtk_widget_get_name  gtk_widget_get_name;
alias c_gtk_widget_set_state  gtk_widget_set_state;
alias c_gtk_widget_set_sensitive  gtk_widget_set_sensitive;
alias c_gtk_widget_set_parent  gtk_widget_set_parent;
alias c_gtk_widget_set_parent_window  gtk_widget_set_parent_window;
alias c_gtk_widget_get_parent_window  gtk_widget_get_parent_window;
alias c_gtk_widget_set_events  gtk_widget_set_events;
alias c_gtk_widget_get_events  gtk_widget_get_events;
alias c_gtk_widget_add_events  gtk_widget_add_events;
alias c_gtk_widget_set_device_events  gtk_widget_set_device_events;
alias c_gtk_widget_get_device_events  gtk_widget_get_device_events;
alias c_gtk_widget_add_device_events  gtk_widget_add_device_events;
alias c_gtk_widget_set_device_enabled  gtk_widget_set_device_enabled;
alias c_gtk_widget_get_device_enabled  gtk_widget_get_device_enabled;
alias c_gtk_widget_get_toplevel  gtk_widget_get_toplevel;
alias c_gtk_widget_get_ancestor  gtk_widget_get_ancestor;
alias c_gtk_widget_get_visual  gtk_widget_get_visual;
alias c_gtk_widget_set_visual  gtk_widget_set_visual;
alias c_gtk_widget_get_pointer  gtk_widget_get_pointer;
alias c_gtk_widget_is_ancestor  gtk_widget_is_ancestor;
alias c_gtk_widget_translate_coordinates  gtk_widget_translate_coordinates;
alias c_gtk_widget_hide_on_delete  gtk_widget_hide_on_delete;
alias c_gtk_widget_set_style  gtk_widget_set_style;
alias c_gtk_widget_ensure_style  gtk_widget_ensure_style;
alias c_gtk_widget_get_style  gtk_widget_get_style;
alias c_gtk_widget_reset_rc_styles  gtk_widget_reset_rc_styles;
alias c_gtk_widget_get_default_style  gtk_widget_get_default_style;
alias c_gtk_widget_set_direction  gtk_widget_set_direction;
alias c_gtk_widget_get_direction  gtk_widget_get_direction;
alias c_gtk_widget_set_default_direction  gtk_widget_set_default_direction;
alias c_gtk_widget_get_default_direction  gtk_widget_get_default_direction;
alias c_gtk_widget_shape_combine_region  gtk_widget_shape_combine_region;
alias c_gtk_widget_input_shape_combine_region  gtk_widget_input_shape_combine_region;
alias c_gtk_widget_path  gtk_widget_path;
alias c_gtk_widget_class_path  gtk_widget_class_path;
alias c_gtk_widget_get_composite_name  gtk_widget_get_composite_name;
alias c_gtk_widget_override_background_color  gtk_widget_override_background_color;
alias c_gtk_widget_override_color  gtk_widget_override_color;
alias c_gtk_widget_override_font  gtk_widget_override_font;
alias c_gtk_widget_override_symbolic_color  gtk_widget_override_symbolic_color;
alias c_gtk_widget_override_cursor  gtk_widget_override_cursor;
alias c_gtk_widget_modify_style  gtk_widget_modify_style;
alias c_gtk_widget_get_modifier_style  gtk_widget_get_modifier_style;
alias c_gtk_widget_modify_fg  gtk_widget_modify_fg;
alias c_gtk_widget_modify_bg  gtk_widget_modify_bg;
alias c_gtk_widget_modify_text  gtk_widget_modify_text;
alias c_gtk_widget_modify_base  gtk_widget_modify_base;
alias c_gtk_widget_modify_font  gtk_widget_modify_font;
alias c_gtk_widget_modify_cursor  gtk_widget_modify_cursor;
alias c_gtk_widget_create_pango_context  gtk_widget_create_pango_context;
alias c_gtk_widget_get_pango_context  gtk_widget_get_pango_context;
alias c_gtk_widget_create_pango_layout  gtk_widget_create_pango_layout;
alias c_gtk_widget_render_icon  gtk_widget_render_icon;
alias c_gtk_widget_render_icon_pixbuf  gtk_widget_render_icon_pixbuf;
alias c_gtk_widget_pop_composite_child  gtk_widget_pop_composite_child;
alias c_gtk_widget_push_composite_child  gtk_widget_push_composite_child;
alias c_gtk_widget_queue_draw_area  gtk_widget_queue_draw_area;
alias c_gtk_widget_queue_draw_region  gtk_widget_queue_draw_region;
alias c_gtk_widget_set_app_paintable  gtk_widget_set_app_paintable;
alias c_gtk_widget_set_double_buffered  gtk_widget_set_double_buffered;
alias c_gtk_widget_set_redraw_on_allocate  gtk_widget_set_redraw_on_allocate;
alias c_gtk_widget_set_composite_name  gtk_widget_set_composite_name;
alias c_gtk_widget_mnemonic_activate  gtk_widget_mnemonic_activate;
alias c_gtk_widget_class_install_style_property  gtk_widget_class_install_style_property;
alias c_gtk_widget_class_install_style_property_parser  gtk_widget_class_install_style_property_parser;
alias c_gtk_widget_class_find_style_property  gtk_widget_class_find_style_property;
alias c_gtk_widget_class_list_style_properties  gtk_widget_class_list_style_properties;
alias c_gtk_widget_region_intersect  gtk_widget_region_intersect;
alias c_gtk_widget_send_expose  gtk_widget_send_expose;
alias c_gtk_widget_send_focus_change  gtk_widget_send_focus_change;
alias c_gtk_widget_style_get  gtk_widget_style_get;
alias c_gtk_widget_style_get_property  gtk_widget_style_get_property;
alias c_gtk_widget_style_get_valist  gtk_widget_style_get_valist;
alias c_gtk_widget_style_attach  gtk_widget_style_attach;
alias c_gtk_widget_class_set_accessible_type  gtk_widget_class_set_accessible_type;
alias c_gtk_widget_class_set_accessible_role  gtk_widget_class_set_accessible_role;
alias c_gtk_widget_get_accessible  gtk_widget_get_accessible;
alias c_gtk_widget_child_focus  gtk_widget_child_focus;
alias c_gtk_widget_child_notify  gtk_widget_child_notify;
alias c_gtk_widget_freeze_child_notify  gtk_widget_freeze_child_notify;
alias c_gtk_widget_get_child_visible  gtk_widget_get_child_visible;
alias c_gtk_widget_get_parent  gtk_widget_get_parent;
alias c_gtk_widget_get_settings  gtk_widget_get_settings;
alias c_gtk_widget_get_clipboard  gtk_widget_get_clipboard;
alias c_gtk_widget_get_display  gtk_widget_get_display;
alias c_gtk_widget_get_root_window  gtk_widget_get_root_window;
alias c_gtk_widget_get_screen  gtk_widget_get_screen;
alias c_gtk_widget_has_screen  gtk_widget_has_screen;
alias c_gtk_widget_get_size_request  gtk_widget_get_size_request;
alias c_gtk_widget_set_child_visible  gtk_widget_set_child_visible;
alias c_gtk_widget_set_size_request  gtk_widget_set_size_request;
alias c_gtk_widget_thaw_child_notify  gtk_widget_thaw_child_notify;
alias c_gtk_widget_set_no_show_all  gtk_widget_set_no_show_all;
alias c_gtk_widget_get_no_show_all  gtk_widget_get_no_show_all;
alias c_gtk_widget_list_mnemonic_labels  gtk_widget_list_mnemonic_labels;
alias c_gtk_widget_add_mnemonic_label  gtk_widget_add_mnemonic_label;
alias c_gtk_widget_remove_mnemonic_label  gtk_widget_remove_mnemonic_label;
alias c_gtk_widget_is_composited  gtk_widget_is_composited;
alias c_gtk_widget_error_bell  gtk_widget_error_bell;
alias c_gtk_widget_keynav_failed  gtk_widget_keynav_failed;
alias c_gtk_widget_get_tooltip_markup  gtk_widget_get_tooltip_markup;
alias c_gtk_widget_set_tooltip_markup  gtk_widget_set_tooltip_markup;
alias c_gtk_widget_get_tooltip_text  gtk_widget_get_tooltip_text;
alias c_gtk_widget_set_tooltip_text  gtk_widget_set_tooltip_text;
alias c_gtk_widget_get_tooltip_window  gtk_widget_get_tooltip_window;
alias c_gtk_widget_set_tooltip_window  gtk_widget_set_tooltip_window;
alias c_gtk_widget_get_has_tooltip  gtk_widget_get_has_tooltip;
alias c_gtk_widget_set_has_tooltip  gtk_widget_set_has_tooltip;
alias c_gtk_widget_trigger_tooltip_query  gtk_widget_trigger_tooltip_query;
alias c_gtk_widget_get_window  gtk_widget_get_window;
alias c_gtk_cairo_should_draw_window  gtk_cairo_should_draw_window;
alias c_gtk_cairo_transform_to_window  gtk_cairo_transform_to_window;
alias c_gtk_widget_get_allocated_width  gtk_widget_get_allocated_width;
alias c_gtk_widget_get_allocated_height  gtk_widget_get_allocated_height;
alias c_gtk_widget_get_allocation  gtk_widget_get_allocation;
alias c_gtk_widget_set_allocation  gtk_widget_set_allocation;
alias c_gtk_widget_get_app_paintable  gtk_widget_get_app_paintable;
alias c_gtk_widget_get_can_default  gtk_widget_get_can_default;
alias c_gtk_widget_set_can_default  gtk_widget_set_can_default;
alias c_gtk_widget_get_can_focus  gtk_widget_get_can_focus;
alias c_gtk_widget_set_can_focus  gtk_widget_set_can_focus;
alias c_gtk_widget_get_double_buffered  gtk_widget_get_double_buffered;
alias c_gtk_widget_get_has_window  gtk_widget_get_has_window;
alias c_gtk_widget_set_has_window  gtk_widget_set_has_window;
alias c_gtk_widget_get_sensitive  gtk_widget_get_sensitive;
alias c_gtk_widget_is_sensitive  gtk_widget_is_sensitive;
alias c_gtk_widget_get_state  gtk_widget_get_state;
alias c_gtk_widget_get_visible  gtk_widget_get_visible;
alias c_gtk_widget_set_visible  gtk_widget_set_visible;
alias c_gtk_widget_set_state_flags  gtk_widget_set_state_flags;
alias c_gtk_widget_unset_state_flags  gtk_widget_unset_state_flags;
alias c_gtk_widget_get_state_flags  gtk_widget_get_state_flags;
alias c_gtk_widget_has_default  gtk_widget_has_default;
alias c_gtk_widget_has_focus  gtk_widget_has_focus;
alias c_gtk_widget_has_visible_focus  gtk_widget_has_visible_focus;
alias c_gtk_widget_has_grab  gtk_widget_has_grab;
alias c_gtk_widget_has_rc_style  gtk_widget_has_rc_style;
alias c_gtk_widget_is_drawable  gtk_widget_is_drawable;
alias c_gtk_widget_is_toplevel  gtk_widget_is_toplevel;
alias c_gtk_widget_set_window  gtk_widget_set_window;
alias c_gtk_widget_set_receives_default  gtk_widget_set_receives_default;
alias c_gtk_widget_get_receives_default  gtk_widget_get_receives_default;
alias c_gtk_widget_set_support_multidevice  gtk_widget_set_support_multidevice;
alias c_gtk_widget_get_support_multidevice  gtk_widget_get_support_multidevice;
alias c_gtk_widget_set_realized  gtk_widget_set_realized;
alias c_gtk_widget_get_realized  gtk_widget_get_realized;
alias c_gtk_widget_set_mapped  gtk_widget_set_mapped;
alias c_gtk_widget_get_mapped  gtk_widget_get_mapped;
alias c_gtk_widget_get_requisition  gtk_widget_get_requisition;
alias c_gtk_widget_device_is_shadowed  gtk_widget_device_is_shadowed;
alias c_gtk_widget_get_modifier_mask  gtk_widget_get_modifier_mask;
alias c_gtk_widget_insert_action_group  gtk_widget_insert_action_group;
alias c_gtk_widget_get_path  gtk_widget_get_path;
alias c_gtk_widget_get_style_context  gtk_widget_get_style_context;
alias c_gtk_widget_reset_style  gtk_widget_reset_style;
alias c_gtk_widget_get_preferred_height  gtk_widget_get_preferred_height;
alias c_gtk_widget_get_preferred_width  gtk_widget_get_preferred_width;
alias c_gtk_widget_get_preferred_height_for_width  gtk_widget_get_preferred_height_for_width;
alias c_gtk_widget_get_preferred_width_for_height  gtk_widget_get_preferred_width_for_height;
alias c_gtk_widget_get_request_mode  gtk_widget_get_request_mode;
alias c_gtk_widget_get_preferred_size  gtk_widget_get_preferred_size;
alias c_gtk_distribute_natural_allocation  gtk_distribute_natural_allocation;
alias c_gtk_widget_get_halign  gtk_widget_get_halign;
alias c_gtk_widget_set_halign  gtk_widget_set_halign;
alias c_gtk_widget_get_valign  gtk_widget_get_valign;
alias c_gtk_widget_set_valign  gtk_widget_set_valign;
alias c_gtk_widget_get_margin_left  gtk_widget_get_margin_left;
alias c_gtk_widget_set_margin_left  gtk_widget_set_margin_left;
alias c_gtk_widget_get_margin_right  gtk_widget_get_margin_right;
alias c_gtk_widget_set_margin_right  gtk_widget_set_margin_right;
alias c_gtk_widget_get_margin_top  gtk_widget_get_margin_top;
alias c_gtk_widget_set_margin_top  gtk_widget_set_margin_top;
alias c_gtk_widget_get_margin_bottom  gtk_widget_get_margin_bottom;
alias c_gtk_widget_set_margin_bottom  gtk_widget_set_margin_bottom;
alias c_gtk_widget_get_hexpand  gtk_widget_get_hexpand;
alias c_gtk_widget_set_hexpand  gtk_widget_set_hexpand;
alias c_gtk_widget_get_hexpand_set  gtk_widget_get_hexpand_set;
alias c_gtk_widget_set_hexpand_set  gtk_widget_set_hexpand_set;
alias c_gtk_widget_get_vexpand  gtk_widget_get_vexpand;
alias c_gtk_widget_set_vexpand  gtk_widget_set_vexpand;
alias c_gtk_widget_get_vexpand_set  gtk_widget_get_vexpand_set;
alias c_gtk_widget_set_vexpand_set  gtk_widget_set_vexpand_set;
alias c_gtk_widget_queue_compute_expand  gtk_widget_queue_compute_expand;
alias c_gtk_widget_compute_expand  gtk_widget_compute_expand;

// gtk.Requisition

alias c_gtk_requisition_new  gtk_requisition_new;
alias c_gtk_requisition_copy  gtk_requisition_copy;
alias c_gtk_requisition_free  gtk_requisition_free;

// gtk.Container

alias c_gtk_container_add  gtk_container_add;
alias c_gtk_container_remove  gtk_container_remove;
alias c_gtk_container_add_with_properties  gtk_container_add_with_properties;
alias c_gtk_container_get_resize_mode  gtk_container_get_resize_mode;
alias c_gtk_container_set_resize_mode  gtk_container_set_resize_mode;
alias c_gtk_container_check_resize  gtk_container_check_resize;
alias c_gtk_container_foreach  gtk_container_foreach;
alias c_gtk_container_get_children  gtk_container_get_children;
alias c_gtk_container_get_path_for_child  gtk_container_get_path_for_child;
alias c_gtk_container_set_reallocate_redraws  gtk_container_set_reallocate_redraws;
alias c_gtk_container_get_focus_child  gtk_container_get_focus_child;
alias c_gtk_container_set_focus_child  gtk_container_set_focus_child;
alias c_gtk_container_get_focus_vadjustment  gtk_container_get_focus_vadjustment;
alias c_gtk_container_set_focus_vadjustment  gtk_container_set_focus_vadjustment;
alias c_gtk_container_get_focus_hadjustment  gtk_container_get_focus_hadjustment;
alias c_gtk_container_set_focus_hadjustment  gtk_container_set_focus_hadjustment;
alias c_gtk_container_resize_children  gtk_container_resize_children;
alias c_gtk_container_child_type  gtk_container_child_type;
alias c_gtk_container_child_get  gtk_container_child_get;
alias c_gtk_container_child_set  gtk_container_child_set;
alias c_gtk_container_child_get_property  gtk_container_child_get_property;
alias c_gtk_container_child_set_property  gtk_container_child_set_property;
alias c_gtk_container_child_get_valist  gtk_container_child_get_valist;
alias c_gtk_container_child_set_valist  gtk_container_child_set_valist;
alias c_gtk_container_child_notify  gtk_container_child_notify;
alias c_gtk_container_forall  gtk_container_forall;
alias c_gtk_container_get_border_width  gtk_container_get_border_width;
alias c_gtk_container_set_border_width  gtk_container_set_border_width;
alias c_gtk_container_propagate_draw  gtk_container_propagate_draw;
alias c_gtk_container_get_focus_chain  gtk_container_get_focus_chain;
alias c_gtk_container_set_focus_chain  gtk_container_set_focus_chain;
alias c_gtk_container_unset_focus_chain  gtk_container_unset_focus_chain;
alias c_gtk_container_class_find_child_property  gtk_container_class_find_child_property;
alias c_gtk_container_class_install_child_property  gtk_container_class_install_child_property;
alias c_gtk_container_class_list_child_properties  gtk_container_class_list_child_properties;
alias c_gtk_container_class_handle_border_width  gtk_container_class_handle_border_width;

// gtk.Bin

alias c_gtk_bin_get_child  gtk_bin_get_child;

// gtk.MenuShell

alias c_gtk_menu_shell_append  gtk_menu_shell_append;
alias c_gtk_menu_shell_prepend  gtk_menu_shell_prepend;
alias c_gtk_menu_shell_insert  gtk_menu_shell_insert;
alias c_gtk_menu_shell_deactivate  gtk_menu_shell_deactivate;
alias c_gtk_menu_shell_select_item  gtk_menu_shell_select_item;
alias c_gtk_menu_shell_select_first  gtk_menu_shell_select_first;
alias c_gtk_menu_shell_deselect  gtk_menu_shell_deselect;
alias c_gtk_menu_shell_activate_item  gtk_menu_shell_activate_item;
alias c_gtk_menu_shell_cancel  gtk_menu_shell_cancel;
alias c_gtk_menu_shell_set_take_focus  gtk_menu_shell_set_take_focus;
alias c_gtk_menu_shell_get_take_focus  gtk_menu_shell_get_take_focus;
alias c_gtk_menu_shell_get_selected_item  gtk_menu_shell_get_selected_item;
alias c_gtk_menu_shell_get_parent_shell  gtk_menu_shell_get_parent_shell;
alias c_gtk_menu_shell_bind_model  gtk_menu_shell_bind_model;

// gtk.Misc

alias c_gtk_misc_set_alignment  gtk_misc_set_alignment;
alias c_gtk_misc_set_padding  gtk_misc_set_padding;
alias c_gtk_misc_get_alignment  gtk_misc_get_alignment;
alias c_gtk_misc_get_padding  gtk_misc_get_padding;

// gtk.Range

alias c_gtk_range_get_fill_level  gtk_range_get_fill_level;
alias c_gtk_range_get_restrict_to_fill_level  gtk_range_get_restrict_to_fill_level;
alias c_gtk_range_get_show_fill_level  gtk_range_get_show_fill_level;
alias c_gtk_range_set_fill_level  gtk_range_set_fill_level;
alias c_gtk_range_set_restrict_to_fill_level  gtk_range_set_restrict_to_fill_level;
alias c_gtk_range_set_show_fill_level  gtk_range_set_show_fill_level;
alias c_gtk_range_get_adjustment  gtk_range_get_adjustment;
alias c_gtk_range_set_adjustment  gtk_range_set_adjustment;
alias c_gtk_range_get_inverted  gtk_range_get_inverted;
alias c_gtk_range_set_inverted  gtk_range_set_inverted;
alias c_gtk_range_get_value  gtk_range_get_value;
alias c_gtk_range_set_value  gtk_range_set_value;
alias c_gtk_range_set_increments  gtk_range_set_increments;
alias c_gtk_range_set_range  gtk_range_set_range;
alias c_gtk_range_get_round_digits  gtk_range_get_round_digits;
alias c_gtk_range_set_round_digits  gtk_range_set_round_digits;
alias c_gtk_range_set_lower_stepper_sensitivity  gtk_range_set_lower_stepper_sensitivity;
alias c_gtk_range_get_lower_stepper_sensitivity  gtk_range_get_lower_stepper_sensitivity;
alias c_gtk_range_set_upper_stepper_sensitivity  gtk_range_set_upper_stepper_sensitivity;
alias c_gtk_range_get_upper_stepper_sensitivity  gtk_range_get_upper_stepper_sensitivity;
alias c_gtk_range_get_flippable  gtk_range_get_flippable;
alias c_gtk_range_set_flippable  gtk_range_set_flippable;
alias c_gtk_range_get_min_slider_size  gtk_range_get_min_slider_size;
alias c_gtk_range_get_range_rect  gtk_range_get_range_rect;
alias c_gtk_range_get_slider_range  gtk_range_get_slider_range;
alias c_gtk_range_get_slider_size_fixed  gtk_range_get_slider_size_fixed;
alias c_gtk_range_set_min_slider_size  gtk_range_set_min_slider_size;
alias c_gtk_range_set_slider_size_fixed  gtk_range_set_slider_size_fixed;

// gtk.IMContext

alias c_gtk_im_context_set_client_window  gtk_im_context_set_client_window;
alias c_gtk_im_context_get_preedit_string  gtk_im_context_get_preedit_string;
alias c_gtk_im_context_filter_keypress  gtk_im_context_filter_keypress;
alias c_gtk_im_context_focus_in  gtk_im_context_focus_in;
alias c_gtk_im_context_focus_out  gtk_im_context_focus_out;
alias c_gtk_im_context_reset  gtk_im_context_reset;
alias c_gtk_im_context_set_cursor_location  gtk_im_context_set_cursor_location;
alias c_gtk_im_context_set_use_preedit  gtk_im_context_set_use_preedit;
alias c_gtk_im_context_set_surrounding  gtk_im_context_set_surrounding;
alias c_gtk_im_context_get_surrounding  gtk_im_context_get_surrounding;
alias c_gtk_im_context_delete_surrounding  gtk_im_context_delete_surrounding;

// gtk.Plug

alias c_gtk_plug_construct  gtk_plug_construct;
alias c_gtk_plug_construct_for_display  gtk_plug_construct_for_display;
alias c_gtk_plug_new  gtk_plug_new;
alias c_gtk_plug_new_for_display  gtk_plug_new_for_display;
alias c_gtk_plug_get_id  gtk_plug_get_id;
alias c_gtk_plug_get_embedded  gtk_plug_get_embedded;
alias c_gtk_plug_get_socket_window  gtk_plug_get_socket_window;

// gtk.Socket

alias c_gtk_socket_new  gtk_socket_new;
alias c_gtk_socket_add_id  gtk_socket_add_id;
alias c_gtk_socket_get_id  gtk_socket_get_id;
alias c_gtk_socket_get_plug_window  gtk_socket_get_plug_window;

// gtk.RecentManager

alias c_gtk_recent_manager_new  gtk_recent_manager_new;
alias c_gtk_recent_manager_get_default  gtk_recent_manager_get_default;
alias c_gtk_recent_manager_add_item  gtk_recent_manager_add_item;
alias c_gtk_recent_manager_add_full  gtk_recent_manager_add_full;
alias c_gtk_recent_manager_remove_item  gtk_recent_manager_remove_item;
alias c_gtk_recent_manager_lookup_item  gtk_recent_manager_lookup_item;
alias c_gtk_recent_manager_has_item  gtk_recent_manager_has_item;
alias c_gtk_recent_manager_move_item  gtk_recent_manager_move_item;
alias c_gtk_recent_manager_get_items  gtk_recent_manager_get_items;
alias c_gtk_recent_manager_purge_items  gtk_recent_manager_purge_items;

// gtk.RecentInfo

alias c_gtk_recent_info_ref  gtk_recent_info_ref;
alias c_gtk_recent_info_unref  gtk_recent_info_unref;
alias c_gtk_recent_info_get_uri  gtk_recent_info_get_uri;
alias c_gtk_recent_info_get_display_name  gtk_recent_info_get_display_name;
alias c_gtk_recent_info_get_description  gtk_recent_info_get_description;
alias c_gtk_recent_info_get_mime_type  gtk_recent_info_get_mime_type;
alias c_gtk_recent_info_get_added  gtk_recent_info_get_added;
alias c_gtk_recent_info_get_modified  gtk_recent_info_get_modified;
alias c_gtk_recent_info_get_visited  gtk_recent_info_get_visited;
alias c_gtk_recent_info_get_private_hint  gtk_recent_info_get_private_hint;
alias c_gtk_recent_info_get_application_info  gtk_recent_info_get_application_info;
alias c_gtk_recent_info_get_applications  gtk_recent_info_get_applications;
alias c_gtk_recent_info_last_application  gtk_recent_info_last_application;
alias c_gtk_recent_info_has_application  gtk_recent_info_has_application;
alias c_gtk_recent_info_create_app_info  gtk_recent_info_create_app_info;
alias c_gtk_recent_info_get_groups  gtk_recent_info_get_groups;
alias c_gtk_recent_info_has_group  gtk_recent_info_has_group;
alias c_gtk_recent_info_get_icon  gtk_recent_info_get_icon;
alias c_gtk_recent_info_get_gicon  gtk_recent_info_get_gicon;
alias c_gtk_recent_info_get_short_name  gtk_recent_info_get_short_name;
alias c_gtk_recent_info_get_uri_display  gtk_recent_info_get_uri_display;
alias c_gtk_recent_info_get_age  gtk_recent_info_get_age;
alias c_gtk_recent_info_is_local  gtk_recent_info_is_local;
alias c_gtk_recent_info_exists  gtk_recent_info_exists;
alias c_gtk_recent_info_match  gtk_recent_info_match;

// gtk.RecentChooserT


// gtk.RecentChooserT

alias c_gtk_recent_chooser_set_show_private  gtk_recent_chooser_set_show_private;
alias c_gtk_recent_chooser_get_show_private  gtk_recent_chooser_get_show_private;
alias c_gtk_recent_chooser_set_show_not_found  gtk_recent_chooser_set_show_not_found;
alias c_gtk_recent_chooser_get_show_not_found  gtk_recent_chooser_get_show_not_found;
alias c_gtk_recent_chooser_set_show_icons  gtk_recent_chooser_set_show_icons;
alias c_gtk_recent_chooser_get_show_icons  gtk_recent_chooser_get_show_icons;
alias c_gtk_recent_chooser_set_select_multiple  gtk_recent_chooser_set_select_multiple;
alias c_gtk_recent_chooser_get_select_multiple  gtk_recent_chooser_get_select_multiple;
alias c_gtk_recent_chooser_set_local_only  gtk_recent_chooser_set_local_only;
alias c_gtk_recent_chooser_get_local_only  gtk_recent_chooser_get_local_only;
alias c_gtk_recent_chooser_set_limit  gtk_recent_chooser_set_limit;
alias c_gtk_recent_chooser_get_limit  gtk_recent_chooser_get_limit;
alias c_gtk_recent_chooser_set_show_tips  gtk_recent_chooser_set_show_tips;
alias c_gtk_recent_chooser_get_show_tips  gtk_recent_chooser_get_show_tips;
alias c_gtk_recent_chooser_set_sort_type  gtk_recent_chooser_set_sort_type;
alias c_gtk_recent_chooser_get_sort_type  gtk_recent_chooser_get_sort_type;
alias c_gtk_recent_chooser_set_sort_func  gtk_recent_chooser_set_sort_func;
alias c_gtk_recent_chooser_set_current_uri  gtk_recent_chooser_set_current_uri;
alias c_gtk_recent_chooser_get_current_uri  gtk_recent_chooser_get_current_uri;
alias c_gtk_recent_chooser_get_current_item  gtk_recent_chooser_get_current_item;
alias c_gtk_recent_chooser_select_uri  gtk_recent_chooser_select_uri;
alias c_gtk_recent_chooser_unselect_uri  gtk_recent_chooser_unselect_uri;
alias c_gtk_recent_chooser_select_all  gtk_recent_chooser_select_all;
alias c_gtk_recent_chooser_unselect_all  gtk_recent_chooser_unselect_all;
alias c_gtk_recent_chooser_get_items  gtk_recent_chooser_get_items;
alias c_gtk_recent_chooser_get_uris  gtk_recent_chooser_get_uris;
alias c_gtk_recent_chooser_add_filter  gtk_recent_chooser_add_filter;
alias c_gtk_recent_chooser_remove_filter  gtk_recent_chooser_remove_filter;
alias c_gtk_recent_chooser_list_filters  gtk_recent_chooser_list_filters;
alias c_gtk_recent_chooser_set_filter  gtk_recent_chooser_set_filter;
alias c_gtk_recent_chooser_get_filter  gtk_recent_chooser_get_filter;

// gtk.RecentChooserDialog

alias c_gtk_recent_chooser_dialog_new  gtk_recent_chooser_dialog_new;
alias c_gtk_recent_chooser_dialog_new_for_manager  gtk_recent_chooser_dialog_new_for_manager;

// gtk.RecentChooserMenu

alias c_gtk_recent_chooser_menu_new  gtk_recent_chooser_menu_new;
alias c_gtk_recent_chooser_menu_new_for_manager  gtk_recent_chooser_menu_new_for_manager;
alias c_gtk_recent_chooser_menu_get_show_numbers  gtk_recent_chooser_menu_get_show_numbers;
alias c_gtk_recent_chooser_menu_set_show_numbers  gtk_recent_chooser_menu_set_show_numbers;

// gtk.RecentChooserWidget

alias c_gtk_recent_chooser_widget_new  gtk_recent_chooser_widget_new;
alias c_gtk_recent_chooser_widget_new_for_manager  gtk_recent_chooser_widget_new_for_manager;

// gtk.RecentFilter

alias c_gtk_recent_filter_new  gtk_recent_filter_new;
alias c_gtk_recent_filter_get_name  gtk_recent_filter_get_name;
alias c_gtk_recent_filter_set_name  gtk_recent_filter_set_name;
alias c_gtk_recent_filter_add_mime_type  gtk_recent_filter_add_mime_type;
alias c_gtk_recent_filter_add_pattern  gtk_recent_filter_add_pattern;
alias c_gtk_recent_filter_add_pixbuf_formats  gtk_recent_filter_add_pixbuf_formats;
alias c_gtk_recent_filter_add_application  gtk_recent_filter_add_application;
alias c_gtk_recent_filter_add_group  gtk_recent_filter_add_group;
alias c_gtk_recent_filter_add_age  gtk_recent_filter_add_age;
alias c_gtk_recent_filter_add_custom  gtk_recent_filter_add_custom;
alias c_gtk_recent_filter_get_needed  gtk_recent_filter_get_needed;
alias c_gtk_recent_filter_filter  gtk_recent_filter_filter;

// gtk.AppChooserT


// gtk.AppChooserT

alias c_gtk_app_chooser_get_app_info  gtk_app_chooser_get_app_info;
alias c_gtk_app_chooser_get_content_type  gtk_app_chooser_get_content_type;
alias c_gtk_app_chooser_refresh  gtk_app_chooser_refresh;

// gtk.AppChooserButton

alias c_gtk_app_chooser_button_new  gtk_app_chooser_button_new;
alias c_gtk_app_chooser_button_append_custom_item  gtk_app_chooser_button_append_custom_item;
alias c_gtk_app_chooser_button_append_separator  gtk_app_chooser_button_append_separator;
alias c_gtk_app_chooser_button_set_active_custom_item  gtk_app_chooser_button_set_active_custom_item;
alias c_gtk_app_chooser_button_get_show_default_item  gtk_app_chooser_button_get_show_default_item;
alias c_gtk_app_chooser_button_set_show_default_item  gtk_app_chooser_button_set_show_default_item;
alias c_gtk_app_chooser_button_get_show_dialog_item  gtk_app_chooser_button_get_show_dialog_item;
alias c_gtk_app_chooser_button_set_show_dialog_item  gtk_app_chooser_button_set_show_dialog_item;
alias c_gtk_app_chooser_button_get_heading  gtk_app_chooser_button_get_heading;
alias c_gtk_app_chooser_button_set_heading  gtk_app_chooser_button_set_heading;

// gtk.AppChooserDialog

alias c_gtk_app_chooser_dialog_new  gtk_app_chooser_dialog_new;
alias c_gtk_app_chooser_dialog_new_for_content_type  gtk_app_chooser_dialog_new_for_content_type;
alias c_gtk_app_chooser_dialog_get_widget  gtk_app_chooser_dialog_get_widget;
alias c_gtk_app_chooser_dialog_set_heading  gtk_app_chooser_dialog_set_heading;
alias c_gtk_app_chooser_dialog_get_heading  gtk_app_chooser_dialog_get_heading;

// gtk.AppChooserWidget

alias c_gtk_app_chooser_widget_new  gtk_app_chooser_widget_new;
alias c_gtk_app_chooser_widget_set_show_default  gtk_app_chooser_widget_set_show_default;
alias c_gtk_app_chooser_widget_get_show_default  gtk_app_chooser_widget_get_show_default;
alias c_gtk_app_chooser_widget_set_show_recommended  gtk_app_chooser_widget_set_show_recommended;
alias c_gtk_app_chooser_widget_get_show_recommended  gtk_app_chooser_widget_get_show_recommended;
alias c_gtk_app_chooser_widget_set_show_fallback  gtk_app_chooser_widget_set_show_fallback;
alias c_gtk_app_chooser_widget_get_show_fallback  gtk_app_chooser_widget_get_show_fallback;
alias c_gtk_app_chooser_widget_set_show_other  gtk_app_chooser_widget_set_show_other;
alias c_gtk_app_chooser_widget_get_show_other  gtk_app_chooser_widget_get_show_other;
alias c_gtk_app_chooser_widget_set_show_all  gtk_app_chooser_widget_set_show_all;
alias c_gtk_app_chooser_widget_get_show_all  gtk_app_chooser_widget_get_show_all;
alias c_gtk_app_chooser_widget_set_default_text  gtk_app_chooser_widget_set_default_text;
alias c_gtk_app_chooser_widget_get_default_text  gtk_app_chooser_widget_get_default_text;

// gtk.BuildableT


// gtk.BuildableT

alias c_gtk_buildable_set_name  gtk_buildable_set_name;
alias c_gtk_buildable_get_name  gtk_buildable_get_name;
alias c_gtk_buildable_add_child  gtk_buildable_add_child;
alias c_gtk_buildable_set_buildable_property  gtk_buildable_set_buildable_property;
alias c_gtk_buildable_construct_child  gtk_buildable_construct_child;
alias c_gtk_buildable_custom_tag_start  gtk_buildable_custom_tag_start;
alias c_gtk_buildable_custom_tag_end  gtk_buildable_custom_tag_end;
alias c_gtk_buildable_custom_finished  gtk_buildable_custom_finished;
alias c_gtk_buildable_parser_finished  gtk_buildable_parser_finished;
alias c_gtk_buildable_get_internal_child  gtk_buildable_get_internal_child;

// gtk.Builder

alias c_gtk_builder_new  gtk_builder_new;
alias c_gtk_builder_add_from_file  gtk_builder_add_from_file;
alias c_gtk_builder_add_from_resource  gtk_builder_add_from_resource;
alias c_gtk_builder_add_from_string  gtk_builder_add_from_string;
alias c_gtk_builder_add_objects_from_file  gtk_builder_add_objects_from_file;
alias c_gtk_builder_add_objects_from_string  gtk_builder_add_objects_from_string;
alias c_gtk_builder_add_objects_from_resource  gtk_builder_add_objects_from_resource;
alias c_gtk_builder_get_object  gtk_builder_get_object;
alias c_gtk_builder_get_objects  gtk_builder_get_objects;
alias c_gtk_builder_connect_signals  gtk_builder_connect_signals;
alias c_gtk_builder_connect_signals_full  gtk_builder_connect_signals_full;
alias c_gtk_builder_set_translation_domain  gtk_builder_set_translation_domain;
alias c_gtk_builder_get_translation_domain  gtk_builder_get_translation_domain;
alias c_gtk_builder_get_type_from_name  gtk_builder_get_type_from_name;
alias c_gtk_builder_value_from_string  gtk_builder_value_from_string;
alias c_gtk_builder_value_from_string_type  gtk_builder_value_from_string_type;

// gtk.Application

alias c_gtk_application_new  gtk_application_new;
alias c_gtk_application_add_window  gtk_application_add_window;
alias c_gtk_application_remove_window  gtk_application_remove_window;
alias c_gtk_application_get_windows  gtk_application_get_windows;
alias c_gtk_application_get_window_by_id  gtk_application_get_window_by_id;
alias c_gtk_application_get_active_window  gtk_application_get_active_window;
alias c_gtk_application_inhibit  gtk_application_inhibit;
alias c_gtk_application_uninhibit  gtk_application_uninhibit;
alias c_gtk_application_is_inhibited  gtk_application_is_inhibited;
alias c_gtk_application_get_app_menu  gtk_application_get_app_menu;
alias c_gtk_application_set_app_menu  gtk_application_set_app_menu;
alias c_gtk_application_get_menubar  gtk_application_get_menubar;
alias c_gtk_application_set_menubar  gtk_application_set_menubar;
alias c_gtk_application_add_accelerator  gtk_application_add_accelerator;
alias c_gtk_application_remove_accelerator  gtk_application_remove_accelerator;

// gtk.ApplicationWindow

alias c_gtk_application_window_new  gtk_application_window_new;
alias c_gtk_application_window_set_show_menubar  gtk_application_window_set_show_menubar;
alias c_gtk_application_window_get_show_menubar  gtk_application_window_get_show_menubar;
alias c_gtk_application_window_get_id  gtk_application_window_get_id;

// gtk.ActionableT


// gtk.ActionableT

alias c_gtk_actionable_get_action_name  gtk_actionable_get_action_name;
alias c_gtk_actionable_set_action_name  gtk_actionable_set_action_name;
alias c_gtk_actionable_get_action_target_value  gtk_actionable_get_action_target_value;
alias c_gtk_actionable_set_action_target_value  gtk_actionable_set_action_target_value;
alias c_gtk_actionable_set_action_target  gtk_actionable_set_action_target;
alias c_gtk_actionable_set_detailed_action_name  gtk_actionable_set_detailed_action_name;
