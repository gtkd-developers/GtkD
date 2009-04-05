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


module gtkc.gdk;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.gdktypes;
private import gtkc.cairotypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// gdk.Gdk

	Linker.link(gdk_init, "gdk_init", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_init_check, "gdk_init_check", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_parse_args, "gdk_parse_args", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_display_arg_name, "gdk_get_display_arg_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_locale, "gdk_set_locale", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_sm_client_id, "gdk_set_sm_client_id", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_exit, "gdk_exit", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_notify_startup_complete, "gdk_notify_startup_complete", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_notify_startup_complete_with_id, "gdk_notify_startup_complete_with_id", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_program_class, "gdk_get_program_class", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_program_class, "gdk_set_program_class", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_display, "gdk_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_flush, "gdk_flush", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_width, "gdk_screen_width", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_height, "gdk_screen_height", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_width_mm, "gdk_screen_width_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_height_mm, "gdk_screen_height_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pointer_grab, "gdk_pointer_grab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pointer_ungrab, "gdk_pointer_ungrab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pointer_is_grabbed, "gdk_pointer_is_grabbed", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_double_click_time, "gdk_set_double_click_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyboard_grab, "gdk_keyboard_grab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyboard_ungrab, "gdk_keyboard_ungrab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_beep, "gdk_beep", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_use_xshm, "gdk_get_use_xshm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_use_xshm, "gdk_set_use_xshm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_error_trap_push, "gdk_error_trap_push", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_error_trap_pop, "gdk_error_trap_pop", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Display

	Linker.link(gdk_display_open, "gdk_display_open", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default, "gdk_display_get_default", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_name, "gdk_display_get_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_n_screens, "gdk_display_get_n_screens", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_screen, "gdk_display_get_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default_screen, "gdk_display_get_default_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_pointer_ungrab, "gdk_display_pointer_ungrab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_keyboard_ungrab, "gdk_display_keyboard_ungrab", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_pointer_is_grabbed, "gdk_display_pointer_is_grabbed", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_beep, "gdk_display_beep", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_sync, "gdk_display_sync", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_flush, "gdk_display_flush", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_close, "gdk_display_close", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_list_devices, "gdk_display_list_devices", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_event, "gdk_display_get_event", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_peek_event, "gdk_display_peek_event", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_put_event, "gdk_display_put_event", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_add_client_message_filter, "gdk_display_add_client_message_filter", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_set_double_click_time, "gdk_display_set_double_click_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_set_double_click_distance, "gdk_display_set_double_click_distance", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_pointer, "gdk_display_get_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_window_at_pointer, "gdk_display_get_window_at_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_set_pointer_hooks, "gdk_display_set_pointer_hooks", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_warp_pointer, "gdk_display_warp_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_cursor_color, "gdk_display_supports_cursor_color", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_cursor_alpha, "gdk_display_supports_cursor_alpha", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default_cursor_size, "gdk_display_get_default_cursor_size", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_maximal_cursor_size, "gdk_display_get_maximal_cursor_size", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_default_group, "gdk_display_get_default_group", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_selection_notification, "gdk_display_supports_selection_notification", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_request_selection_notification, "gdk_display_request_selection_notification", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_clipboard_persistence, "gdk_display_supports_clipboard_persistence", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_store_clipboard, "gdk_display_store_clipboard", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_shapes, "gdk_display_supports_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_input_shapes, "gdk_display_supports_input_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_supports_composite, "gdk_display_supports_composite", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.DisplayManager

	Linker.link(gdk_display_manager_get, "gdk_display_manager_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_get_default_display, "gdk_display_manager_get_default_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_set_default_display, "gdk_display_manager_set_default_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_manager_list_displays, "gdk_display_manager_list_displays", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_display_get_core_pointer, "gdk_display_get_core_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Screen

	Linker.link(gdk_screen_get_default, "gdk_screen_get_default", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_default_colormap, "gdk_screen_get_default_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_set_default_colormap, "gdk_screen_set_default_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_system_colormap, "gdk_screen_get_system_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_system_visual, "gdk_screen_get_system_visual", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_rgb_colormap, "gdk_screen_get_rgb_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_rgb_visual, "gdk_screen_get_rgb_visual", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_rgba_colormap, "gdk_screen_get_rgba_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_rgba_visual, "gdk_screen_get_rgba_visual", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_is_composited, "gdk_screen_is_composited", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_root_window, "gdk_screen_get_root_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_display, "gdk_screen_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_number, "gdk_screen_get_number", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_width, "gdk_screen_get_width", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_height, "gdk_screen_get_height", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_width_mm, "gdk_screen_get_width_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_height_mm, "gdk_screen_get_height_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_list_visuals, "gdk_screen_list_visuals", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_toplevel_windows, "gdk_screen_get_toplevel_windows", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_make_display_name, "gdk_screen_make_display_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_n_monitors, "gdk_screen_get_n_monitors", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_geometry, "gdk_screen_get_monitor_geometry", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_at_point, "gdk_screen_get_monitor_at_point", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_at_window, "gdk_screen_get_monitor_at_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_height_mm, "gdk_screen_get_monitor_height_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_width_mm, "gdk_screen_get_monitor_width_mm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_monitor_plug_name, "gdk_screen_get_monitor_plug_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_broadcast_client_message, "gdk_screen_broadcast_client_message", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_setting, "gdk_screen_get_setting", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_font_options, "gdk_screen_get_font_options", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_set_font_options, "gdk_screen_set_font_options", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_resolution, "gdk_screen_get_resolution", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_set_resolution, "gdk_screen_set_resolution", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_active_window, "gdk_screen_get_active_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_screen_get_window_stack, "gdk_screen_get_window_stack", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_spawn_on_screen, "gdk_spawn_on_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_spawn_on_screen_with_pipes, "gdk_spawn_on_screen_with_pipes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_spawn_command_line_on_screen, "gdk_spawn_command_line_on_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Rectangle

	Linker.link(gdk_rectangle_intersect, "gdk_rectangle_intersect", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rectangle_union, "gdk_rectangle_union", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Region

	Linker.link(gdk_region_new, "gdk_region_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_polygon, "gdk_region_polygon", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_copy, "gdk_region_copy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_rectangle, "gdk_region_rectangle", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_destroy, "gdk_region_destroy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_get_clipbox, "gdk_region_get_clipbox", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_get_rectangles, "gdk_region_get_rectangles", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_empty, "gdk_region_empty", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_equal, "gdk_region_equal", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_point_in, "gdk_region_point_in", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_rect_in, "gdk_region_rect_in", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_offset, "gdk_region_offset", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_shrink, "gdk_region_shrink", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_union_with_rect, "gdk_region_union_with_rect", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_intersect, "gdk_region_intersect", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_union, "gdk_region_union", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_subtract, "gdk_region_subtract", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_xor, "gdk_region_xor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_region_spans_intersect_foreach, "gdk_region_spans_intersect_foreach", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.GC

	Linker.link(gdk_gc_new, "gdk_gc_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_new_with_values, "gdk_gc_new_with_values", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_get_screen, "gdk_gc_get_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_ref, "gdk_gc_ref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_unref, "gdk_gc_unref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_values, "gdk_gc_set_values", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_get_values, "gdk_gc_get_values", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_foreground, "gdk_gc_set_foreground", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_background, "gdk_gc_set_background", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_rgb_fg_color, "gdk_gc_set_rgb_fg_color", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_rgb_bg_color, "gdk_gc_set_rgb_bg_color", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_font, "gdk_gc_set_font", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_function, "gdk_gc_set_function", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_fill, "gdk_gc_set_fill", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_tile, "gdk_gc_set_tile", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_stipple, "gdk_gc_set_stipple", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_ts_origin, "gdk_gc_set_ts_origin", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_clip_origin, "gdk_gc_set_clip_origin", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_clip_mask, "gdk_gc_set_clip_mask", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_clip_rectangle, "gdk_gc_set_clip_rectangle", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_clip_region, "gdk_gc_set_clip_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_subwindow, "gdk_gc_set_subwindow", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_exposures, "gdk_gc_set_exposures", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_line_attributes, "gdk_gc_set_line_attributes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_dashes, "gdk_gc_set_dashes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_copy, "gdk_gc_copy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_set_colormap, "gdk_gc_set_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_get_colormap, "gdk_gc_get_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_gc_offset, "gdk_gc_offset", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Drawable

	Linker.link(gdk_drawable_ref, "gdk_drawable_ref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_unref, "gdk_drawable_unref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_set_data, "gdk_drawable_set_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_get_data, "gdk_drawable_get_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_get_display, "gdk_drawable_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_get_screen, "gdk_drawable_get_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_get_visual, "gdk_drawable_get_visual", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_set_colormap, "gdk_drawable_set_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_get_colormap, "gdk_drawable_get_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_get_depth, "gdk_drawable_get_depth", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_get_size, "gdk_drawable_get_size", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_get_clip_region, "gdk_drawable_get_clip_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_get_visible_region, "gdk_drawable_get_visible_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_point, "gdk_draw_point", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_points, "gdk_draw_points", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_line, "gdk_draw_line", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_lines, "gdk_draw_lines", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_pixbuf, "gdk_draw_pixbuf", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_segments, "gdk_draw_segments", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_rectangle, "gdk_draw_rectangle", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_arc, "gdk_draw_arc", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_polygon, "gdk_draw_polygon", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_trapezoids, "gdk_draw_trapezoids", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_glyphs, "gdk_draw_glyphs", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_glyphs_transformed, "gdk_draw_glyphs_transformed", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_layout_line, "gdk_draw_layout_line", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_layout_line_with_colors, "gdk_draw_layout_line_with_colors", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_layout, "gdk_draw_layout", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_layout_with_colors, "gdk_draw_layout_with_colors", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_string, "gdk_draw_string", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_text, "gdk_draw_text", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_text_wc, "gdk_draw_text_wc", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_drawable, "gdk_draw_drawable", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_image, "gdk_draw_image", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_get_image, "gdk_drawable_get_image", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drawable_copy_to_image, "gdk_drawable_copy_to_image", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Pixmap

	Linker.link(gdk_pixmap_new, "gdk_pixmap_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_create_from_data, "gdk_pixmap_create_from_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_create_from_xpm, "gdk_pixmap_create_from_xpm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_colormap_create_from_xpm, "gdk_pixmap_colormap_create_from_xpm", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_create_from_xpm_d, "gdk_pixmap_create_from_xpm_d", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_colormap_create_from_xpm_d, "gdk_pixmap_colormap_create_from_xpm_d", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Bitmap

	Linker.link(gdk_bitmap_create_from_data, "gdk_bitmap_create_from_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.RGB

	Linker.link(gdk_rgb_init, "gdk_rgb_init", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_rgb_image, "gdk_draw_rgb_image", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_rgb_image_dithalign, "gdk_draw_rgb_image_dithalign", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_indexed_image, "gdk_draw_indexed_image", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_gray_image, "gdk_draw_gray_image", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_rgb_32_image, "gdk_draw_rgb_32_image", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_draw_rgb_32_image_dithalign, "gdk_draw_rgb_32_image_dithalign", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_gc_set_foreground, "gdk_rgb_gc_set_foreground", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_gc_set_background, "gdk_rgb_gc_set_background", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_xpixel_from_rgb, "gdk_rgb_xpixel_from_rgb", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_find_color, "gdk_rgb_find_color", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_set_install, "gdk_rgb_set_install", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_set_min_colors, "gdk_rgb_set_min_colors", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_get_visual, "gdk_rgb_get_visual", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_get_colormap, "gdk_rgb_get_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_ditherable, "gdk_rgb_ditherable", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_colormap_ditherable, "gdk_rgb_colormap_ditherable", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_set_verbose, "gdk_rgb_set_verbose", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.RgbCmap

	Linker.link(gdk_rgb_cmap_new, "gdk_rgb_cmap_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_rgb_cmap_free, "gdk_rgb_cmap_free", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.ImageGdk

	Linker.link(gdk_image_new, "gdk_image_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_image_new_bitmap, "gdk_image_new_bitmap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_image_get, "gdk_image_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_image_ref, "gdk_image_ref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_image_unref, "gdk_image_unref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_image_get_colormap, "gdk_image_get_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_image_set_colormap, "gdk_image_set_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_image_put_pixel, "gdk_image_put_pixel", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_image_get_pixel, "gdk_image_get_pixel", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Pixbuf

	Linker.link(gdk_pixbuf_render_threshold_alpha, "gdk_pixbuf_render_threshold_alpha", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_render_to_drawable, "gdk_pixbuf_render_to_drawable", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_render_to_drawable_alpha, "gdk_pixbuf_render_to_drawable_alpha", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_render_pixmap_and_mask, "gdk_pixbuf_render_pixmap_and_mask", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_render_pixmap_and_mask_for_colormap, "gdk_pixbuf_render_pixmap_and_mask_for_colormap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_from_drawable, "gdk_pixbuf_get_from_drawable", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_from_image, "gdk_pixbuf_get_from_image", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_type, "gdk_pixbuf_get_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_data, "gdk_pixbuf_new_from_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_xpm_data, "gdk_pixbuf_new_from_xpm_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_inline, "gdk_pixbuf_new_from_inline", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_subpixbuf, "gdk_pixbuf_new_subpixbuf", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_copy, "gdk_pixbuf_copy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_colorspace, "gdk_pixbuf_get_colorspace", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_n_channels, "gdk_pixbuf_get_n_channels", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_has_alpha, "gdk_pixbuf_get_has_alpha", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_bits_per_sample, "gdk_pixbuf_get_bits_per_sample", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_pixels, "gdk_pixbuf_get_pixels", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_width, "gdk_pixbuf_get_width", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_height, "gdk_pixbuf_get_height", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_rowstride, "gdk_pixbuf_get_rowstride", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_get_option, "gdk_pixbuf_get_option", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_file, "gdk_pixbuf_new_from_file", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_file_at_size, "gdk_pixbuf_new_from_file_at_size", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_file_at_scale, "gdk_pixbuf_new_from_file_at_scale", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream, "gdk_pixbuf_new_from_stream", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_new_from_stream_at_scale, "gdk_pixbuf_new_from_stream_at_scale", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_savev, "gdk_pixbuf_savev", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save, "gdk_pixbuf_save", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_callback, "gdk_pixbuf_save_to_callback", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_callbackv, "gdk_pixbuf_save_to_callbackv", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_buffer, "gdk_pixbuf_save_to_buffer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_bufferv, "gdk_pixbuf_save_to_bufferv", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_save_to_stream, "gdk_pixbuf_save_to_stream", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_scale_simple, "gdk_pixbuf_scale_simple", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_scale, "gdk_pixbuf_scale", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_composite_color_simple, "gdk_pixbuf_composite_color_simple", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_composite, "gdk_pixbuf_composite", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_composite_color, "gdk_pixbuf_composite_color", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_rotate_simple, "gdk_pixbuf_rotate_simple", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_flip, "gdk_pixbuf_flip", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_add_alpha, "gdk_pixbuf_add_alpha", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_copy_area, "gdk_pixbuf_copy_area", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_saturate_and_pixelate, "gdk_pixbuf_saturate_and_pixelate", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_apply_embedded_orientation, "gdk_pixbuf_apply_embedded_orientation", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixbuf_fill, "gdk_pixbuf_fill", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Colormap

	Linker.link(gdk_colormap_new, "gdk_colormap_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_ref, "gdk_colormap_ref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_unref, "gdk_colormap_unref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_get_system, "gdk_colormap_get_system", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_get_system_size, "gdk_colormap_get_system_size", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_change, "gdk_colormap_change", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_alloc_colors, "gdk_colormap_alloc_colors", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_alloc_color, "gdk_colormap_alloc_color", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_free_colors, "gdk_colormap_free_colors", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_query_color, "gdk_colormap_query_color", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_get_visual, "gdk_colormap_get_visual", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colormap_get_screen, "gdk_colormap_get_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colors_store, "gdk_colors_store", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colors_alloc, "gdk_colors_alloc", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_colors_free, "gdk_colors_free", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Color

	Linker.link(gdk_color_copy, "gdk_color_copy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_free, "gdk_color_free", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_white, "gdk_color_white", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_black, "gdk_color_black", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_parse, "gdk_color_parse", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_alloc, "gdk_color_alloc", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_change, "gdk_color_change", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_equal, "gdk_color_equal", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_hash, "gdk_color_hash", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_color_to_string, "gdk_color_to_string", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Visual

	Linker.link(gdk_query_depths, "gdk_query_depths", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_query_visual_types, "gdk_query_visual_types", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_list_visuals, "gdk_list_visuals", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_depth, "gdk_visual_get_best_depth", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_type, "gdk_visual_get_best_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_system, "gdk_visual_get_system", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best, "gdk_visual_get_best", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_with_depth, "gdk_visual_get_best_with_depth", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_with_type, "gdk_visual_get_best_with_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_best_with_both, "gdk_visual_get_best_with_both", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_visual_get_screen, "gdk_visual_get_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Font

	Linker.link(gdk_font_load, "gdk_font_load", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_font_load_for_display, "gdk_font_load_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_fontset_load, "gdk_fontset_load", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_fontset_load_for_display, "gdk_fontset_load_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_font_from_description, "gdk_font_from_description", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_font_from_description_for_display, "gdk_font_from_description_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_font_get_display, "gdk_font_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_font_ref, "gdk_font_ref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_font_unref, "gdk_font_unref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_font_id, "gdk_font_id", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_font_equal, "gdk_font_equal", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_string_extents, "gdk_string_extents", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_text_extents, "gdk_text_extents", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_text_extents_wc, "gdk_text_extents_wc", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_string_width, "gdk_string_width", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_text_width, "gdk_text_width", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_text_width_wc, "gdk_text_width_wc", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_char_width, "gdk_char_width", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_char_width_wc, "gdk_char_width_wc", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_string_measure, "gdk_string_measure", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_text_measure, "gdk_text_measure", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_char_measure, "gdk_char_measure", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_string_height, "gdk_string_height", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_text_height, "gdk_text_height", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_char_height, "gdk_char_height", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_wcstombs, "gdk_wcstombs", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_mbstowcs, "gdk_mbstowcs", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Cursor

	Linker.link(gdk_cursor_new, "gdk_cursor_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_from_pixmap, "gdk_cursor_new_from_pixmap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_from_pixbuf, "gdk_cursor_new_from_pixbuf", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_from_name, "gdk_cursor_new_from_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_new_for_display, "gdk_cursor_new_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_get_display, "gdk_cursor_get_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_get_image, "gdk_cursor_get_image", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_ref, "gdk_cursor_ref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cursor_unref, "gdk_cursor_unref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Window

	Linker.link(gdk_window_new, "gdk_window_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_destroy, "gdk_window_destroy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_window_type, "gdk_window_get_window_type", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_at_pointer, "gdk_window_at_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_show, "gdk_window_show", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_show_unraised, "gdk_window_show_unraised", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_hide, "gdk_window_hide", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_visible, "gdk_window_is_visible", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_is_viewable, "gdk_window_is_viewable", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_state, "gdk_window_get_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_withdraw, "gdk_window_withdraw", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_iconify, "gdk_window_iconify", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_deiconify, "gdk_window_deiconify", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_stick, "gdk_window_stick", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unstick, "gdk_window_unstick", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_maximize, "gdk_window_maximize", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unmaximize, "gdk_window_unmaximize", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_fullscreen, "gdk_window_fullscreen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_unfullscreen, "gdk_window_unfullscreen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_keep_above, "gdk_window_set_keep_above", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_keep_below, "gdk_window_set_keep_below", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_opacity, "gdk_window_set_opacity", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_composited, "gdk_window_set_composited", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_move, "gdk_window_move", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_resize, "gdk_window_resize", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_move_resize, "gdk_window_move_resize", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_scroll, "gdk_window_scroll", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_move_region, "gdk_window_move_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_reparent, "gdk_window_reparent", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_clear, "gdk_window_clear", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_clear_area, "gdk_window_clear_area", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_clear_area_e, "gdk_window_clear_area_e", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_raise, "gdk_window_raise", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_lower, "gdk_window_lower", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_focus, "gdk_window_focus", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_register_dnd, "gdk_window_register_dnd", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_resize_drag, "gdk_window_begin_resize_drag", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_move_drag, "gdk_window_begin_move_drag", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_constrain_size, "gdk_window_constrain_size", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_beep, "gdk_window_beep", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_paint_rect, "gdk_window_begin_paint_rect", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_begin_paint_region, "gdk_window_begin_paint_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_end_paint, "gdk_window_end_paint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_invalidate_rect, "gdk_window_invalidate_rect", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_invalidate_region, "gdk_window_invalidate_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_update_area, "gdk_window_get_update_area", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_freeze_updates, "gdk_window_freeze_updates", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_thaw_updates, "gdk_window_thaw_updates", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_process_all_updates, "gdk_window_process_all_updates", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_process_updates, "gdk_window_process_updates", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_debug_updates, "gdk_window_set_debug_updates", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_internal_paint_info, "gdk_window_get_internal_paint_info", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_enable_synchronized_configure, "gdk_window_enable_synchronized_configure", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_configure_finished, "gdk_window_configure_finished", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_user_data, "gdk_window_set_user_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_override_redirect, "gdk_window_set_override_redirect", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_accept_focus, "gdk_window_set_accept_focus", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_focus_on_map, "gdk_window_set_focus_on_map", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_add_filter, "gdk_window_add_filter", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_remove_filter, "gdk_window_remove_filter", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_shape_combine_mask, "gdk_window_shape_combine_mask", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_shape_combine_region, "gdk_window_shape_combine_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_child_shapes, "gdk_window_set_child_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_merge_child_shapes, "gdk_window_merge_child_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_input_shape_combine_mask, "gdk_window_input_shape_combine_mask", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_input_shape_combine_region, "gdk_window_input_shape_combine_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_child_input_shapes, "gdk_window_set_child_input_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_merge_child_input_shapes, "gdk_window_merge_child_input_shapes", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_static_gravities, "gdk_window_set_static_gravities", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_hints, "gdk_window_set_hints", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_title, "gdk_window_set_title", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_background, "gdk_window_set_background", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_back_pixmap, "gdk_window_set_back_pixmap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_cursor, "gdk_window_set_cursor", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_user_data, "gdk_window_get_user_data", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_geometry, "gdk_window_get_geometry", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_geometry_hints, "gdk_window_set_geometry_hints", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_icon_list, "gdk_window_set_icon_list", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_modal_hint, "gdk_window_set_modal_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_type_hint, "gdk_window_set_type_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_type_hint, "gdk_window_get_type_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_skip_taskbar_hint, "gdk_window_set_skip_taskbar_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_skip_pager_hint, "gdk_window_set_skip_pager_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_urgency_hint, "gdk_window_set_urgency_hint", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_position, "gdk_window_get_position", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_root_origin, "gdk_window_get_root_origin", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_frame_extents, "gdk_window_get_frame_extents", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_origin, "gdk_window_get_origin", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_deskrelative_origin, "gdk_window_get_deskrelative_origin", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_pointer, "gdk_window_get_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_parent, "gdk_window_get_parent", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_toplevel, "gdk_window_get_toplevel", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_children, "gdk_window_get_children", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_peek_children, "gdk_window_peek_children", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_events, "gdk_window_get_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_events, "gdk_window_set_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_icon, "gdk_window_set_icon", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_icon_name, "gdk_window_set_icon_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_transient_for, "gdk_window_set_transient_for", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_role, "gdk_window_set_role", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_startup_id, "gdk_window_set_startup_id", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_group, "gdk_window_set_group", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_group, "gdk_window_get_group", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_decorations, "gdk_window_set_decorations", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_decorations, "gdk_window_get_decorations", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_set_functions, "gdk_window_set_functions", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_get_toplevels, "gdk_window_get_toplevels", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_default_root_window, "gdk_get_default_root_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_pointer_hooks, "gdk_set_pointer_hooks", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_redirect_to_drawable, "gdk_window_redirect_to_drawable", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_remove_redirection, "gdk_window_remove_redirection", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Event

	Linker.link(gdk_events_pending, "gdk_events_pending", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_peek, "gdk_event_peek", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get, "gdk_event_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_graphics_expose, "gdk_event_get_graphics_expose", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_put, "gdk_event_put", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_new, "gdk_event_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_copy, "gdk_event_copy", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_free, "gdk_event_free", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_time, "gdk_event_get_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_state, "gdk_event_get_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_axis, "gdk_event_get_axis", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_coords, "gdk_event_get_coords", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_root_coords, "gdk_event_get_root_coords", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_request_motions, "gdk_event_request_motions", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_handler_set, "gdk_event_handler_set", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_send_client_message, "gdk_event_send_client_message", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_send_client_message_for_display, "gdk_event_send_client_message_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_send_clientmessage_toall, "gdk_event_send_clientmessage_toall", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_add_client_message_filter, "gdk_add_client_message_filter", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_get_show_events, "gdk_get_show_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_set_show_events, "gdk_set_show_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_set_screen, "gdk_event_set_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_event_get_screen, "gdk_event_get_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_setting_get, "gdk_setting_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.


	// gdk.Keymap

	Linker.link(gdk_keymap_get_default, "gdk_keymap_get_default", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_for_display, "gdk_keymap_get_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_lookup_key, "gdk_keymap_lookup_key", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_translate_keyboard_state, "gdk_keymap_translate_keyboard_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_entries_for_keyval, "gdk_keymap_get_entries_for_keyval", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_entries_for_keycode, "gdk_keymap_get_entries_for_keycode", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_direction, "gdk_keymap_get_direction", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_have_bidi_layouts, "gdk_keymap_have_bidi_layouts", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keymap_get_caps_lock_state, "gdk_keymap_get_caps_lock_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_name, "gdk_keyval_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_from_name, "gdk_keyval_from_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_convert_case, "gdk_keyval_convert_case", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_to_upper, "gdk_keyval_to_upper", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_to_lower, "gdk_keyval_to_lower", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_is_upper, "gdk_keyval_is_upper", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_is_lower, "gdk_keyval_is_lower", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_keyval_to_unicode, "gdk_keyval_to_unicode", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_unicode_to_keyval, "gdk_unicode_to_keyval", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Selection

	Linker.link(gdk_selection_owner_set, "gdk_selection_owner_set", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_owner_set_for_display, "gdk_selection_owner_set_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_owner_get, "gdk_selection_owner_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_owner_get_for_display, "gdk_selection_owner_get_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_convert, "gdk_selection_convert", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_property_get, "gdk_selection_property_get", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_send_notify, "gdk_selection_send_notify", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_selection_send_notify_for_display, "gdk_selection_send_notify_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.DragContext

	Linker.link(gdk_drag_get_selection, "gdk_drag_get_selection", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_abort, "gdk_drag_abort", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drop_reply, "gdk_drop_reply", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_new, "gdk_drag_context_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_drop, "gdk_drag_drop", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_find_window, "gdk_drag_find_window", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_find_window_for_screen, "gdk_drag_find_window_for_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_ref, "gdk_drag_context_ref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_begin, "gdk_drag_begin", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_motion, "gdk_drag_motion", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drop_finish, "gdk_drop_finish", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_get_protocol, "gdk_drag_get_protocol", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_get_protocol_for_display, "gdk_drag_get_protocol_for_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_context_unref, "gdk_drag_context_unref", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_status, "gdk_drag_status", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_drag_drop_succeeded, "gdk_drag_drop_succeeded", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.

	Linker.link(gdk_threads_init, "gdk_threads_init", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_enter, "gdk_threads_enter", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_leave, "gdk_threads_leave", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_set_lock_functions, "gdk_threads_set_lock_functions", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_idle, "gdk_threads_add_idle", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_idle_full, "gdk_threads_add_idle_full", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout, "gdk_threads_add_timeout", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout_full, "gdk_threads_add_timeout_full", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout_seconds, "gdk_threads_add_timeout_seconds", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_threads_add_timeout_seconds_full, "gdk_threads_add_timeout_seconds_full", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Input

	Linker.link(gdk_input_add_full, "gdk_input_add_full", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_input_add, "gdk_input_add", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_input_remove, "gdk_input_remove", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Device

	Linker.link(gdk_devices_list, "gdk_devices_list", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_set_source, "gdk_device_set_source", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_set_mode, "gdk_device_set_mode", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_set_key, "gdk_device_set_key", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_set_axis_use, "gdk_device_set_axis_use", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_core_pointer, "gdk_device_get_core_pointer", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_state, "gdk_device_get_state", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_history, "gdk_device_get_history", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_free_history, "gdk_device_free_history", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_device_get_axis, "gdk_device_get_axis", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_input_set_extension_events, "gdk_input_set_extension_events", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.X11

	Linker.link(gdk_window_foreign_new, "gdk_window_foreign_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_xid_table_lookup, "gdk_xid_table_lookup", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_window_lookup, "gdk_window_lookup", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_pixmap_lookup, "gdk_pixmap_lookup", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_get_server_time, "gdk_x11_get_server_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_screen_get_monitor_output, "gdk_x11_screen_get_monitor_output", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_set_user_time, "gdk_x11_window_set_user_time", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_window_move_to_current_desktop, "gdk_x11_window_move_to_current_desktop", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_broadcast_startup_message, "gdk_x11_display_broadcast_startup_message", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_display_get_startup_notification_id, "gdk_x11_display_get_startup_notification_id", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_drawable_get_xid, "gdk_x11_drawable_get_xid", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_font_get_name, "gdk_x11_font_get_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_font_get_xfont, "gdk_x11_font_get_xfont", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_get_default_screen, "gdk_x11_get_default_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_grab_server, "gdk_x11_grab_server", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_x11_ungrab_server, "gdk_x11_ungrab_server", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.AppLaunchContext

	Linker.link(gdk_app_launch_context_new, "gdk_app_launch_context_new", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_display, "gdk_app_launch_context_set_display", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_screen, "gdk_app_launch_context_set_screen", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_desktop, "gdk_app_launch_context_set_desktop", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_timestamp, "gdk_app_launch_context_set_timestamp", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_icon, "gdk_app_launch_context_set_icon", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_app_launch_context_set_icon_name, "gdk_app_launch_context_set_icon_name", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.Testing

	Linker.link(gdk_test_render_sync, "gdk_test_render_sync", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_test_simulate_button, "gdk_test_simulate_button", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_test_simulate_key, "gdk_test_simulate_key", LIBRARY.GDK, LIBRARY.GDKPIXBUF);

	// gdk.

	Linker.link(gdk_cairo_create, "gdk_cairo_create", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_color, "gdk_cairo_set_source_color", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_pixbuf, "gdk_cairo_set_source_pixbuf", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_set_source_pixmap, "gdk_cairo_set_source_pixmap", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_rectangle, "gdk_cairo_rectangle", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
	Linker.link(gdk_cairo_region, "gdk_cairo_region", LIBRARY.GDK, LIBRARY.GDKPIXBUF);
}

extern(C)
{
	
	// gdk.Gdk
	
	typedef void function(gint* argc, gchar*** argv) c_gdk_init;
	typedef gboolean function(gint* argc, gchar*** argv) c_gdk_init_check;
	typedef void function(gint* argc, gchar*** argv) c_gdk_parse_args;
	typedef gchar* function() c_gdk_get_display_arg_name;
	typedef gchar* function() c_gdk_set_locale;
	typedef void function(gchar* smClientId) c_gdk_set_sm_client_id;
	typedef void function(gint errorCode) c_gdk_exit;
	typedef void function() c_gdk_notify_startup_complete;
	typedef void function(gchar* startupId) c_gdk_notify_startup_complete_with_id;
	typedef char* function() c_gdk_get_program_class;
	typedef void function(char* programClass) c_gdk_set_program_class;
	typedef gchar* function() c_gdk_get_display;
	typedef void function() c_gdk_flush;
	typedef gint function() c_gdk_screen_width;
	typedef gint function() c_gdk_screen_height;
	typedef gint function() c_gdk_screen_width_mm;
	typedef gint function() c_gdk_screen_height_mm;
	typedef GdkGrabStatus function(GdkWindow* window, gboolean ownerEvents, GdkEventMask eventMask, GdkWindow* confineTo, GdkCursor* cursor, guint32 time) c_gdk_pointer_grab;
	typedef void function(guint32 time) c_gdk_pointer_ungrab;
	typedef gboolean function() c_gdk_pointer_is_grabbed;
	typedef void function(guint msec) c_gdk_set_double_click_time;
	typedef GdkGrabStatus function(GdkWindow* window, gboolean ownerEvents, guint32 time) c_gdk_keyboard_grab;
	typedef void function(guint32 time) c_gdk_keyboard_ungrab;
	typedef void function() c_gdk_beep;
	typedef gboolean function() c_gdk_get_use_xshm;
	typedef void function(gboolean useXshm) c_gdk_set_use_xshm;
	typedef void function() c_gdk_error_trap_push;
	typedef gint function() c_gdk_error_trap_pop;
	
	// gdk.Display
	
	typedef GdkDisplay* function(gchar* displayName) c_gdk_display_open;
	typedef GdkDisplay* function() c_gdk_display_get_default;
	typedef gchar* function(GdkDisplay* display) c_gdk_display_get_name;
	typedef gint function(GdkDisplay* display) c_gdk_display_get_n_screens;
	typedef GdkScreen* function(GdkDisplay* display, gint screenNum) c_gdk_display_get_screen;
	typedef GdkScreen* function(GdkDisplay* display) c_gdk_display_get_default_screen;
	typedef void function(GdkDisplay* display, guint32 time) c_gdk_display_pointer_ungrab;
	typedef void function(GdkDisplay* display, guint32 time) c_gdk_display_keyboard_ungrab;
	typedef gboolean function(GdkDisplay* display) c_gdk_display_pointer_is_grabbed;
	typedef void function(GdkDisplay* display) c_gdk_display_beep;
	typedef void function(GdkDisplay* display) c_gdk_display_sync;
	typedef void function(GdkDisplay* display) c_gdk_display_flush;
	typedef void function(GdkDisplay* display) c_gdk_display_close;
	typedef GList* function(GdkDisplay* display) c_gdk_display_list_devices;
	typedef GdkEvent* function(GdkDisplay* display) c_gdk_display_get_event;
	typedef GdkEvent* function(GdkDisplay* display) c_gdk_display_peek_event;
	typedef void function(GdkDisplay* display, GdkEvent* event) c_gdk_display_put_event;
	typedef void function(GdkDisplay* display, GdkAtom messageType, GdkFilterFunc func, gpointer data) c_gdk_display_add_client_message_filter;
	typedef void function(GdkDisplay* display, guint msec) c_gdk_display_set_double_click_time;
	typedef void function(GdkDisplay* display, guint distance) c_gdk_display_set_double_click_distance;
	typedef void function(GdkDisplay* display, GdkScreen** screen, gint* x, gint* y, GdkModifierType* mask) c_gdk_display_get_pointer;
	typedef GdkWindow* function(GdkDisplay* display, gint* winX, gint* winY) c_gdk_display_get_window_at_pointer;
	typedef GdkDisplayPointerHooks* function(GdkDisplay* display, GdkDisplayPointerHooks* newHooks) c_gdk_display_set_pointer_hooks;
	typedef void function(GdkDisplay* display, GdkScreen* screen, gint x, gint y) c_gdk_display_warp_pointer;
	typedef gboolean function(GdkDisplay* display) c_gdk_display_supports_cursor_color;
	typedef gboolean function(GdkDisplay* display) c_gdk_display_supports_cursor_alpha;
	typedef guint function(GdkDisplay* display) c_gdk_display_get_default_cursor_size;
	typedef void function(GdkDisplay* display, guint* width, guint* height) c_gdk_display_get_maximal_cursor_size;
	typedef GdkWindow* function(GdkDisplay* display) c_gdk_display_get_default_group;
	typedef gboolean function(GdkDisplay* display) c_gdk_display_supports_selection_notification;
	typedef gboolean function(GdkDisplay* display, GdkAtom selection) c_gdk_display_request_selection_notification;
	typedef gboolean function(GdkDisplay* display) c_gdk_display_supports_clipboard_persistence;
	typedef void function(GdkDisplay* display, GdkWindow* clipboardWindow, guint32 time, GdkAtom* targets, gint nTargets) c_gdk_display_store_clipboard;
	typedef gboolean function(GdkDisplay* display) c_gdk_display_supports_shapes;
	typedef gboolean function(GdkDisplay* display) c_gdk_display_supports_input_shapes;
	typedef gboolean function(GdkDisplay* display) c_gdk_display_supports_composite;
	
	// gdk.DisplayManager
	
	typedef GdkDisplayManager* function() c_gdk_display_manager_get;
	typedef GdkDisplay* function(GdkDisplayManager* displayManager) c_gdk_display_manager_get_default_display;
	typedef void function(GdkDisplayManager* displayManager, GdkDisplay* display) c_gdk_display_manager_set_default_display;
	typedef GSList* function(GdkDisplayManager* displayManager) c_gdk_display_manager_list_displays;
	typedef GdkDevice* function(GdkDisplay* display) c_gdk_display_get_core_pointer;
	
	// gdk.Screen
	
	typedef GdkScreen* function() c_gdk_screen_get_default;
	typedef GdkColormap* function(GdkScreen* screen) c_gdk_screen_get_default_colormap;
	typedef void function(GdkScreen* screen, GdkColormap* colormap) c_gdk_screen_set_default_colormap;
	typedef GdkColormap* function(GdkScreen* screen) c_gdk_screen_get_system_colormap;
	typedef GdkVisual* function(GdkScreen* screen) c_gdk_screen_get_system_visual;
	typedef GdkColormap* function(GdkScreen* screen) c_gdk_screen_get_rgb_colormap;
	typedef GdkVisual* function(GdkScreen* screen) c_gdk_screen_get_rgb_visual;
	typedef GdkColormap* function(GdkScreen* screen) c_gdk_screen_get_rgba_colormap;
	typedef GdkVisual* function(GdkScreen* screen) c_gdk_screen_get_rgba_visual;
	typedef gboolean function(GdkScreen* screen) c_gdk_screen_is_composited;
	typedef GdkWindow* function(GdkScreen* screen) c_gdk_screen_get_root_window;
	typedef GdkDisplay* function(GdkScreen* screen) c_gdk_screen_get_display;
	typedef gint function(GdkScreen* screen) c_gdk_screen_get_number;
	typedef gint function(GdkScreen* screen) c_gdk_screen_get_width;
	typedef gint function(GdkScreen* screen) c_gdk_screen_get_height;
	typedef gint function(GdkScreen* screen) c_gdk_screen_get_width_mm;
	typedef gint function(GdkScreen* screen) c_gdk_screen_get_height_mm;
	typedef GList* function(GdkScreen* screen) c_gdk_screen_list_visuals;
	typedef GList* function(GdkScreen* screen) c_gdk_screen_get_toplevel_windows;
	typedef gchar* function(GdkScreen* screen) c_gdk_screen_make_display_name;
	typedef gint function(GdkScreen* screen) c_gdk_screen_get_n_monitors;
	typedef void function(GdkScreen* screen, gint monitorNum, GdkRectangle* dest) c_gdk_screen_get_monitor_geometry;
	typedef gint function(GdkScreen* screen, gint x, gint y) c_gdk_screen_get_monitor_at_point;
	typedef gint function(GdkScreen* screen, GdkWindow* window) c_gdk_screen_get_monitor_at_window;
	typedef gint function(GdkScreen* screen, gint monitorNum) c_gdk_screen_get_monitor_height_mm;
	typedef gint function(GdkScreen* screen, gint monitorNum) c_gdk_screen_get_monitor_width_mm;
	typedef gchar* function(GdkScreen* screen, gint monitorNum) c_gdk_screen_get_monitor_plug_name;
	typedef void function(GdkScreen* screen, GdkEvent* event) c_gdk_screen_broadcast_client_message;
	typedef gboolean function(GdkScreen* screen, gchar* name, GValue* value) c_gdk_screen_get_setting;
	typedef cairo_font_options_t* function(GdkScreen* screen) c_gdk_screen_get_font_options;
	typedef void function(GdkScreen* screen, cairo_font_options_t* options) c_gdk_screen_set_font_options;
	typedef gdouble function(GdkScreen* screen) c_gdk_screen_get_resolution;
	typedef void function(GdkScreen* screen, gdouble dpi) c_gdk_screen_set_resolution;
	typedef GdkWindow* function(GdkScreen* screen) c_gdk_screen_get_active_window;
	typedef GList* function(GdkScreen* screen) c_gdk_screen_get_window_stack;
	typedef gboolean function(GdkScreen* screen, gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, gint* childPid, GError** error) c_gdk_spawn_on_screen;
	typedef gboolean function(GdkScreen* screen, gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, gint* childPid, gint* standardInput, gint* standardOutput, gint* standardError, GError** error) c_gdk_spawn_on_screen_with_pipes;
	typedef gboolean function(GdkScreen* screen, gchar* commandLine, GError** error) c_gdk_spawn_command_line_on_screen;
	
	// gdk.Rectangle
	
	typedef gboolean function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest) c_gdk_rectangle_intersect;
	typedef void function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest) c_gdk_rectangle_union;
	
	// gdk.Region
	
	typedef GdkRegion* function() c_gdk_region_new;
	typedef GdkRegion* function(GdkPoint* points, gint nPoints, GdkFillRule fillRule) c_gdk_region_polygon;
	typedef GdkRegion* function(GdkRegion* region) c_gdk_region_copy;
	typedef GdkRegion* function(GdkRectangle* rectangle) c_gdk_region_rectangle;
	typedef void function(GdkRegion* region) c_gdk_region_destroy;
	typedef void function(GdkRegion* region, GdkRectangle* rectangle) c_gdk_region_get_clipbox;
	typedef void function(GdkRegion* region, GdkRectangle** rectangles, gint* nRectangles) c_gdk_region_get_rectangles;
	typedef gboolean function(GdkRegion* region) c_gdk_region_empty;
	typedef gboolean function(GdkRegion* region1, GdkRegion* region2) c_gdk_region_equal;
	typedef gboolean function(GdkRegion* region, int x, int y) c_gdk_region_point_in;
	typedef GdkOverlapType function(GdkRegion* region, GdkRectangle* rectangle) c_gdk_region_rect_in;
	typedef void function(GdkRegion* region, gint dx, gint dy) c_gdk_region_offset;
	typedef void function(GdkRegion* region, gint dx, gint dy) c_gdk_region_shrink;
	typedef void function(GdkRegion* region, GdkRectangle* rect) c_gdk_region_union_with_rect;
	typedef void function(GdkRegion* source1, GdkRegion* source2) c_gdk_region_intersect;
	typedef void function(GdkRegion* source1, GdkRegion* source2) c_gdk_region_union;
	typedef void function(GdkRegion* source1, GdkRegion* source2) c_gdk_region_subtract;
	typedef void function(GdkRegion* source1, GdkRegion* source2) c_gdk_region_xor;
	typedef void function(GdkRegion* region, GdkSpan* spans, int nSpans, gboolean sorted, GdkSpanFunc funct, gpointer data) c_gdk_region_spans_intersect_foreach;
	
	// gdk.GC
	
	typedef GdkGC* function(GdkDrawable* drawable) c_gdk_gc_new;
	typedef GdkGC* function(GdkDrawable* drawable, GdkGCValues* values, GdkGCValuesMask valuesMask) c_gdk_gc_new_with_values;
	typedef GdkScreen* function(GdkGC* gc) c_gdk_gc_get_screen;
	typedef GdkGC* function(GdkGC* gc) c_gdk_gc_ref;
	typedef void function(GdkGC* gc) c_gdk_gc_unref;
	typedef void function(GdkGC* gc, GdkGCValues* values, GdkGCValuesMask valuesMask) c_gdk_gc_set_values;
	typedef void function(GdkGC* gc, GdkGCValues* values) c_gdk_gc_get_values;
	typedef void function(GdkGC* gc, GdkColor* color) c_gdk_gc_set_foreground;
	typedef void function(GdkGC* gc, GdkColor* color) c_gdk_gc_set_background;
	typedef void function(GdkGC* gc, GdkColor* color) c_gdk_gc_set_rgb_fg_color;
	typedef void function(GdkGC* gc, GdkColor* color) c_gdk_gc_set_rgb_bg_color;
	typedef void function(GdkGC* gc, GdkFont* font) c_gdk_gc_set_font;
	typedef void function(GdkGC* gc, GdkFunction funct) c_gdk_gc_set_function;
	typedef void function(GdkGC* gc, GdkFill fill) c_gdk_gc_set_fill;
	typedef void function(GdkGC* gc, GdkPixmap* tile) c_gdk_gc_set_tile;
	typedef void function(GdkGC* gc, GdkPixmap* stipple) c_gdk_gc_set_stipple;
	typedef void function(GdkGC* gc, gint x, gint y) c_gdk_gc_set_ts_origin;
	typedef void function(GdkGC* gc, gint x, gint y) c_gdk_gc_set_clip_origin;
	typedef void function(GdkGC* gc, GdkBitmap* mask) c_gdk_gc_set_clip_mask;
	typedef void function(GdkGC* gc, GdkRectangle* rectangle) c_gdk_gc_set_clip_rectangle;
	typedef void function(GdkGC* gc, GdkRegion* region) c_gdk_gc_set_clip_region;
	typedef void function(GdkGC* gc, GdkSubwindowMode mode) c_gdk_gc_set_subwindow;
	typedef void function(GdkGC* gc, gboolean exposures) c_gdk_gc_set_exposures;
	typedef void function(GdkGC* gc, gint lineWidth, GdkLineStyle lineStyle, GdkCapStyle capStyle, GdkJoinStyle joinStyle) c_gdk_gc_set_line_attributes;
	typedef void function(GdkGC* gc, gint dashOffset, gint8[] dashList, gint n) c_gdk_gc_set_dashes;
	typedef void function(GdkGC* dstGc, GdkGC* srcGc) c_gdk_gc_copy;
	typedef void function(GdkGC* gc, GdkColormap* colormap) c_gdk_gc_set_colormap;
	typedef GdkColormap* function(GdkGC* gc) c_gdk_gc_get_colormap;
	typedef void function(GdkGC* gc, gint xOffset, gint yOffset) c_gdk_gc_offset;
	
	// gdk.Drawable
	
	typedef GdkDrawable* function(GdkDrawable* drawable) c_gdk_drawable_ref;
	typedef void function(GdkDrawable* drawable) c_gdk_drawable_unref;
	typedef void function(GdkDrawable* drawable, gchar* key, gpointer data, GDestroyNotify destroyFunc) c_gdk_drawable_set_data;
	typedef gpointer function(GdkDrawable* drawable, gchar* key) c_gdk_drawable_get_data;
	typedef GdkDisplay* function(GdkDrawable* drawable) c_gdk_drawable_get_display;
	typedef GdkScreen* function(GdkDrawable* drawable) c_gdk_drawable_get_screen;
	typedef GdkVisual* function(GdkDrawable* drawable) c_gdk_drawable_get_visual;
	typedef void function(GdkDrawable* drawable, GdkColormap* colormap) c_gdk_drawable_set_colormap;
	typedef GdkColormap* function(GdkDrawable* drawable) c_gdk_drawable_get_colormap;
	typedef gint function(GdkDrawable* drawable) c_gdk_drawable_get_depth;
	typedef void function(GdkDrawable* drawable, gint* width, gint* height) c_gdk_drawable_get_size;
	typedef GdkRegion* function(GdkDrawable* drawable) c_gdk_drawable_get_clip_region;
	typedef GdkRegion* function(GdkDrawable* drawable) c_gdk_drawable_get_visible_region;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y) c_gdk_draw_point;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, GdkPoint* points, gint nPoints) c_gdk_draw_points;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x1_, gint y1_, gint x2_, gint y2_) c_gdk_draw_line;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, GdkPoint* points, gint nPoints) c_gdk_draw_lines;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, GdkPixbuf* pixbuf, gint srcX, gint srcY, gint destX, gint destY, gint width, gint height, GdkRgbDither dither, gint xDither, gint yDither) c_gdk_draw_pixbuf;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, GdkSegment* segs, gint nSegs) c_gdk_draw_segments;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gboolean filled, gint x, gint y, gint width, gint height) c_gdk_draw_rectangle;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gboolean filled, gint x, gint y, gint width, gint height, gint angle1, gint angle2) c_gdk_draw_arc;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gboolean filled, GdkPoint* points, gint nPoints) c_gdk_draw_polygon;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, GdkTrapezoid* trapezoids, gint nTrapezoids) c_gdk_draw_trapezoids;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, PangoFont* font, gint x, gint y, PangoGlyphString* glyphs) c_gdk_draw_glyphs;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, PangoMatrix* matrix, PangoFont* font, gint x, gint y, PangoGlyphString* glyphs) c_gdk_draw_glyphs_transformed;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayoutLine* line) c_gdk_draw_layout_line;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayoutLine* line, GdkColor* foreground, GdkColor* background) c_gdk_draw_layout_line_with_colors;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayout* layout) c_gdk_draw_layout;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayout* layout, GdkColor* foreground, GdkColor* background) c_gdk_draw_layout_with_colors;
	typedef void function(GdkDrawable* drawable, GdkFont* font, GdkGC* gc, gint x, gint y, gchar* string) c_gdk_draw_string;
	typedef void function(GdkDrawable* drawable, GdkFont* font, GdkGC* gc, gint x, gint y, gchar* text, gint textLength) c_gdk_draw_text;
	typedef void function(GdkDrawable* drawable, GdkFont* font, GdkGC* gc, gint x, gint y, GdkWChar* text, gint textLength) c_gdk_draw_text_wc;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, GdkDrawable* src, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height) c_gdk_draw_drawable;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, GdkImage* image, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height) c_gdk_draw_image;
	typedef GdkImage* function(GdkDrawable* drawable, gint x, gint y, gint width, gint height) c_gdk_drawable_get_image;
	typedef GdkImage* function(GdkDrawable* drawable, GdkImage* image, gint srcX, gint srcY, gint destX, gint destY, gint width, gint height) c_gdk_drawable_copy_to_image;
	
	// gdk.Pixmap
	
	typedef GdkPixmap* function(GdkDrawable* drawable, gint width, gint height, gint depth) c_gdk_pixmap_new;
	typedef GdkPixmap* function(GdkDrawable* drawable, gchar* data, gint width, gint height, gint depth, GdkColor* fg, GdkColor* bg) c_gdk_pixmap_create_from_data;
	typedef GdkPixmap* function(GdkDrawable* drawable, GdkBitmap** mask, GdkColor* transparentColor, gchar* filename) c_gdk_pixmap_create_from_xpm;
	typedef GdkPixmap* function(GdkDrawable* drawable, GdkColormap* colormap, GdkBitmap** mask, GdkColor* transparentColor, gchar* filename) c_gdk_pixmap_colormap_create_from_xpm;
	typedef GdkPixmap* function(GdkDrawable* drawable, GdkBitmap** mask, GdkColor* transparentColor, gchar** data) c_gdk_pixmap_create_from_xpm_d;
	typedef GdkPixmap* function(GdkDrawable* drawable, GdkColormap* colormap, GdkBitmap** mask, GdkColor* transparentColor, gchar** data) c_gdk_pixmap_colormap_create_from_xpm_d;
	
	// gdk.Bitmap
	
	typedef GdkBitmap* function(GdkDrawable* drawable, gchar* data, gint width, gint height) c_gdk_bitmap_create_from_data;
	
	// gdk.RGB
	
	typedef void function() c_gdk_rgb_init;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* rgbBuf, gint rowstride) c_gdk_draw_rgb_image;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* rgbBuf, gint rowstride, gint xdith, gint ydith) c_gdk_draw_rgb_image_dithalign;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride, GdkRgbCmap* cmap) c_gdk_draw_indexed_image;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride) c_gdk_draw_gray_image;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride) c_gdk_draw_rgb_32_image;
	typedef void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride, gint xdith, gint ydith) c_gdk_draw_rgb_32_image_dithalign;
	typedef void function(GdkGC* gc, guint32 rgb) c_gdk_rgb_gc_set_foreground;
	typedef void function(GdkGC* gc, guint32 rgb) c_gdk_rgb_gc_set_background;
	typedef gulong function(guint32 rgb) c_gdk_rgb_xpixel_from_rgb;
	typedef void function(GdkColormap* colormap, GdkColor* color) c_gdk_rgb_find_color;
	typedef void function(gboolean install) c_gdk_rgb_set_install;
	typedef void function(gint minColors) c_gdk_rgb_set_min_colors;
	typedef GdkVisual* function() c_gdk_rgb_get_visual;
	typedef GdkColormap* function() c_gdk_rgb_get_colormap;
	typedef gboolean function() c_gdk_rgb_ditherable;
	typedef gboolean function(GdkColormap* cmap) c_gdk_rgb_colormap_ditherable;
	typedef void function(gboolean verbose) c_gdk_rgb_set_verbose;
	
	// gdk.RgbCmap
	
	typedef GdkRgbCmap* function(guint32* colors, gint nColors) c_gdk_rgb_cmap_new;
	typedef void function(GdkRgbCmap* cmap) c_gdk_rgb_cmap_free;
	
	// gdk.ImageGdk
	
	typedef GdkImage* function(GdkImageType type, GdkVisual* visual, gint width, gint height) c_gdk_image_new;
	typedef GdkImage* function(GdkVisual* visual, gpointer data, gint width, gint height) c_gdk_image_new_bitmap;
	typedef GdkImage* function(GdkDrawable* drawable, gint x, gint y, gint width, gint height) c_gdk_image_get;
	typedef GdkImage* function(GdkImage* image) c_gdk_image_ref;
	typedef void function(GdkImage* image) c_gdk_image_unref;
	typedef GdkColormap* function(GdkImage* image) c_gdk_image_get_colormap;
	typedef void function(GdkImage* image, GdkColormap* colormap) c_gdk_image_set_colormap;
	typedef void function(GdkImage* image, gint x, gint y, guint32 pixel) c_gdk_image_put_pixel;
	typedef guint32 function(GdkImage* image, gint x, gint y) c_gdk_image_get_pixel;
	
	// gdk.Pixbuf
	
	typedef void function(GdkPixbuf* pixbuf, GdkBitmap* bitmap, int srcX, int srcY, int destX, int destY, int width, int height, int alphaThreshold) c_gdk_pixbuf_render_threshold_alpha;
	typedef void function(GdkPixbuf* pixbuf, GdkDrawable* drawable, GdkGC* gc, int srcX, int srcY, int destX, int destY, int width, int height, GdkRgbDither dither, int xDither, int yDither) c_gdk_pixbuf_render_to_drawable;
	typedef void function(GdkPixbuf* pixbuf, GdkDrawable* drawable, int srcX, int srcY, int destX, int destY, int width, int height, GdkPixbufAlphaMode alphaMode, int alphaThreshold, GdkRgbDither dither, int xDither, int yDither) c_gdk_pixbuf_render_to_drawable_alpha;
	typedef void function(GdkPixbuf* pixbuf, GdkPixmap** pixmapReturn, GdkBitmap** maskReturn, int alphaThreshold) c_gdk_pixbuf_render_pixmap_and_mask;
	typedef void function(GdkPixbuf* pixbuf, GdkColormap* colormap, GdkPixmap** pixmapReturn, GdkBitmap** maskReturn, int alphaThreshold) c_gdk_pixbuf_render_pixmap_and_mask_for_colormap;
	typedef GdkPixbuf* function(GdkPixbuf* dest, GdkDrawable* src, GdkColormap* cmap, int srcX, int srcY, int destX, int destY, int width, int height) c_gdk_pixbuf_get_from_drawable;
	typedef GdkPixbuf* function(GdkPixbuf* dest, GdkImage* src, GdkColormap* cmap, int srcX, int srcY, int destX, int destY, int width, int height) c_gdk_pixbuf_get_from_image;
	typedef GType function() c_gdk_pixbuf_get_type;
	typedef GdkPixbuf* function(guchar* data, GdkColorspace colorspace, gboolean hasAlpha, int bitsPerSample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroyFn, gpointer destroyFnData) c_gdk_pixbuf_new_from_data;
	typedef GdkPixbuf* function(char** data) c_gdk_pixbuf_new_from_xpm_data;
	typedef GdkPixbuf* function(gint dataLength, guint8* data, gboolean copyPixels, GError** error) c_gdk_pixbuf_new_from_inline;
	typedef GdkPixbuf* function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height) c_gdk_pixbuf_new_subpixbuf;
	typedef GdkPixbuf* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_copy;
	typedef GdkColorspace function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_colorspace;
	typedef int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_n_channels;
	typedef gboolean function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_has_alpha;
	typedef int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_bits_per_sample;
	typedef guchar* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_pixels;
	typedef int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_width;
	typedef int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_height;
	typedef int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_rowstride;
	typedef gchar* function(GdkPixbuf* pixbuf, gchar* key) c_gdk_pixbuf_get_option;
	typedef GdkPixbuf* function(char* filename, GError** error) c_gdk_pixbuf_new_from_file;
	typedef GdkPixbuf* function(char* filename, int width, int height, GError** error) c_gdk_pixbuf_new_from_file_at_size;
	typedef GdkPixbuf* function(char* filename, int width, int height, gboolean preserveAspectRatio, GError** error) c_gdk_pixbuf_new_from_file_at_scale;
	typedef GdkPixbuf* function(GInputStream* stream, GCancellable* cancellable, GError** error) c_gdk_pixbuf_new_from_stream;
	typedef GdkPixbuf* function(GInputStream* stream, gint width, gint height, gboolean preserveAspectRatio, GCancellable* cancellable, GError** error) c_gdk_pixbuf_new_from_stream_at_scale;
	typedef gboolean function(GdkPixbuf* pixbuf, char* filename, char* type, char** optionKeys, char** optionValues, GError** error) c_gdk_pixbuf_savev;
	typedef gboolean function(GdkPixbuf* pixbuf, char* filename, char* type, GError** error, ... ) c_gdk_pixbuf_save;
	typedef gboolean function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, gpointer userData, char* type, GError** error, ... ) c_gdk_pixbuf_save_to_callback;
	typedef gboolean function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, gpointer userData, char* type, char** optionKeys, char** optionValues, GError** error) c_gdk_pixbuf_save_to_callbackv;
	typedef gboolean function(GdkPixbuf* pixbuf, gchar** buffer, gsize* bufferSize, char* type, GError** error, ... ) c_gdk_pixbuf_save_to_buffer;
	typedef gboolean function(GdkPixbuf* pixbuf, gchar** buffer, gsize* bufferSize, char* type, char** optionKeys, char** optionValues, GError** error) c_gdk_pixbuf_save_to_bufferv;
	typedef gboolean function(GdkPixbuf* pixbuf, GOutputStream* stream, char* type, GCancellable* cancellable, GError** error, ... ) c_gdk_pixbuf_save_to_stream;
	typedef GdkPixbuf* function(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType) c_gdk_pixbuf_scale_simple;
	typedef void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType) c_gdk_pixbuf_scale;
	typedef GdkPixbuf* function(GdkPixbuf* src, int destWidth, int destHeight, GdkInterpType interpType, int overallAlpha, int checkSize, guint32 color1, guint32 color2) c_gdk_pixbuf_composite_color_simple;
	typedef void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha) c_gdk_pixbuf_composite;
	typedef void function(GdkPixbuf* src, GdkPixbuf* dest, int destX, int destY, int destWidth, int destHeight, double offsetX, double offsetY, double scaleX, double scaleY, GdkInterpType interpType, int overallAlpha, int checkX, int checkY, int checkSize, guint32 color1, guint32 color2) c_gdk_pixbuf_composite_color;
	typedef GdkPixbuf* function(GdkPixbuf* src, GdkPixbufRotation angle) c_gdk_pixbuf_rotate_simple;
	typedef GdkPixbuf* function(GdkPixbuf* src, gboolean horizontal) c_gdk_pixbuf_flip;
	typedef GdkPixbuf* function(GdkPixbuf* pixbuf, gboolean substituteColor, guchar r, guchar g, guchar b) c_gdk_pixbuf_add_alpha;
	typedef void function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height, GdkPixbuf* destPixbuf, int destX, int destY) c_gdk_pixbuf_copy_area;
	typedef void function(GdkPixbuf* src, GdkPixbuf* dest, gfloat saturation, gboolean pixelate) c_gdk_pixbuf_saturate_and_pixelate;
	typedef GdkPixbuf* function(GdkPixbuf* src) c_gdk_pixbuf_apply_embedded_orientation;
	typedef void function(GdkPixbuf* pixbuf, guint32 pixel) c_gdk_pixbuf_fill;
	
	// gdk.Colormap
	
	typedef GdkColormap* function(GdkVisual* visual, gboolean allocate) c_gdk_colormap_new;
	typedef GdkColormap* function(GdkColormap* cmap) c_gdk_colormap_ref;
	typedef void function(GdkColormap* cmap) c_gdk_colormap_unref;
	typedef GdkColormap* function() c_gdk_colormap_get_system;
	typedef gint function() c_gdk_colormap_get_system_size;
	typedef void function(GdkColormap* colormap, gint ncolors) c_gdk_colormap_change;
	typedef gint function(GdkColormap* colormap, GdkColor* colors, gint nColors, gboolean writeable, gboolean bestMatch, gboolean* success) c_gdk_colormap_alloc_colors;
	typedef gboolean function(GdkColormap* colormap, GdkColor* color, gboolean writeable, gboolean bestMatch) c_gdk_colormap_alloc_color;
	typedef void function(GdkColormap* colormap, GdkColor* colors, gint nColors) c_gdk_colormap_free_colors;
	typedef void function(GdkColormap* colormap, gulong pixel, GdkColor* result) c_gdk_colormap_query_color;
	typedef GdkVisual* function(GdkColormap* colormap) c_gdk_colormap_get_visual;
	typedef GdkScreen* function(GdkColormap* cmap) c_gdk_colormap_get_screen;
	typedef void function(GdkColormap* colormap, GdkColor* colors, gint ncolors) c_gdk_colors_store;
	typedef gint function(GdkColormap* colormap, gboolean contiguous, gulong* planes, gint nplanes, gulong* pixels, gint npixels) c_gdk_colors_alloc;
	typedef void function(GdkColormap* colormap, gulong* pixels, gint npixels, gulong planes) c_gdk_colors_free;
	
	// gdk.Color
	
	typedef GdkColor* function(GdkColor* color) c_gdk_color_copy;
	typedef void function(GdkColor* color) c_gdk_color_free;
	typedef gint function(GdkColormap* colormap, GdkColor* color) c_gdk_color_white;
	typedef gint function(GdkColormap* colormap, GdkColor* color) c_gdk_color_black;
	typedef gboolean function(gchar* spec, GdkColor* color) c_gdk_color_parse;
	typedef gint function(GdkColormap* colormap, GdkColor* color) c_gdk_color_alloc;
	typedef gint function(GdkColormap* colormap, GdkColor* color) c_gdk_color_change;
	typedef gboolean function(GdkColor* colora, GdkColor* colorb) c_gdk_color_equal;
	typedef guint function(GdkColor* colora) c_gdk_color_hash;
	typedef gchar* function(GdkColor* color) c_gdk_color_to_string;
	
	// gdk.Visual
	
	typedef void function(gint** depths, gint* count) c_gdk_query_depths;
	typedef void function(GdkVisualType** visualTypes, gint* count) c_gdk_query_visual_types;
	typedef GList* function() c_gdk_list_visuals;
	typedef gint function() c_gdk_visual_get_best_depth;
	typedef GdkVisualType function() c_gdk_visual_get_best_type;
	typedef GdkVisual* function() c_gdk_visual_get_system;
	typedef GdkVisual* function() c_gdk_visual_get_best;
	typedef GdkVisual* function(gint depth) c_gdk_visual_get_best_with_depth;
	typedef GdkVisual* function(GdkVisualType visualType) c_gdk_visual_get_best_with_type;
	typedef GdkVisual* function(gint depth, GdkVisualType visualType) c_gdk_visual_get_best_with_both;
	typedef GdkScreen* function(GdkVisual* visual) c_gdk_visual_get_screen;
	
	// gdk.Font
	
	typedef GdkFont* function(gchar* fontName) c_gdk_font_load;
	typedef GdkFont* function(GdkDisplay* display, gchar* fontName) c_gdk_font_load_for_display;
	typedef GdkFont* function(gchar* fontsetName) c_gdk_fontset_load;
	typedef GdkFont* function(GdkDisplay* display, gchar* fontsetName) c_gdk_fontset_load_for_display;
	typedef GdkFont* function(PangoFontDescription* fontDesc) c_gdk_font_from_description;
	typedef GdkFont* function(GdkDisplay* display, PangoFontDescription* fontDesc) c_gdk_font_from_description_for_display;
	typedef GdkDisplay* function(GdkFont* font) c_gdk_font_get_display;
	typedef GdkFont* function(GdkFont* font) c_gdk_font_ref;
	typedef void function(GdkFont* font) c_gdk_font_unref;
	typedef gint function(GdkFont* font) c_gdk_font_id;
	typedef gboolean function(GdkFont* fonta, GdkFont* fontb) c_gdk_font_equal;
	typedef void function(GdkFont* font, gchar* string, gint* lbearing, gint* rbearing, gint* width, gint* ascent, gint* descent) c_gdk_string_extents;
	typedef void function(GdkFont* font, gchar* text, gint textLength, gint* lbearing, gint* rbearing, gint* width, gint* ascent, gint* descent) c_gdk_text_extents;
	typedef void function(GdkFont* font, GdkWChar* text, gint textLength, gint* lbearing, gint* rbearing, gint* width, gint* ascent, gint* descent) c_gdk_text_extents_wc;
	typedef gint function(GdkFont* font, gchar* string) c_gdk_string_width;
	typedef gint function(GdkFont* font, gchar* text, gint textLength) c_gdk_text_width;
	typedef gint function(GdkFont* font, GdkWChar* text, gint textLength) c_gdk_text_width_wc;
	typedef gint function(GdkFont* font, gchar character) c_gdk_char_width;
	typedef gint function(GdkFont* font, GdkWChar character) c_gdk_char_width_wc;
	typedef gint function(GdkFont* font, gchar* string) c_gdk_string_measure;
	typedef gint function(GdkFont* font, gchar* text, gint textLength) c_gdk_text_measure;
	typedef gint function(GdkFont* font, gchar character) c_gdk_char_measure;
	typedef gint function(GdkFont* font, gchar* string) c_gdk_string_height;
	typedef gint function(GdkFont* font, gchar* text, gint textLength) c_gdk_text_height;
	typedef gint function(GdkFont* font, gchar character) c_gdk_char_height;
	typedef gchar* function(GdkWChar* src) c_gdk_wcstombs;
	typedef gint function(GdkWChar* dest, gchar* src, gint destMax) c_gdk_mbstowcs;
	
	// gdk.Cursor
	
	typedef GdkCursor* function(GdkCursorType cursorType) c_gdk_cursor_new;
	typedef GdkCursor* function(GdkPixmap* source, GdkPixmap* mask, GdkColor* fg, GdkColor* bg, gint x, gint y) c_gdk_cursor_new_from_pixmap;
	typedef GdkCursor* function(GdkDisplay* display, GdkPixbuf* pixbuf, gint x, gint y) c_gdk_cursor_new_from_pixbuf;
	typedef GdkCursor* function(GdkDisplay* display, gchar* name) c_gdk_cursor_new_from_name;
	typedef GdkCursor* function(GdkDisplay* display, GdkCursorType cursorType) c_gdk_cursor_new_for_display;
	typedef GdkDisplay* function(GdkCursor* cursor) c_gdk_cursor_get_display;
	typedef GdkPixbuf* function(GdkCursor* cursor) c_gdk_cursor_get_image;
	typedef GdkCursor* function(GdkCursor* cursor) c_gdk_cursor_ref;
	typedef void function(GdkCursor* cursor) c_gdk_cursor_unref;
	
	// gdk.Window
	
	typedef GdkWindow* function(GdkWindow* parent, GdkWindowAttr* attributes, gint attributesMask) c_gdk_window_new;
	typedef void function(GdkWindow* window) c_gdk_window_destroy;
	typedef GdkWindowType function(GdkWindow* window) c_gdk_window_get_window_type;
	typedef GdkWindow* function(gint* winX, gint* winY) c_gdk_window_at_pointer;
	typedef void function(GdkWindow* window) c_gdk_window_show;
	typedef void function(GdkWindow* window) c_gdk_window_show_unraised;
	typedef void function(GdkWindow* window) c_gdk_window_hide;
	typedef gboolean function(GdkWindow* window) c_gdk_window_is_visible;
	typedef gboolean function(GdkWindow* window) c_gdk_window_is_viewable;
	typedef GdkWindowState function(GdkWindow* window) c_gdk_window_get_state;
	typedef void function(GdkWindow* window) c_gdk_window_withdraw;
	typedef void function(GdkWindow* window) c_gdk_window_iconify;
	typedef void function(GdkWindow* window) c_gdk_window_deiconify;
	typedef void function(GdkWindow* window) c_gdk_window_stick;
	typedef void function(GdkWindow* window) c_gdk_window_unstick;
	typedef void function(GdkWindow* window) c_gdk_window_maximize;
	typedef void function(GdkWindow* window) c_gdk_window_unmaximize;
	typedef void function(GdkWindow* window) c_gdk_window_fullscreen;
	typedef void function(GdkWindow* window) c_gdk_window_unfullscreen;
	typedef void function(GdkWindow* window, gboolean setting) c_gdk_window_set_keep_above;
	typedef void function(GdkWindow* window, gboolean setting) c_gdk_window_set_keep_below;
	typedef void function(GdkWindow* window, gdouble opacity) c_gdk_window_set_opacity;
	typedef void function(GdkWindow* window, gboolean composited) c_gdk_window_set_composited;
	typedef void function(GdkWindow* window, gint x, gint y) c_gdk_window_move;
	typedef void function(GdkWindow* window, gint width, gint height) c_gdk_window_resize;
	typedef void function(GdkWindow* window, gint x, gint y, gint width, gint height) c_gdk_window_move_resize;
	typedef void function(GdkWindow* window, gint dx, gint dy) c_gdk_window_scroll;
	typedef void function(GdkWindow* window, GdkRegion* region, gint dx, gint dy) c_gdk_window_move_region;
	typedef void function(GdkWindow* window, GdkWindow* newParent, gint x, gint y) c_gdk_window_reparent;
	typedef void function(GdkWindow* window) c_gdk_window_clear;
	typedef void function(GdkWindow* window, gint x, gint y, gint width, gint height) c_gdk_window_clear_area;
	typedef void function(GdkWindow* window, gint x, gint y, gint width, gint height) c_gdk_window_clear_area_e;
	typedef void function(GdkWindow* window) c_gdk_window_raise;
	typedef void function(GdkWindow* window) c_gdk_window_lower;
	typedef void function(GdkWindow* window, guint32 timestamp) c_gdk_window_focus;
	typedef void function(GdkWindow* window) c_gdk_window_register_dnd;
	typedef void function(GdkWindow* window, GdkWindowEdge edge, gint button, gint rootX, gint rootY, guint32 timestamp) c_gdk_window_begin_resize_drag;
	typedef void function(GdkWindow* window, gint button, gint rootX, gint rootY, guint32 timestamp) c_gdk_window_begin_move_drag;
	typedef void function(GdkGeometry* geometry, guint flags, gint width, gint height, gint* newWidth, gint* newHeight) c_gdk_window_constrain_size;
	typedef void function(GdkWindow* window) c_gdk_window_beep;
	typedef void function(GdkWindow* window, GdkRectangle* rectangle) c_gdk_window_begin_paint_rect;
	typedef void function(GdkWindow* window, GdkRegion* region) c_gdk_window_begin_paint_region;
	typedef void function(GdkWindow* window) c_gdk_window_end_paint;
	typedef void function(GdkWindow* window, GdkRectangle* rect, gboolean invalidateChildren) c_gdk_window_invalidate_rect;
	typedef void function(GdkWindow* window, GdkRegion* region, gboolean invalidateChildren) c_gdk_window_invalidate_region;
	typedef GdkRegion* function(GdkWindow* window) c_gdk_window_get_update_area;
	typedef void function(GdkWindow* window) c_gdk_window_freeze_updates;
	typedef void function(GdkWindow* window) c_gdk_window_thaw_updates;
	typedef void function() c_gdk_window_process_all_updates;
	typedef void function(GdkWindow* window, gboolean updateChildren) c_gdk_window_process_updates;
	typedef void function(gboolean setting) c_gdk_window_set_debug_updates;
	typedef void function(GdkWindow* window, GdkDrawable** realDrawable, gint* xOffset, gint* yOffset) c_gdk_window_get_internal_paint_info;
	typedef void function(GdkWindow* window) c_gdk_window_enable_synchronized_configure;
	typedef void function(GdkWindow* window) c_gdk_window_configure_finished;
	typedef void function(GdkWindow* window, gpointer userData) c_gdk_window_set_user_data;
	typedef void function(GdkWindow* window, gboolean overrideRedirect) c_gdk_window_set_override_redirect;
	typedef void function(GdkWindow* window, gboolean acceptFocus) c_gdk_window_set_accept_focus;
	typedef void function(GdkWindow* window, gboolean focusOnMap) c_gdk_window_set_focus_on_map;
	typedef void function(GdkWindow* window, GdkFilterFunc funct, gpointer data) c_gdk_window_add_filter;
	typedef void function(GdkWindow* window, GdkFilterFunc funct, gpointer data) c_gdk_window_remove_filter;
	typedef void function(GdkWindow* window, GdkBitmap* mask, gint x, gint y) c_gdk_window_shape_combine_mask;
	typedef void function(GdkWindow* window, GdkRegion* shapeRegion, gint offsetX, gint offsetY) c_gdk_window_shape_combine_region;
	typedef void function(GdkWindow* window) c_gdk_window_set_child_shapes;
	typedef void function(GdkWindow* window) c_gdk_window_merge_child_shapes;
	typedef void function(GdkWindow* window, GdkBitmap* mask, gint x, gint y) c_gdk_window_input_shape_combine_mask;
	typedef void function(GdkWindow* window, GdkRegion* shapeRegion, gint offsetX, gint offsetY) c_gdk_window_input_shape_combine_region;
	typedef void function(GdkWindow* window) c_gdk_window_set_child_input_shapes;
	typedef void function(GdkWindow* window) c_gdk_window_merge_child_input_shapes;
	typedef gboolean function(GdkWindow* window, gboolean useStatic) c_gdk_window_set_static_gravities;
	typedef void function(GdkWindow* window, gint x, gint y, gint minWidth, gint minHeight, gint maxWidth, gint maxHeight, gint flags) c_gdk_window_set_hints;
	typedef void function(GdkWindow* window, gchar* title) c_gdk_window_set_title;
	typedef void function(GdkWindow* window, GdkColor* color) c_gdk_window_set_background;
	typedef void function(GdkWindow* window, GdkPixmap* pixmap, gboolean parentRelative) c_gdk_window_set_back_pixmap;
	typedef void function(GdkWindow* window, GdkCursor* cursor) c_gdk_window_set_cursor;
	typedef void function(GdkWindow* window, gpointer* data) c_gdk_window_get_user_data;
	typedef void function(GdkWindow* window, gint* x, gint* y, gint* width, gint* height, gint* depth) c_gdk_window_get_geometry;
	typedef void function(GdkWindow* window, GdkGeometry* geometry, GdkWindowHints geomMask) c_gdk_window_set_geometry_hints;
	typedef void function(GdkWindow* window, GList* pixbufs) c_gdk_window_set_icon_list;
	typedef void function(GdkWindow* window, gboolean modal) c_gdk_window_set_modal_hint;
	typedef void function(GdkWindow* window, GdkWindowTypeHint hint) c_gdk_window_set_type_hint;
	typedef GdkWindowTypeHint function(GdkWindow* window) c_gdk_window_get_type_hint;
	typedef void function(GdkWindow* window, gboolean skipsTaskbar) c_gdk_window_set_skip_taskbar_hint;
	typedef void function(GdkWindow* window, gboolean skipsPager) c_gdk_window_set_skip_pager_hint;
	typedef void function(GdkWindow* window, gboolean urgent) c_gdk_window_set_urgency_hint;
	typedef void function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_position;
	typedef void function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_root_origin;
	typedef void function(GdkWindow* window, GdkRectangle* rect) c_gdk_window_get_frame_extents;
	typedef gint function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_origin;
	typedef gboolean function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_deskrelative_origin;
	typedef GdkWindow* function(GdkWindow* window, gint* x, gint* y, GdkModifierType* mask) c_gdk_window_get_pointer;
	typedef GdkWindow* function(GdkWindow* window) c_gdk_window_get_parent;
	typedef GdkWindow* function(GdkWindow* window) c_gdk_window_get_toplevel;
	typedef GList* function(GdkWindow* window) c_gdk_window_get_children;
	typedef GList* function(GdkWindow* window) c_gdk_window_peek_children;
	typedef GdkEventMask function(GdkWindow* window) c_gdk_window_get_events;
	typedef void function(GdkWindow* window, GdkEventMask eventMask) c_gdk_window_set_events;
	typedef void function(GdkWindow* window, GdkWindow* iconWindow, GdkPixmap* pixmap, GdkBitmap* mask) c_gdk_window_set_icon;
	typedef void function(GdkWindow* window, gchar* name) c_gdk_window_set_icon_name;
	typedef void function(GdkWindow* window, GdkWindow* parent) c_gdk_window_set_transient_for;
	typedef void function(GdkWindow* window, gchar* role) c_gdk_window_set_role;
	typedef void function(GdkWindow* window, gchar* startupId) c_gdk_window_set_startup_id;
	typedef void function(GdkWindow* window, GdkWindow* leader) c_gdk_window_set_group;
	typedef GdkWindow* function(GdkWindow* window) c_gdk_window_get_group;
	typedef void function(GdkWindow* window, GdkWMDecoration decorations) c_gdk_window_set_decorations;
	typedef gboolean function(GdkWindow* window, GdkWMDecoration* decorations) c_gdk_window_get_decorations;
	typedef void function(GdkWindow* window, GdkWMFunction functions) c_gdk_window_set_functions;
	typedef GList* function() c_gdk_window_get_toplevels;
	typedef GdkWindow* function() c_gdk_get_default_root_window;
	typedef GdkPointerHooks* function(GdkPointerHooks* newHooks) c_gdk_set_pointer_hooks;
	typedef void function(GdkWindow* window, GdkDrawable* drawable, gint srcX, gint srcY, gint destX, gint destY, gint width, gint height) c_gdk_window_redirect_to_drawable;
	typedef void function(GdkWindow* window) c_gdk_window_remove_redirection;
	
	// gdk.Event
	
	typedef gboolean function() c_gdk_events_pending;
	typedef GdkEvent* function() c_gdk_event_peek;
	typedef GdkEvent* function() c_gdk_event_get;
	typedef GdkEvent* function(GdkWindow* window) c_gdk_event_get_graphics_expose;
	typedef void function(GdkEvent* event) c_gdk_event_put;
	typedef GdkEvent* function(GdkEventType type) c_gdk_event_new;
	typedef GdkEvent* function(GdkEvent* event) c_gdk_event_copy;
	typedef void function(GdkEvent* event) c_gdk_event_free;
	typedef guint32 function(GdkEvent* event) c_gdk_event_get_time;
	typedef gboolean function(GdkEvent* event, GdkModifierType* state) c_gdk_event_get_state;
	typedef gboolean function(GdkEvent* event, GdkAxisUse axisUse, gdouble* value) c_gdk_event_get_axis;
	typedef gboolean function(GdkEvent* event, gdouble* xWin, gdouble* yWin) c_gdk_event_get_coords;
	typedef gboolean function(GdkEvent* event, gdouble* xRoot, gdouble* yRoot) c_gdk_event_get_root_coords;
	typedef void function(GdkEventMotion* event) c_gdk_event_request_motions;
	typedef void function(GdkEventFunc func, gpointer data, GDestroyNotify notify) c_gdk_event_handler_set;
	typedef gboolean function(GdkEvent* event, GdkNativeWindow winid) c_gdk_event_send_client_message;
	typedef gboolean function(GdkDisplay* display, GdkEvent* event, GdkNativeWindow winid) c_gdk_event_send_client_message_for_display;
	typedef void function(GdkEvent* event) c_gdk_event_send_clientmessage_toall;
	typedef void function(GdkAtom messageType, GdkFilterFunc func, gpointer data) c_gdk_add_client_message_filter;
	typedef gboolean function() c_gdk_get_show_events;
	typedef void function(gboolean showEvents) c_gdk_set_show_events;
	typedef void function(GdkEvent* event, GdkScreen* screen) c_gdk_event_set_screen;
	typedef GdkScreen* function(GdkEvent* event) c_gdk_event_get_screen;
	typedef gboolean function(gchar* name, GValue* value) c_gdk_setting_get;
	
	// gdk.
	
	
	// gdk.Keymap
	
	typedef GdkKeymap* function() c_gdk_keymap_get_default;
	typedef GdkKeymap* function(GdkDisplay* display) c_gdk_keymap_get_for_display;
	typedef guint function(GdkKeymap* keymap, GdkKeymapKey* key) c_gdk_keymap_lookup_key;
	typedef gboolean function(GdkKeymap* keymap, guint hardwareKeycode, GdkModifierType state, gint group, guint* keyval, gint* effectiveGroup, gint* level, GdkModifierType* consumedModifiers) c_gdk_keymap_translate_keyboard_state;
	typedef gboolean function(GdkKeymap* keymap, guint keyval, GdkKeymapKey** keys, gint* nKeys) c_gdk_keymap_get_entries_for_keyval;
	typedef gboolean function(GdkKeymap* keymap, guint hardwareKeycode, GdkKeymapKey** keys, guint** keyvals, gint* nEntries) c_gdk_keymap_get_entries_for_keycode;
	typedef PangoDirection function(GdkKeymap* keymap) c_gdk_keymap_get_direction;
	typedef gboolean function(GdkKeymap* keymap) c_gdk_keymap_have_bidi_layouts;
	typedef gboolean function(GdkKeymap* keymap) c_gdk_keymap_get_caps_lock_state;
	typedef gchar* function(guint keyval) c_gdk_keyval_name;
	typedef guint function(gchar* keyvalName) c_gdk_keyval_from_name;
	typedef void function(guint symbol, guint* lower, guint* upper) c_gdk_keyval_convert_case;
	typedef guint function(guint keyval) c_gdk_keyval_to_upper;
	typedef guint function(guint keyval) c_gdk_keyval_to_lower;
	typedef gboolean function(guint keyval) c_gdk_keyval_is_upper;
	typedef gboolean function(guint keyval) c_gdk_keyval_is_lower;
	typedef guint32 function(guint keyval) c_gdk_keyval_to_unicode;
	typedef guint function(guint32 wc) c_gdk_unicode_to_keyval;
	
	// gdk.Selection
	
	typedef gboolean function(GdkWindow* owner, GdkAtom selection, guint32 time, gboolean sendEvent) c_gdk_selection_owner_set;
	typedef gboolean function(GdkDisplay* display, GdkWindow* owner, GdkAtom selection, guint32 time, gboolean sendEvent) c_gdk_selection_owner_set_for_display;
	typedef GdkWindow* function(GdkAtom selection) c_gdk_selection_owner_get;
	typedef GdkWindow* function(GdkDisplay* display, GdkAtom selection) c_gdk_selection_owner_get_for_display;
	typedef void function(GdkWindow* requestor, GdkAtom selection, GdkAtom target, guint32 time) c_gdk_selection_convert;
	typedef gboolean function(GdkWindow* requestor, guchar** data, GdkAtom* propType, gint* propFormat) c_gdk_selection_property_get;
	typedef void function(GdkNativeWindow requestor, GdkAtom selection, GdkAtom target, GdkAtom property, guint32 time) c_gdk_selection_send_notify;
	typedef void function(GdkDisplay* display, GdkNativeWindow requestor, GdkAtom selection, GdkAtom target, GdkAtom property, guint32 time) c_gdk_selection_send_notify_for_display;
	
	// gdk.DragContext
	
	typedef GdkAtom function(GdkDragContext* context) c_gdk_drag_get_selection;
	typedef void function(GdkDragContext* context, guint32 time) c_gdk_drag_abort;
	typedef void function(GdkDragContext* context, gboolean ok, guint32 time) c_gdk_drop_reply;
	typedef GdkDragContext* function() c_gdk_drag_context_new;
	typedef void function(GdkDragContext* context, guint32 time) c_gdk_drag_drop;
	typedef void function(GdkDragContext* context, GdkWindow* dragWindow, gint xRoot, gint yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol) c_gdk_drag_find_window;
	typedef void function(GdkDragContext* context, GdkWindow* dragWindow, GdkScreen* screen, gint xRoot, gint yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol) c_gdk_drag_find_window_for_screen;
	typedef void function(GdkDragContext* context) c_gdk_drag_context_ref;
	typedef GdkDragContext* function(GdkWindow* window, GList* targets) c_gdk_drag_begin;
	typedef gboolean function(GdkDragContext* context, GdkWindow* destWindow, GdkDragProtocol protocol, gint xRoot, gint yRoot, GdkDragAction suggestedAction, GdkDragAction possibleActions, guint32 time) c_gdk_drag_motion;
	typedef void function(GdkDragContext* context, gboolean success, guint32 time) c_gdk_drop_finish;
	typedef GdkNativeWindow function(GdkNativeWindow xid, GdkDragProtocol* protocol) c_gdk_drag_get_protocol;
	typedef GdkNativeWindow function(GdkDisplay* display, GdkNativeWindow xid, GdkDragProtocol* protocol) c_gdk_drag_get_protocol_for_display;
	typedef void function(GdkDragContext* context) c_gdk_drag_context_unref;
	typedef void function(GdkDragContext* context, GdkDragAction action, guint32 time) c_gdk_drag_status;
	typedef gboolean function(GdkDragContext* context) c_gdk_drag_drop_succeeded;
	
	// gdk.
	
	typedef void function() c_gdk_threads_init;
	typedef void function() c_gdk_threads_enter;
	typedef void function() c_gdk_threads_leave;
	typedef void function(GCallback enterFn, GCallback leaveFn) c_gdk_threads_set_lock_functions;
	typedef guint function(GSourceFunc funct, gpointer data) c_gdk_threads_add_idle;
	typedef guint function(gint priority, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_gdk_threads_add_idle_full;
	typedef guint function(guint interval, GSourceFunc funct, gpointer data) c_gdk_threads_add_timeout;
	typedef guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_gdk_threads_add_timeout_full;
	typedef guint function(guint interval, GSourceFunc funct, gpointer data) c_gdk_threads_add_timeout_seconds;
	typedef guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_gdk_threads_add_timeout_seconds_full;
	
	// gdk.Input
	
	typedef gint function(gint source, GdkInputCondition condition, GdkInputFunction funct, gpointer data, GDestroyNotify destroy) c_gdk_input_add_full;
	typedef gint function(gint source, GdkInputCondition condition, GdkInputFunction funct, gpointer data) c_gdk_input_add;
	typedef void function(gint tag) c_gdk_input_remove;
	
	// gdk.Device
	
	typedef GList* function() c_gdk_devices_list;
	typedef void function(GdkDevice* device, GdkInputSource source) c_gdk_device_set_source;
	typedef gboolean function(GdkDevice* device, GdkInputMode mode) c_gdk_device_set_mode;
	typedef void function(GdkDevice* device, guint index, guint keyval, GdkModifierType modifiers) c_gdk_device_set_key;
	typedef void function(GdkDevice* device, guint index, GdkAxisUse use) c_gdk_device_set_axis_use;
	typedef GdkDevice* function() c_gdk_device_get_core_pointer;
	typedef void function(GdkDevice* device, GdkWindow* window, gdouble* axes, GdkModifierType* mask) c_gdk_device_get_state;
	typedef gboolean function(GdkDevice* device, GdkWindow* window, guint32 start, guint32 stop, GdkTimeCoord*** events, gint* nEvents) c_gdk_device_get_history;
	typedef void function(GdkTimeCoord** events, gint nEvents) c_gdk_device_free_history;
	typedef gboolean function(GdkDevice* device, gdouble* axes, GdkAxisUse use, gdouble* value) c_gdk_device_get_axis;
	typedef void function(GdkWindow* window, gint mask, GdkExtensionMode mode) c_gdk_input_set_extension_events;
	
	// gdk.X11
	
	typedef GdkWindow* function(GdkNativeWindow anid) c_gdk_window_foreign_new;
	typedef gpointer function(XID xid) c_gdk_xid_table_lookup;
	typedef GdkWindow* function(GdkNativeWindow anid) c_gdk_window_lookup;
	typedef GdkPixmap* function(GdkNativeWindow anid) c_gdk_pixmap_lookup;
	typedef guint32 function(GdkWindow* window) c_gdk_x11_get_server_time;
	typedef XID function(GdkScreen* screen, gint monitorNum) c_gdk_x11_screen_get_monitor_output;
	typedef void function(GdkWindow* window, guint32 timestamp) c_gdk_x11_window_set_user_time;
	typedef void function(GdkWindow* window) c_gdk_x11_window_move_to_current_desktop;
	typedef void function(GdkDisplay* display, char* messageType, ... ) c_gdk_x11_display_broadcast_startup_message;
	typedef gchar* function(GdkDisplay* display) c_gdk_x11_display_get_startup_notification_id;
	typedef XID function(GdkDrawable* drawable) c_gdk_x11_drawable_get_xid;
	typedef char* function(GdkFont* font) c_gdk_x11_font_get_name;
	typedef gpointer function(GdkFont* font) c_gdk_x11_font_get_xfont;
	typedef gint function() c_gdk_x11_get_default_screen;
	typedef void function() c_gdk_x11_grab_server;
	typedef void function() c_gdk_x11_ungrab_server;
	
	// gdk.AppLaunchContext
	
	typedef GdkAppLaunchContext* function() c_gdk_app_launch_context_new;
	typedef void function(GdkAppLaunchContext* context, GdkDisplay* display) c_gdk_app_launch_context_set_display;
	typedef void function(GdkAppLaunchContext* context, GdkScreen* screen) c_gdk_app_launch_context_set_screen;
	typedef void function(GdkAppLaunchContext* context, gint desktop) c_gdk_app_launch_context_set_desktop;
	typedef void function(GdkAppLaunchContext* context, guint32 timestamp) c_gdk_app_launch_context_set_timestamp;
	typedef void function(GdkAppLaunchContext* context, GIcon* icon) c_gdk_app_launch_context_set_icon;
	typedef void function(GdkAppLaunchContext* context, char* iconName) c_gdk_app_launch_context_set_icon_name;
	
	// gdk.Testing
	
	typedef void function(GdkWindow* window) c_gdk_test_render_sync;
	typedef gboolean function(GdkWindow* window, gint x, gint y, guint button, GdkModifierType modifiers, GdkEventType buttonPressrelease) c_gdk_test_simulate_button;
	typedef gboolean function(GdkWindow* window, gint x, gint y, guint keyval, GdkModifierType modifiers, GdkEventType keyPressrelease) c_gdk_test_simulate_key;
	
	// gdk.
	
	typedef cairo_t* function(GdkDrawable* drawable) c_gdk_cairo_create;
	typedef void function(cairo_t* cr, GdkColor* color) c_gdk_cairo_set_source_color;
	typedef void function(cairo_t* cr, GdkPixbuf* pixbuf, double pixbufX, double pixbufY) c_gdk_cairo_set_source_pixbuf;
	typedef void function(cairo_t* cr, GdkPixmap* pixmap, double pixmapX, double pixmapY) c_gdk_cairo_set_source_pixmap;
	typedef void function(cairo_t* cr, GdkRectangle* rectangle) c_gdk_cairo_rectangle;
	typedef void function(cairo_t* cr, GdkRegion* region) c_gdk_cairo_region;
}

