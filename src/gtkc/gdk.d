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


module gtkc.gdk;

import std.stdio;
import gtkc.gdktypes;
import gtkc.cairotypes;
import gtkc.Loader;
import gtkc.paths;

shared static this()
{
	// gdk.AppLaunchContext

	Linker.link(gdk_app_launch_context_get_type, "gdk_app_launch_context_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_new, "gdk_app_launch_context_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_desktop, "gdk_app_launch_context_set_desktop", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_display, "gdk_app_launch_context_set_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_icon, "gdk_app_launch_context_set_icon", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_icon_name, "gdk_app_launch_context_set_icon_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_screen, "gdk_app_launch_context_set_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_timestamp, "gdk_app_launch_context_set_timestamp", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Atom

	Linker.link(gdk_atom_name, "gdk_atom_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_atom_intern, "gdk_atom_intern", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_atom_intern_static_string, "gdk_atom_intern_static_string", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_property_change, "gdk_property_change", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_property_delete, "gdk_property_delete", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_property_get, "gdk_property_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_text_property_to_utf8_list_for_display, "gdk_text_property_to_utf8_list_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_utf8_to_string_target, "gdk_utf8_to_string_target", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Color

	Linker.link(gdk_color_get_type, "gdk_color_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_copy, "gdk_color_copy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_equal, "gdk_color_equal", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_free, "gdk_color_free", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_hash, "gdk_color_hash", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_to_string, "gdk_color_to_string", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_parse, "gdk_color_parse", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Cursor

	Linker.link(gdk_cursor_get_type, "gdk_cursor_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new, "gdk_cursor_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_for_display, "gdk_cursor_new_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_from_name, "gdk_cursor_new_from_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_from_pixbuf, "gdk_cursor_new_from_pixbuf", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_from_surface, "gdk_cursor_new_from_surface", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_get_cursor_type, "gdk_cursor_get_cursor_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_get_display, "gdk_cursor_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_get_image, "gdk_cursor_get_image", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_get_surface, "gdk_cursor_get_surface", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_ref, "gdk_cursor_ref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_unref, "gdk_cursor_unref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Device

	Linker.link(gdk_device_get_type, "gdk_device_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_free_history, "gdk_device_free_history", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_grab_info_libgtk_only, "gdk_device_grab_info_libgtk_only", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_associated_device, "gdk_device_get_associated_device", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_axis, "gdk_device_get_axis", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_axis_use, "gdk_device_get_axis_use", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_axis_value, "gdk_device_get_axis_value", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_device_type, "gdk_device_get_device_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_display, "gdk_device_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_has_cursor, "gdk_device_get_has_cursor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_history, "gdk_device_get_history", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_key, "gdk_device_get_key", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_last_event_window, "gdk_device_get_last_event_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_mode, "gdk_device_get_mode", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_n_axes, "gdk_device_get_n_axes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_n_keys, "gdk_device_get_n_keys", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_name, "gdk_device_get_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_position, "gdk_device_get_position", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_position_double, "gdk_device_get_position_double", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_product_id, "gdk_device_get_product_id", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_source, "gdk_device_get_source", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_state, "gdk_device_get_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_vendor_id, "gdk_device_get_vendor_id", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_window_at_position, "gdk_device_get_window_at_position", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_window_at_position_double, "gdk_device_get_window_at_position_double", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_grab, "gdk_device_grab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_list_axes, "gdk_device_list_axes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_list_slave_devices, "gdk_device_list_slave_devices", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_set_axis_use, "gdk_device_set_axis_use", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_set_key, "gdk_device_set_key", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_set_mode, "gdk_device_set_mode", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_ungrab, "gdk_device_ungrab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_warp, "gdk_device_warp", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.DeviceManager

	Linker.link(gdk_device_manager_get_type, "gdk_device_manager_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_manager_get_client_pointer, "gdk_device_manager_get_client_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_manager_get_display, "gdk_device_manager_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_manager_list_devices, "gdk_device_manager_list_devices", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_disable_multidevice, "gdk_disable_multidevice", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Display

	Linker.link(gdk_display_get_type, "gdk_display_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default, "gdk_display_get_default", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_open, "gdk_display_open", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_open_default_libgtk_only, "gdk_display_open_default_libgtk_only", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_beep, "gdk_display_beep", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_close, "gdk_display_close", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_device_is_grabbed, "gdk_display_device_is_grabbed", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_flush, "gdk_display_flush", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_app_launch_context, "gdk_display_get_app_launch_context", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default_cursor_size, "gdk_display_get_default_cursor_size", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default_group, "gdk_display_get_default_group", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default_screen, "gdk_display_get_default_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_device_manager, "gdk_display_get_device_manager", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_event, "gdk_display_get_event", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_maximal_cursor_size, "gdk_display_get_maximal_cursor_size", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_n_screens, "gdk_display_get_n_screens", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_name, "gdk_display_get_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_pointer, "gdk_display_get_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_screen, "gdk_display_get_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_window_at_pointer, "gdk_display_get_window_at_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_has_pending, "gdk_display_has_pending", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_is_closed, "gdk_display_is_closed", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_keyboard_ungrab, "gdk_display_keyboard_ungrab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_list_devices, "gdk_display_list_devices", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_notify_startup_complete, "gdk_display_notify_startup_complete", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_peek_event, "gdk_display_peek_event", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_pointer_is_grabbed, "gdk_display_pointer_is_grabbed", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_pointer_ungrab, "gdk_display_pointer_ungrab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_put_event, "gdk_display_put_event", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_request_selection_notification, "gdk_display_request_selection_notification", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_set_double_click_distance, "gdk_display_set_double_click_distance", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_set_double_click_time, "gdk_display_set_double_click_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_store_clipboard, "gdk_display_store_clipboard", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_clipboard_persistence, "gdk_display_supports_clipboard_persistence", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_composite, "gdk_display_supports_composite", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_cursor_alpha, "gdk_display_supports_cursor_alpha", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_cursor_color, "gdk_display_supports_cursor_color", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_input_shapes, "gdk_display_supports_input_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_selection_notification, "gdk_display_supports_selection_notification", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_shapes, "gdk_display_supports_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_sync, "gdk_display_sync", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_warp_pointer, "gdk_display_warp_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.DisplayManager

	Linker.link(gdk_display_manager_get_type, "gdk_display_manager_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_get, "gdk_display_manager_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_get_default_display, "gdk_display_manager_get_default_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_list_displays, "gdk_display_manager_list_displays", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_open_display, "gdk_display_manager_open_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_set_default_display, "gdk_display_manager_set_default_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.DragContext

	Linker.link(gdk_drag_context_get_type, "gdk_drag_context_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_actions, "gdk_drag_context_get_actions", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_dest_window, "gdk_drag_context_get_dest_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_device, "gdk_drag_context_get_device", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_protocol, "gdk_drag_context_get_protocol", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_selected_action, "gdk_drag_context_get_selected_action", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_source_window, "gdk_drag_context_get_source_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_suggested_action, "gdk_drag_context_get_suggested_action", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_list_targets, "gdk_drag_context_list_targets", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_set_device, "gdk_drag_context_set_device", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_abort, "gdk_drag_abort", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_begin, "gdk_drag_begin", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_begin_for_device, "gdk_drag_begin_for_device", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_drop, "gdk_drag_drop", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_drop_succeeded, "gdk_drag_drop_succeeded", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_find_window_for_screen, "gdk_drag_find_window_for_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_get_selection, "gdk_drag_get_selection", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_motion, "gdk_drag_motion", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_status, "gdk_drag_status", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drop_finish, "gdk_drop_finish", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drop_reply, "gdk_drop_reply", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Event

	Linker.link(gdk_event_get_type, "gdk_event_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_new, "gdk_event_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_events_get_angle, "gdk_events_get_angle", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_events_get_center, "gdk_events_get_center", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_events_get_distance, "gdk_events_get_distance", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_copy, "gdk_event_copy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_free, "gdk_event_free", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_axis, "gdk_event_get_axis", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_button, "gdk_event_get_button", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_click_count, "gdk_event_get_click_count", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_coords, "gdk_event_get_coords", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_device, "gdk_event_get_device", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_event_sequence, "gdk_event_get_event_sequence", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_event_type, "gdk_event_get_event_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_keycode, "gdk_event_get_keycode", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_keyval, "gdk_event_get_keyval", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_root_coords, "gdk_event_get_root_coords", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_screen, "gdk_event_get_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_scroll_deltas, "gdk_event_get_scroll_deltas", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_scroll_direction, "gdk_event_get_scroll_direction", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_source_device, "gdk_event_get_source_device", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_state, "gdk_event_get_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_time, "gdk_event_get_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_window, "gdk_event_get_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_put, "gdk_event_put", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_set_device, "gdk_event_set_device", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_set_screen, "gdk_event_set_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_set_source_device, "gdk_event_set_source_device", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_triggers_context_menu, "gdk_event_triggers_context_menu", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get, "gdk_event_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_handler_set, "gdk_event_handler_set", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_peek, "gdk_event_peek", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_request_motions, "gdk_event_request_motions", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_events_pending, "gdk_events_pending", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_show_events, "gdk_get_show_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_show_events, "gdk_set_show_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_setting_get, "gdk_setting_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.EventSequence

	Linker.link(gdk_event_sequence_get_type, "gdk_event_sequence_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.FrameClock

	Linker.link(gdk_frame_clock_get_type, "gdk_frame_clock_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_clock_begin_updating, "gdk_frame_clock_begin_updating", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_clock_end_updating, "gdk_frame_clock_end_updating", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_clock_get_current_timings, "gdk_frame_clock_get_current_timings", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_clock_get_frame_counter, "gdk_frame_clock_get_frame_counter", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_clock_get_frame_time, "gdk_frame_clock_get_frame_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_clock_get_history_start, "gdk_frame_clock_get_history_start", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_clock_get_refresh_info, "gdk_frame_clock_get_refresh_info", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_clock_get_timings, "gdk_frame_clock_get_timings", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_clock_request_phase, "gdk_frame_clock_request_phase", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.FrameTimings

	Linker.link(gdk_frame_timings_get_type, "gdk_frame_timings_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_timings_get_complete, "gdk_frame_timings_get_complete", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_timings_get_frame_counter, "gdk_frame_timings_get_frame_counter", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_timings_get_frame_time, "gdk_frame_timings_get_frame_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_timings_get_predicted_presentation_time, "gdk_frame_timings_get_predicted_presentation_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_timings_get_presentation_time, "gdk_frame_timings_get_presentation_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_timings_get_refresh_interval, "gdk_frame_timings_get_refresh_interval", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_timings_ref, "gdk_frame_timings_ref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_frame_timings_unref, "gdk_frame_timings_unref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.GLContext

	Linker.link(gdk_gl_context_get_type, "gdk_gl_context_get_type", LIBRARY.GDK);
	Linker.link(gdk_gl_context_clear_current, "gdk_gl_context_clear_current", LIBRARY.GDK);
	Linker.link(gdk_gl_context_get_current, "gdk_gl_context_get_current", LIBRARY.GDK);
	Linker.link(gdk_gl_context_get_debug_enabled, "gdk_gl_context_get_debug_enabled", LIBRARY.GDK);
	Linker.link(gdk_gl_context_get_display, "gdk_gl_context_get_display", LIBRARY.GDK);
	Linker.link(gdk_gl_context_get_forward_compatible, "gdk_gl_context_get_forward_compatible", LIBRARY.GDK);
	Linker.link(gdk_gl_context_get_required_version, "gdk_gl_context_get_required_version", LIBRARY.GDK);
	Linker.link(gdk_gl_context_get_shared_context, "gdk_gl_context_get_shared_context", LIBRARY.GDK);
	Linker.link(gdk_gl_context_get_version, "gdk_gl_context_get_version", LIBRARY.GDK);
	Linker.link(gdk_gl_context_get_window, "gdk_gl_context_get_window", LIBRARY.GDK);
	Linker.link(gdk_gl_context_make_current, "gdk_gl_context_make_current", LIBRARY.GDK);
	Linker.link(gdk_gl_context_realize, "gdk_gl_context_realize", LIBRARY.GDK);
	Linker.link(gdk_gl_context_set_debug_enabled, "gdk_gl_context_set_debug_enabled", LIBRARY.GDK);
	Linker.link(gdk_gl_context_set_forward_compatible, "gdk_gl_context_set_forward_compatible", LIBRARY.GDK);
	Linker.link(gdk_gl_context_set_required_version, "gdk_gl_context_set_required_version", LIBRARY.GDK);

	// gdk.Keymap

	Linker.link(gdk_keymap_get_type, "gdk_keymap_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_default, "gdk_keymap_get_default", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_for_display, "gdk_keymap_get_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_add_virtual_modifiers, "gdk_keymap_add_virtual_modifiers", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_caps_lock_state, "gdk_keymap_get_caps_lock_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_direction, "gdk_keymap_get_direction", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_entries_for_keycode, "gdk_keymap_get_entries_for_keycode", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_entries_for_keyval, "gdk_keymap_get_entries_for_keyval", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_modifier_mask, "gdk_keymap_get_modifier_mask", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_modifier_state, "gdk_keymap_get_modifier_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_num_lock_state, "gdk_keymap_get_num_lock_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_scroll_lock_state, "gdk_keymap_get_scroll_lock_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_have_bidi_layouts, "gdk_keymap_have_bidi_layouts", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_lookup_key, "gdk_keymap_lookup_key", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_map_virtual_modifiers, "gdk_keymap_map_virtual_modifiers", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_translate_keyboard_state, "gdk_keymap_translate_keyboard_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_convert_case, "gdk_keyval_convert_case", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_from_name, "gdk_keyval_from_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_is_lower, "gdk_keyval_is_lower", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_is_upper, "gdk_keyval_is_upper", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_name, "gdk_keyval_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_to_lower, "gdk_keyval_to_lower", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_to_unicode, "gdk_keyval_to_unicode", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_to_upper, "gdk_keyval_to_upper", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_unicode_to_keyval, "gdk_unicode_to_keyval", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.RGBA

	Linker.link(gdk_rgba_get_type, "gdk_rgba_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_copy, "gdk_rgba_copy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_equal, "gdk_rgba_equal", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_free, "gdk_rgba_free", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_hash, "gdk_rgba_hash", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_parse, "gdk_rgba_parse", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_to_string, "gdk_rgba_to_string", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Rectangle

	Linker.link(gdk_rectangle_get_type, "gdk_rectangle_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rectangle_intersect, "gdk_rectangle_intersect", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rectangle_union, "gdk_rectangle_union", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Screen

	Linker.link(gdk_screen_get_type, "gdk_screen_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_default, "gdk_screen_get_default", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_height, "gdk_screen_height", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_height_mm, "gdk_screen_height_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_width, "gdk_screen_width", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_width_mm, "gdk_screen_width_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_active_window, "gdk_screen_get_active_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_display, "gdk_screen_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_font_options, "gdk_screen_get_font_options", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_height, "gdk_screen_get_height", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_height_mm, "gdk_screen_get_height_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_at_point, "gdk_screen_get_monitor_at_point", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_at_window, "gdk_screen_get_monitor_at_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_geometry, "gdk_screen_get_monitor_geometry", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_height_mm, "gdk_screen_get_monitor_height_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_plug_name, "gdk_screen_get_monitor_plug_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_scale_factor, "gdk_screen_get_monitor_scale_factor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_width_mm, "gdk_screen_get_monitor_width_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_workarea, "gdk_screen_get_monitor_workarea", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_n_monitors, "gdk_screen_get_n_monitors", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_number, "gdk_screen_get_number", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_primary_monitor, "gdk_screen_get_primary_monitor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_resolution, "gdk_screen_get_resolution", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_rgba_visual, "gdk_screen_get_rgba_visual", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_root_window, "gdk_screen_get_root_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_setting, "gdk_screen_get_setting", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_system_visual, "gdk_screen_get_system_visual", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_toplevel_windows, "gdk_screen_get_toplevel_windows", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_width, "gdk_screen_get_width", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_width_mm, "gdk_screen_get_width_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_window_stack, "gdk_screen_get_window_stack", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_is_composited, "gdk_screen_is_composited", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_list_visuals, "gdk_screen_list_visuals", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_make_display_name, "gdk_screen_make_display_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_set_font_options, "gdk_screen_set_font_options", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_set_resolution, "gdk_screen_set_resolution", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Visual

	Linker.link(gdk_visual_get_type, "gdk_visual_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best, "gdk_visual_get_best", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_depth, "gdk_visual_get_best_depth", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_type, "gdk_visual_get_best_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_with_both, "gdk_visual_get_best_with_both", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_with_depth, "gdk_visual_get_best_with_depth", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_with_type, "gdk_visual_get_best_with_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_system, "gdk_visual_get_system", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_bits_per_rgb, "gdk_visual_get_bits_per_rgb", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_blue_pixel_details, "gdk_visual_get_blue_pixel_details", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_byte_order, "gdk_visual_get_byte_order", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_colormap_size, "gdk_visual_get_colormap_size", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_depth, "gdk_visual_get_depth", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_green_pixel_details, "gdk_visual_get_green_pixel_details", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_red_pixel_details, "gdk_visual_get_red_pixel_details", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_screen, "gdk_visual_get_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_visual_type, "gdk_visual_get_visual_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_list_visuals, "gdk_list_visuals", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_query_depths, "gdk_query_depths", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_query_visual_types, "gdk_query_visual_types", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Window

	Linker.link(gdk_window_get_type, "gdk_window_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_new, "gdk_window_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_at_pointer, "gdk_window_at_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_constrain_size, "gdk_window_constrain_size", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_process_all_updates, "gdk_window_process_all_updates", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_debug_updates, "gdk_window_set_debug_updates", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_add_filter, "gdk_window_add_filter", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_beep, "gdk_window_beep", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_move_drag, "gdk_window_begin_move_drag", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_move_drag_for_device, "gdk_window_begin_move_drag_for_device", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_paint_rect, "gdk_window_begin_paint_rect", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_paint_region, "gdk_window_begin_paint_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_resize_drag, "gdk_window_begin_resize_drag", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_resize_drag_for_device, "gdk_window_begin_resize_drag_for_device", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_configure_finished, "gdk_window_configure_finished", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_coords_from_parent, "gdk_window_coords_from_parent", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_coords_to_parent, "gdk_window_coords_to_parent", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_create_gl_context, "gdk_window_create_gl_context", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_create_similar_image_surface, "gdk_window_create_similar_image_surface", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_create_similar_surface, "gdk_window_create_similar_surface", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_deiconify, "gdk_window_deiconify", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_destroy, "gdk_window_destroy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_destroy_notify, "gdk_window_destroy_notify", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_enable_synchronized_configure, "gdk_window_enable_synchronized_configure", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_end_paint, "gdk_window_end_paint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_ensure_native, "gdk_window_ensure_native", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_flush, "gdk_window_flush", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_focus, "gdk_window_focus", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_freeze_toplevel_updates_libgtk_only, "gdk_window_freeze_toplevel_updates_libgtk_only", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_freeze_updates, "gdk_window_freeze_updates", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_fullscreen, "gdk_window_fullscreen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_fullscreen_on_monitor, "gdk_window_fullscreen_on_monitor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_geometry_changed, "gdk_window_geometry_changed", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_accept_focus, "gdk_window_get_accept_focus", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_background_pattern, "gdk_window_get_background_pattern", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_children, "gdk_window_get_children", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_children_with_user_data, "gdk_window_get_children_with_user_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_clip_region, "gdk_window_get_clip_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_composited, "gdk_window_get_composited", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_cursor, "gdk_window_get_cursor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_decorations, "gdk_window_get_decorations", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_device_cursor, "gdk_window_get_device_cursor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_device_events, "gdk_window_get_device_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_device_position, "gdk_window_get_device_position", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_device_position_double, "gdk_window_get_device_position_double", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_display, "gdk_window_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_drag_protocol, "gdk_window_get_drag_protocol", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_effective_parent, "gdk_window_get_effective_parent", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_effective_toplevel, "gdk_window_get_effective_toplevel", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_event_compression, "gdk_window_get_event_compression", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_events, "gdk_window_get_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_focus_on_map, "gdk_window_get_focus_on_map", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_frame_clock, "gdk_window_get_frame_clock", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_frame_extents, "gdk_window_get_frame_extents", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_fullscreen_mode, "gdk_window_get_fullscreen_mode", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_geometry, "gdk_window_get_geometry", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_group, "gdk_window_get_group", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_height, "gdk_window_get_height", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_modal_hint, "gdk_window_get_modal_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_origin, "gdk_window_get_origin", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_parent, "gdk_window_get_parent", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_pass_through, "gdk_window_get_pass_through", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_pointer, "gdk_window_get_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_position, "gdk_window_get_position", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_root_coords, "gdk_window_get_root_coords", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_root_origin, "gdk_window_get_root_origin", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_scale_factor, "gdk_window_get_scale_factor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_screen, "gdk_window_get_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_source_events, "gdk_window_get_source_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_state, "gdk_window_get_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_support_multidevice, "gdk_window_get_support_multidevice", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_toplevel, "gdk_window_get_toplevel", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_type_hint, "gdk_window_get_type_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_update_area, "gdk_window_get_update_area", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_user_data, "gdk_window_get_user_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_visible_region, "gdk_window_get_visible_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_visual, "gdk_window_get_visual", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_width, "gdk_window_get_width", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_window_type, "gdk_window_get_window_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_has_native, "gdk_window_has_native", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_hide, "gdk_window_hide", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_iconify, "gdk_window_iconify", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_input_shape_combine_region, "gdk_window_input_shape_combine_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_invalidate_maybe_recurse, "gdk_window_invalidate_maybe_recurse", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_invalidate_rect, "gdk_window_invalidate_rect", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_invalidate_region, "gdk_window_invalidate_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_destroyed, "gdk_window_is_destroyed", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_input_only, "gdk_window_is_input_only", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_shaped, "gdk_window_is_shaped", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_viewable, "gdk_window_is_viewable", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_visible, "gdk_window_is_visible", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_lower, "gdk_window_lower", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_mark_paint_from_clip, "gdk_window_mark_paint_from_clip", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_maximize, "gdk_window_maximize", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_merge_child_input_shapes, "gdk_window_merge_child_input_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_merge_child_shapes, "gdk_window_merge_child_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_move, "gdk_window_move", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_move_region, "gdk_window_move_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_move_resize, "gdk_window_move_resize", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_peek_children, "gdk_window_peek_children", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_process_updates, "gdk_window_process_updates", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_raise, "gdk_window_raise", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_register_dnd, "gdk_window_register_dnd", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_remove_filter, "gdk_window_remove_filter", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_reparent, "gdk_window_reparent", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_resize, "gdk_window_resize", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_restack, "gdk_window_restack", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_scroll, "gdk_window_scroll", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_accept_focus, "gdk_window_set_accept_focus", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_background, "gdk_window_set_background", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_background_pattern, "gdk_window_set_background_pattern", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_background_rgba, "gdk_window_set_background_rgba", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_child_input_shapes, "gdk_window_set_child_input_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_child_shapes, "gdk_window_set_child_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_composited, "gdk_window_set_composited", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_cursor, "gdk_window_set_cursor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_decorations, "gdk_window_set_decorations", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_device_cursor, "gdk_window_set_device_cursor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_device_events, "gdk_window_set_device_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_event_compression, "gdk_window_set_event_compression", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_events, "gdk_window_set_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_focus_on_map, "gdk_window_set_focus_on_map", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_fullscreen_mode, "gdk_window_set_fullscreen_mode", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_functions, "gdk_window_set_functions", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_geometry_hints, "gdk_window_set_geometry_hints", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_group, "gdk_window_set_group", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_icon_list, "gdk_window_set_icon_list", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_icon_name, "gdk_window_set_icon_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_invalidate_handler, "gdk_window_set_invalidate_handler", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_keep_above, "gdk_window_set_keep_above", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_keep_below, "gdk_window_set_keep_below", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_modal_hint, "gdk_window_set_modal_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_opacity, "gdk_window_set_opacity", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_opaque_region, "gdk_window_set_opaque_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_override_redirect, "gdk_window_set_override_redirect", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_pass_through, "gdk_window_set_pass_through", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_role, "gdk_window_set_role", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_shadow_width, "gdk_window_set_shadow_width", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_skip_pager_hint, "gdk_window_set_skip_pager_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_skip_taskbar_hint, "gdk_window_set_skip_taskbar_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_source_events, "gdk_window_set_source_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_startup_id, "gdk_window_set_startup_id", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_static_gravities, "gdk_window_set_static_gravities", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_support_multidevice, "gdk_window_set_support_multidevice", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_title, "gdk_window_set_title", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_transient_for, "gdk_window_set_transient_for", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_type_hint, "gdk_window_set_type_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_urgency_hint, "gdk_window_set_urgency_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_user_data, "gdk_window_set_user_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_shape_combine_region, "gdk_window_shape_combine_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_show, "gdk_window_show", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_show_unraised, "gdk_window_show_unraised", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_show_window_menu, "gdk_window_show_window_menu", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_stick, "gdk_window_stick", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_thaw_toplevel_updates_libgtk_only, "gdk_window_thaw_toplevel_updates_libgtk_only", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_thaw_updates, "gdk_window_thaw_updates", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unfullscreen, "gdk_window_unfullscreen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unmaximize, "gdk_window_unmaximize", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unstick, "gdk_window_unstick", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_withdraw, "gdk_window_withdraw", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_default_root_window, "gdk_get_default_root_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_offscreen_window_get_embedder, "gdk_offscreen_window_get_embedder", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_offscreen_window_get_surface, "gdk_offscreen_window_get_surface", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_offscreen_window_set_embedder, "gdk_offscreen_window_set_embedder", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.X11

	Linker.link(gdk_x11_window_get_type, "gdk_x11_window_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_foreign_new_for_display, "gdk_x11_window_foreign_new_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_lookup_for_display, "gdk_x11_window_lookup_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_get_desktop, "gdk_x11_window_get_desktop", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_get_xid, "gdk_x11_window_get_xid", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_move_to_current_desktop, "gdk_x11_window_move_to_current_desktop", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_move_to_desktop, "gdk_x11_window_move_to_desktop", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_set_frame_extents, "gdk_x11_window_set_frame_extents", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_set_frame_sync_enabled, "gdk_x11_window_set_frame_sync_enabled", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_set_hide_titlebar_when_maximized, "gdk_x11_window_set_hide_titlebar_when_maximized", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_set_theme_variant, "gdk_x11_window_set_theme_variant", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_set_user_time, "gdk_x11_window_set_user_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_set_utf8_property, "gdk_x11_window_set_utf8_property", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Cairo

	Linker.link(gdk_cairo_create, "gdk_cairo_create", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_draw_from_gl, "gdk_cairo_draw_from_gl", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_get_clip_rectangle, "gdk_cairo_get_clip_rectangle", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_rectangle, "gdk_cairo_rectangle", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_region, "gdk_cairo_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_region_create_from_surface, "gdk_cairo_region_create_from_surface", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_color, "gdk_cairo_set_source_color", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_pixbuf, "gdk_cairo_set_source_pixbuf", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_rgba, "gdk_cairo_set_source_rgba", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_window, "gdk_cairo_set_source_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_surface_create_from_pixbuf, "gdk_cairo_surface_create_from_pixbuf", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Pango

	Linker.link(gdk_pango_context_get, "gdk_pango_context_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pango_context_get_for_screen, "gdk_pango_context_get_for_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pango_layout_get_clip_region, "gdk_pango_layout_get_clip_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pango_layout_line_get_clip_region, "gdk_pango_layout_line_get_clip_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Pixbuf

	Linker.link(gdk_pixbuf_get_from_surface, "gdk_pixbuf_get_from_surface", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_from_window, "gdk_pixbuf_get_from_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Threads

	Linker.link(gdk_threads_add_idle, "gdk_threads_add_idle", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_idle_full, "gdk_threads_add_idle_full", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout, "gdk_threads_add_timeout", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout_full, "gdk_threads_add_timeout_full", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout_seconds, "gdk_threads_add_timeout_seconds", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout_seconds_full, "gdk_threads_add_timeout_seconds_full", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_enter, "gdk_threads_enter", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_init, "gdk_threads_init", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_leave, "gdk_threads_leave", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_set_lock_functions, "gdk_threads_set_lock_functions", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Gdk

	Linker.link(gdk_beep, "gdk_beep", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_error_trap_pop, "gdk_error_trap_pop", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_error_trap_pop_ignored, "gdk_error_trap_pop_ignored", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_error_trap_push, "gdk_error_trap_push", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_flush, "gdk_flush", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_display, "gdk_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_display_arg_name, "gdk_get_display_arg_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_program_class, "gdk_get_program_class", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_init, "gdk_init", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_init_check, "gdk_init_check", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyboard_grab, "gdk_keyboard_grab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyboard_ungrab, "gdk_keyboard_ungrab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_notify_startup_complete, "gdk_notify_startup_complete", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_notify_startup_complete_with_id, "gdk_notify_startup_complete_with_id", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_parse_args, "gdk_parse_args", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pointer_grab, "gdk_pointer_grab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pointer_is_grabbed, "gdk_pointer_is_grabbed", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pointer_ungrab, "gdk_pointer_ungrab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_allowed_backends, "gdk_set_allowed_backends", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_double_click_time, "gdk_set_double_click_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_program_class, "gdk_set_program_class", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Selection

	Linker.link(gdk_selection_convert, "gdk_selection_convert", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_owner_get, "gdk_selection_owner_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_owner_get_for_display, "gdk_selection_owner_get_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_owner_set, "gdk_selection_owner_set", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_owner_set_for_display, "gdk_selection_owner_set_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_property_get, "gdk_selection_property_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_send_notify, "gdk_selection_send_notify", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_send_notify_for_display, "gdk_selection_send_notify_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Testing

	Linker.link(gdk_test_render_sync, "gdk_test_render_sync", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_test_simulate_button, "gdk_test_simulate_button", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_test_simulate_key, "gdk_test_simulate_key", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
}

__gshared extern(C)
{

	// gdk.AppLaunchContext

	GType function() c_gdk_app_launch_context_get_type;
	GdkAppLaunchContext* function() c_gdk_app_launch_context_new;
	void function(GdkAppLaunchContext* context, int desktop) c_gdk_app_launch_context_set_desktop;
	void function(GdkAppLaunchContext* context, GdkDisplay* display) c_gdk_app_launch_context_set_display;
	void function(GdkAppLaunchContext* context, GIcon* icon) c_gdk_app_launch_context_set_icon;
	void function(GdkAppLaunchContext* context, const(char)* iconName) c_gdk_app_launch_context_set_icon_name;
	void function(GdkAppLaunchContext* context, GdkScreen* screen) c_gdk_app_launch_context_set_screen;
	void function(GdkAppLaunchContext* context, uint timestamp) c_gdk_app_launch_context_set_timestamp;

	// gdk.Atom

	char* function(GdkAtom atom) c_gdk_atom_name;
	GdkAtom function(const(char)* atomName, int onlyIfExists) c_gdk_atom_intern;
	GdkAtom function(const(char)* atomName) c_gdk_atom_intern_static_string;
	void function(GdkWindow* window, GdkAtom property, GdkAtom type, int format, GdkPropMode mode, char* data, int nelements) c_gdk_property_change;
	void function(GdkWindow* window, GdkAtom property) c_gdk_property_delete;
	int function(GdkWindow* window, GdkAtom property, GdkAtom type, gulong offset, gulong length, int pdelete, GdkAtom* actualPropertyType, int* actualFormat, int* actualLength, char** data) c_gdk_property_get;
	int function(GdkDisplay* display, GdkAtom encoding, int format, char* text, int length, char*** list) c_gdk_text_property_to_utf8_list_for_display;
	char* function(const(char)* str) c_gdk_utf8_to_string_target;

	// gdk.Color

	GType function() c_gdk_color_get_type;
	GdkColor* function(GdkColor* color) c_gdk_color_copy;
	int function(GdkColor* colora, GdkColor* colorb) c_gdk_color_equal;
	void function(GdkColor* color) c_gdk_color_free;
	uint function(GdkColor* color) c_gdk_color_hash;
	char* function(GdkColor* color) c_gdk_color_to_string;
	int function(const(char)* spec, GdkColor* color) c_gdk_color_parse;

	// gdk.Cursor

	GType function() c_gdk_cursor_get_type;
	GdkCursor* function(GdkCursorType cursorType) c_gdk_cursor_new;
	GdkCursor* function(GdkDisplay* display, GdkCursorType cursorType) c_gdk_cursor_new_for_display;
	GdkCursor* function(GdkDisplay* display, const(char)* name) c_gdk_cursor_new_from_name;
	GdkCursor* function(GdkDisplay* display, GdkPixbuf* pixbuf, int x, int y) c_gdk_cursor_new_from_pixbuf;
	GdkCursor* function(GdkDisplay* display, cairo_surface_t* surface, double x, double y) c_gdk_cursor_new_from_surface;
	GdkCursorType function(GdkCursor* cursor) c_gdk_cursor_get_cursor_type;
	GdkDisplay* function(GdkCursor* cursor) c_gdk_cursor_get_display;
	GdkPixbuf* function(GdkCursor* cursor) c_gdk_cursor_get_image;
	cairo_surface_t* function(GdkCursor* cursor, double* xHot, double* yHot) c_gdk_cursor_get_surface;
	GdkCursor* function(GdkCursor* cursor) c_gdk_cursor_ref;
	void function(GdkCursor* cursor) c_gdk_cursor_unref;

	// gdk.Device

	GType function() c_gdk_device_get_type;
	void function(GdkTimeCoord** events, int nEvents) c_gdk_device_free_history;
	int function(GdkDisplay* display, GdkDevice* device, GdkWindow** grabWindow, int* ownerEvents) c_gdk_device_grab_info_libgtk_only;
	GdkDevice* function(GdkDevice* device) c_gdk_device_get_associated_device;
	int function(GdkDevice* device, double* axes, GdkAxisUse use, double* value) c_gdk_device_get_axis;
	GdkAxisUse function(GdkDevice* device, uint index) c_gdk_device_get_axis_use;
	int function(GdkDevice* device, double* axes, GdkAtom axisLabel, double* value) c_gdk_device_get_axis_value;
	GdkDeviceType function(GdkDevice* device) c_gdk_device_get_device_type;
	GdkDisplay* function(GdkDevice* device) c_gdk_device_get_display;
	int function(GdkDevice* device) c_gdk_device_get_has_cursor;
	int function(GdkDevice* device, GdkWindow* window, uint start, uint stop, GdkTimeCoord*** events, int* nEvents) c_gdk_device_get_history;
	int function(GdkDevice* device, uint index, uint* keyval, GdkModifierType* modifiers) c_gdk_device_get_key;
	GdkWindow* function(GdkDevice* device) c_gdk_device_get_last_event_window;
	GdkInputMode function(GdkDevice* device) c_gdk_device_get_mode;
	int function(GdkDevice* device) c_gdk_device_get_n_axes;
	int function(GdkDevice* device) c_gdk_device_get_n_keys;
	const(char)* function(GdkDevice* device) c_gdk_device_get_name;
	void function(GdkDevice* device, GdkScreen** screen, int* x, int* y) c_gdk_device_get_position;
	void function(GdkDevice* device, GdkScreen** screen, double* x, double* y) c_gdk_device_get_position_double;
	const(char)* function(GdkDevice* device) c_gdk_device_get_product_id;
	GdkInputSource function(GdkDevice* device) c_gdk_device_get_source;
	void function(GdkDevice* device, GdkWindow* window, double* axes, GdkModifierType* mask) c_gdk_device_get_state;
	const(char)* function(GdkDevice* device) c_gdk_device_get_vendor_id;
	GdkWindow* function(GdkDevice* device, int* winX, int* winY) c_gdk_device_get_window_at_position;
	GdkWindow* function(GdkDevice* device, double* winX, double* winY) c_gdk_device_get_window_at_position_double;
	GdkGrabStatus function(GdkDevice* device, GdkWindow* window, GdkGrabOwnership grabOwnership, int ownerEvents, GdkEventMask eventMask, GdkCursor* cursor, uint time) c_gdk_device_grab;
	GList* function(GdkDevice* device) c_gdk_device_list_axes;
	GList* function(GdkDevice* device) c_gdk_device_list_slave_devices;
	void function(GdkDevice* device, uint index, GdkAxisUse use) c_gdk_device_set_axis_use;
	void function(GdkDevice* device, uint index, uint keyval, GdkModifierType modifiers) c_gdk_device_set_key;
	int function(GdkDevice* device, GdkInputMode mode) c_gdk_device_set_mode;
	void function(GdkDevice* device, uint time) c_gdk_device_ungrab;
	void function(GdkDevice* device, GdkScreen* screen, int x, int y) c_gdk_device_warp;

	// gdk.DeviceManager

	GType function() c_gdk_device_manager_get_type;
	GdkDevice* function(GdkDeviceManager* deviceManager) c_gdk_device_manager_get_client_pointer;
	GdkDisplay* function(GdkDeviceManager* deviceManager) c_gdk_device_manager_get_display;
	GList* function(GdkDeviceManager* deviceManager, GdkDeviceType type) c_gdk_device_manager_list_devices;
	void function() c_gdk_disable_multidevice;

	// gdk.Display

	GType function() c_gdk_display_get_type;
	GdkDisplay* function() c_gdk_display_get_default;
	GdkDisplay* function(const(char)* displayName) c_gdk_display_open;
	GdkDisplay* function() c_gdk_display_open_default_libgtk_only;
	void function(GdkDisplay* display) c_gdk_display_beep;
	void function(GdkDisplay* display) c_gdk_display_close;
	int function(GdkDisplay* display, GdkDevice* device) c_gdk_display_device_is_grabbed;
	void function(GdkDisplay* display) c_gdk_display_flush;
	GdkAppLaunchContext* function(GdkDisplay* display) c_gdk_display_get_app_launch_context;
	uint function(GdkDisplay* display) c_gdk_display_get_default_cursor_size;
	GdkWindow* function(GdkDisplay* display) c_gdk_display_get_default_group;
	GdkScreen* function(GdkDisplay* display) c_gdk_display_get_default_screen;
	GdkDeviceManager* function(GdkDisplay* display) c_gdk_display_get_device_manager;
	GdkEvent* function(GdkDisplay* display) c_gdk_display_get_event;
	void function(GdkDisplay* display, uint* width, uint* height) c_gdk_display_get_maximal_cursor_size;
	int function(GdkDisplay* display) c_gdk_display_get_n_screens;
	const(char)* function(GdkDisplay* display) c_gdk_display_get_name;
	void function(GdkDisplay* display, GdkScreen** screen, int* x, int* y, GdkModifierType* mask) c_gdk_display_get_pointer;
	GdkScreen* function(GdkDisplay* display, int screenNum) c_gdk_display_get_screen;
	GdkWindow* function(GdkDisplay* display, int* winX, int* winY) c_gdk_display_get_window_at_pointer;
	int function(GdkDisplay* display) c_gdk_display_has_pending;
	int function(GdkDisplay* display) c_gdk_display_is_closed;
	void function(GdkDisplay* display, uint time) c_gdk_display_keyboard_ungrab;
	GList* function(GdkDisplay* display) c_gdk_display_list_devices;
	void function(GdkDisplay* display, const(char)* startupId) c_gdk_display_notify_startup_complete;
	GdkEvent* function(GdkDisplay* display) c_gdk_display_peek_event;
	int function(GdkDisplay* display) c_gdk_display_pointer_is_grabbed;
	void function(GdkDisplay* display, uint time) c_gdk_display_pointer_ungrab;
	void function(GdkDisplay* display, GdkEvent* event) c_gdk_display_put_event;
	int function(GdkDisplay* display, GdkAtom selection) c_gdk_display_request_selection_notification;
	void function(GdkDisplay* display, uint distance) c_gdk_display_set_double_click_distance;
	void function(GdkDisplay* display, uint msec) c_gdk_display_set_double_click_time;
	void function(GdkDisplay* display, GdkWindow* clipboardWindow, uint time, GdkAtom* targets, int nTargets) c_gdk_display_store_clipboard;
	int function(GdkDisplay* display) c_gdk_display_supports_clipboard_persistence;
	int function(GdkDisplay* display) c_gdk_display_supports_composite;
	int function(GdkDisplay* display) c_gdk_display_supports_cursor_alpha;
	int function(GdkDisplay* display) c_gdk_display_supports_cursor_color;
	int function(GdkDisplay* display) c_gdk_display_supports_input_shapes;
	int function(GdkDisplay* display) c_gdk_display_supports_selection_notification;
	int function(GdkDisplay* display) c_gdk_display_supports_shapes;
	void function(GdkDisplay* display) c_gdk_display_sync;
	void function(GdkDisplay* display, GdkScreen* screen, int x, int y) c_gdk_display_warp_pointer;

	// gdk.DisplayManager

	GType function() c_gdk_display_manager_get_type;
	GdkDisplayManager* function() c_gdk_display_manager_get;
	GdkDisplay* function(GdkDisplayManager* manager) c_gdk_display_manager_get_default_display;
	GSList* function(GdkDisplayManager* manager) c_gdk_display_manager_list_displays;
	GdkDisplay* function(GdkDisplayManager* manager, const(char)* name) c_gdk_display_manager_open_display;
	void function(GdkDisplayManager* manager, GdkDisplay* display) c_gdk_display_manager_set_default_display;

	// gdk.DragContext

	GType function() c_gdk_drag_context_get_type;
	GdkDragAction function(GdkDragContext* context) c_gdk_drag_context_get_actions;
	GdkWindow* function(GdkDragContext* context) c_gdk_drag_context_get_dest_window;
	GdkDevice* function(GdkDragContext* context) c_gdk_drag_context_get_device;
	GdkDragProtocol function(GdkDragContext* context) c_gdk_drag_context_get_protocol;
	GdkDragAction function(GdkDragContext* context) c_gdk_drag_context_get_selected_action;
	GdkWindow* function(GdkDragContext* context) c_gdk_drag_context_get_source_window;
	GdkDragAction function(GdkDragContext* context) c_gdk_drag_context_get_suggested_action;
	GList* function(GdkDragContext* context) c_gdk_drag_context_list_targets;
	void function(GdkDragContext* context, GdkDevice* device) c_gdk_drag_context_set_device;
	void function(GdkDragContext* context, uint time) c_gdk_drag_abort;
	GdkDragContext* function(GdkWindow* window, GList* targets) c_gdk_drag_begin;
	GdkDragContext* function(GdkWindow* window, GdkDevice* device, GList* targets) c_gdk_drag_begin_for_device;
	void function(GdkDragContext* context, uint time) c_gdk_drag_drop;
	int function(GdkDragContext* context) c_gdk_drag_drop_succeeded;
	void function(GdkDragContext* context, GdkWindow* dragWindow, GdkScreen* screen, int xRoot, int yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol) c_gdk_drag_find_window_for_screen;
	GdkAtom function(GdkDragContext* context) c_gdk_drag_get_selection;
	int function(GdkDragContext* context, GdkWindow* destWindow, GdkDragProtocol protocol, int xRoot, int yRoot, GdkDragAction suggestedAction, GdkDragAction possibleActions, uint time) c_gdk_drag_motion;
	void function(GdkDragContext* context, GdkDragAction action, uint time) c_gdk_drag_status;
	void function(GdkDragContext* context, int success, uint time) c_gdk_drop_finish;
	void function(GdkDragContext* context, int accepted, uint time) c_gdk_drop_reply;

	// gdk.Event

	GType function() c_gdk_event_get_type;
	GdkEvent* function(GdkEventType type) c_gdk_event_new;
	int function(GdkEvent* event1, GdkEvent* event2, double* angle) c_gdk_events_get_angle;
	int function(GdkEvent* event1, GdkEvent* event2, double* x, double* y) c_gdk_events_get_center;
	int function(GdkEvent* event1, GdkEvent* event2, double* distance) c_gdk_events_get_distance;
	GdkEvent* function(GdkEvent* event) c_gdk_event_copy;
	void function(GdkEvent* event) c_gdk_event_free;
	int function(GdkEvent* event, GdkAxisUse axisUse, double* value) c_gdk_event_get_axis;
	int function(GdkEvent* event, uint* button) c_gdk_event_get_button;
	int function(GdkEvent* event, uint* clickCount) c_gdk_event_get_click_count;
	int function(GdkEvent* event, double* xWin, double* yWin) c_gdk_event_get_coords;
	GdkDevice* function(GdkEvent* event) c_gdk_event_get_device;
	GdkEventSequence* function(GdkEvent* event) c_gdk_event_get_event_sequence;
	GdkEventType function(GdkEvent* event) c_gdk_event_get_event_type;
	int function(GdkEvent* event, ushort* keycode) c_gdk_event_get_keycode;
	int function(GdkEvent* event, uint* keyval) c_gdk_event_get_keyval;
	int function(GdkEvent* event, double* xRoot, double* yRoot) c_gdk_event_get_root_coords;
	GdkScreen* function(GdkEvent* event) c_gdk_event_get_screen;
	int function(GdkEvent* event, double* deltaX, double* deltaY) c_gdk_event_get_scroll_deltas;
	int function(GdkEvent* event, GdkScrollDirection* direction) c_gdk_event_get_scroll_direction;
	GdkDevice* function(GdkEvent* event) c_gdk_event_get_source_device;
	int function(GdkEvent* event, GdkModifierType* state) c_gdk_event_get_state;
	uint function(GdkEvent* event) c_gdk_event_get_time;
	GdkWindow* function(GdkEvent* event) c_gdk_event_get_window;
	void function(GdkEvent* event) c_gdk_event_put;
	void function(GdkEvent* event, GdkDevice* device) c_gdk_event_set_device;
	void function(GdkEvent* event, GdkScreen* screen) c_gdk_event_set_screen;
	void function(GdkEvent* event, GdkDevice* device) c_gdk_event_set_source_device;
	int function(GdkEvent* event) c_gdk_event_triggers_context_menu;
	GdkEvent* function() c_gdk_event_get;
	void function(GdkEventFunc func, void* data, GDestroyNotify notify) c_gdk_event_handler_set;
	GdkEvent* function() c_gdk_event_peek;
	void function(GdkEventMotion* event) c_gdk_event_request_motions;
	int function() c_gdk_events_pending;
	int function() c_gdk_get_show_events;
	void function(int showEvents) c_gdk_set_show_events;
	int function(const(char)* name, GValue* value) c_gdk_setting_get;

	// gdk.EventSequence

	GType function() c_gdk_event_sequence_get_type;

	// gdk.FrameClock

	GType function() c_gdk_frame_clock_get_type;
	void function(GdkFrameClock* frameClock) c_gdk_frame_clock_begin_updating;
	void function(GdkFrameClock* frameClock) c_gdk_frame_clock_end_updating;
	GdkFrameTimings* function(GdkFrameClock* frameClock) c_gdk_frame_clock_get_current_timings;
	long function(GdkFrameClock* frameClock) c_gdk_frame_clock_get_frame_counter;
	long function(GdkFrameClock* frameClock) c_gdk_frame_clock_get_frame_time;
	long function(GdkFrameClock* frameClock) c_gdk_frame_clock_get_history_start;
	void function(GdkFrameClock* frameClock, long baseTime, long* refreshIntervalReturn, long* presentationTimeReturn) c_gdk_frame_clock_get_refresh_info;
	GdkFrameTimings* function(GdkFrameClock* frameClock, long frameCounter) c_gdk_frame_clock_get_timings;
	void function(GdkFrameClock* frameClock, GdkFrameClockPhase phase) c_gdk_frame_clock_request_phase;

	// gdk.FrameTimings

	GType function() c_gdk_frame_timings_get_type;
	int function(GdkFrameTimings* timings) c_gdk_frame_timings_get_complete;
	long function(GdkFrameTimings* timings) c_gdk_frame_timings_get_frame_counter;
	long function(GdkFrameTimings* timings) c_gdk_frame_timings_get_frame_time;
	long function(GdkFrameTimings* timings) c_gdk_frame_timings_get_predicted_presentation_time;
	long function(GdkFrameTimings* timings) c_gdk_frame_timings_get_presentation_time;
	long function(GdkFrameTimings* timings) c_gdk_frame_timings_get_refresh_interval;
	GdkFrameTimings* function(GdkFrameTimings* timings) c_gdk_frame_timings_ref;
	void function(GdkFrameTimings* timings) c_gdk_frame_timings_unref;

	// gdk.GLContext

	GType function() c_gdk_gl_context_get_type;
	void function() c_gdk_gl_context_clear_current;
	GdkGLContext* function() c_gdk_gl_context_get_current;
	int function(GdkGLContext* context) c_gdk_gl_context_get_debug_enabled;
	GdkDisplay* function(GdkGLContext* context) c_gdk_gl_context_get_display;
	int function(GdkGLContext* context) c_gdk_gl_context_get_forward_compatible;
	void function(GdkGLContext* context, int* major, int* minor) c_gdk_gl_context_get_required_version;
	GdkGLContext* function(GdkGLContext* context) c_gdk_gl_context_get_shared_context;
	void function(GdkGLContext* context, int* major, int* minor) c_gdk_gl_context_get_version;
	GdkWindow* function(GdkGLContext* context) c_gdk_gl_context_get_window;
	void function(GdkGLContext* context) c_gdk_gl_context_make_current;
	int function(GdkGLContext* context, GError** err) c_gdk_gl_context_realize;
	void function(GdkGLContext* context, int enabled) c_gdk_gl_context_set_debug_enabled;
	void function(GdkGLContext* context, int compatible) c_gdk_gl_context_set_forward_compatible;
	void function(GdkGLContext* context, int major, int minor) c_gdk_gl_context_set_required_version;

	// gdk.Keymap

	GType function() c_gdk_keymap_get_type;
	GdkKeymap* function() c_gdk_keymap_get_default;
	GdkKeymap* function(GdkDisplay* display) c_gdk_keymap_get_for_display;
	void function(GdkKeymap* keymap, GdkModifierType* state) c_gdk_keymap_add_virtual_modifiers;
	int function(GdkKeymap* keymap) c_gdk_keymap_get_caps_lock_state;
	PangoDirection function(GdkKeymap* keymap) c_gdk_keymap_get_direction;
	int function(GdkKeymap* keymap, uint hardwareKeycode, GdkKeymapKey** keys, uint** keyvals, int* nEntries) c_gdk_keymap_get_entries_for_keycode;
	int function(GdkKeymap* keymap, uint keyval, GdkKeymapKey** keys, int* nKeys) c_gdk_keymap_get_entries_for_keyval;
	GdkModifierType function(GdkKeymap* keymap, GdkModifierIntent intent) c_gdk_keymap_get_modifier_mask;
	uint function(GdkKeymap* keymap) c_gdk_keymap_get_modifier_state;
	int function(GdkKeymap* keymap) c_gdk_keymap_get_num_lock_state;
	int function(GdkKeymap* keymap) c_gdk_keymap_get_scroll_lock_state;
	int function(GdkKeymap* keymap) c_gdk_keymap_have_bidi_layouts;
	uint function(GdkKeymap* keymap, GdkKeymapKey* key) c_gdk_keymap_lookup_key;
	int function(GdkKeymap* keymap, GdkModifierType* state) c_gdk_keymap_map_virtual_modifiers;
	int function(GdkKeymap* keymap, uint hardwareKeycode, GdkModifierType state, int group, uint* keyval, int* effectiveGroup, int* level, GdkModifierType* consumedModifiers) c_gdk_keymap_translate_keyboard_state;
	void function(uint symbol, uint* lower, uint* upper) c_gdk_keyval_convert_case;
	uint function(const(char)* keyvalName) c_gdk_keyval_from_name;
	int function(uint keyval) c_gdk_keyval_is_lower;
	int function(uint keyval) c_gdk_keyval_is_upper;
	char* function(uint keyval) c_gdk_keyval_name;
	uint function(uint keyval) c_gdk_keyval_to_lower;
	uint function(uint keyval) c_gdk_keyval_to_unicode;
	uint function(uint keyval) c_gdk_keyval_to_upper;
	uint function(uint wc) c_gdk_unicode_to_keyval;

	// gdk.RGBA

	GType function() c_gdk_rgba_get_type;
	GdkRGBA* function(GdkRGBA* rgba) c_gdk_rgba_copy;
	int function(void* p1, void* p2) c_gdk_rgba_equal;
	void function(GdkRGBA* rgba) c_gdk_rgba_free;
	uint function(void* p) c_gdk_rgba_hash;
	int function(GdkRGBA* rgba, const(char)* spec) c_gdk_rgba_parse;
	char* function(GdkRGBA* rgba) c_gdk_rgba_to_string;

	// gdk.Rectangle

	GType function() c_gdk_rectangle_get_type;
	int function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest) c_gdk_rectangle_intersect;
	void function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest) c_gdk_rectangle_union;

	// gdk.Screen

	GType function() c_gdk_screen_get_type;
	GdkScreen* function() c_gdk_screen_get_default;
	int function() c_gdk_screen_height;
	int function() c_gdk_screen_height_mm;
	int function() c_gdk_screen_width;
	int function() c_gdk_screen_width_mm;
	GdkWindow* function(GdkScreen* screen) c_gdk_screen_get_active_window;
	GdkDisplay* function(GdkScreen* screen) c_gdk_screen_get_display;
	cairo_font_options_t* function(GdkScreen* screen) c_gdk_screen_get_font_options;
	int function(GdkScreen* screen) c_gdk_screen_get_height;
	int function(GdkScreen* screen) c_gdk_screen_get_height_mm;
	int function(GdkScreen* screen, int x, int y) c_gdk_screen_get_monitor_at_point;
	int function(GdkScreen* screen, GdkWindow* window) c_gdk_screen_get_monitor_at_window;
	void function(GdkScreen* screen, int monitorNum, GdkRectangle* dest) c_gdk_screen_get_monitor_geometry;
	int function(GdkScreen* screen, int monitorNum) c_gdk_screen_get_monitor_height_mm;
	char* function(GdkScreen* screen, int monitorNum) c_gdk_screen_get_monitor_plug_name;
	int function(GdkScreen* screen, int monitorNum) c_gdk_screen_get_monitor_scale_factor;
	int function(GdkScreen* screen, int monitorNum) c_gdk_screen_get_monitor_width_mm;
	void function(GdkScreen* screen, int monitorNum, GdkRectangle* dest) c_gdk_screen_get_monitor_workarea;
	int function(GdkScreen* screen) c_gdk_screen_get_n_monitors;
	int function(GdkScreen* screen) c_gdk_screen_get_number;
	int function(GdkScreen* screen) c_gdk_screen_get_primary_monitor;
	double function(GdkScreen* screen) c_gdk_screen_get_resolution;
	GdkVisual* function(GdkScreen* screen) c_gdk_screen_get_rgba_visual;
	GdkWindow* function(GdkScreen* screen) c_gdk_screen_get_root_window;
	int function(GdkScreen* screen, const(char)* name, GValue* value) c_gdk_screen_get_setting;
	GdkVisual* function(GdkScreen* screen) c_gdk_screen_get_system_visual;
	GList* function(GdkScreen* screen) c_gdk_screen_get_toplevel_windows;
	int function(GdkScreen* screen) c_gdk_screen_get_width;
	int function(GdkScreen* screen) c_gdk_screen_get_width_mm;
	GList* function(GdkScreen* screen) c_gdk_screen_get_window_stack;
	int function(GdkScreen* screen) c_gdk_screen_is_composited;
	GList* function(GdkScreen* screen) c_gdk_screen_list_visuals;
	char* function(GdkScreen* screen) c_gdk_screen_make_display_name;
	void function(GdkScreen* screen, cairo_font_options_t* options) c_gdk_screen_set_font_options;
	void function(GdkScreen* screen, double dpi) c_gdk_screen_set_resolution;

	// gdk.Visual

	GType function() c_gdk_visual_get_type;
	GdkVisual* function() c_gdk_visual_get_best;
	int function() c_gdk_visual_get_best_depth;
	GdkVisualType function() c_gdk_visual_get_best_type;
	GdkVisual* function(int depth, GdkVisualType visualType) c_gdk_visual_get_best_with_both;
	GdkVisual* function(int depth) c_gdk_visual_get_best_with_depth;
	GdkVisual* function(GdkVisualType visualType) c_gdk_visual_get_best_with_type;
	GdkVisual* function() c_gdk_visual_get_system;
	int function(GdkVisual* visual) c_gdk_visual_get_bits_per_rgb;
	void function(GdkVisual* visual, uint* mask, int* shift, int* precision) c_gdk_visual_get_blue_pixel_details;
	GdkByteOrder function(GdkVisual* visual) c_gdk_visual_get_byte_order;
	int function(GdkVisual* visual) c_gdk_visual_get_colormap_size;
	int function(GdkVisual* visual) c_gdk_visual_get_depth;
	void function(GdkVisual* visual, uint* mask, int* shift, int* precision) c_gdk_visual_get_green_pixel_details;
	void function(GdkVisual* visual, uint* mask, int* shift, int* precision) c_gdk_visual_get_red_pixel_details;
	GdkScreen* function(GdkVisual* visual) c_gdk_visual_get_screen;
	GdkVisualType function(GdkVisual* visual) c_gdk_visual_get_visual_type;
	GList* function() c_gdk_list_visuals;
	void function(int** depths, int* count) c_gdk_query_depths;
	void function(GdkVisualType** visualTypes, int* count) c_gdk_query_visual_types;

	// gdk.Window

	GType function() c_gdk_window_get_type;
	GdkWindow* function(GdkWindow* parent, GdkWindowAttr* attributes, int attributesMask) c_gdk_window_new;
	GdkWindow* function(int* winX, int* winY) c_gdk_window_at_pointer;
	void function(GdkGeometry* geometry, GdkWindowHints flags, int width, int height, int* newWidth, int* newHeight) c_gdk_window_constrain_size;
	void function() c_gdk_window_process_all_updates;
	void function(int setting) c_gdk_window_set_debug_updates;
	void function(GdkWindow* window, GdkFilterFunc funct, void* data) c_gdk_window_add_filter;
	void function(GdkWindow* window) c_gdk_window_beep;
	void function(GdkWindow* window, int button, int rootX, int rootY, uint timestamp) c_gdk_window_begin_move_drag;
	void function(GdkWindow* window, GdkDevice* device, int button, int rootX, int rootY, uint timestamp) c_gdk_window_begin_move_drag_for_device;
	void function(GdkWindow* window, GdkRectangle* rectangle) c_gdk_window_begin_paint_rect;
	void function(GdkWindow* window, cairo_region_t* region) c_gdk_window_begin_paint_region;
	void function(GdkWindow* window, GdkWindowEdge edge, int button, int rootX, int rootY, uint timestamp) c_gdk_window_begin_resize_drag;
	void function(GdkWindow* window, GdkWindowEdge edge, GdkDevice* device, int button, int rootX, int rootY, uint timestamp) c_gdk_window_begin_resize_drag_for_device;
	void function(GdkWindow* window) c_gdk_window_configure_finished;
	void function(GdkWindow* window, double parentX, double parentY, double* x, double* y) c_gdk_window_coords_from_parent;
	void function(GdkWindow* window, double x, double y, double* parentX, double* parentY) c_gdk_window_coords_to_parent;
	GdkGLContext* function(GdkWindow* window, GError** err) c_gdk_window_create_gl_context;
	cairo_surface_t* function(GdkWindow* window, cairo_format_t format, int width, int height, int scale) c_gdk_window_create_similar_image_surface;
	cairo_surface_t* function(GdkWindow* window, cairo_content_t content, int width, int height) c_gdk_window_create_similar_surface;
	void function(GdkWindow* window) c_gdk_window_deiconify;
	void function(GdkWindow* window) c_gdk_window_destroy;
	void function(GdkWindow* window) c_gdk_window_destroy_notify;
	void function(GdkWindow* window) c_gdk_window_enable_synchronized_configure;
	void function(GdkWindow* window) c_gdk_window_end_paint;
	int function(GdkWindow* window) c_gdk_window_ensure_native;
	void function(GdkWindow* window) c_gdk_window_flush;
	void function(GdkWindow* window, uint timestamp) c_gdk_window_focus;
	void function(GdkWindow* window) c_gdk_window_freeze_toplevel_updates_libgtk_only;
	void function(GdkWindow* window) c_gdk_window_freeze_updates;
	void function(GdkWindow* window) c_gdk_window_fullscreen;
	void function(GdkWindow* window, int monitor) c_gdk_window_fullscreen_on_monitor;
	void function(GdkWindow* window) c_gdk_window_geometry_changed;
	int function(GdkWindow* window) c_gdk_window_get_accept_focus;
	cairo_pattern_t* function(GdkWindow* window) c_gdk_window_get_background_pattern;
	GList* function(GdkWindow* window) c_gdk_window_get_children;
	GList* function(GdkWindow* window, void* userData) c_gdk_window_get_children_with_user_data;
	cairo_region_t* function(GdkWindow* window) c_gdk_window_get_clip_region;
	int function(GdkWindow* window) c_gdk_window_get_composited;
	GdkCursor* function(GdkWindow* window) c_gdk_window_get_cursor;
	int function(GdkWindow* window, GdkWMDecoration* decorations) c_gdk_window_get_decorations;
	GdkCursor* function(GdkWindow* window, GdkDevice* device) c_gdk_window_get_device_cursor;
	GdkEventMask function(GdkWindow* window, GdkDevice* device) c_gdk_window_get_device_events;
	GdkWindow* function(GdkWindow* window, GdkDevice* device, int* x, int* y, GdkModifierType* mask) c_gdk_window_get_device_position;
	GdkWindow* function(GdkWindow* window, GdkDevice* device, double* x, double* y, GdkModifierType* mask) c_gdk_window_get_device_position_double;
	GdkDisplay* function(GdkWindow* window) c_gdk_window_get_display;
	GdkDragProtocol function(GdkWindow* window, GdkWindow** target) c_gdk_window_get_drag_protocol;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_effective_parent;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_effective_toplevel;
	int function(GdkWindow* window) c_gdk_window_get_event_compression;
	GdkEventMask function(GdkWindow* window) c_gdk_window_get_events;
	int function(GdkWindow* window) c_gdk_window_get_focus_on_map;
	GdkFrameClock* function(GdkWindow* window) c_gdk_window_get_frame_clock;
	void function(GdkWindow* window, GdkRectangle* rect) c_gdk_window_get_frame_extents;
	GdkFullscreenMode function(GdkWindow* window) c_gdk_window_get_fullscreen_mode;
	void function(GdkWindow* window, int* x, int* y, int* width, int* height) c_gdk_window_get_geometry;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_group;
	int function(GdkWindow* window) c_gdk_window_get_height;
	int function(GdkWindow* window) c_gdk_window_get_modal_hint;
	int function(GdkWindow* window, int* x, int* y) c_gdk_window_get_origin;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_parent;
	int function(GdkWindow* window) c_gdk_window_get_pass_through;
	GdkWindow* function(GdkWindow* window, int* x, int* y, GdkModifierType* mask) c_gdk_window_get_pointer;
	void function(GdkWindow* window, int* x, int* y) c_gdk_window_get_position;
	void function(GdkWindow* window, int x, int y, int* rootX, int* rootY) c_gdk_window_get_root_coords;
	void function(GdkWindow* window, int* x, int* y) c_gdk_window_get_root_origin;
	int function(GdkWindow* window) c_gdk_window_get_scale_factor;
	GdkScreen* function(GdkWindow* window) c_gdk_window_get_screen;
	GdkEventMask function(GdkWindow* window, GdkInputSource source) c_gdk_window_get_source_events;
	GdkWindowState function(GdkWindow* window) c_gdk_window_get_state;
	int function(GdkWindow* window) c_gdk_window_get_support_multidevice;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_toplevel;
	GdkWindowTypeHint function(GdkWindow* window) c_gdk_window_get_type_hint;
	cairo_region_t* function(GdkWindow* window) c_gdk_window_get_update_area;
	void function(GdkWindow* window, void** data) c_gdk_window_get_user_data;
	cairo_region_t* function(GdkWindow* window) c_gdk_window_get_visible_region;
	GdkVisual* function(GdkWindow* window) c_gdk_window_get_visual;
	int function(GdkWindow* window) c_gdk_window_get_width;
	GdkWindowType function(GdkWindow* window) c_gdk_window_get_window_type;
	int function(GdkWindow* window) c_gdk_window_has_native;
	void function(GdkWindow* window) c_gdk_window_hide;
	void function(GdkWindow* window) c_gdk_window_iconify;
	void function(GdkWindow* window, cairo_region_t* shapeRegion, int offsetX, int offsetY) c_gdk_window_input_shape_combine_region;
	void function(GdkWindow* window, cairo_region_t* region, GdkWindowChildFunc childFunc, void* userData) c_gdk_window_invalidate_maybe_recurse;
	void function(GdkWindow* window, GdkRectangle* rect, int invalidateChildren) c_gdk_window_invalidate_rect;
	void function(GdkWindow* window, cairo_region_t* region, int invalidateChildren) c_gdk_window_invalidate_region;
	int function(GdkWindow* window) c_gdk_window_is_destroyed;
	int function(GdkWindow* window) c_gdk_window_is_input_only;
	int function(GdkWindow* window) c_gdk_window_is_shaped;
	int function(GdkWindow* window) c_gdk_window_is_viewable;
	int function(GdkWindow* window) c_gdk_window_is_visible;
	void function(GdkWindow* window) c_gdk_window_lower;
	void function(GdkWindow* window, cairo_t* cr) c_gdk_window_mark_paint_from_clip;
	void function(GdkWindow* window) c_gdk_window_maximize;
	void function(GdkWindow* window) c_gdk_window_merge_child_input_shapes;
	void function(GdkWindow* window) c_gdk_window_merge_child_shapes;
	void function(GdkWindow* window, int x, int y) c_gdk_window_move;
	void function(GdkWindow* window, cairo_region_t* region, int dx, int dy) c_gdk_window_move_region;
	void function(GdkWindow* window, int x, int y, int width, int height) c_gdk_window_move_resize;
	GList* function(GdkWindow* window) c_gdk_window_peek_children;
	void function(GdkWindow* window, int updateChildren) c_gdk_window_process_updates;
	void function(GdkWindow* window) c_gdk_window_raise;
	void function(GdkWindow* window) c_gdk_window_register_dnd;
	void function(GdkWindow* window, GdkFilterFunc funct, void* data) c_gdk_window_remove_filter;
	void function(GdkWindow* window, GdkWindow* newParent, int x, int y) c_gdk_window_reparent;
	void function(GdkWindow* window, int width, int height) c_gdk_window_resize;
	void function(GdkWindow* window, GdkWindow* sibling, int above) c_gdk_window_restack;
	void function(GdkWindow* window, int dx, int dy) c_gdk_window_scroll;
	void function(GdkWindow* window, int acceptFocus) c_gdk_window_set_accept_focus;
	void function(GdkWindow* window, GdkColor* color) c_gdk_window_set_background;
	void function(GdkWindow* window, cairo_pattern_t* pattern) c_gdk_window_set_background_pattern;
	void function(GdkWindow* window, GdkRGBA* rgba) c_gdk_window_set_background_rgba;
	void function(GdkWindow* window) c_gdk_window_set_child_input_shapes;
	void function(GdkWindow* window) c_gdk_window_set_child_shapes;
	void function(GdkWindow* window, int composited) c_gdk_window_set_composited;
	void function(GdkWindow* window, GdkCursor* cursor) c_gdk_window_set_cursor;
	void function(GdkWindow* window, GdkWMDecoration decorations) c_gdk_window_set_decorations;
	void function(GdkWindow* window, GdkDevice* device, GdkCursor* cursor) c_gdk_window_set_device_cursor;
	void function(GdkWindow* window, GdkDevice* device, GdkEventMask eventMask) c_gdk_window_set_device_events;
	void function(GdkWindow* window, int eventCompression) c_gdk_window_set_event_compression;
	void function(GdkWindow* window, GdkEventMask eventMask) c_gdk_window_set_events;
	void function(GdkWindow* window, int focusOnMap) c_gdk_window_set_focus_on_map;
	void function(GdkWindow* window, GdkFullscreenMode mode) c_gdk_window_set_fullscreen_mode;
	void function(GdkWindow* window, GdkWMFunction functions) c_gdk_window_set_functions;
	void function(GdkWindow* window, GdkGeometry* geometry, GdkWindowHints geomMask) c_gdk_window_set_geometry_hints;
	void function(GdkWindow* window, GdkWindow* leader) c_gdk_window_set_group;
	void function(GdkWindow* window, GList* pixbufs) c_gdk_window_set_icon_list;
	void function(GdkWindow* window, const(char)* name) c_gdk_window_set_icon_name;
	void function(GdkWindow* window, GdkWindowInvalidateHandlerFunc handler) c_gdk_window_set_invalidate_handler;
	void function(GdkWindow* window, int setting) c_gdk_window_set_keep_above;
	void function(GdkWindow* window, int setting) c_gdk_window_set_keep_below;
	void function(GdkWindow* window, int modal) c_gdk_window_set_modal_hint;
	void function(GdkWindow* window, double opacity) c_gdk_window_set_opacity;
	void function(GdkWindow* window, cairo_region_t* region) c_gdk_window_set_opaque_region;
	void function(GdkWindow* window, int overrideRedirect) c_gdk_window_set_override_redirect;
	void function(GdkWindow* window, int passThrough) c_gdk_window_set_pass_through;
	void function(GdkWindow* window, const(char)* role) c_gdk_window_set_role;
	void function(GdkWindow* window, int left, int right, int top, int bottom) c_gdk_window_set_shadow_width;
	void function(GdkWindow* window, int skipsPager) c_gdk_window_set_skip_pager_hint;
	void function(GdkWindow* window, int skipsTaskbar) c_gdk_window_set_skip_taskbar_hint;
	void function(GdkWindow* window, GdkInputSource source, GdkEventMask eventMask) c_gdk_window_set_source_events;
	void function(GdkWindow* window, const(char)* startupId) c_gdk_window_set_startup_id;
	int function(GdkWindow* window, int useStatic) c_gdk_window_set_static_gravities;
	void function(GdkWindow* window, int supportMultidevice) c_gdk_window_set_support_multidevice;
	void function(GdkWindow* window, const(char)* title) c_gdk_window_set_title;
	void function(GdkWindow* window, GdkWindow* parent) c_gdk_window_set_transient_for;
	void function(GdkWindow* window, GdkWindowTypeHint hint) c_gdk_window_set_type_hint;
	void function(GdkWindow* window, int urgent) c_gdk_window_set_urgency_hint;
	void function(GdkWindow* window, void* userData) c_gdk_window_set_user_data;
	void function(GdkWindow* window, cairo_region_t* shapeRegion, int offsetX, int offsetY) c_gdk_window_shape_combine_region;
	void function(GdkWindow* window) c_gdk_window_show;
	void function(GdkWindow* window) c_gdk_window_show_unraised;
	int function(GdkWindow* window, GdkEvent* event) c_gdk_window_show_window_menu;
	void function(GdkWindow* window) c_gdk_window_stick;
	void function(GdkWindow* window) c_gdk_window_thaw_toplevel_updates_libgtk_only;
	void function(GdkWindow* window) c_gdk_window_thaw_updates;
	void function(GdkWindow* window) c_gdk_window_unfullscreen;
	void function(GdkWindow* window) c_gdk_window_unmaximize;
	void function(GdkWindow* window) c_gdk_window_unstick;
	void function(GdkWindow* window) c_gdk_window_withdraw;
	GdkWindow* function() c_gdk_get_default_root_window;
	GdkWindow* function(GdkWindow* window) c_gdk_offscreen_window_get_embedder;
	cairo_surface_t* function(GdkWindow* window) c_gdk_offscreen_window_get_surface;
	void function(GdkWindow* window, GdkWindow* embedder) c_gdk_offscreen_window_set_embedder;

	// gdk.X11

	GType function() c_gdk_x11_window_get_type;
	GdkWindow* function(GdkDisplay* display, uint window) c_gdk_x11_window_foreign_new_for_display;
	GdkWindow* function(GdkDisplay* display, uint window) c_gdk_x11_window_lookup_for_display;
	uint function(GdkWindow* window) c_gdk_x11_window_get_desktop;
	uint function(GdkWindow* window) c_gdk_x11_window_get_xid;
	void function(GdkWindow* window) c_gdk_x11_window_move_to_current_desktop;
	void function(GdkWindow* window, uint desktop) c_gdk_x11_window_move_to_desktop;
	void function(GdkWindow* window, int left, int right, int top, int bottom) c_gdk_x11_window_set_frame_extents;
	void function(GdkWindow* window, int frameSyncEnabled) c_gdk_x11_window_set_frame_sync_enabled;
	void function(GdkWindow* window, int hideTitlebarWhenMaximized) c_gdk_x11_window_set_hide_titlebar_when_maximized;
	void function(GdkWindow* window, char* variant) c_gdk_x11_window_set_theme_variant;
	void function(GdkWindow* window, uint timestamp) c_gdk_x11_window_set_user_time;
	void function(GdkWindow* window, const(char)* name, const(char)* value) c_gdk_x11_window_set_utf8_property;

	// gdk.Cairo

	cairo_t* function(GdkWindow* window) c_gdk_cairo_create;
	void function(cairo_t* cr, GdkWindow* window, int source, int sourceType, int bufferScale, int x, int y, int width, int height) c_gdk_cairo_draw_from_gl;
	int function(cairo_t* cr, GdkRectangle* rect) c_gdk_cairo_get_clip_rectangle;
	void function(cairo_t* cr, GdkRectangle* rectangle) c_gdk_cairo_rectangle;
	void function(cairo_t* cr, cairo_region_t* region) c_gdk_cairo_region;
	cairo_region_t* function(cairo_surface_t* surface) c_gdk_cairo_region_create_from_surface;
	void function(cairo_t* cr, GdkColor* color) c_gdk_cairo_set_source_color;
	void function(cairo_t* cr, GdkPixbuf* pixbuf, double pixbufX, double pixbufY) c_gdk_cairo_set_source_pixbuf;
	void function(cairo_t* cr, GdkRGBA* rgba) c_gdk_cairo_set_source_rgba;
	void function(cairo_t* cr, GdkWindow* window, double x, double y) c_gdk_cairo_set_source_window;
	cairo_surface_t* function(GdkPixbuf* pixbuf, int scale, GdkWindow* forWindow) c_gdk_cairo_surface_create_from_pixbuf;

	// gdk.Pango

	PangoContext* function() c_gdk_pango_context_get;
	PangoContext* function(GdkScreen* screen) c_gdk_pango_context_get_for_screen;
	cairo_region_t* function(PangoLayout* layout, int xOrigin, int yOrigin, int* indexRanges, int nRanges) c_gdk_pango_layout_get_clip_region;
	cairo_region_t* function(PangoLayoutLine* line, int xOrigin, int yOrigin, int* indexRanges, int nRanges) c_gdk_pango_layout_line_get_clip_region;

	// gdk.Pixbuf

	GdkPixbuf* function(cairo_surface_t* surface, int srcX, int srcY, int width, int height) c_gdk_pixbuf_get_from_surface;
	GdkPixbuf* function(GdkWindow* window, int srcX, int srcY, int width, int height) c_gdk_pixbuf_get_from_window;

	// gdk.Threads

	uint function(GSourceFunc funct, void* data) c_gdk_threads_add_idle;
	uint function(int priority, GSourceFunc funct, void* data, GDestroyNotify notify) c_gdk_threads_add_idle_full;
	uint function(uint interval, GSourceFunc funct, void* data) c_gdk_threads_add_timeout;
	uint function(int priority, uint interval, GSourceFunc funct, void* data, GDestroyNotify notify) c_gdk_threads_add_timeout_full;
	uint function(uint interval, GSourceFunc funct, void* data) c_gdk_threads_add_timeout_seconds;
	uint function(int priority, uint interval, GSourceFunc funct, void* data, GDestroyNotify notify) c_gdk_threads_add_timeout_seconds_full;
	void function() c_gdk_threads_enter;
	void function() c_gdk_threads_init;
	void function() c_gdk_threads_leave;
	void function(GCallback enterFn, GCallback leaveFn) c_gdk_threads_set_lock_functions;

	// gdk.Gdk

	void function() c_gdk_beep;
	int function() c_gdk_error_trap_pop;
	void function() c_gdk_error_trap_pop_ignored;
	void function() c_gdk_error_trap_push;
	void function() c_gdk_flush;
	char* function() c_gdk_get_display;
	const(char)* function() c_gdk_get_display_arg_name;
	const(char)* function() c_gdk_get_program_class;
	void function(int* argc, char*** argv) c_gdk_init;
	int function(int* argc, char*** argv) c_gdk_init_check;
	GdkGrabStatus function(GdkWindow* window, int ownerEvents, uint time) c_gdk_keyboard_grab;
	void function(uint time) c_gdk_keyboard_ungrab;
	void function() c_gdk_notify_startup_complete;
	void function(const(char)* startupId) c_gdk_notify_startup_complete_with_id;
	void function(int* argc, char*** argv) c_gdk_parse_args;
	GdkGrabStatus function(GdkWindow* window, int ownerEvents, GdkEventMask eventMask, GdkWindow* confineTo, GdkCursor* cursor, uint time) c_gdk_pointer_grab;
	int function() c_gdk_pointer_is_grabbed;
	void function(uint time) c_gdk_pointer_ungrab;
	void function(const(char)* backends) c_gdk_set_allowed_backends;
	void function(uint msec) c_gdk_set_double_click_time;
	void function(const(char)* programClass) c_gdk_set_program_class;

	// gdk.Selection

	void function(GdkWindow* requestor, GdkAtom selection, GdkAtom target, uint time) c_gdk_selection_convert;
	GdkWindow* function(GdkAtom selection) c_gdk_selection_owner_get;
	GdkWindow* function(GdkDisplay* display, GdkAtom selection) c_gdk_selection_owner_get_for_display;
	int function(GdkWindow* owner, GdkAtom selection, uint time, int sendEvent) c_gdk_selection_owner_set;
	int function(GdkDisplay* display, GdkWindow* owner, GdkAtom selection, uint time, int sendEvent) c_gdk_selection_owner_set_for_display;
	int function(GdkWindow* requestor, char** data, GdkAtom* propType, int* propFormat) c_gdk_selection_property_get;
	void function(GdkWindow* requestor, GdkAtom selection, GdkAtom target, GdkAtom property, uint time) c_gdk_selection_send_notify;
	void function(GdkDisplay* display, GdkWindow* requestor, GdkAtom selection, GdkAtom target, GdkAtom property, uint time) c_gdk_selection_send_notify_for_display;

	// gdk.Testing

	void function(GdkWindow* window) c_gdk_test_render_sync;
	int function(GdkWindow* window, int x, int y, uint button, GdkModifierType modifiers, GdkEventType buttonPressrelease) c_gdk_test_simulate_button;
	int function(GdkWindow* window, int x, int y, uint keyval, GdkModifierType modifiers, GdkEventType keyPressrelease) c_gdk_test_simulate_key;
}


// gdk.AppLaunchContext

alias c_gdk_app_launch_context_get_type gdk_app_launch_context_get_type;
alias c_gdk_app_launch_context_new gdk_app_launch_context_new;
alias c_gdk_app_launch_context_set_desktop gdk_app_launch_context_set_desktop;
alias c_gdk_app_launch_context_set_display gdk_app_launch_context_set_display;
alias c_gdk_app_launch_context_set_icon gdk_app_launch_context_set_icon;
alias c_gdk_app_launch_context_set_icon_name gdk_app_launch_context_set_icon_name;
alias c_gdk_app_launch_context_set_screen gdk_app_launch_context_set_screen;
alias c_gdk_app_launch_context_set_timestamp gdk_app_launch_context_set_timestamp;

// gdk.Atom

alias c_gdk_atom_name gdk_atom_name;
alias c_gdk_atom_intern gdk_atom_intern;
alias c_gdk_atom_intern_static_string gdk_atom_intern_static_string;
alias c_gdk_property_change gdk_property_change;
alias c_gdk_property_delete gdk_property_delete;
alias c_gdk_property_get gdk_property_get;
alias c_gdk_text_property_to_utf8_list_for_display gdk_text_property_to_utf8_list_for_display;
alias c_gdk_utf8_to_string_target gdk_utf8_to_string_target;

// gdk.Color

alias c_gdk_color_get_type gdk_color_get_type;
alias c_gdk_color_copy gdk_color_copy;
alias c_gdk_color_equal gdk_color_equal;
alias c_gdk_color_free gdk_color_free;
alias c_gdk_color_hash gdk_color_hash;
alias c_gdk_color_to_string gdk_color_to_string;
alias c_gdk_color_parse gdk_color_parse;

// gdk.Cursor

alias c_gdk_cursor_get_type gdk_cursor_get_type;
alias c_gdk_cursor_new gdk_cursor_new;
alias c_gdk_cursor_new_for_display gdk_cursor_new_for_display;
alias c_gdk_cursor_new_from_name gdk_cursor_new_from_name;
alias c_gdk_cursor_new_from_pixbuf gdk_cursor_new_from_pixbuf;
alias c_gdk_cursor_new_from_surface gdk_cursor_new_from_surface;
alias c_gdk_cursor_get_cursor_type gdk_cursor_get_cursor_type;
alias c_gdk_cursor_get_display gdk_cursor_get_display;
alias c_gdk_cursor_get_image gdk_cursor_get_image;
alias c_gdk_cursor_get_surface gdk_cursor_get_surface;
alias c_gdk_cursor_ref gdk_cursor_ref;
alias c_gdk_cursor_unref gdk_cursor_unref;

// gdk.Device

alias c_gdk_device_get_type gdk_device_get_type;
alias c_gdk_device_free_history gdk_device_free_history;
alias c_gdk_device_grab_info_libgtk_only gdk_device_grab_info_libgtk_only;
alias c_gdk_device_get_associated_device gdk_device_get_associated_device;
alias c_gdk_device_get_axis gdk_device_get_axis;
alias c_gdk_device_get_axis_use gdk_device_get_axis_use;
alias c_gdk_device_get_axis_value gdk_device_get_axis_value;
alias c_gdk_device_get_device_type gdk_device_get_device_type;
alias c_gdk_device_get_display gdk_device_get_display;
alias c_gdk_device_get_has_cursor gdk_device_get_has_cursor;
alias c_gdk_device_get_history gdk_device_get_history;
alias c_gdk_device_get_key gdk_device_get_key;
alias c_gdk_device_get_last_event_window gdk_device_get_last_event_window;
alias c_gdk_device_get_mode gdk_device_get_mode;
alias c_gdk_device_get_n_axes gdk_device_get_n_axes;
alias c_gdk_device_get_n_keys gdk_device_get_n_keys;
alias c_gdk_device_get_name gdk_device_get_name;
alias c_gdk_device_get_position gdk_device_get_position;
alias c_gdk_device_get_position_double gdk_device_get_position_double;
alias c_gdk_device_get_product_id gdk_device_get_product_id;
alias c_gdk_device_get_source gdk_device_get_source;
alias c_gdk_device_get_state gdk_device_get_state;
alias c_gdk_device_get_vendor_id gdk_device_get_vendor_id;
alias c_gdk_device_get_window_at_position gdk_device_get_window_at_position;
alias c_gdk_device_get_window_at_position_double gdk_device_get_window_at_position_double;
alias c_gdk_device_grab gdk_device_grab;
alias c_gdk_device_list_axes gdk_device_list_axes;
alias c_gdk_device_list_slave_devices gdk_device_list_slave_devices;
alias c_gdk_device_set_axis_use gdk_device_set_axis_use;
alias c_gdk_device_set_key gdk_device_set_key;
alias c_gdk_device_set_mode gdk_device_set_mode;
alias c_gdk_device_ungrab gdk_device_ungrab;
alias c_gdk_device_warp gdk_device_warp;

// gdk.DeviceManager

alias c_gdk_device_manager_get_type gdk_device_manager_get_type;
alias c_gdk_device_manager_get_client_pointer gdk_device_manager_get_client_pointer;
alias c_gdk_device_manager_get_display gdk_device_manager_get_display;
alias c_gdk_device_manager_list_devices gdk_device_manager_list_devices;
alias c_gdk_disable_multidevice gdk_disable_multidevice;

// gdk.Display

alias c_gdk_display_get_type gdk_display_get_type;
alias c_gdk_display_get_default gdk_display_get_default;
alias c_gdk_display_open gdk_display_open;
alias c_gdk_display_open_default_libgtk_only gdk_display_open_default_libgtk_only;
alias c_gdk_display_beep gdk_display_beep;
alias c_gdk_display_close gdk_display_close;
alias c_gdk_display_device_is_grabbed gdk_display_device_is_grabbed;
alias c_gdk_display_flush gdk_display_flush;
alias c_gdk_display_get_app_launch_context gdk_display_get_app_launch_context;
alias c_gdk_display_get_default_cursor_size gdk_display_get_default_cursor_size;
alias c_gdk_display_get_default_group gdk_display_get_default_group;
alias c_gdk_display_get_default_screen gdk_display_get_default_screen;
alias c_gdk_display_get_device_manager gdk_display_get_device_manager;
alias c_gdk_display_get_event gdk_display_get_event;
alias c_gdk_display_get_maximal_cursor_size gdk_display_get_maximal_cursor_size;
alias c_gdk_display_get_n_screens gdk_display_get_n_screens;
alias c_gdk_display_get_name gdk_display_get_name;
alias c_gdk_display_get_pointer gdk_display_get_pointer;
alias c_gdk_display_get_screen gdk_display_get_screen;
alias c_gdk_display_get_window_at_pointer gdk_display_get_window_at_pointer;
alias c_gdk_display_has_pending gdk_display_has_pending;
alias c_gdk_display_is_closed gdk_display_is_closed;
alias c_gdk_display_keyboard_ungrab gdk_display_keyboard_ungrab;
alias c_gdk_display_list_devices gdk_display_list_devices;
alias c_gdk_display_notify_startup_complete gdk_display_notify_startup_complete;
alias c_gdk_display_peek_event gdk_display_peek_event;
alias c_gdk_display_pointer_is_grabbed gdk_display_pointer_is_grabbed;
alias c_gdk_display_pointer_ungrab gdk_display_pointer_ungrab;
alias c_gdk_display_put_event gdk_display_put_event;
alias c_gdk_display_request_selection_notification gdk_display_request_selection_notification;
alias c_gdk_display_set_double_click_distance gdk_display_set_double_click_distance;
alias c_gdk_display_set_double_click_time gdk_display_set_double_click_time;
alias c_gdk_display_store_clipboard gdk_display_store_clipboard;
alias c_gdk_display_supports_clipboard_persistence gdk_display_supports_clipboard_persistence;
alias c_gdk_display_supports_composite gdk_display_supports_composite;
alias c_gdk_display_supports_cursor_alpha gdk_display_supports_cursor_alpha;
alias c_gdk_display_supports_cursor_color gdk_display_supports_cursor_color;
alias c_gdk_display_supports_input_shapes gdk_display_supports_input_shapes;
alias c_gdk_display_supports_selection_notification gdk_display_supports_selection_notification;
alias c_gdk_display_supports_shapes gdk_display_supports_shapes;
alias c_gdk_display_sync gdk_display_sync;
alias c_gdk_display_warp_pointer gdk_display_warp_pointer;

// gdk.DisplayManager

alias c_gdk_display_manager_get_type gdk_display_manager_get_type;
alias c_gdk_display_manager_get gdk_display_manager_get;
alias c_gdk_display_manager_get_default_display gdk_display_manager_get_default_display;
alias c_gdk_display_manager_list_displays gdk_display_manager_list_displays;
alias c_gdk_display_manager_open_display gdk_display_manager_open_display;
alias c_gdk_display_manager_set_default_display gdk_display_manager_set_default_display;

// gdk.DragContext

alias c_gdk_drag_context_get_type gdk_drag_context_get_type;
alias c_gdk_drag_context_get_actions gdk_drag_context_get_actions;
alias c_gdk_drag_context_get_dest_window gdk_drag_context_get_dest_window;
alias c_gdk_drag_context_get_device gdk_drag_context_get_device;
alias c_gdk_drag_context_get_protocol gdk_drag_context_get_protocol;
alias c_gdk_drag_context_get_selected_action gdk_drag_context_get_selected_action;
alias c_gdk_drag_context_get_source_window gdk_drag_context_get_source_window;
alias c_gdk_drag_context_get_suggested_action gdk_drag_context_get_suggested_action;
alias c_gdk_drag_context_list_targets gdk_drag_context_list_targets;
alias c_gdk_drag_context_set_device gdk_drag_context_set_device;
alias c_gdk_drag_abort gdk_drag_abort;
alias c_gdk_drag_begin gdk_drag_begin;
alias c_gdk_drag_begin_for_device gdk_drag_begin_for_device;
alias c_gdk_drag_drop gdk_drag_drop;
alias c_gdk_drag_drop_succeeded gdk_drag_drop_succeeded;
alias c_gdk_drag_find_window_for_screen gdk_drag_find_window_for_screen;
alias c_gdk_drag_get_selection gdk_drag_get_selection;
alias c_gdk_drag_motion gdk_drag_motion;
alias c_gdk_drag_status gdk_drag_status;
alias c_gdk_drop_finish gdk_drop_finish;
alias c_gdk_drop_reply gdk_drop_reply;

// gdk.Event

alias c_gdk_event_get_type gdk_event_get_type;
alias c_gdk_event_new gdk_event_new;
alias c_gdk_events_get_angle gdk_events_get_angle;
alias c_gdk_events_get_center gdk_events_get_center;
alias c_gdk_events_get_distance gdk_events_get_distance;
alias c_gdk_event_copy gdk_event_copy;
alias c_gdk_event_free gdk_event_free;
alias c_gdk_event_get_axis gdk_event_get_axis;
alias c_gdk_event_get_button gdk_event_get_button;
alias c_gdk_event_get_click_count gdk_event_get_click_count;
alias c_gdk_event_get_coords gdk_event_get_coords;
alias c_gdk_event_get_device gdk_event_get_device;
alias c_gdk_event_get_event_sequence gdk_event_get_event_sequence;
alias c_gdk_event_get_event_type gdk_event_get_event_type;
alias c_gdk_event_get_keycode gdk_event_get_keycode;
alias c_gdk_event_get_keyval gdk_event_get_keyval;
alias c_gdk_event_get_root_coords gdk_event_get_root_coords;
alias c_gdk_event_get_screen gdk_event_get_screen;
alias c_gdk_event_get_scroll_deltas gdk_event_get_scroll_deltas;
alias c_gdk_event_get_scroll_direction gdk_event_get_scroll_direction;
alias c_gdk_event_get_source_device gdk_event_get_source_device;
alias c_gdk_event_get_state gdk_event_get_state;
alias c_gdk_event_get_time gdk_event_get_time;
alias c_gdk_event_get_window gdk_event_get_window;
alias c_gdk_event_put gdk_event_put;
alias c_gdk_event_set_device gdk_event_set_device;
alias c_gdk_event_set_screen gdk_event_set_screen;
alias c_gdk_event_set_source_device gdk_event_set_source_device;
alias c_gdk_event_triggers_context_menu gdk_event_triggers_context_menu;
alias c_gdk_event_get gdk_event_get;
alias c_gdk_event_handler_set gdk_event_handler_set;
alias c_gdk_event_peek gdk_event_peek;
alias c_gdk_event_request_motions gdk_event_request_motions;
alias c_gdk_events_pending gdk_events_pending;
alias c_gdk_get_show_events gdk_get_show_events;
alias c_gdk_set_show_events gdk_set_show_events;
alias c_gdk_setting_get gdk_setting_get;

// gdk.EventSequence

alias c_gdk_event_sequence_get_type gdk_event_sequence_get_type;

// gdk.FrameClock

alias c_gdk_frame_clock_get_type gdk_frame_clock_get_type;
alias c_gdk_frame_clock_begin_updating gdk_frame_clock_begin_updating;
alias c_gdk_frame_clock_end_updating gdk_frame_clock_end_updating;
alias c_gdk_frame_clock_get_current_timings gdk_frame_clock_get_current_timings;
alias c_gdk_frame_clock_get_frame_counter gdk_frame_clock_get_frame_counter;
alias c_gdk_frame_clock_get_frame_time gdk_frame_clock_get_frame_time;
alias c_gdk_frame_clock_get_history_start gdk_frame_clock_get_history_start;
alias c_gdk_frame_clock_get_refresh_info gdk_frame_clock_get_refresh_info;
alias c_gdk_frame_clock_get_timings gdk_frame_clock_get_timings;
alias c_gdk_frame_clock_request_phase gdk_frame_clock_request_phase;

// gdk.FrameTimings

alias c_gdk_frame_timings_get_type gdk_frame_timings_get_type;
alias c_gdk_frame_timings_get_complete gdk_frame_timings_get_complete;
alias c_gdk_frame_timings_get_frame_counter gdk_frame_timings_get_frame_counter;
alias c_gdk_frame_timings_get_frame_time gdk_frame_timings_get_frame_time;
alias c_gdk_frame_timings_get_predicted_presentation_time gdk_frame_timings_get_predicted_presentation_time;
alias c_gdk_frame_timings_get_presentation_time gdk_frame_timings_get_presentation_time;
alias c_gdk_frame_timings_get_refresh_interval gdk_frame_timings_get_refresh_interval;
alias c_gdk_frame_timings_ref gdk_frame_timings_ref;
alias c_gdk_frame_timings_unref gdk_frame_timings_unref;

// gdk.GLContext

alias c_gdk_gl_context_get_type gdk_gl_context_get_type;
alias c_gdk_gl_context_clear_current gdk_gl_context_clear_current;
alias c_gdk_gl_context_get_current gdk_gl_context_get_current;
alias c_gdk_gl_context_get_debug_enabled gdk_gl_context_get_debug_enabled;
alias c_gdk_gl_context_get_display gdk_gl_context_get_display;
alias c_gdk_gl_context_get_forward_compatible gdk_gl_context_get_forward_compatible;
alias c_gdk_gl_context_get_required_version gdk_gl_context_get_required_version;
alias c_gdk_gl_context_get_shared_context gdk_gl_context_get_shared_context;
alias c_gdk_gl_context_get_version gdk_gl_context_get_version;
alias c_gdk_gl_context_get_window gdk_gl_context_get_window;
alias c_gdk_gl_context_make_current gdk_gl_context_make_current;
alias c_gdk_gl_context_realize gdk_gl_context_realize;
alias c_gdk_gl_context_set_debug_enabled gdk_gl_context_set_debug_enabled;
alias c_gdk_gl_context_set_forward_compatible gdk_gl_context_set_forward_compatible;
alias c_gdk_gl_context_set_required_version gdk_gl_context_set_required_version;

// gdk.Keymap

alias c_gdk_keymap_get_type gdk_keymap_get_type;
alias c_gdk_keymap_get_default gdk_keymap_get_default;
alias c_gdk_keymap_get_for_display gdk_keymap_get_for_display;
alias c_gdk_keymap_add_virtual_modifiers gdk_keymap_add_virtual_modifiers;
alias c_gdk_keymap_get_caps_lock_state gdk_keymap_get_caps_lock_state;
alias c_gdk_keymap_get_direction gdk_keymap_get_direction;
alias c_gdk_keymap_get_entries_for_keycode gdk_keymap_get_entries_for_keycode;
alias c_gdk_keymap_get_entries_for_keyval gdk_keymap_get_entries_for_keyval;
alias c_gdk_keymap_get_modifier_mask gdk_keymap_get_modifier_mask;
alias c_gdk_keymap_get_modifier_state gdk_keymap_get_modifier_state;
alias c_gdk_keymap_get_num_lock_state gdk_keymap_get_num_lock_state;
alias c_gdk_keymap_get_scroll_lock_state gdk_keymap_get_scroll_lock_state;
alias c_gdk_keymap_have_bidi_layouts gdk_keymap_have_bidi_layouts;
alias c_gdk_keymap_lookup_key gdk_keymap_lookup_key;
alias c_gdk_keymap_map_virtual_modifiers gdk_keymap_map_virtual_modifiers;
alias c_gdk_keymap_translate_keyboard_state gdk_keymap_translate_keyboard_state;
alias c_gdk_keyval_convert_case gdk_keyval_convert_case;
alias c_gdk_keyval_from_name gdk_keyval_from_name;
alias c_gdk_keyval_is_lower gdk_keyval_is_lower;
alias c_gdk_keyval_is_upper gdk_keyval_is_upper;
alias c_gdk_keyval_name gdk_keyval_name;
alias c_gdk_keyval_to_lower gdk_keyval_to_lower;
alias c_gdk_keyval_to_unicode gdk_keyval_to_unicode;
alias c_gdk_keyval_to_upper gdk_keyval_to_upper;
alias c_gdk_unicode_to_keyval gdk_unicode_to_keyval;

// gdk.RGBA

alias c_gdk_rgba_get_type gdk_rgba_get_type;
alias c_gdk_rgba_copy gdk_rgba_copy;
alias c_gdk_rgba_equal gdk_rgba_equal;
alias c_gdk_rgba_free gdk_rgba_free;
alias c_gdk_rgba_hash gdk_rgba_hash;
alias c_gdk_rgba_parse gdk_rgba_parse;
alias c_gdk_rgba_to_string gdk_rgba_to_string;

// gdk.Rectangle

alias c_gdk_rectangle_get_type gdk_rectangle_get_type;
alias c_gdk_rectangle_intersect gdk_rectangle_intersect;
alias c_gdk_rectangle_union gdk_rectangle_union;

// gdk.Screen

alias c_gdk_screen_get_type gdk_screen_get_type;
alias c_gdk_screen_get_default gdk_screen_get_default;
alias c_gdk_screen_height gdk_screen_height;
alias c_gdk_screen_height_mm gdk_screen_height_mm;
alias c_gdk_screen_width gdk_screen_width;
alias c_gdk_screen_width_mm gdk_screen_width_mm;
alias c_gdk_screen_get_active_window gdk_screen_get_active_window;
alias c_gdk_screen_get_display gdk_screen_get_display;
alias c_gdk_screen_get_font_options gdk_screen_get_font_options;
alias c_gdk_screen_get_height gdk_screen_get_height;
alias c_gdk_screen_get_height_mm gdk_screen_get_height_mm;
alias c_gdk_screen_get_monitor_at_point gdk_screen_get_monitor_at_point;
alias c_gdk_screen_get_monitor_at_window gdk_screen_get_monitor_at_window;
alias c_gdk_screen_get_monitor_geometry gdk_screen_get_monitor_geometry;
alias c_gdk_screen_get_monitor_height_mm gdk_screen_get_monitor_height_mm;
alias c_gdk_screen_get_monitor_plug_name gdk_screen_get_monitor_plug_name;
alias c_gdk_screen_get_monitor_scale_factor gdk_screen_get_monitor_scale_factor;
alias c_gdk_screen_get_monitor_width_mm gdk_screen_get_monitor_width_mm;
alias c_gdk_screen_get_monitor_workarea gdk_screen_get_monitor_workarea;
alias c_gdk_screen_get_n_monitors gdk_screen_get_n_monitors;
alias c_gdk_screen_get_number gdk_screen_get_number;
alias c_gdk_screen_get_primary_monitor gdk_screen_get_primary_monitor;
alias c_gdk_screen_get_resolution gdk_screen_get_resolution;
alias c_gdk_screen_get_rgba_visual gdk_screen_get_rgba_visual;
alias c_gdk_screen_get_root_window gdk_screen_get_root_window;
alias c_gdk_screen_get_setting gdk_screen_get_setting;
alias c_gdk_screen_get_system_visual gdk_screen_get_system_visual;
alias c_gdk_screen_get_toplevel_windows gdk_screen_get_toplevel_windows;
alias c_gdk_screen_get_width gdk_screen_get_width;
alias c_gdk_screen_get_width_mm gdk_screen_get_width_mm;
alias c_gdk_screen_get_window_stack gdk_screen_get_window_stack;
alias c_gdk_screen_is_composited gdk_screen_is_composited;
alias c_gdk_screen_list_visuals gdk_screen_list_visuals;
alias c_gdk_screen_make_display_name gdk_screen_make_display_name;
alias c_gdk_screen_set_font_options gdk_screen_set_font_options;
alias c_gdk_screen_set_resolution gdk_screen_set_resolution;

// gdk.Visual

alias c_gdk_visual_get_type gdk_visual_get_type;
alias c_gdk_visual_get_best gdk_visual_get_best;
alias c_gdk_visual_get_best_depth gdk_visual_get_best_depth;
alias c_gdk_visual_get_best_type gdk_visual_get_best_type;
alias c_gdk_visual_get_best_with_both gdk_visual_get_best_with_both;
alias c_gdk_visual_get_best_with_depth gdk_visual_get_best_with_depth;
alias c_gdk_visual_get_best_with_type gdk_visual_get_best_with_type;
alias c_gdk_visual_get_system gdk_visual_get_system;
alias c_gdk_visual_get_bits_per_rgb gdk_visual_get_bits_per_rgb;
alias c_gdk_visual_get_blue_pixel_details gdk_visual_get_blue_pixel_details;
alias c_gdk_visual_get_byte_order gdk_visual_get_byte_order;
alias c_gdk_visual_get_colormap_size gdk_visual_get_colormap_size;
alias c_gdk_visual_get_depth gdk_visual_get_depth;
alias c_gdk_visual_get_green_pixel_details gdk_visual_get_green_pixel_details;
alias c_gdk_visual_get_red_pixel_details gdk_visual_get_red_pixel_details;
alias c_gdk_visual_get_screen gdk_visual_get_screen;
alias c_gdk_visual_get_visual_type gdk_visual_get_visual_type;
alias c_gdk_list_visuals gdk_list_visuals;
alias c_gdk_query_depths gdk_query_depths;
alias c_gdk_query_visual_types gdk_query_visual_types;

// gdk.Window

alias c_gdk_window_get_type gdk_window_get_type;
alias c_gdk_window_new gdk_window_new;
alias c_gdk_window_at_pointer gdk_window_at_pointer;
alias c_gdk_window_constrain_size gdk_window_constrain_size;
alias c_gdk_window_process_all_updates gdk_window_process_all_updates;
alias c_gdk_window_set_debug_updates gdk_window_set_debug_updates;
alias c_gdk_window_add_filter gdk_window_add_filter;
alias c_gdk_window_beep gdk_window_beep;
alias c_gdk_window_begin_move_drag gdk_window_begin_move_drag;
alias c_gdk_window_begin_move_drag_for_device gdk_window_begin_move_drag_for_device;
alias c_gdk_window_begin_paint_rect gdk_window_begin_paint_rect;
alias c_gdk_window_begin_paint_region gdk_window_begin_paint_region;
alias c_gdk_window_begin_resize_drag gdk_window_begin_resize_drag;
alias c_gdk_window_begin_resize_drag_for_device gdk_window_begin_resize_drag_for_device;
alias c_gdk_window_configure_finished gdk_window_configure_finished;
alias c_gdk_window_coords_from_parent gdk_window_coords_from_parent;
alias c_gdk_window_coords_to_parent gdk_window_coords_to_parent;
alias c_gdk_window_create_gl_context gdk_window_create_gl_context;
alias c_gdk_window_create_similar_image_surface gdk_window_create_similar_image_surface;
alias c_gdk_window_create_similar_surface gdk_window_create_similar_surface;
alias c_gdk_window_deiconify gdk_window_deiconify;
alias c_gdk_window_destroy gdk_window_destroy;
alias c_gdk_window_destroy_notify gdk_window_destroy_notify;
alias c_gdk_window_enable_synchronized_configure gdk_window_enable_synchronized_configure;
alias c_gdk_window_end_paint gdk_window_end_paint;
alias c_gdk_window_ensure_native gdk_window_ensure_native;
alias c_gdk_window_flush gdk_window_flush;
alias c_gdk_window_focus gdk_window_focus;
alias c_gdk_window_freeze_toplevel_updates_libgtk_only gdk_window_freeze_toplevel_updates_libgtk_only;
alias c_gdk_window_freeze_updates gdk_window_freeze_updates;
alias c_gdk_window_fullscreen gdk_window_fullscreen;
alias c_gdk_window_fullscreen_on_monitor gdk_window_fullscreen_on_monitor;
alias c_gdk_window_geometry_changed gdk_window_geometry_changed;
alias c_gdk_window_get_accept_focus gdk_window_get_accept_focus;
alias c_gdk_window_get_background_pattern gdk_window_get_background_pattern;
alias c_gdk_window_get_children gdk_window_get_children;
alias c_gdk_window_get_children_with_user_data gdk_window_get_children_with_user_data;
alias c_gdk_window_get_clip_region gdk_window_get_clip_region;
alias c_gdk_window_get_composited gdk_window_get_composited;
alias c_gdk_window_get_cursor gdk_window_get_cursor;
alias c_gdk_window_get_decorations gdk_window_get_decorations;
alias c_gdk_window_get_device_cursor gdk_window_get_device_cursor;
alias c_gdk_window_get_device_events gdk_window_get_device_events;
alias c_gdk_window_get_device_position gdk_window_get_device_position;
alias c_gdk_window_get_device_position_double gdk_window_get_device_position_double;
alias c_gdk_window_get_display gdk_window_get_display;
alias c_gdk_window_get_drag_protocol gdk_window_get_drag_protocol;
alias c_gdk_window_get_effective_parent gdk_window_get_effective_parent;
alias c_gdk_window_get_effective_toplevel gdk_window_get_effective_toplevel;
alias c_gdk_window_get_event_compression gdk_window_get_event_compression;
alias c_gdk_window_get_events gdk_window_get_events;
alias c_gdk_window_get_focus_on_map gdk_window_get_focus_on_map;
alias c_gdk_window_get_frame_clock gdk_window_get_frame_clock;
alias c_gdk_window_get_frame_extents gdk_window_get_frame_extents;
alias c_gdk_window_get_fullscreen_mode gdk_window_get_fullscreen_mode;
alias c_gdk_window_get_geometry gdk_window_get_geometry;
alias c_gdk_window_get_group gdk_window_get_group;
alias c_gdk_window_get_height gdk_window_get_height;
alias c_gdk_window_get_modal_hint gdk_window_get_modal_hint;
alias c_gdk_window_get_origin gdk_window_get_origin;
alias c_gdk_window_get_parent gdk_window_get_parent;
alias c_gdk_window_get_pass_through gdk_window_get_pass_through;
alias c_gdk_window_get_pointer gdk_window_get_pointer;
alias c_gdk_window_get_position gdk_window_get_position;
alias c_gdk_window_get_root_coords gdk_window_get_root_coords;
alias c_gdk_window_get_root_origin gdk_window_get_root_origin;
alias c_gdk_window_get_scale_factor gdk_window_get_scale_factor;
alias c_gdk_window_get_screen gdk_window_get_screen;
alias c_gdk_window_get_source_events gdk_window_get_source_events;
alias c_gdk_window_get_state gdk_window_get_state;
alias c_gdk_window_get_support_multidevice gdk_window_get_support_multidevice;
alias c_gdk_window_get_toplevel gdk_window_get_toplevel;
alias c_gdk_window_get_type_hint gdk_window_get_type_hint;
alias c_gdk_window_get_update_area gdk_window_get_update_area;
alias c_gdk_window_get_user_data gdk_window_get_user_data;
alias c_gdk_window_get_visible_region gdk_window_get_visible_region;
alias c_gdk_window_get_visual gdk_window_get_visual;
alias c_gdk_window_get_width gdk_window_get_width;
alias c_gdk_window_get_window_type gdk_window_get_window_type;
alias c_gdk_window_has_native gdk_window_has_native;
alias c_gdk_window_hide gdk_window_hide;
alias c_gdk_window_iconify gdk_window_iconify;
alias c_gdk_window_input_shape_combine_region gdk_window_input_shape_combine_region;
alias c_gdk_window_invalidate_maybe_recurse gdk_window_invalidate_maybe_recurse;
alias c_gdk_window_invalidate_rect gdk_window_invalidate_rect;
alias c_gdk_window_invalidate_region gdk_window_invalidate_region;
alias c_gdk_window_is_destroyed gdk_window_is_destroyed;
alias c_gdk_window_is_input_only gdk_window_is_input_only;
alias c_gdk_window_is_shaped gdk_window_is_shaped;
alias c_gdk_window_is_viewable gdk_window_is_viewable;
alias c_gdk_window_is_visible gdk_window_is_visible;
alias c_gdk_window_lower gdk_window_lower;
alias c_gdk_window_mark_paint_from_clip gdk_window_mark_paint_from_clip;
alias c_gdk_window_maximize gdk_window_maximize;
alias c_gdk_window_merge_child_input_shapes gdk_window_merge_child_input_shapes;
alias c_gdk_window_merge_child_shapes gdk_window_merge_child_shapes;
alias c_gdk_window_move gdk_window_move;
alias c_gdk_window_move_region gdk_window_move_region;
alias c_gdk_window_move_resize gdk_window_move_resize;
alias c_gdk_window_peek_children gdk_window_peek_children;
alias c_gdk_window_process_updates gdk_window_process_updates;
alias c_gdk_window_raise gdk_window_raise;
alias c_gdk_window_register_dnd gdk_window_register_dnd;
alias c_gdk_window_remove_filter gdk_window_remove_filter;
alias c_gdk_window_reparent gdk_window_reparent;
alias c_gdk_window_resize gdk_window_resize;
alias c_gdk_window_restack gdk_window_restack;
alias c_gdk_window_scroll gdk_window_scroll;
alias c_gdk_window_set_accept_focus gdk_window_set_accept_focus;
alias c_gdk_window_set_background gdk_window_set_background;
alias c_gdk_window_set_background_pattern gdk_window_set_background_pattern;
alias c_gdk_window_set_background_rgba gdk_window_set_background_rgba;
alias c_gdk_window_set_child_input_shapes gdk_window_set_child_input_shapes;
alias c_gdk_window_set_child_shapes gdk_window_set_child_shapes;
alias c_gdk_window_set_composited gdk_window_set_composited;
alias c_gdk_window_set_cursor gdk_window_set_cursor;
alias c_gdk_window_set_decorations gdk_window_set_decorations;
alias c_gdk_window_set_device_cursor gdk_window_set_device_cursor;
alias c_gdk_window_set_device_events gdk_window_set_device_events;
alias c_gdk_window_set_event_compression gdk_window_set_event_compression;
alias c_gdk_window_set_events gdk_window_set_events;
alias c_gdk_window_set_focus_on_map gdk_window_set_focus_on_map;
alias c_gdk_window_set_fullscreen_mode gdk_window_set_fullscreen_mode;
alias c_gdk_window_set_functions gdk_window_set_functions;
alias c_gdk_window_set_geometry_hints gdk_window_set_geometry_hints;
alias c_gdk_window_set_group gdk_window_set_group;
alias c_gdk_window_set_icon_list gdk_window_set_icon_list;
alias c_gdk_window_set_icon_name gdk_window_set_icon_name;
alias c_gdk_window_set_invalidate_handler gdk_window_set_invalidate_handler;
alias c_gdk_window_set_keep_above gdk_window_set_keep_above;
alias c_gdk_window_set_keep_below gdk_window_set_keep_below;
alias c_gdk_window_set_modal_hint gdk_window_set_modal_hint;
alias c_gdk_window_set_opacity gdk_window_set_opacity;
alias c_gdk_window_set_opaque_region gdk_window_set_opaque_region;
alias c_gdk_window_set_override_redirect gdk_window_set_override_redirect;
alias c_gdk_window_set_pass_through gdk_window_set_pass_through;
alias c_gdk_window_set_role gdk_window_set_role;
alias c_gdk_window_set_shadow_width gdk_window_set_shadow_width;
alias c_gdk_window_set_skip_pager_hint gdk_window_set_skip_pager_hint;
alias c_gdk_window_set_skip_taskbar_hint gdk_window_set_skip_taskbar_hint;
alias c_gdk_window_set_source_events gdk_window_set_source_events;
alias c_gdk_window_set_startup_id gdk_window_set_startup_id;
alias c_gdk_window_set_static_gravities gdk_window_set_static_gravities;
alias c_gdk_window_set_support_multidevice gdk_window_set_support_multidevice;
alias c_gdk_window_set_title gdk_window_set_title;
alias c_gdk_window_set_transient_for gdk_window_set_transient_for;
alias c_gdk_window_set_type_hint gdk_window_set_type_hint;
alias c_gdk_window_set_urgency_hint gdk_window_set_urgency_hint;
alias c_gdk_window_set_user_data gdk_window_set_user_data;
alias c_gdk_window_shape_combine_region gdk_window_shape_combine_region;
alias c_gdk_window_show gdk_window_show;
alias c_gdk_window_show_unraised gdk_window_show_unraised;
alias c_gdk_window_show_window_menu gdk_window_show_window_menu;
alias c_gdk_window_stick gdk_window_stick;
alias c_gdk_window_thaw_toplevel_updates_libgtk_only gdk_window_thaw_toplevel_updates_libgtk_only;
alias c_gdk_window_thaw_updates gdk_window_thaw_updates;
alias c_gdk_window_unfullscreen gdk_window_unfullscreen;
alias c_gdk_window_unmaximize gdk_window_unmaximize;
alias c_gdk_window_unstick gdk_window_unstick;
alias c_gdk_window_withdraw gdk_window_withdraw;
alias c_gdk_get_default_root_window gdk_get_default_root_window;
alias c_gdk_offscreen_window_get_embedder gdk_offscreen_window_get_embedder;
alias c_gdk_offscreen_window_get_surface gdk_offscreen_window_get_surface;
alias c_gdk_offscreen_window_set_embedder gdk_offscreen_window_set_embedder;

// gdk.X11

alias c_gdk_x11_window_get_type gdk_x11_window_get_type;
alias c_gdk_x11_window_foreign_new_for_display gdk_x11_window_foreign_new_for_display;
alias c_gdk_x11_window_lookup_for_display gdk_x11_window_lookup_for_display;
alias c_gdk_x11_window_get_desktop gdk_x11_window_get_desktop;
alias c_gdk_x11_window_get_xid gdk_x11_window_get_xid;
alias c_gdk_x11_window_move_to_current_desktop gdk_x11_window_move_to_current_desktop;
alias c_gdk_x11_window_move_to_desktop gdk_x11_window_move_to_desktop;
alias c_gdk_x11_window_set_frame_extents gdk_x11_window_set_frame_extents;
alias c_gdk_x11_window_set_frame_sync_enabled gdk_x11_window_set_frame_sync_enabled;
alias c_gdk_x11_window_set_hide_titlebar_when_maximized gdk_x11_window_set_hide_titlebar_when_maximized;
alias c_gdk_x11_window_set_theme_variant gdk_x11_window_set_theme_variant;
alias c_gdk_x11_window_set_user_time gdk_x11_window_set_user_time;
alias c_gdk_x11_window_set_utf8_property gdk_x11_window_set_utf8_property;

// gdk.Cairo

alias c_gdk_cairo_create gdk_cairo_create;
alias c_gdk_cairo_draw_from_gl gdk_cairo_draw_from_gl;
alias c_gdk_cairo_get_clip_rectangle gdk_cairo_get_clip_rectangle;
alias c_gdk_cairo_rectangle gdk_cairo_rectangle;
alias c_gdk_cairo_region gdk_cairo_region;
alias c_gdk_cairo_region_create_from_surface gdk_cairo_region_create_from_surface;
alias c_gdk_cairo_set_source_color gdk_cairo_set_source_color;
alias c_gdk_cairo_set_source_pixbuf gdk_cairo_set_source_pixbuf;
alias c_gdk_cairo_set_source_rgba gdk_cairo_set_source_rgba;
alias c_gdk_cairo_set_source_window gdk_cairo_set_source_window;
alias c_gdk_cairo_surface_create_from_pixbuf gdk_cairo_surface_create_from_pixbuf;

// gdk.Pango

alias c_gdk_pango_context_get gdk_pango_context_get;
alias c_gdk_pango_context_get_for_screen gdk_pango_context_get_for_screen;
alias c_gdk_pango_layout_get_clip_region gdk_pango_layout_get_clip_region;
alias c_gdk_pango_layout_line_get_clip_region gdk_pango_layout_line_get_clip_region;

// gdk.Pixbuf

alias c_gdk_pixbuf_get_from_surface gdk_pixbuf_get_from_surface;
alias c_gdk_pixbuf_get_from_window gdk_pixbuf_get_from_window;

// gdk.Threads

alias c_gdk_threads_add_idle gdk_threads_add_idle;
alias c_gdk_threads_add_idle_full gdk_threads_add_idle_full;
alias c_gdk_threads_add_timeout gdk_threads_add_timeout;
alias c_gdk_threads_add_timeout_full gdk_threads_add_timeout_full;
alias c_gdk_threads_add_timeout_seconds gdk_threads_add_timeout_seconds;
alias c_gdk_threads_add_timeout_seconds_full gdk_threads_add_timeout_seconds_full;
alias c_gdk_threads_enter gdk_threads_enter;
alias c_gdk_threads_init gdk_threads_init;
alias c_gdk_threads_leave gdk_threads_leave;
alias c_gdk_threads_set_lock_functions gdk_threads_set_lock_functions;

// gdk.Gdk

alias c_gdk_beep gdk_beep;
alias c_gdk_error_trap_pop gdk_error_trap_pop;
alias c_gdk_error_trap_pop_ignored gdk_error_trap_pop_ignored;
alias c_gdk_error_trap_push gdk_error_trap_push;
alias c_gdk_flush gdk_flush;
alias c_gdk_get_display gdk_get_display;
alias c_gdk_get_display_arg_name gdk_get_display_arg_name;
alias c_gdk_get_program_class gdk_get_program_class;
alias c_gdk_init gdk_init;
alias c_gdk_init_check gdk_init_check;
alias c_gdk_keyboard_grab gdk_keyboard_grab;
alias c_gdk_keyboard_ungrab gdk_keyboard_ungrab;
alias c_gdk_notify_startup_complete gdk_notify_startup_complete;
alias c_gdk_notify_startup_complete_with_id gdk_notify_startup_complete_with_id;
alias c_gdk_parse_args gdk_parse_args;
alias c_gdk_pointer_grab gdk_pointer_grab;
alias c_gdk_pointer_is_grabbed gdk_pointer_is_grabbed;
alias c_gdk_pointer_ungrab gdk_pointer_ungrab;
alias c_gdk_set_allowed_backends gdk_set_allowed_backends;
alias c_gdk_set_double_click_time gdk_set_double_click_time;
alias c_gdk_set_program_class gdk_set_program_class;

// gdk.Selection

alias c_gdk_selection_convert gdk_selection_convert;
alias c_gdk_selection_owner_get gdk_selection_owner_get;
alias c_gdk_selection_owner_get_for_display gdk_selection_owner_get_for_display;
alias c_gdk_selection_owner_set gdk_selection_owner_set;
alias c_gdk_selection_owner_set_for_display gdk_selection_owner_set_for_display;
alias c_gdk_selection_property_get gdk_selection_property_get;
alias c_gdk_selection_send_notify gdk_selection_send_notify;
alias c_gdk_selection_send_notify_for_display gdk_selection_send_notify_for_display;

// gdk.Testing

alias c_gdk_test_render_sync gdk_test_render_sync;
alias c_gdk_test_simulate_button gdk_test_simulate_button;
alias c_gdk_test_simulate_key gdk_test_simulate_key;
