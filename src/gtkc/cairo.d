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


module gtkc.cairo;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.cairotypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// cairo.Context

	Linker.link(cairo_create, \"cairo_create\", LIBRARY.CAIRO);
	Linker.link(cairo_reference, \"cairo_reference\", LIBRARY.CAIRO);
	Linker.link(cairo_destroy, \"cairo_destroy\", LIBRARY.CAIRO);
	Linker.link(cairo_status, \"cairo_status\", LIBRARY.CAIRO);
	Linker.link(cairo_save, \"cairo_save\", LIBRARY.CAIRO);
	Linker.link(cairo_restore, \"cairo_restore\", LIBRARY.CAIRO);
	Linker.link(cairo_get_target, \"cairo_get_target\", LIBRARY.CAIRO);
	Linker.link(cairo_push_group, \"cairo_push_group\", LIBRARY.CAIRO);
	Linker.link(cairo_push_group_with_content, \"cairo_push_group_with_content\", LIBRARY.CAIRO);
	Linker.link(cairo_pop_group, \"cairo_pop_group\", LIBRARY.CAIRO);
	Linker.link(cairo_pop_group_to_source, \"cairo_pop_group_to_source\", LIBRARY.CAIRO);
	Linker.link(cairo_get_group_target, \"cairo_get_group_target\", LIBRARY.CAIRO);
	Linker.link(cairo_set_source_rgb, \"cairo_set_source_rgb\", LIBRARY.CAIRO);
	Linker.link(cairo_set_source_rgba, \"cairo_set_source_rgba\", LIBRARY.CAIRO);
	Linker.link(cairo_set_source, \"cairo_set_source\", LIBRARY.CAIRO);
	Linker.link(cairo_set_source_surface, \"cairo_set_source_surface\", LIBRARY.CAIRO);
	Linker.link(cairo_get_source, \"cairo_get_source\", LIBRARY.CAIRO);
	Linker.link(cairo_set_antialias, \"cairo_set_antialias\", LIBRARY.CAIRO);
	Linker.link(cairo_get_antialias, \"cairo_get_antialias\", LIBRARY.CAIRO);
	Linker.link(cairo_set_dash, \"cairo_set_dash\", LIBRARY.CAIRO);
	Linker.link(cairo_get_dash_count, \"cairo_get_dash_count\", LIBRARY.CAIRO);
	Linker.link(cairo_get_dash, \"cairo_get_dash\", LIBRARY.CAIRO);
	Linker.link(cairo_set_fill_rule, \"cairo_set_fill_rule\", LIBRARY.CAIRO);
	Linker.link(cairo_get_fill_rule, \"cairo_get_fill_rule\", LIBRARY.CAIRO);
	Linker.link(cairo_set_line_cap, \"cairo_set_line_cap\", LIBRARY.CAIRO);
	Linker.link(cairo_get_line_cap, \"cairo_get_line_cap\", LIBRARY.CAIRO);
	Linker.link(cairo_set_line_join, \"cairo_set_line_join\", LIBRARY.CAIRO);
	Linker.link(cairo_get_line_join, \"cairo_get_line_join\", LIBRARY.CAIRO);
	Linker.link(cairo_set_line_width, \"cairo_set_line_width\", LIBRARY.CAIRO);
	Linker.link(cairo_get_line_width, \"cairo_get_line_width\", LIBRARY.CAIRO);
	Linker.link(cairo_set_miter_limit, \"cairo_set_miter_limit\", LIBRARY.CAIRO);
	Linker.link(cairo_get_miter_limit, \"cairo_get_miter_limit\", LIBRARY.CAIRO);
	Linker.link(cairo_set_operator, \"cairo_set_operator\", LIBRARY.CAIRO);
	Linker.link(cairo_get_operator, \"cairo_get_operator\", LIBRARY.CAIRO);
	Linker.link(cairo_set_tolerance, \"cairo_set_tolerance\", LIBRARY.CAIRO);
	Linker.link(cairo_get_tolerance, \"cairo_get_tolerance\", LIBRARY.CAIRO);
	Linker.link(cairo_clip, \"cairo_clip\", LIBRARY.CAIRO);
	Linker.link(cairo_clip_preserve, \"cairo_clip_preserve\", LIBRARY.CAIRO);
	Linker.link(cairo_clip_extents, \"cairo_clip_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_in_clip, \"cairo_in_clip\", LIBRARY.CAIRO);
	Linker.link(cairo_reset_clip, \"cairo_reset_clip\", LIBRARY.CAIRO);
	Linker.link(cairo_rectangle_list_destroy, \"cairo_rectangle_list_destroy\", LIBRARY.CAIRO);
	Linker.link(cairo_copy_clip_rectangle_list, \"cairo_copy_clip_rectangle_list\", LIBRARY.CAIRO);
	Linker.link(cairo_fill, \"cairo_fill\", LIBRARY.CAIRO);
	Linker.link(cairo_fill_preserve, \"cairo_fill_preserve\", LIBRARY.CAIRO);
	Linker.link(cairo_fill_extents, \"cairo_fill_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_in_fill, \"cairo_in_fill\", LIBRARY.CAIRO);
	Linker.link(cairo_mask, \"cairo_mask\", LIBRARY.CAIRO);
	Linker.link(cairo_mask_surface, \"cairo_mask_surface\", LIBRARY.CAIRO);
	Linker.link(cairo_paint, \"cairo_paint\", LIBRARY.CAIRO);
	Linker.link(cairo_paint_with_alpha, \"cairo_paint_with_alpha\", LIBRARY.CAIRO);
	Linker.link(cairo_stroke, \"cairo_stroke\", LIBRARY.CAIRO);
	Linker.link(cairo_stroke_preserve, \"cairo_stroke_preserve\", LIBRARY.CAIRO);
	Linker.link(cairo_stroke_extents, \"cairo_stroke_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_in_stroke, \"cairo_in_stroke\", LIBRARY.CAIRO);
	Linker.link(cairo_copy_page, \"cairo_copy_page\", LIBRARY.CAIRO);
	Linker.link(cairo_show_page, \"cairo_show_page\", LIBRARY.CAIRO);
	Linker.link(cairo_get_reference_count, \"cairo_get_reference_count\", LIBRARY.CAIRO);
	Linker.link(cairo_set_user_data, \"cairo_set_user_data\", LIBRARY.CAIRO);
	Linker.link(cairo_get_user_data, \"cairo_get_user_data\", LIBRARY.CAIRO);
	Linker.link(cairo_copy_path, \"cairo_copy_path\", LIBRARY.CAIRO);
	Linker.link(cairo_copy_path_flat, \"cairo_copy_path_flat\", LIBRARY.CAIRO);
	Linker.link(cairo_path_destroy, \"cairo_path_destroy\", LIBRARY.CAIRO);
	Linker.link(cairo_append_path, \"cairo_append_path\", LIBRARY.CAIRO);
	Linker.link(cairo_has_current_point, \"cairo_has_current_point\", LIBRARY.CAIRO);
	Linker.link(cairo_get_current_point, \"cairo_get_current_point\", LIBRARY.CAIRO);
	Linker.link(cairo_new_path, \"cairo_new_path\", LIBRARY.CAIRO);
	Linker.link(cairo_new_sub_path, \"cairo_new_sub_path\", LIBRARY.CAIRO);
	Linker.link(cairo_close_path, \"cairo_close_path\", LIBRARY.CAIRO);
	Linker.link(cairo_arc, \"cairo_arc\", LIBRARY.CAIRO);
	Linker.link(cairo_arc_negative, \"cairo_arc_negative\", LIBRARY.CAIRO);
	Linker.link(cairo_curve_to, \"cairo_curve_to\", LIBRARY.CAIRO);
	Linker.link(cairo_line_to, \"cairo_line_to\", LIBRARY.CAIRO);
	Linker.link(cairo_move_to, \"cairo_move_to\", LIBRARY.CAIRO);
	Linker.link(cairo_rectangle, \"cairo_rectangle\", LIBRARY.CAIRO);
	Linker.link(cairo_glyph_path, \"cairo_glyph_path\", LIBRARY.CAIRO);
	Linker.link(cairo_text_path, \"cairo_text_path\", LIBRARY.CAIRO);
	Linker.link(cairo_rel_curve_to, \"cairo_rel_curve_to\", LIBRARY.CAIRO);
	Linker.link(cairo_rel_line_to, \"cairo_rel_line_to\", LIBRARY.CAIRO);
	Linker.link(cairo_rel_move_to, \"cairo_rel_move_to\", LIBRARY.CAIRO);
	Linker.link(cairo_path_extents, \"cairo_path_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_translate, \"cairo_translate\", LIBRARY.CAIRO);
	Linker.link(cairo_scale, \"cairo_scale\", LIBRARY.CAIRO);
	Linker.link(cairo_rotate, \"cairo_rotate\", LIBRARY.CAIRO);
	Linker.link(cairo_transform, \"cairo_transform\", LIBRARY.CAIRO);
	Linker.link(cairo_set_matrix, \"cairo_set_matrix\", LIBRARY.CAIRO);
	Linker.link(cairo_get_matrix, \"cairo_get_matrix\", LIBRARY.CAIRO);
	Linker.link(cairo_identity_matrix, \"cairo_identity_matrix\", LIBRARY.CAIRO);
	Linker.link(cairo_user_to_device, \"cairo_user_to_device\", LIBRARY.CAIRO);
	Linker.link(cairo_user_to_device_distance, \"cairo_user_to_device_distance\", LIBRARY.CAIRO);
	Linker.link(cairo_device_to_user, \"cairo_device_to_user\", LIBRARY.CAIRO);
	Linker.link(cairo_device_to_user_distance, \"cairo_device_to_user_distance\", LIBRARY.CAIRO);
	Linker.link(cairo_select_font_face, \"cairo_select_font_face\", LIBRARY.CAIRO);
	Linker.link(cairo_set_font_size, \"cairo_set_font_size\", LIBRARY.CAIRO);
	Linker.link(cairo_set_font_matrix, \"cairo_set_font_matrix\", LIBRARY.CAIRO);
	Linker.link(cairo_get_font_matrix, \"cairo_get_font_matrix\", LIBRARY.CAIRO);
	Linker.link(cairo_set_font_options, \"cairo_set_font_options\", LIBRARY.CAIRO);
	Linker.link(cairo_get_font_options, \"cairo_get_font_options\", LIBRARY.CAIRO);
	Linker.link(cairo_set_font_face, \"cairo_set_font_face\", LIBRARY.CAIRO);
	Linker.link(cairo_get_font_face, \"cairo_get_font_face\", LIBRARY.CAIRO);
	Linker.link(cairo_set_scaled_font, \"cairo_set_scaled_font\", LIBRARY.CAIRO);
	Linker.link(cairo_get_scaled_font, \"cairo_get_scaled_font\", LIBRARY.CAIRO);
	Linker.link(cairo_show_text, \"cairo_show_text\", LIBRARY.CAIRO);
	Linker.link(cairo_show_glyphs, \"cairo_show_glyphs\", LIBRARY.CAIRO);
	Linker.link(cairo_show_text_glyphs, \"cairo_show_text_glyphs\", LIBRARY.CAIRO);
	Linker.link(cairo_font_extents, \"cairo_font_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_text_extents, \"cairo_text_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_glyph_extents, \"cairo_glyph_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_toy_font_face_create, \"cairo_toy_font_face_create\", LIBRARY.CAIRO);
	Linker.link(cairo_toy_font_face_get_family, \"cairo_toy_font_face_get_family\", LIBRARY.CAIRO);
	Linker.link(cairo_toy_font_face_get_slant, \"cairo_toy_font_face_get_slant\", LIBRARY.CAIRO);
	Linker.link(cairo_toy_font_face_get_weight, \"cairo_toy_font_face_get_weight\", LIBRARY.CAIRO);
	Linker.link(cairo_glyph_allocate, \"cairo_glyph_allocate\", LIBRARY.CAIRO);
	Linker.link(cairo_glyph_free, \"cairo_glyph_free\", LIBRARY.CAIRO);
	Linker.link(cairo_text_cluster_allocate, \"cairo_text_cluster_allocate\", LIBRARY.CAIRO);
	Linker.link(cairo_text_cluster_free, \"cairo_text_cluster_free\", LIBRARY.CAIRO);

	// cairo.Pattern

	Linker.link(cairo_pattern_add_color_stop_rgb, \"cairo_pattern_add_color_stop_rgb\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_add_color_stop_rgba, \"cairo_pattern_add_color_stop_rgba\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_color_stop_count, \"cairo_pattern_get_color_stop_count\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_color_stop_rgba, \"cairo_pattern_get_color_stop_rgba\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_rgb, \"cairo_pattern_create_rgb\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_rgba, \"cairo_pattern_create_rgba\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_rgba, \"cairo_pattern_get_rgba\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_for_surface, \"cairo_pattern_create_for_surface\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_surface, \"cairo_pattern_get_surface\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_linear, \"cairo_pattern_create_linear\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_linear_points, \"cairo_pattern_get_linear_points\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_radial, \"cairo_pattern_create_radial\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_radial_circles, \"cairo_pattern_get_radial_circles\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_mesh, \"cairo_pattern_create_mesh\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_reference, \"cairo_pattern_reference\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_destroy, \"cairo_pattern_destroy\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_status, \"cairo_pattern_status\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_set_extend, \"cairo_pattern_set_extend\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_extend, \"cairo_pattern_get_extend\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_set_filter, \"cairo_pattern_set_filter\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_filter, \"cairo_pattern_get_filter\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_set_matrix, \"cairo_pattern_set_matrix\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_matrix, \"cairo_pattern_get_matrix\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_type, \"cairo_pattern_get_type\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_reference_count, \"cairo_pattern_get_reference_count\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_set_user_data, \"cairo_pattern_set_user_data\", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_user_data, \"cairo_pattern_get_user_data\", LIBRARY.CAIRO);

	// cairo.MeshPattern

	Linker.link(cairo_mesh_pattern_begin_patch, \"cairo_mesh_pattern_begin_patch\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_end_patch, \"cairo_mesh_pattern_end_patch\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_move_to, \"cairo_mesh_pattern_move_to\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_line_to, \"cairo_mesh_pattern_line_to\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_curve_to, \"cairo_mesh_pattern_curve_to\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_set_control_point, \"cairo_mesh_pattern_set_control_point\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_set_corner_color_rgb, \"cairo_mesh_pattern_set_corner_color_rgb\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_set_corner_color_rgba, \"cairo_mesh_pattern_set_corner_color_rgba\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_get_patch_count, \"cairo_mesh_pattern_get_patch_count\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_get_path, \"cairo_mesh_pattern_get_path\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_get_control_point, \"cairo_mesh_pattern_get_control_point\", LIBRARY.CAIRO);
	Linker.link(cairo_mesh_pattern_get_corner_color_rgba, \"cairo_mesh_pattern_get_corner_color_rgba\", LIBRARY.CAIRO);

	// cairo.Region

	Linker.link(cairo_region_create, \"cairo_region_create\", LIBRARY.CAIRO);
	Linker.link(cairo_region_create_rectangle, \"cairo_region_create_rectangle\", LIBRARY.CAIRO);
	Linker.link(cairo_region_create_rectangles, \"cairo_region_create_rectangles\", LIBRARY.CAIRO);
	Linker.link(cairo_region_copy, \"cairo_region_copy\", LIBRARY.CAIRO);
	Linker.link(cairo_region_reference, \"cairo_region_reference\", LIBRARY.CAIRO);
	Linker.link(cairo_region_destroy, \"cairo_region_destroy\", LIBRARY.CAIRO);
	Linker.link(cairo_region_status, \"cairo_region_status\", LIBRARY.CAIRO);
	Linker.link(cairo_region_get_extents, \"cairo_region_get_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_region_num_rectangles, \"cairo_region_num_rectangles\", LIBRARY.CAIRO);
	Linker.link(cairo_region_get_rectangle, \"cairo_region_get_rectangle\", LIBRARY.CAIRO);
	Linker.link(cairo_region_is_empty, \"cairo_region_is_empty\", LIBRARY.CAIRO);
	Linker.link(cairo_region_contains_point, \"cairo_region_contains_point\", LIBRARY.CAIRO);
	Linker.link(cairo_region_contains_rectangle, \"cairo_region_contains_rectangle\", LIBRARY.CAIRO);
	Linker.link(cairo_region_equal, \"cairo_region_equal\", LIBRARY.CAIRO);
	Linker.link(cairo_region_translate, \"cairo_region_translate\", LIBRARY.CAIRO);
	Linker.link(cairo_region_intersect, \"cairo_region_intersect\", LIBRARY.CAIRO);
	Linker.link(cairo_region_intersect_rectangle, \"cairo_region_intersect_rectangle\", LIBRARY.CAIRO);
	Linker.link(cairo_region_subtract, \"cairo_region_subtract\", LIBRARY.CAIRO);
	Linker.link(cairo_region_subtract_rectangle, \"cairo_region_subtract_rectangle\", LIBRARY.CAIRO);
	Linker.link(cairo_region_union, \"cairo_region_union\", LIBRARY.CAIRO);
	Linker.link(cairo_region_union_rectangle, \"cairo_region_union_rectangle\", LIBRARY.CAIRO);
	Linker.link(cairo_region_xor, \"cairo_region_xor\", LIBRARY.CAIRO);
	Linker.link(cairo_region_xor_rectangle, \"cairo_region_xor_rectangle\", LIBRARY.CAIRO);

	// cairo.RasterSource

	Linker.link(cairo_pattern_create_raster_source, \"cairo_pattern_create_raster_source\", LIBRARY.CAIRO);
	Linker.link(cairo_raster_source_pattern_set_callback_data, \"cairo_raster_source_pattern_set_callback_data\", LIBRARY.CAIRO);
	Linker.link(cairo_raster_source_pattern_get_callback_data, \"cairo_raster_source_pattern_get_callback_data\", LIBRARY.CAIRO);
	Linker.link(cairo_raster_source_pattern_set_acquire, \"cairo_raster_source_pattern_set_acquire\", LIBRARY.CAIRO);
	Linker.link(cairo_raster_source_pattern_get_acquire, \"cairo_raster_source_pattern_get_acquire\", LIBRARY.CAIRO);
	Linker.link(cairo_raster_source_pattern_set_snapshot, \"cairo_raster_source_pattern_set_snapshot\", LIBRARY.CAIRO);
	Linker.link(cairo_raster_source_pattern_get_snapshot, \"cairo_raster_source_pattern_get_snapshot\", LIBRARY.CAIRO);
	Linker.link(cairo_raster_source_pattern_set_copy, \"cairo_raster_source_pattern_set_copy\", LIBRARY.CAIRO);
	Linker.link(cairo_raster_source_pattern_get_copy, \"cairo_raster_source_pattern_get_copy\", LIBRARY.CAIRO);
	Linker.link(cairo_raster_source_pattern_set_finish, \"cairo_raster_source_pattern_set_finish\", LIBRARY.CAIRO);
	Linker.link(cairo_raster_source_pattern_get_finish, \"cairo_raster_source_pattern_get_finish\", LIBRARY.CAIRO);

	// cairo.FontFace

	Linker.link(cairo_font_face_reference, \"cairo_font_face_reference\", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_destroy, \"cairo_font_face_destroy\", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_status, \"cairo_font_face_status\", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_get_type, \"cairo_font_face_get_type\", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_get_reference_count, \"cairo_font_face_get_reference_count\", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_set_user_data, \"cairo_font_face_set_user_data\", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_get_user_data, \"cairo_font_face_get_user_data\", LIBRARY.CAIRO);

	// cairo.ScaledFont

	Linker.link(cairo_scaled_font_create, \"cairo_scaled_font_create\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_reference, \"cairo_scaled_font_reference\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_destroy, \"cairo_scaled_font_destroy\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_status, \"cairo_scaled_font_status\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_extents, \"cairo_scaled_font_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_text_extents, \"cairo_scaled_font_text_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_glyph_extents, \"cairo_scaled_font_glyph_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_text_to_glyphs, \"cairo_scaled_font_text_to_glyphs\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_font_face, \"cairo_scaled_font_get_font_face\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_font_options, \"cairo_scaled_font_get_font_options\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_font_matrix, \"cairo_scaled_font_get_font_matrix\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_ctm, \"cairo_scaled_font_get_ctm\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_scale_matrix, \"cairo_scaled_font_get_scale_matrix\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_type, \"cairo_scaled_font_get_type\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_reference_count, \"cairo_scaled_font_get_reference_count\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_set_user_data, \"cairo_scaled_font_set_user_data\", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_user_data, \"cairo_scaled_font_get_user_data\", LIBRARY.CAIRO);

	// cairo.FontOption

	Linker.link(cairo_font_options_create, \"cairo_font_options_create\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_copy, \"cairo_font_options_copy\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_destroy, \"cairo_font_options_destroy\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_status, \"cairo_font_options_status\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_merge, \"cairo_font_options_merge\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_hash, \"cairo_font_options_hash\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_equal, \"cairo_font_options_equal\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_set_antialias, \"cairo_font_options_set_antialias\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_get_antialias, \"cairo_font_options_get_antialias\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_set_subpixel_order, \"cairo_font_options_set_subpixel_order\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_get_subpixel_order, \"cairo_font_options_get_subpixel_order\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_set_hint_style, \"cairo_font_options_set_hint_style\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_get_hint_style, \"cairo_font_options_get_hint_style\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_set_hint_metrics, \"cairo_font_options_set_hint_metrics\", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_get_hint_metrics, \"cairo_font_options_get_hint_metrics\", LIBRARY.CAIRO);

	// cairo.UserFontFace

	Linker.link(cairo_user_font_face_create, \"cairo_user_font_face_create\", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_set_init_func, \"cairo_user_font_face_set_init_func\", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_get_init_func, \"cairo_user_font_face_get_init_func\", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_set_render_glyph_func, \"cairo_user_font_face_set_render_glyph_func\", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_get_render_glyph_func, \"cairo_user_font_face_get_render_glyph_func\", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_set_unicode_to_glyph_func, \"cairo_user_font_face_set_unicode_to_glyph_func\", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_get_unicode_to_glyph_func, \"cairo_user_font_face_get_unicode_to_glyph_func\", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_set_text_to_glyphs_func, \"cairo_user_font_face_set_text_to_glyphs_func\", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_get_text_to_glyphs_func, \"cairo_user_font_face_get_text_to_glyphs_func\", LIBRARY.CAIRO);

	// cairo.Device

	Linker.link(cairo_device_reference, \"cairo_device_reference\", LIBRARY.CAIRO);
	Linker.link(cairo_device_destroy, \"cairo_device_destroy\", LIBRARY.CAIRO);
	Linker.link(cairo_device_status, \"cairo_device_status\", LIBRARY.CAIRO);
	Linker.link(cairo_device_finish, \"cairo_device_finish\", LIBRARY.CAIRO);
	Linker.link(cairo_device_flush, \"cairo_device_flush\", LIBRARY.CAIRO);
	Linker.link(cairo_device_get_type, \"cairo_device_get_type\", LIBRARY.CAIRO);
	Linker.link(cairo_device_get_reference_count, \"cairo_device_get_reference_count\", LIBRARY.CAIRO);
	Linker.link(cairo_device_set_user_data, \"cairo_device_set_user_data\", LIBRARY.CAIRO);
	Linker.link(cairo_device_get_user_data, \"cairo_device_get_user_data\", LIBRARY.CAIRO);
	Linker.link(cairo_device_acquire, \"cairo_device_acquire\", LIBRARY.CAIRO);
	Linker.link(cairo_device_release, \"cairo_device_release\", LIBRARY.CAIRO);

	// cairo.Surface

	Linker.link(cairo_surface_create_similar, \"cairo_surface_create_similar\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_create_similar_image, \"cairo_surface_create_similar_image\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_create_for_rectangle, \"cairo_surface_create_for_rectangle\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_reference, \"cairo_surface_reference\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_destroy, \"cairo_surface_destroy\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_status, \"cairo_surface_status\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_finish, \"cairo_surface_finish\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_flush, \"cairo_surface_flush\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_device, \"cairo_surface_get_device\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_font_options, \"cairo_surface_get_font_options\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_content, \"cairo_surface_get_content\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_mark_dirty, \"cairo_surface_mark_dirty\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_mark_dirty_rectangle, \"cairo_surface_mark_dirty_rectangle\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_set_device_offset, \"cairo_surface_set_device_offset\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_device_offset, \"cairo_surface_get_device_offset\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_set_fallback_resolution, \"cairo_surface_set_fallback_resolution\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_fallback_resolution, \"cairo_surface_get_fallback_resolution\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_type, \"cairo_surface_get_type\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_reference_count, \"cairo_surface_get_reference_count\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_set_user_data, \"cairo_surface_set_user_data\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_user_data, \"cairo_surface_get_user_data\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_copy_page, \"cairo_surface_copy_page\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_show_page, \"cairo_surface_show_page\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_has_show_text_glyphs, \"cairo_surface_has_show_text_glyphs\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_set_mime_data, \"cairo_surface_set_mime_data\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_mime_data, \"cairo_surface_get_mime_data\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_supports_mime_type, \"cairo_surface_supports_mime_type\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_map_to_image, \"cairo_surface_map_to_image\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_unmap_image, \"cairo_surface_unmap_image\", LIBRARY.CAIRO);

	// cairo.ImageSurface

	Linker.link(cairo_format_stride_for_width, \"cairo_format_stride_for_width\", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_create, \"cairo_image_surface_create\", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_create_for_data, \"cairo_image_surface_create_for_data\", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_get_data, \"cairo_image_surface_get_data\", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_get_format, \"cairo_image_surface_get_format\", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_get_width, \"cairo_image_surface_get_width\", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_get_height, \"cairo_image_surface_get_height\", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_get_stride, \"cairo_image_surface_get_stride\", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_create_from_png, \"cairo_image_surface_create_from_png\", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_create_from_png_stream, \"cairo_image_surface_create_from_png_stream\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_write_to_png, \"cairo_surface_write_to_png\", LIBRARY.CAIRO);
	Linker.link(cairo_surface_write_to_png_stream, \"cairo_surface_write_to_png_stream\", LIBRARY.CAIRO);

	// cairo.PdfSurface

	Linker.link(cairo_pdf_surface_create, \"cairo_pdf_surface_create\", LIBRARY.CAIRO);
	Linker.link(cairo_pdf_surface_create_for_stream, \"cairo_pdf_surface_create_for_stream\", LIBRARY.CAIRO);
	Linker.link(cairo_pdf_surface_restrict_to_version, \"cairo_pdf_surface_restrict_to_version\", LIBRARY.CAIRO);
	Linker.link(cairo_pdf_get_versions, \"cairo_pdf_get_versions\", LIBRARY.CAIRO);
	Linker.link(cairo_pdf_version_to_string, \"cairo_pdf_version_to_string\", LIBRARY.CAIRO);
	Linker.link(cairo_pdf_surface_set_size, \"cairo_pdf_surface_set_size\", LIBRARY.CAIRO);

	// cairo.PostScriptSurface

	Linker.link(cairo_ps_surface_create, \"cairo_ps_surface_create\", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_create_for_stream, \"cairo_ps_surface_create_for_stream\", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_restrict_to_level, \"cairo_ps_surface_restrict_to_level\", LIBRARY.CAIRO);
	Linker.link(cairo_ps_get_levels, \"cairo_ps_get_levels\", LIBRARY.CAIRO);
	Linker.link(cairo_ps_level_to_string, \"cairo_ps_level_to_string\", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_set_eps, \"cairo_ps_surface_set_eps\", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_get_eps, \"cairo_ps_surface_get_eps\", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_set_size, \"cairo_ps_surface_set_size\", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_dsc_begin_setup, \"cairo_ps_surface_dsc_begin_setup\", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_dsc_begin_page_setup, \"cairo_ps_surface_dsc_begin_page_setup\", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_dsc_comment, \"cairo_ps_surface_dsc_comment\", LIBRARY.CAIRO);

	// cairo.RecordingSurface

	Linker.link(cairo_recording_surface_create, \"cairo_recording_surface_create\", LIBRARY.CAIRO);
	Linker.link(cairo_recording_surface_ink_extents, \"cairo_recording_surface_ink_extents\", LIBRARY.CAIRO);
	Linker.link(cairo_recording_surface_get_extents, \"cairo_recording_surface_get_extents\", LIBRARY.CAIRO);

	// cairo.SvgSurface

	Linker.link(cairo_svg_surface_create, \"cairo_svg_surface_create\", LIBRARY.CAIRO);
	Linker.link(cairo_svg_surface_create_for_stream, \"cairo_svg_surface_create_for_stream\", LIBRARY.CAIRO);
	Linker.link(cairo_svg_surface_restrict_to_version, \"cairo_svg_surface_restrict_to_version\", LIBRARY.CAIRO);
	Linker.link(cairo_svg_get_versions, \"cairo_svg_get_versions\", LIBRARY.CAIRO);
	Linker.link(cairo_svg_version_to_string, \"cairo_svg_version_to_string\", LIBRARY.CAIRO);

	// cairo.Script

	Linker.link(cairo_script_create, \"cairo_script_create\", LIBRARY.CAIRO);
	Linker.link(cairo_script_create_for_stream, \"cairo_script_create_for_stream\", LIBRARY.CAIRO);
	Linker.link(cairo_script_from_recording_surface, \"cairo_script_from_recording_surface\", LIBRARY.CAIRO);
	Linker.link(cairo_script_get_mode, \"cairo_script_get_mode\", LIBRARY.CAIRO);
	Linker.link(cairo_script_set_mode, \"cairo_script_set_mode\", LIBRARY.CAIRO);
	Linker.link(cairo_script_write_comment, \"cairo_script_write_comment\", LIBRARY.CAIRO);

	// cairo.ScriptSurface

	Linker.link(cairo_script_surface_create, \"cairo_script_surface_create\", LIBRARY.CAIRO);
	Linker.link(cairo_script_surface_create_for_target, \"cairo_script_surface_create_for_target\", LIBRARY.CAIRO);

	// cairo.Matrix

	Linker.link(cairo_matrix_init, \"cairo_matrix_init\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_init_identity, \"cairo_matrix_init_identity\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_init_translate, \"cairo_matrix_init_translate\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_init_scale, \"cairo_matrix_init_scale\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_init_rotate, \"cairo_matrix_init_rotate\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_translate, \"cairo_matrix_translate\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_scale, \"cairo_matrix_scale\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_rotate, \"cairo_matrix_rotate\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_invert, \"cairo_matrix_invert\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_multiply, \"cairo_matrix_multiply\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_transform_distance, \"cairo_matrix_transform_distance\", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_transform_point, \"cairo_matrix_transform_point\", LIBRARY.CAIRO);

	// cairo.Status

	Linker.link(cairo_status_to_string, \"cairo_status_to_string\", LIBRARY.CAIRO);
	Linker.link(cairo_debug_reset_static_data, \"cairo_debug_reset_static_data\", LIBRARY.CAIRO);

	// cairo.Version

	Linker.link(cairo_version, \"cairo_version\", LIBRARY.CAIRO);
	Linker.link(cairo_version_string, \"cairo_version_string\", LIBRARY.CAIRO);

	// cairo.

}");

mixin( gshared ~"extern(C)
{
	// cairo.Context

	cairo_t* function(cairo_surface_t* target) c_cairo_create;
	cairo_t* function(cairo_t* cr) c_cairo_reference;
	void function(cairo_t* cr) c_cairo_destroy;
	cairo_status_t function(cairo_t* cr) c_cairo_status;
	void function(cairo_t* cr) c_cairo_save;
	void function(cairo_t* cr) c_cairo_restore;
	cairo_surface_t* function(cairo_t* cr) c_cairo_get_target;
	void function(cairo_t* cr) c_cairo_push_group;
	void function(cairo_t* cr, cairo_content_t content) c_cairo_push_group_with_content;
	cairo_pattern_t* function(cairo_t* cr) c_cairo_pop_group;
	void function(cairo_t* cr) c_cairo_pop_group_to_source;
	cairo_surface_t* function(cairo_t* cr) c_cairo_get_group_target;
	void function(cairo_t* cr, double red, double green, double blue) c_cairo_set_source_rgb;
	void function(cairo_t* cr, double red, double green, double blue, double alpha) c_cairo_set_source_rgba;
	void function(cairo_t* cr, cairo_pattern_t* source) c_cairo_set_source;
	void function(cairo_t* cr, cairo_surface_t* surface, double x, double y) c_cairo_set_source_surface;
	cairo_pattern_t* function(cairo_t* cr) c_cairo_get_source;
	void function(cairo_t* cr, cairo_antialias_t antialias) c_cairo_set_antialias;
	cairo_antialias_t function(cairo_t* cr) c_cairo_get_antialias;
	void function(cairo_t* cr, double* dashes, int numDashes, double offset) c_cairo_set_dash;
	int function(cairo_t* cr) c_cairo_get_dash_count;
	void function(cairo_t* cr, double* dashes, double* offset) c_cairo_get_dash;
	void function(cairo_t* cr, cairo_fill_rule_t fillRule) c_cairo_set_fill_rule;
	cairo_fill_rule_t function(cairo_t* cr) c_cairo_get_fill_rule;
	void function(cairo_t* cr, cairo_line_cap_t lineCap) c_cairo_set_line_cap;
	cairo_line_cap_t function(cairo_t* cr) c_cairo_get_line_cap;
	void function(cairo_t* cr, cairo_line_join_t lineJoin) c_cairo_set_line_join;
	cairo_line_join_t function(cairo_t* cr) c_cairo_get_line_join;
	void function(cairo_t* cr, double width) c_cairo_set_line_width;
	double function(cairo_t* cr) c_cairo_get_line_width;
	void function(cairo_t* cr, double limit) c_cairo_set_miter_limit;
	double function(cairo_t* cr) c_cairo_get_miter_limit;
	void function(cairo_t* cr, cairo_operator_t op) c_cairo_set_operator;
	cairo_operator_t function(cairo_t* cr) c_cairo_get_operator;
	void function(cairo_t* cr, double tolerance) c_cairo_set_tolerance;
	double function(cairo_t* cr) c_cairo_get_tolerance;
	void function(cairo_t* cr) c_cairo_clip;
	void function(cairo_t* cr) c_cairo_clip_preserve;
	void function(cairo_t* cr, double* x1, double* y1, double* x2, double* y2) c_cairo_clip_extents;
	cairo_bool_t function(cairo_t* cr, double x, double y) c_cairo_in_clip;
	void function(cairo_t* cr) c_cairo_reset_clip;
	void function(cairo_rectangle_list_t* rectangleList) c_cairo_rectangle_list_destroy;
	cairo_rectangle_list_t* function(cairo_t* cr) c_cairo_copy_clip_rectangle_list;
	void function(cairo_t* cr) c_cairo_fill;
	void function(cairo_t* cr) c_cairo_fill_preserve;
	void function(cairo_t* cr, double* x1, double* y1, double* x2, double* y2) c_cairo_fill_extents;
	cairo_bool_t function(cairo_t* cr, double x, double y) c_cairo_in_fill;
	void function(cairo_t* cr, cairo_pattern_t* pattern) c_cairo_mask;
	void function(cairo_t* cr, cairo_surface_t* surface, double surfaceX, double surfaceY) c_cairo_mask_surface;
	void function(cairo_t* cr) c_cairo_paint;
	void function(cairo_t* cr, double alpha) c_cairo_paint_with_alpha;
	void function(cairo_t* cr) c_cairo_stroke;
	void function(cairo_t* cr) c_cairo_stroke_preserve;
	void function(cairo_t* cr, double* x1, double* y1, double* x2, double* y2) c_cairo_stroke_extents;
	cairo_bool_t function(cairo_t* cr, double x, double y) c_cairo_in_stroke;
	void function(cairo_t* cr) c_cairo_copy_page;
	void function(cairo_t* cr) c_cairo_show_page;
	uint function(cairo_t* cr) c_cairo_get_reference_count;
	cairo_status_t function(cairo_t* cr, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_set_user_data;
	void* function(cairo_t* cr, cairo_user_data_key_t* key) c_cairo_get_user_data;
	cairo_path_t* function(cairo_t* cr) c_cairo_copy_path;
	cairo_path_t* function(cairo_t* cr) c_cairo_copy_path_flat;
	void function(cairo_path_t* path) c_cairo_path_destroy;
	void function(cairo_t* cr, cairo_path_t* path) c_cairo_append_path;
	cairo_bool_t function(cairo_t* cr) c_cairo_has_current_point;
	void function(cairo_t* cr, double* x, double* y) c_cairo_get_current_point;
	void function(cairo_t* cr) c_cairo_new_path;
	void function(cairo_t* cr) c_cairo_new_sub_path;
	void function(cairo_t* cr) c_cairo_close_path;
	void function(cairo_t* cr, double xc, double yc, double radius, double angle1, double angle2) c_cairo_arc;
	void function(cairo_t* cr, double xc, double yc, double radius, double angle1, double angle2) c_cairo_arc_negative;
	void function(cairo_t* cr, double x1, double y1, double x2, double y2, double x3, double y3) c_cairo_curve_to;
	void function(cairo_t* cr, double x, double y) c_cairo_line_to;
	void function(cairo_t* cr, double x, double y) c_cairo_move_to;
	void function(cairo_t* cr, double x, double y, double width, double height) c_cairo_rectangle;
	void function(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs) c_cairo_glyph_path;
	void function(cairo_t* cr, char* utf8) c_cairo_text_path;
	void function(cairo_t* cr, double dx1, double dy1, double dx2, double dy2, double dx3, double dy3) c_cairo_rel_curve_to;
	void function(cairo_t* cr, double dx, double dy) c_cairo_rel_line_to;
	void function(cairo_t* cr, double dx, double dy) c_cairo_rel_move_to;
	void function(cairo_t* cr, double* x1, double* y1, double* x2, double* y2) c_cairo_path_extents;
	void function(cairo_t* cr, double tx, double ty) c_cairo_translate;
	void function(cairo_t* cr, double sx, double sy) c_cairo_scale;
	void function(cairo_t* cr, double angle) c_cairo_rotate;
	void function(cairo_t* cr, cairo_matrix_t* matrix) c_cairo_transform;
	void function(cairo_t* cr, cairo_matrix_t* matrix) c_cairo_set_matrix;
	void function(cairo_t* cr, cairo_matrix_t* matrix) c_cairo_get_matrix;
	void function(cairo_t* cr) c_cairo_identity_matrix;
	void function(cairo_t* cr, double* x, double* y) c_cairo_user_to_device;
	void function(cairo_t* cr, double* dx, double* dy) c_cairo_user_to_device_distance;
	void function(cairo_t* cr, double* x, double* y) c_cairo_device_to_user;
	void function(cairo_t* cr, double* dx, double* dy) c_cairo_device_to_user_distance;
	void function(cairo_t* cr, char* family, cairo_font_slant_t slant, cairo_font_weight_t weight) c_cairo_select_font_face;
	void function(cairo_t* cr, double size) c_cairo_set_font_size;
	void function(cairo_t* cr, cairo_matrix_t* matrix) c_cairo_set_font_matrix;
	void function(cairo_t* cr, cairo_matrix_t* matrix) c_cairo_get_font_matrix;
	void function(cairo_t* cr, cairo_font_options_t* options) c_cairo_set_font_options;
	void function(cairo_t* cr, cairo_font_options_t* options) c_cairo_get_font_options;
	void function(cairo_t* cr, cairo_font_face_t* fontFace) c_cairo_set_font_face;
	cairo_font_face_t* function(cairo_t* cr) c_cairo_get_font_face;
	void function(cairo_t* cr, cairo_scaled_font_t* scaledFont) c_cairo_set_scaled_font;
	cairo_scaled_font_t* function(cairo_t* cr) c_cairo_get_scaled_font;
	void function(cairo_t* cr, char* utf8) c_cairo_show_text;
	void function(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs) c_cairo_show_glyphs;
	void function(cairo_t* cr, char* utf8, int utf8_Len, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_cluster_t* clusters, int numClusters, cairo_text_cluster_flags_t clusterFlags) c_cairo_show_text_glyphs;
	void function(cairo_t* cr, cairo_font_extents_t* extents) c_cairo_font_extents;
	void function(cairo_t* cr, char* utf8, cairo_text_extents_t* extents) c_cairo_text_extents;
	void function(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents) c_cairo_glyph_extents;
	cairo_font_face_t* function(char* family, cairo_font_slant_t slant, cairo_font_weight_t weight) c_cairo_toy_font_face_create;
	char* function(cairo_font_face_t* fontFace) c_cairo_toy_font_face_get_family;
	cairo_font_slant_t function(cairo_font_face_t* fontFace) c_cairo_toy_font_face_get_slant;
	cairo_font_weight_t function(cairo_font_face_t* fontFace) c_cairo_toy_font_face_get_weight;
	cairo_glyph_t* function(int numGlyphs) c_cairo_glyph_allocate;
	void function(cairo_glyph_t* glyphs) c_cairo_glyph_free;
	cairo_text_cluster_t* function(int numClusters) c_cairo_text_cluster_allocate;
	void function(cairo_text_cluster_t* clusters) c_cairo_text_cluster_free;

	// cairo.Pattern

	void function(cairo_pattern_t* pattern, double offset, double red, double green, double blue) c_cairo_pattern_add_color_stop_rgb;
	void function(cairo_pattern_t* pattern, double offset, double red, double green, double blue, double alpha) c_cairo_pattern_add_color_stop_rgba;
	cairo_status_t function(cairo_pattern_t* pattern, int* count) c_cairo_pattern_get_color_stop_count;
	cairo_status_t function(cairo_pattern_t* pattern, int index, double* offset, double* red, double* green, double* blue, double* alpha) c_cairo_pattern_get_color_stop_rgba;
	cairo_pattern_t* function(double red, double green, double blue) c_cairo_pattern_create_rgb;
	cairo_pattern_t* function(double red, double green, double blue, double alpha) c_cairo_pattern_create_rgba;
	cairo_status_t function(cairo_pattern_t* pattern, double* red, double* green, double* blue, double* alpha) c_cairo_pattern_get_rgba;
	cairo_pattern_t* function(cairo_surface_t* surface) c_cairo_pattern_create_for_surface;
	cairo_status_t function(cairo_pattern_t* pattern, cairo_surface_t** surface) c_cairo_pattern_get_surface;
	cairo_pattern_t* function(double x0, double y0, double x1, double y1) c_cairo_pattern_create_linear;
	cairo_status_t function(cairo_pattern_t* pattern, double* x0, double* y0, double* x1, double* y1) c_cairo_pattern_get_linear_points;
	cairo_pattern_t* function(double cx0, double cy0, double radius0, double cx1, double cy1, double radius1) c_cairo_pattern_create_radial;
	cairo_status_t function(cairo_pattern_t* pattern, double* x0, double* y0, double* r0, double* x1, double* y1, double* r1) c_cairo_pattern_get_radial_circles;
	cairo_pattern_t* function() c_cairo_pattern_create_mesh;
	cairo_pattern_t* function(cairo_pattern_t* pattern) c_cairo_pattern_reference;
	void function(cairo_pattern_t* pattern) c_cairo_pattern_destroy;
	cairo_status_t function(cairo_pattern_t* pattern) c_cairo_pattern_status;
	void function(cairo_pattern_t* pattern, cairo_extend_t extend) c_cairo_pattern_set_extend;
	cairo_extend_t function(cairo_pattern_t* pattern) c_cairo_pattern_get_extend;
	void function(cairo_pattern_t* pattern, cairo_filter_t filter) c_cairo_pattern_set_filter;
	cairo_filter_t function(cairo_pattern_t* pattern) c_cairo_pattern_get_filter;
	void function(cairo_pattern_t* pattern, cairo_matrix_t* matrix) c_cairo_pattern_set_matrix;
	void function(cairo_pattern_t* pattern, cairo_matrix_t* matrix) c_cairo_pattern_get_matrix;
	cairo_pattern_type_t function(cairo_pattern_t* pattern) c_cairo_pattern_get_type;
	uint function(cairo_pattern_t* pattern) c_cairo_pattern_get_reference_count;
	cairo_status_t function(cairo_pattern_t* pattern, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_pattern_set_user_data;
	void* function(cairo_pattern_t* pattern, cairo_user_data_key_t* key) c_cairo_pattern_get_user_data;

	// cairo.MeshPattern

	void function(cairo_pattern_t* pattern) c_cairo_mesh_pattern_begin_patch;
	void function(cairo_pattern_t* pattern) c_cairo_mesh_pattern_end_patch;
	void function(cairo_pattern_t* pattern, double x, double y) c_cairo_mesh_pattern_move_to;
	void function(cairo_pattern_t* pattern, double x, double y) c_cairo_mesh_pattern_line_to;
	void function(cairo_pattern_t* pattern, double x1, double y1, double x2, double y2, double x3, double y3) c_cairo_mesh_pattern_curve_to;
	void function(cairo_pattern_t* pattern, uint pointNum, double x, double y) c_cairo_mesh_pattern_set_control_point;
	void function(cairo_pattern_t* pattern, uint cornerNum, double red, double green, double blue) c_cairo_mesh_pattern_set_corner_color_rgb;
	void function(cairo_pattern_t* pattern, uint cornerNum, double red, double green, double blue, double alpha) c_cairo_mesh_pattern_set_corner_color_rgba;
	cairo_status_t function(cairo_pattern_t* pattern, uint* count) c_cairo_mesh_pattern_get_patch_count;
	cairo_path_t* function(cairo_pattern_t* pattern, uint patchNum) c_cairo_mesh_pattern_get_path;
	cairo_status_t function(cairo_pattern_t* pattern, uint patchNum, uint pointNum, double* x, double* y) c_cairo_mesh_pattern_get_control_point;
	cairo_status_t function(cairo_pattern_t* pattern, uint patchNum, uint cornerNum, double* red, double* green, double* blue, double* alpha) c_cairo_mesh_pattern_get_corner_color_rgba;

	// cairo.Region

	cairo_region_t* function() c_cairo_region_create;
	cairo_region_t* function(cairo_rectangle_int_t* rectangle) c_cairo_region_create_rectangle;
	cairo_region_t* function(cairo_rectangle_int_t* rects, int count) c_cairo_region_create_rectangles;
	cairo_region_t* function(cairo_region_t* original) c_cairo_region_copy;
	cairo_region_t* function(cairo_region_t* region) c_cairo_region_reference;
	void function(cairo_region_t* region) c_cairo_region_destroy;
	cairo_status_t function(cairo_region_t* region) c_cairo_region_status;
	void function(cairo_region_t* region, cairo_rectangle_int_t* extents) c_cairo_region_get_extents;
	int function(cairo_region_t* region) c_cairo_region_num_rectangles;
	void function(cairo_region_t* region, int nth, cairo_rectangle_int_t* rectangle) c_cairo_region_get_rectangle;
	cairo_bool_t function(cairo_region_t* region) c_cairo_region_is_empty;
	cairo_bool_t function(cairo_region_t* region, int x, int y) c_cairo_region_contains_point;
	cairo_region_overlap_t function(cairo_region_t* region, cairo_rectangle_int_t* rectangle) c_cairo_region_contains_rectangle;
	cairo_bool_t function(cairo_region_t* a, cairo_region_t* b) c_cairo_region_equal;
	void function(cairo_region_t* region, int dx, int dy) c_cairo_region_translate;
	cairo_status_t function(cairo_region_t* dst, cairo_region_t* other) c_cairo_region_intersect;
	cairo_status_t function(cairo_region_t* dst, cairo_rectangle_int_t* rectangle) c_cairo_region_intersect_rectangle;
	cairo_status_t function(cairo_region_t* dst, cairo_region_t* other) c_cairo_region_subtract;
	cairo_status_t function(cairo_region_t* dst, cairo_rectangle_int_t* rectangle) c_cairo_region_subtract_rectangle;
	cairo_status_t function(cairo_region_t* dst, cairo_region_t* other) c_cairo_region_union;
	cairo_status_t function(cairo_region_t* dst, cairo_rectangle_int_t* rectangle) c_cairo_region_union_rectangle;
	cairo_status_t function(cairo_region_t* dst, cairo_region_t* other) c_cairo_region_xor;
	cairo_status_t function(cairo_region_t* dst, cairo_rectangle_int_t* rectangle) c_cairo_region_xor_rectangle;

	// cairo.RasterSource

	cairo_pattern_t* function(void* userData, cairo_content_t content, int width, int height) c_cairo_pattern_create_raster_source;
	void function(cairo_pattern_t* pattern, void* data) c_cairo_raster_source_pattern_set_callback_data;
	void* function(cairo_pattern_t* pattern) c_cairo_raster_source_pattern_get_callback_data;
	void function(cairo_pattern_t* pattern, cairo_raster_source_acquire_func_t acquire, cairo_raster_source_release_func_t release) c_cairo_raster_source_pattern_set_acquire;
	void function(cairo_pattern_t* pattern, cairo_raster_source_acquire_func_t* acquire, cairo_raster_source_release_func_t* release) c_cairo_raster_source_pattern_get_acquire;
	void function(cairo_pattern_t* pattern, cairo_raster_source_snapshot_func_t snapshot) c_cairo_raster_source_pattern_set_snapshot;
	cairo_raster_source_snapshot_func_t function(cairo_pattern_t* pattern) c_cairo_raster_source_pattern_get_snapshot;
	void function(cairo_pattern_t* pattern, cairo_raster_source_copy_func_t copy) c_cairo_raster_source_pattern_set_copy;
	cairo_raster_source_copy_func_t function(cairo_pattern_t* pattern) c_cairo_raster_source_pattern_get_copy;
	void function(cairo_pattern_t* pattern, cairo_raster_source_finish_func_t finish) c_cairo_raster_source_pattern_set_finish;
	cairo_raster_source_finish_func_t function(cairo_pattern_t* pattern) c_cairo_raster_source_pattern_get_finish;

	// cairo.FontFace

	cairo_font_face_t* function(cairo_font_face_t* fontFace) c_cairo_font_face_reference;
	void function(cairo_font_face_t* fontFace) c_cairo_font_face_destroy;
	cairo_status_t function(cairo_font_face_t* fontFace) c_cairo_font_face_status;
	cairo_font_type_t function(cairo_font_face_t* fontFace) c_cairo_font_face_get_type;
	uint function(cairo_font_face_t* fontFace) c_cairo_font_face_get_reference_count;
	cairo_status_t function(cairo_font_face_t* fontFace, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_font_face_set_user_data;
	void* function(cairo_font_face_t* fontFace, cairo_user_data_key_t* key) c_cairo_font_face_get_user_data;

	// cairo.ScaledFont

	cairo_scaled_font_t* function(cairo_font_face_t* fontFace, cairo_matrix_t* fontMatrix, cairo_matrix_t* ctm, cairo_font_options_t* options) c_cairo_scaled_font_create;
	cairo_scaled_font_t* function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_reference;
	void function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_destroy;
	cairo_status_t function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_status;
	void function(cairo_scaled_font_t* scaledFont, cairo_font_extents_t* extents) c_cairo_scaled_font_extents;
	void function(cairo_scaled_font_t* scaledFont, char* utf8, cairo_text_extents_t* extents) c_cairo_scaled_font_text_extents;
	void function(cairo_scaled_font_t* scaledFont, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents) c_cairo_scaled_font_glyph_extents;
	cairo_status_t function(cairo_scaled_font_t* scaledFont, double x, double y, char* utf8, int utf8_Len, cairo_glyph_t** glyphs, int* numGlyphs, cairo_text_cluster_t** clusters, int* numClusters, cairo_text_cluster_flags_t* clusterFlags) c_cairo_scaled_font_text_to_glyphs;
	cairo_font_face_t* function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_get_font_face;
	void function(cairo_scaled_font_t* scaledFont, cairo_font_options_t* options) c_cairo_scaled_font_get_font_options;
	void function(cairo_scaled_font_t* scaledFont, cairo_matrix_t* fontMatrix) c_cairo_scaled_font_get_font_matrix;
	void function(cairo_scaled_font_t* scaledFont, cairo_matrix_t* ctm) c_cairo_scaled_font_get_ctm;
	void function(cairo_scaled_font_t* scaledFont, cairo_matrix_t* scaleMatrix) c_cairo_scaled_font_get_scale_matrix;
	cairo_font_type_t function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_get_type;
	uint function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_get_reference_count;
	cairo_status_t function(cairo_scaled_font_t* scaledFont, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_scaled_font_set_user_data;
	void* function(cairo_scaled_font_t* scaledFont, cairo_user_data_key_t* key) c_cairo_scaled_font_get_user_data;

	// cairo.FontOption

	cairo_font_options_t* function() c_cairo_font_options_create;
	cairo_font_options_t* function(cairo_font_options_t* original) c_cairo_font_options_copy;
	void function(cairo_font_options_t* options) c_cairo_font_options_destroy;
	cairo_status_t function(cairo_font_options_t* options) c_cairo_font_options_status;
	void function(cairo_font_options_t* options, cairo_font_options_t* other) c_cairo_font_options_merge;
	ulong function(cairo_font_options_t* options) c_cairo_font_options_hash;
	cairo_bool_t function(cairo_font_options_t* options, cairo_font_options_t* other) c_cairo_font_options_equal;
	void function(cairo_font_options_t* options, cairo_antialias_t antialias) c_cairo_font_options_set_antialias;
	cairo_antialias_t function(cairo_font_options_t* options) c_cairo_font_options_get_antialias;
	void function(cairo_font_options_t* options, cairo_subpixel_order_t subpixelOrder) c_cairo_font_options_set_subpixel_order;
	cairo_subpixel_order_t function(cairo_font_options_t* options) c_cairo_font_options_get_subpixel_order;
	void function(cairo_font_options_t* options, cairo_hint_style_t hintStyle) c_cairo_font_options_set_hint_style;
	cairo_hint_style_t function(cairo_font_options_t* options) c_cairo_font_options_get_hint_style;
	void function(cairo_font_options_t* options, cairo_hint_metrics_t hintMetrics) c_cairo_font_options_set_hint_metrics;
	cairo_hint_metrics_t function(cairo_font_options_t* options) c_cairo_font_options_get_hint_metrics;

	// cairo.UserFontFace

	cairo_font_face_t* function() c_cairo_user_font_face_create;
	void function(cairo_font_face_t* fontFace, cairo_user_scaled_font_init_func_t initFunc) c_cairo_user_font_face_set_init_func;
	cairo_user_scaled_font_init_func_t function(cairo_font_face_t* fontFace) c_cairo_user_font_face_get_init_func;
	void function(cairo_font_face_t* fontFace, cairo_user_scaled_font_render_glyph_func_t renderGlyphFunc) c_cairo_user_font_face_set_render_glyph_func;
	cairo_user_scaled_font_render_glyph_func_t function(cairo_font_face_t* fontFace) c_cairo_user_font_face_get_render_glyph_func;
	void function(cairo_font_face_t* fontFace, cairo_user_scaled_font_unicode_to_glyph_func_t unicodeToGlyphFunc) c_cairo_user_font_face_set_unicode_to_glyph_func;
	cairo_user_scaled_font_unicode_to_glyph_func_t function(cairo_font_face_t* fontFace) c_cairo_user_font_face_get_unicode_to_glyph_func;
	void function(cairo_font_face_t* fontFace, cairo_user_scaled_font_text_to_glyphs_func_t textToGlyphsFunc) c_cairo_user_font_face_set_text_to_glyphs_func;
	cairo_user_scaled_font_text_to_glyphs_func_t function(cairo_font_face_t* fontFace) c_cairo_user_font_face_get_text_to_glyphs_func;

	// cairo.Device

	cairo_device_t* function(cairo_device_t* device) c_cairo_device_reference;
	void function(cairo_device_t* device) c_cairo_device_destroy;
	cairo_status_t function(cairo_device_t* device) c_cairo_device_status;
	void function(cairo_device_t* device) c_cairo_device_finish;
	void function(cairo_device_t* device) c_cairo_device_flush;
	cairo_device_type_t function(cairo_device_t* device) c_cairo_device_get_type;
	uint function(cairo_device_t* device) c_cairo_device_get_reference_count;
	cairo_status_t function(cairo_device_t* device, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_device_set_user_data;
	void* function(cairo_device_t* device, cairo_user_data_key_t* key) c_cairo_device_get_user_data;
	cairo_status_t function(cairo_device_t* device) c_cairo_device_acquire;
	void function(cairo_device_t* device) c_cairo_device_release;

	// cairo.Surface

	cairo_surface_t* function(cairo_surface_t* other, cairo_content_t content, int width, int height) c_cairo_surface_create_similar;
	cairo_surface_t* function(cairo_surface_t* other, cairo_format_t format, int width, int height) c_cairo_surface_create_similar_image;
	cairo_surface_t* function(cairo_surface_t* target, double x, double y, double width, double height) c_cairo_surface_create_for_rectangle;
	cairo_surface_t* function(cairo_surface_t* surface) c_cairo_surface_reference;
	void function(cairo_surface_t* surface) c_cairo_surface_destroy;
	cairo_status_t function(cairo_surface_t* surface) c_cairo_surface_status;
	void function(cairo_surface_t* surface) c_cairo_surface_finish;
	void function(cairo_surface_t* surface) c_cairo_surface_flush;
	cairo_device_t* function(cairo_surface_t* surface) c_cairo_surface_get_device;
	void function(cairo_surface_t* surface, cairo_font_options_t* options) c_cairo_surface_get_font_options;
	cairo_content_t function(cairo_surface_t* surface) c_cairo_surface_get_content;
	void function(cairo_surface_t* surface) c_cairo_surface_mark_dirty;
	void function(cairo_surface_t* surface, int x, int y, int width, int height) c_cairo_surface_mark_dirty_rectangle;
	void function(cairo_surface_t* surface, double xOffset, double yOffset) c_cairo_surface_set_device_offset;
	void function(cairo_surface_t* surface, double* xOffset, double* yOffset) c_cairo_surface_get_device_offset;
	void function(cairo_surface_t* surface, double xPixelsPerInch, double yPixelsPerInch) c_cairo_surface_set_fallback_resolution;
	void function(cairo_surface_t* surface, double* xPixelsPerInch, double* yPixelsPerInch) c_cairo_surface_get_fallback_resolution;
	cairo_surface_type_t function(cairo_surface_t* surface) c_cairo_surface_get_type;
	uint function(cairo_surface_t* surface) c_cairo_surface_get_reference_count;
	cairo_status_t function(cairo_surface_t* surface, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_surface_set_user_data;
	void* function(cairo_surface_t* surface, cairo_user_data_key_t* key) c_cairo_surface_get_user_data;
	void function(cairo_surface_t* surface) c_cairo_surface_copy_page;
	void function(cairo_surface_t* surface) c_cairo_surface_show_page;
	cairo_bool_t function(cairo_surface_t* surface) c_cairo_surface_has_show_text_glyphs;
	cairo_status_t function(cairo_surface_t* surface, char* mimeType, uchar* data, ulong length, cairo_destroy_func_t destroy, void* closure) c_cairo_surface_set_mime_data;
	void function(cairo_surface_t* surface, char* mimeType, uchar** data, ulong* length) c_cairo_surface_get_mime_data;
	cairo_bool_t function(cairo_surface_t* surface, char* mimeType) c_cairo_surface_supports_mime_type;
	cairo_surface_t* function(cairo_surface_t* surface, cairo_rectangle_int_t* extents) c_cairo_surface_map_to_image;
	void function(cairo_surface_t* surface, cairo_surface_t* image) c_cairo_surface_unmap_image;

	// cairo.ImageSurface

	int function(cairo_format_t format, int width) c_cairo_format_stride_for_width;
	cairo_surface_t* function(cairo_format_t format, int width, int height) c_cairo_image_surface_create;
	cairo_surface_t* function(uchar* data, cairo_format_t format, int width, int height, int stride) c_cairo_image_surface_create_for_data;
	uchar* function(cairo_surface_t* surface) c_cairo_image_surface_get_data;
	cairo_format_t function(cairo_surface_t* surface) c_cairo_image_surface_get_format;
	int function(cairo_surface_t* surface) c_cairo_image_surface_get_width;
	int function(cairo_surface_t* surface) c_cairo_image_surface_get_height;
	int function(cairo_surface_t* surface) c_cairo_image_surface_get_stride;
	cairo_surface_t* function(char* filename) c_cairo_image_surface_create_from_png;
	cairo_surface_t* function(cairo_read_func_t readFunc, void* closure) c_cairo_image_surface_create_from_png_stream;
	cairo_status_t function(cairo_surface_t* surface, char* filename) c_cairo_surface_write_to_png;
	cairo_status_t function(cairo_surface_t* surface, cairo_write_func_t writeFunc, void* closure) c_cairo_surface_write_to_png_stream;

	// cairo.PdfSurface

	cairo_surface_t* function(char* filename, double widthInPoints, double heightInPoints) c_cairo_pdf_surface_create;
	cairo_surface_t* function(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints) c_cairo_pdf_surface_create_for_stream;
	void function(cairo_surface_t* surface, cairo_pdf_version_t versio) c_cairo_pdf_surface_restrict_to_version;
	void function(cairo_pdf_version_t** versions, int* numVersions) c_cairo_pdf_get_versions;
	char* function(cairo_pdf_version_t versio) c_cairo_pdf_version_to_string;
	void function(cairo_surface_t* surface, double widthInPoints, double heightInPoints) c_cairo_pdf_surface_set_size;

	// cairo.PostScriptSurface

	cairo_surface_t* function(char* filename, double widthInPoints, double heightInPoints) c_cairo_ps_surface_create;
	cairo_surface_t* function(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints) c_cairo_ps_surface_create_for_stream;
	void function(cairo_surface_t* surface, cairo_ps_level_t level) c_cairo_ps_surface_restrict_to_level;
	void function(cairo_ps_level_t** levels, int* numLevels) c_cairo_ps_get_levels;
	char* function(cairo_ps_level_t level) c_cairo_ps_level_to_string;
	void function(cairo_surface_t* surface, cairo_bool_t eps) c_cairo_ps_surface_set_eps;
	cairo_bool_t function(cairo_surface_t* surface) c_cairo_ps_surface_get_eps;
	void function(cairo_surface_t* surface, double widthInPoints, double heightInPoints) c_cairo_ps_surface_set_size;
	void function(cairo_surface_t* surface) c_cairo_ps_surface_dsc_begin_setup;
	void function(cairo_surface_t* surface) c_cairo_ps_surface_dsc_begin_page_setup;
	void function(cairo_surface_t* surface, char* comment) c_cairo_ps_surface_dsc_comment;

	// cairo.RecordingSurface

	cairo_surface_t* function(cairo_content_t content, cairo_rectangle_t* extents) c_cairo_recording_surface_create;
	void function(cairo_surface_t* surface, double* x0, double* y0, double* width, double* height) c_cairo_recording_surface_ink_extents;
	cairo_bool_t function(cairo_surface_t* surface, cairo_rectangle_t* extents) c_cairo_recording_surface_get_extents;

	// cairo.SvgSurface

	cairo_surface_t* function(char* filename, double widthInPoints, double heightInPoints) c_cairo_svg_surface_create;
	cairo_surface_t* function(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints) c_cairo_svg_surface_create_for_stream;
	void function(cairo_surface_t* surface, cairo_svg_version_t versio) c_cairo_svg_surface_restrict_to_version;
	void function(cairo_svg_version_t** versions, int* numVersions) c_cairo_svg_get_versions;
	char* function(cairo_svg_version_t versio) c_cairo_svg_version_to_string;

	// cairo.Script

	cairo_device_t* function(char* filename) c_cairo_script_create;
	cairo_device_t* function(cairo_write_func_t writeFunc, void* closure) c_cairo_script_create_for_stream;
	cairo_status_t function(cairo_device_t* script, cairo_surface_t* recordingSurface) c_cairo_script_from_recording_surface;
	cairo_script_mode_t function(cairo_device_t* script) c_cairo_script_get_mode;
	void function(cairo_device_t* script, cairo_script_mode_t mode) c_cairo_script_set_mode;
	void function(cairo_device_t* script, char* comment, int len) c_cairo_script_write_comment;

	// cairo.ScriptSurface

	cairo_surface_t* function(cairo_device_t* script, cairo_content_t content, double width, double height) c_cairo_script_surface_create;
	cairo_surface_t* function(cairo_device_t* script, cairo_surface_t* target) c_cairo_script_surface_create_for_target;

	// cairo.Matrix

	void function(cairo_matrix_t* matrix, double xx, double yx, double xy, double yy, double x0, double y0) c_cairo_matrix_init;
	void function(cairo_matrix_t* matrix) c_cairo_matrix_init_identity;
	void function(cairo_matrix_t* matrix, double tx, double ty) c_cairo_matrix_init_translate;
	void function(cairo_matrix_t* matrix, double sx, double sy) c_cairo_matrix_init_scale;
	void function(cairo_matrix_t* matrix, double radians) c_cairo_matrix_init_rotate;
	void function(cairo_matrix_t* matrix, double tx, double ty) c_cairo_matrix_translate;
	void function(cairo_matrix_t* matrix, double sx, double sy) c_cairo_matrix_scale;
	void function(cairo_matrix_t* matrix, double radians) c_cairo_matrix_rotate;
	cairo_status_t function(cairo_matrix_t* matrix) c_cairo_matrix_invert;
	void function(cairo_matrix_t* result, cairo_matrix_t* a, cairo_matrix_t* b) c_cairo_matrix_multiply;
	void function(cairo_matrix_t* matrix, double* dx, double* dy) c_cairo_matrix_transform_distance;
	void function(cairo_matrix_t* matrix, double* x, double* y) c_cairo_matrix_transform_point;

	// cairo.Status

	char* function(cairo_status_t status) c_cairo_status_to_string;
	void function() c_cairo_debug_reset_static_data;

	// cairo.Version

	int function() c_cairo_version;
	char* function() c_cairo_version_string;

	// cairo.

}");

// cairo.Context

alias c_cairo_create  cairo_create;
alias c_cairo_reference  cairo_reference;
alias c_cairo_destroy  cairo_destroy;
alias c_cairo_status  cairo_status;
alias c_cairo_save  cairo_save;
alias c_cairo_restore  cairo_restore;
alias c_cairo_get_target  cairo_get_target;
alias c_cairo_push_group  cairo_push_group;
alias c_cairo_push_group_with_content  cairo_push_group_with_content;
alias c_cairo_pop_group  cairo_pop_group;
alias c_cairo_pop_group_to_source  cairo_pop_group_to_source;
alias c_cairo_get_group_target  cairo_get_group_target;
alias c_cairo_set_source_rgb  cairo_set_source_rgb;
alias c_cairo_set_source_rgba  cairo_set_source_rgba;
alias c_cairo_set_source  cairo_set_source;
alias c_cairo_set_source_surface  cairo_set_source_surface;
alias c_cairo_get_source  cairo_get_source;
alias c_cairo_set_antialias  cairo_set_antialias;
alias c_cairo_get_antialias  cairo_get_antialias;
alias c_cairo_set_dash  cairo_set_dash;
alias c_cairo_get_dash_count  cairo_get_dash_count;
alias c_cairo_get_dash  cairo_get_dash;
alias c_cairo_set_fill_rule  cairo_set_fill_rule;
alias c_cairo_get_fill_rule  cairo_get_fill_rule;
alias c_cairo_set_line_cap  cairo_set_line_cap;
alias c_cairo_get_line_cap  cairo_get_line_cap;
alias c_cairo_set_line_join  cairo_set_line_join;
alias c_cairo_get_line_join  cairo_get_line_join;
alias c_cairo_set_line_width  cairo_set_line_width;
alias c_cairo_get_line_width  cairo_get_line_width;
alias c_cairo_set_miter_limit  cairo_set_miter_limit;
alias c_cairo_get_miter_limit  cairo_get_miter_limit;
alias c_cairo_set_operator  cairo_set_operator;
alias c_cairo_get_operator  cairo_get_operator;
alias c_cairo_set_tolerance  cairo_set_tolerance;
alias c_cairo_get_tolerance  cairo_get_tolerance;
alias c_cairo_clip  cairo_clip;
alias c_cairo_clip_preserve  cairo_clip_preserve;
alias c_cairo_clip_extents  cairo_clip_extents;
alias c_cairo_in_clip  cairo_in_clip;
alias c_cairo_reset_clip  cairo_reset_clip;
alias c_cairo_rectangle_list_destroy  cairo_rectangle_list_destroy;
alias c_cairo_copy_clip_rectangle_list  cairo_copy_clip_rectangle_list;
alias c_cairo_fill  cairo_fill;
alias c_cairo_fill_preserve  cairo_fill_preserve;
alias c_cairo_fill_extents  cairo_fill_extents;
alias c_cairo_in_fill  cairo_in_fill;
alias c_cairo_mask  cairo_mask;
alias c_cairo_mask_surface  cairo_mask_surface;
alias c_cairo_paint  cairo_paint;
alias c_cairo_paint_with_alpha  cairo_paint_with_alpha;
alias c_cairo_stroke  cairo_stroke;
alias c_cairo_stroke_preserve  cairo_stroke_preserve;
alias c_cairo_stroke_extents  cairo_stroke_extents;
alias c_cairo_in_stroke  cairo_in_stroke;
alias c_cairo_copy_page  cairo_copy_page;
alias c_cairo_show_page  cairo_show_page;
alias c_cairo_get_reference_count  cairo_get_reference_count;
alias c_cairo_set_user_data  cairo_set_user_data;
alias c_cairo_get_user_data  cairo_get_user_data;
alias c_cairo_copy_path  cairo_copy_path;
alias c_cairo_copy_path_flat  cairo_copy_path_flat;
alias c_cairo_path_destroy  cairo_path_destroy;
alias c_cairo_append_path  cairo_append_path;
alias c_cairo_has_current_point  cairo_has_current_point;
alias c_cairo_get_current_point  cairo_get_current_point;
alias c_cairo_new_path  cairo_new_path;
alias c_cairo_new_sub_path  cairo_new_sub_path;
alias c_cairo_close_path  cairo_close_path;
alias c_cairo_arc  cairo_arc;
alias c_cairo_arc_negative  cairo_arc_negative;
alias c_cairo_curve_to  cairo_curve_to;
alias c_cairo_line_to  cairo_line_to;
alias c_cairo_move_to  cairo_move_to;
alias c_cairo_rectangle  cairo_rectangle;
alias c_cairo_glyph_path  cairo_glyph_path;
alias c_cairo_text_path  cairo_text_path;
alias c_cairo_rel_curve_to  cairo_rel_curve_to;
alias c_cairo_rel_line_to  cairo_rel_line_to;
alias c_cairo_rel_move_to  cairo_rel_move_to;
alias c_cairo_path_extents  cairo_path_extents;
alias c_cairo_translate  cairo_translate;
alias c_cairo_scale  cairo_scale;
alias c_cairo_rotate  cairo_rotate;
alias c_cairo_transform  cairo_transform;
alias c_cairo_set_matrix  cairo_set_matrix;
alias c_cairo_get_matrix  cairo_get_matrix;
alias c_cairo_identity_matrix  cairo_identity_matrix;
alias c_cairo_user_to_device  cairo_user_to_device;
alias c_cairo_user_to_device_distance  cairo_user_to_device_distance;
alias c_cairo_device_to_user  cairo_device_to_user;
alias c_cairo_device_to_user_distance  cairo_device_to_user_distance;
alias c_cairo_select_font_face  cairo_select_font_face;
alias c_cairo_set_font_size  cairo_set_font_size;
alias c_cairo_set_font_matrix  cairo_set_font_matrix;
alias c_cairo_get_font_matrix  cairo_get_font_matrix;
alias c_cairo_set_font_options  cairo_set_font_options;
alias c_cairo_get_font_options  cairo_get_font_options;
alias c_cairo_set_font_face  cairo_set_font_face;
alias c_cairo_get_font_face  cairo_get_font_face;
alias c_cairo_set_scaled_font  cairo_set_scaled_font;
alias c_cairo_get_scaled_font  cairo_get_scaled_font;
alias c_cairo_show_text  cairo_show_text;
alias c_cairo_show_glyphs  cairo_show_glyphs;
alias c_cairo_show_text_glyphs  cairo_show_text_glyphs;
alias c_cairo_font_extents  cairo_font_extents;
alias c_cairo_text_extents  cairo_text_extents;
alias c_cairo_glyph_extents  cairo_glyph_extents;
alias c_cairo_toy_font_face_create  cairo_toy_font_face_create;
alias c_cairo_toy_font_face_get_family  cairo_toy_font_face_get_family;
alias c_cairo_toy_font_face_get_slant  cairo_toy_font_face_get_slant;
alias c_cairo_toy_font_face_get_weight  cairo_toy_font_face_get_weight;
alias c_cairo_glyph_allocate  cairo_glyph_allocate;
alias c_cairo_glyph_free  cairo_glyph_free;
alias c_cairo_text_cluster_allocate  cairo_text_cluster_allocate;
alias c_cairo_text_cluster_free  cairo_text_cluster_free;

// cairo.Pattern

alias c_cairo_pattern_add_color_stop_rgb  cairo_pattern_add_color_stop_rgb;
alias c_cairo_pattern_add_color_stop_rgba  cairo_pattern_add_color_stop_rgba;
alias c_cairo_pattern_get_color_stop_count  cairo_pattern_get_color_stop_count;
alias c_cairo_pattern_get_color_stop_rgba  cairo_pattern_get_color_stop_rgba;
alias c_cairo_pattern_create_rgb  cairo_pattern_create_rgb;
alias c_cairo_pattern_create_rgba  cairo_pattern_create_rgba;
alias c_cairo_pattern_get_rgba  cairo_pattern_get_rgba;
alias c_cairo_pattern_create_for_surface  cairo_pattern_create_for_surface;
alias c_cairo_pattern_get_surface  cairo_pattern_get_surface;
alias c_cairo_pattern_create_linear  cairo_pattern_create_linear;
alias c_cairo_pattern_get_linear_points  cairo_pattern_get_linear_points;
alias c_cairo_pattern_create_radial  cairo_pattern_create_radial;
alias c_cairo_pattern_get_radial_circles  cairo_pattern_get_radial_circles;
alias c_cairo_pattern_create_mesh  cairo_pattern_create_mesh;
alias c_cairo_pattern_reference  cairo_pattern_reference;
alias c_cairo_pattern_destroy  cairo_pattern_destroy;
alias c_cairo_pattern_status  cairo_pattern_status;
alias c_cairo_pattern_set_extend  cairo_pattern_set_extend;
alias c_cairo_pattern_get_extend  cairo_pattern_get_extend;
alias c_cairo_pattern_set_filter  cairo_pattern_set_filter;
alias c_cairo_pattern_get_filter  cairo_pattern_get_filter;
alias c_cairo_pattern_set_matrix  cairo_pattern_set_matrix;
alias c_cairo_pattern_get_matrix  cairo_pattern_get_matrix;
alias c_cairo_pattern_get_type  cairo_pattern_get_type;
alias c_cairo_pattern_get_reference_count  cairo_pattern_get_reference_count;
alias c_cairo_pattern_set_user_data  cairo_pattern_set_user_data;
alias c_cairo_pattern_get_user_data  cairo_pattern_get_user_data;

// cairo.MeshPattern

alias c_cairo_mesh_pattern_begin_patch  cairo_mesh_pattern_begin_patch;
alias c_cairo_mesh_pattern_end_patch  cairo_mesh_pattern_end_patch;
alias c_cairo_mesh_pattern_move_to  cairo_mesh_pattern_move_to;
alias c_cairo_mesh_pattern_line_to  cairo_mesh_pattern_line_to;
alias c_cairo_mesh_pattern_curve_to  cairo_mesh_pattern_curve_to;
alias c_cairo_mesh_pattern_set_control_point  cairo_mesh_pattern_set_control_point;
alias c_cairo_mesh_pattern_set_corner_color_rgb  cairo_mesh_pattern_set_corner_color_rgb;
alias c_cairo_mesh_pattern_set_corner_color_rgba  cairo_mesh_pattern_set_corner_color_rgba;
alias c_cairo_mesh_pattern_get_patch_count  cairo_mesh_pattern_get_patch_count;
alias c_cairo_mesh_pattern_get_path  cairo_mesh_pattern_get_path;
alias c_cairo_mesh_pattern_get_control_point  cairo_mesh_pattern_get_control_point;
alias c_cairo_mesh_pattern_get_corner_color_rgba  cairo_mesh_pattern_get_corner_color_rgba;

// cairo.Region

alias c_cairo_region_create  cairo_region_create;
alias c_cairo_region_create_rectangle  cairo_region_create_rectangle;
alias c_cairo_region_create_rectangles  cairo_region_create_rectangles;
alias c_cairo_region_copy  cairo_region_copy;
alias c_cairo_region_reference  cairo_region_reference;
alias c_cairo_region_destroy  cairo_region_destroy;
alias c_cairo_region_status  cairo_region_status;
alias c_cairo_region_get_extents  cairo_region_get_extents;
alias c_cairo_region_num_rectangles  cairo_region_num_rectangles;
alias c_cairo_region_get_rectangle  cairo_region_get_rectangle;
alias c_cairo_region_is_empty  cairo_region_is_empty;
alias c_cairo_region_contains_point  cairo_region_contains_point;
alias c_cairo_region_contains_rectangle  cairo_region_contains_rectangle;
alias c_cairo_region_equal  cairo_region_equal;
alias c_cairo_region_translate  cairo_region_translate;
alias c_cairo_region_intersect  cairo_region_intersect;
alias c_cairo_region_intersect_rectangle  cairo_region_intersect_rectangle;
alias c_cairo_region_subtract  cairo_region_subtract;
alias c_cairo_region_subtract_rectangle  cairo_region_subtract_rectangle;
alias c_cairo_region_union  cairo_region_union;
alias c_cairo_region_union_rectangle  cairo_region_union_rectangle;
alias c_cairo_region_xor  cairo_region_xor;
alias c_cairo_region_xor_rectangle  cairo_region_xor_rectangle;

// cairo.RasterSource

alias c_cairo_pattern_create_raster_source  cairo_pattern_create_raster_source;
alias c_cairo_raster_source_pattern_set_callback_data  cairo_raster_source_pattern_set_callback_data;
alias c_cairo_raster_source_pattern_get_callback_data  cairo_raster_source_pattern_get_callback_data;
alias c_cairo_raster_source_pattern_set_acquire  cairo_raster_source_pattern_set_acquire;
alias c_cairo_raster_source_pattern_get_acquire  cairo_raster_source_pattern_get_acquire;
alias c_cairo_raster_source_pattern_set_snapshot  cairo_raster_source_pattern_set_snapshot;
alias c_cairo_raster_source_pattern_get_snapshot  cairo_raster_source_pattern_get_snapshot;
alias c_cairo_raster_source_pattern_set_copy  cairo_raster_source_pattern_set_copy;
alias c_cairo_raster_source_pattern_get_copy  cairo_raster_source_pattern_get_copy;
alias c_cairo_raster_source_pattern_set_finish  cairo_raster_source_pattern_set_finish;
alias c_cairo_raster_source_pattern_get_finish  cairo_raster_source_pattern_get_finish;

// cairo.FontFace

alias c_cairo_font_face_reference  cairo_font_face_reference;
alias c_cairo_font_face_destroy  cairo_font_face_destroy;
alias c_cairo_font_face_status  cairo_font_face_status;
alias c_cairo_font_face_get_type  cairo_font_face_get_type;
alias c_cairo_font_face_get_reference_count  cairo_font_face_get_reference_count;
alias c_cairo_font_face_set_user_data  cairo_font_face_set_user_data;
alias c_cairo_font_face_get_user_data  cairo_font_face_get_user_data;

// cairo.ScaledFont

alias c_cairo_scaled_font_create  cairo_scaled_font_create;
alias c_cairo_scaled_font_reference  cairo_scaled_font_reference;
alias c_cairo_scaled_font_destroy  cairo_scaled_font_destroy;
alias c_cairo_scaled_font_status  cairo_scaled_font_status;
alias c_cairo_scaled_font_extents  cairo_scaled_font_extents;
alias c_cairo_scaled_font_text_extents  cairo_scaled_font_text_extents;
alias c_cairo_scaled_font_glyph_extents  cairo_scaled_font_glyph_extents;
alias c_cairo_scaled_font_text_to_glyphs  cairo_scaled_font_text_to_glyphs;
alias c_cairo_scaled_font_get_font_face  cairo_scaled_font_get_font_face;
alias c_cairo_scaled_font_get_font_options  cairo_scaled_font_get_font_options;
alias c_cairo_scaled_font_get_font_matrix  cairo_scaled_font_get_font_matrix;
alias c_cairo_scaled_font_get_ctm  cairo_scaled_font_get_ctm;
alias c_cairo_scaled_font_get_scale_matrix  cairo_scaled_font_get_scale_matrix;
alias c_cairo_scaled_font_get_type  cairo_scaled_font_get_type;
alias c_cairo_scaled_font_get_reference_count  cairo_scaled_font_get_reference_count;
alias c_cairo_scaled_font_set_user_data  cairo_scaled_font_set_user_data;
alias c_cairo_scaled_font_get_user_data  cairo_scaled_font_get_user_data;

// cairo.FontOption

alias c_cairo_font_options_create  cairo_font_options_create;
alias c_cairo_font_options_copy  cairo_font_options_copy;
alias c_cairo_font_options_destroy  cairo_font_options_destroy;
alias c_cairo_font_options_status  cairo_font_options_status;
alias c_cairo_font_options_merge  cairo_font_options_merge;
alias c_cairo_font_options_hash  cairo_font_options_hash;
alias c_cairo_font_options_equal  cairo_font_options_equal;
alias c_cairo_font_options_set_antialias  cairo_font_options_set_antialias;
alias c_cairo_font_options_get_antialias  cairo_font_options_get_antialias;
alias c_cairo_font_options_set_subpixel_order  cairo_font_options_set_subpixel_order;
alias c_cairo_font_options_get_subpixel_order  cairo_font_options_get_subpixel_order;
alias c_cairo_font_options_set_hint_style  cairo_font_options_set_hint_style;
alias c_cairo_font_options_get_hint_style  cairo_font_options_get_hint_style;
alias c_cairo_font_options_set_hint_metrics  cairo_font_options_set_hint_metrics;
alias c_cairo_font_options_get_hint_metrics  cairo_font_options_get_hint_metrics;

// cairo.UserFontFace

alias c_cairo_user_font_face_create  cairo_user_font_face_create;
alias c_cairo_user_font_face_set_init_func  cairo_user_font_face_set_init_func;
alias c_cairo_user_font_face_get_init_func  cairo_user_font_face_get_init_func;
alias c_cairo_user_font_face_set_render_glyph_func  cairo_user_font_face_set_render_glyph_func;
alias c_cairo_user_font_face_get_render_glyph_func  cairo_user_font_face_get_render_glyph_func;
alias c_cairo_user_font_face_set_unicode_to_glyph_func  cairo_user_font_face_set_unicode_to_glyph_func;
alias c_cairo_user_font_face_get_unicode_to_glyph_func  cairo_user_font_face_get_unicode_to_glyph_func;
alias c_cairo_user_font_face_set_text_to_glyphs_func  cairo_user_font_face_set_text_to_glyphs_func;
alias c_cairo_user_font_face_get_text_to_glyphs_func  cairo_user_font_face_get_text_to_glyphs_func;

// cairo.Device

alias c_cairo_device_reference  cairo_device_reference;
alias c_cairo_device_destroy  cairo_device_destroy;
alias c_cairo_device_status  cairo_device_status;
alias c_cairo_device_finish  cairo_device_finish;
alias c_cairo_device_flush  cairo_device_flush;
alias c_cairo_device_get_type  cairo_device_get_type;
alias c_cairo_device_get_reference_count  cairo_device_get_reference_count;
alias c_cairo_device_set_user_data  cairo_device_set_user_data;
alias c_cairo_device_get_user_data  cairo_device_get_user_data;
alias c_cairo_device_acquire  cairo_device_acquire;
alias c_cairo_device_release  cairo_device_release;

// cairo.Surface

alias c_cairo_surface_create_similar  cairo_surface_create_similar;
alias c_cairo_surface_create_similar_image  cairo_surface_create_similar_image;
alias c_cairo_surface_create_for_rectangle  cairo_surface_create_for_rectangle;
alias c_cairo_surface_reference  cairo_surface_reference;
alias c_cairo_surface_destroy  cairo_surface_destroy;
alias c_cairo_surface_status  cairo_surface_status;
alias c_cairo_surface_finish  cairo_surface_finish;
alias c_cairo_surface_flush  cairo_surface_flush;
alias c_cairo_surface_get_device  cairo_surface_get_device;
alias c_cairo_surface_get_font_options  cairo_surface_get_font_options;
alias c_cairo_surface_get_content  cairo_surface_get_content;
alias c_cairo_surface_mark_dirty  cairo_surface_mark_dirty;
alias c_cairo_surface_mark_dirty_rectangle  cairo_surface_mark_dirty_rectangle;
alias c_cairo_surface_set_device_offset  cairo_surface_set_device_offset;
alias c_cairo_surface_get_device_offset  cairo_surface_get_device_offset;
alias c_cairo_surface_set_fallback_resolution  cairo_surface_set_fallback_resolution;
alias c_cairo_surface_get_fallback_resolution  cairo_surface_get_fallback_resolution;
alias c_cairo_surface_get_type  cairo_surface_get_type;
alias c_cairo_surface_get_reference_count  cairo_surface_get_reference_count;
alias c_cairo_surface_set_user_data  cairo_surface_set_user_data;
alias c_cairo_surface_get_user_data  cairo_surface_get_user_data;
alias c_cairo_surface_copy_page  cairo_surface_copy_page;
alias c_cairo_surface_show_page  cairo_surface_show_page;
alias c_cairo_surface_has_show_text_glyphs  cairo_surface_has_show_text_glyphs;
alias c_cairo_surface_set_mime_data  cairo_surface_set_mime_data;
alias c_cairo_surface_get_mime_data  cairo_surface_get_mime_data;
alias c_cairo_surface_supports_mime_type  cairo_surface_supports_mime_type;
alias c_cairo_surface_map_to_image  cairo_surface_map_to_image;
alias c_cairo_surface_unmap_image  cairo_surface_unmap_image;

// cairo.ImageSurface

alias c_cairo_format_stride_for_width  cairo_format_stride_for_width;
alias c_cairo_image_surface_create  cairo_image_surface_create;
alias c_cairo_image_surface_create_for_data  cairo_image_surface_create_for_data;
alias c_cairo_image_surface_get_data  cairo_image_surface_get_data;
alias c_cairo_image_surface_get_format  cairo_image_surface_get_format;
alias c_cairo_image_surface_get_width  cairo_image_surface_get_width;
alias c_cairo_image_surface_get_height  cairo_image_surface_get_height;
alias c_cairo_image_surface_get_stride  cairo_image_surface_get_stride;
alias c_cairo_image_surface_create_from_png  cairo_image_surface_create_from_png;
alias c_cairo_image_surface_create_from_png_stream  cairo_image_surface_create_from_png_stream;
alias c_cairo_surface_write_to_png  cairo_surface_write_to_png;
alias c_cairo_surface_write_to_png_stream  cairo_surface_write_to_png_stream;

// cairo.PdfSurface

alias c_cairo_pdf_surface_create  cairo_pdf_surface_create;
alias c_cairo_pdf_surface_create_for_stream  cairo_pdf_surface_create_for_stream;
alias c_cairo_pdf_surface_restrict_to_version  cairo_pdf_surface_restrict_to_version;
alias c_cairo_pdf_get_versions  cairo_pdf_get_versions;
alias c_cairo_pdf_version_to_string  cairo_pdf_version_to_string;
alias c_cairo_pdf_surface_set_size  cairo_pdf_surface_set_size;

// cairo.PostScriptSurface

alias c_cairo_ps_surface_create  cairo_ps_surface_create;
alias c_cairo_ps_surface_create_for_stream  cairo_ps_surface_create_for_stream;
alias c_cairo_ps_surface_restrict_to_level  cairo_ps_surface_restrict_to_level;
alias c_cairo_ps_get_levels  cairo_ps_get_levels;
alias c_cairo_ps_level_to_string  cairo_ps_level_to_string;
alias c_cairo_ps_surface_set_eps  cairo_ps_surface_set_eps;
alias c_cairo_ps_surface_get_eps  cairo_ps_surface_get_eps;
alias c_cairo_ps_surface_set_size  cairo_ps_surface_set_size;
alias c_cairo_ps_surface_dsc_begin_setup  cairo_ps_surface_dsc_begin_setup;
alias c_cairo_ps_surface_dsc_begin_page_setup  cairo_ps_surface_dsc_begin_page_setup;
alias c_cairo_ps_surface_dsc_comment  cairo_ps_surface_dsc_comment;

// cairo.RecordingSurface

alias c_cairo_recording_surface_create  cairo_recording_surface_create;
alias c_cairo_recording_surface_ink_extents  cairo_recording_surface_ink_extents;
alias c_cairo_recording_surface_get_extents  cairo_recording_surface_get_extents;

// cairo.SvgSurface

alias c_cairo_svg_surface_create  cairo_svg_surface_create;
alias c_cairo_svg_surface_create_for_stream  cairo_svg_surface_create_for_stream;
alias c_cairo_svg_surface_restrict_to_version  cairo_svg_surface_restrict_to_version;
alias c_cairo_svg_get_versions  cairo_svg_get_versions;
alias c_cairo_svg_version_to_string  cairo_svg_version_to_string;

// cairo.Script

alias c_cairo_script_create  cairo_script_create;
alias c_cairo_script_create_for_stream  cairo_script_create_for_stream;
alias c_cairo_script_from_recording_surface  cairo_script_from_recording_surface;
alias c_cairo_script_get_mode  cairo_script_get_mode;
alias c_cairo_script_set_mode  cairo_script_set_mode;
alias c_cairo_script_write_comment  cairo_script_write_comment;

// cairo.ScriptSurface

alias c_cairo_script_surface_create  cairo_script_surface_create;
alias c_cairo_script_surface_create_for_target  cairo_script_surface_create_for_target;

// cairo.Matrix

alias c_cairo_matrix_init  cairo_matrix_init;
alias c_cairo_matrix_init_identity  cairo_matrix_init_identity;
alias c_cairo_matrix_init_translate  cairo_matrix_init_translate;
alias c_cairo_matrix_init_scale  cairo_matrix_init_scale;
alias c_cairo_matrix_init_rotate  cairo_matrix_init_rotate;
alias c_cairo_matrix_translate  cairo_matrix_translate;
alias c_cairo_matrix_scale  cairo_matrix_scale;
alias c_cairo_matrix_rotate  cairo_matrix_rotate;
alias c_cairo_matrix_invert  cairo_matrix_invert;
alias c_cairo_matrix_multiply  cairo_matrix_multiply;
alias c_cairo_matrix_transform_distance  cairo_matrix_transform_distance;
alias c_cairo_matrix_transform_point  cairo_matrix_transform_point;

// cairo.Status

alias c_cairo_status_to_string  cairo_status_to_string;
alias c_cairo_debug_reset_static_data  cairo_debug_reset_static_data;

// cairo.Version

alias c_cairo_version  cairo_version;
alias c_cairo_version_string  cairo_version_string;

// cairo.

