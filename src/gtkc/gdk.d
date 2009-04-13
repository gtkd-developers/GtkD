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
	
	void function(gint* argc, gchar*** argv) c_gdk_init;
	gboolean function(gint* argc, gchar*** argv) c_gdk_init_check;
	void function(gint* argc, gchar*** argv) c_gdk_parse_args;
	gchar* function() c_gdk_get_display_arg_name;
	gchar* function() c_gdk_set_locale;
	void function(gchar* smClientId) c_gdk_set_sm_client_id;
	void function(gint errorCode) c_gdk_exit;
	void function() c_gdk_notify_startup_complete;
	void function(gchar* startupId) c_gdk_notify_startup_complete_with_id;
	char* function() c_gdk_get_program_class;
	void function(char* programClass) c_gdk_set_program_class;
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
	gboolean function() c_gdk_get_use_xshm;
	void function(gboolean useXshm) c_gdk_set_use_xshm;
	void function() c_gdk_error_trap_push;
	gint function() c_gdk_error_trap_pop;
	
	// gdk.Display
	
	GdkDisplay* function(gchar* displayName) c_gdk_display_open;
	GdkDisplay* function() c_gdk_display_get_default;
	gchar* function(GdkDisplay* display) c_gdk_display_get_name;
	gint function(GdkDisplay* display) c_gdk_display_get_n_screens;
	GdkScreen* function(GdkDisplay* display, gint screenNum) c_gdk_display_get_screen;
	GdkScreen* function(GdkDisplay* display) c_gdk_display_get_default_screen;
	void function(GdkDisplay* display, guint32 time) c_gdk_display_pointer_ungrab;
	void function(GdkDisplay* display, guint32 time) c_gdk_display_keyboard_ungrab;
	gboolean function(GdkDisplay* display) c_gdk_display_pointer_is_grabbed;
	void function(GdkDisplay* display) c_gdk_display_beep;
	void function(GdkDisplay* display) c_gdk_display_sync;
	void function(GdkDisplay* display) c_gdk_display_flush;
	void function(GdkDisplay* display) c_gdk_display_close;
	GList* function(GdkDisplay* display) c_gdk_display_list_devices;
	GdkEvent* function(GdkDisplay* display) c_gdk_display_get_event;
	GdkEvent* function(GdkDisplay* display) c_gdk_display_peek_event;
	void function(GdkDisplay* display, GdkEvent* event) c_gdk_display_put_event;
	void function(GdkDisplay* display, GdkAtom messageType, GdkFilterFunc func, gpointer data) c_gdk_display_add_client_message_filter;
	void function(GdkDisplay* display, guint msec) c_gdk_display_set_double_click_time;
	void function(GdkDisplay* display, guint distance) c_gdk_display_set_double_click_distance;
	void function(GdkDisplay* display, GdkScreen** screen, gint* x, gint* y, GdkModifierType* mask) c_gdk_display_get_pointer;
	GdkWindow* function(GdkDisplay* display, gint* winX, gint* winY) c_gdk_display_get_window_at_pointer;
	GdkDisplayPointerHooks* function(GdkDisplay* display, GdkDisplayPointerHooks* newHooks) c_gdk_display_set_pointer_hooks;
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
	
	// gdk.DisplayManager
	
	GdkDisplayManager* function() c_gdk_display_manager_get;
	GdkDisplay* function(GdkDisplayManager* displayManager) c_gdk_display_manager_get_default_display;
	void function(GdkDisplayManager* displayManager, GdkDisplay* display) c_gdk_display_manager_set_default_display;
	GSList* function(GdkDisplayManager* displayManager) c_gdk_display_manager_list_displays;
	GdkDevice* function(GdkDisplay* display) c_gdk_display_get_core_pointer;
	
	// gdk.Screen
	
	GdkScreen* function() c_gdk_screen_get_default;
	GdkColormap* function(GdkScreen* screen) c_gdk_screen_get_default_colormap;
	void function(GdkScreen* screen, GdkColormap* colormap) c_gdk_screen_set_default_colormap;
	GdkColormap* function(GdkScreen* screen) c_gdk_screen_get_system_colormap;
	GdkVisual* function(GdkScreen* screen) c_gdk_screen_get_system_visual;
	GdkColormap* function(GdkScreen* screen) c_gdk_screen_get_rgb_colormap;
	GdkVisual* function(GdkScreen* screen) c_gdk_screen_get_rgb_visual;
	GdkColormap* function(GdkScreen* screen) c_gdk_screen_get_rgba_colormap;
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
	void function(GdkScreen* screen, gint monitorNum, GdkRectangle* dest) c_gdk_screen_get_monitor_geometry;
	gint function(GdkScreen* screen, gint x, gint y) c_gdk_screen_get_monitor_at_point;
	gint function(GdkScreen* screen, GdkWindow* window) c_gdk_screen_get_monitor_at_window;
	gint function(GdkScreen* screen, gint monitorNum) c_gdk_screen_get_monitor_height_mm;
	gint function(GdkScreen* screen, gint monitorNum) c_gdk_screen_get_monitor_width_mm;
	gchar* function(GdkScreen* screen, gint monitorNum) c_gdk_screen_get_monitor_plug_name;
	void function(GdkScreen* screen, GdkEvent* event) c_gdk_screen_broadcast_client_message;
	gboolean function(GdkScreen* screen, gchar* name, GValue* value) c_gdk_screen_get_setting;
	cairo_font_options_t* function(GdkScreen* screen) c_gdk_screen_get_font_options;
	void function(GdkScreen* screen, cairo_font_options_t* options) c_gdk_screen_set_font_options;
	gdouble function(GdkScreen* screen) c_gdk_screen_get_resolution;
	void function(GdkScreen* screen, gdouble dpi) c_gdk_screen_set_resolution;
	GdkWindow* function(GdkScreen* screen) c_gdk_screen_get_active_window;
	GList* function(GdkScreen* screen) c_gdk_screen_get_window_stack;
	gboolean function(GdkScreen* screen, gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, gint* childPid, GError** error) c_gdk_spawn_on_screen;
	gboolean function(GdkScreen* screen, gchar* workingDirectory, gchar** argv, gchar** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, gpointer userData, gint* childPid, gint* standardInput, gint* standardOutput, gint* standardError, GError** error) c_gdk_spawn_on_screen_with_pipes;
	gboolean function(GdkScreen* screen, gchar* commandLine, GError** error) c_gdk_spawn_command_line_on_screen;
	
	// gdk.Rectangle
	
	gboolean function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest) c_gdk_rectangle_intersect;
	void function(GdkRectangle* src1, GdkRectangle* src2, GdkRectangle* dest) c_gdk_rectangle_union;
	
	// gdk.Region
	
	GdkRegion* function() c_gdk_region_new;
	GdkRegion* function(GdkPoint* points, gint nPoints, GdkFillRule fillRule) c_gdk_region_polygon;
	GdkRegion* function(GdkRegion* region) c_gdk_region_copy;
	GdkRegion* function(GdkRectangle* rectangle) c_gdk_region_rectangle;
	void function(GdkRegion* region) c_gdk_region_destroy;
	void function(GdkRegion* region, GdkRectangle* rectangle) c_gdk_region_get_clipbox;
	void function(GdkRegion* region, GdkRectangle** rectangles, gint* nRectangles) c_gdk_region_get_rectangles;
	gboolean function(GdkRegion* region) c_gdk_region_empty;
	gboolean function(GdkRegion* region1, GdkRegion* region2) c_gdk_region_equal;
	gboolean function(GdkRegion* region, int x, int y) c_gdk_region_point_in;
	GdkOverlapType function(GdkRegion* region, GdkRectangle* rectangle) c_gdk_region_rect_in;
	void function(GdkRegion* region, gint dx, gint dy) c_gdk_region_offset;
	void function(GdkRegion* region, gint dx, gint dy) c_gdk_region_shrink;
	void function(GdkRegion* region, GdkRectangle* rect) c_gdk_region_union_with_rect;
	void function(GdkRegion* source1, GdkRegion* source2) c_gdk_region_intersect;
	void function(GdkRegion* source1, GdkRegion* source2) c_gdk_region_union;
	void function(GdkRegion* source1, GdkRegion* source2) c_gdk_region_subtract;
	void function(GdkRegion* source1, GdkRegion* source2) c_gdk_region_xor;
	void function(GdkRegion* region, GdkSpan* spans, int nSpans, gboolean sorted, GdkSpanFunc funct, gpointer data) c_gdk_region_spans_intersect_foreach;
	
	// gdk.GC
	
	GdkGC* function(GdkDrawable* drawable) c_gdk_gc_new;
	GdkGC* function(GdkDrawable* drawable, GdkGCValues* values, GdkGCValuesMask valuesMask) c_gdk_gc_new_with_values;
	GdkScreen* function(GdkGC* gc) c_gdk_gc_get_screen;
	GdkGC* function(GdkGC* gc) c_gdk_gc_ref;
	void function(GdkGC* gc) c_gdk_gc_unref;
	void function(GdkGC* gc, GdkGCValues* values, GdkGCValuesMask valuesMask) c_gdk_gc_set_values;
	void function(GdkGC* gc, GdkGCValues* values) c_gdk_gc_get_values;
	void function(GdkGC* gc, GdkColor* color) c_gdk_gc_set_foreground;
	void function(GdkGC* gc, GdkColor* color) c_gdk_gc_set_background;
	void function(GdkGC* gc, GdkColor* color) c_gdk_gc_set_rgb_fg_color;
	void function(GdkGC* gc, GdkColor* color) c_gdk_gc_set_rgb_bg_color;
	void function(GdkGC* gc, GdkFont* font) c_gdk_gc_set_font;
	void function(GdkGC* gc, GdkFunction funct) c_gdk_gc_set_function;
	void function(GdkGC* gc, GdkFill fill) c_gdk_gc_set_fill;
	void function(GdkGC* gc, GdkPixmap* tile) c_gdk_gc_set_tile;
	void function(GdkGC* gc, GdkPixmap* stipple) c_gdk_gc_set_stipple;
	void function(GdkGC* gc, gint x, gint y) c_gdk_gc_set_ts_origin;
	void function(GdkGC* gc, gint x, gint y) c_gdk_gc_set_clip_origin;
	void function(GdkGC* gc, GdkBitmap* mask) c_gdk_gc_set_clip_mask;
	void function(GdkGC* gc, GdkRectangle* rectangle) c_gdk_gc_set_clip_rectangle;
	void function(GdkGC* gc, GdkRegion* region) c_gdk_gc_set_clip_region;
	void function(GdkGC* gc, GdkSubwindowMode mode) c_gdk_gc_set_subwindow;
	void function(GdkGC* gc, gboolean exposures) c_gdk_gc_set_exposures;
	void function(GdkGC* gc, gint lineWidth, GdkLineStyle lineStyle, GdkCapStyle capStyle, GdkJoinStyle joinStyle) c_gdk_gc_set_line_attributes;
	void function(GdkGC* gc, gint dashOffset, gint8[] dashList, gint n) c_gdk_gc_set_dashes;
	void function(GdkGC* dstGc, GdkGC* srcGc) c_gdk_gc_copy;
	void function(GdkGC* gc, GdkColormap* colormap) c_gdk_gc_set_colormap;
	GdkColormap* function(GdkGC* gc) c_gdk_gc_get_colormap;
	void function(GdkGC* gc, gint xOffset, gint yOffset) c_gdk_gc_offset;
	
	// gdk.Drawable
	
	GdkDrawable* function(GdkDrawable* drawable) c_gdk_drawable_ref;
	void function(GdkDrawable* drawable) c_gdk_drawable_unref;
	void function(GdkDrawable* drawable, gchar* key, gpointer data, GDestroyNotify destroyFunc) c_gdk_drawable_set_data;
	gpointer function(GdkDrawable* drawable, gchar* key) c_gdk_drawable_get_data;
	GdkDisplay* function(GdkDrawable* drawable) c_gdk_drawable_get_display;
	GdkScreen* function(GdkDrawable* drawable) c_gdk_drawable_get_screen;
	GdkVisual* function(GdkDrawable* drawable) c_gdk_drawable_get_visual;
	void function(GdkDrawable* drawable, GdkColormap* colormap) c_gdk_drawable_set_colormap;
	GdkColormap* function(GdkDrawable* drawable) c_gdk_drawable_get_colormap;
	gint function(GdkDrawable* drawable) c_gdk_drawable_get_depth;
	void function(GdkDrawable* drawable, gint* width, gint* height) c_gdk_drawable_get_size;
	GdkRegion* function(GdkDrawable* drawable) c_gdk_drawable_get_clip_region;
	GdkRegion* function(GdkDrawable* drawable) c_gdk_drawable_get_visible_region;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y) c_gdk_draw_point;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkPoint* points, gint nPoints) c_gdk_draw_points;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x1_, gint y1_, gint x2_, gint y2_) c_gdk_draw_line;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkPoint* points, gint nPoints) c_gdk_draw_lines;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkPixbuf* pixbuf, gint srcX, gint srcY, gint destX, gint destY, gint width, gint height, GdkRgbDither dither, gint xDither, gint yDither) c_gdk_draw_pixbuf;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkSegment* segs, gint nSegs) c_gdk_draw_segments;
	void function(GdkDrawable* drawable, GdkGC* gc, gboolean filled, gint x, gint y, gint width, gint height) c_gdk_draw_rectangle;
	void function(GdkDrawable* drawable, GdkGC* gc, gboolean filled, gint x, gint y, gint width, gint height, gint angle1, gint angle2) c_gdk_draw_arc;
	void function(GdkDrawable* drawable, GdkGC* gc, gboolean filled, GdkPoint* points, gint nPoints) c_gdk_draw_polygon;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkTrapezoid* trapezoids, gint nTrapezoids) c_gdk_draw_trapezoids;
	void function(GdkDrawable* drawable, GdkGC* gc, PangoFont* font, gint x, gint y, PangoGlyphString* glyphs) c_gdk_draw_glyphs;
	void function(GdkDrawable* drawable, GdkGC* gc, PangoMatrix* matrix, PangoFont* font, gint x, gint y, PangoGlyphString* glyphs) c_gdk_draw_glyphs_transformed;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayoutLine* line) c_gdk_draw_layout_line;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayoutLine* line, GdkColor* foreground, GdkColor* background) c_gdk_draw_layout_line_with_colors;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayout* layout) c_gdk_draw_layout;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, PangoLayout* layout, GdkColor* foreground, GdkColor* background) c_gdk_draw_layout_with_colors;
	void function(GdkDrawable* drawable, GdkFont* font, GdkGC* gc, gint x, gint y, gchar* string) c_gdk_draw_string;
	void function(GdkDrawable* drawable, GdkFont* font, GdkGC* gc, gint x, gint y, gchar* text, gint textLength) c_gdk_draw_text;
	void function(GdkDrawable* drawable, GdkFont* font, GdkGC* gc, gint x, gint y, GdkWChar* text, gint textLength) c_gdk_draw_text_wc;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkDrawable* src, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height) c_gdk_draw_drawable;
	void function(GdkDrawable* drawable, GdkGC* gc, GdkImage* image, gint xsrc, gint ysrc, gint xdest, gint ydest, gint width, gint height) c_gdk_draw_image;
	GdkImage* function(GdkDrawable* drawable, gint x, gint y, gint width, gint height) c_gdk_drawable_get_image;
	GdkImage* function(GdkDrawable* drawable, GdkImage* image, gint srcX, gint srcY, gint destX, gint destY, gint width, gint height) c_gdk_drawable_copy_to_image;
	
	// gdk.Pixmap
	
	GdkPixmap* function(GdkDrawable* drawable, gint width, gint height, gint depth) c_gdk_pixmap_new;
	GdkPixmap* function(GdkDrawable* drawable, gchar* data, gint width, gint height, gint depth, GdkColor* fg, GdkColor* bg) c_gdk_pixmap_create_from_data;
	GdkPixmap* function(GdkDrawable* drawable, GdkBitmap** mask, GdkColor* transparentColor, gchar* filename) c_gdk_pixmap_create_from_xpm;
	GdkPixmap* function(GdkDrawable* drawable, GdkColormap* colormap, GdkBitmap** mask, GdkColor* transparentColor, gchar* filename) c_gdk_pixmap_colormap_create_from_xpm;
	GdkPixmap* function(GdkDrawable* drawable, GdkBitmap** mask, GdkColor* transparentColor, gchar** data) c_gdk_pixmap_create_from_xpm_d;
	GdkPixmap* function(GdkDrawable* drawable, GdkColormap* colormap, GdkBitmap** mask, GdkColor* transparentColor, gchar** data) c_gdk_pixmap_colormap_create_from_xpm_d;
	
	// gdk.Bitmap
	
	GdkBitmap* function(GdkDrawable* drawable, gchar* data, gint width, gint height) c_gdk_bitmap_create_from_data;
	
	// gdk.RGB
	
	void function() c_gdk_rgb_init;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* rgbBuf, gint rowstride) c_gdk_draw_rgb_image;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* rgbBuf, gint rowstride, gint xdith, gint ydith) c_gdk_draw_rgb_image_dithalign;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride, GdkRgbCmap* cmap) c_gdk_draw_indexed_image;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride) c_gdk_draw_gray_image;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride) c_gdk_draw_rgb_32_image;
	void function(GdkDrawable* drawable, GdkGC* gc, gint x, gint y, gint width, gint height, GdkRgbDither dith, guchar* buf, gint rowstride, gint xdith, gint ydith) c_gdk_draw_rgb_32_image_dithalign;
	void function(GdkGC* gc, guint32 rgb) c_gdk_rgb_gc_set_foreground;
	void function(GdkGC* gc, guint32 rgb) c_gdk_rgb_gc_set_background;
	gulong function(guint32 rgb) c_gdk_rgb_xpixel_from_rgb;
	void function(GdkColormap* colormap, GdkColor* color) c_gdk_rgb_find_color;
	void function(gboolean install) c_gdk_rgb_set_install;
	void function(gint minColors) c_gdk_rgb_set_min_colors;
	GdkVisual* function() c_gdk_rgb_get_visual;
	GdkColormap* function() c_gdk_rgb_get_colormap;
	gboolean function() c_gdk_rgb_ditherable;
	gboolean function(GdkColormap* cmap) c_gdk_rgb_colormap_ditherable;
	void function(gboolean verbose) c_gdk_rgb_set_verbose;
	
	// gdk.RgbCmap
	
	GdkRgbCmap* function(guint32* colors, gint nColors) c_gdk_rgb_cmap_new;
	void function(GdkRgbCmap* cmap) c_gdk_rgb_cmap_free;
	
	// gdk.ImageGdk
	
	GdkImage* function(GdkImageType type, GdkVisual* visual, gint width, gint height) c_gdk_image_new;
	GdkImage* function(GdkVisual* visual, gpointer data, gint width, gint height) c_gdk_image_new_bitmap;
	GdkImage* function(GdkDrawable* drawable, gint x, gint y, gint width, gint height) c_gdk_image_get;
	GdkImage* function(GdkImage* image) c_gdk_image_ref;
	void function(GdkImage* image) c_gdk_image_unref;
	GdkColormap* function(GdkImage* image) c_gdk_image_get_colormap;
	void function(GdkImage* image, GdkColormap* colormap) c_gdk_image_set_colormap;
	void function(GdkImage* image, gint x, gint y, guint32 pixel) c_gdk_image_put_pixel;
	guint32 function(GdkImage* image, gint x, gint y) c_gdk_image_get_pixel;
	
	// gdk.Pixbuf
	
	void function(GdkPixbuf* pixbuf, GdkBitmap* bitmap, int srcX, int srcY, int destX, int destY, int width, int height, int alphaThreshold) c_gdk_pixbuf_render_threshold_alpha;
	void function(GdkPixbuf* pixbuf, GdkDrawable* drawable, GdkGC* gc, int srcX, int srcY, int destX, int destY, int width, int height, GdkRgbDither dither, int xDither, int yDither) c_gdk_pixbuf_render_to_drawable;
	void function(GdkPixbuf* pixbuf, GdkDrawable* drawable, int srcX, int srcY, int destX, int destY, int width, int height, GdkPixbufAlphaMode alphaMode, int alphaThreshold, GdkRgbDither dither, int xDither, int yDither) c_gdk_pixbuf_render_to_drawable_alpha;
	void function(GdkPixbuf* pixbuf, GdkPixmap** pixmapReturn, GdkBitmap** maskReturn, int alphaThreshold) c_gdk_pixbuf_render_pixmap_and_mask;
	void function(GdkPixbuf* pixbuf, GdkColormap* colormap, GdkPixmap** pixmapReturn, GdkBitmap** maskReturn, int alphaThreshold) c_gdk_pixbuf_render_pixmap_and_mask_for_colormap;
	GdkPixbuf* function(GdkPixbuf* dest, GdkDrawable* src, GdkColormap* cmap, int srcX, int srcY, int destX, int destY, int width, int height) c_gdk_pixbuf_get_from_drawable;
	GdkPixbuf* function(GdkPixbuf* dest, GdkImage* src, GdkColormap* cmap, int srcX, int srcY, int destX, int destY, int width, int height) c_gdk_pixbuf_get_from_image;
	GType function() c_gdk_pixbuf_get_type;
	GdkPixbuf* function(guchar* data, GdkColorspace colorspace, gboolean hasAlpha, int bitsPerSample, int width, int height, int rowstride, GdkPixbufDestroyNotify destroyFn, gpointer destroyFnData) c_gdk_pixbuf_new_from_data;
	GdkPixbuf* function(char** data) c_gdk_pixbuf_new_from_xpm_data;
	GdkPixbuf* function(gint dataLength, guint8* data, gboolean copyPixels, GError** error) c_gdk_pixbuf_new_from_inline;
	GdkPixbuf* function(GdkPixbuf* srcPixbuf, int srcX, int srcY, int width, int height) c_gdk_pixbuf_new_subpixbuf;
	GdkPixbuf* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_copy;
	GdkColorspace function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_colorspace;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_n_channels;
	gboolean function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_has_alpha;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_bits_per_sample;
	guchar* function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_pixels;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_width;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_height;
	int function(GdkPixbuf* pixbuf) c_gdk_pixbuf_get_rowstride;
	gchar* function(GdkPixbuf* pixbuf, gchar* key) c_gdk_pixbuf_get_option;
	GdkPixbuf* function(char* filename, GError** error) c_gdk_pixbuf_new_from_file;
	GdkPixbuf* function(char* filename, int width, int height, GError** error) c_gdk_pixbuf_new_from_file_at_size;
	GdkPixbuf* function(char* filename, int width, int height, gboolean preserveAspectRatio, GError** error) c_gdk_pixbuf_new_from_file_at_scale;
	GdkPixbuf* function(GInputStream* stream, GCancellable* cancellable, GError** error) c_gdk_pixbuf_new_from_stream;
	GdkPixbuf* function(GInputStream* stream, gint width, gint height, gboolean preserveAspectRatio, GCancellable* cancellable, GError** error) c_gdk_pixbuf_new_from_stream_at_scale;
	gboolean function(GdkPixbuf* pixbuf, char* filename, char* type, char** optionKeys, char** optionValues, GError** error) c_gdk_pixbuf_savev;
	gboolean function(GdkPixbuf* pixbuf, char* filename, char* type, GError** error, ... ) c_gdk_pixbuf_save;
	gboolean function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, gpointer userData, char* type, GError** error, ... ) c_gdk_pixbuf_save_to_callback;
	gboolean function(GdkPixbuf* pixbuf, GdkPixbufSaveFunc saveFunc, gpointer userData, char* type, char** optionKeys, char** optionValues, GError** error) c_gdk_pixbuf_save_to_callbackv;
	gboolean function(GdkPixbuf* pixbuf, gchar** buffer, gsize* bufferSize, char* type, GError** error, ... ) c_gdk_pixbuf_save_to_buffer;
	gboolean function(GdkPixbuf* pixbuf, gchar** buffer, gsize* bufferSize, char* type, char** optionKeys, char** optionValues, GError** error) c_gdk_pixbuf_save_to_bufferv;
	gboolean function(GdkPixbuf* pixbuf, GOutputStream* stream, char* type, GCancellable* cancellable, GError** error, ... ) c_gdk_pixbuf_save_to_stream;
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
	
	// gdk.Colormap
	
	GdkColormap* function(GdkVisual* visual, gboolean allocate) c_gdk_colormap_new;
	GdkColormap* function(GdkColormap* cmap) c_gdk_colormap_ref;
	void function(GdkColormap* cmap) c_gdk_colormap_unref;
	GdkColormap* function() c_gdk_colormap_get_system;
	gint function() c_gdk_colormap_get_system_size;
	void function(GdkColormap* colormap, gint ncolors) c_gdk_colormap_change;
	gint function(GdkColormap* colormap, GdkColor* colors, gint nColors, gboolean writeable, gboolean bestMatch, gboolean* success) c_gdk_colormap_alloc_colors;
	gboolean function(GdkColormap* colormap, GdkColor* color, gboolean writeable, gboolean bestMatch) c_gdk_colormap_alloc_color;
	void function(GdkColormap* colormap, GdkColor* colors, gint nColors) c_gdk_colormap_free_colors;
	void function(GdkColormap* colormap, gulong pixel, GdkColor* result) c_gdk_colormap_query_color;
	GdkVisual* function(GdkColormap* colormap) c_gdk_colormap_get_visual;
	GdkScreen* function(GdkColormap* cmap) c_gdk_colormap_get_screen;
	void function(GdkColormap* colormap, GdkColor* colors, gint ncolors) c_gdk_colors_store;
	gint function(GdkColormap* colormap, gboolean contiguous, gulong* planes, gint nplanes, gulong* pixels, gint npixels) c_gdk_colors_alloc;
	void function(GdkColormap* colormap, gulong* pixels, gint npixels, gulong planes) c_gdk_colors_free;
	
	// gdk.Color
	
	GdkColor* function(GdkColor* color) c_gdk_color_copy;
	void function(GdkColor* color) c_gdk_color_free;
	gint function(GdkColormap* colormap, GdkColor* color) c_gdk_color_white;
	gint function(GdkColormap* colormap, GdkColor* color) c_gdk_color_black;
	gboolean function(gchar* spec, GdkColor* color) c_gdk_color_parse;
	gint function(GdkColormap* colormap, GdkColor* color) c_gdk_color_alloc;
	gint function(GdkColormap* colormap, GdkColor* color) c_gdk_color_change;
	gboolean function(GdkColor* colora, GdkColor* colorb) c_gdk_color_equal;
	guint function(GdkColor* colora) c_gdk_color_hash;
	gchar* function(GdkColor* color) c_gdk_color_to_string;
	
	// gdk.Visual
	
	void function(gint** depths, gint* count) c_gdk_query_depths;
	void function(GdkVisualType** visualTypes, gint* count) c_gdk_query_visual_types;
	GList* function() c_gdk_list_visuals;
	gint function() c_gdk_visual_get_best_depth;
	GdkVisualType function() c_gdk_visual_get_best_type;
	GdkVisual* function() c_gdk_visual_get_system;
	GdkVisual* function() c_gdk_visual_get_best;
	GdkVisual* function(gint depth) c_gdk_visual_get_best_with_depth;
	GdkVisual* function(GdkVisualType visualType) c_gdk_visual_get_best_with_type;
	GdkVisual* function(gint depth, GdkVisualType visualType) c_gdk_visual_get_best_with_both;
	GdkScreen* function(GdkVisual* visual) c_gdk_visual_get_screen;
	
	// gdk.Font
	
	GdkFont* function(gchar* fontName) c_gdk_font_load;
	GdkFont* function(GdkDisplay* display, gchar* fontName) c_gdk_font_load_for_display;
	GdkFont* function(gchar* fontsetName) c_gdk_fontset_load;
	GdkFont* function(GdkDisplay* display, gchar* fontsetName) c_gdk_fontset_load_for_display;
	GdkFont* function(PangoFontDescription* fontDesc) c_gdk_font_from_description;
	GdkFont* function(GdkDisplay* display, PangoFontDescription* fontDesc) c_gdk_font_from_description_for_display;
	GdkDisplay* function(GdkFont* font) c_gdk_font_get_display;
	GdkFont* function(GdkFont* font) c_gdk_font_ref;
	void function(GdkFont* font) c_gdk_font_unref;
	gint function(GdkFont* font) c_gdk_font_id;
	gboolean function(GdkFont* fonta, GdkFont* fontb) c_gdk_font_equal;
	void function(GdkFont* font, gchar* string, gint* lbearing, gint* rbearing, gint* width, gint* ascent, gint* descent) c_gdk_string_extents;
	void function(GdkFont* font, gchar* text, gint textLength, gint* lbearing, gint* rbearing, gint* width, gint* ascent, gint* descent) c_gdk_text_extents;
	void function(GdkFont* font, GdkWChar* text, gint textLength, gint* lbearing, gint* rbearing, gint* width, gint* ascent, gint* descent) c_gdk_text_extents_wc;
	gint function(GdkFont* font, gchar* string) c_gdk_string_width;
	gint function(GdkFont* font, gchar* text, gint textLength) c_gdk_text_width;
	gint function(GdkFont* font, GdkWChar* text, gint textLength) c_gdk_text_width_wc;
	gint function(GdkFont* font, gchar character) c_gdk_char_width;
	gint function(GdkFont* font, GdkWChar character) c_gdk_char_width_wc;
	gint function(GdkFont* font, gchar* string) c_gdk_string_measure;
	gint function(GdkFont* font, gchar* text, gint textLength) c_gdk_text_measure;
	gint function(GdkFont* font, gchar character) c_gdk_char_measure;
	gint function(GdkFont* font, gchar* string) c_gdk_string_height;
	gint function(GdkFont* font, gchar* text, gint textLength) c_gdk_text_height;
	gint function(GdkFont* font, gchar character) c_gdk_char_height;
	gchar* function(GdkWChar* src) c_gdk_wcstombs;
	gint function(GdkWChar* dest, gchar* src, gint destMax) c_gdk_mbstowcs;
	
	// gdk.Cursor
	
	GdkCursor* function(GdkCursorType cursorType) c_gdk_cursor_new;
	GdkCursor* function(GdkPixmap* source, GdkPixmap* mask, GdkColor* fg, GdkColor* bg, gint x, gint y) c_gdk_cursor_new_from_pixmap;
	GdkCursor* function(GdkDisplay* display, GdkPixbuf* pixbuf, gint x, gint y) c_gdk_cursor_new_from_pixbuf;
	GdkCursor* function(GdkDisplay* display, gchar* name) c_gdk_cursor_new_from_name;
	GdkCursor* function(GdkDisplay* display, GdkCursorType cursorType) c_gdk_cursor_new_for_display;
	GdkDisplay* function(GdkCursor* cursor) c_gdk_cursor_get_display;
	GdkPixbuf* function(GdkCursor* cursor) c_gdk_cursor_get_image;
	GdkCursor* function(GdkCursor* cursor) c_gdk_cursor_ref;
	void function(GdkCursor* cursor) c_gdk_cursor_unref;
	
	// gdk.Window
	
	GdkWindow* function(GdkWindow* parent, GdkWindowAttr* attributes, gint attributesMask) c_gdk_window_new;
	void function(GdkWindow* window) c_gdk_window_destroy;
	GdkWindowType function(GdkWindow* window) c_gdk_window_get_window_type;
	GdkWindow* function(gint* winX, gint* winY) c_gdk_window_at_pointer;
	void function(GdkWindow* window) c_gdk_window_show;
	void function(GdkWindow* window) c_gdk_window_show_unraised;
	void function(GdkWindow* window) c_gdk_window_hide;
	gboolean function(GdkWindow* window) c_gdk_window_is_visible;
	gboolean function(GdkWindow* window) c_gdk_window_is_viewable;
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
	void function(GdkWindow* window, gint x, gint y) c_gdk_window_move;
	void function(GdkWindow* window, gint width, gint height) c_gdk_window_resize;
	void function(GdkWindow* window, gint x, gint y, gint width, gint height) c_gdk_window_move_resize;
	void function(GdkWindow* window, gint dx, gint dy) c_gdk_window_scroll;
	void function(GdkWindow* window, GdkRegion* region, gint dx, gint dy) c_gdk_window_move_region;
	void function(GdkWindow* window, GdkWindow* newParent, gint x, gint y) c_gdk_window_reparent;
	void function(GdkWindow* window) c_gdk_window_clear;
	void function(GdkWindow* window, gint x, gint y, gint width, gint height) c_gdk_window_clear_area;
	void function(GdkWindow* window, gint x, gint y, gint width, gint height) c_gdk_window_clear_area_e;
	void function(GdkWindow* window) c_gdk_window_raise;
	void function(GdkWindow* window) c_gdk_window_lower;
	void function(GdkWindow* window, guint32 timestamp) c_gdk_window_focus;
	void function(GdkWindow* window) c_gdk_window_register_dnd;
	void function(GdkWindow* window, GdkWindowEdge edge, gint button, gint rootX, gint rootY, guint32 timestamp) c_gdk_window_begin_resize_drag;
	void function(GdkWindow* window, gint button, gint rootX, gint rootY, guint32 timestamp) c_gdk_window_begin_move_drag;
	void function(GdkGeometry* geometry, guint flags, gint width, gint height, gint* newWidth, gint* newHeight) c_gdk_window_constrain_size;
	void function(GdkWindow* window) c_gdk_window_beep;
	void function(GdkWindow* window, GdkRectangle* rectangle) c_gdk_window_begin_paint_rect;
	void function(GdkWindow* window, GdkRegion* region) c_gdk_window_begin_paint_region;
	void function(GdkWindow* window) c_gdk_window_end_paint;
	void function(GdkWindow* window, GdkRectangle* rect, gboolean invalidateChildren) c_gdk_window_invalidate_rect;
	void function(GdkWindow* window, GdkRegion* region, gboolean invalidateChildren) c_gdk_window_invalidate_region;
	GdkRegion* function(GdkWindow* window) c_gdk_window_get_update_area;
	void function(GdkWindow* window) c_gdk_window_freeze_updates;
	void function(GdkWindow* window) c_gdk_window_thaw_updates;
	void function() c_gdk_window_process_all_updates;
	void function(GdkWindow* window, gboolean updateChildren) c_gdk_window_process_updates;
	void function(gboolean setting) c_gdk_window_set_debug_updates;
	void function(GdkWindow* window, GdkDrawable** realDrawable, gint* xOffset, gint* yOffset) c_gdk_window_get_internal_paint_info;
	void function(GdkWindow* window) c_gdk_window_enable_synchronized_configure;
	void function(GdkWindow* window) c_gdk_window_configure_finished;
	void function(GdkWindow* window, gpointer userData) c_gdk_window_set_user_data;
	void function(GdkWindow* window, gboolean overrideRedirect) c_gdk_window_set_override_redirect;
	void function(GdkWindow* window, gboolean acceptFocus) c_gdk_window_set_accept_focus;
	void function(GdkWindow* window, gboolean focusOnMap) c_gdk_window_set_focus_on_map;
	void function(GdkWindow* window, GdkFilterFunc funct, gpointer data) c_gdk_window_add_filter;
	void function(GdkWindow* window, GdkFilterFunc funct, gpointer data) c_gdk_window_remove_filter;
	void function(GdkWindow* window, GdkBitmap* mask, gint x, gint y) c_gdk_window_shape_combine_mask;
	void function(GdkWindow* window, GdkRegion* shapeRegion, gint offsetX, gint offsetY) c_gdk_window_shape_combine_region;
	void function(GdkWindow* window) c_gdk_window_set_child_shapes;
	void function(GdkWindow* window) c_gdk_window_merge_child_shapes;
	void function(GdkWindow* window, GdkBitmap* mask, gint x, gint y) c_gdk_window_input_shape_combine_mask;
	void function(GdkWindow* window, GdkRegion* shapeRegion, gint offsetX, gint offsetY) c_gdk_window_input_shape_combine_region;
	void function(GdkWindow* window) c_gdk_window_set_child_input_shapes;
	void function(GdkWindow* window) c_gdk_window_merge_child_input_shapes;
	gboolean function(GdkWindow* window, gboolean useStatic) c_gdk_window_set_static_gravities;
	void function(GdkWindow* window, gint x, gint y, gint minWidth, gint minHeight, gint maxWidth, gint maxHeight, gint flags) c_gdk_window_set_hints;
	void function(GdkWindow* window, gchar* title) c_gdk_window_set_title;
	void function(GdkWindow* window, GdkColor* color) c_gdk_window_set_background;
	void function(GdkWindow* window, GdkPixmap* pixmap, gboolean parentRelative) c_gdk_window_set_back_pixmap;
	void function(GdkWindow* window, GdkCursor* cursor) c_gdk_window_set_cursor;
	void function(GdkWindow* window, gpointer* data) c_gdk_window_get_user_data;
	void function(GdkWindow* window, gint* x, gint* y, gint* width, gint* height, gint* depth) c_gdk_window_get_geometry;
	void function(GdkWindow* window, GdkGeometry* geometry, GdkWindowHints geomMask) c_gdk_window_set_geometry_hints;
	void function(GdkWindow* window, GList* pixbufs) c_gdk_window_set_icon_list;
	void function(GdkWindow* window, gboolean modal) c_gdk_window_set_modal_hint;
	void function(GdkWindow* window, GdkWindowTypeHint hint) c_gdk_window_set_type_hint;
	GdkWindowTypeHint function(GdkWindow* window) c_gdk_window_get_type_hint;
	void function(GdkWindow* window, gboolean skipsTaskbar) c_gdk_window_set_skip_taskbar_hint;
	void function(GdkWindow* window, gboolean skipsPager) c_gdk_window_set_skip_pager_hint;
	void function(GdkWindow* window, gboolean urgent) c_gdk_window_set_urgency_hint;
	void function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_position;
	void function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_root_origin;
	void function(GdkWindow* window, GdkRectangle* rect) c_gdk_window_get_frame_extents;
	gint function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_origin;
	gboolean function(GdkWindow* window, gint* x, gint* y) c_gdk_window_get_deskrelative_origin;
	GdkWindow* function(GdkWindow* window, gint* x, gint* y, GdkModifierType* mask) c_gdk_window_get_pointer;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_parent;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_toplevel;
	GList* function(GdkWindow* window) c_gdk_window_get_children;
	GList* function(GdkWindow* window) c_gdk_window_peek_children;
	GdkEventMask function(GdkWindow* window) c_gdk_window_get_events;
	void function(GdkWindow* window, GdkEventMask eventMask) c_gdk_window_set_events;
	void function(GdkWindow* window, GdkWindow* iconWindow, GdkPixmap* pixmap, GdkBitmap* mask) c_gdk_window_set_icon;
	void function(GdkWindow* window, gchar* name) c_gdk_window_set_icon_name;
	void function(GdkWindow* window, GdkWindow* parent) c_gdk_window_set_transient_for;
	void function(GdkWindow* window, gchar* role) c_gdk_window_set_role;
	void function(GdkWindow* window, gchar* startupId) c_gdk_window_set_startup_id;
	void function(GdkWindow* window, GdkWindow* leader) c_gdk_window_set_group;
	GdkWindow* function(GdkWindow* window) c_gdk_window_get_group;
	void function(GdkWindow* window, GdkWMDecoration decorations) c_gdk_window_set_decorations;
	gboolean function(GdkWindow* window, GdkWMDecoration* decorations) c_gdk_window_get_decorations;
	void function(GdkWindow* window, GdkWMFunction functions) c_gdk_window_set_functions;
	GList* function() c_gdk_window_get_toplevels;
	GdkWindow* function() c_gdk_get_default_root_window;
	GdkPointerHooks* function(GdkPointerHooks* newHooks) c_gdk_set_pointer_hooks;
	void function(GdkWindow* window, GdkDrawable* drawable, gint srcX, gint srcY, gint destX, gint destY, gint width, gint height) c_gdk_window_redirect_to_drawable;
	void function(GdkWindow* window) c_gdk_window_remove_redirection;
	
	// gdk.Event
	
	gboolean function() c_gdk_events_pending;
	GdkEvent* function() c_gdk_event_peek;
	GdkEvent* function() c_gdk_event_get;
	GdkEvent* function(GdkWindow* window) c_gdk_event_get_graphics_expose;
	void function(GdkEvent* event) c_gdk_event_put;
	GdkEvent* function(GdkEventType type) c_gdk_event_new;
	GdkEvent* function(GdkEvent* event) c_gdk_event_copy;
	void function(GdkEvent* event) c_gdk_event_free;
	guint32 function(GdkEvent* event) c_gdk_event_get_time;
	gboolean function(GdkEvent* event, GdkModifierType* state) c_gdk_event_get_state;
	gboolean function(GdkEvent* event, GdkAxisUse axisUse, gdouble* value) c_gdk_event_get_axis;
	gboolean function(GdkEvent* event, gdouble* xWin, gdouble* yWin) c_gdk_event_get_coords;
	gboolean function(GdkEvent* event, gdouble* xRoot, gdouble* yRoot) c_gdk_event_get_root_coords;
	void function(GdkEventMotion* event) c_gdk_event_request_motions;
	void function(GdkEventFunc func, gpointer data, GDestroyNotify notify) c_gdk_event_handler_set;
	gboolean function(GdkEvent* event, GdkNativeWindow winid) c_gdk_event_send_client_message;
	gboolean function(GdkDisplay* display, GdkEvent* event, GdkNativeWindow winid) c_gdk_event_send_client_message_for_display;
	void function(GdkEvent* event) c_gdk_event_send_clientmessage_toall;
	void function(GdkAtom messageType, GdkFilterFunc func, gpointer data) c_gdk_add_client_message_filter;
	gboolean function() c_gdk_get_show_events;
	void function(gboolean showEvents) c_gdk_set_show_events;
	void function(GdkEvent* event, GdkScreen* screen) c_gdk_event_set_screen;
	GdkScreen* function(GdkEvent* event) c_gdk_event_get_screen;
	gboolean function(gchar* name, GValue* value) c_gdk_setting_get;
	
	// gdk.
	
	
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
	gboolean function(GdkWindow* requestor, guchar** data, GdkAtom* propType, gint* propFormat) c_gdk_selection_property_get;
	void function(GdkNativeWindow requestor, GdkAtom selection, GdkAtom target, GdkAtom property, guint32 time) c_gdk_selection_send_notify;
	void function(GdkDisplay* display, GdkNativeWindow requestor, GdkAtom selection, GdkAtom target, GdkAtom property, guint32 time) c_gdk_selection_send_notify_for_display;
	
	// gdk.DragContext
	
	GdkAtom function(GdkDragContext* context) c_gdk_drag_get_selection;
	void function(GdkDragContext* context, guint32 time) c_gdk_drag_abort;
	void function(GdkDragContext* context, gboolean ok, guint32 time) c_gdk_drop_reply;
	GdkDragContext* function() c_gdk_drag_context_new;
	void function(GdkDragContext* context, guint32 time) c_gdk_drag_drop;
	void function(GdkDragContext* context, GdkWindow* dragWindow, gint xRoot, gint yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol) c_gdk_drag_find_window;
	void function(GdkDragContext* context, GdkWindow* dragWindow, GdkScreen* screen, gint xRoot, gint yRoot, GdkWindow** destWindow, GdkDragProtocol* protocol) c_gdk_drag_find_window_for_screen;
	void function(GdkDragContext* context) c_gdk_drag_context_ref;
	GdkDragContext* function(GdkWindow* window, GList* targets) c_gdk_drag_begin;
	gboolean function(GdkDragContext* context, GdkWindow* destWindow, GdkDragProtocol protocol, gint xRoot, gint yRoot, GdkDragAction suggestedAction, GdkDragAction possibleActions, guint32 time) c_gdk_drag_motion;
	void function(GdkDragContext* context, gboolean success, guint32 time) c_gdk_drop_finish;
	GdkNativeWindow function(GdkNativeWindow xid, GdkDragProtocol* protocol) c_gdk_drag_get_protocol;
	GdkNativeWindow function(GdkDisplay* display, GdkNativeWindow xid, GdkDragProtocol* protocol) c_gdk_drag_get_protocol_for_display;
	void function(GdkDragContext* context) c_gdk_drag_context_unref;
	void function(GdkDragContext* context, GdkDragAction action, guint32 time) c_gdk_drag_status;
	gboolean function(GdkDragContext* context) c_gdk_drag_drop_succeeded;
	
	// gdk.
	
	void function() c_gdk_threads_init;
	void function() c_gdk_threads_enter;
	void function() c_gdk_threads_leave;
	void function(GCallback enterFn, GCallback leaveFn) c_gdk_threads_set_lock_functions;
	guint function(GSourceFunc funct, gpointer data) c_gdk_threads_add_idle;
	guint function(gint priority, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_gdk_threads_add_idle_full;
	guint function(guint interval, GSourceFunc funct, gpointer data) c_gdk_threads_add_timeout;
	guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_gdk_threads_add_timeout_full;
	guint function(guint interval, GSourceFunc funct, gpointer data) c_gdk_threads_add_timeout_seconds;
	guint function(gint priority, guint interval, GSourceFunc funct, gpointer data, GDestroyNotify notify) c_gdk_threads_add_timeout_seconds_full;
	
	// gdk.Input
	
	gint function(gint source, GdkInputCondition condition, GdkInputFunction funct, gpointer data, GDestroyNotify destroy) c_gdk_input_add_full;
	gint function(gint source, GdkInputCondition condition, GdkInputFunction funct, gpointer data) c_gdk_input_add;
	void function(gint tag) c_gdk_input_remove;
	
	// gdk.Device
	
	GList* function() c_gdk_devices_list;
	void function(GdkDevice* device, GdkInputSource source) c_gdk_device_set_source;
	gboolean function(GdkDevice* device, GdkInputMode mode) c_gdk_device_set_mode;
	void function(GdkDevice* device, guint index, guint keyval, GdkModifierType modifiers) c_gdk_device_set_key;
	void function(GdkDevice* device, guint index, GdkAxisUse use) c_gdk_device_set_axis_use;
	GdkDevice* function() c_gdk_device_get_core_pointer;
	void function(GdkDevice* device, GdkWindow* window, gdouble* axes, GdkModifierType* mask) c_gdk_device_get_state;
	gboolean function(GdkDevice* device, GdkWindow* window, guint32 start, guint32 stop, GdkTimeCoord*** events, gint* nEvents) c_gdk_device_get_history;
	void function(GdkTimeCoord** events, gint nEvents) c_gdk_device_free_history;
	gboolean function(GdkDevice* device, gdouble* axes, GdkAxisUse use, gdouble* value) c_gdk_device_get_axis;
	void function(GdkWindow* window, gint mask, GdkExtensionMode mode) c_gdk_input_set_extension_events;
	
	// gdk.X11
	
	GdkWindow* function(GdkNativeWindow anid) c_gdk_window_foreign_new;
	gpointer function(XID xid) c_gdk_xid_table_lookup;
	GdkWindow* function(GdkNativeWindow anid) c_gdk_window_lookup;
	GdkPixmap* function(GdkNativeWindow anid) c_gdk_pixmap_lookup;
	guint32 function(GdkWindow* window) c_gdk_x11_get_server_time;
	XID function(GdkScreen* screen, gint monitorNum) c_gdk_x11_screen_get_monitor_output;
	void function(GdkWindow* window, guint32 timestamp) c_gdk_x11_window_set_user_time;
	void function(GdkWindow* window) c_gdk_x11_window_move_to_current_desktop;
	void function(GdkDisplay* display, char* messageType, ... ) c_gdk_x11_display_broadcast_startup_message;
	gchar* function(GdkDisplay* display) c_gdk_x11_display_get_startup_notification_id;
	XID function(GdkDrawable* drawable) c_gdk_x11_drawable_get_xid;
	char* function(GdkFont* font) c_gdk_x11_font_get_name;
	gpointer function(GdkFont* font) c_gdk_x11_font_get_xfont;
	gint function() c_gdk_x11_get_default_screen;
	void function() c_gdk_x11_grab_server;
	void function() c_gdk_x11_ungrab_server;
	
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
	
	cairo_t* function(GdkDrawable* drawable) c_gdk_cairo_create;
	void function(cairo_t* cr, GdkColor* color) c_gdk_cairo_set_source_color;
	void function(cairo_t* cr, GdkPixbuf* pixbuf, double pixbufX, double pixbufY) c_gdk_cairo_set_source_pixbuf;
	void function(cairo_t* cr, GdkPixmap* pixmap, double pixmapX, double pixmapY) c_gdk_cairo_set_source_pixmap;
	void function(cairo_t* cr, GdkRectangle* rectangle) c_gdk_cairo_rectangle;
	void function(cairo_t* cr, GdkRegion* region) c_gdk_cairo_region;
}

