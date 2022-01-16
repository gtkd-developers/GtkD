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


module gdk.c.functions;

import std.stdio;
import gdk.c.types;
import cairo.c.types;
import linker.Loader;

version (Windows)
	static immutable LIBRARY_GDK = ["libgtk-4-1.dll;gtk-4-4.1.dll;gtk-4.dll"];
else version (OSX)
	static immutable LIBRARY_GDK = ["libgtk-4.1.dylib"];
else
	static immutable LIBRARY_GDK = ["libgtk-4.so.1"];

shared static this()
{
	// gdk.AppLaunchContext

	Linker.link(gdk_app_launch_context_get_type, "gdk_app_launch_context_get_type", LIBRARY_GDK);
	Linker.link(gdk_app_launch_context_get_display, "gdk_app_launch_context_get_display", LIBRARY_GDK);
	Linker.link(gdk_app_launch_context_set_desktop, "gdk_app_launch_context_set_desktop", LIBRARY_GDK);
	Linker.link(gdk_app_launch_context_set_icon, "gdk_app_launch_context_set_icon", LIBRARY_GDK);
	Linker.link(gdk_app_launch_context_set_icon_name, "gdk_app_launch_context_set_icon_name", LIBRARY_GDK);
	Linker.link(gdk_app_launch_context_set_timestamp, "gdk_app_launch_context_set_timestamp", LIBRARY_GDK);

	// gdk.ButtonEvent

	Linker.link(gdk_button_event_get_type, "gdk_button_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_button_event_get_button, "gdk_button_event_get_button", LIBRARY_GDK);

	// gdk.CairoContext

	Linker.link(gdk_cairo_context_get_type, "gdk_cairo_context_get_type", LIBRARY_GDK);
	Linker.link(gdk_cairo_context_cairo_create, "gdk_cairo_context_cairo_create", LIBRARY_GDK);

	// gdk.Clipboard

	Linker.link(gdk_clipboard_get_type, "gdk_clipboard_get_type", LIBRARY_GDK);
	Linker.link(gdk_clipboard_get_content, "gdk_clipboard_get_content", LIBRARY_GDK);
	Linker.link(gdk_clipboard_get_display, "gdk_clipboard_get_display", LIBRARY_GDK);
	Linker.link(gdk_clipboard_get_formats, "gdk_clipboard_get_formats", LIBRARY_GDK);
	Linker.link(gdk_clipboard_is_local, "gdk_clipboard_is_local", LIBRARY_GDK);
	Linker.link(gdk_clipboard_read_async, "gdk_clipboard_read_async", LIBRARY_GDK);
	Linker.link(gdk_clipboard_read_finish, "gdk_clipboard_read_finish", LIBRARY_GDK);
	Linker.link(gdk_clipboard_read_text_async, "gdk_clipboard_read_text_async", LIBRARY_GDK);
	Linker.link(gdk_clipboard_read_text_finish, "gdk_clipboard_read_text_finish", LIBRARY_GDK);
	Linker.link(gdk_clipboard_read_texture_async, "gdk_clipboard_read_texture_async", LIBRARY_GDK);
	Linker.link(gdk_clipboard_read_texture_finish, "gdk_clipboard_read_texture_finish", LIBRARY_GDK);
	Linker.link(gdk_clipboard_read_value_async, "gdk_clipboard_read_value_async", LIBRARY_GDK);
	Linker.link(gdk_clipboard_read_value_finish, "gdk_clipboard_read_value_finish", LIBRARY_GDK);
	Linker.link(gdk_clipboard_set, "gdk_clipboard_set", LIBRARY_GDK);
	Linker.link(gdk_clipboard_set_content, "gdk_clipboard_set_content", LIBRARY_GDK);
	Linker.link(gdk_clipboard_set_text, "gdk_clipboard_set_text", LIBRARY_GDK);
	Linker.link(gdk_clipboard_set_texture, "gdk_clipboard_set_texture", LIBRARY_GDK);
	Linker.link(gdk_clipboard_set_valist, "gdk_clipboard_set_valist", LIBRARY_GDK);
	Linker.link(gdk_clipboard_set_value, "gdk_clipboard_set_value", LIBRARY_GDK);
	Linker.link(gdk_clipboard_store_async, "gdk_clipboard_store_async", LIBRARY_GDK);
	Linker.link(gdk_clipboard_store_finish, "gdk_clipboard_store_finish", LIBRARY_GDK);

	// gdk.ContentDeserializer

	Linker.link(gdk_content_deserializer_get_type, "gdk_content_deserializer_get_type", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_get_cancellable, "gdk_content_deserializer_get_cancellable", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_get_gtype, "gdk_content_deserializer_get_gtype", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_get_input_stream, "gdk_content_deserializer_get_input_stream", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_get_mime_type, "gdk_content_deserializer_get_mime_type", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_get_priority, "gdk_content_deserializer_get_priority", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_get_task_data, "gdk_content_deserializer_get_task_data", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_get_user_data, "gdk_content_deserializer_get_user_data", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_get_value, "gdk_content_deserializer_get_value", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_return_error, "gdk_content_deserializer_return_error", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_return_success, "gdk_content_deserializer_return_success", LIBRARY_GDK);
	Linker.link(gdk_content_deserializer_set_task_data, "gdk_content_deserializer_set_task_data", LIBRARY_GDK);

	// gdk.ContentFormats

	Linker.link(gdk_content_formats_get_type, "gdk_content_formats_get_type", LIBRARY_GDK);
	Linker.link(gdk_content_formats_new, "gdk_content_formats_new", LIBRARY_GDK);
	Linker.link(gdk_content_formats_new_for_gtype, "gdk_content_formats_new_for_gtype", LIBRARY_GDK);
	Linker.link(gdk_content_formats_contain_gtype, "gdk_content_formats_contain_gtype", LIBRARY_GDK);
	Linker.link(gdk_content_formats_contain_mime_type, "gdk_content_formats_contain_mime_type", LIBRARY_GDK);
	Linker.link(gdk_content_formats_get_gtypes, "gdk_content_formats_get_gtypes", LIBRARY_GDK);
	Linker.link(gdk_content_formats_get_mime_types, "gdk_content_formats_get_mime_types", LIBRARY_GDK);
	Linker.link(gdk_content_formats_match, "gdk_content_formats_match", LIBRARY_GDK);
	Linker.link(gdk_content_formats_match_gtype, "gdk_content_formats_match_gtype", LIBRARY_GDK);
	Linker.link(gdk_content_formats_match_mime_type, "gdk_content_formats_match_mime_type", LIBRARY_GDK);
	Linker.link(gdk_content_formats_print, "gdk_content_formats_print", LIBRARY_GDK);
	Linker.link(gdk_content_formats_ref, "gdk_content_formats_ref", LIBRARY_GDK);
	Linker.link(gdk_content_formats_to_string, "gdk_content_formats_to_string", LIBRARY_GDK);
	Linker.link(gdk_content_formats_union, "gdk_content_formats_union", LIBRARY_GDK);
	Linker.link(gdk_content_formats_union_deserialize_gtypes, "gdk_content_formats_union_deserialize_gtypes", LIBRARY_GDK);
	Linker.link(gdk_content_formats_union_deserialize_mime_types, "gdk_content_formats_union_deserialize_mime_types", LIBRARY_GDK);
	Linker.link(gdk_content_formats_union_serialize_gtypes, "gdk_content_formats_union_serialize_gtypes", LIBRARY_GDK);
	Linker.link(gdk_content_formats_union_serialize_mime_types, "gdk_content_formats_union_serialize_mime_types", LIBRARY_GDK);
	Linker.link(gdk_content_formats_unref, "gdk_content_formats_unref", LIBRARY_GDK);
	Linker.link(gdk_content_formats_parse, "gdk_content_formats_parse", LIBRARY_GDK);

	// gdk.ContentFormatsBuilder

	Linker.link(gdk_content_formats_builder_get_type, "gdk_content_formats_builder_get_type", LIBRARY_GDK);
	Linker.link(gdk_content_formats_builder_new, "gdk_content_formats_builder_new", LIBRARY_GDK);
	Linker.link(gdk_content_formats_builder_add_formats, "gdk_content_formats_builder_add_formats", LIBRARY_GDK);
	Linker.link(gdk_content_formats_builder_add_gtype, "gdk_content_formats_builder_add_gtype", LIBRARY_GDK);
	Linker.link(gdk_content_formats_builder_add_mime_type, "gdk_content_formats_builder_add_mime_type", LIBRARY_GDK);
	Linker.link(gdk_content_formats_builder_free_to_formats, "gdk_content_formats_builder_free_to_formats", LIBRARY_GDK);
	Linker.link(gdk_content_formats_builder_ref, "gdk_content_formats_builder_ref", LIBRARY_GDK);
	Linker.link(gdk_content_formats_builder_to_formats, "gdk_content_formats_builder_to_formats", LIBRARY_GDK);
	Linker.link(gdk_content_formats_builder_unref, "gdk_content_formats_builder_unref", LIBRARY_GDK);

	// gdk.ContentProvider

	Linker.link(gdk_content_provider_get_type, "gdk_content_provider_get_type", LIBRARY_GDK);
	Linker.link(gdk_content_provider_new_for_bytes, "gdk_content_provider_new_for_bytes", LIBRARY_GDK);
	Linker.link(gdk_content_provider_new_for_value, "gdk_content_provider_new_for_value", LIBRARY_GDK);
	Linker.link(gdk_content_provider_new_typed, "gdk_content_provider_new_typed", LIBRARY_GDK);
	Linker.link(gdk_content_provider_new_union, "gdk_content_provider_new_union", LIBRARY_GDK);
	Linker.link(gdk_content_provider_content_changed, "gdk_content_provider_content_changed", LIBRARY_GDK);
	Linker.link(gdk_content_provider_get_value, "gdk_content_provider_get_value", LIBRARY_GDK);
	Linker.link(gdk_content_provider_ref_formats, "gdk_content_provider_ref_formats", LIBRARY_GDK);
	Linker.link(gdk_content_provider_ref_storable_formats, "gdk_content_provider_ref_storable_formats", LIBRARY_GDK);
	Linker.link(gdk_content_provider_write_mime_type_async, "gdk_content_provider_write_mime_type_async", LIBRARY_GDK);
	Linker.link(gdk_content_provider_write_mime_type_finish, "gdk_content_provider_write_mime_type_finish", LIBRARY_GDK);

	// gdk.ContentSerializer

	Linker.link(gdk_content_serializer_get_type, "gdk_content_serializer_get_type", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_get_cancellable, "gdk_content_serializer_get_cancellable", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_get_gtype, "gdk_content_serializer_get_gtype", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_get_mime_type, "gdk_content_serializer_get_mime_type", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_get_output_stream, "gdk_content_serializer_get_output_stream", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_get_priority, "gdk_content_serializer_get_priority", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_get_task_data, "gdk_content_serializer_get_task_data", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_get_user_data, "gdk_content_serializer_get_user_data", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_get_value, "gdk_content_serializer_get_value", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_return_error, "gdk_content_serializer_return_error", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_return_success, "gdk_content_serializer_return_success", LIBRARY_GDK);
	Linker.link(gdk_content_serializer_set_task_data, "gdk_content_serializer_set_task_data", LIBRARY_GDK);

	// gdk.CrossingEvent

	Linker.link(gdk_crossing_event_get_type, "gdk_crossing_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_crossing_event_get_detail, "gdk_crossing_event_get_detail", LIBRARY_GDK);
	Linker.link(gdk_crossing_event_get_focus, "gdk_crossing_event_get_focus", LIBRARY_GDK);
	Linker.link(gdk_crossing_event_get_mode, "gdk_crossing_event_get_mode", LIBRARY_GDK);

	// gdk.Cursor

	Linker.link(gdk_cursor_get_type, "gdk_cursor_get_type", LIBRARY_GDK);
	Linker.link(gdk_cursor_new_from_name, "gdk_cursor_new_from_name", LIBRARY_GDK);
	Linker.link(gdk_cursor_new_from_texture, "gdk_cursor_new_from_texture", LIBRARY_GDK);
	Linker.link(gdk_cursor_get_fallback, "gdk_cursor_get_fallback", LIBRARY_GDK);
	Linker.link(gdk_cursor_get_hotspot_x, "gdk_cursor_get_hotspot_x", LIBRARY_GDK);
	Linker.link(gdk_cursor_get_hotspot_y, "gdk_cursor_get_hotspot_y", LIBRARY_GDK);
	Linker.link(gdk_cursor_get_name, "gdk_cursor_get_name", LIBRARY_GDK);
	Linker.link(gdk_cursor_get_texture, "gdk_cursor_get_texture", LIBRARY_GDK);

	// gdk.DNDEvent

	Linker.link(gdk_dnd_event_get_type, "gdk_dnd_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_dnd_event_get_drop, "gdk_dnd_event_get_drop", LIBRARY_GDK);

	// gdk.DeleteEvent

	Linker.link(gdk_delete_event_get_type, "gdk_delete_event_get_type", LIBRARY_GDK);

	// gdk.Device

	Linker.link(gdk_device_get_type, "gdk_device_get_type", LIBRARY_GDK);
	Linker.link(gdk_device_get_caps_lock_state, "gdk_device_get_caps_lock_state", LIBRARY_GDK);
	Linker.link(gdk_device_get_device_tool, "gdk_device_get_device_tool", LIBRARY_GDK);
	Linker.link(gdk_device_get_direction, "gdk_device_get_direction", LIBRARY_GDK);
	Linker.link(gdk_device_get_display, "gdk_device_get_display", LIBRARY_GDK);
	Linker.link(gdk_device_get_has_cursor, "gdk_device_get_has_cursor", LIBRARY_GDK);
	Linker.link(gdk_device_get_modifier_state, "gdk_device_get_modifier_state", LIBRARY_GDK);
	Linker.link(gdk_device_get_name, "gdk_device_get_name", LIBRARY_GDK);
	Linker.link(gdk_device_get_num_lock_state, "gdk_device_get_num_lock_state", LIBRARY_GDK);
	Linker.link(gdk_device_get_num_touches, "gdk_device_get_num_touches", LIBRARY_GDK);
	Linker.link(gdk_device_get_product_id, "gdk_device_get_product_id", LIBRARY_GDK);
	Linker.link(gdk_device_get_scroll_lock_state, "gdk_device_get_scroll_lock_state", LIBRARY_GDK);
	Linker.link(gdk_device_get_seat, "gdk_device_get_seat", LIBRARY_GDK);
	Linker.link(gdk_device_get_source, "gdk_device_get_source", LIBRARY_GDK);
	Linker.link(gdk_device_get_surface_at_position, "gdk_device_get_surface_at_position", LIBRARY_GDK);
	Linker.link(gdk_device_get_timestamp, "gdk_device_get_timestamp", LIBRARY_GDK);
	Linker.link(gdk_device_get_vendor_id, "gdk_device_get_vendor_id", LIBRARY_GDK);
	Linker.link(gdk_device_has_bidi_layouts, "gdk_device_has_bidi_layouts", LIBRARY_GDK);

	// gdk.DevicePad

	Linker.link(gdk_device_pad_get_type, "gdk_device_pad_get_type", LIBRARY_GDK);
	Linker.link(gdk_device_pad_get_feature_group, "gdk_device_pad_get_feature_group", LIBRARY_GDK);
	Linker.link(gdk_device_pad_get_group_n_modes, "gdk_device_pad_get_group_n_modes", LIBRARY_GDK);
	Linker.link(gdk_device_pad_get_n_features, "gdk_device_pad_get_n_features", LIBRARY_GDK);
	Linker.link(gdk_device_pad_get_n_groups, "gdk_device_pad_get_n_groups", LIBRARY_GDK);

	// gdk.DeviceTool

	Linker.link(gdk_device_tool_get_type, "gdk_device_tool_get_type", LIBRARY_GDK);
	Linker.link(gdk_device_tool_get_axes, "gdk_device_tool_get_axes", LIBRARY_GDK);
	Linker.link(gdk_device_tool_get_hardware_id, "gdk_device_tool_get_hardware_id", LIBRARY_GDK);
	Linker.link(gdk_device_tool_get_serial, "gdk_device_tool_get_serial", LIBRARY_GDK);
	Linker.link(gdk_device_tool_get_tool_type, "gdk_device_tool_get_tool_type", LIBRARY_GDK);

	// gdk.Display

	Linker.link(gdk_display_get_type, "gdk_display_get_type", LIBRARY_GDK);
	Linker.link(gdk_display_get_default, "gdk_display_get_default", LIBRARY_GDK);
	Linker.link(gdk_display_open, "gdk_display_open", LIBRARY_GDK);
	Linker.link(gdk_display_beep, "gdk_display_beep", LIBRARY_GDK);
	Linker.link(gdk_display_close, "gdk_display_close", LIBRARY_GDK);
	Linker.link(gdk_display_create_gl_context, "gdk_display_create_gl_context", LIBRARY_GDK);
	Linker.link(gdk_display_device_is_grabbed, "gdk_display_device_is_grabbed", LIBRARY_GDK);
	Linker.link(gdk_display_flush, "gdk_display_flush", LIBRARY_GDK);
	Linker.link(gdk_display_get_app_launch_context, "gdk_display_get_app_launch_context", LIBRARY_GDK);
	Linker.link(gdk_display_get_clipboard, "gdk_display_get_clipboard", LIBRARY_GDK);
	Linker.link(gdk_display_get_default_seat, "gdk_display_get_default_seat", LIBRARY_GDK);
	Linker.link(gdk_display_get_monitor_at_surface, "gdk_display_get_monitor_at_surface", LIBRARY_GDK);
	Linker.link(gdk_display_get_monitors, "gdk_display_get_monitors", LIBRARY_GDK);
	Linker.link(gdk_display_get_name, "gdk_display_get_name", LIBRARY_GDK);
	Linker.link(gdk_display_get_primary_clipboard, "gdk_display_get_primary_clipboard", LIBRARY_GDK);
	Linker.link(gdk_display_get_setting, "gdk_display_get_setting", LIBRARY_GDK);
	Linker.link(gdk_display_get_startup_notification_id, "gdk_display_get_startup_notification_id", LIBRARY_GDK);
	Linker.link(gdk_display_is_closed, "gdk_display_is_closed", LIBRARY_GDK);
	Linker.link(gdk_display_is_composited, "gdk_display_is_composited", LIBRARY_GDK);
	Linker.link(gdk_display_is_rgba, "gdk_display_is_rgba", LIBRARY_GDK);
	Linker.link(gdk_display_list_seats, "gdk_display_list_seats", LIBRARY_GDK);
	Linker.link(gdk_display_map_keycode, "gdk_display_map_keycode", LIBRARY_GDK);
	Linker.link(gdk_display_map_keyval, "gdk_display_map_keyval", LIBRARY_GDK);
	Linker.link(gdk_display_notify_startup_complete, "gdk_display_notify_startup_complete", LIBRARY_GDK);
	Linker.link(gdk_display_prepare_gl, "gdk_display_prepare_gl", LIBRARY_GDK);
	Linker.link(gdk_display_put_event, "gdk_display_put_event", LIBRARY_GDK);
	Linker.link(gdk_display_supports_input_shapes, "gdk_display_supports_input_shapes", LIBRARY_GDK);
	Linker.link(gdk_display_sync, "gdk_display_sync", LIBRARY_GDK);
	Linker.link(gdk_display_translate_key, "gdk_display_translate_key", LIBRARY_GDK);

	// gdk.DisplayManager

	Linker.link(gdk_display_manager_get_type, "gdk_display_manager_get_type", LIBRARY_GDK);
	Linker.link(gdk_display_manager_get, "gdk_display_manager_get", LIBRARY_GDK);
	Linker.link(gdk_display_manager_get_default_display, "gdk_display_manager_get_default_display", LIBRARY_GDK);
	Linker.link(gdk_display_manager_list_displays, "gdk_display_manager_list_displays", LIBRARY_GDK);
	Linker.link(gdk_display_manager_open_display, "gdk_display_manager_open_display", LIBRARY_GDK);
	Linker.link(gdk_display_manager_set_default_display, "gdk_display_manager_set_default_display", LIBRARY_GDK);

	// gdk.Drag

	Linker.link(gdk_drag_get_type, "gdk_drag_get_type", LIBRARY_GDK);
	Linker.link(gdk_drag_begin, "gdk_drag_begin", LIBRARY_GDK);
	Linker.link(gdk_drag_drop_done, "gdk_drag_drop_done", LIBRARY_GDK);
	Linker.link(gdk_drag_get_actions, "gdk_drag_get_actions", LIBRARY_GDK);
	Linker.link(gdk_drag_get_content, "gdk_drag_get_content", LIBRARY_GDK);
	Linker.link(gdk_drag_get_device, "gdk_drag_get_device", LIBRARY_GDK);
	Linker.link(gdk_drag_get_display, "gdk_drag_get_display", LIBRARY_GDK);
	Linker.link(gdk_drag_get_drag_surface, "gdk_drag_get_drag_surface", LIBRARY_GDK);
	Linker.link(gdk_drag_get_formats, "gdk_drag_get_formats", LIBRARY_GDK);
	Linker.link(gdk_drag_get_selected_action, "gdk_drag_get_selected_action", LIBRARY_GDK);
	Linker.link(gdk_drag_get_surface, "gdk_drag_get_surface", LIBRARY_GDK);
	Linker.link(gdk_drag_set_hotspot, "gdk_drag_set_hotspot", LIBRARY_GDK);

	// gdk.DragSurface

	Linker.link(gdk_drag_surface_get_type, "gdk_drag_surface_get_type", LIBRARY_GDK);
	Linker.link(gdk_drag_surface_present, "gdk_drag_surface_present", LIBRARY_GDK);

	// gdk.DrawContext

	Linker.link(gdk_draw_context_get_type, "gdk_draw_context_get_type", LIBRARY_GDK);
	Linker.link(gdk_draw_context_begin_frame, "gdk_draw_context_begin_frame", LIBRARY_GDK);
	Linker.link(gdk_draw_context_end_frame, "gdk_draw_context_end_frame", LIBRARY_GDK);
	Linker.link(gdk_draw_context_get_display, "gdk_draw_context_get_display", LIBRARY_GDK);
	Linker.link(gdk_draw_context_get_frame_region, "gdk_draw_context_get_frame_region", LIBRARY_GDK);
	Linker.link(gdk_draw_context_get_surface, "gdk_draw_context_get_surface", LIBRARY_GDK);
	Linker.link(gdk_draw_context_is_in_frame, "gdk_draw_context_is_in_frame", LIBRARY_GDK);

	// gdk.Drop

	Linker.link(gdk_drop_get_type, "gdk_drop_get_type", LIBRARY_GDK);
	Linker.link(gdk_drop_finish, "gdk_drop_finish", LIBRARY_GDK);
	Linker.link(gdk_drop_get_actions, "gdk_drop_get_actions", LIBRARY_GDK);
	Linker.link(gdk_drop_get_device, "gdk_drop_get_device", LIBRARY_GDK);
	Linker.link(gdk_drop_get_display, "gdk_drop_get_display", LIBRARY_GDK);
	Linker.link(gdk_drop_get_drag, "gdk_drop_get_drag", LIBRARY_GDK);
	Linker.link(gdk_drop_get_formats, "gdk_drop_get_formats", LIBRARY_GDK);
	Linker.link(gdk_drop_get_surface, "gdk_drop_get_surface", LIBRARY_GDK);
	Linker.link(gdk_drop_read_async, "gdk_drop_read_async", LIBRARY_GDK);
	Linker.link(gdk_drop_read_finish, "gdk_drop_read_finish", LIBRARY_GDK);
	Linker.link(gdk_drop_read_value_async, "gdk_drop_read_value_async", LIBRARY_GDK);
	Linker.link(gdk_drop_read_value_finish, "gdk_drop_read_value_finish", LIBRARY_GDK);
	Linker.link(gdk_drop_status, "gdk_drop_status", LIBRARY_GDK);

	// gdk.Event

	Linker.link(gdk_event_get_type, "gdk_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_events_get_angle, "gdk_events_get_angle", LIBRARY_GDK);
	Linker.link(gdk_events_get_center, "gdk_events_get_center", LIBRARY_GDK);
	Linker.link(gdk_events_get_distance, "gdk_events_get_distance", LIBRARY_GDK);
	Linker.link(gdk_event_get_axes, "gdk_event_get_axes", LIBRARY_GDK);
	Linker.link(gdk_event_get_axis, "gdk_event_get_axis", LIBRARY_GDK);
	Linker.link(gdk_event_get_device, "gdk_event_get_device", LIBRARY_GDK);
	Linker.link(gdk_event_get_device_tool, "gdk_event_get_device_tool", LIBRARY_GDK);
	Linker.link(gdk_event_get_display, "gdk_event_get_display", LIBRARY_GDK);
	Linker.link(gdk_event_get_event_sequence, "gdk_event_get_event_sequence", LIBRARY_GDK);
	Linker.link(gdk_event_get_event_type, "gdk_event_get_event_type", LIBRARY_GDK);
	Linker.link(gdk_event_get_history, "gdk_event_get_history", LIBRARY_GDK);
	Linker.link(gdk_event_get_modifier_state, "gdk_event_get_modifier_state", LIBRARY_GDK);
	Linker.link(gdk_event_get_pointer_emulated, "gdk_event_get_pointer_emulated", LIBRARY_GDK);
	Linker.link(gdk_event_get_position, "gdk_event_get_position", LIBRARY_GDK);
	Linker.link(gdk_event_get_seat, "gdk_event_get_seat", LIBRARY_GDK);
	Linker.link(gdk_event_get_surface, "gdk_event_get_surface", LIBRARY_GDK);
	Linker.link(gdk_event_get_time, "gdk_event_get_time", LIBRARY_GDK);
	Linker.link(gdk_event_ref, "gdk_event_ref", LIBRARY_GDK);
	Linker.link(gdk_event_triggers_context_menu, "gdk_event_triggers_context_menu", LIBRARY_GDK);
	Linker.link(gdk_event_unref, "gdk_event_unref", LIBRARY_GDK);

	// gdk.EventSequence

	Linker.link(gdk_event_sequence_get_type, "gdk_event_sequence_get_type", LIBRARY_GDK);

	// gdk.FileList

	Linker.link(gdk_file_list_get_type, "gdk_file_list_get_type", LIBRARY_GDK);
	Linker.link(gdk_file_list_get_files, "gdk_file_list_get_files", LIBRARY_GDK);

	// gdk.FocusEvent

	Linker.link(gdk_focus_event_get_type, "gdk_focus_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_focus_event_get_in, "gdk_focus_event_get_in", LIBRARY_GDK);

	// gdk.FrameClock

	Linker.link(gdk_frame_clock_get_type, "gdk_frame_clock_get_type", LIBRARY_GDK);
	Linker.link(gdk_frame_clock_begin_updating, "gdk_frame_clock_begin_updating", LIBRARY_GDK);
	Linker.link(gdk_frame_clock_end_updating, "gdk_frame_clock_end_updating", LIBRARY_GDK);
	Linker.link(gdk_frame_clock_get_current_timings, "gdk_frame_clock_get_current_timings", LIBRARY_GDK);
	Linker.link(gdk_frame_clock_get_fps, "gdk_frame_clock_get_fps", LIBRARY_GDK);
	Linker.link(gdk_frame_clock_get_frame_counter, "gdk_frame_clock_get_frame_counter", LIBRARY_GDK);
	Linker.link(gdk_frame_clock_get_frame_time, "gdk_frame_clock_get_frame_time", LIBRARY_GDK);
	Linker.link(gdk_frame_clock_get_history_start, "gdk_frame_clock_get_history_start", LIBRARY_GDK);
	Linker.link(gdk_frame_clock_get_refresh_info, "gdk_frame_clock_get_refresh_info", LIBRARY_GDK);
	Linker.link(gdk_frame_clock_get_timings, "gdk_frame_clock_get_timings", LIBRARY_GDK);
	Linker.link(gdk_frame_clock_request_phase, "gdk_frame_clock_request_phase", LIBRARY_GDK);

	// gdk.FrameTimings

	Linker.link(gdk_frame_timings_get_type, "gdk_frame_timings_get_type", LIBRARY_GDK);
	Linker.link(gdk_frame_timings_get_complete, "gdk_frame_timings_get_complete", LIBRARY_GDK);
	Linker.link(gdk_frame_timings_get_frame_counter, "gdk_frame_timings_get_frame_counter", LIBRARY_GDK);
	Linker.link(gdk_frame_timings_get_frame_time, "gdk_frame_timings_get_frame_time", LIBRARY_GDK);
	Linker.link(gdk_frame_timings_get_predicted_presentation_time, "gdk_frame_timings_get_predicted_presentation_time", LIBRARY_GDK);
	Linker.link(gdk_frame_timings_get_presentation_time, "gdk_frame_timings_get_presentation_time", LIBRARY_GDK);
	Linker.link(gdk_frame_timings_get_refresh_interval, "gdk_frame_timings_get_refresh_interval", LIBRARY_GDK);
	Linker.link(gdk_frame_timings_ref, "gdk_frame_timings_ref", LIBRARY_GDK);
	Linker.link(gdk_frame_timings_unref, "gdk_frame_timings_unref", LIBRARY_GDK);

	// gdk.GLContext

	Linker.link(gdk_gl_context_get_type, "gdk_gl_context_get_type", LIBRARY_GDK);
	Linker.link(gdk_gl_context_clear_current, "gdk_gl_context_clear_current", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_current, "gdk_gl_context_get_current", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_allowed_apis, "gdk_gl_context_get_allowed_apis", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_api, "gdk_gl_context_get_api", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_debug_enabled, "gdk_gl_context_get_debug_enabled", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_display, "gdk_gl_context_get_display", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_forward_compatible, "gdk_gl_context_get_forward_compatible", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_required_version, "gdk_gl_context_get_required_version", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_shared_context, "gdk_gl_context_get_shared_context", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_surface, "gdk_gl_context_get_surface", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_use_es, "gdk_gl_context_get_use_es", LIBRARY_GDK);
	Linker.link(gdk_gl_context_get_version, "gdk_gl_context_get_version", LIBRARY_GDK);
	Linker.link(gdk_gl_context_is_legacy, "gdk_gl_context_is_legacy", LIBRARY_GDK);
	Linker.link(gdk_gl_context_is_shared, "gdk_gl_context_is_shared", LIBRARY_GDK);
	Linker.link(gdk_gl_context_make_current, "gdk_gl_context_make_current", LIBRARY_GDK);
	Linker.link(gdk_gl_context_realize, "gdk_gl_context_realize", LIBRARY_GDK);
	Linker.link(gdk_gl_context_set_allowed_apis, "gdk_gl_context_set_allowed_apis", LIBRARY_GDK);
	Linker.link(gdk_gl_context_set_debug_enabled, "gdk_gl_context_set_debug_enabled", LIBRARY_GDK);
	Linker.link(gdk_gl_context_set_forward_compatible, "gdk_gl_context_set_forward_compatible", LIBRARY_GDK);
	Linker.link(gdk_gl_context_set_required_version, "gdk_gl_context_set_required_version", LIBRARY_GDK);
	Linker.link(gdk_gl_context_set_use_es, "gdk_gl_context_set_use_es", LIBRARY_GDK);

	// gdk.GLTexture

	Linker.link(gdk_gl_texture_get_type, "gdk_gl_texture_get_type", LIBRARY_GDK);
	Linker.link(gdk_gl_texture_new, "gdk_gl_texture_new", LIBRARY_GDK);
	Linker.link(gdk_gl_texture_release, "gdk_gl_texture_release", LIBRARY_GDK);

	// gdk.GrabBrokenEvent

	Linker.link(gdk_grab_broken_event_get_type, "gdk_grab_broken_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_grab_broken_event_get_grab_surface, "gdk_grab_broken_event_get_grab_surface", LIBRARY_GDK);
	Linker.link(gdk_grab_broken_event_get_implicit, "gdk_grab_broken_event_get_implicit", LIBRARY_GDK);

	// gdk.KeyEvent

	Linker.link(gdk_key_event_get_type, "gdk_key_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_key_event_get_consumed_modifiers, "gdk_key_event_get_consumed_modifiers", LIBRARY_GDK);
	Linker.link(gdk_key_event_get_keycode, "gdk_key_event_get_keycode", LIBRARY_GDK);
	Linker.link(gdk_key_event_get_keyval, "gdk_key_event_get_keyval", LIBRARY_GDK);
	Linker.link(gdk_key_event_get_layout, "gdk_key_event_get_layout", LIBRARY_GDK);
	Linker.link(gdk_key_event_get_level, "gdk_key_event_get_level", LIBRARY_GDK);
	Linker.link(gdk_key_event_get_match, "gdk_key_event_get_match", LIBRARY_GDK);
	Linker.link(gdk_key_event_is_modifier, "gdk_key_event_is_modifier", LIBRARY_GDK);
	Linker.link(gdk_key_event_matches, "gdk_key_event_matches", LIBRARY_GDK);

	// gdk.MemoryTexture

	Linker.link(gdk_memory_texture_get_type, "gdk_memory_texture_get_type", LIBRARY_GDK);
	Linker.link(gdk_memory_texture_new, "gdk_memory_texture_new", LIBRARY_GDK);

	// gdk.MonitorGdk

	Linker.link(gdk_monitor_get_type, "gdk_monitor_get_type", LIBRARY_GDK);
	Linker.link(gdk_monitor_get_connector, "gdk_monitor_get_connector", LIBRARY_GDK);
	Linker.link(gdk_monitor_get_display, "gdk_monitor_get_display", LIBRARY_GDK);
	Linker.link(gdk_monitor_get_geometry, "gdk_monitor_get_geometry", LIBRARY_GDK);
	Linker.link(gdk_monitor_get_height_mm, "gdk_monitor_get_height_mm", LIBRARY_GDK);
	Linker.link(gdk_monitor_get_manufacturer, "gdk_monitor_get_manufacturer", LIBRARY_GDK);
	Linker.link(gdk_monitor_get_model, "gdk_monitor_get_model", LIBRARY_GDK);
	Linker.link(gdk_monitor_get_refresh_rate, "gdk_monitor_get_refresh_rate", LIBRARY_GDK);
	Linker.link(gdk_monitor_get_scale_factor, "gdk_monitor_get_scale_factor", LIBRARY_GDK);
	Linker.link(gdk_monitor_get_subpixel_layout, "gdk_monitor_get_subpixel_layout", LIBRARY_GDK);
	Linker.link(gdk_monitor_get_width_mm, "gdk_monitor_get_width_mm", LIBRARY_GDK);
	Linker.link(gdk_monitor_is_valid, "gdk_monitor_is_valid", LIBRARY_GDK);

	// gdk.MotionEvent

	Linker.link(gdk_motion_event_get_type, "gdk_motion_event_get_type", LIBRARY_GDK);

	// gdk.PadEvent

	Linker.link(gdk_pad_event_get_type, "gdk_pad_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_pad_event_get_axis_value, "gdk_pad_event_get_axis_value", LIBRARY_GDK);
	Linker.link(gdk_pad_event_get_button, "gdk_pad_event_get_button", LIBRARY_GDK);
	Linker.link(gdk_pad_event_get_group_mode, "gdk_pad_event_get_group_mode", LIBRARY_GDK);

	// gdk.Paintable

	Linker.link(gdk_paintable_get_type, "gdk_paintable_get_type", LIBRARY_GDK);
	Linker.link(gdk_paintable_new_empty, "gdk_paintable_new_empty", LIBRARY_GDK);
	Linker.link(gdk_paintable_compute_concrete_size, "gdk_paintable_compute_concrete_size", LIBRARY_GDK);
	Linker.link(gdk_paintable_get_current_image, "gdk_paintable_get_current_image", LIBRARY_GDK);
	Linker.link(gdk_paintable_get_flags, "gdk_paintable_get_flags", LIBRARY_GDK);
	Linker.link(gdk_paintable_get_intrinsic_aspect_ratio, "gdk_paintable_get_intrinsic_aspect_ratio", LIBRARY_GDK);
	Linker.link(gdk_paintable_get_intrinsic_height, "gdk_paintable_get_intrinsic_height", LIBRARY_GDK);
	Linker.link(gdk_paintable_get_intrinsic_width, "gdk_paintable_get_intrinsic_width", LIBRARY_GDK);
	Linker.link(gdk_paintable_invalidate_contents, "gdk_paintable_invalidate_contents", LIBRARY_GDK);
	Linker.link(gdk_paintable_invalidate_size, "gdk_paintable_invalidate_size", LIBRARY_GDK);
	Linker.link(gdk_paintable_snapshot, "gdk_paintable_snapshot", LIBRARY_GDK);

	// gdk.Popup

	Linker.link(gdk_popup_get_type, "gdk_popup_get_type", LIBRARY_GDK);
	Linker.link(gdk_popup_get_autohide, "gdk_popup_get_autohide", LIBRARY_GDK);
	Linker.link(gdk_popup_get_parent, "gdk_popup_get_parent", LIBRARY_GDK);
	Linker.link(gdk_popup_get_position_x, "gdk_popup_get_position_x", LIBRARY_GDK);
	Linker.link(gdk_popup_get_position_y, "gdk_popup_get_position_y", LIBRARY_GDK);
	Linker.link(gdk_popup_get_rect_anchor, "gdk_popup_get_rect_anchor", LIBRARY_GDK);
	Linker.link(gdk_popup_get_surface_anchor, "gdk_popup_get_surface_anchor", LIBRARY_GDK);
	Linker.link(gdk_popup_present, "gdk_popup_present", LIBRARY_GDK);

	// gdk.PopupLayout

	Linker.link(gdk_popup_layout_get_type, "gdk_popup_layout_get_type", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_new, "gdk_popup_layout_new", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_copy, "gdk_popup_layout_copy", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_equal, "gdk_popup_layout_equal", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_get_anchor_hints, "gdk_popup_layout_get_anchor_hints", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_get_anchor_rect, "gdk_popup_layout_get_anchor_rect", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_get_offset, "gdk_popup_layout_get_offset", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_get_rect_anchor, "gdk_popup_layout_get_rect_anchor", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_get_shadow_width, "gdk_popup_layout_get_shadow_width", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_get_surface_anchor, "gdk_popup_layout_get_surface_anchor", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_ref, "gdk_popup_layout_ref", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_set_anchor_hints, "gdk_popup_layout_set_anchor_hints", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_set_anchor_rect, "gdk_popup_layout_set_anchor_rect", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_set_offset, "gdk_popup_layout_set_offset", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_set_rect_anchor, "gdk_popup_layout_set_rect_anchor", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_set_shadow_width, "gdk_popup_layout_set_shadow_width", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_set_surface_anchor, "gdk_popup_layout_set_surface_anchor", LIBRARY_GDK);
	Linker.link(gdk_popup_layout_unref, "gdk_popup_layout_unref", LIBRARY_GDK);

	// gdk.ProximityEvent

	Linker.link(gdk_proximity_event_get_type, "gdk_proximity_event_get_type", LIBRARY_GDK);

	// gdk.RGBA

	Linker.link(gdk_rgba_get_type, "gdk_rgba_get_type", LIBRARY_GDK);
	Linker.link(gdk_rgba_copy, "gdk_rgba_copy", LIBRARY_GDK);
	Linker.link(gdk_rgba_equal, "gdk_rgba_equal", LIBRARY_GDK);
	Linker.link(gdk_rgba_free, "gdk_rgba_free", LIBRARY_GDK);
	Linker.link(gdk_rgba_hash, "gdk_rgba_hash", LIBRARY_GDK);
	Linker.link(gdk_rgba_is_clear, "gdk_rgba_is_clear", LIBRARY_GDK);
	Linker.link(gdk_rgba_is_opaque, "gdk_rgba_is_opaque", LIBRARY_GDK);
	Linker.link(gdk_rgba_parse, "gdk_rgba_parse", LIBRARY_GDK);
	Linker.link(gdk_rgba_to_string, "gdk_rgba_to_string", LIBRARY_GDK);

	// gdk.Rectangle

	Linker.link(gdk_rectangle_get_type, "gdk_rectangle_get_type", LIBRARY_GDK);
	Linker.link(gdk_rectangle_contains_point, "gdk_rectangle_contains_point", LIBRARY_GDK);
	Linker.link(gdk_rectangle_equal, "gdk_rectangle_equal", LIBRARY_GDK);
	Linker.link(gdk_rectangle_intersect, "gdk_rectangle_intersect", LIBRARY_GDK);
	Linker.link(gdk_rectangle_union, "gdk_rectangle_union", LIBRARY_GDK);

	// gdk.ScrollEvent

	Linker.link(gdk_scroll_event_get_type, "gdk_scroll_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_scroll_event_get_deltas, "gdk_scroll_event_get_deltas", LIBRARY_GDK);
	Linker.link(gdk_scroll_event_get_direction, "gdk_scroll_event_get_direction", LIBRARY_GDK);
	Linker.link(gdk_scroll_event_is_stop, "gdk_scroll_event_is_stop", LIBRARY_GDK);

	// gdk.Seat

	Linker.link(gdk_seat_get_type, "gdk_seat_get_type", LIBRARY_GDK);
	Linker.link(gdk_seat_get_capabilities, "gdk_seat_get_capabilities", LIBRARY_GDK);
	Linker.link(gdk_seat_get_devices, "gdk_seat_get_devices", LIBRARY_GDK);
	Linker.link(gdk_seat_get_display, "gdk_seat_get_display", LIBRARY_GDK);
	Linker.link(gdk_seat_get_keyboard, "gdk_seat_get_keyboard", LIBRARY_GDK);
	Linker.link(gdk_seat_get_pointer, "gdk_seat_get_pointer", LIBRARY_GDK);
	Linker.link(gdk_seat_get_tools, "gdk_seat_get_tools", LIBRARY_GDK);

	// gdk.Snapshot

	Linker.link(gdk_snapshot_get_type, "gdk_snapshot_get_type", LIBRARY_GDK);

	// gdk.Surface

	Linker.link(gdk_surface_get_type, "gdk_surface_get_type", LIBRARY_GDK);
	Linker.link(gdk_surface_new_popup, "gdk_surface_new_popup", LIBRARY_GDK);
	Linker.link(gdk_surface_new_toplevel, "gdk_surface_new_toplevel", LIBRARY_GDK);
	Linker.link(gdk_surface_beep, "gdk_surface_beep", LIBRARY_GDK);
	Linker.link(gdk_surface_create_cairo_context, "gdk_surface_create_cairo_context", LIBRARY_GDK);
	Linker.link(gdk_surface_create_gl_context, "gdk_surface_create_gl_context", LIBRARY_GDK);
	Linker.link(gdk_surface_create_similar_surface, "gdk_surface_create_similar_surface", LIBRARY_GDK);
	Linker.link(gdk_surface_create_vulkan_context, "gdk_surface_create_vulkan_context", LIBRARY_GDK);
	Linker.link(gdk_surface_destroy, "gdk_surface_destroy", LIBRARY_GDK);
	Linker.link(gdk_surface_get_cursor, "gdk_surface_get_cursor", LIBRARY_GDK);
	Linker.link(gdk_surface_get_device_cursor, "gdk_surface_get_device_cursor", LIBRARY_GDK);
	Linker.link(gdk_surface_get_device_position, "gdk_surface_get_device_position", LIBRARY_GDK);
	Linker.link(gdk_surface_get_display, "gdk_surface_get_display", LIBRARY_GDK);
	Linker.link(gdk_surface_get_frame_clock, "gdk_surface_get_frame_clock", LIBRARY_GDK);
	Linker.link(gdk_surface_get_height, "gdk_surface_get_height", LIBRARY_GDK);
	Linker.link(gdk_surface_get_mapped, "gdk_surface_get_mapped", LIBRARY_GDK);
	Linker.link(gdk_surface_get_scale_factor, "gdk_surface_get_scale_factor", LIBRARY_GDK);
	Linker.link(gdk_surface_get_width, "gdk_surface_get_width", LIBRARY_GDK);
	Linker.link(gdk_surface_hide, "gdk_surface_hide", LIBRARY_GDK);
	Linker.link(gdk_surface_is_destroyed, "gdk_surface_is_destroyed", LIBRARY_GDK);
	Linker.link(gdk_surface_queue_render, "gdk_surface_queue_render", LIBRARY_GDK);
	Linker.link(gdk_surface_request_layout, "gdk_surface_request_layout", LIBRARY_GDK);
	Linker.link(gdk_surface_set_cursor, "gdk_surface_set_cursor", LIBRARY_GDK);
	Linker.link(gdk_surface_set_device_cursor, "gdk_surface_set_device_cursor", LIBRARY_GDK);
	Linker.link(gdk_surface_set_input_region, "gdk_surface_set_input_region", LIBRARY_GDK);
	Linker.link(gdk_surface_set_opaque_region, "gdk_surface_set_opaque_region", LIBRARY_GDK);
	Linker.link(gdk_surface_translate_coordinates, "gdk_surface_translate_coordinates", LIBRARY_GDK);

	// gdk.Texture

	Linker.link(gdk_texture_get_type, "gdk_texture_get_type", LIBRARY_GDK);
	Linker.link(gdk_texture_new_for_pixbuf, "gdk_texture_new_for_pixbuf", LIBRARY_GDK);
	Linker.link(gdk_texture_new_from_bytes, "gdk_texture_new_from_bytes", LIBRARY_GDK);
	Linker.link(gdk_texture_new_from_file, "gdk_texture_new_from_file", LIBRARY_GDK);
	Linker.link(gdk_texture_new_from_filename, "gdk_texture_new_from_filename", LIBRARY_GDK);
	Linker.link(gdk_texture_new_from_resource, "gdk_texture_new_from_resource", LIBRARY_GDK);
	Linker.link(gdk_texture_download, "gdk_texture_download", LIBRARY_GDK);
	Linker.link(gdk_texture_get_height, "gdk_texture_get_height", LIBRARY_GDK);
	Linker.link(gdk_texture_get_width, "gdk_texture_get_width", LIBRARY_GDK);
	Linker.link(gdk_texture_save_to_png, "gdk_texture_save_to_png", LIBRARY_GDK);
	Linker.link(gdk_texture_save_to_png_bytes, "gdk_texture_save_to_png_bytes", LIBRARY_GDK);
	Linker.link(gdk_texture_save_to_tiff, "gdk_texture_save_to_tiff", LIBRARY_GDK);
	Linker.link(gdk_texture_save_to_tiff_bytes, "gdk_texture_save_to_tiff_bytes", LIBRARY_GDK);

	// gdk.Toplevel

	Linker.link(gdk_toplevel_get_type, "gdk_toplevel_get_type", LIBRARY_GDK);
	Linker.link(gdk_toplevel_begin_move, "gdk_toplevel_begin_move", LIBRARY_GDK);
	Linker.link(gdk_toplevel_begin_resize, "gdk_toplevel_begin_resize", LIBRARY_GDK);
	Linker.link(gdk_toplevel_focus, "gdk_toplevel_focus", LIBRARY_GDK);
	Linker.link(gdk_toplevel_get_state, "gdk_toplevel_get_state", LIBRARY_GDK);
	Linker.link(gdk_toplevel_inhibit_system_shortcuts, "gdk_toplevel_inhibit_system_shortcuts", LIBRARY_GDK);
	Linker.link(gdk_toplevel_lower, "gdk_toplevel_lower", LIBRARY_GDK);
	Linker.link(gdk_toplevel_minimize, "gdk_toplevel_minimize", LIBRARY_GDK);
	Linker.link(gdk_toplevel_present, "gdk_toplevel_present", LIBRARY_GDK);
	Linker.link(gdk_toplevel_restore_system_shortcuts, "gdk_toplevel_restore_system_shortcuts", LIBRARY_GDK);
	Linker.link(gdk_toplevel_set_decorated, "gdk_toplevel_set_decorated", LIBRARY_GDK);
	Linker.link(gdk_toplevel_set_deletable, "gdk_toplevel_set_deletable", LIBRARY_GDK);
	Linker.link(gdk_toplevel_set_icon_list, "gdk_toplevel_set_icon_list", LIBRARY_GDK);
	Linker.link(gdk_toplevel_set_modal, "gdk_toplevel_set_modal", LIBRARY_GDK);
	Linker.link(gdk_toplevel_set_startup_id, "gdk_toplevel_set_startup_id", LIBRARY_GDK);
	Linker.link(gdk_toplevel_set_title, "gdk_toplevel_set_title", LIBRARY_GDK);
	Linker.link(gdk_toplevel_set_transient_for, "gdk_toplevel_set_transient_for", LIBRARY_GDK);
	Linker.link(gdk_toplevel_show_window_menu, "gdk_toplevel_show_window_menu", LIBRARY_GDK);
	Linker.link(gdk_toplevel_supports_edge_constraints, "gdk_toplevel_supports_edge_constraints", LIBRARY_GDK);
	Linker.link(gdk_toplevel_titlebar_gesture, "gdk_toplevel_titlebar_gesture", LIBRARY_GDK);

	// gdk.ToplevelLayout

	Linker.link(gdk_toplevel_layout_get_type, "gdk_toplevel_layout_get_type", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_new, "gdk_toplevel_layout_new", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_copy, "gdk_toplevel_layout_copy", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_equal, "gdk_toplevel_layout_equal", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_get_fullscreen, "gdk_toplevel_layout_get_fullscreen", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_get_fullscreen_monitor, "gdk_toplevel_layout_get_fullscreen_monitor", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_get_maximized, "gdk_toplevel_layout_get_maximized", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_get_resizable, "gdk_toplevel_layout_get_resizable", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_ref, "gdk_toplevel_layout_ref", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_set_fullscreen, "gdk_toplevel_layout_set_fullscreen", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_set_maximized, "gdk_toplevel_layout_set_maximized", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_set_resizable, "gdk_toplevel_layout_set_resizable", LIBRARY_GDK);
	Linker.link(gdk_toplevel_layout_unref, "gdk_toplevel_layout_unref", LIBRARY_GDK);

	// gdk.ToplevelSize

	Linker.link(gdk_toplevel_size_get_bounds, "gdk_toplevel_size_get_bounds", LIBRARY_GDK);
	Linker.link(gdk_toplevel_size_set_min_size, "gdk_toplevel_size_set_min_size", LIBRARY_GDK);
	Linker.link(gdk_toplevel_size_set_shadow_width, "gdk_toplevel_size_set_shadow_width", LIBRARY_GDK);
	Linker.link(gdk_toplevel_size_set_size, "gdk_toplevel_size_set_size", LIBRARY_GDK);

	// gdk.TouchEvent

	Linker.link(gdk_touch_event_get_type, "gdk_touch_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_touch_event_get_emulating_pointer, "gdk_touch_event_get_emulating_pointer", LIBRARY_GDK);

	// gdk.TouchpadEvent

	Linker.link(gdk_touchpad_event_get_type, "gdk_touchpad_event_get_type", LIBRARY_GDK);
	Linker.link(gdk_touchpad_event_get_deltas, "gdk_touchpad_event_get_deltas", LIBRARY_GDK);
	Linker.link(gdk_touchpad_event_get_gesture_phase, "gdk_touchpad_event_get_gesture_phase", LIBRARY_GDK);
	Linker.link(gdk_touchpad_event_get_n_fingers, "gdk_touchpad_event_get_n_fingers", LIBRARY_GDK);
	Linker.link(gdk_touchpad_event_get_pinch_angle_delta, "gdk_touchpad_event_get_pinch_angle_delta", LIBRARY_GDK);
	Linker.link(gdk_touchpad_event_get_pinch_scale, "gdk_touchpad_event_get_pinch_scale", LIBRARY_GDK);

	// gdk.VulkanContext

	Linker.link(gdk_vulkan_context_get_type, "gdk_vulkan_context_get_type", LIBRARY_GDK);
}

__gshared extern(C)
{

	// gdk.AppLaunchContext

	GType function() c_gdk_app_launch_context_get_type;
	GdkDisplay* function(GdkAppLaunchContext* context) c_gdk_app_launch_context_get_display;
	void function(GdkAppLaunchContext* context, int desktop) c_gdk_app_launch_context_set_desktop;
	void function(GdkAppLaunchContext* context, GIcon* icon) c_gdk_app_launch_context_set_icon;
	void function(GdkAppLaunchContext* context, const(char)* iconName) c_gdk_app_launch_context_set_icon_name;
	void function(GdkAppLaunchContext* context, uint timestamp) c_gdk_app_launch_context_set_timestamp;

	// gdk.ButtonEvent

	GType function() c_gdk_button_event_get_type;
	uint function(GdkEvent* event) c_gdk_button_event_get_button;

	// gdk.CairoContext

	GType function() c_gdk_cairo_context_get_type;
	cairo_t* function(GdkCairoContext* self) c_gdk_cairo_context_cairo_create;

	// gdk.Clipboard

	GType function() c_gdk_clipboard_get_type;
	GdkContentProvider* function(GdkClipboard* clipboard) c_gdk_clipboard_get_content;
	GdkDisplay* function(GdkClipboard* clipboard) c_gdk_clipboard_get_display;
	GdkContentFormats* function(GdkClipboard* clipboard) c_gdk_clipboard_get_formats;
	int function(GdkClipboard* clipboard) c_gdk_clipboard_is_local;
	void function(GdkClipboard* clipboard, char** mimeTypes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_clipboard_read_async;
	GInputStream* function(GdkClipboard* clipboard, GAsyncResult* result, char** outMimeType, GError** err) c_gdk_clipboard_read_finish;
	void function(GdkClipboard* clipboard, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_clipboard_read_text_async;
	char* function(GdkClipboard* clipboard, GAsyncResult* result, GError** err) c_gdk_clipboard_read_text_finish;
	void function(GdkClipboard* clipboard, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_clipboard_read_texture_async;
	GdkTexture* function(GdkClipboard* clipboard, GAsyncResult* result, GError** err) c_gdk_clipboard_read_texture_finish;
	void function(GdkClipboard* clipboard, GType type, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_clipboard_read_value_async;
	GValue* function(GdkClipboard* clipboard, GAsyncResult* result, GError** err) c_gdk_clipboard_read_value_finish;
	void function(GdkClipboard* clipboard, GType type, ... ) c_gdk_clipboard_set;
	int function(GdkClipboard* clipboard, GdkContentProvider* provider) c_gdk_clipboard_set_content;
	void function(GdkClipboard* clipboard, const(char)* text) c_gdk_clipboard_set_text;
	void function(GdkClipboard* clipboard, GdkTexture* texture) c_gdk_clipboard_set_texture;
	void function(GdkClipboard* clipboard, GType type, void* args) c_gdk_clipboard_set_valist;
	void function(GdkClipboard* clipboard, GValue* value) c_gdk_clipboard_set_value;
	void function(GdkClipboard* clipboard, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_clipboard_store_async;
	int function(GdkClipboard* clipboard, GAsyncResult* result, GError** err) c_gdk_clipboard_store_finish;

	// gdk.ContentDeserializer

	GType function() c_gdk_content_deserializer_get_type;
	GCancellable* function(GdkContentDeserializer* deserializer) c_gdk_content_deserializer_get_cancellable;
	GType function(GdkContentDeserializer* deserializer) c_gdk_content_deserializer_get_gtype;
	GInputStream* function(GdkContentDeserializer* deserializer) c_gdk_content_deserializer_get_input_stream;
	const(char)* function(GdkContentDeserializer* deserializer) c_gdk_content_deserializer_get_mime_type;
	int function(GdkContentDeserializer* deserializer) c_gdk_content_deserializer_get_priority;
	void* function(GdkContentDeserializer* deserializer) c_gdk_content_deserializer_get_task_data;
	void* function(GdkContentDeserializer* deserializer) c_gdk_content_deserializer_get_user_data;
	GValue* function(GdkContentDeserializer* deserializer) c_gdk_content_deserializer_get_value;
	void function(GdkContentDeserializer* deserializer, GError* error) c_gdk_content_deserializer_return_error;
	void function(GdkContentDeserializer* deserializer) c_gdk_content_deserializer_return_success;
	void function(GdkContentDeserializer* deserializer, void* data, GDestroyNotify notify) c_gdk_content_deserializer_set_task_data;

	// gdk.ContentFormats

	GType function() c_gdk_content_formats_get_type;
	GdkContentFormats* function(char** mimeTypes, uint nMimeTypes) c_gdk_content_formats_new;
	GdkContentFormats* function(GType type) c_gdk_content_formats_new_for_gtype;
	int function(GdkContentFormats* formats, GType type) c_gdk_content_formats_contain_gtype;
	int function(GdkContentFormats* formats, const(char)* mimeType) c_gdk_content_formats_contain_mime_type;
	GType* function(GdkContentFormats* formats, size_t* nGtypes) c_gdk_content_formats_get_gtypes;
	char** function(GdkContentFormats* formats, size_t* nMimeTypes) c_gdk_content_formats_get_mime_types;
	int function(GdkContentFormats* first, GdkContentFormats* second) c_gdk_content_formats_match;
	GType function(GdkContentFormats* first, GdkContentFormats* second) c_gdk_content_formats_match_gtype;
	const(char)* function(GdkContentFormats* first, GdkContentFormats* second) c_gdk_content_formats_match_mime_type;
	void function(GdkContentFormats* formats, GString* string_) c_gdk_content_formats_print;
	GdkContentFormats* function(GdkContentFormats* formats) c_gdk_content_formats_ref;
	char* function(GdkContentFormats* formats) c_gdk_content_formats_to_string;
	GdkContentFormats* function(GdkContentFormats* first, GdkContentFormats* second) c_gdk_content_formats_union;
	GdkContentFormats* function(GdkContentFormats* formats) c_gdk_content_formats_union_deserialize_gtypes;
	GdkContentFormats* function(GdkContentFormats* formats) c_gdk_content_formats_union_deserialize_mime_types;
	GdkContentFormats* function(GdkContentFormats* formats) c_gdk_content_formats_union_serialize_gtypes;
	GdkContentFormats* function(GdkContentFormats* formats) c_gdk_content_formats_union_serialize_mime_types;
	void function(GdkContentFormats* formats) c_gdk_content_formats_unref;
	GdkContentFormats* function(const(char)* string_) c_gdk_content_formats_parse;

	// gdk.ContentFormatsBuilder

	GType function() c_gdk_content_formats_builder_get_type;
	GdkContentFormatsBuilder* function() c_gdk_content_formats_builder_new;
	void function(GdkContentFormatsBuilder* builder, GdkContentFormats* formats) c_gdk_content_formats_builder_add_formats;
	void function(GdkContentFormatsBuilder* builder, GType type) c_gdk_content_formats_builder_add_gtype;
	void function(GdkContentFormatsBuilder* builder, const(char)* mimeType) c_gdk_content_formats_builder_add_mime_type;
	GdkContentFormats* function(GdkContentFormatsBuilder* builder) c_gdk_content_formats_builder_free_to_formats;
	GdkContentFormatsBuilder* function(GdkContentFormatsBuilder* builder) c_gdk_content_formats_builder_ref;
	GdkContentFormats* function(GdkContentFormatsBuilder* builder) c_gdk_content_formats_builder_to_formats;
	void function(GdkContentFormatsBuilder* builder) c_gdk_content_formats_builder_unref;

	// gdk.ContentProvider

	GType function() c_gdk_content_provider_get_type;
	GdkContentProvider* function(const(char)* mimeType, GBytes* bytes) c_gdk_content_provider_new_for_bytes;
	GdkContentProvider* function(GValue* value) c_gdk_content_provider_new_for_value;
	GdkContentProvider* function(GType type, ... ) c_gdk_content_provider_new_typed;
	GdkContentProvider* function(GdkContentProvider** providers, size_t nProviders) c_gdk_content_provider_new_union;
	void function(GdkContentProvider* provider) c_gdk_content_provider_content_changed;
	int function(GdkContentProvider* provider, GValue* value, GError** err) c_gdk_content_provider_get_value;
	GdkContentFormats* function(GdkContentProvider* provider) c_gdk_content_provider_ref_formats;
	GdkContentFormats* function(GdkContentProvider* provider) c_gdk_content_provider_ref_storable_formats;
	void function(GdkContentProvider* provider, const(char)* mimeType, GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_content_provider_write_mime_type_async;
	int function(GdkContentProvider* provider, GAsyncResult* result, GError** err) c_gdk_content_provider_write_mime_type_finish;

	// gdk.ContentSerializer

	GType function() c_gdk_content_serializer_get_type;
	GCancellable* function(GdkContentSerializer* serializer) c_gdk_content_serializer_get_cancellable;
	GType function(GdkContentSerializer* serializer) c_gdk_content_serializer_get_gtype;
	const(char)* function(GdkContentSerializer* serializer) c_gdk_content_serializer_get_mime_type;
	GOutputStream* function(GdkContentSerializer* serializer) c_gdk_content_serializer_get_output_stream;
	int function(GdkContentSerializer* serializer) c_gdk_content_serializer_get_priority;
	void* function(GdkContentSerializer* serializer) c_gdk_content_serializer_get_task_data;
	void* function(GdkContentSerializer* serializer) c_gdk_content_serializer_get_user_data;
	GValue* function(GdkContentSerializer* serializer) c_gdk_content_serializer_get_value;
	void function(GdkContentSerializer* serializer, GError* error) c_gdk_content_serializer_return_error;
	void function(GdkContentSerializer* serializer) c_gdk_content_serializer_return_success;
	void function(GdkContentSerializer* serializer, void* data, GDestroyNotify notify) c_gdk_content_serializer_set_task_data;

	// gdk.CrossingEvent

	GType function() c_gdk_crossing_event_get_type;
	GdkNotifyType function(GdkEvent* event) c_gdk_crossing_event_get_detail;
	int function(GdkEvent* event) c_gdk_crossing_event_get_focus;
	GdkCrossingMode function(GdkEvent* event) c_gdk_crossing_event_get_mode;

	// gdk.Cursor

	GType function() c_gdk_cursor_get_type;
	GdkCursor* function(const(char)* name, GdkCursor* fallback) c_gdk_cursor_new_from_name;
	GdkCursor* function(GdkTexture* texture, int hotspotX, int hotspotY, GdkCursor* fallback) c_gdk_cursor_new_from_texture;
	GdkCursor* function(GdkCursor* cursor) c_gdk_cursor_get_fallback;
	int function(GdkCursor* cursor) c_gdk_cursor_get_hotspot_x;
	int function(GdkCursor* cursor) c_gdk_cursor_get_hotspot_y;
	const(char)* function(GdkCursor* cursor) c_gdk_cursor_get_name;
	GdkTexture* function(GdkCursor* cursor) c_gdk_cursor_get_texture;

	// gdk.DNDEvent

	GType function() c_gdk_dnd_event_get_type;
	GdkDrop* function(GdkEvent* event) c_gdk_dnd_event_get_drop;

	// gdk.DeleteEvent

	GType function() c_gdk_delete_event_get_type;

	// gdk.Device

	GType function() c_gdk_device_get_type;
	int function(GdkDevice* device) c_gdk_device_get_caps_lock_state;
	GdkDeviceTool* function(GdkDevice* device) c_gdk_device_get_device_tool;
	PangoDirection function(GdkDevice* device) c_gdk_device_get_direction;
	GdkDisplay* function(GdkDevice* device) c_gdk_device_get_display;
	int function(GdkDevice* device) c_gdk_device_get_has_cursor;
	GdkModifierType function(GdkDevice* device) c_gdk_device_get_modifier_state;
	const(char)* function(GdkDevice* device) c_gdk_device_get_name;
	int function(GdkDevice* device) c_gdk_device_get_num_lock_state;
	uint function(GdkDevice* device) c_gdk_device_get_num_touches;
	const(char)* function(GdkDevice* device) c_gdk_device_get_product_id;
	int function(GdkDevice* device) c_gdk_device_get_scroll_lock_state;
	GdkSeat* function(GdkDevice* device) c_gdk_device_get_seat;
	GdkInputSource function(GdkDevice* device) c_gdk_device_get_source;
	GdkSurface* function(GdkDevice* device, double* winX, double* winY) c_gdk_device_get_surface_at_position;
	uint function(GdkDevice* device) c_gdk_device_get_timestamp;
	const(char)* function(GdkDevice* device) c_gdk_device_get_vendor_id;
	int function(GdkDevice* device) c_gdk_device_has_bidi_layouts;

	// gdk.DevicePad

	GType function() c_gdk_device_pad_get_type;
	int function(GdkDevicePad* pad, GdkDevicePadFeature feature, int featureIdx) c_gdk_device_pad_get_feature_group;
	int function(GdkDevicePad* pad, int groupIdx) c_gdk_device_pad_get_group_n_modes;
	int function(GdkDevicePad* pad, GdkDevicePadFeature feature) c_gdk_device_pad_get_n_features;
	int function(GdkDevicePad* pad) c_gdk_device_pad_get_n_groups;

	// gdk.DeviceTool

	GType function() c_gdk_device_tool_get_type;
	GdkAxisFlags function(GdkDeviceTool* tool) c_gdk_device_tool_get_axes;
	ulong function(GdkDeviceTool* tool) c_gdk_device_tool_get_hardware_id;
	ulong function(GdkDeviceTool* tool) c_gdk_device_tool_get_serial;
	GdkDeviceToolType function(GdkDeviceTool* tool) c_gdk_device_tool_get_tool_type;

	// gdk.Display

	GType function() c_gdk_display_get_type;
	GdkDisplay* function() c_gdk_display_get_default;
	GdkDisplay* function(const(char)* displayName) c_gdk_display_open;
	void function(GdkDisplay* display) c_gdk_display_beep;
	void function(GdkDisplay* display) c_gdk_display_close;
	GdkGLContext* function(GdkDisplay* self, GError** err) c_gdk_display_create_gl_context;
	int function(GdkDisplay* display, GdkDevice* device) c_gdk_display_device_is_grabbed;
	void function(GdkDisplay* display) c_gdk_display_flush;
	GdkAppLaunchContext* function(GdkDisplay* display) c_gdk_display_get_app_launch_context;
	GdkClipboard* function(GdkDisplay* display) c_gdk_display_get_clipboard;
	GdkSeat* function(GdkDisplay* display) c_gdk_display_get_default_seat;
	GdkMonitor* function(GdkDisplay* display, GdkSurface* surface) c_gdk_display_get_monitor_at_surface;
	GListModel* function(GdkDisplay* self) c_gdk_display_get_monitors;
	const(char)* function(GdkDisplay* display) c_gdk_display_get_name;
	GdkClipboard* function(GdkDisplay* display) c_gdk_display_get_primary_clipboard;
	int function(GdkDisplay* display, const(char)* name, GValue* value) c_gdk_display_get_setting;
	const(char)* function(GdkDisplay* display) c_gdk_display_get_startup_notification_id;
	int function(GdkDisplay* display) c_gdk_display_is_closed;
	int function(GdkDisplay* display) c_gdk_display_is_composited;
	int function(GdkDisplay* display) c_gdk_display_is_rgba;
	GList* function(GdkDisplay* display) c_gdk_display_list_seats;
	int function(GdkDisplay* display, uint keycode, GdkKeymapKey** keys, uint** keyvals, int* nEntries) c_gdk_display_map_keycode;
	int function(GdkDisplay* display, uint keyval, GdkKeymapKey** keys, int* nKeys) c_gdk_display_map_keyval;
	void function(GdkDisplay* display, const(char)* startupId) c_gdk_display_notify_startup_complete;
	int function(GdkDisplay* self, GError** err) c_gdk_display_prepare_gl;
	void function(GdkDisplay* display, GdkEvent* event) c_gdk_display_put_event;
	int function(GdkDisplay* display) c_gdk_display_supports_input_shapes;
	void function(GdkDisplay* display) c_gdk_display_sync;
	int function(GdkDisplay* display, uint keycode, GdkModifierType state, int group, uint* keyval, int* effectiveGroup, int* level, GdkModifierType* consumed) c_gdk_display_translate_key;

	// gdk.DisplayManager

	GType function() c_gdk_display_manager_get_type;
	GdkDisplayManager* function() c_gdk_display_manager_get;
	GdkDisplay* function(GdkDisplayManager* manager) c_gdk_display_manager_get_default_display;
	GSList* function(GdkDisplayManager* manager) c_gdk_display_manager_list_displays;
	GdkDisplay* function(GdkDisplayManager* manager, const(char)* name) c_gdk_display_manager_open_display;
	void function(GdkDisplayManager* manager, GdkDisplay* display) c_gdk_display_manager_set_default_display;

	// gdk.Drag

	GType function() c_gdk_drag_get_type;
	GdkDrag* function(GdkSurface* surface, GdkDevice* device, GdkContentProvider* content, GdkDragAction actions, double dx, double dy) c_gdk_drag_begin;
	void function(GdkDrag* drag, int success) c_gdk_drag_drop_done;
	GdkDragAction function(GdkDrag* drag) c_gdk_drag_get_actions;
	GdkContentProvider* function(GdkDrag* drag) c_gdk_drag_get_content;
	GdkDevice* function(GdkDrag* drag) c_gdk_drag_get_device;
	GdkDisplay* function(GdkDrag* drag) c_gdk_drag_get_display;
	GdkSurface* function(GdkDrag* drag) c_gdk_drag_get_drag_surface;
	GdkContentFormats* function(GdkDrag* drag) c_gdk_drag_get_formats;
	GdkDragAction function(GdkDrag* drag) c_gdk_drag_get_selected_action;
	GdkSurface* function(GdkDrag* drag) c_gdk_drag_get_surface;
	void function(GdkDrag* drag, int hotX, int hotY) c_gdk_drag_set_hotspot;

	// gdk.DragSurface

	GType function() c_gdk_drag_surface_get_type;
	int function(GdkDragSurface* dragSurface, int width, int height) c_gdk_drag_surface_present;

	// gdk.DrawContext

	GType function() c_gdk_draw_context_get_type;
	void function(GdkDrawContext* context, cairo_region_t* region) c_gdk_draw_context_begin_frame;
	void function(GdkDrawContext* context) c_gdk_draw_context_end_frame;
	GdkDisplay* function(GdkDrawContext* context) c_gdk_draw_context_get_display;
	cairo_region_t* function(GdkDrawContext* context) c_gdk_draw_context_get_frame_region;
	GdkSurface* function(GdkDrawContext* context) c_gdk_draw_context_get_surface;
	int function(GdkDrawContext* context) c_gdk_draw_context_is_in_frame;

	// gdk.Drop

	GType function() c_gdk_drop_get_type;
	void function(GdkDrop* self, GdkDragAction action) c_gdk_drop_finish;
	GdkDragAction function(GdkDrop* self) c_gdk_drop_get_actions;
	GdkDevice* function(GdkDrop* self) c_gdk_drop_get_device;
	GdkDisplay* function(GdkDrop* self) c_gdk_drop_get_display;
	GdkDrag* function(GdkDrop* self) c_gdk_drop_get_drag;
	GdkContentFormats* function(GdkDrop* self) c_gdk_drop_get_formats;
	GdkSurface* function(GdkDrop* self) c_gdk_drop_get_surface;
	void function(GdkDrop* self, char** mimeTypes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_drop_read_async;
	GInputStream* function(GdkDrop* self, GAsyncResult* result, char** outMimeType, GError** err) c_gdk_drop_read_finish;
	void function(GdkDrop* self, GType type, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_drop_read_value_async;
	GValue* function(GdkDrop* self, GAsyncResult* result, GError** err) c_gdk_drop_read_value_finish;
	void function(GdkDrop* self, GdkDragAction actions, GdkDragAction preferred) c_gdk_drop_status;

	// gdk.Event

	GType function() c_gdk_event_get_type;
	int function(GdkEvent* event1, GdkEvent* event2, double* angle) c_gdk_events_get_angle;
	int function(GdkEvent* event1, GdkEvent* event2, double* x, double* y) c_gdk_events_get_center;
	int function(GdkEvent* event1, GdkEvent* event2, double* distance) c_gdk_events_get_distance;
	int function(GdkEvent* event, double** axes, uint* nAxes) c_gdk_event_get_axes;
	int function(GdkEvent* event, GdkAxisUse axisUse, double* value) c_gdk_event_get_axis;
	GdkDevice* function(GdkEvent* event) c_gdk_event_get_device;
	GdkDeviceTool* function(GdkEvent* event) c_gdk_event_get_device_tool;
	GdkDisplay* function(GdkEvent* event) c_gdk_event_get_display;
	GdkEventSequence* function(GdkEvent* event) c_gdk_event_get_event_sequence;
	GdkEventType function(GdkEvent* event) c_gdk_event_get_event_type;
	GdkTimeCoord* function(GdkEvent* event, uint* outNCoords) c_gdk_event_get_history;
	GdkModifierType function(GdkEvent* event) c_gdk_event_get_modifier_state;
	int function(GdkEvent* event) c_gdk_event_get_pointer_emulated;
	int function(GdkEvent* event, double* x, double* y) c_gdk_event_get_position;
	GdkSeat* function(GdkEvent* event) c_gdk_event_get_seat;
	GdkSurface* function(GdkEvent* event) c_gdk_event_get_surface;
	uint function(GdkEvent* event) c_gdk_event_get_time;
	GdkEvent* function(GdkEvent* event) c_gdk_event_ref;
	int function(GdkEvent* event) c_gdk_event_triggers_context_menu;
	void function(GdkEvent* event) c_gdk_event_unref;

	// gdk.EventSequence

	GType function() c_gdk_event_sequence_get_type;

	// gdk.FileList

	GType function() c_gdk_file_list_get_type;
	GSList* function(GdkFileList* fileList) c_gdk_file_list_get_files;

	// gdk.FocusEvent

	GType function() c_gdk_focus_event_get_type;
	int function(GdkEvent* event) c_gdk_focus_event_get_in;

	// gdk.FrameClock

	GType function() c_gdk_frame_clock_get_type;
	void function(GdkFrameClock* frameClock) c_gdk_frame_clock_begin_updating;
	void function(GdkFrameClock* frameClock) c_gdk_frame_clock_end_updating;
	GdkFrameTimings* function(GdkFrameClock* frameClock) c_gdk_frame_clock_get_current_timings;
	double function(GdkFrameClock* frameClock) c_gdk_frame_clock_get_fps;
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
	GdkGLAPI function(GdkGLContext* self) c_gdk_gl_context_get_allowed_apis;
	GdkGLAPI function(GdkGLContext* self) c_gdk_gl_context_get_api;
	int function(GdkGLContext* context) c_gdk_gl_context_get_debug_enabled;
	GdkDisplay* function(GdkGLContext* context) c_gdk_gl_context_get_display;
	int function(GdkGLContext* context) c_gdk_gl_context_get_forward_compatible;
	void function(GdkGLContext* context, int* major, int* minor) c_gdk_gl_context_get_required_version;
	GdkGLContext* function(GdkGLContext* context) c_gdk_gl_context_get_shared_context;
	GdkSurface* function(GdkGLContext* context) c_gdk_gl_context_get_surface;
	int function(GdkGLContext* context) c_gdk_gl_context_get_use_es;
	void function(GdkGLContext* context, int* major, int* minor) c_gdk_gl_context_get_version;
	int function(GdkGLContext* context) c_gdk_gl_context_is_legacy;
	int function(GdkGLContext* self, GdkGLContext* other) c_gdk_gl_context_is_shared;
	void function(GdkGLContext* context) c_gdk_gl_context_make_current;
	int function(GdkGLContext* context, GError** err) c_gdk_gl_context_realize;
	void function(GdkGLContext* self, GdkGLAPI apis) c_gdk_gl_context_set_allowed_apis;
	void function(GdkGLContext* context, int enabled) c_gdk_gl_context_set_debug_enabled;
	void function(GdkGLContext* context, int compatible) c_gdk_gl_context_set_forward_compatible;
	void function(GdkGLContext* context, int major, int minor) c_gdk_gl_context_set_required_version;
	void function(GdkGLContext* context, int useEs) c_gdk_gl_context_set_use_es;

	// gdk.GLTexture

	GType function() c_gdk_gl_texture_get_type;
	GdkTexture* function(GdkGLContext* context, uint id, int width, int height, GDestroyNotify destroy, void* data) c_gdk_gl_texture_new;
	void function(GdkGLTexture* self) c_gdk_gl_texture_release;

	// gdk.GrabBrokenEvent

	GType function() c_gdk_grab_broken_event_get_type;
	GdkSurface* function(GdkEvent* event) c_gdk_grab_broken_event_get_grab_surface;
	int function(GdkEvent* event) c_gdk_grab_broken_event_get_implicit;

	// gdk.KeyEvent

	GType function() c_gdk_key_event_get_type;
	GdkModifierType function(GdkEvent* event) c_gdk_key_event_get_consumed_modifiers;
	uint function(GdkEvent* event) c_gdk_key_event_get_keycode;
	uint function(GdkEvent* event) c_gdk_key_event_get_keyval;
	uint function(GdkEvent* event) c_gdk_key_event_get_layout;
	uint function(GdkEvent* event) c_gdk_key_event_get_level;
	int function(GdkEvent* event, uint* keyval, GdkModifierType* modifiers) c_gdk_key_event_get_match;
	int function(GdkEvent* event) c_gdk_key_event_is_modifier;
	GdkKeyMatch function(GdkEvent* event, uint keyval, GdkModifierType modifiers) c_gdk_key_event_matches;

	// gdk.MemoryTexture

	GType function() c_gdk_memory_texture_get_type;
	GdkTexture* function(int width, int height, GdkMemoryFormat format, GBytes* bytes, size_t stride) c_gdk_memory_texture_new;

	// gdk.MonitorGdk

	GType function() c_gdk_monitor_get_type;
	const(char)* function(GdkMonitor* monitor) c_gdk_monitor_get_connector;
	GdkDisplay* function(GdkMonitor* monitor) c_gdk_monitor_get_display;
	void function(GdkMonitor* monitor, GdkRectangle* geometry) c_gdk_monitor_get_geometry;
	int function(GdkMonitor* monitor) c_gdk_monitor_get_height_mm;
	const(char)* function(GdkMonitor* monitor) c_gdk_monitor_get_manufacturer;
	const(char)* function(GdkMonitor* monitor) c_gdk_monitor_get_model;
	int function(GdkMonitor* monitor) c_gdk_monitor_get_refresh_rate;
	int function(GdkMonitor* monitor) c_gdk_monitor_get_scale_factor;
	GdkSubpixelLayout function(GdkMonitor* monitor) c_gdk_monitor_get_subpixel_layout;
	int function(GdkMonitor* monitor) c_gdk_monitor_get_width_mm;
	int function(GdkMonitor* monitor) c_gdk_monitor_is_valid;

	// gdk.MotionEvent

	GType function() c_gdk_motion_event_get_type;

	// gdk.PadEvent

	GType function() c_gdk_pad_event_get_type;
	void function(GdkEvent* event, uint* index, double* value) c_gdk_pad_event_get_axis_value;
	uint function(GdkEvent* event) c_gdk_pad_event_get_button;
	void function(GdkEvent* event, uint* group, uint* mode) c_gdk_pad_event_get_group_mode;

	// gdk.Paintable

	GType function() c_gdk_paintable_get_type;
	GdkPaintable* function(int intrinsicWidth, int intrinsicHeight) c_gdk_paintable_new_empty;
	void function(GdkPaintable* paintable, double specifiedWidth, double specifiedHeight, double defaultWidth, double defaultHeight, double* concreteWidth, double* concreteHeight) c_gdk_paintable_compute_concrete_size;
	GdkPaintable* function(GdkPaintable* paintable) c_gdk_paintable_get_current_image;
	GdkPaintableFlags function(GdkPaintable* paintable) c_gdk_paintable_get_flags;
	double function(GdkPaintable* paintable) c_gdk_paintable_get_intrinsic_aspect_ratio;
	int function(GdkPaintable* paintable) c_gdk_paintable_get_intrinsic_height;
	int function(GdkPaintable* paintable) c_gdk_paintable_get_intrinsic_width;
	void function(GdkPaintable* paintable) c_gdk_paintable_invalidate_contents;
	void function(GdkPaintable* paintable) c_gdk_paintable_invalidate_size;
	void function(GdkPaintable* paintable, GdkSnapshot* snapshot, double width, double height) c_gdk_paintable_snapshot;

	// gdk.Popup

	GType function() c_gdk_popup_get_type;
	int function(GdkPopup* popup) c_gdk_popup_get_autohide;
	GdkSurface* function(GdkPopup* popup) c_gdk_popup_get_parent;
	int function(GdkPopup* popup) c_gdk_popup_get_position_x;
	int function(GdkPopup* popup) c_gdk_popup_get_position_y;
	GdkGravity function(GdkPopup* popup) c_gdk_popup_get_rect_anchor;
	GdkGravity function(GdkPopup* popup) c_gdk_popup_get_surface_anchor;
	int function(GdkPopup* popup, int width, int height, GdkPopupLayout* layout) c_gdk_popup_present;

	// gdk.PopupLayout

	GType function() c_gdk_popup_layout_get_type;
	GdkPopupLayout* function(GdkRectangle* anchorRect, GdkGravity rectAnchor, GdkGravity surfaceAnchor) c_gdk_popup_layout_new;
	GdkPopupLayout* function(GdkPopupLayout* layout) c_gdk_popup_layout_copy;
	int function(GdkPopupLayout* layout, GdkPopupLayout* other) c_gdk_popup_layout_equal;
	GdkAnchorHints function(GdkPopupLayout* layout) c_gdk_popup_layout_get_anchor_hints;
	GdkRectangle* function(GdkPopupLayout* layout) c_gdk_popup_layout_get_anchor_rect;
	void function(GdkPopupLayout* layout, int* dx, int* dy) c_gdk_popup_layout_get_offset;
	GdkGravity function(GdkPopupLayout* layout) c_gdk_popup_layout_get_rect_anchor;
	void function(GdkPopupLayout* layout, int* left, int* right, int* top, int* bottom) c_gdk_popup_layout_get_shadow_width;
	GdkGravity function(GdkPopupLayout* layout) c_gdk_popup_layout_get_surface_anchor;
	GdkPopupLayout* function(GdkPopupLayout* layout) c_gdk_popup_layout_ref;
	void function(GdkPopupLayout* layout, GdkAnchorHints anchorHints) c_gdk_popup_layout_set_anchor_hints;
	void function(GdkPopupLayout* layout, GdkRectangle* anchorRect) c_gdk_popup_layout_set_anchor_rect;
	void function(GdkPopupLayout* layout, int dx, int dy) c_gdk_popup_layout_set_offset;
	void function(GdkPopupLayout* layout, GdkGravity anchor) c_gdk_popup_layout_set_rect_anchor;
	void function(GdkPopupLayout* layout, int left, int right, int top, int bottom) c_gdk_popup_layout_set_shadow_width;
	void function(GdkPopupLayout* layout, GdkGravity anchor) c_gdk_popup_layout_set_surface_anchor;
	void function(GdkPopupLayout* layout) c_gdk_popup_layout_unref;

	// gdk.ProximityEvent

	GType function() c_gdk_proximity_event_get_type;

	// gdk.RGBA

	GType function() c_gdk_rgba_get_type;
	GdkRGBA* function(GdkRGBA* rgba) c_gdk_rgba_copy;
	int function(void* p1, void* p2) c_gdk_rgba_equal;
	void function(GdkRGBA* rgba) c_gdk_rgba_free;
	uint function(void* p) c_gdk_rgba_hash;
	int function(GdkRGBA* rgba) c_gdk_rgba_is_clear;
	int function(GdkRGBA* rgba) c_gdk_rgba_is_opaque;
	int function(GdkRGBA* rgba, const(char)* spec) c_gdk_rgba_parse;
	char* function(GdkRGBA* rgba) c_gdk_rgba_to_string;

	// gdk.Rectangle

	GType function() c_gdk_rectangle_get_type;
	int function(GdkRectangle* rect, int x, int y) c_gdk_rectangle_contains_point;
	int function(GdkRectangle* rect1, GdkRectangle* rect2) c_gdk_rectangle_equal;
	int function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest) c_gdk_rectangle_intersect;
	void function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest) c_gdk_rectangle_union;

	// gdk.ScrollEvent

	GType function() c_gdk_scroll_event_get_type;
	void function(GdkEvent* event, double* deltaX, double* deltaY) c_gdk_scroll_event_get_deltas;
	GdkScrollDirection function(GdkEvent* event) c_gdk_scroll_event_get_direction;
	int function(GdkEvent* event) c_gdk_scroll_event_is_stop;

	// gdk.Seat

	GType function() c_gdk_seat_get_type;
	GdkSeatCapabilities function(GdkSeat* seat) c_gdk_seat_get_capabilities;
	GList* function(GdkSeat* seat, GdkSeatCapabilities capabilities) c_gdk_seat_get_devices;
	GdkDisplay* function(GdkSeat* seat) c_gdk_seat_get_display;
	GdkDevice* function(GdkSeat* seat) c_gdk_seat_get_keyboard;
	GdkDevice* function(GdkSeat* seat) c_gdk_seat_get_pointer;
	GList* function(GdkSeat* seat) c_gdk_seat_get_tools;

	// gdk.Snapshot

	GType function() c_gdk_snapshot_get_type;

	// gdk.Surface

	GType function() c_gdk_surface_get_type;
	GdkSurface* function(GdkSurface* parent, int autohide) c_gdk_surface_new_popup;
	GdkSurface* function(GdkDisplay* display) c_gdk_surface_new_toplevel;
	void function(GdkSurface* surface) c_gdk_surface_beep;
	GdkCairoContext* function(GdkSurface* surface) c_gdk_surface_create_cairo_context;
	GdkGLContext* function(GdkSurface* surface, GError** err) c_gdk_surface_create_gl_context;
	cairo_surface_t* function(GdkSurface* surface, cairo_content_t content, int width, int height) c_gdk_surface_create_similar_surface;
	GdkVulkanContext* function(GdkSurface* surface, GError** err) c_gdk_surface_create_vulkan_context;
	void function(GdkSurface* surface) c_gdk_surface_destroy;
	GdkCursor* function(GdkSurface* surface) c_gdk_surface_get_cursor;
	GdkCursor* function(GdkSurface* surface, GdkDevice* device) c_gdk_surface_get_device_cursor;
	int function(GdkSurface* surface, GdkDevice* device, double* x, double* y, GdkModifierType* mask) c_gdk_surface_get_device_position;
	GdkDisplay* function(GdkSurface* surface) c_gdk_surface_get_display;
	GdkFrameClock* function(GdkSurface* surface) c_gdk_surface_get_frame_clock;
	int function(GdkSurface* surface) c_gdk_surface_get_height;
	int function(GdkSurface* surface) c_gdk_surface_get_mapped;
	int function(GdkSurface* surface) c_gdk_surface_get_scale_factor;
	int function(GdkSurface* surface) c_gdk_surface_get_width;
	void function(GdkSurface* surface) c_gdk_surface_hide;
	int function(GdkSurface* surface) c_gdk_surface_is_destroyed;
	void function(GdkSurface* surface) c_gdk_surface_queue_render;
	void function(GdkSurface* surface) c_gdk_surface_request_layout;
	void function(GdkSurface* surface, GdkCursor* cursor) c_gdk_surface_set_cursor;
	void function(GdkSurface* surface, GdkDevice* device, GdkCursor* cursor) c_gdk_surface_set_device_cursor;
	void function(GdkSurface* surface, cairo_region_t* region) c_gdk_surface_set_input_region;
	void function(GdkSurface* surface, cairo_region_t* region) c_gdk_surface_set_opaque_region;
	int function(GdkSurface* from, GdkSurface* to, double* x, double* y) c_gdk_surface_translate_coordinates;

	// gdk.Texture

	GType function() c_gdk_texture_get_type;
	GdkTexture* function(GdkPixbuf* pixbuf) c_gdk_texture_new_for_pixbuf;
	GdkTexture* function(GBytes* bytes, GError** err) c_gdk_texture_new_from_bytes;
	GdkTexture* function(GFile* file, GError** err) c_gdk_texture_new_from_file;
	GdkTexture* function(char* path, GError** err) c_gdk_texture_new_from_filename;
	GdkTexture* function(const(char)* resourcePath) c_gdk_texture_new_from_resource;
	void function(GdkTexture* texture, char* data, size_t stride) c_gdk_texture_download;
	int function(GdkTexture* texture) c_gdk_texture_get_height;
	int function(GdkTexture* texture) c_gdk_texture_get_width;
	int function(GdkTexture* texture, char* filename) c_gdk_texture_save_to_png;
	GBytes* function(GdkTexture* texture) c_gdk_texture_save_to_png_bytes;
	int function(GdkTexture* texture, char* filename) c_gdk_texture_save_to_tiff;
	GBytes* function(GdkTexture* texture) c_gdk_texture_save_to_tiff_bytes;

	// gdk.Toplevel

	GType function() c_gdk_toplevel_get_type;
	void function(GdkToplevel* toplevel, GdkDevice* device, int button, double x, double y, uint timestamp) c_gdk_toplevel_begin_move;
	void function(GdkToplevel* toplevel, GdkSurfaceEdge edge, GdkDevice* device, int button, double x, double y, uint timestamp) c_gdk_toplevel_begin_resize;
	void function(GdkToplevel* toplevel, uint timestamp) c_gdk_toplevel_focus;
	GdkToplevelState function(GdkToplevel* toplevel) c_gdk_toplevel_get_state;
	void function(GdkToplevel* toplevel, GdkEvent* event) c_gdk_toplevel_inhibit_system_shortcuts;
	int function(GdkToplevel* toplevel) c_gdk_toplevel_lower;
	int function(GdkToplevel* toplevel) c_gdk_toplevel_minimize;
	void function(GdkToplevel* toplevel, GdkToplevelLayout* layout) c_gdk_toplevel_present;
	void function(GdkToplevel* toplevel) c_gdk_toplevel_restore_system_shortcuts;
	void function(GdkToplevel* toplevel, int decorated) c_gdk_toplevel_set_decorated;
	void function(GdkToplevel* toplevel, int deletable) c_gdk_toplevel_set_deletable;
	void function(GdkToplevel* toplevel, GList* surfaces) c_gdk_toplevel_set_icon_list;
	void function(GdkToplevel* toplevel, int modal) c_gdk_toplevel_set_modal;
	void function(GdkToplevel* toplevel, const(char)* startupId) c_gdk_toplevel_set_startup_id;
	void function(GdkToplevel* toplevel, const(char)* title) c_gdk_toplevel_set_title;
	void function(GdkToplevel* toplevel, GdkSurface* parent) c_gdk_toplevel_set_transient_for;
	int function(GdkToplevel* toplevel, GdkEvent* event) c_gdk_toplevel_show_window_menu;
	int function(GdkToplevel* toplevel) c_gdk_toplevel_supports_edge_constraints;
	int function(GdkToplevel* toplevel, GdkTitlebarGesture gesture) c_gdk_toplevel_titlebar_gesture;

	// gdk.ToplevelLayout

	GType function() c_gdk_toplevel_layout_get_type;
	GdkToplevelLayout* function() c_gdk_toplevel_layout_new;
	GdkToplevelLayout* function(GdkToplevelLayout* layout) c_gdk_toplevel_layout_copy;
	int function(GdkToplevelLayout* layout, GdkToplevelLayout* other) c_gdk_toplevel_layout_equal;
	int function(GdkToplevelLayout* layout, int* fullscreen) c_gdk_toplevel_layout_get_fullscreen;
	GdkMonitor* function(GdkToplevelLayout* layout) c_gdk_toplevel_layout_get_fullscreen_monitor;
	int function(GdkToplevelLayout* layout, int* maximized) c_gdk_toplevel_layout_get_maximized;
	int function(GdkToplevelLayout* layout) c_gdk_toplevel_layout_get_resizable;
	GdkToplevelLayout* function(GdkToplevelLayout* layout) c_gdk_toplevel_layout_ref;
	void function(GdkToplevelLayout* layout, int fullscreen, GdkMonitor* monitor) c_gdk_toplevel_layout_set_fullscreen;
	void function(GdkToplevelLayout* layout, int maximized) c_gdk_toplevel_layout_set_maximized;
	void function(GdkToplevelLayout* layout, int resizable) c_gdk_toplevel_layout_set_resizable;
	void function(GdkToplevelLayout* layout) c_gdk_toplevel_layout_unref;

	// gdk.ToplevelSize

	void function(GdkToplevelSize* size, int* boundsWidth, int* boundsHeight) c_gdk_toplevel_size_get_bounds;
	void function(GdkToplevelSize* size, int minWidth, int minHeight) c_gdk_toplevel_size_set_min_size;
	void function(GdkToplevelSize* size, int left, int right, int top, int bottom) c_gdk_toplevel_size_set_shadow_width;
	void function(GdkToplevelSize* size, int width, int height) c_gdk_toplevel_size_set_size;

	// gdk.TouchEvent

	GType function() c_gdk_touch_event_get_type;
	int function(GdkEvent* event) c_gdk_touch_event_get_emulating_pointer;

	// gdk.TouchpadEvent

	GType function() c_gdk_touchpad_event_get_type;
	void function(GdkEvent* event, double* dx, double* dy) c_gdk_touchpad_event_get_deltas;
	GdkTouchpadGesturePhase function(GdkEvent* event) c_gdk_touchpad_event_get_gesture_phase;
	uint function(GdkEvent* event) c_gdk_touchpad_event_get_n_fingers;
	double function(GdkEvent* event) c_gdk_touchpad_event_get_pinch_angle_delta;
	double function(GdkEvent* event) c_gdk_touchpad_event_get_pinch_scale;

	// gdk.VulkanContext

	GType function() c_gdk_vulkan_context_get_type;
}


// gdk.AppLaunchContext

alias c_gdk_app_launch_context_get_type gdk_app_launch_context_get_type;
alias c_gdk_app_launch_context_get_display gdk_app_launch_context_get_display;
alias c_gdk_app_launch_context_set_desktop gdk_app_launch_context_set_desktop;
alias c_gdk_app_launch_context_set_icon gdk_app_launch_context_set_icon;
alias c_gdk_app_launch_context_set_icon_name gdk_app_launch_context_set_icon_name;
alias c_gdk_app_launch_context_set_timestamp gdk_app_launch_context_set_timestamp;

// gdk.ButtonEvent

alias c_gdk_button_event_get_type gdk_button_event_get_type;
alias c_gdk_button_event_get_button gdk_button_event_get_button;

// gdk.CairoContext

alias c_gdk_cairo_context_get_type gdk_cairo_context_get_type;
alias c_gdk_cairo_context_cairo_create gdk_cairo_context_cairo_create;

// gdk.Clipboard

alias c_gdk_clipboard_get_type gdk_clipboard_get_type;
alias c_gdk_clipboard_get_content gdk_clipboard_get_content;
alias c_gdk_clipboard_get_display gdk_clipboard_get_display;
alias c_gdk_clipboard_get_formats gdk_clipboard_get_formats;
alias c_gdk_clipboard_is_local gdk_clipboard_is_local;
alias c_gdk_clipboard_read_async gdk_clipboard_read_async;
alias c_gdk_clipboard_read_finish gdk_clipboard_read_finish;
alias c_gdk_clipboard_read_text_async gdk_clipboard_read_text_async;
alias c_gdk_clipboard_read_text_finish gdk_clipboard_read_text_finish;
alias c_gdk_clipboard_read_texture_async gdk_clipboard_read_texture_async;
alias c_gdk_clipboard_read_texture_finish gdk_clipboard_read_texture_finish;
alias c_gdk_clipboard_read_value_async gdk_clipboard_read_value_async;
alias c_gdk_clipboard_read_value_finish gdk_clipboard_read_value_finish;
alias c_gdk_clipboard_set gdk_clipboard_set;
alias c_gdk_clipboard_set_content gdk_clipboard_set_content;
alias c_gdk_clipboard_set_text gdk_clipboard_set_text;
alias c_gdk_clipboard_set_texture gdk_clipboard_set_texture;
alias c_gdk_clipboard_set_valist gdk_clipboard_set_valist;
alias c_gdk_clipboard_set_value gdk_clipboard_set_value;
alias c_gdk_clipboard_store_async gdk_clipboard_store_async;
alias c_gdk_clipboard_store_finish gdk_clipboard_store_finish;

// gdk.ContentDeserializer

alias c_gdk_content_deserializer_get_type gdk_content_deserializer_get_type;
alias c_gdk_content_deserializer_get_cancellable gdk_content_deserializer_get_cancellable;
alias c_gdk_content_deserializer_get_gtype gdk_content_deserializer_get_gtype;
alias c_gdk_content_deserializer_get_input_stream gdk_content_deserializer_get_input_stream;
alias c_gdk_content_deserializer_get_mime_type gdk_content_deserializer_get_mime_type;
alias c_gdk_content_deserializer_get_priority gdk_content_deserializer_get_priority;
alias c_gdk_content_deserializer_get_task_data gdk_content_deserializer_get_task_data;
alias c_gdk_content_deserializer_get_user_data gdk_content_deserializer_get_user_data;
alias c_gdk_content_deserializer_get_value gdk_content_deserializer_get_value;
alias c_gdk_content_deserializer_return_error gdk_content_deserializer_return_error;
alias c_gdk_content_deserializer_return_success gdk_content_deserializer_return_success;
alias c_gdk_content_deserializer_set_task_data gdk_content_deserializer_set_task_data;

// gdk.ContentFormats

alias c_gdk_content_formats_get_type gdk_content_formats_get_type;
alias c_gdk_content_formats_new gdk_content_formats_new;
alias c_gdk_content_formats_new_for_gtype gdk_content_formats_new_for_gtype;
alias c_gdk_content_formats_contain_gtype gdk_content_formats_contain_gtype;
alias c_gdk_content_formats_contain_mime_type gdk_content_formats_contain_mime_type;
alias c_gdk_content_formats_get_gtypes gdk_content_formats_get_gtypes;
alias c_gdk_content_formats_get_mime_types gdk_content_formats_get_mime_types;
alias c_gdk_content_formats_match gdk_content_formats_match;
alias c_gdk_content_formats_match_gtype gdk_content_formats_match_gtype;
alias c_gdk_content_formats_match_mime_type gdk_content_formats_match_mime_type;
alias c_gdk_content_formats_print gdk_content_formats_print;
alias c_gdk_content_formats_ref gdk_content_formats_ref;
alias c_gdk_content_formats_to_string gdk_content_formats_to_string;
alias c_gdk_content_formats_union gdk_content_formats_union;
alias c_gdk_content_formats_union_deserialize_gtypes gdk_content_formats_union_deserialize_gtypes;
alias c_gdk_content_formats_union_deserialize_mime_types gdk_content_formats_union_deserialize_mime_types;
alias c_gdk_content_formats_union_serialize_gtypes gdk_content_formats_union_serialize_gtypes;
alias c_gdk_content_formats_union_serialize_mime_types gdk_content_formats_union_serialize_mime_types;
alias c_gdk_content_formats_unref gdk_content_formats_unref;
alias c_gdk_content_formats_parse gdk_content_formats_parse;

// gdk.ContentFormatsBuilder

alias c_gdk_content_formats_builder_get_type gdk_content_formats_builder_get_type;
alias c_gdk_content_formats_builder_new gdk_content_formats_builder_new;
alias c_gdk_content_formats_builder_add_formats gdk_content_formats_builder_add_formats;
alias c_gdk_content_formats_builder_add_gtype gdk_content_formats_builder_add_gtype;
alias c_gdk_content_formats_builder_add_mime_type gdk_content_formats_builder_add_mime_type;
alias c_gdk_content_formats_builder_free_to_formats gdk_content_formats_builder_free_to_formats;
alias c_gdk_content_formats_builder_ref gdk_content_formats_builder_ref;
alias c_gdk_content_formats_builder_to_formats gdk_content_formats_builder_to_formats;
alias c_gdk_content_formats_builder_unref gdk_content_formats_builder_unref;

// gdk.ContentProvider

alias c_gdk_content_provider_get_type gdk_content_provider_get_type;
alias c_gdk_content_provider_new_for_bytes gdk_content_provider_new_for_bytes;
alias c_gdk_content_provider_new_for_value gdk_content_provider_new_for_value;
alias c_gdk_content_provider_new_typed gdk_content_provider_new_typed;
alias c_gdk_content_provider_new_union gdk_content_provider_new_union;
alias c_gdk_content_provider_content_changed gdk_content_provider_content_changed;
alias c_gdk_content_provider_get_value gdk_content_provider_get_value;
alias c_gdk_content_provider_ref_formats gdk_content_provider_ref_formats;
alias c_gdk_content_provider_ref_storable_formats gdk_content_provider_ref_storable_formats;
alias c_gdk_content_provider_write_mime_type_async gdk_content_provider_write_mime_type_async;
alias c_gdk_content_provider_write_mime_type_finish gdk_content_provider_write_mime_type_finish;

// gdk.ContentSerializer

alias c_gdk_content_serializer_get_type gdk_content_serializer_get_type;
alias c_gdk_content_serializer_get_cancellable gdk_content_serializer_get_cancellable;
alias c_gdk_content_serializer_get_gtype gdk_content_serializer_get_gtype;
alias c_gdk_content_serializer_get_mime_type gdk_content_serializer_get_mime_type;
alias c_gdk_content_serializer_get_output_stream gdk_content_serializer_get_output_stream;
alias c_gdk_content_serializer_get_priority gdk_content_serializer_get_priority;
alias c_gdk_content_serializer_get_task_data gdk_content_serializer_get_task_data;
alias c_gdk_content_serializer_get_user_data gdk_content_serializer_get_user_data;
alias c_gdk_content_serializer_get_value gdk_content_serializer_get_value;
alias c_gdk_content_serializer_return_error gdk_content_serializer_return_error;
alias c_gdk_content_serializer_return_success gdk_content_serializer_return_success;
alias c_gdk_content_serializer_set_task_data gdk_content_serializer_set_task_data;

// gdk.CrossingEvent

alias c_gdk_crossing_event_get_type gdk_crossing_event_get_type;
alias c_gdk_crossing_event_get_detail gdk_crossing_event_get_detail;
alias c_gdk_crossing_event_get_focus gdk_crossing_event_get_focus;
alias c_gdk_crossing_event_get_mode gdk_crossing_event_get_mode;

// gdk.Cursor

alias c_gdk_cursor_get_type gdk_cursor_get_type;
alias c_gdk_cursor_new_from_name gdk_cursor_new_from_name;
alias c_gdk_cursor_new_from_texture gdk_cursor_new_from_texture;
alias c_gdk_cursor_get_fallback gdk_cursor_get_fallback;
alias c_gdk_cursor_get_hotspot_x gdk_cursor_get_hotspot_x;
alias c_gdk_cursor_get_hotspot_y gdk_cursor_get_hotspot_y;
alias c_gdk_cursor_get_name gdk_cursor_get_name;
alias c_gdk_cursor_get_texture gdk_cursor_get_texture;

// gdk.DNDEvent

alias c_gdk_dnd_event_get_type gdk_dnd_event_get_type;
alias c_gdk_dnd_event_get_drop gdk_dnd_event_get_drop;

// gdk.DeleteEvent

alias c_gdk_delete_event_get_type gdk_delete_event_get_type;

// gdk.Device

alias c_gdk_device_get_type gdk_device_get_type;
alias c_gdk_device_get_caps_lock_state gdk_device_get_caps_lock_state;
alias c_gdk_device_get_device_tool gdk_device_get_device_tool;
alias c_gdk_device_get_direction gdk_device_get_direction;
alias c_gdk_device_get_display gdk_device_get_display;
alias c_gdk_device_get_has_cursor gdk_device_get_has_cursor;
alias c_gdk_device_get_modifier_state gdk_device_get_modifier_state;
alias c_gdk_device_get_name gdk_device_get_name;
alias c_gdk_device_get_num_lock_state gdk_device_get_num_lock_state;
alias c_gdk_device_get_num_touches gdk_device_get_num_touches;
alias c_gdk_device_get_product_id gdk_device_get_product_id;
alias c_gdk_device_get_scroll_lock_state gdk_device_get_scroll_lock_state;
alias c_gdk_device_get_seat gdk_device_get_seat;
alias c_gdk_device_get_source gdk_device_get_source;
alias c_gdk_device_get_surface_at_position gdk_device_get_surface_at_position;
alias c_gdk_device_get_timestamp gdk_device_get_timestamp;
alias c_gdk_device_get_vendor_id gdk_device_get_vendor_id;
alias c_gdk_device_has_bidi_layouts gdk_device_has_bidi_layouts;

// gdk.DevicePad

alias c_gdk_device_pad_get_type gdk_device_pad_get_type;
alias c_gdk_device_pad_get_feature_group gdk_device_pad_get_feature_group;
alias c_gdk_device_pad_get_group_n_modes gdk_device_pad_get_group_n_modes;
alias c_gdk_device_pad_get_n_features gdk_device_pad_get_n_features;
alias c_gdk_device_pad_get_n_groups gdk_device_pad_get_n_groups;

// gdk.DeviceTool

alias c_gdk_device_tool_get_type gdk_device_tool_get_type;
alias c_gdk_device_tool_get_axes gdk_device_tool_get_axes;
alias c_gdk_device_tool_get_hardware_id gdk_device_tool_get_hardware_id;
alias c_gdk_device_tool_get_serial gdk_device_tool_get_serial;
alias c_gdk_device_tool_get_tool_type gdk_device_tool_get_tool_type;

// gdk.Display

alias c_gdk_display_get_type gdk_display_get_type;
alias c_gdk_display_get_default gdk_display_get_default;
alias c_gdk_display_open gdk_display_open;
alias c_gdk_display_beep gdk_display_beep;
alias c_gdk_display_close gdk_display_close;
alias c_gdk_display_create_gl_context gdk_display_create_gl_context;
alias c_gdk_display_device_is_grabbed gdk_display_device_is_grabbed;
alias c_gdk_display_flush gdk_display_flush;
alias c_gdk_display_get_app_launch_context gdk_display_get_app_launch_context;
alias c_gdk_display_get_clipboard gdk_display_get_clipboard;
alias c_gdk_display_get_default_seat gdk_display_get_default_seat;
alias c_gdk_display_get_monitor_at_surface gdk_display_get_monitor_at_surface;
alias c_gdk_display_get_monitors gdk_display_get_monitors;
alias c_gdk_display_get_name gdk_display_get_name;
alias c_gdk_display_get_primary_clipboard gdk_display_get_primary_clipboard;
alias c_gdk_display_get_setting gdk_display_get_setting;
alias c_gdk_display_get_startup_notification_id gdk_display_get_startup_notification_id;
alias c_gdk_display_is_closed gdk_display_is_closed;
alias c_gdk_display_is_composited gdk_display_is_composited;
alias c_gdk_display_is_rgba gdk_display_is_rgba;
alias c_gdk_display_list_seats gdk_display_list_seats;
alias c_gdk_display_map_keycode gdk_display_map_keycode;
alias c_gdk_display_map_keyval gdk_display_map_keyval;
alias c_gdk_display_notify_startup_complete gdk_display_notify_startup_complete;
alias c_gdk_display_prepare_gl gdk_display_prepare_gl;
alias c_gdk_display_put_event gdk_display_put_event;
alias c_gdk_display_supports_input_shapes gdk_display_supports_input_shapes;
alias c_gdk_display_sync gdk_display_sync;
alias c_gdk_display_translate_key gdk_display_translate_key;

// gdk.DisplayManager

alias c_gdk_display_manager_get_type gdk_display_manager_get_type;
alias c_gdk_display_manager_get gdk_display_manager_get;
alias c_gdk_display_manager_get_default_display gdk_display_manager_get_default_display;
alias c_gdk_display_manager_list_displays gdk_display_manager_list_displays;
alias c_gdk_display_manager_open_display gdk_display_manager_open_display;
alias c_gdk_display_manager_set_default_display gdk_display_manager_set_default_display;

// gdk.Drag

alias c_gdk_drag_get_type gdk_drag_get_type;
alias c_gdk_drag_begin gdk_drag_begin;
alias c_gdk_drag_drop_done gdk_drag_drop_done;
alias c_gdk_drag_get_actions gdk_drag_get_actions;
alias c_gdk_drag_get_content gdk_drag_get_content;
alias c_gdk_drag_get_device gdk_drag_get_device;
alias c_gdk_drag_get_display gdk_drag_get_display;
alias c_gdk_drag_get_drag_surface gdk_drag_get_drag_surface;
alias c_gdk_drag_get_formats gdk_drag_get_formats;
alias c_gdk_drag_get_selected_action gdk_drag_get_selected_action;
alias c_gdk_drag_get_surface gdk_drag_get_surface;
alias c_gdk_drag_set_hotspot gdk_drag_set_hotspot;

// gdk.DragSurface

alias c_gdk_drag_surface_get_type gdk_drag_surface_get_type;
alias c_gdk_drag_surface_present gdk_drag_surface_present;

// gdk.DrawContext

alias c_gdk_draw_context_get_type gdk_draw_context_get_type;
alias c_gdk_draw_context_begin_frame gdk_draw_context_begin_frame;
alias c_gdk_draw_context_end_frame gdk_draw_context_end_frame;
alias c_gdk_draw_context_get_display gdk_draw_context_get_display;
alias c_gdk_draw_context_get_frame_region gdk_draw_context_get_frame_region;
alias c_gdk_draw_context_get_surface gdk_draw_context_get_surface;
alias c_gdk_draw_context_is_in_frame gdk_draw_context_is_in_frame;

// gdk.Drop

alias c_gdk_drop_get_type gdk_drop_get_type;
alias c_gdk_drop_finish gdk_drop_finish;
alias c_gdk_drop_get_actions gdk_drop_get_actions;
alias c_gdk_drop_get_device gdk_drop_get_device;
alias c_gdk_drop_get_display gdk_drop_get_display;
alias c_gdk_drop_get_drag gdk_drop_get_drag;
alias c_gdk_drop_get_formats gdk_drop_get_formats;
alias c_gdk_drop_get_surface gdk_drop_get_surface;
alias c_gdk_drop_read_async gdk_drop_read_async;
alias c_gdk_drop_read_finish gdk_drop_read_finish;
alias c_gdk_drop_read_value_async gdk_drop_read_value_async;
alias c_gdk_drop_read_value_finish gdk_drop_read_value_finish;
alias c_gdk_drop_status gdk_drop_status;

// gdk.Event

alias c_gdk_event_get_type gdk_event_get_type;
alias c_gdk_events_get_angle gdk_events_get_angle;
alias c_gdk_events_get_center gdk_events_get_center;
alias c_gdk_events_get_distance gdk_events_get_distance;
alias c_gdk_event_get_axes gdk_event_get_axes;
alias c_gdk_event_get_axis gdk_event_get_axis;
alias c_gdk_event_get_device gdk_event_get_device;
alias c_gdk_event_get_device_tool gdk_event_get_device_tool;
alias c_gdk_event_get_display gdk_event_get_display;
alias c_gdk_event_get_event_sequence gdk_event_get_event_sequence;
alias c_gdk_event_get_event_type gdk_event_get_event_type;
alias c_gdk_event_get_history gdk_event_get_history;
alias c_gdk_event_get_modifier_state gdk_event_get_modifier_state;
alias c_gdk_event_get_pointer_emulated gdk_event_get_pointer_emulated;
alias c_gdk_event_get_position gdk_event_get_position;
alias c_gdk_event_get_seat gdk_event_get_seat;
alias c_gdk_event_get_surface gdk_event_get_surface;
alias c_gdk_event_get_time gdk_event_get_time;
alias c_gdk_event_ref gdk_event_ref;
alias c_gdk_event_triggers_context_menu gdk_event_triggers_context_menu;
alias c_gdk_event_unref gdk_event_unref;

// gdk.EventSequence

alias c_gdk_event_sequence_get_type gdk_event_sequence_get_type;

// gdk.FileList

alias c_gdk_file_list_get_type gdk_file_list_get_type;
alias c_gdk_file_list_get_files gdk_file_list_get_files;

// gdk.FocusEvent

alias c_gdk_focus_event_get_type gdk_focus_event_get_type;
alias c_gdk_focus_event_get_in gdk_focus_event_get_in;

// gdk.FrameClock

alias c_gdk_frame_clock_get_type gdk_frame_clock_get_type;
alias c_gdk_frame_clock_begin_updating gdk_frame_clock_begin_updating;
alias c_gdk_frame_clock_end_updating gdk_frame_clock_end_updating;
alias c_gdk_frame_clock_get_current_timings gdk_frame_clock_get_current_timings;
alias c_gdk_frame_clock_get_fps gdk_frame_clock_get_fps;
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
alias c_gdk_gl_context_get_allowed_apis gdk_gl_context_get_allowed_apis;
alias c_gdk_gl_context_get_api gdk_gl_context_get_api;
alias c_gdk_gl_context_get_debug_enabled gdk_gl_context_get_debug_enabled;
alias c_gdk_gl_context_get_display gdk_gl_context_get_display;
alias c_gdk_gl_context_get_forward_compatible gdk_gl_context_get_forward_compatible;
alias c_gdk_gl_context_get_required_version gdk_gl_context_get_required_version;
alias c_gdk_gl_context_get_shared_context gdk_gl_context_get_shared_context;
alias c_gdk_gl_context_get_surface gdk_gl_context_get_surface;
alias c_gdk_gl_context_get_use_es gdk_gl_context_get_use_es;
alias c_gdk_gl_context_get_version gdk_gl_context_get_version;
alias c_gdk_gl_context_is_legacy gdk_gl_context_is_legacy;
alias c_gdk_gl_context_is_shared gdk_gl_context_is_shared;
alias c_gdk_gl_context_make_current gdk_gl_context_make_current;
alias c_gdk_gl_context_realize gdk_gl_context_realize;
alias c_gdk_gl_context_set_allowed_apis gdk_gl_context_set_allowed_apis;
alias c_gdk_gl_context_set_debug_enabled gdk_gl_context_set_debug_enabled;
alias c_gdk_gl_context_set_forward_compatible gdk_gl_context_set_forward_compatible;
alias c_gdk_gl_context_set_required_version gdk_gl_context_set_required_version;
alias c_gdk_gl_context_set_use_es gdk_gl_context_set_use_es;

// gdk.GLTexture

alias c_gdk_gl_texture_get_type gdk_gl_texture_get_type;
alias c_gdk_gl_texture_new gdk_gl_texture_new;
alias c_gdk_gl_texture_release gdk_gl_texture_release;

// gdk.GrabBrokenEvent

alias c_gdk_grab_broken_event_get_type gdk_grab_broken_event_get_type;
alias c_gdk_grab_broken_event_get_grab_surface gdk_grab_broken_event_get_grab_surface;
alias c_gdk_grab_broken_event_get_implicit gdk_grab_broken_event_get_implicit;

// gdk.KeyEvent

alias c_gdk_key_event_get_type gdk_key_event_get_type;
alias c_gdk_key_event_get_consumed_modifiers gdk_key_event_get_consumed_modifiers;
alias c_gdk_key_event_get_keycode gdk_key_event_get_keycode;
alias c_gdk_key_event_get_keyval gdk_key_event_get_keyval;
alias c_gdk_key_event_get_layout gdk_key_event_get_layout;
alias c_gdk_key_event_get_level gdk_key_event_get_level;
alias c_gdk_key_event_get_match gdk_key_event_get_match;
alias c_gdk_key_event_is_modifier gdk_key_event_is_modifier;
alias c_gdk_key_event_matches gdk_key_event_matches;

// gdk.MemoryTexture

alias c_gdk_memory_texture_get_type gdk_memory_texture_get_type;
alias c_gdk_memory_texture_new gdk_memory_texture_new;

// gdk.MonitorGdk

alias c_gdk_monitor_get_type gdk_monitor_get_type;
alias c_gdk_monitor_get_connector gdk_monitor_get_connector;
alias c_gdk_monitor_get_display gdk_monitor_get_display;
alias c_gdk_monitor_get_geometry gdk_monitor_get_geometry;
alias c_gdk_monitor_get_height_mm gdk_monitor_get_height_mm;
alias c_gdk_monitor_get_manufacturer gdk_monitor_get_manufacturer;
alias c_gdk_monitor_get_model gdk_monitor_get_model;
alias c_gdk_monitor_get_refresh_rate gdk_monitor_get_refresh_rate;
alias c_gdk_monitor_get_scale_factor gdk_monitor_get_scale_factor;
alias c_gdk_monitor_get_subpixel_layout gdk_monitor_get_subpixel_layout;
alias c_gdk_monitor_get_width_mm gdk_monitor_get_width_mm;
alias c_gdk_monitor_is_valid gdk_monitor_is_valid;

// gdk.MotionEvent

alias c_gdk_motion_event_get_type gdk_motion_event_get_type;

// gdk.PadEvent

alias c_gdk_pad_event_get_type gdk_pad_event_get_type;
alias c_gdk_pad_event_get_axis_value gdk_pad_event_get_axis_value;
alias c_gdk_pad_event_get_button gdk_pad_event_get_button;
alias c_gdk_pad_event_get_group_mode gdk_pad_event_get_group_mode;

// gdk.Paintable

alias c_gdk_paintable_get_type gdk_paintable_get_type;
alias c_gdk_paintable_new_empty gdk_paintable_new_empty;
alias c_gdk_paintable_compute_concrete_size gdk_paintable_compute_concrete_size;
alias c_gdk_paintable_get_current_image gdk_paintable_get_current_image;
alias c_gdk_paintable_get_flags gdk_paintable_get_flags;
alias c_gdk_paintable_get_intrinsic_aspect_ratio gdk_paintable_get_intrinsic_aspect_ratio;
alias c_gdk_paintable_get_intrinsic_height gdk_paintable_get_intrinsic_height;
alias c_gdk_paintable_get_intrinsic_width gdk_paintable_get_intrinsic_width;
alias c_gdk_paintable_invalidate_contents gdk_paintable_invalidate_contents;
alias c_gdk_paintable_invalidate_size gdk_paintable_invalidate_size;
alias c_gdk_paintable_snapshot gdk_paintable_snapshot;

// gdk.Popup

alias c_gdk_popup_get_type gdk_popup_get_type;
alias c_gdk_popup_get_autohide gdk_popup_get_autohide;
alias c_gdk_popup_get_parent gdk_popup_get_parent;
alias c_gdk_popup_get_position_x gdk_popup_get_position_x;
alias c_gdk_popup_get_position_y gdk_popup_get_position_y;
alias c_gdk_popup_get_rect_anchor gdk_popup_get_rect_anchor;
alias c_gdk_popup_get_surface_anchor gdk_popup_get_surface_anchor;
alias c_gdk_popup_present gdk_popup_present;

// gdk.PopupLayout

alias c_gdk_popup_layout_get_type gdk_popup_layout_get_type;
alias c_gdk_popup_layout_new gdk_popup_layout_new;
alias c_gdk_popup_layout_copy gdk_popup_layout_copy;
alias c_gdk_popup_layout_equal gdk_popup_layout_equal;
alias c_gdk_popup_layout_get_anchor_hints gdk_popup_layout_get_anchor_hints;
alias c_gdk_popup_layout_get_anchor_rect gdk_popup_layout_get_anchor_rect;
alias c_gdk_popup_layout_get_offset gdk_popup_layout_get_offset;
alias c_gdk_popup_layout_get_rect_anchor gdk_popup_layout_get_rect_anchor;
alias c_gdk_popup_layout_get_shadow_width gdk_popup_layout_get_shadow_width;
alias c_gdk_popup_layout_get_surface_anchor gdk_popup_layout_get_surface_anchor;
alias c_gdk_popup_layout_ref gdk_popup_layout_ref;
alias c_gdk_popup_layout_set_anchor_hints gdk_popup_layout_set_anchor_hints;
alias c_gdk_popup_layout_set_anchor_rect gdk_popup_layout_set_anchor_rect;
alias c_gdk_popup_layout_set_offset gdk_popup_layout_set_offset;
alias c_gdk_popup_layout_set_rect_anchor gdk_popup_layout_set_rect_anchor;
alias c_gdk_popup_layout_set_shadow_width gdk_popup_layout_set_shadow_width;
alias c_gdk_popup_layout_set_surface_anchor gdk_popup_layout_set_surface_anchor;
alias c_gdk_popup_layout_unref gdk_popup_layout_unref;

// gdk.ProximityEvent

alias c_gdk_proximity_event_get_type gdk_proximity_event_get_type;

// gdk.RGBA

alias c_gdk_rgba_get_type gdk_rgba_get_type;
alias c_gdk_rgba_copy gdk_rgba_copy;
alias c_gdk_rgba_equal gdk_rgba_equal;
alias c_gdk_rgba_free gdk_rgba_free;
alias c_gdk_rgba_hash gdk_rgba_hash;
alias c_gdk_rgba_is_clear gdk_rgba_is_clear;
alias c_gdk_rgba_is_opaque gdk_rgba_is_opaque;
alias c_gdk_rgba_parse gdk_rgba_parse;
alias c_gdk_rgba_to_string gdk_rgba_to_string;

// gdk.Rectangle

alias c_gdk_rectangle_get_type gdk_rectangle_get_type;
alias c_gdk_rectangle_contains_point gdk_rectangle_contains_point;
alias c_gdk_rectangle_equal gdk_rectangle_equal;
alias c_gdk_rectangle_intersect gdk_rectangle_intersect;
alias c_gdk_rectangle_union gdk_rectangle_union;

// gdk.ScrollEvent

alias c_gdk_scroll_event_get_type gdk_scroll_event_get_type;
alias c_gdk_scroll_event_get_deltas gdk_scroll_event_get_deltas;
alias c_gdk_scroll_event_get_direction gdk_scroll_event_get_direction;
alias c_gdk_scroll_event_is_stop gdk_scroll_event_is_stop;

// gdk.Seat

alias c_gdk_seat_get_type gdk_seat_get_type;
alias c_gdk_seat_get_capabilities gdk_seat_get_capabilities;
alias c_gdk_seat_get_devices gdk_seat_get_devices;
alias c_gdk_seat_get_display gdk_seat_get_display;
alias c_gdk_seat_get_keyboard gdk_seat_get_keyboard;
alias c_gdk_seat_get_pointer gdk_seat_get_pointer;
alias c_gdk_seat_get_tools gdk_seat_get_tools;

// gdk.Snapshot

alias c_gdk_snapshot_get_type gdk_snapshot_get_type;

// gdk.Surface

alias c_gdk_surface_get_type gdk_surface_get_type;
alias c_gdk_surface_new_popup gdk_surface_new_popup;
alias c_gdk_surface_new_toplevel gdk_surface_new_toplevel;
alias c_gdk_surface_beep gdk_surface_beep;
alias c_gdk_surface_create_cairo_context gdk_surface_create_cairo_context;
alias c_gdk_surface_create_gl_context gdk_surface_create_gl_context;
alias c_gdk_surface_create_similar_surface gdk_surface_create_similar_surface;
alias c_gdk_surface_create_vulkan_context gdk_surface_create_vulkan_context;
alias c_gdk_surface_destroy gdk_surface_destroy;
alias c_gdk_surface_get_cursor gdk_surface_get_cursor;
alias c_gdk_surface_get_device_cursor gdk_surface_get_device_cursor;
alias c_gdk_surface_get_device_position gdk_surface_get_device_position;
alias c_gdk_surface_get_display gdk_surface_get_display;
alias c_gdk_surface_get_frame_clock gdk_surface_get_frame_clock;
alias c_gdk_surface_get_height gdk_surface_get_height;
alias c_gdk_surface_get_mapped gdk_surface_get_mapped;
alias c_gdk_surface_get_scale_factor gdk_surface_get_scale_factor;
alias c_gdk_surface_get_width gdk_surface_get_width;
alias c_gdk_surface_hide gdk_surface_hide;
alias c_gdk_surface_is_destroyed gdk_surface_is_destroyed;
alias c_gdk_surface_queue_render gdk_surface_queue_render;
alias c_gdk_surface_request_layout gdk_surface_request_layout;
alias c_gdk_surface_set_cursor gdk_surface_set_cursor;
alias c_gdk_surface_set_device_cursor gdk_surface_set_device_cursor;
alias c_gdk_surface_set_input_region gdk_surface_set_input_region;
alias c_gdk_surface_set_opaque_region gdk_surface_set_opaque_region;
alias c_gdk_surface_translate_coordinates gdk_surface_translate_coordinates;

// gdk.Texture

alias c_gdk_texture_get_type gdk_texture_get_type;
alias c_gdk_texture_new_for_pixbuf gdk_texture_new_for_pixbuf;
alias c_gdk_texture_new_from_bytes gdk_texture_new_from_bytes;
alias c_gdk_texture_new_from_file gdk_texture_new_from_file;
alias c_gdk_texture_new_from_filename gdk_texture_new_from_filename;
alias c_gdk_texture_new_from_resource gdk_texture_new_from_resource;
alias c_gdk_texture_download gdk_texture_download;
alias c_gdk_texture_get_height gdk_texture_get_height;
alias c_gdk_texture_get_width gdk_texture_get_width;
alias c_gdk_texture_save_to_png gdk_texture_save_to_png;
alias c_gdk_texture_save_to_png_bytes gdk_texture_save_to_png_bytes;
alias c_gdk_texture_save_to_tiff gdk_texture_save_to_tiff;
alias c_gdk_texture_save_to_tiff_bytes gdk_texture_save_to_tiff_bytes;

// gdk.Toplevel

alias c_gdk_toplevel_get_type gdk_toplevel_get_type;
alias c_gdk_toplevel_begin_move gdk_toplevel_begin_move;
alias c_gdk_toplevel_begin_resize gdk_toplevel_begin_resize;
alias c_gdk_toplevel_focus gdk_toplevel_focus;
alias c_gdk_toplevel_get_state gdk_toplevel_get_state;
alias c_gdk_toplevel_inhibit_system_shortcuts gdk_toplevel_inhibit_system_shortcuts;
alias c_gdk_toplevel_lower gdk_toplevel_lower;
alias c_gdk_toplevel_minimize gdk_toplevel_minimize;
alias c_gdk_toplevel_present gdk_toplevel_present;
alias c_gdk_toplevel_restore_system_shortcuts gdk_toplevel_restore_system_shortcuts;
alias c_gdk_toplevel_set_decorated gdk_toplevel_set_decorated;
alias c_gdk_toplevel_set_deletable gdk_toplevel_set_deletable;
alias c_gdk_toplevel_set_icon_list gdk_toplevel_set_icon_list;
alias c_gdk_toplevel_set_modal gdk_toplevel_set_modal;
alias c_gdk_toplevel_set_startup_id gdk_toplevel_set_startup_id;
alias c_gdk_toplevel_set_title gdk_toplevel_set_title;
alias c_gdk_toplevel_set_transient_for gdk_toplevel_set_transient_for;
alias c_gdk_toplevel_show_window_menu gdk_toplevel_show_window_menu;
alias c_gdk_toplevel_supports_edge_constraints gdk_toplevel_supports_edge_constraints;
alias c_gdk_toplevel_titlebar_gesture gdk_toplevel_titlebar_gesture;

// gdk.ToplevelLayout

alias c_gdk_toplevel_layout_get_type gdk_toplevel_layout_get_type;
alias c_gdk_toplevel_layout_new gdk_toplevel_layout_new;
alias c_gdk_toplevel_layout_copy gdk_toplevel_layout_copy;
alias c_gdk_toplevel_layout_equal gdk_toplevel_layout_equal;
alias c_gdk_toplevel_layout_get_fullscreen gdk_toplevel_layout_get_fullscreen;
alias c_gdk_toplevel_layout_get_fullscreen_monitor gdk_toplevel_layout_get_fullscreen_monitor;
alias c_gdk_toplevel_layout_get_maximized gdk_toplevel_layout_get_maximized;
alias c_gdk_toplevel_layout_get_resizable gdk_toplevel_layout_get_resizable;
alias c_gdk_toplevel_layout_ref gdk_toplevel_layout_ref;
alias c_gdk_toplevel_layout_set_fullscreen gdk_toplevel_layout_set_fullscreen;
alias c_gdk_toplevel_layout_set_maximized gdk_toplevel_layout_set_maximized;
alias c_gdk_toplevel_layout_set_resizable gdk_toplevel_layout_set_resizable;
alias c_gdk_toplevel_layout_unref gdk_toplevel_layout_unref;

// gdk.ToplevelSize

alias c_gdk_toplevel_size_get_bounds gdk_toplevel_size_get_bounds;
alias c_gdk_toplevel_size_set_min_size gdk_toplevel_size_set_min_size;
alias c_gdk_toplevel_size_set_shadow_width gdk_toplevel_size_set_shadow_width;
alias c_gdk_toplevel_size_set_size gdk_toplevel_size_set_size;

// gdk.TouchEvent

alias c_gdk_touch_event_get_type gdk_touch_event_get_type;
alias c_gdk_touch_event_get_emulating_pointer gdk_touch_event_get_emulating_pointer;

// gdk.TouchpadEvent

alias c_gdk_touchpad_event_get_type gdk_touchpad_event_get_type;
alias c_gdk_touchpad_event_get_deltas gdk_touchpad_event_get_deltas;
alias c_gdk_touchpad_event_get_gesture_phase gdk_touchpad_event_get_gesture_phase;
alias c_gdk_touchpad_event_get_n_fingers gdk_touchpad_event_get_n_fingers;
alias c_gdk_touchpad_event_get_pinch_angle_delta gdk_touchpad_event_get_pinch_angle_delta;
alias c_gdk_touchpad_event_get_pinch_scale gdk_touchpad_event_get_pinch_scale;

// gdk.VulkanContext

alias c_gdk_vulkan_context_get_type gdk_vulkan_context_get_type;