// gdk.Gdk

c_gdk_init  gdk_init;
c_gdk_init_check  gdk_init_check;
c_gdk_parse_args  gdk_parse_args;
c_gdk_get_display_arg_name  gdk_get_display_arg_name;
c_gdk_set_locale  gdk_set_locale;
c_gdk_set_sm_client_id  gdk_set_sm_client_id;
c_gdk_exit  gdk_exit;
c_gdk_notify_startup_complete  gdk_notify_startup_complete;
c_gdk_notify_startup_complete_with_id  gdk_notify_startup_complete_with_id;
c_gdk_get_program_class  gdk_get_program_class;
c_gdk_set_program_class  gdk_set_program_class;
c_gdk_get_display  gdk_get_display;
c_gdk_flush  gdk_flush;
c_gdk_screen_width  gdk_screen_width;
c_gdk_screen_height  gdk_screen_height;
c_gdk_screen_width_mm  gdk_screen_width_mm;
c_gdk_screen_height_mm  gdk_screen_height_mm;
c_gdk_pointer_grab  gdk_pointer_grab;
c_gdk_pointer_ungrab  gdk_pointer_ungrab;
c_gdk_pointer_is_grabbed  gdk_pointer_is_grabbed;
c_gdk_set_double_click_time  gdk_set_double_click_time;
c_gdk_keyboard_grab  gdk_keyboard_grab;
c_gdk_keyboard_ungrab  gdk_keyboard_ungrab;
c_gdk_beep  gdk_beep;
c_gdk_get_use_xshm  gdk_get_use_xshm;
c_gdk_set_use_xshm  gdk_set_use_xshm;
c_gdk_error_trap_push  gdk_error_trap_push;
c_gdk_error_trap_pop  gdk_error_trap_pop;

