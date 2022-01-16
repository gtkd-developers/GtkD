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


module shumate.c.functions;

import std.stdio;
import shumate.c.types;
import linker.Loader;

version (Windows)
	static immutable LIBRARY_SHUMATE = ["libshumate-1.0-1.dll;shumate-1.0-1.dll;shumate-1.dll"];
else version (OSX)
	static immutable LIBRARY_SHUMATE = ["libshumate-1.0.1.dylib"];
else
	static immutable LIBRARY_SHUMATE = ["libshumate-1.0.so.1"];

shared static this()
{
	// shumate.Compass

	Linker.link(shumate_compass_get_type, "shumate_compass_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_compass_new, "shumate_compass_new", LIBRARY_SHUMATE);
	Linker.link(shumate_compass_get_viewport, "shumate_compass_get_viewport", LIBRARY_SHUMATE);
	Linker.link(shumate_compass_set_viewport, "shumate_compass_set_viewport", LIBRARY_SHUMATE);

	// shumate.Coordinate

	Linker.link(shumate_coordinate_get_type, "shumate_coordinate_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_coordinate_new, "shumate_coordinate_new", LIBRARY_SHUMATE);
	Linker.link(shumate_coordinate_new_full, "shumate_coordinate_new_full", LIBRARY_SHUMATE);

	// shumate.DataSource

	Linker.link(shumate_data_source_get_type, "shumate_data_source_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_data_source_get_tile_data_async, "shumate_data_source_get_tile_data_async", LIBRARY_SHUMATE);
	Linker.link(shumate_data_source_get_tile_data_finish, "shumate_data_source_get_tile_data_finish", LIBRARY_SHUMATE);

	// shumate.FileCache

	Linker.link(shumate_file_cache_get_type, "shumate_file_cache_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_new_full, "shumate_file_cache_new_full", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_get_cache_dir, "shumate_file_cache_get_cache_dir", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_get_cache_key, "shumate_file_cache_get_cache_key", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_get_size_limit, "shumate_file_cache_get_size_limit", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_get_tile_async, "shumate_file_cache_get_tile_async", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_get_tile_finish, "shumate_file_cache_get_tile_finish", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_mark_up_to_date, "shumate_file_cache_mark_up_to_date", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_purge_cache_async, "shumate_file_cache_purge_cache_async", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_purge_cache_finish, "shumate_file_cache_purge_cache_finish", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_set_size_limit, "shumate_file_cache_set_size_limit", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_store_tile_async, "shumate_file_cache_store_tile_async", LIBRARY_SHUMATE);
	Linker.link(shumate_file_cache_store_tile_finish, "shumate_file_cache_store_tile_finish", LIBRARY_SHUMATE);

	// shumate.Layer

	Linker.link(shumate_layer_get_type, "shumate_layer_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_layer_get_viewport, "shumate_layer_get_viewport", LIBRARY_SHUMATE);

	// shumate.LicenseSh

	Linker.link(shumate_license_get_type, "shumate_license_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_license_new, "shumate_license_new", LIBRARY_SHUMATE);
	Linker.link(shumate_license_append_map_source, "shumate_license_append_map_source", LIBRARY_SHUMATE);
	Linker.link(shumate_license_get_extra_text, "shumate_license_get_extra_text", LIBRARY_SHUMATE);
	Linker.link(shumate_license_get_xalign, "shumate_license_get_xalign", LIBRARY_SHUMATE);
	Linker.link(shumate_license_prepend_map_source, "shumate_license_prepend_map_source", LIBRARY_SHUMATE);
	Linker.link(shumate_license_remove_map_source, "shumate_license_remove_map_source", LIBRARY_SHUMATE);
	Linker.link(shumate_license_set_extra_text, "shumate_license_set_extra_text", LIBRARY_SHUMATE);
	Linker.link(shumate_license_set_xalign, "shumate_license_set_xalign", LIBRARY_SHUMATE);

	// shumate.Location

	Linker.link(shumate_location_get_type, "shumate_location_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_location_get_latitude, "shumate_location_get_latitude", LIBRARY_SHUMATE);
	Linker.link(shumate_location_get_longitude, "shumate_location_get_longitude", LIBRARY_SHUMATE);
	Linker.link(shumate_location_set_location, "shumate_location_set_location", LIBRARY_SHUMATE);

	// shumate.Map

	Linker.link(shumate_map_get_type, "shumate_map_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_map_new, "shumate_map_new", LIBRARY_SHUMATE);
	Linker.link(shumate_map_new_simple, "shumate_map_new_simple", LIBRARY_SHUMATE);
	Linker.link(shumate_map_add_layer, "shumate_map_add_layer", LIBRARY_SHUMATE);
	Linker.link(shumate_map_center_on, "shumate_map_center_on", LIBRARY_SHUMATE);
	Linker.link(shumate_map_get_animate_zoom, "shumate_map_get_animate_zoom", LIBRARY_SHUMATE);
	Linker.link(shumate_map_get_go_to_duration, "shumate_map_get_go_to_duration", LIBRARY_SHUMATE);
	Linker.link(shumate_map_get_state, "shumate_map_get_state", LIBRARY_SHUMATE);
	Linker.link(shumate_map_get_viewport, "shumate_map_get_viewport", LIBRARY_SHUMATE);
	Linker.link(shumate_map_get_zoom_on_double_click, "shumate_map_get_zoom_on_double_click", LIBRARY_SHUMATE);
	Linker.link(shumate_map_go_to, "shumate_map_go_to", LIBRARY_SHUMATE);
	Linker.link(shumate_map_insert_layer_above, "shumate_map_insert_layer_above", LIBRARY_SHUMATE);
	Linker.link(shumate_map_insert_layer_behind, "shumate_map_insert_layer_behind", LIBRARY_SHUMATE);
	Linker.link(shumate_map_remove_layer, "shumate_map_remove_layer", LIBRARY_SHUMATE);
	Linker.link(shumate_map_set_animate_zoom, "shumate_map_set_animate_zoom", LIBRARY_SHUMATE);
	Linker.link(shumate_map_set_go_to_duration, "shumate_map_set_go_to_duration", LIBRARY_SHUMATE);
	Linker.link(shumate_map_set_map_source, "shumate_map_set_map_source", LIBRARY_SHUMATE);
	Linker.link(shumate_map_set_zoom_on_double_click, "shumate_map_set_zoom_on_double_click", LIBRARY_SHUMATE);
	Linker.link(shumate_map_stop_go_to, "shumate_map_stop_go_to", LIBRARY_SHUMATE);

	// shumate.MapLayer

	Linker.link(shumate_map_layer_get_type, "shumate_map_layer_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_map_layer_new, "shumate_map_layer_new", LIBRARY_SHUMATE);

	// shumate.MapSource

	Linker.link(shumate_map_source_get_type, "shumate_map_source_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_fill_tile_async, "shumate_map_source_fill_tile_async", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_fill_tile_finish, "shumate_map_source_fill_tile_finish", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_column_count, "shumate_map_source_get_column_count", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_id, "shumate_map_source_get_id", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_latitude, "shumate_map_source_get_latitude", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_license, "shumate_map_source_get_license", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_license_uri, "shumate_map_source_get_license_uri", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_longitude, "shumate_map_source_get_longitude", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_max_zoom_level, "shumate_map_source_get_max_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_meters_per_pixel, "shumate_map_source_get_meters_per_pixel", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_min_zoom_level, "shumate_map_source_get_min_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_name, "shumate_map_source_get_name", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_projection, "shumate_map_source_get_projection", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_row_count, "shumate_map_source_get_row_count", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_tile_size, "shumate_map_source_get_tile_size", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_tile_size_at_zoom, "shumate_map_source_get_tile_size_at_zoom", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_x, "shumate_map_source_get_x", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_get_y, "shumate_map_source_get_y", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_set_id, "shumate_map_source_set_id", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_set_license, "shumate_map_source_set_license", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_set_license_uri, "shumate_map_source_set_license_uri", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_set_max_zoom_level, "shumate_map_source_set_max_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_set_min_zoom_level, "shumate_map_source_set_min_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_set_name, "shumate_map_source_set_name", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_set_projection, "shumate_map_source_set_projection", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_set_tile_size, "shumate_map_source_set_tile_size", LIBRARY_SHUMATE);

	// shumate.MapSourceRegistry

	Linker.link(shumate_map_source_registry_get_type, "shumate_map_source_registry_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_registry_new, "shumate_map_source_registry_new", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_registry_new_with_defaults, "shumate_map_source_registry_new_with_defaults", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_registry_add, "shumate_map_source_registry_add", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_registry_get_by_id, "shumate_map_source_registry_get_by_id", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_registry_populate_defaults, "shumate_map_source_registry_populate_defaults", LIBRARY_SHUMATE);
	Linker.link(shumate_map_source_registry_remove, "shumate_map_source_registry_remove", LIBRARY_SHUMATE);

	// shumate.Marker

	Linker.link(shumate_marker_get_type, "shumate_marker_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_new, "shumate_marker_new", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_animate_in, "shumate_marker_animate_in", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_animate_in_with_delay, "shumate_marker_animate_in_with_delay", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_animate_out, "shumate_marker_animate_out", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_animate_out_with_delay, "shumate_marker_animate_out_with_delay", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_get_child, "shumate_marker_get_child", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_get_draggable, "shumate_marker_get_draggable", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_get_selectable, "shumate_marker_get_selectable", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_is_selected, "shumate_marker_is_selected", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_set_child, "shumate_marker_set_child", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_set_draggable, "shumate_marker_set_draggable", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_set_selectable, "shumate_marker_set_selectable", LIBRARY_SHUMATE);

	// shumate.MarkerLayer

	Linker.link(shumate_marker_layer_get_type, "shumate_marker_layer_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_new, "shumate_marker_layer_new", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_new_full, "shumate_marker_layer_new_full", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_add_marker, "shumate_marker_layer_add_marker", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_animate_in_all_markers, "shumate_marker_layer_animate_in_all_markers", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_animate_out_all_markers, "shumate_marker_layer_animate_out_all_markers", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_get_markers, "shumate_marker_layer_get_markers", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_get_selected, "shumate_marker_layer_get_selected", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_get_selection_mode, "shumate_marker_layer_get_selection_mode", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_hide_all_markers, "shumate_marker_layer_hide_all_markers", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_remove_all, "shumate_marker_layer_remove_all", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_remove_marker, "shumate_marker_layer_remove_marker", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_select_all_markers, "shumate_marker_layer_select_all_markers", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_select_marker, "shumate_marker_layer_select_marker", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_set_all_markers_draggable, "shumate_marker_layer_set_all_markers_draggable", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_set_all_markers_undraggable, "shumate_marker_layer_set_all_markers_undraggable", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_set_selection_mode, "shumate_marker_layer_set_selection_mode", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_show_all_markers, "shumate_marker_layer_show_all_markers", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_unselect_all_markers, "shumate_marker_layer_unselect_all_markers", LIBRARY_SHUMATE);
	Linker.link(shumate_marker_layer_unselect_marker, "shumate_marker_layer_unselect_marker", LIBRARY_SHUMATE);

	// shumate.MemoryCache

	Linker.link(shumate_memory_cache_get_type, "shumate_memory_cache_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_memory_cache_new_full, "shumate_memory_cache_new_full", LIBRARY_SHUMATE);
	Linker.link(shumate_memory_cache_clean, "shumate_memory_cache_clean", LIBRARY_SHUMATE);
	Linker.link(shumate_memory_cache_get_size_limit, "shumate_memory_cache_get_size_limit", LIBRARY_SHUMATE);
	Linker.link(shumate_memory_cache_set_size_limit, "shumate_memory_cache_set_size_limit", LIBRARY_SHUMATE);
	Linker.link(shumate_memory_cache_store_texture, "shumate_memory_cache_store_texture", LIBRARY_SHUMATE);
	Linker.link(shumate_memory_cache_try_fill_tile, "shumate_memory_cache_try_fill_tile", LIBRARY_SHUMATE);

	// shumate.PathLayer

	Linker.link(shumate_path_layer_get_type, "shumate_path_layer_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_new, "shumate_path_layer_new", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_add_node, "shumate_path_layer_add_node", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_get_closed, "shumate_path_layer_get_closed", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_get_dash, "shumate_path_layer_get_dash", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_get_fill, "shumate_path_layer_get_fill", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_get_fill_color, "shumate_path_layer_get_fill_color", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_get_nodes, "shumate_path_layer_get_nodes", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_get_outline_color, "shumate_path_layer_get_outline_color", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_get_outline_width, "shumate_path_layer_get_outline_width", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_get_stroke, "shumate_path_layer_get_stroke", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_get_stroke_color, "shumate_path_layer_get_stroke_color", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_get_stroke_width, "shumate_path_layer_get_stroke_width", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_insert_node, "shumate_path_layer_insert_node", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_remove_all, "shumate_path_layer_remove_all", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_remove_node, "shumate_path_layer_remove_node", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_set_closed, "shumate_path_layer_set_closed", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_set_dash, "shumate_path_layer_set_dash", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_set_fill, "shumate_path_layer_set_fill", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_set_fill_color, "shumate_path_layer_set_fill_color", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_set_outline_color, "shumate_path_layer_set_outline_color", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_set_outline_width, "shumate_path_layer_set_outline_width", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_set_stroke, "shumate_path_layer_set_stroke", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_set_stroke_color, "shumate_path_layer_set_stroke_color", LIBRARY_SHUMATE);
	Linker.link(shumate_path_layer_set_stroke_width, "shumate_path_layer_set_stroke_width", LIBRARY_SHUMATE);

	// shumate.Point

	Linker.link(shumate_point_get_type, "shumate_point_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_point_new, "shumate_point_new", LIBRARY_SHUMATE);

	// shumate.RasterRenderer

	Linker.link(shumate_raster_renderer_get_type, "shumate_raster_renderer_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_raster_renderer_new, "shumate_raster_renderer_new", LIBRARY_SHUMATE);
	Linker.link(shumate_raster_renderer_new_from_url, "shumate_raster_renderer_new_from_url", LIBRARY_SHUMATE);
	Linker.link(shumate_raster_renderer_new_full, "shumate_raster_renderer_new_full", LIBRARY_SHUMATE);
	Linker.link(shumate_raster_renderer_new_full_from_url, "shumate_raster_renderer_new_full_from_url", LIBRARY_SHUMATE);

	// shumate.Scale

	Linker.link(shumate_scale_get_type, "shumate_scale_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_scale_new, "shumate_scale_new", LIBRARY_SHUMATE);
	Linker.link(shumate_scale_get_max_width, "shumate_scale_get_max_width", LIBRARY_SHUMATE);
	Linker.link(shumate_scale_get_unit, "shumate_scale_get_unit", LIBRARY_SHUMATE);
	Linker.link(shumate_scale_get_viewport, "shumate_scale_get_viewport", LIBRARY_SHUMATE);
	Linker.link(shumate_scale_set_max_width, "shumate_scale_set_max_width", LIBRARY_SHUMATE);
	Linker.link(shumate_scale_set_unit, "shumate_scale_set_unit", LIBRARY_SHUMATE);
	Linker.link(shumate_scale_set_viewport, "shumate_scale_set_viewport", LIBRARY_SHUMATE);

	// shumate.SimpleMap

	Linker.link(shumate_simple_map_get_type, "shumate_simple_map_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_new, "shumate_simple_map_new", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_add_overlay_layer, "shumate_simple_map_add_overlay_layer", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_get_compass, "shumate_simple_map_get_compass", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_get_license, "shumate_simple_map_get_license", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_get_map_source, "shumate_simple_map_get_map_source", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_get_scale, "shumate_simple_map_get_scale", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_get_show_zoom_buttons, "shumate_simple_map_get_show_zoom_buttons", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_get_viewport, "shumate_simple_map_get_viewport", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_insert_overlay_layer, "shumate_simple_map_insert_overlay_layer", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_remove_overlay_layer, "shumate_simple_map_remove_overlay_layer", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_set_map_source, "shumate_simple_map_set_map_source", LIBRARY_SHUMATE);
	Linker.link(shumate_simple_map_set_show_zoom_buttons, "shumate_simple_map_set_show_zoom_buttons", LIBRARY_SHUMATE);

	// shumate.Tile

	Linker.link(shumate_tile_get_type, "shumate_tile_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_new, "shumate_tile_new", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_new_full, "shumate_tile_new_full", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_get_etag, "shumate_tile_get_etag", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_get_fade_in, "shumate_tile_get_fade_in", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_get_modified_time, "shumate_tile_get_modified_time", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_get_size, "shumate_tile_get_size", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_get_state, "shumate_tile_get_state", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_get_texture, "shumate_tile_get_texture", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_get_x, "shumate_tile_get_x", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_get_y, "shumate_tile_get_y", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_get_zoom_level, "shumate_tile_get_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_set_etag, "shumate_tile_set_etag", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_set_fade_in, "shumate_tile_set_fade_in", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_set_modified_time, "shumate_tile_set_modified_time", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_set_size, "shumate_tile_set_size", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_set_state, "shumate_tile_set_state", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_set_texture, "shumate_tile_set_texture", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_set_x, "shumate_tile_set_x", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_set_y, "shumate_tile_set_y", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_set_zoom_level, "shumate_tile_set_zoom_level", LIBRARY_SHUMATE);

	// shumate.TileDownloader

	Linker.link(shumate_tile_downloader_get_type, "shumate_tile_downloader_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_tile_downloader_new, "shumate_tile_downloader_new", LIBRARY_SHUMATE);

	// shumate.VectorRenderer

	Linker.link(shumate_vector_renderer_get_type, "shumate_vector_renderer_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_vector_renderer_new, "shumate_vector_renderer_new", LIBRARY_SHUMATE);
	Linker.link(shumate_vector_renderer_new_from_url, "shumate_vector_renderer_new_from_url", LIBRARY_SHUMATE);
	Linker.link(shumate_vector_renderer_new_full, "shumate_vector_renderer_new_full", LIBRARY_SHUMATE);
	Linker.link(shumate_vector_renderer_new_full_from_url, "shumate_vector_renderer_new_full_from_url", LIBRARY_SHUMATE);
	Linker.link(shumate_vector_renderer_is_supported, "shumate_vector_renderer_is_supported", LIBRARY_SHUMATE);

	// shumate.Viewport

	Linker.link(shumate_viewport_get_type, "shumate_viewport_get_type", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_new, "shumate_viewport_new", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_get_max_zoom_level, "shumate_viewport_get_max_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_get_min_zoom_level, "shumate_viewport_get_min_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_get_reference_map_source, "shumate_viewport_get_reference_map_source", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_get_rotation, "shumate_viewport_get_rotation", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_get_zoom_level, "shumate_viewport_get_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_location_to_widget_coords, "shumate_viewport_location_to_widget_coords", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_set_max_zoom_level, "shumate_viewport_set_max_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_set_min_zoom_level, "shumate_viewport_set_min_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_set_reference_map_source, "shumate_viewport_set_reference_map_source", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_set_rotation, "shumate_viewport_set_rotation", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_set_zoom_level, "shumate_viewport_set_zoom_level", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_widget_coords_to_location, "shumate_viewport_widget_coords_to_location", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_zoom_in, "shumate_viewport_zoom_in", LIBRARY_SHUMATE);
	Linker.link(shumate_viewport_zoom_out, "shumate_viewport_zoom_out", LIBRARY_SHUMATE);
}

__gshared extern(C)
{

	// shumate.Compass

	GType function() c_shumate_compass_get_type;
	ShumateCompass* function(ShumateViewport* viewport) c_shumate_compass_new;
	ShumateViewport* function(ShumateCompass* compass) c_shumate_compass_get_viewport;
	void function(ShumateCompass* compass, ShumateViewport* viewport) c_shumate_compass_set_viewport;

	// shumate.Coordinate

	GType function() c_shumate_coordinate_get_type;
	ShumateCoordinate* function() c_shumate_coordinate_new;
	ShumateCoordinate* function(double latitude, double longitude) c_shumate_coordinate_new_full;

	// shumate.DataSource

	GType function() c_shumate_data_source_get_type;
	void function(ShumateDataSource* self, int x, int y, int zoomLevel, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_shumate_data_source_get_tile_data_async;
	GBytes* function(ShumateDataSource* self, GAsyncResult* result, GError** err) c_shumate_data_source_get_tile_data_finish;

	// shumate.FileCache

	GType function() c_shumate_file_cache_get_type;
	ShumateFileCache* function(uint sizeLimit, const(char)* cacheKey, const(char)* cacheDir) c_shumate_file_cache_new_full;
	const(char)* function(ShumateFileCache* fileCache) c_shumate_file_cache_get_cache_dir;
	const(char)* function(ShumateFileCache* fileCache) c_shumate_file_cache_get_cache_key;
	uint function(ShumateFileCache* fileCache) c_shumate_file_cache_get_size_limit;
	void function(ShumateFileCache* self, int x, int y, int zoomLevel, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_shumate_file_cache_get_tile_async;
	GBytes* function(ShumateFileCache* self, char** etag, GDateTime** modtime, GAsyncResult* result, GError** err) c_shumate_file_cache_get_tile_finish;
	void function(ShumateFileCache* self, int x, int y, int zoomLevel) c_shumate_file_cache_mark_up_to_date;
	void function(ShumateFileCache* self, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_shumate_file_cache_purge_cache_async;
	int function(ShumateFileCache* self, GAsyncResult* result, GError** err) c_shumate_file_cache_purge_cache_finish;
	void function(ShumateFileCache* fileCache, uint sizeLimit) c_shumate_file_cache_set_size_limit;
	void function(ShumateFileCache* self, int x, int y, int zoomLevel, GBytes* bytes, const(char)* etag, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_shumate_file_cache_store_tile_async;
	int function(ShumateFileCache* self, GAsyncResult* result, GError** err) c_shumate_file_cache_store_tile_finish;

	// shumate.Layer

	GType function() c_shumate_layer_get_type;
	ShumateViewport* function(ShumateLayer* self) c_shumate_layer_get_viewport;

	// shumate.LicenseSh

	GType function() c_shumate_license_get_type;
	ShumateLicense* function() c_shumate_license_new;
	void function(ShumateLicense* license, ShumateMapSource* mapSource) c_shumate_license_append_map_source;
	const(char)* function(ShumateLicense* license) c_shumate_license_get_extra_text;
	float function(ShumateLicense* license) c_shumate_license_get_xalign;
	void function(ShumateLicense* license, ShumateMapSource* mapSource) c_shumate_license_prepend_map_source;
	void function(ShumateLicense* license, ShumateMapSource* mapSource) c_shumate_license_remove_map_source;
	void function(ShumateLicense* license, const(char)* text) c_shumate_license_set_extra_text;
	void function(ShumateLicense* license, float xalign) c_shumate_license_set_xalign;

	// shumate.Location

	GType function() c_shumate_location_get_type;
	double function(ShumateLocation* location) c_shumate_location_get_latitude;
	double function(ShumateLocation* location) c_shumate_location_get_longitude;
	void function(ShumateLocation* location, double latitude, double longitude) c_shumate_location_set_location;

	// shumate.Map

	GType function() c_shumate_map_get_type;
	ShumateMap* function() c_shumate_map_new;
	ShumateMap* function() c_shumate_map_new_simple;
	void function(ShumateMap* self, ShumateLayer* layer) c_shumate_map_add_layer;
	void function(ShumateMap* self, double latitude, double longitude) c_shumate_map_center_on;
	int function(ShumateMap* self) c_shumate_map_get_animate_zoom;
	uint function(ShumateMap* self) c_shumate_map_get_go_to_duration;
	ShumateState function(ShumateMap* self) c_shumate_map_get_state;
	ShumateViewport* function(ShumateMap* self) c_shumate_map_get_viewport;
	int function(ShumateMap* self) c_shumate_map_get_zoom_on_double_click;
	void function(ShumateMap* self, double latitude, double longitude) c_shumate_map_go_to;
	void function(ShumateMap* self, ShumateLayer* layer, ShumateLayer* nextSibling) c_shumate_map_insert_layer_above;
	void function(ShumateMap* self, ShumateLayer* layer, ShumateLayer* nextSibling) c_shumate_map_insert_layer_behind;
	void function(ShumateMap* self, ShumateLayer* layer) c_shumate_map_remove_layer;
	void function(ShumateMap* self, int value) c_shumate_map_set_animate_zoom;
	void function(ShumateMap* self, uint duration) c_shumate_map_set_go_to_duration;
	void function(ShumateMap* self, ShumateMapSource* mapSource) c_shumate_map_set_map_source;
	void function(ShumateMap* self, int value) c_shumate_map_set_zoom_on_double_click;
	void function(ShumateMap* self) c_shumate_map_stop_go_to;

	// shumate.MapLayer

	GType function() c_shumate_map_layer_get_type;
	ShumateMapLayer* function(ShumateMapSource* mapSource, ShumateViewport* viewport) c_shumate_map_layer_new;

	// shumate.MapSource

	GType function() c_shumate_map_source_get_type;
	void function(ShumateMapSource* self, ShumateTile* tile, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) c_shumate_map_source_fill_tile_async;
	int function(ShumateMapSource* self, GAsyncResult* result, GError** err) c_shumate_map_source_fill_tile_finish;
	uint function(ShumateMapSource* mapSource, uint zoomLevel) c_shumate_map_source_get_column_count;
	const(char)* function(ShumateMapSource* mapSource) c_shumate_map_source_get_id;
	double function(ShumateMapSource* mapSource, double zoomLevel, double y) c_shumate_map_source_get_latitude;
	const(char)* function(ShumateMapSource* mapSource) c_shumate_map_source_get_license;
	const(char)* function(ShumateMapSource* mapSource) c_shumate_map_source_get_license_uri;
	double function(ShumateMapSource* mapSource, double zoomLevel, double x) c_shumate_map_source_get_longitude;
	uint function(ShumateMapSource* mapSource) c_shumate_map_source_get_max_zoom_level;
	double function(ShumateMapSource* mapSource, double zoomLevel, double latitude, double longitude) c_shumate_map_source_get_meters_per_pixel;
	uint function(ShumateMapSource* mapSource) c_shumate_map_source_get_min_zoom_level;
	const(char)* function(ShumateMapSource* mapSource) c_shumate_map_source_get_name;
	ShumateMapProjection function(ShumateMapSource* mapSource) c_shumate_map_source_get_projection;
	uint function(ShumateMapSource* mapSource, uint zoomLevel) c_shumate_map_source_get_row_count;
	uint function(ShumateMapSource* mapSource) c_shumate_map_source_get_tile_size;
	double function(ShumateMapSource* mapSource, double zoomLevel) c_shumate_map_source_get_tile_size_at_zoom;
	double function(ShumateMapSource* mapSource, double zoomLevel, double longitude) c_shumate_map_source_get_x;
	double function(ShumateMapSource* mapSource, double zoomLevel, double latitude) c_shumate_map_source_get_y;
	void function(ShumateMapSource* mapSource, const(char)* id) c_shumate_map_source_set_id;
	void function(ShumateMapSource* mapSource, const(char)* license) c_shumate_map_source_set_license;
	void function(ShumateMapSource* mapSource, const(char)* licenseUri) c_shumate_map_source_set_license_uri;
	void function(ShumateMapSource* mapSource, uint zoomLevel) c_shumate_map_source_set_max_zoom_level;
	void function(ShumateMapSource* mapSource, uint zoomLevel) c_shumate_map_source_set_min_zoom_level;
	void function(ShumateMapSource* mapSource, const(char)* name) c_shumate_map_source_set_name;
	void function(ShumateMapSource* mapSource, ShumateMapProjection projection) c_shumate_map_source_set_projection;
	void function(ShumateMapSource* mapSource, uint tileSize) c_shumate_map_source_set_tile_size;

	// shumate.MapSourceRegistry

	GType function() c_shumate_map_source_registry_get_type;
	ShumateMapSourceRegistry* function() c_shumate_map_source_registry_new;
	ShumateMapSourceRegistry* function() c_shumate_map_source_registry_new_with_defaults;
	void function(ShumateMapSourceRegistry* self, ShumateMapSource* mapSource) c_shumate_map_source_registry_add;
	ShumateMapSource* function(ShumateMapSourceRegistry* self, const(char)* id) c_shumate_map_source_registry_get_by_id;
	void function(ShumateMapSourceRegistry* self) c_shumate_map_source_registry_populate_defaults;
	void function(ShumateMapSourceRegistry* self, const(char)* id) c_shumate_map_source_registry_remove;

	// shumate.Marker

	GType function() c_shumate_marker_get_type;
	ShumateMarker* function() c_shumate_marker_new;
	void function(ShumateMarker* marker) c_shumate_marker_animate_in;
	void function(ShumateMarker* marker, uint delay) c_shumate_marker_animate_in_with_delay;
	void function(ShumateMarker* marker) c_shumate_marker_animate_out;
	void function(ShumateMarker* marker, uint delay) c_shumate_marker_animate_out_with_delay;
	GtkWidget* function(ShumateMarker* marker) c_shumate_marker_get_child;
	int function(ShumateMarker* marker) c_shumate_marker_get_draggable;
	int function(ShumateMarker* marker) c_shumate_marker_get_selectable;
	int function(ShumateMarker* marker) c_shumate_marker_is_selected;
	void function(ShumateMarker* marker, GtkWidget* child) c_shumate_marker_set_child;
	void function(ShumateMarker* marker, int value) c_shumate_marker_set_draggable;
	void function(ShumateMarker* marker, int value) c_shumate_marker_set_selectable;

	// shumate.MarkerLayer

	GType function() c_shumate_marker_layer_get_type;
	ShumateMarkerLayer* function(ShumateViewport* viewport) c_shumate_marker_layer_new;
	ShumateMarkerLayer* function(ShumateViewport* viewport, GtkSelectionMode mode) c_shumate_marker_layer_new_full;
	void function(ShumateMarkerLayer* layer, ShumateMarker* marker) c_shumate_marker_layer_add_marker;
	void function(ShumateMarkerLayer* layer) c_shumate_marker_layer_animate_in_all_markers;
	void function(ShumateMarkerLayer* layer) c_shumate_marker_layer_animate_out_all_markers;
	GList* function(ShumateMarkerLayer* layer) c_shumate_marker_layer_get_markers;
	GList* function(ShumateMarkerLayer* layer) c_shumate_marker_layer_get_selected;
	GtkSelectionMode function(ShumateMarkerLayer* layer) c_shumate_marker_layer_get_selection_mode;
	void function(ShumateMarkerLayer* layer) c_shumate_marker_layer_hide_all_markers;
	void function(ShumateMarkerLayer* layer) c_shumate_marker_layer_remove_all;
	void function(ShumateMarkerLayer* layer, ShumateMarker* marker) c_shumate_marker_layer_remove_marker;
	void function(ShumateMarkerLayer* layer) c_shumate_marker_layer_select_all_markers;
	int function(ShumateMarkerLayer* self, ShumateMarker* marker) c_shumate_marker_layer_select_marker;
	void function(ShumateMarkerLayer* layer) c_shumate_marker_layer_set_all_markers_draggable;
	void function(ShumateMarkerLayer* layer) c_shumate_marker_layer_set_all_markers_undraggable;
	void function(ShumateMarkerLayer* layer, GtkSelectionMode mode) c_shumate_marker_layer_set_selection_mode;
	void function(ShumateMarkerLayer* layer) c_shumate_marker_layer_show_all_markers;
	void function(ShumateMarkerLayer* layer) c_shumate_marker_layer_unselect_all_markers;
	void function(ShumateMarkerLayer* self, ShumateMarker* marker) c_shumate_marker_layer_unselect_marker;

	// shumate.MemoryCache

	GType function() c_shumate_memory_cache_get_type;
	ShumateMemoryCache* function(uint sizeLimit) c_shumate_memory_cache_new_full;
	void function(ShumateMemoryCache* memoryCache) c_shumate_memory_cache_clean;
	uint function(ShumateMemoryCache* memoryCache) c_shumate_memory_cache_get_size_limit;
	void function(ShumateMemoryCache* memoryCache, uint sizeLimit) c_shumate_memory_cache_set_size_limit;
	void function(ShumateMemoryCache* self, ShumateTile* tile, GdkTexture* texture, const(char)* sourceId) c_shumate_memory_cache_store_texture;
	int function(ShumateMemoryCache* self, ShumateTile* tile, const(char)* sourceId) c_shumate_memory_cache_try_fill_tile;

	// shumate.PathLayer

	GType function() c_shumate_path_layer_get_type;
	ShumatePathLayer* function(ShumateViewport* viewport) c_shumate_path_layer_new;
	void function(ShumatePathLayer* layer, ShumateLocation* location) c_shumate_path_layer_add_node;
	int function(ShumatePathLayer* layer) c_shumate_path_layer_get_closed;
	GList* function(ShumatePathLayer* layer) c_shumate_path_layer_get_dash;
	int function(ShumatePathLayer* layer) c_shumate_path_layer_get_fill;
	GdkRGBA* function(ShumatePathLayer* layer) c_shumate_path_layer_get_fill_color;
	GList* function(ShumatePathLayer* layer) c_shumate_path_layer_get_nodes;
	GdkRGBA* function(ShumatePathLayer* layer) c_shumate_path_layer_get_outline_color;
	double function(ShumatePathLayer* layer) c_shumate_path_layer_get_outline_width;
	int function(ShumatePathLayer* layer) c_shumate_path_layer_get_stroke;
	GdkRGBA* function(ShumatePathLayer* layer) c_shumate_path_layer_get_stroke_color;
	double function(ShumatePathLayer* layer) c_shumate_path_layer_get_stroke_width;
	void function(ShumatePathLayer* layer, ShumateLocation* location, uint position) c_shumate_path_layer_insert_node;
	void function(ShumatePathLayer* layer) c_shumate_path_layer_remove_all;
	void function(ShumatePathLayer* layer, ShumateLocation* location) c_shumate_path_layer_remove_node;
	void function(ShumatePathLayer* layer, int value) c_shumate_path_layer_set_closed;
	void function(ShumatePathLayer* layer, GList* dashPattern) c_shumate_path_layer_set_dash;
	void function(ShumatePathLayer* layer, int value) c_shumate_path_layer_set_fill;
	void function(ShumatePathLayer* layer, GdkRGBA* color) c_shumate_path_layer_set_fill_color;
	void function(ShumatePathLayer* layer, GdkRGBA* color) c_shumate_path_layer_set_outline_color;
	void function(ShumatePathLayer* layer, double value) c_shumate_path_layer_set_outline_width;
	void function(ShumatePathLayer* layer, int value) c_shumate_path_layer_set_stroke;
	void function(ShumatePathLayer* layer, GdkRGBA* color) c_shumate_path_layer_set_stroke_color;
	void function(ShumatePathLayer* layer, double value) c_shumate_path_layer_set_stroke_width;

	// shumate.Point

	GType function() c_shumate_point_get_type;
	ShumateMarker* function() c_shumate_point_new;

	// shumate.RasterRenderer

	GType function() c_shumate_raster_renderer_get_type;
	ShumateRasterRenderer* function(ShumateDataSource* dataSource) c_shumate_raster_renderer_new;
	ShumateRasterRenderer* function(const(char)* urlTemplate) c_shumate_raster_renderer_new_from_url;
	ShumateRasterRenderer* function(const(char)* id, const(char)* name, const(char)* license, const(char)* licenseUri, uint minZoom, uint maxZoom, uint tileSize, ShumateMapProjection projection, ShumateDataSource* dataSource) c_shumate_raster_renderer_new_full;
	ShumateRasterRenderer* function(const(char)* id, const(char)* name, const(char)* license, const(char)* licenseUri, uint minZoom, uint maxZoom, uint tileSize, ShumateMapProjection projection, const(char)* urlTemplate) c_shumate_raster_renderer_new_full_from_url;

	// shumate.Scale

	GType function() c_shumate_scale_get_type;
	ShumateScale* function(ShumateViewport* viewport) c_shumate_scale_new;
	uint function(ShumateScale* scale) c_shumate_scale_get_max_width;
	ShumateUnit function(ShumateScale* scale) c_shumate_scale_get_unit;
	ShumateViewport* function(ShumateScale* scale) c_shumate_scale_get_viewport;
	void function(ShumateScale* scale, uint value) c_shumate_scale_set_max_width;
	void function(ShumateScale* scale, ShumateUnit unit) c_shumate_scale_set_unit;
	void function(ShumateScale* scale, ShumateViewport* viewport) c_shumate_scale_set_viewport;

	// shumate.SimpleMap

	GType function() c_shumate_simple_map_get_type;
	ShumateSimpleMap* function() c_shumate_simple_map_new;
	void function(ShumateSimpleMap* self, ShumateLayer* layer) c_shumate_simple_map_add_overlay_layer;
	ShumateCompass* function(ShumateSimpleMap* self) c_shumate_simple_map_get_compass;
	ShumateLicense* function(ShumateSimpleMap* self) c_shumate_simple_map_get_license;
	ShumateMapSource* function(ShumateSimpleMap* self) c_shumate_simple_map_get_map_source;
	ShumateScale* function(ShumateSimpleMap* self) c_shumate_simple_map_get_scale;
	int function(ShumateSimpleMap* self) c_shumate_simple_map_get_show_zoom_buttons;
	ShumateViewport* function(ShumateSimpleMap* self) c_shumate_simple_map_get_viewport;
	void function(ShumateSimpleMap* self, ShumateLayer* layer, uint idx) c_shumate_simple_map_insert_overlay_layer;
	void function(ShumateSimpleMap* self, ShumateLayer* layer) c_shumate_simple_map_remove_overlay_layer;
	void function(ShumateSimpleMap* self, ShumateMapSource* mapSource) c_shumate_simple_map_set_map_source;
	void function(ShumateSimpleMap* self, int showZoomButtons) c_shumate_simple_map_set_show_zoom_buttons;

	// shumate.Tile

	GType function() c_shumate_tile_get_type;
	ShumateTile* function() c_shumate_tile_new;
	ShumateTile* function(uint x, uint y, uint size, uint zoomLevel) c_shumate_tile_new_full;
	const(char)* function(ShumateTile* self) c_shumate_tile_get_etag;
	int function(ShumateTile* self) c_shumate_tile_get_fade_in;
	GDateTime* function(ShumateTile* self) c_shumate_tile_get_modified_time;
	uint function(ShumateTile* self) c_shumate_tile_get_size;
	ShumateState function(ShumateTile* self) c_shumate_tile_get_state;
	GdkTexture* function(ShumateTile* self) c_shumate_tile_get_texture;
	uint function(ShumateTile* self) c_shumate_tile_get_x;
	uint function(ShumateTile* self) c_shumate_tile_get_y;
	uint function(ShumateTile* self) c_shumate_tile_get_zoom_level;
	void function(ShumateTile* self, const(char)* etag) c_shumate_tile_set_etag;
	void function(ShumateTile* self, int fadeIn) c_shumate_tile_set_fade_in;
	void function(ShumateTile* self, GDateTime* modifiedTime) c_shumate_tile_set_modified_time;
	void function(ShumateTile* self, uint size) c_shumate_tile_set_size;
	void function(ShumateTile* self, ShumateState state) c_shumate_tile_set_state;
	void function(ShumateTile* self, GdkTexture* texture) c_shumate_tile_set_texture;
	void function(ShumateTile* self, uint x) c_shumate_tile_set_x;
	void function(ShumateTile* self, uint y) c_shumate_tile_set_y;
	void function(ShumateTile* self, uint zoomLevel) c_shumate_tile_set_zoom_level;

	// shumate.TileDownloader

	GType function() c_shumate_tile_downloader_get_type;
	ShumateTileDownloader* function(const(char)* urlTemplate) c_shumate_tile_downloader_new;

	// shumate.VectorRenderer

	GType function() c_shumate_vector_renderer_get_type;
	ShumateVectorRenderer* function(ShumateDataSource* dataSource, const(char)* styleJson, GError** err) c_shumate_vector_renderer_new;
	ShumateVectorRenderer* function(const(char)* urlTemplate, const(char)* styleJson, GError** err) c_shumate_vector_renderer_new_from_url;
	ShumateVectorRenderer* function(const(char)* id, const(char)* name, const(char)* license, const(char)* licenseUri, uint minZoom, uint maxZoom, uint tileSize, ShumateMapProjection projection, ShumateDataSource* dataSource, const(char)* styleJson, GError** err) c_shumate_vector_renderer_new_full;
	ShumateVectorRenderer* function(const(char)* id, const(char)* name, const(char)* license, const(char)* licenseUri, uint minZoom, uint maxZoom, uint tileSize, ShumateMapProjection projection, const(char)* urlTemplate, const(char)* styleJson, GError** err) c_shumate_vector_renderer_new_full_from_url;
	int function() c_shumate_vector_renderer_is_supported;

	// shumate.Viewport

	GType function() c_shumate_viewport_get_type;
	ShumateViewport* function() c_shumate_viewport_new;
	uint function(ShumateViewport* self) c_shumate_viewport_get_max_zoom_level;
	uint function(ShumateViewport* self) c_shumate_viewport_get_min_zoom_level;
	ShumateMapSource* function(ShumateViewport* self) c_shumate_viewport_get_reference_map_source;
	double function(ShumateViewport* self) c_shumate_viewport_get_rotation;
	double function(ShumateViewport* self) c_shumate_viewport_get_zoom_level;
	void function(ShumateViewport* self, GtkWidget* widget, double latitude, double longitude, double* x, double* y) c_shumate_viewport_location_to_widget_coords;
	void function(ShumateViewport* self, uint maxZoomLevel) c_shumate_viewport_set_max_zoom_level;
	void function(ShumateViewport* self, uint minZoomLevel) c_shumate_viewport_set_min_zoom_level;
	void function(ShumateViewport* self, ShumateMapSource* mapSource) c_shumate_viewport_set_reference_map_source;
	void function(ShumateViewport* self, double rotation) c_shumate_viewport_set_rotation;
	void function(ShumateViewport* self, double zoomLevel) c_shumate_viewport_set_zoom_level;
	void function(ShumateViewport* self, GtkWidget* widget, double x, double y, double* latitude, double* longitude) c_shumate_viewport_widget_coords_to_location;
	void function(ShumateViewport* self) c_shumate_viewport_zoom_in;
	void function(ShumateViewport* self) c_shumate_viewport_zoom_out;
}


// shumate.Compass

alias c_shumate_compass_get_type shumate_compass_get_type;
alias c_shumate_compass_new shumate_compass_new;
alias c_shumate_compass_get_viewport shumate_compass_get_viewport;
alias c_shumate_compass_set_viewport shumate_compass_set_viewport;

// shumate.Coordinate

alias c_shumate_coordinate_get_type shumate_coordinate_get_type;
alias c_shumate_coordinate_new shumate_coordinate_new;
alias c_shumate_coordinate_new_full shumate_coordinate_new_full;

// shumate.DataSource

alias c_shumate_data_source_get_type shumate_data_source_get_type;
alias c_shumate_data_source_get_tile_data_async shumate_data_source_get_tile_data_async;
alias c_shumate_data_source_get_tile_data_finish shumate_data_source_get_tile_data_finish;

// shumate.FileCache

alias c_shumate_file_cache_get_type shumate_file_cache_get_type;
alias c_shumate_file_cache_new_full shumate_file_cache_new_full;
alias c_shumate_file_cache_get_cache_dir shumate_file_cache_get_cache_dir;
alias c_shumate_file_cache_get_cache_key shumate_file_cache_get_cache_key;
alias c_shumate_file_cache_get_size_limit shumate_file_cache_get_size_limit;
alias c_shumate_file_cache_get_tile_async shumate_file_cache_get_tile_async;
alias c_shumate_file_cache_get_tile_finish shumate_file_cache_get_tile_finish;
alias c_shumate_file_cache_mark_up_to_date shumate_file_cache_mark_up_to_date;
alias c_shumate_file_cache_purge_cache_async shumate_file_cache_purge_cache_async;
alias c_shumate_file_cache_purge_cache_finish shumate_file_cache_purge_cache_finish;
alias c_shumate_file_cache_set_size_limit shumate_file_cache_set_size_limit;
alias c_shumate_file_cache_store_tile_async shumate_file_cache_store_tile_async;
alias c_shumate_file_cache_store_tile_finish shumate_file_cache_store_tile_finish;

// shumate.Layer

alias c_shumate_layer_get_type shumate_layer_get_type;
alias c_shumate_layer_get_viewport shumate_layer_get_viewport;

// shumate.LicenseSh

alias c_shumate_license_get_type shumate_license_get_type;
alias c_shumate_license_new shumate_license_new;
alias c_shumate_license_append_map_source shumate_license_append_map_source;
alias c_shumate_license_get_extra_text shumate_license_get_extra_text;
alias c_shumate_license_get_xalign shumate_license_get_xalign;
alias c_shumate_license_prepend_map_source shumate_license_prepend_map_source;
alias c_shumate_license_remove_map_source shumate_license_remove_map_source;
alias c_shumate_license_set_extra_text shumate_license_set_extra_text;
alias c_shumate_license_set_xalign shumate_license_set_xalign;

// shumate.Location

alias c_shumate_location_get_type shumate_location_get_type;
alias c_shumate_location_get_latitude shumate_location_get_latitude;
alias c_shumate_location_get_longitude shumate_location_get_longitude;
alias c_shumate_location_set_location shumate_location_set_location;

// shumate.Map

alias c_shumate_map_get_type shumate_map_get_type;
alias c_shumate_map_new shumate_map_new;
alias c_shumate_map_new_simple shumate_map_new_simple;
alias c_shumate_map_add_layer shumate_map_add_layer;
alias c_shumate_map_center_on shumate_map_center_on;
alias c_shumate_map_get_animate_zoom shumate_map_get_animate_zoom;
alias c_shumate_map_get_go_to_duration shumate_map_get_go_to_duration;
alias c_shumate_map_get_state shumate_map_get_state;
alias c_shumate_map_get_viewport shumate_map_get_viewport;
alias c_shumate_map_get_zoom_on_double_click shumate_map_get_zoom_on_double_click;
alias c_shumate_map_go_to shumate_map_go_to;
alias c_shumate_map_insert_layer_above shumate_map_insert_layer_above;
alias c_shumate_map_insert_layer_behind shumate_map_insert_layer_behind;
alias c_shumate_map_remove_layer shumate_map_remove_layer;
alias c_shumate_map_set_animate_zoom shumate_map_set_animate_zoom;
alias c_shumate_map_set_go_to_duration shumate_map_set_go_to_duration;
alias c_shumate_map_set_map_source shumate_map_set_map_source;
alias c_shumate_map_set_zoom_on_double_click shumate_map_set_zoom_on_double_click;
alias c_shumate_map_stop_go_to shumate_map_stop_go_to;

// shumate.MapLayer

alias c_shumate_map_layer_get_type shumate_map_layer_get_type;
alias c_shumate_map_layer_new shumate_map_layer_new;

// shumate.MapSource

alias c_shumate_map_source_get_type shumate_map_source_get_type;
alias c_shumate_map_source_fill_tile_async shumate_map_source_fill_tile_async;
alias c_shumate_map_source_fill_tile_finish shumate_map_source_fill_tile_finish;
alias c_shumate_map_source_get_column_count shumate_map_source_get_column_count;
alias c_shumate_map_source_get_id shumate_map_source_get_id;
alias c_shumate_map_source_get_latitude shumate_map_source_get_latitude;
alias c_shumate_map_source_get_license shumate_map_source_get_license;
alias c_shumate_map_source_get_license_uri shumate_map_source_get_license_uri;
alias c_shumate_map_source_get_longitude shumate_map_source_get_longitude;
alias c_shumate_map_source_get_max_zoom_level shumate_map_source_get_max_zoom_level;
alias c_shumate_map_source_get_meters_per_pixel shumate_map_source_get_meters_per_pixel;
alias c_shumate_map_source_get_min_zoom_level shumate_map_source_get_min_zoom_level;
alias c_shumate_map_source_get_name shumate_map_source_get_name;
alias c_shumate_map_source_get_projection shumate_map_source_get_projection;
alias c_shumate_map_source_get_row_count shumate_map_source_get_row_count;
alias c_shumate_map_source_get_tile_size shumate_map_source_get_tile_size;
alias c_shumate_map_source_get_tile_size_at_zoom shumate_map_source_get_tile_size_at_zoom;
alias c_shumate_map_source_get_x shumate_map_source_get_x;
alias c_shumate_map_source_get_y shumate_map_source_get_y;
alias c_shumate_map_source_set_id shumate_map_source_set_id;
alias c_shumate_map_source_set_license shumate_map_source_set_license;
alias c_shumate_map_source_set_license_uri shumate_map_source_set_license_uri;
alias c_shumate_map_source_set_max_zoom_level shumate_map_source_set_max_zoom_level;
alias c_shumate_map_source_set_min_zoom_level shumate_map_source_set_min_zoom_level;
alias c_shumate_map_source_set_name shumate_map_source_set_name;
alias c_shumate_map_source_set_projection shumate_map_source_set_projection;
alias c_shumate_map_source_set_tile_size shumate_map_source_set_tile_size;

// shumate.MapSourceRegistry

alias c_shumate_map_source_registry_get_type shumate_map_source_registry_get_type;
alias c_shumate_map_source_registry_new shumate_map_source_registry_new;
alias c_shumate_map_source_registry_new_with_defaults shumate_map_source_registry_new_with_defaults;
alias c_shumate_map_source_registry_add shumate_map_source_registry_add;
alias c_shumate_map_source_registry_get_by_id shumate_map_source_registry_get_by_id;
alias c_shumate_map_source_registry_populate_defaults shumate_map_source_registry_populate_defaults;
alias c_shumate_map_source_registry_remove shumate_map_source_registry_remove;

// shumate.Marker

alias c_shumate_marker_get_type shumate_marker_get_type;
alias c_shumate_marker_new shumate_marker_new;
alias c_shumate_marker_animate_in shumate_marker_animate_in;
alias c_shumate_marker_animate_in_with_delay shumate_marker_animate_in_with_delay;
alias c_shumate_marker_animate_out shumate_marker_animate_out;
alias c_shumate_marker_animate_out_with_delay shumate_marker_animate_out_with_delay;
alias c_shumate_marker_get_child shumate_marker_get_child;
alias c_shumate_marker_get_draggable shumate_marker_get_draggable;
alias c_shumate_marker_get_selectable shumate_marker_get_selectable;
alias c_shumate_marker_is_selected shumate_marker_is_selected;
alias c_shumate_marker_set_child shumate_marker_set_child;
alias c_shumate_marker_set_draggable shumate_marker_set_draggable;
alias c_shumate_marker_set_selectable shumate_marker_set_selectable;

// shumate.MarkerLayer

alias c_shumate_marker_layer_get_type shumate_marker_layer_get_type;
alias c_shumate_marker_layer_new shumate_marker_layer_new;
alias c_shumate_marker_layer_new_full shumate_marker_layer_new_full;
alias c_shumate_marker_layer_add_marker shumate_marker_layer_add_marker;
alias c_shumate_marker_layer_animate_in_all_markers shumate_marker_layer_animate_in_all_markers;
alias c_shumate_marker_layer_animate_out_all_markers shumate_marker_layer_animate_out_all_markers;
alias c_shumate_marker_layer_get_markers shumate_marker_layer_get_markers;
alias c_shumate_marker_layer_get_selected shumate_marker_layer_get_selected;
alias c_shumate_marker_layer_get_selection_mode shumate_marker_layer_get_selection_mode;
alias c_shumate_marker_layer_hide_all_markers shumate_marker_layer_hide_all_markers;
alias c_shumate_marker_layer_remove_all shumate_marker_layer_remove_all;
alias c_shumate_marker_layer_remove_marker shumate_marker_layer_remove_marker;
alias c_shumate_marker_layer_select_all_markers shumate_marker_layer_select_all_markers;
alias c_shumate_marker_layer_select_marker shumate_marker_layer_select_marker;
alias c_shumate_marker_layer_set_all_markers_draggable shumate_marker_layer_set_all_markers_draggable;
alias c_shumate_marker_layer_set_all_markers_undraggable shumate_marker_layer_set_all_markers_undraggable;
alias c_shumate_marker_layer_set_selection_mode shumate_marker_layer_set_selection_mode;
alias c_shumate_marker_layer_show_all_markers shumate_marker_layer_show_all_markers;
alias c_shumate_marker_layer_unselect_all_markers shumate_marker_layer_unselect_all_markers;
alias c_shumate_marker_layer_unselect_marker shumate_marker_layer_unselect_marker;

// shumate.MemoryCache

alias c_shumate_memory_cache_get_type shumate_memory_cache_get_type;
alias c_shumate_memory_cache_new_full shumate_memory_cache_new_full;
alias c_shumate_memory_cache_clean shumate_memory_cache_clean;
alias c_shumate_memory_cache_get_size_limit shumate_memory_cache_get_size_limit;
alias c_shumate_memory_cache_set_size_limit shumate_memory_cache_set_size_limit;
alias c_shumate_memory_cache_store_texture shumate_memory_cache_store_texture;
alias c_shumate_memory_cache_try_fill_tile shumate_memory_cache_try_fill_tile;

// shumate.PathLayer

alias c_shumate_path_layer_get_type shumate_path_layer_get_type;
alias c_shumate_path_layer_new shumate_path_layer_new;
alias c_shumate_path_layer_add_node shumate_path_layer_add_node;
alias c_shumate_path_layer_get_closed shumate_path_layer_get_closed;
alias c_shumate_path_layer_get_dash shumate_path_layer_get_dash;
alias c_shumate_path_layer_get_fill shumate_path_layer_get_fill;
alias c_shumate_path_layer_get_fill_color shumate_path_layer_get_fill_color;
alias c_shumate_path_layer_get_nodes shumate_path_layer_get_nodes;
alias c_shumate_path_layer_get_outline_color shumate_path_layer_get_outline_color;
alias c_shumate_path_layer_get_outline_width shumate_path_layer_get_outline_width;
alias c_shumate_path_layer_get_stroke shumate_path_layer_get_stroke;
alias c_shumate_path_layer_get_stroke_color shumate_path_layer_get_stroke_color;
alias c_shumate_path_layer_get_stroke_width shumate_path_layer_get_stroke_width;
alias c_shumate_path_layer_insert_node shumate_path_layer_insert_node;
alias c_shumate_path_layer_remove_all shumate_path_layer_remove_all;
alias c_shumate_path_layer_remove_node shumate_path_layer_remove_node;
alias c_shumate_path_layer_set_closed shumate_path_layer_set_closed;
alias c_shumate_path_layer_set_dash shumate_path_layer_set_dash;
alias c_shumate_path_layer_set_fill shumate_path_layer_set_fill;
alias c_shumate_path_layer_set_fill_color shumate_path_layer_set_fill_color;
alias c_shumate_path_layer_set_outline_color shumate_path_layer_set_outline_color;
alias c_shumate_path_layer_set_outline_width shumate_path_layer_set_outline_width;
alias c_shumate_path_layer_set_stroke shumate_path_layer_set_stroke;
alias c_shumate_path_layer_set_stroke_color shumate_path_layer_set_stroke_color;
alias c_shumate_path_layer_set_stroke_width shumate_path_layer_set_stroke_width;

// shumate.Point

alias c_shumate_point_get_type shumate_point_get_type;
alias c_shumate_point_new shumate_point_new;

// shumate.RasterRenderer

alias c_shumate_raster_renderer_get_type shumate_raster_renderer_get_type;
alias c_shumate_raster_renderer_new shumate_raster_renderer_new;
alias c_shumate_raster_renderer_new_from_url shumate_raster_renderer_new_from_url;
alias c_shumate_raster_renderer_new_full shumate_raster_renderer_new_full;
alias c_shumate_raster_renderer_new_full_from_url shumate_raster_renderer_new_full_from_url;

// shumate.Scale

alias c_shumate_scale_get_type shumate_scale_get_type;
alias c_shumate_scale_new shumate_scale_new;
alias c_shumate_scale_get_max_width shumate_scale_get_max_width;
alias c_shumate_scale_get_unit shumate_scale_get_unit;
alias c_shumate_scale_get_viewport shumate_scale_get_viewport;
alias c_shumate_scale_set_max_width shumate_scale_set_max_width;
alias c_shumate_scale_set_unit shumate_scale_set_unit;
alias c_shumate_scale_set_viewport shumate_scale_set_viewport;

// shumate.SimpleMap

alias c_shumate_simple_map_get_type shumate_simple_map_get_type;
alias c_shumate_simple_map_new shumate_simple_map_new;
alias c_shumate_simple_map_add_overlay_layer shumate_simple_map_add_overlay_layer;
alias c_shumate_simple_map_get_compass shumate_simple_map_get_compass;
alias c_shumate_simple_map_get_license shumate_simple_map_get_license;
alias c_shumate_simple_map_get_map_source shumate_simple_map_get_map_source;
alias c_shumate_simple_map_get_scale shumate_simple_map_get_scale;
alias c_shumate_simple_map_get_show_zoom_buttons shumate_simple_map_get_show_zoom_buttons;
alias c_shumate_simple_map_get_viewport shumate_simple_map_get_viewport;
alias c_shumate_simple_map_insert_overlay_layer shumate_simple_map_insert_overlay_layer;
alias c_shumate_simple_map_remove_overlay_layer shumate_simple_map_remove_overlay_layer;
alias c_shumate_simple_map_set_map_source shumate_simple_map_set_map_source;
alias c_shumate_simple_map_set_show_zoom_buttons shumate_simple_map_set_show_zoom_buttons;

// shumate.Tile

alias c_shumate_tile_get_type shumate_tile_get_type;
alias c_shumate_tile_new shumate_tile_new;
alias c_shumate_tile_new_full shumate_tile_new_full;
alias c_shumate_tile_get_etag shumate_tile_get_etag;
alias c_shumate_tile_get_fade_in shumate_tile_get_fade_in;
alias c_shumate_tile_get_modified_time shumate_tile_get_modified_time;
alias c_shumate_tile_get_size shumate_tile_get_size;
alias c_shumate_tile_get_state shumate_tile_get_state;
alias c_shumate_tile_get_texture shumate_tile_get_texture;
alias c_shumate_tile_get_x shumate_tile_get_x;
alias c_shumate_tile_get_y shumate_tile_get_y;
alias c_shumate_tile_get_zoom_level shumate_tile_get_zoom_level;
alias c_shumate_tile_set_etag shumate_tile_set_etag;
alias c_shumate_tile_set_fade_in shumate_tile_set_fade_in;
alias c_shumate_tile_set_modified_time shumate_tile_set_modified_time;
alias c_shumate_tile_set_size shumate_tile_set_size;
alias c_shumate_tile_set_state shumate_tile_set_state;
alias c_shumate_tile_set_texture shumate_tile_set_texture;
alias c_shumate_tile_set_x shumate_tile_set_x;
alias c_shumate_tile_set_y shumate_tile_set_y;
alias c_shumate_tile_set_zoom_level shumate_tile_set_zoom_level;

// shumate.TileDownloader

alias c_shumate_tile_downloader_get_type shumate_tile_downloader_get_type;
alias c_shumate_tile_downloader_new shumate_tile_downloader_new;

// shumate.VectorRenderer

alias c_shumate_vector_renderer_get_type shumate_vector_renderer_get_type;
alias c_shumate_vector_renderer_new shumate_vector_renderer_new;
alias c_shumate_vector_renderer_new_from_url shumate_vector_renderer_new_from_url;
alias c_shumate_vector_renderer_new_full shumate_vector_renderer_new_full;
alias c_shumate_vector_renderer_new_full_from_url shumate_vector_renderer_new_full_from_url;
alias c_shumate_vector_renderer_is_supported shumate_vector_renderer_is_supported;

// shumate.Viewport

alias c_shumate_viewport_get_type shumate_viewport_get_type;
alias c_shumate_viewport_new shumate_viewport_new;
alias c_shumate_viewport_get_max_zoom_level shumate_viewport_get_max_zoom_level;
alias c_shumate_viewport_get_min_zoom_level shumate_viewport_get_min_zoom_level;
alias c_shumate_viewport_get_reference_map_source shumate_viewport_get_reference_map_source;
alias c_shumate_viewport_get_rotation shumate_viewport_get_rotation;
alias c_shumate_viewport_get_zoom_level shumate_viewport_get_zoom_level;
alias c_shumate_viewport_location_to_widget_coords shumate_viewport_location_to_widget_coords;
alias c_shumate_viewport_set_max_zoom_level shumate_viewport_set_max_zoom_level;
alias c_shumate_viewport_set_min_zoom_level shumate_viewport_set_min_zoom_level;
alias c_shumate_viewport_set_reference_map_source shumate_viewport_set_reference_map_source;
alias c_shumate_viewport_set_rotation shumate_viewport_set_rotation;
alias c_shumate_viewport_set_zoom_level shumate_viewport_set_zoom_level;
alias c_shumate_viewport_widget_coords_to_location shumate_viewport_widget_coords_to_location;
alias c_shumate_viewport_zoom_in shumate_viewport_zoom_in;
alias c_shumate_viewport_zoom_out shumate_viewport_zoom_out;