// gdk.Gdk

alias c_gdk_init  gdk_init;
alias c_gdk_init_check  gdk_init_check;
alias c_gdk_parse_args  gdk_parse_args;
alias c_gdk_get_display_arg_name  gdk_get_display_arg_name;
alias c_gdk_set_locale  gdk_set_locale;
alias c_gdk_set_sm_client_id  gdk_set_sm_client_id;
alias c_gdk_exit  gdk_exit;
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
alias c_gdk_get_use_xshm  gdk_get_use_xshm;
alias c_gdk_set_use_xshm  gdk_set_use_xshm;
alias c_gdk_error_trap_push  gdk_error_trap_push;
alias c_gdk_error_trap_pop  gdk_error_trap_pop;

// gdk.Display

alias c_gdk_display_open  gdk_display_open;
alias c_gdk_display_get_default  gdk_display_get_default;
alias c_gdk_display_get_name  gdk_display_get_name;
alias c_gdk_display_get_n_screens  gdk_display_get_n_screens;
alias c_gdk_display_get_screen  gdk_display_get_screen;
alias c_gdk_display_get_default_screen  gdk_display_get_default_screen;
alias c_gdk_display_pointer_ungrab  gdk_display_pointer_ungrab;
alias c_gdk_display_keyboard_ungrab  gdk_display_keyboard_ungrab;
alias c_gdk_display_pointer_is_grabbed  gdk_display_pointer_is_grabbed;
alias c_gdk_display_beep  gdk_display_beep;
alias c_gdk_display_sync  gdk_display_sync;
alias c_gdk_display_flush  gdk_display_flush;
alias c_gdk_display_close  gdk_display_close;
alias c_gdk_display_list_devices  gdk_display_list_devices;
alias c_gdk_display_get_event  gdk_display_get_event;
alias c_gdk_display_peek_event  gdk_display_peek_event;
alias c_gdk_display_put_event  gdk_display_put_event;
alias c_gdk_display_add_client_message_filter  gdk_display_add_client_message_filter;
alias c_gdk_display_set_double_click_time  gdk_display_set_double_click_time;
alias c_gdk_display_set_double_click_distance  gdk_display_set_double_click_distance;
alias c_gdk_display_get_pointer  gdk_display_get_pointer;
alias c_gdk_display_get_window_at_pointer  gdk_display_get_window_at_pointer;
alias c_gdk_display_set_pointer_hooks  gdk_display_set_pointer_hooks;
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