// gdk.Display

c_gdk_display_open  gdk_display_open;
c_gdk_display_get_default  gdk_display_get_default;
c_gdk_display_get_name  gdk_display_get_name;
c_gdk_display_get_n_screens  gdk_display_get_n_screens;
c_gdk_display_get_screen  gdk_display_get_screen;
c_gdk_display_get_default_screen  gdk_display_get_default_screen;
c_gdk_display_pointer_ungrab  gdk_display_pointer_ungrab;
c_gdk_display_keyboard_ungrab  gdk_display_keyboard_ungrab;
c_gdk_display_pointer_is_grabbed  gdk_display_pointer_is_grabbed;
c_gdk_display_beep  gdk_display_beep;
c_gdk_display_sync  gdk_display_sync;
c_gdk_display_flush  gdk_display_flush;
c_gdk_display_close  gdk_display_close;
c_gdk_display_list_devices  gdk_display_list_devices;
c_gdk_display_get_event  gdk_display_get_event;
c_gdk_display_peek_event  gdk_display_peek_event;
c_gdk_display_put_event  gdk_display_put_event;
c_gdk_display_add_client_message_filter  gdk_display_add_client_message_filter;
c_gdk_display_set_double_click_time  gdk_display_set_double_click_time;
c_gdk_display_set_double_click_distance  gdk_display_set_double_click_distance;
c_gdk_display_get_pointer  gdk_display_get_pointer;
c_gdk_display_get_window_at_pointer  gdk_display_get_window_at_pointer;
c_gdk_display_set_pointer_hooks  gdk_display_set_pointer_hooks;
c_gdk_display_warp_pointer  gdk_display_warp_pointer;
c_gdk_display_supports_cursor_color  gdk_display_supports_cursor_color;
c_gdk_display_supports_cursor_alpha  gdk_display_supports_cursor_alpha;
c_gdk_display_get_default_cursor_size  gdk_display_get_default_cursor_size;
c_gdk_display_get_maximal_cursor_size  gdk_display_get_maximal_cursor_size;
c_gdk_display_get_default_group  gdk_display_get_default_group;
c_gdk_display_supports_selection_notification  gdk_display_supports_selection_notification;
c_gdk_display_request_selection_notification  gdk_display_request_selection_notification;
c_gdk_display_supports_clipboard_persistence  gdk_display_supports_clipboard_persistence;
c_gdk_display_store_clipboard  gdk_display_store_clipboard;
c_gdk_display_supports_shapes  gdk_display_supports_shapes;
c_gdk_display_supports_input_shapes  gdk_display_supports_input_shapes;
c_gdk_display_supports_composite  gdk_display_supports_composite;

