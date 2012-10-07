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

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gdktypes;
private import gtkc.cairotypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// gdk.Gdk

	Linker.link(gdk_init, \"gdk_init\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_init_check, \"gdk_init_check\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_parse_args, \"gdk_parse_args\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_display_arg_name, \"gdk_get_display_arg_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_notify_startup_complete, \"gdk_notify_startup_complete\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_notify_startup_complete_with_id, \"gdk_notify_startup_complete_with_id\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_program_class, \"gdk_get_program_class\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_program_class, \"gdk_set_program_class\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_display, \"gdk_get_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_flush, \"gdk_flush\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_width, \"gdk_screen_width\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_height, \"gdk_screen_height\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_width_mm, \"gdk_screen_width_mm\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_height_mm, \"gdk_screen_height_mm\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pointer_grab, \"gdk_pointer_grab\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pointer_ungrab, \"gdk_pointer_ungrab\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pointer_is_grabbed, \"gdk_pointer_is_grabbed\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_double_click_time, \"gdk_set_double_click_time\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyboard_grab, \"gdk_keyboard_grab\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyboard_ungrab, \"gdk_keyboard_ungrab\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_beep, \"gdk_beep\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_error_trap_push, \"gdk_error_trap_push\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_error_trap_pop, \"gdk_error_trap_pop\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_error_trap_pop_ignored, \"gdk_error_trap_pop_ignored\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.DisplayManager

	Linker.link(gdk_display_manager_get, \"gdk_display_manager_get\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_get_default_display, \"gdk_display_manager_get_default_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_set_default_display, \"gdk_display_manager_set_default_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_list_displays, \"gdk_display_manager_list_displays\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_open_display, \"gdk_display_manager_open_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Display

	Linker.link(gdk_display_open, \"gdk_display_open\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default, \"gdk_display_get_default\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_name, \"gdk_display_get_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_n_screens, \"gdk_display_get_n_screens\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_screen, \"gdk_display_get_screen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default_screen, \"gdk_display_get_default_screen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_device_manager, \"gdk_display_get_device_manager\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_pointer_ungrab, \"gdk_display_pointer_ungrab\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_keyboard_ungrab, \"gdk_display_keyboard_ungrab\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_pointer_is_grabbed, \"gdk_display_pointer_is_grabbed\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_device_is_grabbed, \"gdk_display_device_is_grabbed\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_beep, \"gdk_display_beep\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_sync, \"gdk_display_sync\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_flush, \"gdk_display_flush\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_close, \"gdk_display_close\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_is_closed, \"gdk_display_is_closed\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_event, \"gdk_display_get_event\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_peek_event, \"gdk_display_peek_event\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_put_event, \"gdk_display_put_event\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_has_pending, \"gdk_display_has_pending\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_set_double_click_time, \"gdk_display_set_double_click_time\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_set_double_click_distance, \"gdk_display_set_double_click_distance\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_pointer, \"gdk_display_get_pointer\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_list_devices, \"gdk_display_list_devices\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_window_at_pointer, \"gdk_display_get_window_at_pointer\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_warp_pointer, \"gdk_display_warp_pointer\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_cursor_color, \"gdk_display_supports_cursor_color\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_cursor_alpha, \"gdk_display_supports_cursor_alpha\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default_cursor_size, \"gdk_display_get_default_cursor_size\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_maximal_cursor_size, \"gdk_display_get_maximal_cursor_size\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default_group, \"gdk_display_get_default_group\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_selection_notification, \"gdk_display_supports_selection_notification\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_request_selection_notification, \"gdk_display_request_selection_notification\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_clipboard_persistence, \"gdk_display_supports_clipboard_persistence\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_store_clipboard, \"gdk_display_store_clipboard\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_shapes, \"gdk_display_supports_shapes\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_input_shapes, \"gdk_display_supports_input_shapes\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_composite, \"gdk_display_supports_composite\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_app_launch_context, \"gdk_display_get_app_launch_context\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_notify_startup_complete, \"gdk_display_notify_startup_complete\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Screen

	Linker.link(gdk_screen_get_default, \"gdk_screen_get_default\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_system_visual, \"gdk_screen_get_system_visual\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_rgba_visual, \"gdk_screen_get_rgba_visual\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_is_composited, \"gdk_screen_is_composited\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_root_window, \"gdk_screen_get_root_window\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_display, \"gdk_screen_get_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_number, \"gdk_screen_get_number\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_width, \"gdk_screen_get_width\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_height, \"gdk_screen_get_height\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_width_mm, \"gdk_screen_get_width_mm\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_height_mm, \"gdk_screen_get_height_mm\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_list_visuals, \"gdk_screen_list_visuals\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_toplevel_windows, \"gdk_screen_get_toplevel_windows\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_make_display_name, \"gdk_screen_make_display_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_n_monitors, \"gdk_screen_get_n_monitors\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_primary_monitor, \"gdk_screen_get_primary_monitor\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_geometry, \"gdk_screen_get_monitor_geometry\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_workarea, \"gdk_screen_get_monitor_workarea\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_at_point, \"gdk_screen_get_monitor_at_point\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_at_window, \"gdk_screen_get_monitor_at_window\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_height_mm, \"gdk_screen_get_monitor_height_mm\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_width_mm, \"gdk_screen_get_monitor_width_mm\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_plug_name, \"gdk_screen_get_monitor_plug_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_setting, \"gdk_screen_get_setting\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_font_options, \"gdk_screen_get_font_options\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_set_font_options, \"gdk_screen_set_font_options\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_resolution, \"gdk_screen_get_resolution\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_set_resolution, \"gdk_screen_set_resolution\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_active_window, \"gdk_screen_get_active_window\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_window_stack, \"gdk_screen_get_window_stack\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.DeviceManager

	Linker.link(gdk_disable_multidevice, \"gdk_disable_multidevice\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_manager_get_display, \"gdk_device_manager_get_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_manager_list_devices, \"gdk_device_manager_list_devices\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_manager_get_client_pointer, \"gdk_device_manager_get_client_pointer\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Device

	Linker.link(gdk_device_get_name, \"gdk_device_get_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_source, \"gdk_device_get_source\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_set_mode, \"gdk_device_set_mode\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_mode, \"gdk_device_get_mode\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_set_key, \"gdk_device_set_key\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_key, \"gdk_device_get_key\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_set_axis_use, \"gdk_device_set_axis_use\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_axis_use, \"gdk_device_get_axis_use\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_associated_device, \"gdk_device_get_associated_device\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_list_slave_devices, \"gdk_device_list_slave_devices\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_device_type, \"gdk_device_get_device_type\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_display, \"gdk_device_get_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_has_cursor, \"gdk_device_get_has_cursor\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_n_axes, \"gdk_device_get_n_axes\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_n_keys, \"gdk_device_get_n_keys\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_warp, \"gdk_device_warp\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_grab, \"gdk_device_grab\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_ungrab, \"gdk_device_ungrab\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_state, \"gdk_device_get_state\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_position, \"gdk_device_get_position\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_window_at_position, \"gdk_device_get_window_at_position\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_history, \"gdk_device_get_history\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_free_history, \"gdk_device_free_history\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_axis, \"gdk_device_get_axis\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_list_axes, \"gdk_device_list_axes\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_axis_value, \"gdk_device_get_axis_value\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.

	Linker.link(gdk_rectangle_intersect, \"gdk_rectangle_intersect\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rectangle_union, \"gdk_rectangle_union\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Pixbuf

	Linker.link(gdk_pixbuf_get_from_window, \"gdk_pixbuf_get_from_window\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_from_surface, \"gdk_pixbuf_get_from_surface\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_type, \"gdk_pixbuf_get_type\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new, \"gdk_pixbuf_new\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_data, \"gdk_pixbuf_new_from_data\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_xpm_data, \"gdk_pixbuf_new_from_xpm_data\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_inline, \"gdk_pixbuf_new_from_inline\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_subpixbuf, \"gdk_pixbuf_new_subpixbuf\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_copy, \"gdk_pixbuf_copy\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_colorspace, \"gdk_pixbuf_get_colorspace\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_n_channels, \"gdk_pixbuf_get_n_channels\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_has_alpha, \"gdk_pixbuf_get_has_alpha\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_bits_per_sample, \"gdk_pixbuf_get_bits_per_sample\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_pixels, \"gdk_pixbuf_get_pixels\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_pixels_with_length, \"gdk_pixbuf_get_pixels_with_length\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_width, \"gdk_pixbuf_get_width\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_height, \"gdk_pixbuf_get_height\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_rowstride, \"gdk_pixbuf_get_rowstride\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_byte_length, \"gdk_pixbuf_get_byte_length\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_option, \"gdk_pixbuf_get_option\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_ref, \"gdk_pixbuf_ref\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_unref, \"gdk_pixbuf_unref\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_file, \"gdk_pixbuf_new_from_file\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_file_at_size, \"gdk_pixbuf_new_from_file_at_size\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_file_at_scale, \"gdk_pixbuf_new_from_file_at_scale\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_file_info, \"gdk_pixbuf_get_file_info\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_resource, \"gdk_pixbuf_new_from_resource\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_resource_at_scale, \"gdk_pixbuf_new_from_resource_at_scale\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream, \"gdk_pixbuf_new_from_stream\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream_async, \"gdk_pixbuf_new_from_stream_async\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream_finish, \"gdk_pixbuf_new_from_stream_finish\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream_at_scale, \"gdk_pixbuf_new_from_stream_at_scale\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream_at_scale_async, \"gdk_pixbuf_new_from_stream_at_scale_async\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_savev, \"gdk_pixbuf_savev\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save, \"gdk_pixbuf_save\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_callback, \"gdk_pixbuf_save_to_callback\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_callbackv, \"gdk_pixbuf_save_to_callbackv\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_buffer, \"gdk_pixbuf_save_to_buffer\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_bufferv, \"gdk_pixbuf_save_to_bufferv\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_stream, \"gdk_pixbuf_save_to_stream\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_stream_async, \"gdk_pixbuf_save_to_stream_async\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_stream_finish, \"gdk_pixbuf_save_to_stream_finish\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_scale_simple, \"gdk_pixbuf_scale_simple\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_scale, \"gdk_pixbuf_scale\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_composite_color_simple, \"gdk_pixbuf_composite_color_simple\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_composite, \"gdk_pixbuf_composite\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_composite_color, \"gdk_pixbuf_composite_color\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_rotate_simple, \"gdk_pixbuf_rotate_simple\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_flip, \"gdk_pixbuf_flip\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_add_alpha, \"gdk_pixbuf_add_alpha\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_copy_area, \"gdk_pixbuf_copy_area\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_saturate_and_pixelate, \"gdk_pixbuf_saturate_and_pixelate\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_apply_embedded_orientation, \"gdk_pixbuf_apply_embedded_orientation\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_fill, \"gdk_pixbuf_fill\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Color

	Linker.link(gdk_color_copy, \"gdk_color_copy\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_free, \"gdk_color_free\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_parse, \"gdk_color_parse\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_equal, \"gdk_color_equal\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_hash, \"gdk_color_hash\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_to_string, \"gdk_color_to_string\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.RGBA

	Linker.link(gdk_rgba_copy, \"gdk_rgba_copy\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_free, \"gdk_rgba_free\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_parse, \"gdk_rgba_parse\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_equal, \"gdk_rgba_equal\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_hash, \"gdk_rgba_hash\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgba_to_string, \"gdk_rgba_to_string\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Visual

	Linker.link(gdk_query_depths, \"gdk_query_depths\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_query_visual_types, \"gdk_query_visual_types\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_list_visuals, \"gdk_list_visuals\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_bits_per_rgb, \"gdk_visual_get_bits_per_rgb\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_blue_pixel_details, \"gdk_visual_get_blue_pixel_details\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_byte_order, \"gdk_visual_get_byte_order\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_colormap_size, \"gdk_visual_get_colormap_size\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_depth, \"gdk_visual_get_depth\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_green_pixel_details, \"gdk_visual_get_green_pixel_details\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_red_pixel_details, \"gdk_visual_get_red_pixel_details\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_visual_type, \"gdk_visual_get_visual_type\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_depth, \"gdk_visual_get_best_depth\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_type, \"gdk_visual_get_best_type\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_system, \"gdk_visual_get_system\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best, \"gdk_visual_get_best\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_with_depth, \"gdk_visual_get_best_with_depth\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_with_type, \"gdk_visual_get_best_with_type\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_with_both, \"gdk_visual_get_best_with_both\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_screen, \"gdk_visual_get_screen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Cursor

	Linker.link(gdk_cursor_new, \"gdk_cursor_new\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_from_pixbuf, \"gdk_cursor_new_from_pixbuf\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_from_name, \"gdk_cursor_new_from_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_for_display, \"gdk_cursor_new_for_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_get_display, \"gdk_cursor_get_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_get_image, \"gdk_cursor_get_image\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_get_cursor_type, \"gdk_cursor_get_cursor_type\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_ref, \"gdk_cursor_ref\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_unref, \"gdk_cursor_unref\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Window

	Linker.link(gdk_window_new, \"gdk_window_new\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_destroy, \"gdk_window_destroy\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_window_type, \"gdk_window_get_window_type\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_display, \"gdk_window_get_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_screen, \"gdk_window_get_screen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_visual, \"gdk_window_get_visual\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_at_pointer, \"gdk_window_at_pointer\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_show, \"gdk_window_show\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_show_unraised, \"gdk_window_show_unraised\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_hide, \"gdk_window_hide\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_destroyed, \"gdk_window_is_destroyed\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_visible, \"gdk_window_is_visible\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_viewable, \"gdk_window_is_viewable\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_input_only, \"gdk_window_is_input_only\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_shaped, \"gdk_window_is_shaped\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_state, \"gdk_window_get_state\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_withdraw, \"gdk_window_withdraw\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_iconify, \"gdk_window_iconify\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_deiconify, \"gdk_window_deiconify\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_stick, \"gdk_window_stick\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unstick, \"gdk_window_unstick\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_maximize, \"gdk_window_maximize\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unmaximize, \"gdk_window_unmaximize\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_fullscreen, \"gdk_window_fullscreen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unfullscreen, \"gdk_window_unfullscreen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_keep_above, \"gdk_window_set_keep_above\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_keep_below, \"gdk_window_set_keep_below\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_opacity, \"gdk_window_set_opacity\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_composited, \"gdk_window_set_composited\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_composited, \"gdk_window_get_composited\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_move, \"gdk_window_move\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_resize, \"gdk_window_resize\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_move_resize, \"gdk_window_move_resize\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_scroll, \"gdk_window_scroll\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_move_region, \"gdk_window_move_region\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_flush, \"gdk_window_flush\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_has_native, \"gdk_window_has_native\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_ensure_native, \"gdk_window_ensure_native\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_reparent, \"gdk_window_reparent\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_raise, \"gdk_window_raise\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_lower, \"gdk_window_lower\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_restack, \"gdk_window_restack\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_focus, \"gdk_window_focus\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_register_dnd, \"gdk_window_register_dnd\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_resize_drag, \"gdk_window_begin_resize_drag\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_resize_drag_for_device, \"gdk_window_begin_resize_drag_for_device\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_move_drag, \"gdk_window_begin_move_drag\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_move_drag_for_device, \"gdk_window_begin_move_drag_for_device\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_constrain_size, \"gdk_window_constrain_size\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_beep, \"gdk_window_beep\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_clip_region, \"gdk_window_get_clip_region\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_paint_rect, \"gdk_window_begin_paint_rect\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_paint_region, \"gdk_window_begin_paint_region\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_end_paint, \"gdk_window_end_paint\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_visible_region, \"gdk_window_get_visible_region\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_invalidate_rect, \"gdk_window_invalidate_rect\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_invalidate_region, \"gdk_window_invalidate_region\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_invalidate_maybe_recurse, \"gdk_window_invalidate_maybe_recurse\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_update_area, \"gdk_window_get_update_area\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_freeze_updates, \"gdk_window_freeze_updates\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_thaw_updates, \"gdk_window_thaw_updates\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_process_all_updates, \"gdk_window_process_all_updates\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_process_updates, \"gdk_window_process_updates\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_debug_updates, \"gdk_window_set_debug_updates\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_enable_synchronized_configure, \"gdk_window_enable_synchronized_configure\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_configure_finished, \"gdk_window_configure_finished\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_user_data, \"gdk_window_set_user_data\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_override_redirect, \"gdk_window_set_override_redirect\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_accept_focus, \"gdk_window_set_accept_focus\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_accept_focus, \"gdk_window_get_accept_focus\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_focus_on_map, \"gdk_window_set_focus_on_map\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_focus_on_map, \"gdk_window_get_focus_on_map\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_add_filter, \"gdk_window_add_filter\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_remove_filter, \"gdk_window_remove_filter\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_shape_combine_region, \"gdk_window_shape_combine_region\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_child_shapes, \"gdk_window_set_child_shapes\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_merge_child_shapes, \"gdk_window_merge_child_shapes\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_input_shape_combine_region, \"gdk_window_input_shape_combine_region\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_child_input_shapes, \"gdk_window_set_child_input_shapes\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_merge_child_input_shapes, \"gdk_window_merge_child_input_shapes\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_static_gravities, \"gdk_window_set_static_gravities\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_title, \"gdk_window_set_title\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_background, \"gdk_window_set_background\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_background_rgba, \"gdk_window_set_background_rgba\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_background_pattern, \"gdk_window_set_background_pattern\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_background_pattern, \"gdk_window_get_background_pattern\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_cursor, \"gdk_window_set_cursor\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_cursor, \"gdk_window_get_cursor\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_user_data, \"gdk_window_get_user_data\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_geometry, \"gdk_window_get_geometry\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_geometry_hints, \"gdk_window_set_geometry_hints\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_width, \"gdk_window_get_width\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_height, \"gdk_window_get_height\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_icon_list, \"gdk_window_set_icon_list\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_modal_hint, \"gdk_window_set_modal_hint\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_modal_hint, \"gdk_window_get_modal_hint\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_type_hint, \"gdk_window_set_type_hint\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_type_hint, \"gdk_window_get_type_hint\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_skip_taskbar_hint, \"gdk_window_set_skip_taskbar_hint\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_skip_pager_hint, \"gdk_window_set_skip_pager_hint\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_urgency_hint, \"gdk_window_set_urgency_hint\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_position, \"gdk_window_get_position\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_root_origin, \"gdk_window_get_root_origin\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_frame_extents, \"gdk_window_get_frame_extents\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_origin, \"gdk_window_get_origin\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_root_coords, \"gdk_window_get_root_coords\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_pointer, \"gdk_window_get_pointer\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_device_position, \"gdk_window_get_device_position\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_parent, \"gdk_window_get_parent\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_toplevel, \"gdk_window_get_toplevel\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_children, \"gdk_window_get_children\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_peek_children, \"gdk_window_peek_children\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_events, \"gdk_window_get_events\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_events, \"gdk_window_set_events\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_icon_name, \"gdk_window_set_icon_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_transient_for, \"gdk_window_set_transient_for\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_role, \"gdk_window_set_role\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_startup_id, \"gdk_window_set_startup_id\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_group, \"gdk_window_set_group\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_group, \"gdk_window_get_group\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_decorations, \"gdk_window_set_decorations\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_decorations, \"gdk_window_get_decorations\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_functions, \"gdk_window_set_functions\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_default_root_window, \"gdk_get_default_root_window\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_support_multidevice, \"gdk_window_get_support_multidevice\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_support_multidevice, \"gdk_window_set_support_multidevice\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_device_cursor, \"gdk_window_get_device_cursor\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_device_cursor, \"gdk_window_set_device_cursor\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_device_events, \"gdk_window_get_device_events\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_device_events, \"gdk_window_set_device_events\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_source_events, \"gdk_window_get_source_events\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_source_events, \"gdk_window_set_source_events\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_offscreen_window_get_surface, \"gdk_offscreen_window_get_surface\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_offscreen_window_set_embedder, \"gdk_offscreen_window_set_embedder\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_offscreen_window_get_embedder, \"gdk_offscreen_window_get_embedder\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_geometry_changed, \"gdk_window_geometry_changed\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_coords_from_parent, \"gdk_window_coords_from_parent\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_coords_to_parent, \"gdk_window_coords_to_parent\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_effective_parent, \"gdk_window_get_effective_parent\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_effective_toplevel, \"gdk_window_get_effective_toplevel\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Event

	Linker.link(gdk_events_pending, \"gdk_events_pending\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_peek, \"gdk_event_peek\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get, \"gdk_event_get\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_put, \"gdk_event_put\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_new, \"gdk_event_new\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_copy, \"gdk_event_copy\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_free, \"gdk_event_free\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_axis, \"gdk_event_get_axis\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_button, \"gdk_event_get_button\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_click_count, \"gdk_event_get_click_count\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_coords, \"gdk_event_get_coords\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_keycode, \"gdk_event_get_keycode\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_keyval, \"gdk_event_get_keyval\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_root_coords, \"gdk_event_get_root_coords\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_scroll_direction, \"gdk_event_get_scroll_direction\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_scroll_deltas, \"gdk_event_get_scroll_deltas\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_state, \"gdk_event_get_state\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_time, \"gdk_event_get_time\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_event_sequence, \"gdk_event_get_event_sequence\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_request_motions, \"gdk_event_request_motions\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_events_get_angle, \"gdk_events_get_angle\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_events_get_center, \"gdk_events_get_center\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_events_get_distance, \"gdk_events_get_distance\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_triggers_context_menu, \"gdk_event_triggers_context_menu\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_handler_set, \"gdk_event_handler_set\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_show_events, \"gdk_get_show_events\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_show_events, \"gdk_set_show_events\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_set_screen, \"gdk_event_set_screen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_screen, \"gdk_event_get_screen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_device, \"gdk_event_get_device\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_set_device, \"gdk_event_set_device\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_source_device, \"gdk_event_get_source_device\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_set_source_device, \"gdk_event_set_source_device\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_setting_get, \"gdk_setting_get\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Keymap

	Linker.link(gdk_keymap_get_default, \"gdk_keymap_get_default\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_for_display, \"gdk_keymap_get_for_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_lookup_key, \"gdk_keymap_lookup_key\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_translate_keyboard_state, \"gdk_keymap_translate_keyboard_state\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_entries_for_keyval, \"gdk_keymap_get_entries_for_keyval\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_entries_for_keycode, \"gdk_keymap_get_entries_for_keycode\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_direction, \"gdk_keymap_get_direction\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_have_bidi_layouts, \"gdk_keymap_have_bidi_layouts\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_caps_lock_state, \"gdk_keymap_get_caps_lock_state\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_num_lock_state, \"gdk_keymap_get_num_lock_state\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_modifier_state, \"gdk_keymap_get_modifier_state\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_add_virtual_modifiers, \"gdk_keymap_add_virtual_modifiers\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_map_virtual_modifiers, \"gdk_keymap_map_virtual_modifiers\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_modifier_mask, \"gdk_keymap_get_modifier_mask\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_name, \"gdk_keyval_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_from_name, \"gdk_keyval_from_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_convert_case, \"gdk_keyval_convert_case\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_to_upper, \"gdk_keyval_to_upper\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_to_lower, \"gdk_keyval_to_lower\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_is_upper, \"gdk_keyval_is_upper\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_is_lower, \"gdk_keyval_is_lower\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_to_unicode, \"gdk_keyval_to_unicode\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_unicode_to_keyval, \"gdk_unicode_to_keyval\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Selection

	Linker.link(gdk_selection_owner_set, \"gdk_selection_owner_set\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_owner_set_for_display, \"gdk_selection_owner_set_for_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_owner_get, \"gdk_selection_owner_get\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_owner_get_for_display, \"gdk_selection_owner_get_for_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_convert, \"gdk_selection_convert\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_property_get, \"gdk_selection_property_get\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_send_notify, \"gdk_selection_send_notify\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_send_notify_for_display, \"gdk_selection_send_notify_for_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.DragContext

	Linker.link(gdk_drag_get_selection, \"gdk_drag_get_selection\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_abort, \"gdk_drag_abort\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drop_reply, \"gdk_drop_reply\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_drop, \"gdk_drag_drop\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_find_window_for_screen, \"gdk_drag_find_window_for_screen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_begin, \"gdk_drag_begin\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_begin_for_device, \"gdk_drag_begin_for_device\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_motion, \"gdk_drag_motion\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drop_finish, \"gdk_drop_finish\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_status, \"gdk_drag_status\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_drop_succeeded, \"gdk_drag_drop_succeeded\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_drag_protocol, \"gdk_window_get_drag_protocol\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_actions, \"gdk_drag_context_get_actions\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_suggested_action, \"gdk_drag_context_get_suggested_action\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_selected_action, \"gdk_drag_context_get_selected_action\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_list_targets, \"gdk_drag_context_list_targets\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_device, \"gdk_drag_context_get_device\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_set_device, \"gdk_drag_context_set_device\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_source_window, \"gdk_drag_context_get_source_window\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_dest_window, \"gdk_drag_context_get_dest_window\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_get_protocol, \"gdk_drag_context_get_protocol\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.

	Linker.link(gdk_text_property_to_utf8_list_for_display, \"gdk_text_property_to_utf8_list_for_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_utf8_to_string_target, \"gdk_utf8_to_string_target\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_atom_intern, \"gdk_atom_intern\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_atom_intern_static_string, \"gdk_atom_intern_static_string\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_atom_name, \"gdk_atom_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_property_get, \"gdk_property_get\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_property_change, \"gdk_property_change\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_property_delete, \"gdk_property_delete\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.

	Linker.link(gdk_threads_init, \"gdk_threads_init\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_enter, \"gdk_threads_enter\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_leave, \"gdk_threads_leave\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_set_lock_functions, \"gdk_threads_set_lock_functions\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_idle, \"gdk_threads_add_idle\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_idle_full, \"gdk_threads_add_idle_full\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout, \"gdk_threads_add_timeout\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout_full, \"gdk_threads_add_timeout_full\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout_seconds, \"gdk_threads_add_timeout_seconds\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout_seconds_full, \"gdk_threads_add_timeout_seconds_full\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.X11

	Linker.link(gdk_x11_get_server_time, \"gdk_x11_get_server_time\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_device_get_id, \"gdk_x11_device_get_id\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_device_manager_lookup, \"gdk_x11_device_manager_lookup\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_broadcast_startup_message, \"gdk_x11_display_broadcast_startup_message\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_get_startup_notification_id, \"gdk_x11_display_get_startup_notification_id\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_set_startup_notification_id, \"gdk_x11_display_set_startup_notification_id\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_error_trap_push, \"gdk_x11_display_error_trap_push\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_error_trap_pop, \"gdk_x11_display_error_trap_pop\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_error_trap_pop_ignored, \"gdk_x11_display_error_trap_pop_ignored\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_screen_get_monitor_output, \"gdk_x11_screen_get_monitor_output\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_get_xid, \"gdk_x11_window_get_xid\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_set_hide_titlebar_when_maximized, \"gdk_x11_window_set_hide_titlebar_when_maximized\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_set_theme_variant, \"gdk_x11_window_set_theme_variant\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_set_user_time, \"gdk_x11_window_set_user_time\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_move_to_current_desktop, \"gdk_x11_window_move_to_current_desktop\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_get_default_screen, \"gdk_x11_get_default_screen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_grab_server, \"gdk_x11_grab_server\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_ungrab_server, \"gdk_x11_ungrab_server\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_keymap_get_group_for_state, \"gdk_x11_keymap_get_group_for_state\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_keymap_key_is_modifier, \"gdk_x11_keymap_key_is_modifier\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_set_sm_client_id, \"gdk_x11_set_sm_client_id\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_text_property_to_text_list, \"gdk_x11_display_text_property_to_text_list\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_free_text_list, \"gdk_x11_free_text_list\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_string_to_compound_text, \"gdk_x11_display_string_to_compound_text\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_utf8_to_compound_text, \"gdk_x11_display_utf8_to_compound_text\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_free_compound_text, \"gdk_x11_free_compound_text\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.AppLaunchContext

	Linker.link(gdk_app_launch_context_new, \"gdk_app_launch_context_new\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_display, \"gdk_app_launch_context_set_display\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_screen, \"gdk_app_launch_context_set_screen\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_desktop, \"gdk_app_launch_context_set_desktop\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_timestamp, \"gdk_app_launch_context_set_timestamp\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_icon, \"gdk_app_launch_context_set_icon\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_icon_name, \"gdk_app_launch_context_set_icon_name\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Testing

	Linker.link(gdk_test_render_sync, \"gdk_test_render_sync\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_test_simulate_button, \"gdk_test_simulate_button\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_test_simulate_key, \"gdk_test_simulate_key\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.

	Linker.link(gdk_window_create_similar_surface, \"gdk_window_create_similar_surface\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_create, \"gdk_cairo_create\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_get_clip_rectangle, \"gdk_cairo_get_clip_rectangle\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_color, \"gdk_cairo_set_source_color\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_rgba, \"gdk_cairo_set_source_rgba\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_pixbuf, \"gdk_cairo_set_source_pixbuf\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_window, \"gdk_cairo_set_source_window\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_rectangle, \"gdk_cairo_rectangle\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_region, \"gdk_cairo_region\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_region_create_from_surface, \"gdk_cairo_region_create_from_surface\", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
}");

mixin( gshared ~"extern(C)
{
	// gdk.Gdk

	void function(gint* argc, gchar*** argv) c_gdk_init;
	gboolean function(gint* argc, gchar*** argv) c_gdk_init_check;
	void function(gint* argc, gchar*** argv) c_gdk_parse_args;
	gchar* function() c_gdk_get_display_arg_name;
	void function() c_gdk_notify_startup_complete;
	void function(gchar* startupId) c_gdk_notify_startup_complete_with_id;
	gchar* function() c_gdk_get_program_class;
	void function(gchar* programClass) c_gdk_set_program_class;
	gchar* function() c_gdk_get_display;
	void function() c_gdk_flush;
	gint function() c_gdk_screen_width;
	gint function() c_gdk_screen_height;
	gint function() c_gdk_screen_width_mm;
	gint function() c_gdk_screen_height_mm;
	GdkGrabStatus function(GdkWindow* window, gboolean ownerEvents, GdkEventMask eventMask, GdkWindow* confineTo, GdkCursor* cursor, guint32 time) c_gdk_pointer_grab;
	void function(guint32 time) c_gdk_pointer_ungrab;
	gboolean function() c_gdk_pointer_is_grabbed;
	void function(guint msec) c_gdk_set_double_click_time;
	GdkGrabStatus function(GdkWindow* window, gboolean ownerEvents, guint32 time) c_gdk_keyboard_grab;
	void function(guint32 time) c_gdk_keyboard_ungrab;
	void function() c_gdk_beep;
	void function() c_gdk_error_trap_push;
	gint function() c_gdk_error_trap_pop;
	void function() c_gdk_error_trap_pop_ignored;

	// gdk.DisplayManager

	GdkDisplayManager* function() c_gdk_display_manager_get;
	GdkDisplay* function(GdkDisplayManager* manager) c_gdk_display_manager_get_default_display;
	void function(GdkDisplayManager* manager, GdkDisplay* display) c_gdk_display_manager_set_default_display;
	GSList* function(GdkDisplayManager* manager) c_gdk_display_manager_list_displays;
	GdkDisplay* function(GdkDisplayManager* manager, gchar* name) c_gdk_display_manager_open_display;

	// gdk.Display

	GdkDisplay* function(gchar* displayName) c_gdk_display_open;
	GdkDisplay* function() c_gdk_display_get_default;
	gchar* function(GdkDisplay* display) c_gdk_display_get_name;
	gint function(GdkDisplay* display) c_gdk_display_get_n_screens;
	GdkScreen* function(GdkDisplay* display, gint screenNum) c_gdk_display_get_screen;
	GdkScreen* function(GdkDisplay* display) c_gdk_display_get_default_screen;
	GdkDeviceManager* function(GdkDisplay* display) c_gdk_display_get_device_manager;
	void function(GdkDisplay* display, guint32 time) c_gdk_display_pointer_ungrab;
	void function(GdkDisplay* display, guint32 time) c_gdk_display_keyboard_ungrab;
	gboolean function(GdkDisplay* display) c_gdk_display_pointer_is_grabbed;
	gboolean function(GdkDisplay* display, GdkDevice* device) c_gdk_display_device_is_grabbed;
	void function(GdkDisplay* display) c_gdk_display_beep;
	void function(GdkDisplay* display) c_gdk_display_sync;
	void function(GdkDisplay* display) c_gdk_display_flush;
	void function(GdkDisplay* display) c_gdk_display_close;
	gboolean function(GdkDisplay* display) c_gdk_display_is_closed;
	GdkEvent* function(GdkDisplay* display) c_gdk_display_get_event;
	GdkEvent* function(GdkDisplay* display) c_gdk_display_peek_event;
	void function(GdkDisplay* display, GdkEvent* event) c_gdk_display_put_event;
	gboolean function(GdkDisplay* display) c_gdk_display_has_pending;
	void function(GdkDisplay* display, guint msec) c_gdk_display_set_double_click_time;
	void function(GdkDisplay* display, guint distance) c_gdk_display_set_double_click_distance;
	void function(GdkDisplay* display, GdkScreen** screen, gint* x, gint* y, GdkModifierType* mask) c_gdk_display_get_pointer;
	GList* function(GdkDisplay* display) c_gdk_display_list_devices;
	GdkWindow* function(GdkDisplay* display, gint* winX, gint* winY) c_gdk_display_get_window_at_pointer;
	void function(GdkDisplay* display, GdkScreen* screen, gint x, gint y) c_gdk_display_warp_pointer;
	gboolean function(GdkDisplay* display) c_gdk_display_supports_cursor_color;
	gboolean function(GdkDisplay* display) c_gdk_display_supports_cursor_alpha;
	guint function(GdkDisplay* display) c_gdk_display_get_default_cursor_size;
	void function(GdkDisplay* display, guint* width, guint* height) c_gdk_display_get_maximal_cursor_size;
	GdkWindow* function(GdkDisplay* display) c_gdk_display_get_default_group;
	gboolean function(GdkDisplay* display) c_gdk_display_supports_selection_notification;
	gboolean function(GdkDisplay* display, GdkAtom selection) c_gdk_display_request_selection_notification;
	gboolean function(GdkDisplay* display) c_gdk_display_supports_clipboard_persistence;
	void function(GdkDisplay* display, GdkWindow* clipboardWindow, guint32 time, GdkAtom* targets, gint nTargets) c_gdk_display_store_clipboard;
	gboolean function(GdkDisplay* display) c_gdk_display_supports_shapes;
	gboolean function(GdkDisplay* display) c_gdk_display_supports_input_shapes;
	gboolean function(GdkDisplay* display) c_gdk_display_supports_composite;
	GdkAppLaunchContext* function(GdkDisplay* display) c_gdk_display_get_app_launch_context;
	void function(GdkDisplay* display, gchar* startupId) c_gdk_display_notify_startup_complete;

	// gdk.Screen

	GdkScreen* function() c_gdk_screen_get_default;
	GdkVisual* function(GdkScreen* screen) c_gdk_screen_get_system_visual;
	GdkVisual* function(GdkScreen* screen) c_gdk_screen_get_rgba_visual;
	gboolean function(GdkScreen* screen) c_gdk_screen_is_composited;
	GdkWindow* function(GdkScreen* screen) c_gdk_screen_get_root_window;
	GdkDisplay* function(GdkScreen* screen) c_gdk_screen_get_display;
	gint function(GdkScreen* screen) c_gdk_screen_get_number;
	gint function(GdkScreen* screen) c_gdk_screen_get_width;
	gint function(GdkScreen* screen) c_gdk_screen_get_height;
	gint function(GdkScreen* screen) c_gdk_screen_get_width_mm;
	gint function(GdkScreen* screen) c_gdk_screen_get_height_mm;
	GList* function(GdkScreen* screen) c_gdk_screen_list_visuals;
	GList* function(GdkScreen* screen) c_gdk_screen_get_toplevel_windows;
	gchar* function(GdkScreen* screen) c_gdk_screen_make_display_name;
	gint function(GdkScreen* screen) c_gdk_screen_get_n_monitors;
	gint function(GdkScreen* screen) c_gdk_screen_get_primary_monitor;
	void function(GdkScreen* screen, gint monitorNum, GdkRectangle* dest) c_gdk_screen_get_monitor_geometry;
	void function(GdkScreen* screen, gint monitorNum, GdkRectangle* dest) c_gdk_screen_get_monitor_workarea;
	gint function(GdkScreen* screen, gint x, gint y) c_gdk_screen_get_monitor_at_point;
	gint function(GdkScreen* screen, GdkWindow* window) c_gdk_screen_get_monitor_at_window;
	gint function(GdkScreen* screen, gint monitorNum) c_gdk_screen_get_monitor_height_mm;
	gint function(GdkScreen* screen, gint monitorNum) c_gdk_screen_get_monitor_width_mm;
	gchar* function(GdkScreen* screen, gint monitorNum) c_gdk_screen_get_monitor_plug_name;
	gboolean function(GdkScreen* screen, gchar* name, GValue* value) c_gdk_screen_get_setting;
	cairo_font_options_t* function(GdkScreen* screen) c_gdk_screen_get_font_options;
	void function(GdkScreen* screen, cairo_font_options_t* options) c_gdk_screen_set_font_options;
	gdouble function(GdkScreen* screen) c_gdk_screen_get_resolution;
	void function(GdkScreen* screen, gdouble dpi) c_gdk_screen_set_resolution;
	GdkWindow* function(GdkScreen* screen) c_gdk_screen_get_active_window;
	GList* function(GdkScreen* screen) c_gdk_screen_get_window_stack;

	// gdk.DeviceManager

	void function() c_gdk_disable_multidevice;
	GdkDisplay* function(GdkDeviceManager* deviceManager) c_gdk_device_manager_get_display;
	GList* function(GdkDeviceManager* deviceManager, GdkDeviceType type) c_gdk_device_manager_list_devices;
	GdkDevice* function(GdkDeviceManager* deviceManager) c_gdk_device_manager_get_client_pointer;

	// gdk.Device

	gchar* function(GdkDevice* device) c_gdk_device_get_name;
	GdkInputSource function(GdkDevice* device) c_gdk_device_get_source;
	gboolean function(GdkDevice* device, GdkInputMode mode) c_gdk_device_set_mode;
	GdkInputMode function(GdkDevice* device) c_gdk_device_get_mode;
	void function(GdkDevice* device, guint index, guint keyval, GdkModifierType modifiers) c_gdk_device_set_key;
	gboolean function(GdkDevice* device, guint index, guint* keyval, GdkModifierType* modifiers) c_gdk_device_get_key;
	void function(GdkDevice* device, guint index, GdkAxisUse use) c_gdk_device_set_axis_use;
	GdkAxisUse function(GdkDevice* device, guint index) c_gdk_device_get_axis_use;
	GdkDevice* function(GdkDevice* device) c_gdk_device_get_associated_device;
	GList* function(GdkDevice* device) c_gdk_device_list_slave_devices;
	GdkDeviceType function(GdkDevice* device) c_gdk_device_get_device_type;
	GdkDisplay* function(GdkDevice* device) c_gdk_device_get_display;
	gboolean function(GdkDevice* device) c_gdk_device_get_has_cursor;
	gint function(GdkDevice* device) c_gdk_device_get_n_axes;
	gint function(GdkDevice* device) c_gdk_device_get_n_keys;
	void function(GdkDevice* device, GdkScreen* screen, gint x, gint y) c_gdk_device_warp;
	GdkGrabStatus function(GdkDevice* device, GdkWindow* window, GdkGrabOwnership grabOwnership, gboolean ownerEvents, GdkEventMask eventMask, GdkCursor* cursor, guint32 time) c_gdk_device_grab;
	void function(GdkDevice* device, guint32 time) c_gdk_device_ungrab;
	void function(GdkDevice* device, GdkWindow* window, gdouble* axes, GdkModifierType* mask) c_gdk_device_get_state;
	void function(GdkDevice* device, GdkScreen** screen, gint* x, gint* y) c_gdk_device_get_position;
	GdkWindow* function(GdkDevice* device, gint* winX, gint* winY) c_gdk_device_get_window_at_position;
	gboolean function(GdkDevice* device, GdkWindow* window, guint32 start, guint32 stop, GdkTimeCoord*** events, gint* nEvents) c_gdk_device_get_history;
	void function(GdkTimeCoord** events, gint nEvents) c_gdk_device_free_history;
	gboolean function(GdkDevice* device, gdouble* axes, GdkAxisUse use, gdouble* value) c_gdk_device_get_axis;
	GList* function(GdkDevice* device) c_gdk_device_list_axes;
	gboolean function(GdkDevice* device, gdouble* axes, GdkAtom axisLabel, gdouble* value) c_gdk_device_get_axis_value;

	// gdk.

	gboolean function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest) c_gdk_rectangle_intersect;
	void function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest) c_gdk_rectangle_union;

	// gdk.Pixbuf

	GdkPixbuf* function(GdkWindow* window, gint srcX, gint srcY, gint width, gint height) c_gdk_pixbuf_get_from_window;
	GdkPixbuf* function(cairo_surface_t* surface, gint srcX, gint srcY, gint width, gint height) c_gdk_pixbuf_get_from_surface;
	GType function() c_gdk_pixbuf_get_type;
	GdkPixbuf* function(GdkColorspace colorspace, gboolean hasAlpha, int bitsPerSample, int width, int height) c_gdk_pixbuf_new;
	GdkPixbuf* function(guchar* data, GdkColorspace colorspace, gboolean hasAlpha, int bitsPerSample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroyFn, void* destroyFnData) c_gdk_pixbuf_new_from_data;
	GdkPixbuf* function(char** data) c_gdk_pixbuf_new_from_xpm_data;
	GdkPixbuf* function(gint dataLength, guint8* data, gboolean copyPixels, GError** error) c_gdk_pixbuf_new_from_inline;
	GdkPixbuf* function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height) c_gdk_pixbuf_new_subpixbuf;
	GdkPixbuf* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_copy;
	GdkColorspace function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_colorspace;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_n_channels;
	gboolean function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_has_alpha;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_bits_per_sample;
	guchar* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_pixels;
	guchar* function(GdkPixbuf* pixbuf, guint* length) c_gdk_pixbuf_get_pixels_with_length;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_width;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_height;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_rowstride;
	gsize function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_byte_length;
	gchar* function(GdkPixbuf* pixbuf, gchar* key) c_gdk_pixbuf_get_option;
	GdkPixbuf* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_ref;
	void function(GdkPixbuf* pixbuf) c_gdk_pixbuf_unref;
	GdkPixbuf* function(char* filename, GError** error) c_gdk_pixbuf_new_from_file;
	GdkPixbuf* function(char* filename, int width, int height, GError** error) c_gdk_pixbuf_new_from_file_at_size;
	GdkPixbuf* function(char* filename, int width, int height, gboolean preserveAspectRatio, GError** error) c_gdk_pixbuf_new_from_file_at_scale;
	GdkPixbufFormat* function(gchar* filename, gint* width, gint* height) c_gdk_pixbuf_get_file_info;
	GdkPixbuf* function(char* resourcePath, GError** error) c_gdk_pixbuf_new_from_resource;
	GdkPixbuf* function(char* resourcePath, int width, int height, gboolean preserveAspectRatio, GError** error) c_gdk_pixbuf_new_from_resource_at_scale;
	GdkPixbuf* function(GInputStream* stream, GCancellable* cancellable, GError** error) c_gdk_pixbuf_new_from_stream;
	void function(GInputStream* stream, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_pixbuf_new_from_stream_async;
	GdkPixbuf* function(GAsyncResult* asyncResult, GError** error) c_gdk_pixbuf_new_from_stream_finish;
	GdkPixbuf* function(GInputStream* stream, gint width, gint height, gboolean preserveAspectRatio, GCancellable* cancellable, GError** error) c_gdk_pixbuf_new_from_stream_at_scale;
	void function(GInputStream* stream, gint width, gint height, gboolean preserveAspectRatio, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_gdk_pixbuf_new_from_stream_at_scale_async;
	gboolean function(GdkPixbuf* pixbuf, char* filename, char* type, char** optionKeys, char** optionValues, GError** error) c_gdk_pixbuf_savev;
	gboolean function(GdkPixbuf* pixbuf, char* filename, char* type, GError** error, ... ) c_gdk_pixbuf_save;
	gboolean function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, void* userData, char* type, GError** error, ... ) c_gdk_pixbuf_save_to_callback;
	gboolean function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, void* userData, char* type, char** optionKeys, char** optionValues, GError** error) c_gdk_pixbuf_save_to_callbackv;
	gboolean function(GdkPixbuf* pixbuf, gchar** buffer, gsize* bufferSize, char* type, GError** error, ... ) c_gdk_pixbuf_save_to_buffer;
	gboolean function(GdkPixbuf* pixbuf, gchar** buffer, gsize* bufferSize, char* type, char** optionKeys, char** optionValues, GError** error) c_gdk_pixbuf_save_to_bufferv;
	gboolean function(GdkPixbuf* pixbuf, GOutputStream* stream, char* type, GCancellable* cancellable, GError** error, ... ) c_gdk_pixbuf_save_to_stream;
	void function(GdkPixbuf* pixbuf, GOutputStream* stream, gchar* type, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData, ... ) c_gdk_pixbuf_save_to_stream_async;
	gboolean function(GAsyncResult* asyncResult, GError** error) c_gdk_pixbuf_save_to_stream_finish;
	GdkPixbuf* function(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType) c_gdk_pixbuf_scale_simple;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType) c_gdk_pixbuf_scale;
	GdkPixbuf* function(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType, int overallAlpha, int checkSize, guint32 color1, guint32 color2) c_gdk_pixbuf_composite_color_simple;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha) c_gdk_pixbuf_composite;
	void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha, int checkX, int checkY, int checkSize, guint32 color1, guint32 color2) c_gdk_pixbuf_composite_color;
	GdkPixbuf* function(GdkPixbuf* src, GdkPixbufRotation angle) c_gdk_pixbuf_rotate_simple;
	GdkPixbuf* function(GdkPixbuf* src, gboolean horizontal) c_gdk_pixbuf_flip;
	GdkPixbuf* function(GdkPixbuf* pixbuf, gboolean substituteColor, guchar r, guchar g, guchar b) c_gdk_pixbuf_add_alpha;
	void function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height, GdkPixbuf* destPixbuf, int destX, int destY) c_gdk_pixbuf_copy_area;
	void function(GdkPixbuf* src, GdkPixbuf* dest, gfloat saturation, gboolean pixelate) c_gdk_pixbuf_saturate_and_pixelate;
	GdkPixbuf* function(GdkPixbuf* src) c_gdk_pixbuf_apply_embedded_orientation;
	void function(GdkPixbuf* pixbuf, guint32 pixel) c_gdk_pixbuf_fill;

	// gdk.Color

	GdkColor* function(GdkColor* color) c_gdk_color_copy;
	void function(GdkColor* color) c_gdk_color_free;
	gboolean function(gchar* spec, GdkColor* color) c_gdk_color_parse;
	gboolean function(GdkColor* colora, GdkColor* colorb) c_gdk_color_equal;
	guint function(GdkColor* color) c_gdk_color_hash;
	gchar* function(GdkColor* color) c_gdk_color_to_string;

	// gdk.RGBA

	GdkRGBA* function(GdkRGBA* rgba) c_gdk_rgba_copy;
	void function(GdkRGBA* rgba) c_gdk_rgba_free;
	gboolean function(GdkRGBA* rgba, gchar* spec) c_gdk_rgba_parse;
	gboolean function(void* p1, void* p2) c_gdk_rgba_equal;
	guint function(void* p) c_gdk_rgba_hash;
	gchar* function(GdkRGBA* rgba) c_gdk_rgba_to_string;

	// gdk.Visual

	void function(gint** depths, gint* count) c_gdk_query_depths;
	void function(GdkVisualType** visualTypes, gint* count) c_gdk_query_visual_types;
	GList* function() c_gdk_list_visuals;
	gint function(GdkVisual* visual) c_gdk_visual_get_bits_per_rgb;
	void function(GdkVisual* visual, guint32* mask, gint* shift, gint* precision) c_gdk_visual_get_blue_pixel_details;
	GdkByteOrder function(GdkVisual* visual) c_gdk_visual_get_byte_order;
	gint function(GdkVisual* visual) c_gdk_visual_get_colormap_size;
	gint function(GdkVisual* visual) c_gdk_visual_get_depth;
	void function(GdkVisual* visual, guint32* mask, gint* shift, gint* precision) c_gdk_visual_get_green_pixel_details;
	void function(GdkVisual* visual, guint32* mask, gint* shift, gint* precision) c_gdk_visual_get_red_pixel_details;
	GdkVisualType function(GdkVisual* visual) c_gdk_visual_get_visual_type;
	gint function() c_gdk_visual_get_best_depth;
	GdkVisualType function() c_gdk_visual_get_best_type;
	GdkVisual* function() c_gdk_visual_get_system;
	GdkVisual* function() c_gdk_visual_get_best;
	GdkVisual* function(gint depth) c_gdk_visual_get_best_with_depth;
	GdkVisual* function(GdkVisualType visualType) c_gdk_visual_get_best_with_type;
	GdkVisual* function(gint depth, GdkVisualType visualType) c_gdk_visual_get_best_with_both;
	GdkScreen* function(GdkVisual* visual) c_gdk_visual_get_screen;

	// gdk.Cursor

	GdkCursor* function(GdkCursorType cursorType) c_gdk_cursor_new;
	GdkCursor* function(GdkDisplay* display, GdkPixbuf* pixbuf, gint x, gint y) c_gdk_cursor_new_from_pixbuf;
	GdkCursor* function(GdkDisplay* display, gchar* name) c_gdk_cursor_new_from_name;
	GdkCursor* function(GdkDisplay* display, GdkCursorType cursorType) c_gdk_cursor_new_for_display;
	GdkDisplay* function(GdkCursor* cursor) c_gdk_cursor_get_display;
	GdkPixbuf* function(GdkCursor* cursor) c_gdk_cursor_get_image;
	GdkCursorType function(GdkCursor* cursor) c_gdk_cursor_get_cursor_type;
	GdkCursor* function(GdkCursor* cursor) c_gdk_cursor_ref;
	void function(GdkCursor* cursor) c_gdk_cursor_unref;

	// gdk.Window

	GdkWindow* function(GdkWindow* parent, GdkWindowAttr* attributes, gint attributesMask) c_gdk_window_new;
	void function(GdkWindow* window) c_gdk_window_destroy;
	GdkWindowType function(GdkWindow* window) c_gdk_window_get_window_type;
	GdkDisplay* function(GdkWindow* window) c_gdk_window_get_display;
	GdkScreen* function(GdkWindow* window) c_gdk_window_get_screen;
	GdkVisual* function(GdkWindow* window) c_gdk_window_get_visual;
	GdkWindow* function(gint* winX, gint* winY) c_gdk_window_at_pointer;
	void function(GdkWindow* window) c_gdk_window_show;
	void function(GdkWindow* window) c_gdk_window_show_unraised;
	void function(GdkWindow* window) c_gdk_window_hide;
	gboolean function(GdkWindow* window) c_gdk_window_is_destroyed;
	gboolean function(GdkWindow* window) c_gdk_window_is_visible;
	gboolean function(GdkWindow* window) c_gdk_window_is_viewable;
	gboolean function(GdkWindow* window) c_gdk_window_is_input_only;
	gboolean function(GdkWindow* window) c_gdk_window_is_shaped;
	GdkWindowState function(GdkWindow* window) c_gdk_window_get_state;
	void function(GdkWindow* window) c_gdk_window_withdraw;
	void function(GdkWindow* window) c_gdk_window_iconify;
	void function(GdkWindow* window) c_gdk_window_deiconify;
	void function(GdkWindow* window) c_gdk_window_stick;
	void function(GdkWindow* window) c_gdk_window_unstick;
	void function(GdkWindow* window) c_gdk_window_maximize;
	void function(GdkWindow* window) c_gdk_window_unmaximize;
	void function(GdkWindow* window) c_gdk_window_fullscreen;
	void function(GdkWindow* window) c_gdk_window_unfullscreen;
	void function(GdkWindow* window, gboolean setting) c_gdk_window_set_keep_above;
	void function(GdkWindow* window, gboolean setting) c_gdk_window_set_keep_below;
	void function(GdkWindow* window, gdouble opacity) c_gdk_window_set_opacity;
	void function(GdkWindow* window, gboolean composited) c_gdk_window_set_composited;
	gboolean function(GdkWindow* window) c_gdk_window_get_composited;
	void function(GdkWindow* window, gint x, gint y) c_gdk_window_move;
	void function(GdkWindow* window, gint width, gint height) c_gdk_window_resize;
	void function(GdkWindow* window, gint x, gint y, gint width, gint height) c_gdk_window_move_resize;
	void function(GdkWindow* window, gint dx, gint dy) c_gdk_window_scroll;
	void function(GdkWindow* window, cairo_region_t* region, gint dx, gint dy) c_gdk_window_move_region;
	void function(GdkWindow* window) c_gdk_window_flush;
	gboolean function(GdkWindow* window) c_gdk_window_has_native;
	gboolean function(GdkWindow* window) c_gdk_window_ensure_native;
	void function(GdkWindow* window, GdkWindow* newParent, gint x, gint y) c_gdk_window_reparent;
	void function(GdkWindow* window) c_gdk_window_raise;
	void function(GdkWindow* window) c_gdk_window_lower;
	void function(GdkWindow* window, GdkWindow* sibling, gboolean above) c_gdk_window_restack;
	void function(GdkWindow* window, guint32 timestamp) c_gdk_window_focus;
	void function(GdkWindow* window) c_gdk_window_register_dnd;
	void function(GdkWindow* window, GdkWindowEdge edge, gint button, gint rootX, gint rootY, guint32 timestamp) c_gdk_window_begin_resize_drag;
	void function(GdkWindow* window, GdkWindowEdge edge, GdkDevice* device, gint button, gint rootX, gint rootY, guint32 timestamp) c_gdk_window_begin_resize_drag_for_device;
	void function(GdkWindow* window, gint button, gint rootX, gint rootY, guint32 timestamp) c_gdk_window_begin_move_drag;
	void function(GdkWindow* window, GdkDevice* device, gint button, gint rootX, gint rootY, guint32 timestamp) c_gdk_window_begin_move_drag_for_device;
	void function(GdkGeometry* geometry, guint flags, gint width, gint height, gint* newWidth, gint* newHeight) c_gdk_window_constrain_size;
	void function(GdkWindow* window) c_gdk_window_beep;
	cairo_region_t* function(GdkWindow* window) c_gdk_window_get_clip_region;
	void function(GdkWindow* window, GdkRectangle* rectangle) c_gdk_window_begin_paint_rect;
	void function(GdkWindow* window, cairo_region_t* region) c_gdk_window_begin_paint_region;
	void function(GdkWindow* window) c_gdk_window_end_paint;
	cairo_region_t* function(GdkWindow* window) c_gdk_window_get_visible_region;
	void function(GdkWindow* window, GdkRectangle* rect, gboolean invalidateChildren) c_gdk_window_invalidate_rect;
	void function(GdkWindow* window, cairo_region_t* region, gboolean invalidateChildren) c_gdk_window_invalidate_region;
	void function(GdkWindow* window, cairo_region_t* region, GdkWindowChildFunc childFunc, void* userData) c_gdk_window_invalidate_maybe_recurse;
	cairo_region_t* function(GdkWindow* window) c_gdk_window_get_update_area;
	void function(GdkWindow* window) c_gdk_window_freeze_updates;
	void function(GdkWindow* window) c_gdk_window_thaw_updates;
	void function() c_gdk_window_process_all_updates;
	void function(GdkWindow* window, gboolean updateChildren) c_gdk_window_process_updates;
	void function(gboolean setting) c_gdk_window_set_debug_updates;
	void function(GdkWindow* window) c_gdk_window_enable_synchronized_configure;
	void function(GdkWindow* window) c_gdk_window_configure_finished;
	void function(GdkWindow* window, void* userData) c_gdk_window_set_user_data;
	void function(GdkWindow* window, gboolean overrideRedirect) c_gdk_window_set_override_redirect;
	void function(GdkWindow* window, gboolean acceptFocus) c_gdk_window_set_accept_focus;
	gboolean function(GdkWindow* window) c_gdk_window_get_accept_focus;
	void function(GdkWindow* window, gboolean focusOnMap) c_gdk_window_set_focus_on_map;
	gboolean function(GdkWindow* window) c_gdk_window_get_focus_on_map;
	void function(GdkWindow* window, GdkFilterFunc funct, void* data) c_gdk_window_add_filter;
	void function(GdkWindow* window, GdkFilterFunc funct, void* data) c_gdk_window_remove_filter;
	void function(GdkWindow* window, cairo_region_t* shapeRegion, gint offsetX, gint offsetY) c_gdk_window_shape_combine_region;
	void function(GdkWindow* window) c_gdk_window_set_child_shapes;
	void function(GdkWindow* window) c_gdk_window_merge_child_shapes;
	void function(GdkWindow* window, cairo_region_t* shapeRegion, gint offsetX, gint offsetY) c_gdk_window_input_shape_combine_region;
	void function(GdkWindow* window) c_gdk_window_set_child_input_shapes;
	void function(GdkWindow* window) c_gdk_window_merge_child_input_shapes;
	gboolean function(GdkWindow* window, gboolean useStatic) c_gdk_window_set_static_gravities;
	void function(GdkWindow* window, gchar* title) c_gdk_window_set_title;
	void function(GdkWindow* window, GdkColor* color) c_gdk_window_set_background;
	void function(GdkWindow* window, GdkRGBA* rgba) c_gdk_window_set_background_rgba;
	void function(GdkWindow* window, cairo_pattern_t* pattern) c_gdk_window_set_background_pattern;
	cairo_pattern_t* function(GdkWindow* window) c_gdk_window_get_background_pattern;
	void function(GdkWindow* window, GdkCursor* cursor) c_gdk_window_set_cursor;
	GdkCursor* function(GdkWindow* window) c_gdk_window_get_cursor;
	void function(GdkWindow* window, void** data) c_gdk_window_get_user_data;
	void function(GdkWindow* window, gint* x, gint* y, gint* width, gint* height) c_gdk_window_get_geometry;
	void function(GdkWindow* window, GdkGeometry* geometry, GdkWindowHints geomMask) c_gdk_window_set_geometry_hints;
	int function(GdkWindow* window) c_gdk_window_get_width;
	int function(GdkWindow* window) c_gdk_window_get_height;
	void function(GdkWindow* window, GList* pixbufs) c_gdk_window_set_icon_list;
	void function(GdkWindow* window, gboolean modal) c_gdk_window_set_modal_hint;
	gboolean function(GdkWindow* window) c_gdk_window_get_modal_hint;
	void function(GdkWindow* window, GdkWindowTypeHint hint) c_gdk_window_set_type_hint;
	GdkWindowTypeHint function(GdkWindow* window) c_gdk_window_get_type_hint;
	void function(GdkWindow* window, gboolean skipsTaskbar) c_gdk_window_set_skip_taskbar_hint;
	void function(GdkWindow* window, gboolean skipsPager) c_gdk_window_set_skip_pager_hint;
	void function(GdkWindow* window, gboolean urgent) c_gdk_window_set_urgency_hint;
	void function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_position;
	void function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_root_origin;
	void function(GdkWindow* window, GdkRectangle* rect) c_gdk_window_get_frame_extents;
	gint function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_origin;
	void function(GdkWindow* window, gint x, gint y, gint* rootX, gint* rootY) c_gdk_window_get_root_coords;
	GdkWindow* function(GdkWindow* window, gint* x, gint* y, GdkModifierType* mask) c_gdk_window_get_pointer;
	GdkWindow* function(GdkWindow* window, GdkDevice* device, gint* x, gint* y, GdkModifierType* mask) c_gdk_window_get_device_position;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_parent;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_toplevel;
	GList* function(GdkWindow* window) c_gdk_window_get_children;
	GList* function(GdkWindow* window) c_gdk_window_peek_children;
	GdkEventMask function(GdkWindow* window) c_gdk_window_get_events;
	void function(GdkWindow* window, GdkEventMask eventMask) c_gdk_window_set_events;
	void function(GdkWindow* window, gchar* name) c_gdk_window_set_icon_name;
	void function(GdkWindow* window, GdkWindow* parent) c_gdk_window_set_transient_for;
	void function(GdkWindow* window, gchar* role) c_gdk_window_set_role;
	void function(GdkWindow* window, gchar* startupId) c_gdk_window_set_startup_id;
	void function(GdkWindow* window, GdkWindow* leader) c_gdk_window_set_group;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_group;
	void function(GdkWindow* window, GdkWMDecoration decorations) c_gdk_window_set_decorations;
	gboolean function(GdkWindow* window, GdkWMDecoration* decorations) c_gdk_window_get_decorations;
	void function(GdkWindow* window, GdkWMFunction functions) c_gdk_window_set_functions;
	GdkWindow* function() c_gdk_get_default_root_window;
	gboolean function(GdkWindow* window) c_gdk_window_get_support_multidevice;
	void function(GdkWindow* window, gboolean supportMultidevice) c_gdk_window_set_support_multidevice;
	GdkCursor* function(GdkWindow* window, GdkDevice* device) c_gdk_window_get_device_cursor;
	void function(GdkWindow* window, GdkDevice* device, GdkCursor* cursor) c_gdk_window_set_device_cursor;
	GdkEventMask function(GdkWindow* window, GdkDevice* device) c_gdk_window_get_device_events;
	void function(GdkWindow* window, GdkDevice* device, GdkEventMask eventMask) c_gdk_window_set_device_events;
	GdkEventMask function(GdkWindow* window, GdkInputSource source) c_gdk_window_get_source_events;
	void function(GdkWindow* window, GdkInputSource source, GdkEventMask eventMask) c_gdk_window_set_source_events;
	cairo_surface_t* function(GdkWindow* window) c_gdk_offscreen_window_get_surface;
	void function(GdkWindow* window, GdkWindow* embedder) c_gdk_offscreen_window_set_embedder;
	GdkWindow* function(GdkWindow* window) c_gdk_offscreen_window_get_embedder;
	void function(GdkWindow* window) c_gdk_window_geometry_changed;
	void function(GdkWindow* window, gdouble parentX, gdouble parentY, gdouble* x, gdouble* y) c_gdk_window_coords_from_parent;
	void function(GdkWindow* window, gdouble x, gdouble y, gdouble* parentX, gdouble* parentY) c_gdk_window_coords_to_parent;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_effective_parent;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_effective_toplevel;

	// gdk.Event

	gboolean function() c_gdk_events_pending;
	GdkEvent* function() c_gdk_event_peek;
	GdkEvent* function() c_gdk_event_get;
	void function(GdkEvent* event) c_gdk_event_put;
	GdkEvent* function(GdkEventType type) c_gdk_event_new;
	GdkEvent* function(GdkEvent* event) c_gdk_event_copy;
	void function(GdkEvent* event) c_gdk_event_free;
	gboolean function(GdkEvent* event, GdkAxisUse axisUse, gdouble* value) c_gdk_event_get_axis;
	gboolean function(GdkEvent* event, guint* button) c_gdk_event_get_button;
	gboolean function(GdkEvent* event, guint* clickCount) c_gdk_event_get_click_count;
	gboolean function(GdkEvent* event, gdouble* xWin, gdouble* yWin) c_gdk_event_get_coords;
	gboolean function(GdkEvent* event, guint16* keycode) c_gdk_event_get_keycode;
	gboolean function(GdkEvent* event, guint* keyval) c_gdk_event_get_keyval;
	gboolean function(GdkEvent* event, gdouble* xRoot, gdouble* yRoot) c_gdk_event_get_root_coords;
	gboolean function(GdkEvent* event, GdkScrollDirection* direction) c_gdk_event_get_scroll_direction;
	gboolean function(GdkEvent* event, gdouble* deltaX, gdouble* deltaY) c_gdk_event_get_scroll_deltas;
	gboolean function(GdkEvent* event, GdkModifierType* state) c_gdk_event_get_state;
	guint32 function(GdkEvent* event) c_gdk_event_get_time;
	GdkEventSequence* function(GdkEvent* event) c_gdk_event_get_event_sequence;
	void function(GdkEventMotion* event) c_gdk_event_request_motions;
	gboolean function(GdkEvent* event1, GdkEvent* event2, gdouble* angle) c_gdk_events_get_angle;
	gboolean function(GdkEvent* event1, GdkEvent* event2, gdouble* x, gdouble* y) c_gdk_events_get_center;
	gboolean function(GdkEvent* event1, GdkEvent* event2, gdouble* distance) c_gdk_events_get_distance;
	gboolean function(GdkEvent* event) c_gdk_event_triggers_context_menu;
	void function(GdkEventFunc func, void* data, GDestroyNotify notify) c_gdk_event_handler_set;
	gboolean function() c_gdk_get_show_events;
	void function(gboolean showEvents) c_gdk_set_show_events;
	void function(GdkEvent* event, GdkScreen* screen) c_gdk_event_set_screen;
	GdkScreen* function(GdkEvent* event) c_gdk_event_get_screen;
	GdkDevice* function(GdkEvent* event) c_gdk_event_get_device;
	void function(GdkEvent* event, GdkDevice* device) c_gdk_event_set_device;
	GdkDevice* function(GdkEvent* event) c_gdk_event_get_source_device;
	void function(GdkEvent* event, GdkDevice* device) c_gdk_event_set_source_device;
	gboolean function(gchar* name, GValue* value) c_gdk_setting_get;

	// gdk.Keymap

	GdkKeymap* function() c_gdk_keymap_get_default;
	GdkKeymap* function(GdkDisplay* display) c_gdk_keymap_get_for_display;
	guint function(GdkKeymap* keymap, GdkKeymapKey* key) c_gdk_keymap_lookup_key;
	gboolean function(GdkKeymap* keymap, guint hardwareKeycode, GdkModifierType state, gint group, guint* keyval, gint* effectiveGroup, gint* level, GdkModifierType* consumedModifiers) c_gdk_keymap_translate_keyboard_state;
	gboolean function(GdkKeymap* keymap, guint keyval, GdkKeymapKey** keys, gint* nKeys) c_gdk_keymap_get_entries_for_keyval;
	gboolean function(GdkKeymap* keymap, guint hardwareKeycode, GdkKeymapKey** keys, guint** keyvals, gint* nEntries) c_gdk_keymap_get_entries_for_keycode;
	PangoDirection function(GdkKeymap* keymap) c_gdk_keymap_get_direction;
	gboolean function(GdkKeymap* keymap) c_gdk_keymap_have_bidi_layouts;
	gboolean function(GdkKeymap* keymap) c_gdk_keymap_get_caps_lock_state;
	gboolean function(GdkKeymap* keymap) c_gdk_keymap_get_num_lock_state;
	guint function(GdkKeymap* keymap) c_gdk_keymap_get_modifier_state;
	void function(GdkKeymap* keymap, GdkModifierType* state) c_gdk_keymap_add_virtual_modifiers;
	gboolean function(GdkKeymap* keymap, GdkModifierType* state) c_gdk_keymap_map_virtual_modifiers;
	GdkModifierType function(GdkKeymap* keymap, GdkModifierIntent intent) c_gdk_keymap_get_modifier_mask;
	gchar* function(guint keyval) c_gdk_keyval_name;
	guint function(gchar* keyvalName) c_gdk_keyval_from_name;
	void function(guint symbol, guint* lower, guint* upper) c_gdk_keyval_convert_case;
	guint function(guint keyval) c_gdk_keyval_to_upper;
	guint function(guint keyval) c_gdk_keyval_to_lower;
	gboolean function(guint keyval) c_gdk_keyval_is_upper;
	gboolean function(guint keyval) c_gdk_keyval_is_lower;
	guint32 function(guint keyval) c_gdk_keyval_to_unicode;
	guint function(guint32 wc) c_gdk_unicode_to_keyval;

	// gdk.Selection

	gboolean function(GdkWindow* owner, GdkAtom selection, guint32 time, gboolean sendEvent) c_gdk_selection_owner_set;
	gboolean function(GdkDisplay* display, GdkWindow* owner, GdkAtom selection, guint32 time, gboolean sendEvent) c_gdk_selection_owner_set_for_display;
	GdkWindow* function(GdkAtom selection) c_gdk_selection_owner_get;
	GdkWindow* function(GdkDisplay* display, GdkAtom selection) c_gdk_selection_owner_get_for_display;
	void function(GdkWindow* requestor, GdkAtom selection, GdkAtom target, guint32 time) c_gdk_selection_convert;
	gint function(GdkWindow* requestor, guchar** data, GdkAtom* propType, gint* propFormat) c_gdk_selection_property_get;
	void function(GdkWindow* requestor, GdkAtom selection, GdkAtom target, GdkAtom property, guint32 time) c_gdk_selection_send_notify;
	void function(GdkDisplay* display, GdkWindow* requestor, GdkAtom selection, GdkAtom target, GdkAtom property, guint32 time) c_gdk_selection_send_notify_for_display;

	// gdk.DragContext

	GdkAtom function(GdkDragContext* context) c_gdk_drag_get_selection;
	void function(GdkDragContext* context, guint32 time) c_gdk_drag_abort;
	void function(GdkDragContext* context, gboolean accepted, guint32 time) c_gdk_drop_reply;
	void function(GdkDragContext* context, guint32 time) c_gdk_drag_drop;
	void function(GdkDragContext* context, GdkWindow* dragWindow, GdkScreen* screen, gint xRoot, gint yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol) c_gdk_drag_find_window_for_screen;
	GdkDragContext* function(GdkWindow* window, GList* targets) c_gdk_drag_begin;
	GdkDragContext* function(GdkWindow* window, GdkDevice* device, GList* targets) c_gdk_drag_begin_for_device;
	gboolean function(GdkDragContext* context, GdkWindow* destWindow, GdkDragProtocol protocol, gint xRoot, gint yRoot, GdkDragAction suggestedAction, GdkDragAction possibleActions, guint32 time) c_gdk_drag_motion;
	void function(GdkDragContext* context, gboolean success, guint32 time) c_gdk_drop_finish;
	void function(GdkDragContext* context, GdkDragAction action, guint32 time) c_gdk_drag_status;
	gboolean function(GdkDragContext* context) c_gdk_drag_drop_succeeded;
	GdkDragProtocol function(GdkWindow* window, GdkWindow** target) c_gdk_window_get_drag_protocol;
	GdkDragAction function(GdkDragContext* context) c_gdk_drag_context_get_actions;
	GdkDragAction function(GdkDragContext* context) c_gdk_drag_context_get_suggested_action;
	GdkDragAction function(GdkDragContext* context) c_gdk_drag_context_get_selected_action;
	GList* function(GdkDragContext* context) c_gdk_drag_context_list_targets;
	GdkDevice* function(GdkDragContext* context) c_gdk_drag_context_get_device;
	void function(GdkDragContext* context, GdkDevice* device) c_gdk_drag_context_set_device;
	GdkWindow* function(GdkDragContext* context) c_gdk_drag_context_get_source_window;
	GdkWindow* function(GdkDragContext* context) c_gdk_drag_context_get_dest_window;
	GdkDragProtocol function(GdkDragContext* context) c_gdk_drag_context_get_protocol;

	// gdk.

	gint function(GdkDisplay* display, GdkAtom encoding, gint format, guchar* text, gint length, gchar*** list) c_gdk_text_property_to_utf8_list_for_display;
	gchar* function(gchar* str) c_gdk_utf8_to_string_target;
	GdkAtom function(gchar* atomName, gboolean onlyIfExists) c_gdk_atom_intern;
	GdkAtom function(gchar* atomName) c_gdk_atom_intern_static_string;
	gchar* function(GdkAtom atom) c_gdk_atom_name;
	gboolean function(GdkWindow* window, GdkAtom property, GdkAtom type, gulong offset, gulong length, gint pdelete, GdkAtom* actualPropertyType, gint* actualFormat, gint* actualLength, guchar** data) c_gdk_property_get;
	void function(GdkWindow* window, GdkAtom property, GdkAtom type, gint format, GdkPropMode mode, guchar* data, gint nelements) c_gdk_property_change;
	void function(GdkWindow* window, GdkAtom property) c_gdk_property_delete;

	// gdk.

	void function() c_gdk_threads_init;
	void function() c_gdk_threads_enter;
	void function() c_gdk_threads_leave;
	void function(GCallback enterFn, GCallback leaveFn) c_gdk_threads_set_lock_functions;
	guint function(GSourceFunc funct, void* data) c_gdk_threads_add_idle;
	guint function(gint priority, GSourceFunc funct, void* data, GDestroyNotify notify) c_gdk_threads_add_idle_full;
	guint function(guint interval, GSourceFunc funct, void* data) c_gdk_threads_add_timeout;
	guint function(gint priority, guint interval, GSourceFunc funct, void* data, GDestroyNotify notify) c_gdk_threads_add_timeout_full;
	guint function(guint interval, GSourceFunc funct, void* data) c_gdk_threads_add_timeout_seconds;
	guint function(gint priority, guint interval, GSourceFunc funct, void* data, GDestroyNotify notify) c_gdk_threads_add_timeout_seconds_full;

	// gdk.X11

	guint32 function(GdkWindow* window) c_gdk_x11_get_server_time;
	gint function(GdkDevice* device) c_gdk_x11_device_get_id;
	GdkDevice* function(GdkDeviceManager* deviceManager, gint deviceId) c_gdk_x11_device_manager_lookup;
	void function(GdkDisplay* display, char* messageType, ... ) c_gdk_x11_display_broadcast_startup_message;
	gchar* function(GdkDisplay* display) c_gdk_x11_display_get_startup_notification_id;
	void function(GdkDisplay* display, gchar* startupId) c_gdk_x11_display_set_startup_notification_id;
	void function(GdkDisplay* display) c_gdk_x11_display_error_trap_push;
	gint function(GdkDisplay* display) c_gdk_x11_display_error_trap_pop;
	void function(GdkDisplay* display) c_gdk_x11_display_error_trap_pop_ignored;
	XID function(GdkScreen* screen, gint monitorNum) c_gdk_x11_screen_get_monitor_output;
	gulong function(GdkWindow* window) c_gdk_x11_window_get_xid;
	void function(GdkWindow* window, gboolean hideTitlebarWhenMaximized) c_gdk_x11_window_set_hide_titlebar_when_maximized;
	void function(GdkWindow* window, char* variant) c_gdk_x11_window_set_theme_variant;
	void function(GdkWindow* window, guint32 timestamp) c_gdk_x11_window_set_user_time;
	void function(GdkWindow* window) c_gdk_x11_window_move_to_current_desktop;
	gint function() c_gdk_x11_get_default_screen;
	void function() c_gdk_x11_grab_server;
	void function() c_gdk_x11_ungrab_server;
	gint function(GdkKeymap* keymap, guint state) c_gdk_x11_keymap_get_group_for_state;
	gboolean function(GdkKeymap* keymap, guint keycode) c_gdk_x11_keymap_key_is_modifier;
	void function(gchar* smClientId) c_gdk_x11_set_sm_client_id;
	gint function(GdkDisplay* display, GdkAtom encoding, gint format, guchar* text, gint length, gchar*** list) c_gdk_x11_display_text_property_to_text_list;
	void function(gchar** list) c_gdk_x11_free_text_list;
	gint function(GdkDisplay* display, gchar* str, GdkAtom* encoding, gint* format, guchar** ctext, gint* length) c_gdk_x11_display_string_to_compound_text;
	gboolean function(GdkDisplay* display, gchar* str, GdkAtom* encoding, gint* format, guchar** ctext, gint* length) c_gdk_x11_display_utf8_to_compound_text;
	void function(guchar* ctext) c_gdk_x11_free_compound_text;

	// gdk.AppLaunchContext

	GdkAppLaunchContext* function() c_gdk_app_launch_context_new;
	void function(GdkAppLaunchContext* context, GdkDisplay* display) c_gdk_app_launch_context_set_display;
	void function(GdkAppLaunchContext* context, GdkScreen* screen) c_gdk_app_launch_context_set_screen;
	void function(GdkAppLaunchContext* context, gint desktop) c_gdk_app_launch_context_set_desktop;
	void function(GdkAppLaunchContext* context, guint32 timestamp) c_gdk_app_launch_context_set_timestamp;
	void function(GdkAppLaunchContext* context, GIcon* icon) c_gdk_app_launch_context_set_icon;
	void function(GdkAppLaunchContext* context, char* iconName) c_gdk_app_launch_context_set_icon_name;

	// gdk.Testing

	void function(GdkWindow* window) c_gdk_test_render_sync;
	gboolean function(GdkWindow* window, gint x, gint y, guint button, GdkModifierType modifiers, GdkEventType buttonPressrelease) c_gdk_test_simulate_button;
	gboolean function(GdkWindow* window, gint x, gint y, guint keyval, GdkModifierType modifiers, GdkEventType keyPressrelease) c_gdk_test_simulate_key;

	// gdk.

	cairo_surface_t* function(GdkWindow* window, cairo_content_t content, int width, int height) c_gdk_window_create_similar_surface;
	cairo_t* function(GdkWindow* window) c_gdk_cairo_create;
	gboolean function(cairo_t* cr, GdkRectangle* rect) c_gdk_cairo_get_clip_rectangle;
	void function(cairo_t* cr, GdkColor* color) c_gdk_cairo_set_source_color;
	void function(cairo_t* cr, GdkRGBA* rgba) c_gdk_cairo_set_source_rgba;
	void function(cairo_t* cr, GdkPixbuf* pixbuf, gdouble pixbufX, gdouble pixbufY) c_gdk_cairo_set_source_pixbuf;
	void function(cairo_t* cr, GdkWindow* window, gdouble x, gdouble y) c_gdk_cairo_set_source_window;
	void function(cairo_t* cr, GdkRectangle* rectangle) c_gdk_cairo_rectangle;
	void function(cairo_t* cr, cairo_region_t* region) c_gdk_cairo_region;
	cairo_region_t* function(cairo_surface_t* surface) c_gdk_cairo_region_create_from_surface;
}");

// gdk.Gdk

alias c_gdk_init  gdk_init;
alias c_gdk_init_check  gdk_init_check;
alias c_gdk_parse_args  gdk_parse_args;
alias c_gdk_get_display_arg_name  gdk_get_display_arg_name;
alias c_gdk_notify_startup_complete  gdk_notify_startup_complete;
alias c_gdk_notify_startup_complete_with_id  gdk_notify_startup_complete_with_id;
alias c_gdk_get_program_class  gdk_get_program_class;
alias c_gdk_set_program_class  gdk_set_program_class;
alias c_gdk_get_display  gdk_get_display;
alias c_gdk_flush  gdk_flush;
alias c_gdk_screen_width  gdk_screen_width;
alias c_gdk_screen_height  gdk_screen_height;
alias c_gdk_screen_width_mm  gdk_screen_width_mm;
alias c_gdk_screen_height_mm  gdk_screen_height_mm;
alias c_gdk_pointer_grab  gdk_pointer_grab;
alias c_gdk_pointer_ungrab  gdk_pointer_ungrab;
alias c_gdk_pointer_is_grabbed  gdk_pointer_is_grabbed;
alias c_gdk_set_double_click_time  gdk_set_double_click_time;
alias c_gdk_keyboard_grab  gdk_keyboard_grab;
alias c_gdk_keyboard_ungrab  gdk_keyboard_ungrab;
alias c_gdk_beep  gdk_beep;
alias c_gdk_error_trap_push  gdk_error_trap_push;
alias c_gdk_error_trap_pop  gdk_error_trap_pop;
alias c_gdk_error_trap_pop_ignored  gdk_error_trap_pop_ignored;

// gdk.DisplayManager

alias c_gdk_display_manager_get  gdk_display_manager_get;
alias c_gdk_display_manager_get_default_display  gdk_display_manager_get_default_display;
alias c_gdk_display_manager_set_default_display  gdk_display_manager_set_default_display;
alias c_gdk_display_manager_list_displays  gdk_display_manager_list_displays;
alias c_gdk_display_manager_open_display  gdk_display_manager_open_display;

// gdk.Display

alias c_gdk_display_open  gdk_display_open;
alias c_gdk_display_get_default  gdk_display_get_default;
alias c_gdk_display_get_name  gdk_display_get_name;
alias c_gdk_display_get_n_screens  gdk_display_get_n_screens;
alias c_gdk_display_get_screen  gdk_display_get_screen;
alias c_gdk_display_get_default_screen  gdk_display_get_default_screen;
alias c_gdk_display_get_device_manager  gdk_display_get_device_manager;
alias c_gdk_display_pointer_ungrab  gdk_display_pointer_ungrab;
alias c_gdk_display_keyboard_ungrab  gdk_display_keyboard_ungrab;
alias c_gdk_display_pointer_is_grabbed  gdk_display_pointer_is_grabbed;
alias c_gdk_display_device_is_grabbed  gdk_display_device_is_grabbed;
alias c_gdk_display_beep  gdk_display_beep;
alias c_gdk_display_sync  gdk_display_sync;
alias c_gdk_display_flush  gdk_display_flush;
alias c_gdk_display_close  gdk_display_close;
alias c_gdk_display_is_closed  gdk_display_is_closed;
alias c_gdk_display_get_event  gdk_display_get_event;
alias c_gdk_display_peek_event  gdk_display_peek_event;
alias c_gdk_display_put_event  gdk_display_put_event;
alias c_gdk_display_has_pending  gdk_display_has_pending;
alias c_gdk_display_set_double_click_time  gdk_display_set_double_click_time;
alias c_gdk_display_set_double_click_distance  gdk_display_set_double_click_distance;
alias c_gdk_display_get_pointer  gdk_display_get_pointer;
alias c_gdk_display_list_devices  gdk_display_list_devices;
alias c_gdk_display_get_window_at_pointer  gdk_display_get_window_at_pointer;
alias c_gdk_display_warp_pointer  gdk_display_warp_pointer;
alias c_gdk_display_supports_cursor_color  gdk_display_supports_cursor_color;
alias c_gdk_display_supports_cursor_alpha  gdk_display_supports_cursor_alpha;
alias c_gdk_display_get_default_cursor_size  gdk_display_get_default_cursor_size;
alias c_gdk_display_get_maximal_cursor_size  gdk_display_get_maximal_cursor_size;
alias c_gdk_display_get_default_group  gdk_display_get_default_group;
alias c_gdk_display_supports_selection_notification  gdk_display_supports_selection_notification;
alias c_gdk_display_request_selection_notification  gdk_display_request_selection_notification;
alias c_gdk_display_supports_clipboard_persistence  gdk_display_supports_clipboard_persistence;
alias c_gdk_display_store_clipboard  gdk_display_store_clipboard;
alias c_gdk_display_supports_shapes  gdk_display_supports_shapes;
alias c_gdk_display_supports_input_shapes  gdk_display_supports_input_shapes;
alias c_gdk_display_supports_composite  gdk_display_supports_composite;
alias c_gdk_display_get_app_launch_context  gdk_display_get_app_launch_context;
alias c_gdk_display_notify_startup_complete  gdk_display_notify_startup_complete;

// gdk.Screen

alias c_gdk_screen_get_default  gdk_screen_get_default;
alias c_gdk_screen_get_system_visual  gdk_screen_get_system_visual;
alias c_gdk_screen_get_rgba_visual  gdk_screen_get_rgba_visual;
alias c_gdk_screen_is_composited  gdk_screen_is_composited;
alias c_gdk_screen_get_root_window  gdk_screen_get_root_window;
alias c_gdk_screen_get_display  gdk_screen_get_display;
alias c_gdk_screen_get_number  gdk_screen_get_number;
alias c_gdk_screen_get_width  gdk_screen_get_width;
alias c_gdk_screen_get_height  gdk_screen_get_height;
alias c_gdk_screen_get_width_mm  gdk_screen_get_width_mm;
alias c_gdk_screen_get_height_mm  gdk_screen_get_height_mm;
alias c_gdk_screen_list_visuals  gdk_screen_list_visuals;
alias c_gdk_screen_get_toplevel_windows  gdk_screen_get_toplevel_windows;
alias c_gdk_screen_make_display_name  gdk_screen_make_display_name;
alias c_gdk_screen_get_n_monitors  gdk_screen_get_n_monitors;
alias c_gdk_screen_get_primary_monitor  gdk_screen_get_primary_monitor;
alias c_gdk_screen_get_monitor_geometry  gdk_screen_get_monitor_geometry;
alias c_gdk_screen_get_monitor_workarea  gdk_screen_get_monitor_workarea;
alias c_gdk_screen_get_monitor_at_point  gdk_screen_get_monitor_at_point;
alias c_gdk_screen_get_monitor_at_window  gdk_screen_get_monitor_at_window;
alias c_gdk_screen_get_monitor_height_mm  gdk_screen_get_monitor_height_mm;
alias c_gdk_screen_get_monitor_width_mm  gdk_screen_get_monitor_width_mm;
alias c_gdk_screen_get_monitor_plug_name  gdk_screen_get_monitor_plug_name;
alias c_gdk_screen_get_setting  gdk_screen_get_setting;
alias c_gdk_screen_get_font_options  gdk_screen_get_font_options;
alias c_gdk_screen_set_font_options  gdk_screen_set_font_options;
alias c_gdk_screen_get_resolution  gdk_screen_get_resolution;
alias c_gdk_screen_set_resolution  gdk_screen_set_resolution;
alias c_gdk_screen_get_active_window  gdk_screen_get_active_window;
alias c_gdk_screen_get_window_stack  gdk_screen_get_window_stack;

// gdk.DeviceManager

alias c_gdk_disable_multidevice  gdk_disable_multidevice;
alias c_gdk_device_manager_get_display  gdk_device_manager_get_display;
alias c_gdk_device_manager_list_devices  gdk_device_manager_list_devices;
alias c_gdk_device_manager_get_client_pointer  gdk_device_manager_get_client_pointer;

// gdk.Device

alias c_gdk_device_get_name  gdk_device_get_name;
alias c_gdk_device_get_source  gdk_device_get_source;
alias c_gdk_device_set_mode  gdk_device_set_mode;
alias c_gdk_device_get_mode  gdk_device_get_mode;
alias c_gdk_device_set_key  gdk_device_set_key;
alias c_gdk_device_get_key  gdk_device_get_key;
alias c_gdk_device_set_axis_use  gdk_device_set_axis_use;
alias c_gdk_device_get_axis_use  gdk_device_get_axis_use;
alias c_gdk_device_get_associated_device  gdk_device_get_associated_device;
alias c_gdk_device_list_slave_devices  gdk_device_list_slave_devices;
alias c_gdk_device_get_device_type  gdk_device_get_device_type;
alias c_gdk_device_get_display  gdk_device_get_display;
alias c_gdk_device_get_has_cursor  gdk_device_get_has_cursor;
alias c_gdk_device_get_n_axes  gdk_device_get_n_axes;
alias c_gdk_device_get_n_keys  gdk_device_get_n_keys;
alias c_gdk_device_warp  gdk_device_warp;
alias c_gdk_device_grab  gdk_device_grab;
alias c_gdk_device_ungrab  gdk_device_ungrab;
alias c_gdk_device_get_state  gdk_device_get_state;
alias c_gdk_device_get_position  gdk_device_get_position;
alias c_gdk_device_get_window_at_position  gdk_device_get_window_at_position;
alias c_gdk_device_get_history  gdk_device_get_history;
alias c_gdk_device_free_history  gdk_device_free_history;
alias c_gdk_device_get_axis  gdk_device_get_axis;
alias c_gdk_device_list_axes  gdk_device_list_axes;
alias c_gdk_device_get_axis_value  gdk_device_get_axis_value;

// gdk.

alias c_gdk_rectangle_intersect  gdk_rectangle_intersect;
alias c_gdk_rectangle_union  gdk_rectangle_union;

// gdk.Pixbuf

alias c_gdk_pixbuf_get_from_window  gdk_pixbuf_get_from_window;
alias c_gdk_pixbuf_get_from_surface  gdk_pixbuf_get_from_surface;
alias c_gdk_pixbuf_get_type  gdk_pixbuf_get_type;
alias c_gdk_pixbuf_new  gdk_pixbuf_new;
alias c_gdk_pixbuf_new_from_data  gdk_pixbuf_new_from_data;
alias c_gdk_pixbuf_new_from_xpm_data  gdk_pixbuf_new_from_xpm_data;
alias c_gdk_pixbuf_new_from_inline  gdk_pixbuf_new_from_inline;
alias c_gdk_pixbuf_new_subpixbuf  gdk_pixbuf_new_subpixbuf;
alias c_gdk_pixbuf_copy  gdk_pixbuf_copy;
alias c_gdk_pixbuf_get_colorspace  gdk_pixbuf_get_colorspace;
alias c_gdk_pixbuf_get_n_channels  gdk_pixbuf_get_n_channels;
alias c_gdk_pixbuf_get_has_alpha  gdk_pixbuf_get_has_alpha;
alias c_gdk_pixbuf_get_bits_per_sample  gdk_pixbuf_get_bits_per_sample;
alias c_gdk_pixbuf_get_pixels  gdk_pixbuf_get_pixels;
alias c_gdk_pixbuf_get_pixels_with_length  gdk_pixbuf_get_pixels_with_length;
alias c_gdk_pixbuf_get_width  gdk_pixbuf_get_width;
alias c_gdk_pixbuf_get_height  gdk_pixbuf_get_height;
alias c_gdk_pixbuf_get_rowstride  gdk_pixbuf_get_rowstride;
alias c_gdk_pixbuf_get_byte_length  gdk_pixbuf_get_byte_length;
alias c_gdk_pixbuf_get_option  gdk_pixbuf_get_option;
alias c_gdk_pixbuf_ref  gdk_pixbuf_ref;
alias c_gdk_pixbuf_unref  gdk_pixbuf_unref;
alias c_gdk_pixbuf_new_from_file  gdk_pixbuf_new_from_file;
alias c_gdk_pixbuf_new_from_file_at_size  gdk_pixbuf_new_from_file_at_size;
alias c_gdk_pixbuf_new_from_file_at_scale  gdk_pixbuf_new_from_file_at_scale;
alias c_gdk_pixbuf_get_file_info  gdk_pixbuf_get_file_info;
alias c_gdk_pixbuf_new_from_resource  gdk_pixbuf_new_from_resource;
alias c_gdk_pixbuf_new_from_resource_at_scale  gdk_pixbuf_new_from_resource_at_scale;
alias c_gdk_pixbuf_new_from_stream  gdk_pixbuf_new_from_stream;
alias c_gdk_pixbuf_new_from_stream_async  gdk_pixbuf_new_from_stream_async;
alias c_gdk_pixbuf_new_from_stream_finish  gdk_pixbuf_new_from_stream_finish;
alias c_gdk_pixbuf_new_from_stream_at_scale  gdk_pixbuf_new_from_stream_at_scale;
alias c_gdk_pixbuf_new_from_stream_at_scale_async  gdk_pixbuf_new_from_stream_at_scale_async;
alias c_gdk_pixbuf_savev  gdk_pixbuf_savev;
alias c_gdk_pixbuf_save  gdk_pixbuf_save;
alias c_gdk_pixbuf_save_to_callback  gdk_pixbuf_save_to_callback;
alias c_gdk_pixbuf_save_to_callbackv  gdk_pixbuf_save_to_callbackv;
alias c_gdk_pixbuf_save_to_buffer  gdk_pixbuf_save_to_buffer;
alias c_gdk_pixbuf_save_to_bufferv  gdk_pixbuf_save_to_bufferv;
alias c_gdk_pixbuf_save_to_stream  gdk_pixbuf_save_to_stream;
alias c_gdk_pixbuf_save_to_stream_async  gdk_pixbuf_save_to_stream_async;
alias c_gdk_pixbuf_save_to_stream_finish  gdk_pixbuf_save_to_stream_finish;
alias c_gdk_pixbuf_scale_simple  gdk_pixbuf_scale_simple;
alias c_gdk_pixbuf_scale  gdk_pixbuf_scale;
alias c_gdk_pixbuf_composite_color_simple  gdk_pixbuf_composite_color_simple;
alias c_gdk_pixbuf_composite  gdk_pixbuf_composite;
alias c_gdk_pixbuf_composite_color  gdk_pixbuf_composite_color;
alias c_gdk_pixbuf_rotate_simple  gdk_pixbuf_rotate_simple;
alias c_gdk_pixbuf_flip  gdk_pixbuf_flip;
alias c_gdk_pixbuf_add_alpha  gdk_pixbuf_add_alpha;
alias c_gdk_pixbuf_copy_area  gdk_pixbuf_copy_area;
alias c_gdk_pixbuf_saturate_and_pixelate  gdk_pixbuf_saturate_and_pixelate;
alias c_gdk_pixbuf_apply_embedded_orientation  gdk_pixbuf_apply_embedded_orientation;
alias c_gdk_pixbuf_fill  gdk_pixbuf_fill;

// gdk.Color

alias c_gdk_color_copy  gdk_color_copy;
alias c_gdk_color_free  gdk_color_free;
alias c_gdk_color_parse  gdk_color_parse;
alias c_gdk_color_equal  gdk_color_equal;
alias c_gdk_color_hash  gdk_color_hash;
alias c_gdk_color_to_string  gdk_color_to_string;

// gdk.RGBA

alias c_gdk_rgba_copy  gdk_rgba_copy;
alias c_gdk_rgba_free  gdk_rgba_free;
alias c_gdk_rgba_parse  gdk_rgba_parse;
alias c_gdk_rgba_equal  gdk_rgba_equal;
alias c_gdk_rgba_hash  gdk_rgba_hash;
alias c_gdk_rgba_to_string  gdk_rgba_to_string;

// gdk.Visual

alias c_gdk_query_depths  gdk_query_depths;
alias c_gdk_query_visual_types  gdk_query_visual_types;
alias c_gdk_list_visuals  gdk_list_visuals;
alias c_gdk_visual_get_bits_per_rgb  gdk_visual_get_bits_per_rgb;
alias c_gdk_visual_get_blue_pixel_details  gdk_visual_get_blue_pixel_details;
alias c_gdk_visual_get_byte_order  gdk_visual_get_byte_order;
alias c_gdk_visual_get_colormap_size  gdk_visual_get_colormap_size;
alias c_gdk_visual_get_depth  gdk_visual_get_depth;
alias c_gdk_visual_get_green_pixel_details  gdk_visual_get_green_pixel_details;
alias c_gdk_visual_get_red_pixel_details  gdk_visual_get_red_pixel_details;
alias c_gdk_visual_get_visual_type  gdk_visual_get_visual_type;
alias c_gdk_visual_get_best_depth  gdk_visual_get_best_depth;
alias c_gdk_visual_get_best_type  gdk_visual_get_best_type;
alias c_gdk_visual_get_system  gdk_visual_get_system;
alias c_gdk_visual_get_best  gdk_visual_get_best;
alias c_gdk_visual_get_best_with_depth  gdk_visual_get_best_with_depth;
alias c_gdk_visual_get_best_with_type  gdk_visual_get_best_with_type;
alias c_gdk_visual_get_best_with_both  gdk_visual_get_best_with_both;
alias c_gdk_visual_get_screen  gdk_visual_get_screen;

// gdk.Cursor

alias c_gdk_cursor_new  gdk_cursor_new;
alias c_gdk_cursor_new_from_pixbuf  gdk_cursor_new_from_pixbuf;
alias c_gdk_cursor_new_from_name  gdk_cursor_new_from_name;
alias c_gdk_cursor_new_for_display  gdk_cursor_new_for_display;
alias c_gdk_cursor_get_display  gdk_cursor_get_display;
alias c_gdk_cursor_get_image  gdk_cursor_get_image;
alias c_gdk_cursor_get_cursor_type  gdk_cursor_get_cursor_type;
alias c_gdk_cursor_ref  gdk_cursor_ref;
alias c_gdk_cursor_unref  gdk_cursor_unref;

// gdk.Window

alias c_gdk_window_new  gdk_window_new;
alias c_gdk_window_destroy  gdk_window_destroy;
alias c_gdk_window_get_window_type  gdk_window_get_window_type;
alias c_gdk_window_get_display  gdk_window_get_display;
alias c_gdk_window_get_screen  gdk_window_get_screen;
alias c_gdk_window_get_visual  gdk_window_get_visual;
alias c_gdk_window_at_pointer  gdk_window_at_pointer;
alias c_gdk_window_show  gdk_window_show;
alias c_gdk_window_show_unraised  gdk_window_show_unraised;
alias c_gdk_window_hide  gdk_window_hide;
alias c_gdk_window_is_destroyed  gdk_window_is_destroyed;
alias c_gdk_window_is_visible  gdk_window_is_visible;
alias c_gdk_window_is_viewable  gdk_window_is_viewable;
alias c_gdk_window_is_input_only  gdk_window_is_input_only;
alias c_gdk_window_is_shaped  gdk_window_is_shaped;
alias c_gdk_window_get_state  gdk_window_get_state;
alias c_gdk_window_withdraw  gdk_window_withdraw;
alias c_gdk_window_iconify  gdk_window_iconify;
alias c_gdk_window_deiconify  gdk_window_deiconify;
alias c_gdk_window_stick  gdk_window_stick;
alias c_gdk_window_unstick  gdk_window_unstick;
alias c_gdk_window_maximize  gdk_window_maximize;
alias c_gdk_window_unmaximize  gdk_window_unmaximize;
alias c_gdk_window_fullscreen  gdk_window_fullscreen;
alias c_gdk_window_unfullscreen  gdk_window_unfullscreen;
alias c_gdk_window_set_keep_above  gdk_window_set_keep_above;
alias c_gdk_window_set_keep_below  gdk_window_set_keep_below;
alias c_gdk_window_set_opacity  gdk_window_set_opacity;
alias c_gdk_window_set_composited  gdk_window_set_composited;
alias c_gdk_window_get_composited  gdk_window_get_composited;
alias c_gdk_window_move  gdk_window_move;
alias c_gdk_window_resize  gdk_window_resize;
alias c_gdk_window_move_resize  gdk_window_move_resize;
alias c_gdk_window_scroll  gdk_window_scroll;
alias c_gdk_window_move_region  gdk_window_move_region;
alias c_gdk_window_flush  gdk_window_flush;
alias c_gdk_window_has_native  gdk_window_has_native;
alias c_gdk_window_ensure_native  gdk_window_ensure_native;
alias c_gdk_window_reparent  gdk_window_reparent;
alias c_gdk_window_raise  gdk_window_raise;
alias c_gdk_window_lower  gdk_window_lower;
alias c_gdk_window_restack  gdk_window_restack;
alias c_gdk_window_focus  gdk_window_focus;
alias c_gdk_window_register_dnd  gdk_window_register_dnd;
alias c_gdk_window_begin_resize_drag  gdk_window_begin_resize_drag;
alias c_gdk_window_begin_resize_drag_for_device  gdk_window_begin_resize_drag_for_device;
alias c_gdk_window_begin_move_drag  gdk_window_begin_move_drag;
alias c_gdk_window_begin_move_drag_for_device  gdk_window_begin_move_drag_for_device;
alias c_gdk_window_constrain_size  gdk_window_constrain_size;
alias c_gdk_window_beep  gdk_window_beep;
alias c_gdk_window_get_clip_region  gdk_window_get_clip_region;
alias c_gdk_window_begin_paint_rect  gdk_window_begin_paint_rect;
alias c_gdk_window_begin_paint_region  gdk_window_begin_paint_region;
alias c_gdk_window_end_paint  gdk_window_end_paint;
alias c_gdk_window_get_visible_region  gdk_window_get_visible_region;
alias c_gdk_window_invalidate_rect  gdk_window_invalidate_rect;
alias c_gdk_window_invalidate_region  gdk_window_invalidate_region;
alias c_gdk_window_invalidate_maybe_recurse  gdk_window_invalidate_maybe_recurse;
alias c_gdk_window_get_update_area  gdk_window_get_update_area;
alias c_gdk_window_freeze_updates  gdk_window_freeze_updates;
alias c_gdk_window_thaw_updates  gdk_window_thaw_updates;
alias c_gdk_window_process_all_updates  gdk_window_process_all_updates;
alias c_gdk_window_process_updates  gdk_window_process_updates;
alias c_gdk_window_set_debug_updates  gdk_window_set_debug_updates;
alias c_gdk_window_enable_synchronized_configure  gdk_window_enable_synchronized_configure;
alias c_gdk_window_configure_finished  gdk_window_configure_finished;
alias c_gdk_window_set_user_data  gdk_window_set_user_data;
alias c_gdk_window_set_override_redirect  gdk_window_set_override_redirect;
alias c_gdk_window_set_accept_focus  gdk_window_set_accept_focus;
alias c_gdk_window_get_accept_focus  gdk_window_get_accept_focus;
alias c_gdk_window_set_focus_on_map  gdk_window_set_focus_on_map;
alias c_gdk_window_get_focus_on_map  gdk_window_get_focus_on_map;
alias c_gdk_window_add_filter  gdk_window_add_filter;
alias c_gdk_window_remove_filter  gdk_window_remove_filter;
alias c_gdk_window_shape_combine_region  gdk_window_shape_combine_region;
alias c_gdk_window_set_child_shapes  gdk_window_set_child_shapes;
alias c_gdk_window_merge_child_shapes  gdk_window_merge_child_shapes;
alias c_gdk_window_input_shape_combine_region  gdk_window_input_shape_combine_region;
alias c_gdk_window_set_child_input_shapes  gdk_window_set_child_input_shapes;
alias c_gdk_window_merge_child_input_shapes  gdk_window_merge_child_input_shapes;
alias c_gdk_window_set_static_gravities  gdk_window_set_static_gravities;
alias c_gdk_window_set_title  gdk_window_set_title;
alias c_gdk_window_set_background  gdk_window_set_background;
alias c_gdk_window_set_background_rgba  gdk_window_set_background_rgba;
alias c_gdk_window_set_background_pattern  gdk_window_set_background_pattern;
alias c_gdk_window_get_background_pattern  gdk_window_get_background_pattern;
alias c_gdk_window_set_cursor  gdk_window_set_cursor;
alias c_gdk_window_get_cursor  gdk_window_get_cursor;
alias c_gdk_window_get_user_data  gdk_window_get_user_data;
alias c_gdk_window_get_geometry  gdk_window_get_geometry;
alias c_gdk_window_set_geometry_hints  gdk_window_set_geometry_hints;
alias c_gdk_window_get_width  gdk_window_get_width;
alias c_gdk_window_get_height  gdk_window_get_height;
alias c_gdk_window_set_icon_list  gdk_window_set_icon_list;
alias c_gdk_window_set_modal_hint  gdk_window_set_modal_hint;
alias c_gdk_window_get_modal_hint  gdk_window_get_modal_hint;
alias c_gdk_window_set_type_hint  gdk_window_set_type_hint;
alias c_gdk_window_get_type_hint  gdk_window_get_type_hint;
alias c_gdk_window_set_skip_taskbar_hint  gdk_window_set_skip_taskbar_hint;
alias c_gdk_window_set_skip_pager_hint  gdk_window_set_skip_pager_hint;
alias c_gdk_window_set_urgency_hint  gdk_window_set_urgency_hint;
alias c_gdk_window_get_position  gdk_window_get_position;
alias c_gdk_window_get_root_origin  gdk_window_get_root_origin;
alias c_gdk_window_get_frame_extents  gdk_window_get_frame_extents;
alias c_gdk_window_get_origin  gdk_window_get_origin;
alias c_gdk_window_get_root_coords  gdk_window_get_root_coords;
alias c_gdk_window_get_pointer  gdk_window_get_pointer;
alias c_gdk_window_get_device_position  gdk_window_get_device_position;
alias c_gdk_window_get_parent  gdk_window_get_parent;
alias c_gdk_window_get_toplevel  gdk_window_get_toplevel;
alias c_gdk_window_get_children  gdk_window_get_children;
alias c_gdk_window_peek_children  gdk_window_peek_children;
alias c_gdk_window_get_events  gdk_window_get_events;
alias c_gdk_window_set_events  gdk_window_set_events;
alias c_gdk_window_set_icon_name  gdk_window_set_icon_name;
alias c_gdk_window_set_transient_for  gdk_window_set_transient_for;
alias c_gdk_window_set_role  gdk_window_set_role;
alias c_gdk_window_set_startup_id  gdk_window_set_startup_id;
alias c_gdk_window_set_group  gdk_window_set_group;
alias c_gdk_window_get_group  gdk_window_get_group;
alias c_gdk_window_set_decorations  gdk_window_set_decorations;
alias c_gdk_window_get_decorations  gdk_window_get_decorations;
alias c_gdk_window_set_functions  gdk_window_set_functions;
alias c_gdk_get_default_root_window  gdk_get_default_root_window;
alias c_gdk_window_get_support_multidevice  gdk_window_get_support_multidevice;
alias c_gdk_window_set_support_multidevice  gdk_window_set_support_multidevice;
alias c_gdk_window_get_device_cursor  gdk_window_get_device_cursor;
alias c_gdk_window_set_device_cursor  gdk_window_set_device_cursor;
alias c_gdk_window_get_device_events  gdk_window_get_device_events;
alias c_gdk_window_set_device_events  gdk_window_set_device_events;
alias c_gdk_window_get_source_events  gdk_window_get_source_events;
alias c_gdk_window_set_source_events  gdk_window_set_source_events;
alias c_gdk_offscreen_window_get_surface  gdk_offscreen_window_get_surface;
alias c_gdk_offscreen_window_set_embedder  gdk_offscreen_window_set_embedder;
alias c_gdk_offscreen_window_get_embedder  gdk_offscreen_window_get_embedder;
alias c_gdk_window_geometry_changed  gdk_window_geometry_changed;
alias c_gdk_window_coords_from_parent  gdk_window_coords_from_parent;
alias c_gdk_window_coords_to_parent  gdk_window_coords_to_parent;
alias c_gdk_window_get_effective_parent  gdk_window_get_effective_parent;
alias c_gdk_window_get_effective_toplevel  gdk_window_get_effective_toplevel;

// gdk.Event

alias c_gdk_events_pending  gdk_events_pending;
alias c_gdk_event_peek  gdk_event_peek;
alias c_gdk_event_get  gdk_event_get;
alias c_gdk_event_put  gdk_event_put;
alias c_gdk_event_new  gdk_event_new;
alias c_gdk_event_copy  gdk_event_copy;
alias c_gdk_event_free  gdk_event_free;
alias c_gdk_event_get_axis  gdk_event_get_axis;
alias c_gdk_event_get_button  gdk_event_get_button;
alias c_gdk_event_get_click_count  gdk_event_get_click_count;
alias c_gdk_event_get_coords  gdk_event_get_coords;
alias c_gdk_event_get_keycode  gdk_event_get_keycode;
alias c_gdk_event_get_keyval  gdk_event_get_keyval;
alias c_gdk_event_get_root_coords  gdk_event_get_root_coords;
alias c_gdk_event_get_scroll_direction  gdk_event_get_scroll_direction;
alias c_gdk_event_get_scroll_deltas  gdk_event_get_scroll_deltas;
alias c_gdk_event_get_state  gdk_event_get_state;
alias c_gdk_event_get_time  gdk_event_get_time;
alias c_gdk_event_get_event_sequence  gdk_event_get_event_sequence;
alias c_gdk_event_request_motions  gdk_event_request_motions;
alias c_gdk_events_get_angle  gdk_events_get_angle;
alias c_gdk_events_get_center  gdk_events_get_center;
alias c_gdk_events_get_distance  gdk_events_get_distance;
alias c_gdk_event_triggers_context_menu  gdk_event_triggers_context_menu;
alias c_gdk_event_handler_set  gdk_event_handler_set;
alias c_gdk_get_show_events  gdk_get_show_events;
alias c_gdk_set_show_events  gdk_set_show_events;
alias c_gdk_event_set_screen  gdk_event_set_screen;
alias c_gdk_event_get_screen  gdk_event_get_screen;
alias c_gdk_event_get_device  gdk_event_get_device;
alias c_gdk_event_set_device  gdk_event_set_device;
alias c_gdk_event_get_source_device  gdk_event_get_source_device;
alias c_gdk_event_set_source_device  gdk_event_set_source_device;
alias c_gdk_setting_get  gdk_setting_get;

// gdk.Keymap

alias c_gdk_keymap_get_default  gdk_keymap_get_default;
alias c_gdk_keymap_get_for_display  gdk_keymap_get_for_display;
alias c_gdk_keymap_lookup_key  gdk_keymap_lookup_key;
alias c_gdk_keymap_translate_keyboard_state  gdk_keymap_translate_keyboard_state;
alias c_gdk_keymap_get_entries_for_keyval  gdk_keymap_get_entries_for_keyval;
alias c_gdk_keymap_get_entries_for_keycode  gdk_keymap_get_entries_for_keycode;
alias c_gdk_keymap_get_direction  gdk_keymap_get_direction;
alias c_gdk_keymap_have_bidi_layouts  gdk_keymap_have_bidi_layouts;
alias c_gdk_keymap_get_caps_lock_state  gdk_keymap_get_caps_lock_state;
alias c_gdk_keymap_get_num_lock_state  gdk_keymap_get_num_lock_state;
alias c_gdk_keymap_get_modifier_state  gdk_keymap_get_modifier_state;
alias c_gdk_keymap_add_virtual_modifiers  gdk_keymap_add_virtual_modifiers;
alias c_gdk_keymap_map_virtual_modifiers  gdk_keymap_map_virtual_modifiers;
alias c_gdk_keymap_get_modifier_mask  gdk_keymap_get_modifier_mask;
alias c_gdk_keyval_name  gdk_keyval_name;
alias c_gdk_keyval_from_name  gdk_keyval_from_name;
alias c_gdk_keyval_convert_case  gdk_keyval_convert_case;
alias c_gdk_keyval_to_upper  gdk_keyval_to_upper;
alias c_gdk_keyval_to_lower  gdk_keyval_to_lower;
alias c_gdk_keyval_is_upper  gdk_keyval_is_upper;
alias c_gdk_keyval_is_lower  gdk_keyval_is_lower;
alias c_gdk_keyval_to_unicode  gdk_keyval_to_unicode;
alias c_gdk_unicode_to_keyval  gdk_unicode_to_keyval;

// gdk.Selection

alias c_gdk_selection_owner_set  gdk_selection_owner_set;
alias c_gdk_selection_owner_set_for_display  gdk_selection_owner_set_for_display;
alias c_gdk_selection_owner_get  gdk_selection_owner_get;
alias c_gdk_selection_owner_get_for_display  gdk_selection_owner_get_for_display;
alias c_gdk_selection_convert  gdk_selection_convert;
alias c_gdk_selection_property_get  gdk_selection_property_get;
alias c_gdk_selection_send_notify  gdk_selection_send_notify;
alias c_gdk_selection_send_notify_for_display  gdk_selection_send_notify_for_display;

// gdk.DragContext

alias c_gdk_drag_get_selection  gdk_drag_get_selection;
alias c_gdk_drag_abort  gdk_drag_abort;
alias c_gdk_drop_reply  gdk_drop_reply;
alias c_gdk_drag_drop  gdk_drag_drop;
alias c_gdk_drag_find_window_for_screen  gdk_drag_find_window_for_screen;
alias c_gdk_drag_begin  gdk_drag_begin;
alias c_gdk_drag_begin_for_device  gdk_drag_begin_for_device;
alias c_gdk_drag_motion  gdk_drag_motion;
alias c_gdk_drop_finish  gdk_drop_finish;
alias c_gdk_drag_status  gdk_drag_status;
alias c_gdk_drag_drop_succeeded  gdk_drag_drop_succeeded;
alias c_gdk_window_get_drag_protocol  gdk_window_get_drag_protocol;
alias c_gdk_drag_context_get_actions  gdk_drag_context_get_actions;
alias c_gdk_drag_context_get_suggested_action  gdk_drag_context_get_suggested_action;
alias c_gdk_drag_context_get_selected_action  gdk_drag_context_get_selected_action;
alias c_gdk_drag_context_list_targets  gdk_drag_context_list_targets;
alias c_gdk_drag_context_get_device  gdk_drag_context_get_device;
alias c_gdk_drag_context_set_device  gdk_drag_context_set_device;
alias c_gdk_drag_context_get_source_window  gdk_drag_context_get_source_window;
alias c_gdk_drag_context_get_dest_window  gdk_drag_context_get_dest_window;
alias c_gdk_drag_context_get_protocol  gdk_drag_context_get_protocol;

// gdk.

alias c_gdk_text_property_to_utf8_list_for_display  gdk_text_property_to_utf8_list_for_display;
alias c_gdk_utf8_to_string_target  gdk_utf8_to_string_target;
alias c_gdk_atom_intern  gdk_atom_intern;
alias c_gdk_atom_intern_static_string  gdk_atom_intern_static_string;
alias c_gdk_atom_name  gdk_atom_name;
alias c_gdk_property_get  gdk_property_get;
alias c_gdk_property_change  gdk_property_change;
alias c_gdk_property_delete  gdk_property_delete;

// gdk.

alias c_gdk_threads_init  gdk_threads_init;
alias c_gdk_threads_enter  gdk_threads_enter;
alias c_gdk_threads_leave  gdk_threads_leave;
alias c_gdk_threads_set_lock_functions  gdk_threads_set_lock_functions;
alias c_gdk_threads_add_idle  gdk_threads_add_idle;
alias c_gdk_threads_add_idle_full  gdk_threads_add_idle_full;
alias c_gdk_threads_add_timeout  gdk_threads_add_timeout;
alias c_gdk_threads_add_timeout_full  gdk_threads_add_timeout_full;
alias c_gdk_threads_add_timeout_seconds  gdk_threads_add_timeout_seconds;
alias c_gdk_threads_add_timeout_seconds_full  gdk_threads_add_timeout_seconds_full;

// gdk.X11

alias c_gdk_x11_get_server_time  gdk_x11_get_server_time;
alias c_gdk_x11_device_get_id  gdk_x11_device_get_id;
alias c_gdk_x11_device_manager_lookup  gdk_x11_device_manager_lookup;
alias c_gdk_x11_display_broadcast_startup_message  gdk_x11_display_broadcast_startup_message;
alias c_gdk_x11_display_get_startup_notification_id  gdk_x11_display_get_startup_notification_id;
alias c_gdk_x11_display_set_startup_notification_id  gdk_x11_display_set_startup_notification_id;
alias c_gdk_x11_display_error_trap_push  gdk_x11_display_error_trap_push;
alias c_gdk_x11_display_error_trap_pop  gdk_x11_display_error_trap_pop;
alias c_gdk_x11_display_error_trap_pop_ignored  gdk_x11_display_error_trap_pop_ignored;
alias c_gdk_x11_screen_get_monitor_output  gdk_x11_screen_get_monitor_output;
alias c_gdk_x11_window_get_xid  gdk_x11_window_get_xid;
alias c_gdk_x11_window_set_hide_titlebar_when_maximized  gdk_x11_window_set_hide_titlebar_when_maximized;
alias c_gdk_x11_window_set_theme_variant  gdk_x11_window_set_theme_variant;
alias c_gdk_x11_window_set_user_time  gdk_x11_window_set_user_time;
alias c_gdk_x11_window_move_to_current_desktop  gdk_x11_window_move_to_current_desktop;
alias c_gdk_x11_get_default_screen  gdk_x11_get_default_screen;
alias c_gdk_x11_grab_server  gdk_x11_grab_server;
alias c_gdk_x11_ungrab_server  gdk_x11_ungrab_server;
alias c_gdk_x11_keymap_get_group_for_state  gdk_x11_keymap_get_group_for_state;
alias c_gdk_x11_keymap_key_is_modifier  gdk_x11_keymap_key_is_modifier;
alias c_gdk_x11_set_sm_client_id  gdk_x11_set_sm_client_id;
alias c_gdk_x11_display_text_property_to_text_list  gdk_x11_display_text_property_to_text_list;
alias c_gdk_x11_free_text_list  gdk_x11_free_text_list;
alias c_gdk_x11_display_string_to_compound_text  gdk_x11_display_string_to_compound_text;
alias c_gdk_x11_display_utf8_to_compound_text  gdk_x11_display_utf8_to_compound_text;
alias c_gdk_x11_free_compound_text  gdk_x11_free_compound_text;

// gdk.AppLaunchContext

alias c_gdk_app_launch_context_new  gdk_app_launch_context_new;
alias c_gdk_app_launch_context_set_display  gdk_app_launch_context_set_display;
alias c_gdk_app_launch_context_set_screen  gdk_app_launch_context_set_screen;
alias c_gdk_app_launch_context_set_desktop  gdk_app_launch_context_set_desktop;
alias c_gdk_app_launch_context_set_timestamp  gdk_app_launch_context_set_timestamp;
alias c_gdk_app_launch_context_set_icon  gdk_app_launch_context_set_icon;
alias c_gdk_app_launch_context_set_icon_name  gdk_app_launch_context_set_icon_name;

// gdk.Testing

alias c_gdk_test_render_sync  gdk_test_render_sync;
alias c_gdk_test_simulate_button  gdk_test_simulate_button;
alias c_gdk_test_simulate_key  gdk_test_simulate_key;

// gdk.

alias c_gdk_window_create_similar_surface  gdk_window_create_similar_surface;
alias c_gdk_cairo_create  gdk_cairo_create;
alias c_gdk_cairo_get_clip_rectangle  gdk_cairo_get_clip_rectangle;
alias c_gdk_cairo_set_source_color  gdk_cairo_set_source_color;
alias c_gdk_cairo_set_source_rgba  gdk_cairo_set_source_rgba;
alias c_gdk_cairo_set_source_pixbuf  gdk_cairo_set_source_pixbuf;
alias c_gdk_cairo_set_source_window  gdk_cairo_set_source_window;
alias c_gdk_cairo_rectangle  gdk_cairo_rectangle;
alias c_gdk_cairo_region  gdk_cairo_region;
alias c_gdk_cairo_region_create_from_surface  gdk_cairo_region_create_from_surface;