// gdk.DisplayManager

alias c_gdk_display_manager_get  gdk_display_manager_get;
alias c_gdk_display_manager_get_default_display  gdk_display_manager_get_default_display;
alias c_gdk_display_manager_set_default_display  gdk_display_manager_set_default_display;
alias c_gdk_display_manager_list_displays  gdk_display_manager_list_displays;
alias c_gdk_display_get_core_pointer  gdk_display_get_core_pointer;

// gdk.Screen

alias c_gdk_screen_get_default  gdk_screen_get_default;
alias c_gdk_screen_get_default_colormap  gdk_screen_get_default_colormap;
alias c_gdk_screen_set_default_colormap  gdk_screen_set_default_colormap;
alias c_gdk_screen_get_system_colormap  gdk_screen_get_system_colormap;
alias c_gdk_screen_get_system_visual  gdk_screen_get_system_visual;
alias c_gdk_screen_get_rgb_colormap  gdk_screen_get_rgb_colormap;
alias c_gdk_screen_get_rgb_visual  gdk_screen_get_rgb_visual;
alias c_gdk_screen_get_rgba_colormap  gdk_screen_get_rgba_colormap;
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
alias c_gdk_screen_get_monitor_geometry  gdk_screen_get_monitor_geometry;
alias c_gdk_screen_get_monitor_at_point  gdk_screen_get_monitor_at_point;
alias c_gdk_screen_get_monitor_at_window  gdk_screen_get_monitor_at_window;
alias c_gdk_screen_get_monitor_height_mm  gdk_screen_get_monitor_height_mm;
alias c_gdk_screen_get_monitor_width_mm  gdk_screen_get_monitor_width_mm;
alias c_gdk_screen_get_monitor_plug_name  gdk_screen_get_monitor_plug_name;
alias c_gdk_screen_broadcast_client_message  gdk_screen_broadcast_client_message;
alias c_gdk_screen_get_setting  gdk_screen_get_setting;
alias c_gdk_screen_get_font_options  gdk_screen_get_font_options;
alias c_gdk_screen_set_font_options  gdk_screen_set_font_options;
alias c_gdk_screen_get_resolution  gdk_screen_get_resolution;
alias c_gdk_screen_set_resolution  gdk_screen_set_resolution;
alias c_gdk_screen_get_active_window  gdk_screen_get_active_window;
alias c_gdk_screen_get_window_stack  gdk_screen_get_window_stack;
alias c_gdk_spawn_on_screen  gdk_spawn_on_screen;
alias c_gdk_spawn_on_screen_with_pipes  gdk_spawn_on_screen_with_pipes;
alias c_gdk_spawn_command_line_on_screen  gdk_spawn_command_line_on_screen;