// gdk.DisplayManager

c_gdk_display_manager_get  gdk_display_manager_get;
c_gdk_display_manager_get_default_display  gdk_display_manager_get_default_display;
c_gdk_display_manager_set_default_display  gdk_display_manager_set_default_display;
c_gdk_display_manager_list_displays  gdk_display_manager_list_displays;
c_gdk_display_get_core_pointer  gdk_display_get_core_pointer;

// gdk.Screen

c_gdk_screen_get_default  gdk_screen_get_default;
c_gdk_screen_get_default_colormap  gdk_screen_get_default_colormap;
c_gdk_screen_set_default_colormap  gdk_screen_set_default_colormap;
c_gdk_screen_get_system_colormap  gdk_screen_get_system_colormap;
c_gdk_screen_get_system_visual  gdk_screen_get_system_visual;
c_gdk_screen_get_rgb_colormap  gdk_screen_get_rgb_colormap;
c_gdk_screen_get_rgb_visual  gdk_screen_get_rgb_visual;
c_gdk_screen_get_rgba_colormap  gdk_screen_get_rgba_colormap;
c_gdk_screen_get_rgba_visual  gdk_screen_get_rgba_visual;
c_gdk_screen_is_composited  gdk_screen_is_composited;
c_gdk_screen_get_root_window  gdk_screen_get_root_window;
c_gdk_screen_get_display  gdk_screen_get_display;
c_gdk_screen_get_number  gdk_screen_get_number;
c_gdk_screen_get_width  gdk_screen_get_width;
c_gdk_screen_get_height  gdk_screen_get_height;
c_gdk_screen_get_width_mm  gdk_screen_get_width_mm;
c_gdk_screen_get_height_mm  gdk_screen_get_height_mm;
c_gdk_screen_list_visuals  gdk_screen_list_visuals;
c_gdk_screen_get_toplevel_windows  gdk_screen_get_toplevel_windows;
c_gdk_screen_make_display_name  gdk_screen_make_display_name;
c_gdk_screen_get_n_monitors  gdk_screen_get_n_monitors;
c_gdk_screen_get_monitor_geometry  gdk_screen_get_monitor_geometry;
c_gdk_screen_get_monitor_at_point  gdk_screen_get_monitor_at_point;
c_gdk_screen_get_monitor_at_window  gdk_screen_get_monitor_at_window;
c_gdk_screen_get_monitor_height_mm  gdk_screen_get_monitor_height_mm;
c_gdk_screen_get_monitor_width_mm  gdk_screen_get_monitor_width_mm;
c_gdk_screen_get_monitor_plug_name  gdk_screen_get_monitor_plug_name;
c_gdk_screen_broadcast_client_message  gdk_screen_broadcast_client_message;
c_gdk_screen_get_setting  gdk_screen_get_setting;
c_gdk_screen_get_font_options  gdk_screen_get_font_options;
c_gdk_screen_set_font_options  gdk_screen_set_font_options;
c_gdk_screen_get_resolution  gdk_screen_get_resolution;
c_gdk_screen_set_resolution  gdk_screen_set_resolution;
c_gdk_screen_get_active_window  gdk_screen_get_active_window;
c_gdk_screen_get_window_stack  gdk_screen_get_window_stack;
c_gdk_spawn_on_screen  gdk_spawn_on_screen;
c_gdk_spawn_on_screen_with_pipes  gdk_spawn_on_screen_with_pipes;
c_gdk_spawn_command_line_on_screen  gdk_spawn_command_line_on_screen;

// gdk.Rectangle

c_gdk_rectangle_intersect  gdk_rectangle_intersect;
c_gdk_rectangle_union  gdk_rectangle_union;

// gdk.Region

c_gdk_region_new  gdk_region_new;
c_gdk_region_polygon  gdk_region_polygon;
c_gdk_region_copy  gdk_region_copy;
c_gdk_region_rectangle  gdk_region_rectangle;
c_gdk_region_destroy  gdk_region_destroy;
c_gdk_region_get_clipbox  gdk_region_get_clipbox;
c_gdk_region_get_rectangles  gdk_region_get_rectangles;
c_gdk_region_empty  gdk_region_empty;
c_gdk_region_equal  gdk_region_equal;
c_gdk_region_point_in  gdk_region_point_in;
c_gdk_region_rect_in  gdk_region_rect_in;
c_gdk_region_offset  gdk_region_offset;
c_gdk_region_shrink  gdk_region_shrink;
c_gdk_region_union_with_rect  gdk_region_union_with_rect;
c_gdk_region_intersect  gdk_region_intersect;
c_gdk_region_union  gdk_region_union;
c_gdk_region_subtract  gdk_region_subtract;
c_gdk_region_xor  gdk_region_xor;
c_gdk_region_spans_intersect_foreach  gdk_region_spans_intersect_foreach;