// gdk.Rectangle

alias c_gdk_rectangle_intersect  gdk_rectangle_intersect;
alias c_gdk_rectangle_union  gdk_rectangle_union;

// gdk.Region

alias c_gdk_region_new  gdk_region_new;
alias c_gdk_region_polygon  gdk_region_polygon;
alias c_gdk_region_copy  gdk_region_copy;
alias c_gdk_region_rectangle  gdk_region_rectangle;
alias c_gdk_region_destroy  gdk_region_destroy;
alias c_gdk_region_get_clipbox  gdk_region_get_clipbox;
alias c_gdk_region_get_rectangles  gdk_region_get_rectangles;
alias c_gdk_region_empty  gdk_region_empty;
alias c_gdk_region_equal  gdk_region_equal;
alias c_gdk_region_point_in  gdk_region_point_in;
alias c_gdk_region_rect_in  gdk_region_rect_in;
alias c_gdk_region_offset  gdk_region_offset;
alias c_gdk_region_shrink  gdk_region_shrink;
alias c_gdk_region_union_with_rect  gdk_region_union_with_rect;
alias c_gdk_region_intersect  gdk_region_intersect;
alias c_gdk_region_union  gdk_region_union;
alias c_gdk_region_subtract  gdk_region_subtract;
alias c_gdk_region_xor  gdk_region_xor;
alias c_gdk_region_spans_intersect_foreach  gdk_region_spans_intersect_foreach;