// gdk.GC

c_gdk_gc_new  gdk_gc_new;
c_gdk_gc_new_with_values  gdk_gc_new_with_values;
c_gdk_gc_get_screen  gdk_gc_get_screen;
c_gdk_gc_ref  gdk_gc_ref;
c_gdk_gc_unref  gdk_gc_unref;
c_gdk_gc_set_values  gdk_gc_set_values;
c_gdk_gc_get_values  gdk_gc_get_values;
c_gdk_gc_set_foreground  gdk_gc_set_foreground;
c_gdk_gc_set_background  gdk_gc_set_background;
c_gdk_gc_set_rgb_fg_color  gdk_gc_set_rgb_fg_color;
c_gdk_gc_set_rgb_bg_color  gdk_gc_set_rgb_bg_color;
c_gdk_gc_set_font  gdk_gc_set_font;
c_gdk_gc_set_function  gdk_gc_set_function;
c_gdk_gc_set_fill  gdk_gc_set_fill;
c_gdk_gc_set_tile  gdk_gc_set_tile;
c_gdk_gc_set_stipple  gdk_gc_set_stipple;
c_gdk_gc_set_ts_origin  gdk_gc_set_ts_origin;
c_gdk_gc_set_clip_origin  gdk_gc_set_clip_origin;
c_gdk_gc_set_clip_mask  gdk_gc_set_clip_mask;
c_gdk_gc_set_clip_rectangle  gdk_gc_set_clip_rectangle;
c_gdk_gc_set_clip_region  gdk_gc_set_clip_region;
c_gdk_gc_set_subwindow  gdk_gc_set_subwindow;
c_gdk_gc_set_exposures  gdk_gc_set_exposures;
c_gdk_gc_set_line_attributes  gdk_gc_set_line_attributes;
c_gdk_gc_set_dashes  gdk_gc_set_dashes;
c_gdk_gc_copy  gdk_gc_copy;
c_gdk_gc_set_colormap  gdk_gc_set_colormap;
c_gdk_gc_get_colormap  gdk_gc_get_colormap;
c_gdk_gc_offset  gdk_gc_offset;