// gdk.GC

alias c_gdk_gc_new  gdk_gc_new;
alias c_gdk_gc_new_with_values  gdk_gc_new_with_values;
alias c_gdk_gc_get_screen  gdk_gc_get_screen;
alias c_gdk_gc_ref  gdk_gc_ref;
alias c_gdk_gc_unref  gdk_gc_unref;
alias c_gdk_gc_set_values  gdk_gc_set_values;
alias c_gdk_gc_get_values  gdk_gc_get_values;
alias c_gdk_gc_set_foreground  gdk_gc_set_foreground;
alias c_gdk_gc_set_background  gdk_gc_set_background;
alias c_gdk_gc_set_rgb_fg_color  gdk_gc_set_rgb_fg_color;
alias c_gdk_gc_set_rgb_bg_color  gdk_gc_set_rgb_bg_color;
alias c_gdk_gc_set_font  gdk_gc_set_font;
alias c_gdk_gc_set_function  gdk_gc_set_function;
alias c_gdk_gc_set_fill  gdk_gc_set_fill;
alias c_gdk_gc_set_tile  gdk_gc_set_tile;
alias c_gdk_gc_set_stipple  gdk_gc_set_stipple;
alias c_gdk_gc_set_ts_origin  gdk_gc_set_ts_origin;
alias c_gdk_gc_set_clip_origin  gdk_gc_set_clip_origin;
alias c_gdk_gc_set_clip_mask  gdk_gc_set_clip_mask;
alias c_gdk_gc_set_clip_rectangle  gdk_gc_set_clip_rectangle;
alias c_gdk_gc_set_clip_region  gdk_gc_set_clip_region;
alias c_gdk_gc_set_subwindow  gdk_gc_set_subwindow;
alias c_gdk_gc_set_exposures  gdk_gc_set_exposures;
alias c_gdk_gc_set_line_attributes  gdk_gc_set_line_attributes;
alias c_gdk_gc_set_dashes  gdk_gc_set_dashes;
alias c_gdk_gc_copy  gdk_gc_copy;
alias c_gdk_gc_set_colormap  gdk_gc_set_colormap;
alias c_gdk_gc_get_colormap  gdk_gc_get_colormap;
alias c_gdk_gc_offset  gdk_gc_offset;

// gdk.Drawable

alias c_gdk_drawable_ref  gdk_drawable_ref;
alias c_gdk_drawable_unref  gdk_drawable_unref;
alias c_gdk_drawable_set_data  gdk_drawable_set_data;
alias c_gdk_drawable_get_data  gdk_drawable_get_data;
alias c_gdk_drawable_get_display  gdk_drawable_get_display;
alias c_gdk_drawable_get_screen  gdk_drawable_get_screen;
alias c_gdk_drawable_get_visual  gdk_drawable_get_visual;
alias c_gdk_drawable_set_colormap  gdk_drawable_set_colormap;
alias c_gdk_drawable_get_colormap  gdk_drawable_get_colormap;
alias c_gdk_drawable_get_depth  gdk_drawable_get_depth;
alias c_gdk_drawable_get_size  gdk_drawable_get_size;
alias c_gdk_drawable_get_clip_region  gdk_drawable_get_clip_region;
alias c_gdk_drawable_get_visible_region  gdk_drawable_get_visible_region;
alias c_gdk_draw_point  gdk_draw_point;
alias c_gdk_draw_points  gdk_draw_points;
alias c_gdk_draw_line  gdk_draw_line;
alias c_gdk_draw_lines  gdk_draw_lines;
alias c_gdk_draw_pixbuf  gdk_draw_pixbuf;
alias c_gdk_draw_segments  gdk_draw_segments;
alias c_gdk_draw_rectangle  gdk_draw_rectangle;
alias c_gdk_draw_arc  gdk_draw_arc;
alias c_gdk_draw_polygon  gdk_draw_polygon;
alias c_gdk_draw_trapezoids  gdk_draw_trapezoids;
alias c_gdk_draw_glyphs  gdk_draw_glyphs;
alias c_gdk_draw_glyphs_transformed  gdk_draw_glyphs_transformed;
alias c_gdk_draw_layout_line  gdk_draw_layout_line;
alias c_gdk_draw_layout_line_with_colors  gdk_draw_layout_line_with_colors;
alias c_gdk_draw_layout  gdk_draw_layout;
alias c_gdk_draw_layout_with_colors  gdk_draw_layout_with_colors;
alias c_gdk_draw_string  gdk_draw_string;
alias c_gdk_draw_text  gdk_draw_text;
alias c_gdk_draw_text_wc  gdk_draw_text_wc;
alias c_gdk_draw_drawable  gdk_draw_drawable;
alias c_gdk_draw_image  gdk_draw_image;
alias c_gdk_drawable_get_image  gdk_drawable_get_image;
alias c_gdk_drawable_copy_to_image  gdk_drawable_copy_to_image;

// gdk.Pixmap

alias c_gdk_pixmap_new  gdk_pixmap_new;
alias c_gdk_pixmap_create_from_data  gdk_pixmap_create_from_data;
alias c_gdk_pixmap_create_from_xpm  gdk_pixmap_create_from_xpm;
alias c_gdk_pixmap_colormap_create_from_xpm  gdk_pixmap_colormap_create_from_xpm;
alias c_gdk_pixmap_create_from_xpm_d  gdk_pixmap_create_from_xpm_d;
alias c_gdk_pixmap_colormap_create_from_xpm_d  gdk_pixmap_colormap_create_from_xpm_d;

// gdk.Bitmap

alias c_gdk_bitmap_create_from_data  gdk_bitmap_create_from_data;

// gdk.RGB

alias c_gdk_rgb_init  gdk_rgb_init;
alias c_gdk_draw_rgb_image  gdk_draw_rgb_image;
alias c_gdk_draw_rgb_image_dithalign  gdk_draw_rgb_image_dithalign;
alias c_gdk_draw_indexed_image  gdk_draw_indexed_image;
alias c_gdk_draw_gray_image  gdk_draw_gray_image;
alias c_gdk_draw_rgb_32_image  gdk_draw_rgb_32_image;
alias c_gdk_draw_rgb_32_image_dithalign  gdk_draw_rgb_32_image_dithalign;
alias c_gdk_rgb_gc_set_foreground  gdk_rgb_gc_set_foreground;
alias c_gdk_rgb_gc_set_background  gdk_rgb_gc_set_background;
alias c_gdk_rgb_xpixel_from_rgb  gdk_rgb_xpixel_from_rgb;
alias c_gdk_rgb_find_color  gdk_rgb_find_color;
alias c_gdk_rgb_set_install  gdk_rgb_set_install;
alias c_gdk_rgb_set_min_colors  gdk_rgb_set_min_colors;
alias c_gdk_rgb_get_visual  gdk_rgb_get_visual;
alias c_gdk_rgb_get_colormap  gdk_rgb_get_colormap;
alias c_gdk_rgb_ditherable  gdk_rgb_ditherable;
alias c_gdk_rgb_colormap_ditherable  gdk_rgb_colormap_ditherable;
alias c_gdk_rgb_set_verbose  gdk_rgb_set_verbose;