// gdk.Drawable

c_gdk_drawable_ref  gdk_drawable_ref;
c_gdk_drawable_unref  gdk_drawable_unref;
c_gdk_drawable_set_data  gdk_drawable_set_data;
c_gdk_drawable_get_data  gdk_drawable_get_data;
c_gdk_drawable_get_display  gdk_drawable_get_display;
c_gdk_drawable_get_screen  gdk_drawable_get_screen;
c_gdk_drawable_get_visual  gdk_drawable_get_visual;
c_gdk_drawable_set_colormap  gdk_drawable_set_colormap;
c_gdk_drawable_get_colormap  gdk_drawable_get_colormap;
c_gdk_drawable_get_depth  gdk_drawable_get_depth;
c_gdk_drawable_get_size  gdk_drawable_get_size;
c_gdk_drawable_get_clip_region  gdk_drawable_get_clip_region;
c_gdk_drawable_get_visible_region  gdk_drawable_get_visible_region;
c_gdk_draw_point  gdk_draw_point;
c_gdk_draw_points  gdk_draw_points;
c_gdk_draw_line  gdk_draw_line;
c_gdk_draw_lines  gdk_draw_lines;
c_gdk_draw_pixbuf  gdk_draw_pixbuf;
c_gdk_draw_segments  gdk_draw_segments;
c_gdk_draw_rectangle  gdk_draw_rectangle;
c_gdk_draw_arc  gdk_draw_arc;
c_gdk_draw_polygon  gdk_draw_polygon;
c_gdk_draw_trapezoids  gdk_draw_trapezoids;
c_gdk_draw_glyphs  gdk_draw_glyphs;
c_gdk_draw_glyphs_transformed  gdk_draw_glyphs_transformed;
c_gdk_draw_layout_line  gdk_draw_layout_line;
c_gdk_draw_layout_line_with_colors  gdk_draw_layout_line_with_colors;
c_gdk_draw_layout  gdk_draw_layout;
c_gdk_draw_layout_with_colors  gdk_draw_layout_with_colors;
c_gdk_draw_string  gdk_draw_string;
c_gdk_draw_text  gdk_draw_text;
c_gdk_draw_text_wc  gdk_draw_text_wc;
c_gdk_draw_drawable  gdk_draw_drawable;
c_gdk_draw_image  gdk_draw_image;
c_gdk_drawable_get_image  gdk_drawable_get_image;
c_gdk_drawable_copy_to_image  gdk_drawable_copy_to_image;

// gdk.Pixmap

c_gdk_pixmap_new  gdk_pixmap_new;
c_gdk_pixmap_create_from_data  gdk_pixmap_create_from_data;
c_gdk_pixmap_create_from_xpm  gdk_pixmap_create_from_xpm;
c_gdk_pixmap_colormap_create_from_xpm  gdk_pixmap_colormap_create_from_xpm;
c_gdk_pixmap_create_from_xpm_d  gdk_pixmap_create_from_xpm_d;
c_gdk_pixmap_colormap_create_from_xpm_d  gdk_pixmap_colormap_create_from_xpm_d;

// gdk.Bitmap

c_gdk_bitmap_create_from_data  gdk_bitmap_create_from_data;

// gdk.RGB

c_gdk_rgb_init  gdk_rgb_init;
c_gdk_draw_rgb_image  gdk_draw_rgb_image;
c_gdk_draw_rgb_image_dithalign  gdk_draw_rgb_image_dithalign;
c_gdk_draw_indexed_image  gdk_draw_indexed_image;
c_gdk_draw_gray_image  gdk_draw_gray_image;
c_gdk_draw_rgb_32_image  gdk_draw_rgb_32_image;
c_gdk_draw_rgb_32_image_dithalign  gdk_draw_rgb_32_image_dithalign;
c_gdk_rgb_gc_set_foreground  gdk_rgb_gc_set_foreground;
c_gdk_rgb_gc_set_background  gdk_rgb_gc_set_background;
c_gdk_rgb_xpixel_from_rgb  gdk_rgb_xpixel_from_rgb;
c_gdk_rgb_find_color  gdk_rgb_find_color;
c_gdk_rgb_set_install  gdk_rgb_set_install;
c_gdk_rgb_set_min_colors  gdk_rgb_set_min_colors;
c_gdk_rgb_get_visual  gdk_rgb_get_visual;
c_gdk_rgb_get_colormap  gdk_rgb_get_colormap;
c_gdk_rgb_ditherable  gdk_rgb_ditherable;
c_gdk_rgb_colormap_ditherable  gdk_rgb_colormap_ditherable;
c_gdk_rgb_set_verbose  gdk_rgb_set_verbose;

// gdk.RgbCmap

c_gdk_rgb_cmap_new  gdk_rgb_cmap_new;
c_gdk_rgb_cmap_free  gdk_rgb_cmap_free;

// gdk.ImageGdk

c_gdk_image_new  gdk_image_new;
c_gdk_image_new_bitmap  gdk_image_new_bitmap;
c_gdk_image_get  gdk_image_get;
c_gdk_image_ref  gdk_image_ref;
c_gdk_image_unref  gdk_image_unref;
c_gdk_image_get_colormap  gdk_image_get_colormap;
c_gdk_image_set_colormap  gdk_image_set_colormap;
c_gdk_image_put_pixel  gdk_image_put_pixel;
c_gdk_image_get_pixel  gdk_image_get_pixel;

// gdk.Pixbuf

c_gdk_pixbuf_render_threshold_alpha  gdk_pixbuf_render_threshold_alpha;
c_gdk_pixbuf_render_to_drawable  gdk_pixbuf_render_to_drawable;
c_gdk_pixbuf_render_to_drawable_alpha  gdk_pixbuf_render_to_drawable_alpha;
c_gdk_pixbuf_render_pixmap_and_mask  gdk_pixbuf_render_pixmap_and_mask;
c_gdk_pixbuf_render_pixmap_and_mask_for_colormap  gdk_pixbuf_render_pixmap_and_mask_for_colormap;
c_gdk_pixbuf_get_from_drawable  gdk_pixbuf_get_from_drawable;
c_gdk_pixbuf_get_from_image  gdk_pixbuf_get_from_image;
c_gdk_pixbuf_get_type  gdk_pixbuf_get_type;
c_gdk_pixbuf_new_from_data  gdk_pixbuf_new_from_data;
c_gdk_pixbuf_new_from_xpm_data  gdk_pixbuf_new_from_xpm_data;
c_gdk_pixbuf_new_from_inline  gdk_pixbuf_new_from_inline;
c_gdk_pixbuf_new_subpixbuf  gdk_pixbuf_new_subpixbuf;
c_gdk_pixbuf_copy  gdk_pixbuf_copy;
c_gdk_pixbuf_get_colorspace  gdk_pixbuf_get_colorspace;
c_gdk_pixbuf_get_n_channels  gdk_pixbuf_get_n_channels;
c_gdk_pixbuf_get_has_alpha  gdk_pixbuf_get_has_alpha;
c_gdk_pixbuf_get_bits_per_sample  gdk_pixbuf_get_bits_per_sample;
c_gdk_pixbuf_get_pixels  gdk_pixbuf_get_pixels;
c_gdk_pixbuf_get_width  gdk_pixbuf_get_width;
c_gdk_pixbuf_get_height  gdk_pixbuf_get_height;
c_gdk_pixbuf_get_rowstride  gdk_pixbuf_get_rowstride;
c_gdk_pixbuf_get_option  gdk_pixbuf_get_option;
c_gdk_pixbuf_new_from_file  gdk_pixbuf_new_from_file;
c_gdk_pixbuf_new_from_file_at_size  gdk_pixbuf_new_from_file_at_size;
c_gdk_pixbuf_new_from_file_at_scale  gdk_pixbuf_new_from_file_at_scale;
c_gdk_pixbuf_new_from_stream  gdk_pixbuf_new_from_stream;
c_gdk_pixbuf_new_from_stream_at_scale  gdk_pixbuf_new_from_stream_at_scale;
c_gdk_pixbuf_savev  gdk_pixbuf_savev;
c_gdk_pixbuf_save  gdk_pixbuf_save;
c_gdk_pixbuf_save_to_callback  gdk_pixbuf_save_to_callback;
c_gdk_pixbuf_save_to_callbackv  gdk_pixbuf_save_to_callbackv;
c_gdk_pixbuf_save_to_buffer  gdk_pixbuf_save_to_buffer;
c_gdk_pixbuf_save_to_bufferv  gdk_pixbuf_save_to_bufferv;
c_gdk_pixbuf_save_to_stream  gdk_pixbuf_save_to_stream;
c_gdk_pixbuf_scale_simple  gdk_pixbuf_scale_simple;
c_gdk_pixbuf_scale  gdk_pixbuf_scale;
c_gdk_pixbuf_composite_color_simple  gdk_pixbuf_composite_color_simple;
c_gdk_pixbuf_composite  gdk_pixbuf_composite;
c_gdk_pixbuf_composite_color  gdk_pixbuf_composite_color;
c_gdk_pixbuf_rotate_simple  gdk_pixbuf_rotate_simple;
c_gdk_pixbuf_flip  gdk_pixbuf_flip;
c_gdk_pixbuf_add_alpha  gdk_pixbuf_add_alpha;
c_gdk_pixbuf_copy_area  gdk_pixbuf_copy_area;
c_gdk_pixbuf_saturate_and_pixelate  gdk_pixbuf_saturate_and_pixelate;
c_gdk_pixbuf_apply_embedded_orientation  gdk_pixbuf_apply_embedded_orientation;
c_gdk_pixbuf_fill  gdk_pixbuf_fill;

// gdk.Colormap

c_gdk_colormap_new  gdk_colormap_new;
c_gdk_colormap_ref  gdk_colormap_ref;
c_gdk_colormap_unref  gdk_colormap_unref;
c_gdk_colormap_get_system  gdk_colormap_get_system;
c_gdk_colormap_get_system_size  gdk_colormap_get_system_size;
c_gdk_colormap_change  gdk_colormap_change;
c_gdk_colormap_alloc_colors  gdk_colormap_alloc_colors;
c_gdk_colormap_alloc_color  gdk_colormap_alloc_color;
c_gdk_colormap_free_colors  gdk_colormap_free_colors;
c_gdk_colormap_query_color  gdk_colormap_query_color;
c_gdk_colormap_get_visual  gdk_colormap_get_visual;
c_gdk_colormap_get_screen  gdk_colormap_get_screen;
c_gdk_colors_store  gdk_colors_store;
c_gdk_colors_alloc  gdk_colors_alloc;
c_gdk_colors_free  gdk_colors_free;

// gdk.Color

c_gdk_color_copy  gdk_color_copy;
c_gdk_color_free  gdk_color_free;
c_gdk_color_white  gdk_color_white;
c_gdk_color_black  gdk_color_black;
c_gdk_color_parse  gdk_color_parse;
c_gdk_color_alloc  gdk_color_alloc;
c_gdk_color_change  gdk_color_change;
c_gdk_color_equal  gdk_color_equal;
c_gdk_color_hash  gdk_color_hash;
c_gdk_color_to_string  gdk_color_to_string;

// gdk.Visual

c_gdk_query_depths  gdk_query_depths;
c_gdk_query_visual_types  gdk_query_visual_types;
c_gdk_list_visuals  gdk_list_visuals;
c_gdk_visual_get_best_depth  gdk_visual_get_best_depth;
c_gdk_visual_get_best_type  gdk_visual_get_best_type;
c_gdk_visual_get_system  gdk_visual_get_system;
c_gdk_visual_get_best  gdk_visual_get_best;
c_gdk_visual_get_best_with_depth  gdk_visual_get_best_with_depth;
c_gdk_visual_get_best_with_type  gdk_visual_get_best_with_type;
c_gdk_visual_get_best_with_both  gdk_visual_get_best_with_both;
c_gdk_visual_get_screen  gdk_visual_get_screen;

// gdk.Font

c_gdk_font_load  gdk_font_load;
c_gdk_font_load_for_display  gdk_font_load_for_display;
c_gdk_fontset_load  gdk_fontset_load;
c_gdk_fontset_load_for_display  gdk_fontset_load_for_display;
c_gdk_font_from_description  gdk_font_from_description;
c_gdk_font_from_description_for_display  gdk_font_from_description_for_display;
c_gdk_font_get_display  gdk_font_get_display;
c_gdk_font_ref  gdk_font_ref;
c_gdk_font_unref  gdk_font_unref;
c_gdk_font_id  gdk_font_id;
c_gdk_font_equal  gdk_font_equal;
c_gdk_string_extents  gdk_string_extents;
c_gdk_text_extents  gdk_text_extents;
c_gdk_text_extents_wc  gdk_text_extents_wc;
c_gdk_string_width  gdk_string_width;
c_gdk_text_width  gdk_text_width;
c_gdk_text_width_wc  gdk_text_width_wc;
c_gdk_char_width  gdk_char_width;
c_gdk_char_width_wc  gdk_char_width_wc;
c_gdk_string_measure  gdk_string_measure;
c_gdk_text_measure  gdk_text_measure;
c_gdk_char_measure  gdk_char_measure;
c_gdk_string_height  gdk_string_height;
c_gdk_text_height  gdk_text_height;
c_gdk_char_height  gdk_char_height;
c_gdk_wcstombs  gdk_wcstombs;
c_gdk_mbstowcs  gdk_mbstowcs;

// gdk.Cursor

c_gdk_cursor_new  gdk_cursor_new;
c_gdk_cursor_new_from_pixmap  gdk_cursor_new_from_pixmap;
c_gdk_cursor_new_from_pixbuf  gdk_cursor_new_from_pixbuf;
c_gdk_cursor_new_from_name  gdk_cursor_new_from_name;
c_gdk_cursor_new_for_display  gdk_cursor_new_for_display;
c_gdk_cursor_get_display  gdk_cursor_get_display;
c_gdk_cursor_get_image  gdk_cursor_get_image;
c_gdk_cursor_ref  gdk_cursor_ref;
c_gdk_cursor_unref  gdk_cursor_unref;

// gdk.Window

c_gdk_window_new  gdk_window_new;
c_gdk_window_destroy  gdk_window_destroy;
c_gdk_window_get_window_type  gdk_window_get_window_type;
c_gdk_window_at_pointer  gdk_window_at_pointer;
c_gdk_window_show  gdk_window_show;
c_gdk_window_show_unraised  gdk_window_show_unraised;
c_gdk_window_hide  gdk_window_hide;
c_gdk_window_is_visible  gdk_window_is_visible;
c_gdk_window_is_viewable  gdk_window_is_viewable;
c_gdk_window_get_state  gdk_window_get_state;
c_gdk_window_withdraw  gdk_window_withdraw;
c_gdk_window_iconify  gdk_window_iconify;
c_gdk_window_deiconify  gdk_window_deiconify;
c_gdk_window_stick  gdk_window_stick;
c_gdk_window_unstick  gdk_window_unstick;
c_gdk_window_maximize  gdk_window_maximize;
c_gdk_window_unmaximize  gdk_window_unmaximize;
c_gdk_window_fullscreen  gdk_window_fullscreen;
c_gdk_window_unfullscreen  gdk_window_unfullscreen;
c_gdk_window_set_keep_above  gdk_window_set_keep_above;
c_gdk_window_set_keep_below  gdk_window_set_keep_below;
c_gdk_window_set_opacity  gdk_window_set_opacity;
c_gdk_window_set_composited  gdk_window_set_composited;
c_gdk_window_move  gdk_window_move;
c_gdk_window_resize  gdk_window_resize;
c_gdk_window_move_resize  gdk_window_move_resize;
c_gdk_window_scroll  gdk_window_scroll;
c_gdk_window_move_region  gdk_window_move_region;
c_gdk_window_reparent  gdk_window_reparent;
c_gdk_window_clear  gdk_window_clear;
c_gdk_window_clear_area  gdk_window_clear_area;
c_gdk_window_clear_area_e  gdk_window_clear_area_e;
c_gdk_window_raise  gdk_window_raise;
c_gdk_window_lower  gdk_window_lower;
c_gdk_window_focus  gdk_window_focus;
c_gdk_window_register_dnd  gdk_window_register_dnd;
c_gdk_window_begin_resize_drag  gdk_window_begin_resize_drag;
c_gdk_window_begin_move_drag  gdk_window_begin_move_drag;
c_gdk_window_constrain_size  gdk_window_constrain_size;
c_gdk_window_beep  gdk_window_beep;
c_gdk_window_begin_paint_rect  gdk_window_begin_paint_rect;
c_gdk_window_begin_paint_region  gdk_window_begin_paint_region;
c_gdk_window_end_paint  gdk_window_end_paint;
c_gdk_window_invalidate_rect  gdk_window_invalidate_rect;
c_gdk_window_invalidate_region  gdk_window_invalidate_region;
c_gdk_window_get_update_area  gdk_window_get_update_area;
c_gdk_window_freeze_updates  gdk_window_freeze_updates;
c_gdk_window_thaw_updates  gdk_window_thaw_updates;
c_gdk_window_process_all_updates  gdk_window_process_all_updates;
c_gdk_window_process_updates  gdk_window_process_updates;
c_gdk_window_set_debug_updates  gdk_window_set_debug_updates;
c_gdk_window_get_internal_paint_info  gdk_window_get_internal_paint_info;
c_gdk_window_enable_synchronized_configure  gdk_window_enable_synchronized_configure;
c_gdk_window_configure_finished  gdk_window_configure_finished;
c_gdk_window_set_user_data  gdk_window_set_user_data;
c_gdk_window_set_override_redirect  gdk_window_set_override_redirect;
c_gdk_window_set_accept_focus  gdk_window_set_accept_focus;
c_gdk_window_set_focus_on_map  gdk_window_set_focus_on_map;
c_gdk_window_add_filter  gdk_window_add_filter;
c_gdk_window_remove_filter  gdk_window_remove_filter;
c_gdk_window_shape_combine_mask  gdk_window_shape_combine_mask;
c_gdk_window_shape_combine_region  gdk_window_shape_combine_region;
c_gdk_window_set_child_shapes  gdk_window_set_child_shapes;
c_gdk_window_merge_child_shapes  gdk_window_merge_child_shapes;
c_gdk_window_input_shape_combine_mask  gdk_window_input_shape_combine_mask;
c_gdk_window_input_shape_combine_region  gdk_window_input_shape_combine_region;
c_gdk_window_set_child_input_shapes  gdk_window_set_child_input_shapes;
c_gdk_window_merge_child_input_shapes  gdk_window_merge_child_input_shapes;
c_gdk_window_set_static_gravities  gdk_window_set_static_gravities;
c_gdk_window_set_hints  gdk_window_set_hints;
c_gdk_window_set_title  gdk_window_set_title;
c_gdk_window_set_background  gdk_window_set_background;
c_gdk_window_set_back_pixmap  gdk_window_set_back_pixmap;
c_gdk_window_set_cursor  gdk_window_set_cursor;
c_gdk_window_get_user_data  gdk_window_get_user_data;
c_gdk_window_get_geometry  gdk_window_get_geometry;
c_gdk_window_set_geometry_hints  gdk_window_set_geometry_hints;
c_gdk_window_set_icon_list  gdk_window_set_icon_list;
c_gdk_window_set_modal_hint  gdk_window_set_modal_hint;
c_gdk_window_set_type_hint  gdk_window_set_type_hint;
c_gdk_window_get_type_hint  gdk_window_get_type_hint;
c_gdk_window_set_skip_taskbar_hint  gdk_window_set_skip_taskbar_hint;
c_gdk_window_set_skip_pager_hint  gdk_window_set_skip_pager_hint;
c_gdk_window_set_urgency_hint  gdk_window_set_urgency_hint;
c_gdk_window_get_position  gdk_window_get_position;
c_gdk_window_get_root_origin  gdk_window_get_root_origin;
c_gdk_window_get_frame_extents  gdk_window_get_frame_extents;
c_gdk_window_get_origin  gdk_window_get_origin;
c_gdk_window_get_deskrelative_origin  gdk_window_get_deskrelative_origin;
c_gdk_window_get_pointer  gdk_window_get_pointer;
c_gdk_window_get_parent  gdk_window_get_parent;
c_gdk_window_get_toplevel  gdk_window_get_toplevel;
c_gdk_window_get_children  gdk_window_get_children;
c_gdk_window_peek_children  gdk_window_peek_children;
c_gdk_window_get_events  gdk_window_get_events;
c_gdk_window_set_events  gdk_window_set_events;
c_gdk_window_set_icon  gdk_window_set_icon;
c_gdk_window_set_icon_name  gdk_window_set_icon_name;
c_gdk_window_set_transient_for  gdk_window_set_transient_for;
c_gdk_window_set_role  gdk_window_set_role;
c_gdk_window_set_startup_id  gdk_window_set_startup_id;
c_gdk_window_set_group  gdk_window_set_group;
c_gdk_window_get_group  gdk_window_get_group;
c_gdk_window_set_decorations  gdk_window_set_decorations;
c_gdk_window_get_decorations  gdk_window_get_decorations;
c_gdk_window_set_functions  gdk_window_set_functions;
c_gdk_window_get_toplevels  gdk_window_get_toplevels;
c_gdk_get_default_root_window  gdk_get_default_root_window;
c_gdk_set_pointer_hooks  gdk_set_pointer_hooks;
c_gdk_window_redirect_to_drawable  gdk_window_redirect_to_drawable;
c_gdk_window_remove_redirection  gdk_window_remove_redirection;

// gdk.Event

c_gdk_events_pending  gdk_events_pending;
c_gdk_event_peek  gdk_event_peek;
c_gdk_event_get  gdk_event_get;
c_gdk_event_get_graphics_expose  gdk_event_get_graphics_expose;
c_gdk_event_put  gdk_event_put;
c_gdk_event_new  gdk_event_new;
c_gdk_event_copy  gdk_event_copy;
c_gdk_event_free  gdk_event_free;
c_gdk_event_get_time  gdk_event_get_time;
c_gdk_event_get_state  gdk_event_get_state;
c_gdk_event_get_axis  gdk_event_get_axis;
c_gdk_event_get_coords  gdk_event_get_coords;
c_gdk_event_get_root_coords  gdk_event_get_root_coords;
c_gdk_event_request_motions  gdk_event_request_motions;
c_gdk_event_handler_set  gdk_event_handler_set;
c_gdk_event_send_client_message  gdk_event_send_client_message;
c_gdk_event_send_client_message_for_display  gdk_event_send_client_message_for_display;
c_gdk_event_send_clientmessage_toall  gdk_event_send_clientmessage_toall;
c_gdk_add_client_message_filter  gdk_add_client_message_filter;
c_gdk_get_show_events  gdk_get_show_events;
c_gdk_set_show_events  gdk_set_show_events;
c_gdk_event_set_screen  gdk_event_set_screen;
c_gdk_event_get_screen  gdk_event_get_screen;
c_gdk_setting_get  gdk_setting_get;

// gdk.


// gdk.Keymap

c_gdk_keymap_get_default  gdk_keymap_get_default;
c_gdk_keymap_get_for_display  gdk_keymap_get_for_display;
c_gdk_keymap_lookup_key  gdk_keymap_lookup_key;
c_gdk_keymap_translate_keyboard_state  gdk_keymap_translate_keyboard_state;
c_gdk_keymap_get_entries_for_keyval  gdk_keymap_get_entries_for_keyval;
c_gdk_keymap_get_entries_for_keycode  gdk_keymap_get_entries_for_keycode;
c_gdk_keymap_get_direction  gdk_keymap_get_direction;
c_gdk_keymap_have_bidi_layouts  gdk_keymap_have_bidi_layouts;
c_gdk_keymap_get_caps_lock_state  gdk_keymap_get_caps_lock_state;
c_gdk_keyval_name  gdk_keyval_name;
c_gdk_keyval_from_name  gdk_keyval_from_name;
c_gdk_keyval_convert_case  gdk_keyval_convert_case;
c_gdk_keyval_to_upper  gdk_keyval_to_upper;
c_gdk_keyval_to_lower  gdk_keyval_to_lower;
c_gdk_keyval_is_upper  gdk_keyval_is_upper;
c_gdk_keyval_is_lower  gdk_keyval_is_lower;
c_gdk_keyval_to_unicode  gdk_keyval_to_unicode;
c_gdk_unicode_to_keyval  gdk_unicode_to_keyval;

// gdk.Selection

c_gdk_selection_owner_set  gdk_selection_owner_set;
c_gdk_selection_owner_set_for_display  gdk_selection_owner_set_for_display;
c_gdk_selection_owner_get  gdk_selection_owner_get;
c_gdk_selection_owner_get_for_display  gdk_selection_owner_get_for_display;
c_gdk_selection_convert  gdk_selection_convert;
c_gdk_selection_property_get  gdk_selection_property_get;
c_gdk_selection_send_notify  gdk_selection_send_notify;
c_gdk_selection_send_notify_for_display  gdk_selection_send_notify_for_display;

// gdk.DragContext

c_gdk_drag_get_selection  gdk_drag_get_selection;
c_gdk_drag_abort  gdk_drag_abort;
c_gdk_drop_reply  gdk_drop_reply;
c_gdk_drag_context_new  gdk_drag_context_new;
c_gdk_drag_drop  gdk_drag_drop;
c_gdk_drag_find_window  gdk_drag_find_window;
c_gdk_drag_find_window_for_screen  gdk_drag_find_window_for_screen;
c_gdk_drag_context_ref  gdk_drag_context_ref;
c_gdk_drag_begin  gdk_drag_begin;
c_gdk_drag_motion  gdk_drag_motion;
c_gdk_drop_finish  gdk_drop_finish;
c_gdk_drag_get_protocol  gdk_drag_get_protocol;
c_gdk_drag_get_protocol_for_display  gdk_drag_get_protocol_for_display;
c_gdk_drag_context_unref  gdk_drag_context_unref;
c_gdk_drag_status  gdk_drag_status;
c_gdk_drag_drop_succeeded  gdk_drag_drop_succeeded;

// gdk.

c_gdk_threads_init  gdk_threads_init;
c_gdk_threads_enter  gdk_threads_enter;
c_gdk_threads_leave  gdk_threads_leave;
c_gdk_threads_set_lock_functions  gdk_threads_set_lock_functions;
c_gdk_threads_add_idle  gdk_threads_add_idle;
c_gdk_threads_add_idle_full  gdk_threads_add_idle_full;
c_gdk_threads_add_timeout  gdk_threads_add_timeout;
c_gdk_threads_add_timeout_full  gdk_threads_add_timeout_full;
c_gdk_threads_add_timeout_seconds  gdk_threads_add_timeout_seconds;
c_gdk_threads_add_timeout_seconds_full  gdk_threads_add_timeout_seconds_full;

// gdk.Input

c_gdk_input_add_full  gdk_input_add_full;
c_gdk_input_add  gdk_input_add;
c_gdk_input_remove  gdk_input_remove;

// gdk.Device

c_gdk_devices_list  gdk_devices_list;
c_gdk_device_set_source  gdk_device_set_source;
c_gdk_device_set_mode  gdk_device_set_mode;
c_gdk_device_set_key  gdk_device_set_key;
c_gdk_device_set_axis_use  gdk_device_set_axis_use;
c_gdk_device_get_core_pointer  gdk_device_get_core_pointer;
c_gdk_device_get_state  gdk_device_get_state;
c_gdk_device_get_history  gdk_device_get_history;
c_gdk_device_free_history  gdk_device_free_history;
c_gdk_device_get_axis  gdk_device_get_axis;
c_gdk_input_set_extension_events  gdk_input_set_extension_events;

// gdk.X11

c_gdk_window_foreign_new  gdk_window_foreign_new;
c_gdk_xid_table_lookup  gdk_xid_table_lookup;
c_gdk_window_lookup  gdk_window_lookup;
c_gdk_pixmap_lookup  gdk_pixmap_lookup;
c_gdk_x11_get_server_time  gdk_x11_get_server_time;
c_gdk_x11_screen_get_monitor_output  gdk_x11_screen_get_monitor_output;
c_gdk_x11_window_set_user_time  gdk_x11_window_set_user_time;
c_gdk_x11_window_move_to_current_desktop  gdk_x11_window_move_to_current_desktop;
c_gdk_x11_display_broadcast_startup_message  gdk_x11_display_broadcast_startup_message;
c_gdk_x11_display_get_startup_notification_id  gdk_x11_display_get_startup_notification_id;
c_gdk_x11_drawable_get_xid  gdk_x11_drawable_get_xid;
c_gdk_x11_font_get_name  gdk_x11_font_get_name;
c_gdk_x11_font_get_xfont  gdk_x11_font_get_xfont;
c_gdk_x11_get_default_screen  gdk_x11_get_default_screen;
c_gdk_x11_grab_server  gdk_x11_grab_server;
c_gdk_x11_ungrab_server  gdk_x11_ungrab_server;

// gdk.AppLaunchContext

c_gdk_app_launch_context_new  gdk_app_launch_context_new;
c_gdk_app_launch_context_set_display  gdk_app_launch_context_set_display;
c_gdk_app_launch_context_set_screen  gdk_app_launch_context_set_screen;
c_gdk_app_launch_context_set_desktop  gdk_app_launch_context_set_desktop;
c_gdk_app_launch_context_set_timestamp  gdk_app_launch_context_set_timestamp;
c_gdk_app_launch_context_set_icon  gdk_app_launch_context_set_icon;
c_gdk_app_launch_context_set_icon_name  gdk_app_launch_context_set_icon_name;

// gdk.Testing

c_gdk_test_render_sync  gdk_test_render_sync;
c_gdk_test_simulate_button  gdk_test_simulate_button;
c_gdk_test_simulate_key  gdk_test_simulate_key;

// gdk.

c_gdk_cairo_create  gdk_cairo_create;
c_gdk_cairo_set_source_color  gdk_cairo_set_source_color;
c_gdk_cairo_set_source_pixbuf  gdk_cairo_set_source_pixbuf;
c_gdk_cairo_set_source_pixmap  gdk_cairo_set_source_pixmap;
c_gdk_cairo_rectangle  gdk_cairo_rectangle;
c_gdk_cairo_region  gdk_cairo_region;