// gdk.RgbCmap

alias c_gdk_rgb_cmap_new  gdk_rgb_cmap_new;
alias c_gdk_rgb_cmap_free  gdk_rgb_cmap_free;

// gdk.ImageGdk

alias c_gdk_image_new  gdk_image_new;
alias c_gdk_image_new_bitmap  gdk_image_new_bitmap;
alias c_gdk_image_get  gdk_image_get;
alias c_gdk_image_ref  gdk_image_ref;
alias c_gdk_image_unref  gdk_image_unref;
alias c_gdk_image_get_colormap  gdk_image_get_colormap;
alias c_gdk_image_set_colormap  gdk_image_set_colormap;
alias c_gdk_image_put_pixel  gdk_image_put_pixel;
alias c_gdk_image_get_pixel  gdk_image_get_pixel;

// gdk.Pixbuf

alias c_gdk_pixbuf_render_threshold_alpha  gdk_pixbuf_render_threshold_alpha;
alias c_gdk_pixbuf_render_to_drawable  gdk_pixbuf_render_to_drawable;
alias c_gdk_pixbuf_render_to_drawable_alpha  gdk_pixbuf_render_to_drawable_alpha;
alias c_gdk_pixbuf_render_pixmap_and_mask  gdk_pixbuf_render_pixmap_and_mask;
alias c_gdk_pixbuf_render_pixmap_and_mask_for_colormap  gdk_pixbuf_render_pixmap_and_mask_for_colormap;
alias c_gdk_pixbuf_get_from_drawable  gdk_pixbuf_get_from_drawable;
alias c_gdk_pixbuf_get_from_image  gdk_pixbuf_get_from_image;
alias c_gdk_pixbuf_get_type  gdk_pixbuf_get_type;
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
alias c_gdk_pixbuf_get_width  gdk_pixbuf_get_width;
alias c_gdk_pixbuf_get_height  gdk_pixbuf_get_height;
alias c_gdk_pixbuf_get_rowstride  gdk_pixbuf_get_rowstride;
alias c_gdk_pixbuf_get_option  gdk_pixbuf_get_option;
alias c_gdk_pixbuf_new_from_file  gdk_pixbuf_new_from_file;
alias c_gdk_pixbuf_new_from_file_at_size  gdk_pixbuf_new_from_file_at_size;
alias c_gdk_pixbuf_new_from_file_at_scale  gdk_pixbuf_new_from_file_at_scale;
alias c_gdk_pixbuf_new_from_stream  gdk_pixbuf_new_from_stream;
alias c_gdk_pixbuf_new_from_stream_at_scale  gdk_pixbuf_new_from_stream_at_scale;
alias c_gdk_pixbuf_savev  gdk_pixbuf_savev;
alias c_gdk_pixbuf_save  gdk_pixbuf_save;
alias c_gdk_pixbuf_save_to_callback  gdk_pixbuf_save_to_callback;
alias c_gdk_pixbuf_save_to_callbackv  gdk_pixbuf_save_to_callbackv;
alias c_gdk_pixbuf_save_to_buffer  gdk_pixbuf_save_to_buffer;
alias c_gdk_pixbuf_save_to_bufferv  gdk_pixbuf_save_to_bufferv;
alias c_gdk_pixbuf_save_to_stream  gdk_pixbuf_save_to_stream;
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

// gdk.Colormap

alias c_gdk_colormap_new  gdk_colormap_new;
alias c_gdk_colormap_ref  gdk_colormap_ref;
alias c_gdk_colormap_unref  gdk_colormap_unref;
alias c_gdk_colormap_get_system  gdk_colormap_get_system;
alias c_gdk_colormap_get_system_size  gdk_colormap_get_system_size;
alias c_gdk_colormap_change  gdk_colormap_change;
alias c_gdk_colormap_alloc_colors  gdk_colormap_alloc_colors;
alias c_gdk_colormap_alloc_color  gdk_colormap_alloc_color;
alias c_gdk_colormap_free_colors  gdk_colormap_free_colors;
alias c_gdk_colormap_query_color  gdk_colormap_query_color;
alias c_gdk_colormap_get_visual  gdk_colormap_get_visual;
alias c_gdk_colormap_get_screen  gdk_colormap_get_screen;
alias c_gdk_colors_store  gdk_colors_store;
alias c_gdk_colors_alloc  gdk_colors_alloc;
alias c_gdk_colors_free  gdk_colors_free;

// gdk.Color

alias c_gdk_color_copy  gdk_color_copy;
alias c_gdk_color_free  gdk_color_free;
alias c_gdk_color_white  gdk_color_white;
alias c_gdk_color_black  gdk_color_black;
alias c_gdk_color_parse  gdk_color_parse;
alias c_gdk_color_alloc  gdk_color_alloc;
alias c_gdk_color_change  gdk_color_change;
alias c_gdk_color_equal  gdk_color_equal;
alias c_gdk_color_hash  gdk_color_hash;
alias c_gdk_color_to_string  gdk_color_to_string;

// gdk.Visual

alias c_gdk_query_depths  gdk_query_depths;
alias c_gdk_query_visual_types  gdk_query_visual_types;
alias c_gdk_list_visuals  gdk_list_visuals;
alias c_gdk_visual_get_best_depth  gdk_visual_get_best_depth;
alias c_gdk_visual_get_best_type  gdk_visual_get_best_type;
alias c_gdk_visual_get_system  gdk_visual_get_system;
alias c_gdk_visual_get_best  gdk_visual_get_best;
alias c_gdk_visual_get_best_with_depth  gdk_visual_get_best_with_depth;
alias c_gdk_visual_get_best_with_type  gdk_visual_get_best_with_type;
alias c_gdk_visual_get_best_with_both  gdk_visual_get_best_with_both;
alias c_gdk_visual_get_screen  gdk_visual_get_screen;

// gdk.Font

alias c_gdk_font_load  gdk_font_load;
alias c_gdk_font_load_for_display  gdk_font_load_for_display;
alias c_gdk_fontset_load  gdk_fontset_load;
alias c_gdk_fontset_load_for_display  gdk_fontset_load_for_display;
alias c_gdk_font_from_description  gdk_font_from_description;
alias c_gdk_font_from_description_for_display  gdk_font_from_description_for_display;
alias c_gdk_font_get_display  gdk_font_get_display;
alias c_gdk_font_ref  gdk_font_ref;
alias c_gdk_font_unref  gdk_font_unref;
alias c_gdk_font_id  gdk_font_id;
alias c_gdk_font_equal  gdk_font_equal;
alias c_gdk_string_extents  gdk_string_extents;
alias c_gdk_text_extents  gdk_text_extents;
alias c_gdk_text_extents_wc  gdk_text_extents_wc;
alias c_gdk_string_width  gdk_string_width;
alias c_gdk_text_width  gdk_text_width;
alias c_gdk_text_width_wc  gdk_text_width_wc;
alias c_gdk_char_width  gdk_char_width;
alias c_gdk_char_width_wc  gdk_char_width_wc;
alias c_gdk_string_measure  gdk_string_measure;
alias c_gdk_text_measure  gdk_text_measure;
alias c_gdk_char_measure  gdk_char_measure;
alias c_gdk_string_height  gdk_string_height;
alias c_gdk_text_height  gdk_text_height;
alias c_gdk_char_height  gdk_char_height;
alias c_gdk_wcstombs  gdk_wcstombs;
alias c_gdk_mbstowcs  gdk_mbstowcs;

// gdk.Cursor

alias c_gdk_cursor_new  gdk_cursor_new;
alias c_gdk_cursor_new_from_pixmap  gdk_cursor_new_from_pixmap;
alias c_gdk_cursor_new_from_pixbuf  gdk_cursor_new_from_pixbuf;
alias c_gdk_cursor_new_from_name  gdk_cursor_new_from_name;
alias c_gdk_cursor_new_for_display  gdk_cursor_new_for_display;
alias c_gdk_cursor_get_display  gdk_cursor_get_display;
alias c_gdk_cursor_get_image  gdk_cursor_get_image;
alias c_gdk_cursor_ref  gdk_cursor_ref;
alias c_gdk_cursor_unref  gdk_cursor_unref;

// gdk.Window

alias c_gdk_window_new  gdk_window_new;
alias c_gdk_window_destroy  gdk_window_destroy;
alias c_gdk_window_get_window_type  gdk_window_get_window_type;
alias c_gdk_window_at_pointer  gdk_window_at_pointer;
alias c_gdk_window_show  gdk_window_show;
alias c_gdk_window_show_unraised  gdk_window_show_unraised;
alias c_gdk_window_hide  gdk_window_hide;
alias c_gdk_window_is_visible  gdk_window_is_visible;
alias c_gdk_window_is_viewable  gdk_window_is_viewable;
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
alias c_gdk_window_move  gdk_window_move;
alias c_gdk_window_resize  gdk_window_resize;
alias c_gdk_window_move_resize  gdk_window_move_resize;
alias c_gdk_window_scroll  gdk_window_scroll;
alias c_gdk_window_move_region  gdk_window_move_region;
alias c_gdk_window_reparent  gdk_window_reparent;
alias c_gdk_window_clear  gdk_window_clear;
alias c_gdk_window_clear_area  gdk_window_clear_area;
alias c_gdk_window_clear_area_e  gdk_window_clear_area_e;
alias c_gdk_window_raise  gdk_window_raise;
alias c_gdk_window_lower  gdk_window_lower;
alias c_gdk_window_focus  gdk_window_focus;
alias c_gdk_window_register_dnd  gdk_window_register_dnd;
alias c_gdk_window_begin_resize_drag  gdk_window_begin_resize_drag;
alias c_gdk_window_begin_move_drag  gdk_window_begin_move_drag;
alias c_gdk_window_constrain_size  gdk_window_constrain_size;
alias c_gdk_window_beep  gdk_window_beep;
alias c_gdk_window_begin_paint_rect  gdk_window_begin_paint_rect;
alias c_gdk_window_begin_paint_region  gdk_window_begin_paint_region;
alias c_gdk_window_end_paint  gdk_window_end_paint;
alias c_gdk_window_invalidate_rect  gdk_window_invalidate_rect;
alias c_gdk_window_invalidate_region  gdk_window_invalidate_region;
alias c_gdk_window_get_update_area  gdk_window_get_update_area;
alias c_gdk_window_freeze_updates  gdk_window_freeze_updates;
alias c_gdk_window_thaw_updates  gdk_window_thaw_updates;
alias c_gdk_window_process_all_updates  gdk_window_process_all_updates;
alias c_gdk_window_process_updates  gdk_window_process_updates;
alias c_gdk_window_set_debug_updates  gdk_window_set_debug_updates;
alias c_gdk_window_get_internal_paint_info  gdk_window_get_internal_paint_info;
alias c_gdk_window_enable_synchronized_configure  gdk_window_enable_synchronized_configure;
alias c_gdk_window_configure_finished  gdk_window_configure_finished;
alias c_gdk_window_set_user_data  gdk_window_set_user_data;
alias c_gdk_window_set_override_redirect  gdk_window_set_override_redirect;
alias c_gdk_window_set_accept_focus  gdk_window_set_accept_focus;
alias c_gdk_window_set_focus_on_map  gdk_window_set_focus_on_map;
alias c_gdk_window_add_filter  gdk_window_add_filter;
alias c_gdk_window_remove_filter  gdk_window_remove_filter;
alias c_gdk_window_shape_combine_mask  gdk_window_shape_combine_mask;
alias c_gdk_window_shape_combine_region  gdk_window_shape_combine_region;
alias c_gdk_window_set_child_shapes  gdk_window_set_child_shapes;
alias c_gdk_window_merge_child_shapes  gdk_window_merge_child_shapes;
alias c_gdk_window_input_shape_combine_mask  gdk_window_input_shape_combine_mask;
alias c_gdk_window_input_shape_combine_region  gdk_window_input_shape_combine_region;
alias c_gdk_window_set_child_input_shapes  gdk_window_set_child_input_shapes;
alias c_gdk_window_merge_child_input_shapes  gdk_window_merge_child_input_shapes;
alias c_gdk_window_set_static_gravities  gdk_window_set_static_gravities;
alias c_gdk_window_set_hints  gdk_window_set_hints;
alias c_gdk_window_set_title  gdk_window_set_title;
alias c_gdk_window_set_background  gdk_window_set_background;
alias c_gdk_window_set_back_pixmap  gdk_window_set_back_pixmap;
alias c_gdk_window_set_cursor  gdk_window_set_cursor;
alias c_gdk_window_get_user_data  gdk_window_get_user_data;
alias c_gdk_window_get_geometry  gdk_window_get_geometry;
alias c_gdk_window_set_geometry_hints  gdk_window_set_geometry_hints;
alias c_gdk_window_set_icon_list  gdk_window_set_icon_list;
alias c_gdk_window_set_modal_hint  gdk_window_set_modal_hint;
alias c_gdk_window_set_type_hint  gdk_window_set_type_hint;
alias c_gdk_window_get_type_hint  gdk_window_get_type_hint;
alias c_gdk_window_set_skip_taskbar_hint  gdk_window_set_skip_taskbar_hint;
alias c_gdk_window_set_skip_pager_hint  gdk_window_set_skip_pager_hint;
alias c_gdk_window_set_urgency_hint  gdk_window_set_urgency_hint;
alias c_gdk_window_get_position  gdk_window_get_position;
alias c_gdk_window_get_root_origin  gdk_window_get_root_origin;
alias c_gdk_window_get_frame_extents  gdk_window_get_frame_extents;
alias c_gdk_window_get_origin  gdk_window_get_origin;
alias c_gdk_window_get_deskrelative_origin  gdk_window_get_deskrelative_origin;
alias c_gdk_window_get_pointer  gdk_window_get_pointer;
alias c_gdk_window_get_parent  gdk_window_get_parent;
alias c_gdk_window_get_toplevel  gdk_window_get_toplevel;
alias c_gdk_window_get_children  gdk_window_get_children;
alias c_gdk_window_peek_children  gdk_window_peek_children;
alias c_gdk_window_get_events  gdk_window_get_events;
alias c_gdk_window_set_events  gdk_window_set_events;
alias c_gdk_window_set_icon  gdk_window_set_icon;
alias c_gdk_window_set_icon_name  gdk_window_set_icon_name;
alias c_gdk_window_set_transient_for  gdk_window_set_transient_for;
alias c_gdk_window_set_role  gdk_window_set_role;
alias c_gdk_window_set_startup_id  gdk_window_set_startup_id;
alias c_gdk_window_set_group  gdk_window_set_group;
alias c_gdk_window_get_group  gdk_window_get_group;
alias c_gdk_window_set_decorations  gdk_window_set_decorations;
alias c_gdk_window_get_decorations  gdk_window_get_decorations;
alias c_gdk_window_set_functions  gdk_window_set_functions;
alias c_gdk_window_get_toplevels  gdk_window_get_toplevels;
alias c_gdk_get_default_root_window  gdk_get_default_root_window;
alias c_gdk_set_pointer_hooks  gdk_set_pointer_hooks;
alias c_gdk_window_redirect_to_drawable  gdk_window_redirect_to_drawable;
alias c_gdk_window_remove_redirection  gdk_window_remove_redirection;

// gdk.Event

alias c_gdk_events_pending  gdk_events_pending;
alias c_gdk_event_peek  gdk_event_peek;
alias c_gdk_event_get  gdk_event_get;
alias c_gdk_event_get_graphics_expose  gdk_event_get_graphics_expose;
alias c_gdk_event_put  gdk_event_put;
alias c_gdk_event_new  gdk_event_new;
alias c_gdk_event_copy  gdk_event_copy;
alias c_gdk_event_free  gdk_event_free;
alias c_gdk_event_get_time  gdk_event_get_time;
alias c_gdk_event_get_state  gdk_event_get_state;
alias c_gdk_event_get_axis  gdk_event_get_axis;
alias c_gdk_event_get_coords  gdk_event_get_coords;
alias c_gdk_event_get_root_coords  gdk_event_get_root_coords;
alias c_gdk_event_request_motions  gdk_event_request_motions;
alias c_gdk_event_handler_set  gdk_event_handler_set;
alias c_gdk_event_send_client_message  gdk_event_send_client_message;
alias c_gdk_event_send_client_message_for_display  gdk_event_send_client_message_for_display;
alias c_gdk_event_send_clientmessage_toall  gdk_event_send_clientmessage_toall;
alias c_gdk_add_client_message_filter  gdk_add_client_message_filter;
alias c_gdk_get_show_events  gdk_get_show_events;
alias c_gdk_set_show_events  gdk_set_show_events;
alias c_gdk_event_set_screen  gdk_event_set_screen;
alias c_gdk_event_get_screen  gdk_event_get_screen;
alias c_gdk_setting_get  gdk_setting_get;

// gdk.


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
alias c_gdk_drag_context_new  gdk_drag_context_new;
alias c_gdk_drag_drop  gdk_drag_drop;
alias c_gdk_drag_find_window  gdk_drag_find_window;
alias c_gdk_drag_find_window_for_screen  gdk_drag_find_window_for_screen;
alias c_gdk_drag_context_ref  gdk_drag_context_ref;
alias c_gdk_drag_begin  gdk_drag_begin;
alias c_gdk_drag_motion  gdk_drag_motion;
alias c_gdk_drop_finish  gdk_drop_finish;
alias c_gdk_drag_get_protocol  gdk_drag_get_protocol;
alias c_gdk_drag_get_protocol_for_display  gdk_drag_get_protocol_for_display;
alias c_gdk_drag_context_unref  gdk_drag_context_unref;
alias c_gdk_drag_status  gdk_drag_status;
alias c_gdk_drag_drop_succeeded  gdk_drag_drop_succeeded;

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

// gdk.Input

alias c_gdk_input_add_full  gdk_input_add_full;
alias c_gdk_input_add  gdk_input_add;
alias c_gdk_input_remove  gdk_input_remove;

// gdk.Device

alias c_gdk_devices_list  gdk_devices_list;
alias c_gdk_device_set_source  gdk_device_set_source;
alias c_gdk_device_set_mode  gdk_device_set_mode;
alias c_gdk_device_set_key  gdk_device_set_key;
alias c_gdk_device_set_axis_use  gdk_device_set_axis_use;
alias c_gdk_device_get_core_pointer  gdk_device_get_core_pointer;
alias c_gdk_device_get_state  gdk_device_get_state;
alias c_gdk_device_get_history  gdk_device_get_history;
alias c_gdk_device_free_history  gdk_device_free_history;
alias c_gdk_device_get_axis  gdk_device_get_axis;
alias c_gdk_input_set_extension_events  gdk_input_set_extension_events;

// gdk.X11

alias c_gdk_window_foreign_new  gdk_window_foreign_new;
alias c_gdk_xid_table_lookup  gdk_xid_table_lookup;
alias c_gdk_window_lookup  gdk_window_lookup;
alias c_gdk_pixmap_lookup  gdk_pixmap_lookup;
alias c_gdk_x11_get_server_time  gdk_x11_get_server_time;
alias c_gdk_x11_screen_get_monitor_output  gdk_x11_screen_get_monitor_output;
alias c_gdk_x11_window_set_user_time  gdk_x11_window_set_user_time;
alias c_gdk_x11_window_move_to_current_desktop  gdk_x11_window_move_to_current_desktop;
alias c_gdk_x11_display_broadcast_startup_message  gdk_x11_display_broadcast_startup_message;
alias c_gdk_x11_display_get_startup_notification_id  gdk_x11_display_get_startup_notification_id;
alias c_gdk_x11_drawable_get_xid  gdk_x11_drawable_get_xid;
alias c_gdk_x11_font_get_name  gdk_x11_font_get_name;
alias c_gdk_x11_font_get_xfont  gdk_x11_font_get_xfont;
alias c_gdk_x11_get_default_screen  gdk_x11_get_default_screen;
alias c_gdk_x11_grab_server  gdk_x11_grab_server;
alias c_gdk_x11_ungrab_server  gdk_x11_ungrab_server;

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

alias c_gdk_cairo_create  gdk_cairo_create;
alias c_gdk_cairo_set_source_color  gdk_cairo_set_source_color;
alias c_gdk_cairo_set_source_pixbuf  gdk_cairo_set_source_pixbuf;
alias c_gdk_cairo_set_source_pixmap  gdk_cairo_set_source_pixmap;
alias c_gdk_cairo_rectangle  gdk_cairo_rectangle;
alias c_gdk_cairo_region  gdk_cairo_region;
