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


module gtkc.cairo;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.cairotypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// cairo.Context

	Linker.link(cairo_create, "cairo_create", LIBRARY.CAIRO);
	Linker.link(cairo_reference, "cairo_reference", LIBRARY.CAIRO);
	Linker.link(cairo_destroy, "cairo_destroy", LIBRARY.CAIRO);
	Linker.link(cairo_status, "cairo_status", LIBRARY.CAIRO);
	Linker.link(cairo_save, "cairo_save", LIBRARY.CAIRO);
	Linker.link(cairo_restore, "cairo_restore", LIBRARY.CAIRO);
	Linker.link(cairo_get_target, "cairo_get_target", LIBRARY.CAIRO);
	Linker.link(cairo_push_group, "cairo_push_group", LIBRARY.CAIRO);
	Linker.link(cairo_push_group_with_content, "cairo_push_group_with_content", LIBRARY.CAIRO);
	Linker.link(cairo_pop_group, "cairo_pop_group", LIBRARY.CAIRO);
	Linker.link(cairo_pop_group_to_source, "cairo_pop_group_to_source", LIBRARY.CAIRO);
	Linker.link(cairo_get_group_target, "cairo_get_group_target", LIBRARY.CAIRO);
	Linker.link(cairo_set_source_rgb, "cairo_set_source_rgb", LIBRARY.CAIRO);
	Linker.link(cairo_set_source_rgba, "cairo_set_source_rgba", LIBRARY.CAIRO);
	Linker.link(cairo_set_source, "cairo_set_source", LIBRARY.CAIRO);
	Linker.link(cairo_set_source_surface, "cairo_set_source_surface", LIBRARY.CAIRO);
	Linker.link(cairo_get_source, "cairo_get_source", LIBRARY.CAIRO);
	Linker.link(cairo_set_antialias, "cairo_set_antialias", LIBRARY.CAIRO);
	Linker.link(cairo_get_antialias, "cairo_get_antialias", LIBRARY.CAIRO);
	Linker.link(cairo_set_dash, "cairo_set_dash", LIBRARY.CAIRO);
	Linker.link(cairo_get_dash_count, "cairo_get_dash_count", LIBRARY.CAIRO);
	Linker.link(cairo_get_dash, "cairo_get_dash", LIBRARY.CAIRO);
	Linker.link(cairo_set_fill_rule, "cairo_set_fill_rule", LIBRARY.CAIRO);
	Linker.link(cairo_get_fill_rule, "cairo_get_fill_rule", LIBRARY.CAIRO);
	Linker.link(cairo_set_line_cap, "cairo_set_line_cap", LIBRARY.CAIRO);
	Linker.link(cairo_get_line_cap, "cairo_get_line_cap", LIBRARY.CAIRO);
	Linker.link(cairo_set_line_join, "cairo_set_line_join", LIBRARY.CAIRO);
	Linker.link(cairo_get_line_join, "cairo_get_line_join", LIBRARY.CAIRO);
	Linker.link(cairo_set_line_width, "cairo_set_line_width", LIBRARY.CAIRO);
	Linker.link(cairo_get_line_width, "cairo_get_line_width", LIBRARY.CAIRO);
	Linker.link(cairo_set_miter_limit, "cairo_set_miter_limit", LIBRARY.CAIRO);
	Linker.link(cairo_get_miter_limit, "cairo_get_miter_limit", LIBRARY.CAIRO);
	Linker.link(cairo_set_operator, "cairo_set_operator", LIBRARY.CAIRO);
	Linker.link(cairo_get_operator, "cairo_get_operator", LIBRARY.CAIRO);
	Linker.link(cairo_set_tolerance, "cairo_set_tolerance", LIBRARY.CAIRO);
	Linker.link(cairo_get_tolerance, "cairo_get_tolerance", LIBRARY.CAIRO);
	Linker.link(cairo_clip, "cairo_clip", LIBRARY.CAIRO);
	Linker.link(cairo_clip_preserve, "cairo_clip_preserve", LIBRARY.CAIRO);
	Linker.link(cairo_clip_extents, "cairo_clip_extents", LIBRARY.CAIRO);
	Linker.link(cairo_reset_clip, "cairo_reset_clip", LIBRARY.CAIRO);
	Linker.link(cairo_rectangle_list_destroy, "cairo_rectangle_list_destroy", LIBRARY.CAIRO);
	Linker.link(cairo_copy_clip_rectangle_list, "cairo_copy_clip_rectangle_list", LIBRARY.CAIRO);
	Linker.link(cairo_fill, "cairo_fill", LIBRARY.CAIRO);
	Linker.link(cairo_fill_preserve, "cairo_fill_preserve", LIBRARY.CAIRO);
	Linker.link(cairo_fill_extents, "cairo_fill_extents", LIBRARY.CAIRO);
	Linker.link(cairo_in_fill, "cairo_in_fill", LIBRARY.CAIRO);
	Linker.link(cairo_mask, "cairo_mask", LIBRARY.CAIRO);
	Linker.link(cairo_mask_surface, "cairo_mask_surface", LIBRARY.CAIRO);
	Linker.link(cairo_paint, "cairo_paint", LIBRARY.CAIRO);
	Linker.link(cairo_paint_with_alpha, "cairo_paint_with_alpha", LIBRARY.CAIRO);
	Linker.link(cairo_stroke, "cairo_stroke", LIBRARY.CAIRO);
	Linker.link(cairo_stroke_preserve, "cairo_stroke_preserve", LIBRARY.CAIRO);
	Linker.link(cairo_stroke_extents, "cairo_stroke_extents", LIBRARY.CAIRO);
	Linker.link(cairo_in_stroke, "cairo_in_stroke", LIBRARY.CAIRO);
	Linker.link(cairo_copy_page, "cairo_copy_page", LIBRARY.CAIRO);
	Linker.link(cairo_show_page, "cairo_show_page", LIBRARY.CAIRO);
	Linker.link(cairo_get_reference_count, "cairo_get_reference_count", LIBRARY.CAIRO);
	Linker.link(cairo_set_user_data, "cairo_set_user_data", LIBRARY.CAIRO);
	Linker.link(cairo_get_user_data, "cairo_get_user_data", LIBRARY.CAIRO);
	Linker.link(cairo_copy_path, "cairo_copy_path", LIBRARY.CAIRO);
	Linker.link(cairo_copy_path_flat, "cairo_copy_path_flat", LIBRARY.CAIRO);
	Linker.link(cairo_path_destroy, "cairo_path_destroy", LIBRARY.CAIRO);
	Linker.link(cairo_append_path, "cairo_append_path", LIBRARY.CAIRO);
	Linker.link(cairo_has_current_point, "cairo_has_current_point", LIBRARY.CAIRO);
	Linker.link(cairo_get_current_point, "cairo_get_current_point", LIBRARY.CAIRO);
	Linker.link(cairo_new_path, "cairo_new_path", LIBRARY.CAIRO);
	Linker.link(cairo_new_sub_path, "cairo_new_sub_path", LIBRARY.CAIRO);
	Linker.link(cairo_close_path, "cairo_close_path", LIBRARY.CAIRO);
	Linker.link(cairo_arc, "cairo_arc", LIBRARY.CAIRO);
	Linker.link(cairo_arc_negative, "cairo_arc_negative", LIBRARY.CAIRO);
	Linker.link(cairo_curve_to, "cairo_curve_to", LIBRARY.CAIRO);
	Linker.link(cairo_line_to, "cairo_line_to", LIBRARY.CAIRO);
	Linker.link(cairo_move_to, "cairo_move_to", LIBRARY.CAIRO);
	Linker.link(cairo_rectangle, "cairo_rectangle", LIBRARY.CAIRO);
	Linker.link(cairo_glyph_path, "cairo_glyph_path", LIBRARY.CAIRO);
	Linker.link(cairo_text_path, "cairo_text_path", LIBRARY.CAIRO);
	Linker.link(cairo_rel_curve_to, "cairo_rel_curve_to", LIBRARY.CAIRO);
	Linker.link(cairo_rel_line_to, "cairo_rel_line_to", LIBRARY.CAIRO);
	Linker.link(cairo_rel_move_to, "cairo_rel_move_to", LIBRARY.CAIRO);
	Linker.link(cairo_path_extents, "cairo_path_extents", LIBRARY.CAIRO);
	Linker.link(cairo_translate, "cairo_translate", LIBRARY.CAIRO);
	Linker.link(cairo_scale, "cairo_scale", LIBRARY.CAIRO);
	Linker.link(cairo_rotate, "cairo_rotate", LIBRARY.CAIRO);
	Linker.link(cairo_transform, "cairo_transform", LIBRARY.CAIRO);
	Linker.link(cairo_set_matrix, "cairo_set_matrix", LIBRARY.CAIRO);
	Linker.link(cairo_get_matrix, "cairo_get_matrix", LIBRARY.CAIRO);
	Linker.link(cairo_identity_matrix, "cairo_identity_matrix", LIBRARY.CAIRO);
	Linker.link(cairo_user_to_device, "cairo_user_to_device", LIBRARY.CAIRO);
	Linker.link(cairo_user_to_device_distance, "cairo_user_to_device_distance", LIBRARY.CAIRO);
	Linker.link(cairo_device_to_user, "cairo_device_to_user", LIBRARY.CAIRO);
	Linker.link(cairo_device_to_user_distance, "cairo_device_to_user_distance", LIBRARY.CAIRO);
	Linker.link(cairo_select_font_face, "cairo_select_font_face", LIBRARY.CAIRO);
	Linker.link(cairo_set_font_size, "cairo_set_font_size", LIBRARY.CAIRO);
	Linker.link(cairo_set_font_matrix, "cairo_set_font_matrix", LIBRARY.CAIRO);
	Linker.link(cairo_get_font_matrix, "cairo_get_font_matrix", LIBRARY.CAIRO);
	Linker.link(cairo_set_font_options, "cairo_set_font_options", LIBRARY.CAIRO);
	Linker.link(cairo_get_font_options, "cairo_get_font_options", LIBRARY.CAIRO);
	Linker.link(cairo_set_font_face, "cairo_set_font_face", LIBRARY.CAIRO);
	Linker.link(cairo_get_font_face, "cairo_get_font_face", LIBRARY.CAIRO);
	Linker.link(cairo_set_scaled_font, "cairo_set_scaled_font", LIBRARY.CAIRO);
	Linker.link(cairo_get_scaled_font, "cairo_get_scaled_font", LIBRARY.CAIRO);
	Linker.link(cairo_show_text, "cairo_show_text", LIBRARY.CAIRO);
	Linker.link(cairo_show_glyphs, "cairo_show_glyphs", LIBRARY.CAIRO);
	Linker.link(cairo_show_text_glyphs, "cairo_show_text_glyphs", LIBRARY.CAIRO);
	Linker.link(cairo_font_extents, "cairo_font_extents", LIBRARY.CAIRO);
	Linker.link(cairo_text_extents, "cairo_text_extents", LIBRARY.CAIRO);
	Linker.link(cairo_glyph_extents, "cairo_glyph_extents", LIBRARY.CAIRO);
	Linker.link(cairo_toy_font_face_create, "cairo_toy_font_face_create", LIBRARY.CAIRO);
	Linker.link(cairo_toy_font_face_get_family, "cairo_toy_font_face_get_family", LIBRARY.CAIRO);
	Linker.link(cairo_toy_font_face_get_slant, "cairo_toy_font_face_get_slant", LIBRARY.CAIRO);
	Linker.link(cairo_toy_font_face_get_weight, "cairo_toy_font_face_get_weight", LIBRARY.CAIRO);
	Linker.link(cairo_glyph_allocate, "cairo_glyph_allocate", LIBRARY.CAIRO);
	Linker.link(cairo_glyph_free, "cairo_glyph_free", LIBRARY.CAIRO);
	Linker.link(cairo_text_cluster_allocate, "cairo_text_cluster_allocate", LIBRARY.CAIRO);
	Linker.link(cairo_text_cluster_free, "cairo_text_cluster_free", LIBRARY.CAIRO);

	// cairo.Pattern

	Linker.link(cairo_pattern_add_color_stop_rgb, "cairo_pattern_add_color_stop_rgb", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_add_color_stop_rgba, "cairo_pattern_add_color_stop_rgba", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_color_stop_count, "cairo_pattern_get_color_stop_count", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_color_stop_rgba, "cairo_pattern_get_color_stop_rgba", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_rgb, "cairo_pattern_create_rgb", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_rgba, "cairo_pattern_create_rgba", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_rgba, "cairo_pattern_get_rgba", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_for_surface, "cairo_pattern_create_for_surface", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_surface, "cairo_pattern_get_surface", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_linear, "cairo_pattern_create_linear", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_linear_points, "cairo_pattern_get_linear_points", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_create_radial, "cairo_pattern_create_radial", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_radial_circles, "cairo_pattern_get_radial_circles", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_reference, "cairo_pattern_reference", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_destroy, "cairo_pattern_destroy", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_status, "cairo_pattern_status", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_set_extend, "cairo_pattern_set_extend", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_extend, "cairo_pattern_get_extend", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_set_filter, "cairo_pattern_set_filter", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_filter, "cairo_pattern_get_filter", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_set_matrix, "cairo_pattern_set_matrix", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_matrix, "cairo_pattern_get_matrix", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_type, "cairo_pattern_get_type", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_reference_count, "cairo_pattern_get_reference_count", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_set_user_data, "cairo_pattern_set_user_data", LIBRARY.CAIRO);
	Linker.link(cairo_pattern_get_user_data, "cairo_pattern_get_user_data", LIBRARY.CAIRO);

	// cairo.FontFace

	Linker.link(cairo_font_face_reference, "cairo_font_face_reference", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_destroy, "cairo_font_face_destroy", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_status, "cairo_font_face_status", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_get_type, "cairo_font_face_get_type", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_get_reference_count, "cairo_font_face_get_reference_count", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_set_user_data, "cairo_font_face_set_user_data", LIBRARY.CAIRO);
	Linker.link(cairo_font_face_get_user_data, "cairo_font_face_get_user_data", LIBRARY.CAIRO);

	// cairo.ScaledFont

	Linker.link(cairo_scaled_font_create, "cairo_scaled_font_create", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_reference, "cairo_scaled_font_reference", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_destroy, "cairo_scaled_font_destroy", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_status, "cairo_scaled_font_status", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_extents, "cairo_scaled_font_extents", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_text_extents, "cairo_scaled_font_text_extents", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_glyph_extents, "cairo_scaled_font_glyph_extents", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_text_to_glyphs, "cairo_scaled_font_text_to_glyphs", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_font_face, "cairo_scaled_font_get_font_face", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_font_options, "cairo_scaled_font_get_font_options", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_font_matrix, "cairo_scaled_font_get_font_matrix", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_ctm, "cairo_scaled_font_get_ctm", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_scale_matrix, "cairo_scaled_font_get_scale_matrix", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_type, "cairo_scaled_font_get_type", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_reference_count, "cairo_scaled_font_get_reference_count", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_set_user_data, "cairo_scaled_font_set_user_data", LIBRARY.CAIRO);
	Linker.link(cairo_scaled_font_get_user_data, "cairo_scaled_font_get_user_data", LIBRARY.CAIRO);

	// cairo.FontOption

	Linker.link(cairo_font_options_create, "cairo_font_options_create", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_copy, "cairo_font_options_copy", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_destroy, "cairo_font_options_destroy", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_status, "cairo_font_options_status", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_merge, "cairo_font_options_merge", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_hash, "cairo_font_options_hash", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_equal, "cairo_font_options_equal", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_set_antialias, "cairo_font_options_set_antialias", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_get_antialias, "cairo_font_options_get_antialias", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_set_subpixel_order, "cairo_font_options_set_subpixel_order", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_get_subpixel_order, "cairo_font_options_get_subpixel_order", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_set_hint_style, "cairo_font_options_set_hint_style", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_get_hint_style, "cairo_font_options_get_hint_style", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_set_hint_metrics, "cairo_font_options_set_hint_metrics", LIBRARY.CAIRO);
	Linker.link(cairo_font_options_get_hint_metrics, "cairo_font_options_get_hint_metrics", LIBRARY.CAIRO);

	// cairo.UserFontFace

	Linker.link(cairo_user_font_face_create, "cairo_user_font_face_create", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_set_init_func, "cairo_user_font_face_set_init_func", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_get_init_func, "cairo_user_font_face_get_init_func", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_set_render_glyph_func, "cairo_user_font_face_set_render_glyph_func", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_get_render_glyph_func, "cairo_user_font_face_get_render_glyph_func", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_set_unicode_to_glyph_func, "cairo_user_font_face_set_unicode_to_glyph_func", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_get_unicode_to_glyph_func, "cairo_user_font_face_get_unicode_to_glyph_func", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_set_text_to_glyphs_func, "cairo_user_font_face_set_text_to_glyphs_func", LIBRARY.CAIRO);
	Linker.link(cairo_user_font_face_get_text_to_glyphs_func, "cairo_user_font_face_get_text_to_glyphs_func", LIBRARY.CAIRO);

	// cairo.Surface

	Linker.link(cairo_surface_create_similar, "cairo_surface_create_similar", LIBRARY.CAIRO);
	Linker.link(cairo_surface_reference, "cairo_surface_reference", LIBRARY.CAIRO);
	Linker.link(cairo_surface_destroy, "cairo_surface_destroy", LIBRARY.CAIRO);
	Linker.link(cairo_surface_status, "cairo_surface_status", LIBRARY.CAIRO);
	Linker.link(cairo_surface_finish, "cairo_surface_finish", LIBRARY.CAIRO);
	Linker.link(cairo_surface_flush, "cairo_surface_flush", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_font_options, "cairo_surface_get_font_options", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_content, "cairo_surface_get_content", LIBRARY.CAIRO);
	Linker.link(cairo_surface_mark_dirty, "cairo_surface_mark_dirty", LIBRARY.CAIRO);
	Linker.link(cairo_surface_mark_dirty_rectangle, "cairo_surface_mark_dirty_rectangle", LIBRARY.CAIRO);
	Linker.link(cairo_surface_set_device_offset, "cairo_surface_set_device_offset", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_device_offset, "cairo_surface_get_device_offset", LIBRARY.CAIRO);
	Linker.link(cairo_surface_set_fallback_resolution, "cairo_surface_set_fallback_resolution", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_fallback_resolution, "cairo_surface_get_fallback_resolution", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_type, "cairo_surface_get_type", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_reference_count, "cairo_surface_get_reference_count", LIBRARY.CAIRO);
	Linker.link(cairo_surface_set_user_data, "cairo_surface_set_user_data", LIBRARY.CAIRO);
	Linker.link(cairo_surface_get_user_data, "cairo_surface_get_user_data", LIBRARY.CAIRO);
	Linker.link(cairo_surface_copy_page, "cairo_surface_copy_page", LIBRARY.CAIRO);
	Linker.link(cairo_surface_show_page, "cairo_surface_show_page", LIBRARY.CAIRO);
	Linker.link(cairo_surface_has_show_text_glyphs, "cairo_surface_has_show_text_glyphs", LIBRARY.CAIRO);

	// cairo.ImageSurface

	Linker.link(cairo_format_stride_for_width, "cairo_format_stride_for_width", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_create, "cairo_image_surface_create", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_create_for_data, "cairo_image_surface_create_for_data", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_get_data, "cairo_image_surface_get_data", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_get_format, "cairo_image_surface_get_format", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_get_width, "cairo_image_surface_get_width", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_get_height, "cairo_image_surface_get_height", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_get_stride, "cairo_image_surface_get_stride", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_create_from_png, "cairo_image_surface_create_from_png", LIBRARY.CAIRO);
	Linker.link(cairo_image_surface_create_from_png_stream, "cairo_image_surface_create_from_png_stream", LIBRARY.CAIRO);
	Linker.link(cairo_surface_write_to_png, "cairo_surface_write_to_png", LIBRARY.CAIRO);
	Linker.link(cairo_surface_write_to_png_stream, "cairo_surface_write_to_png_stream", LIBRARY.CAIRO);

	// cairo.PdfSurface

	Linker.link(cairo_pdf_surface_create, "cairo_pdf_surface_create", LIBRARY.CAIRO);
	Linker.link(cairo_pdf_surface_create_for_stream, "cairo_pdf_surface_create_for_stream", LIBRARY.CAIRO);
	Linker.link(cairo_pdf_surface_set_size, "cairo_pdf_surface_set_size", LIBRARY.CAIRO);

	// cairo.PostScriptSurface

	Linker.link(cairo_ps_surface_create, "cairo_ps_surface_create", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_create_for_stream, "cairo_ps_surface_create_for_stream", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_restrict_to_level, "cairo_ps_surface_restrict_to_level", LIBRARY.CAIRO);
	Linker.link(cairo_ps_get_levels, "cairo_ps_get_levels", LIBRARY.CAIRO);
	Linker.link(cairo_ps_level_to_string, "cairo_ps_level_to_string", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_set_eps, "cairo_ps_surface_set_eps", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_get_eps, "cairo_ps_surface_get_eps", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_set_size, "cairo_ps_surface_set_size", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_dsc_begin_setup, "cairo_ps_surface_dsc_begin_setup", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_dsc_begin_page_setup, "cairo_ps_surface_dsc_begin_page_setup", LIBRARY.CAIRO);
	Linker.link(cairo_ps_surface_dsc_comment, "cairo_ps_surface_dsc_comment", LIBRARY.CAIRO);

	// cairo.SvgSurface

	Linker.link(cairo_svg_surface_create, "cairo_svg_surface_create", LIBRARY.CAIRO);
	Linker.link(cairo_svg_surface_create_for_stream, "cairo_svg_surface_create_for_stream", LIBRARY.CAIRO);
	Linker.link(cairo_svg_surface_restrict_to_version, "cairo_svg_surface_restrict_to_version", LIBRARY.CAIRO);
	Linker.link(cairo_svg_get_versions, "cairo_svg_get_versions", LIBRARY.CAIRO);
	Linker.link(cairo_svg_version_to_string, "cairo_svg_version_to_string", LIBRARY.CAIRO);

	// cairo.Matrix

	Linker.link(cairo_matrix_init, "cairo_matrix_init", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_init_identity, "cairo_matrix_init_identity", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_init_translate, "cairo_matrix_init_translate", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_init_scale, "cairo_matrix_init_scale", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_init_rotate, "cairo_matrix_init_rotate", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_translate, "cairo_matrix_translate", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_scale, "cairo_matrix_scale", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_rotate, "cairo_matrix_rotate", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_invert, "cairo_matrix_invert", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_multiply, "cairo_matrix_multiply", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_transform_distance, "cairo_matrix_transform_distance", LIBRARY.CAIRO);
	Linker.link(cairo_matrix_transform_point, "cairo_matrix_transform_point", LIBRARY.CAIRO);

	// cairo.Status

	Linker.link(cairo_status_to_string, "cairo_status_to_string", LIBRARY.CAIRO);
	Linker.link(cairo_debug_reset_static_data, "cairo_debug_reset_static_data", LIBRARY.CAIRO);

	// cairo.Version

	Linker.link(cairo_version, "cairo_version", LIBRARY.CAIRO);
	Linker.link(cairo_version_string, "cairo_version_string", LIBRARY.CAIRO);

	// cairo.

}

extern(C)
{
	
	// cairo.Context
	
	typedef cairo_t* function(cairo_surface_t* target) c_cairo_create;
	typedef cairo_t* function(cairo_t* cr) c_cairo_reference;
	typedef void function(cairo_t* cr) c_cairo_destroy;
	typedef cairo_status_t function(cairo_t* cr) c_cairo_status;
	typedef void function(cairo_t* cr) c_cairo_save;
	typedef void function(cairo_t* cr) c_cairo_restore;
	typedef cairo_surface_t* function(cairo_t* cr) c_cairo_get_target;
	typedef void function(cairo_t* cr) c_cairo_push_group;
	typedef void function(cairo_t* cr, cairo_content_t content) c_cairo_push_group_with_content;
	typedef cairo_pattern_t* function(cairo_t* cr) c_cairo_pop_group;
	typedef void function(cairo_t* cr) c_cairo_pop_group_to_source;
	typedef cairo_surface_t* function(cairo_t* cr) c_cairo_get_group_target;
	typedef void function(cairo_t* cr, double red, double green, double blue) c_cairo_set_source_rgb;
	typedef void function(cairo_t* cr, double red, double green, double blue, double alpha) c_cairo_set_source_rgba;
	typedef void function(cairo_t* cr, cairo_pattern_t* source) c_cairo_set_source;
	typedef void function(cairo_t* cr, cairo_surface_t* surface, double x, double y) c_cairo_set_source_surface;
	typedef cairo_pattern_t* function(cairo_t* cr) c_cairo_get_source;
	typedef void function(cairo_t* cr, cairo_antialias_t antialias) c_cairo_set_antialias;
	typedef cairo_antialias_t function(cairo_t* cr) c_cairo_get_antialias;
	typedef void function(cairo_t* cr, double* dashes, int numDashes, double offset) c_cairo_set_dash;
	typedef int function(cairo_t* cr) c_cairo_get_dash_count;
	typedef void function(cairo_t* cr, double* dashes, double* offset) c_cairo_get_dash;
	typedef void function(cairo_t* cr, cairo_fill_rule_t fillRule) c_cairo_set_fill_rule;
	typedef cairo_fill_rule_t function(cairo_t* cr) c_cairo_get_fill_rule;
	typedef void function(cairo_t* cr, cairo_line_cap_t lineCap) c_cairo_set_line_cap;
	typedef cairo_line_cap_t function(cairo_t* cr) c_cairo_get_line_cap;
	typedef void function(cairo_t* cr, cairo_line_join_t lineJoin) c_cairo_set_line_join;
	typedef cairo_line_join_t function(cairo_t* cr) c_cairo_get_line_join;
	typedef void function(cairo_t* cr, double width) c_cairo_set_line_width;
	typedef double function(cairo_t* cr) c_cairo_get_line_width;
	typedef void function(cairo_t* cr, double limit) c_cairo_set_miter_limit;
	typedef double function(cairo_t* cr) c_cairo_get_miter_limit;
	typedef void function(cairo_t* cr, cairo_operator_t op) c_cairo_set_operator;
	typedef cairo_operator_t function(cairo_t* cr) c_cairo_get_operator;
	typedef void function(cairo_t* cr, double tolerance) c_cairo_set_tolerance;
	typedef double function(cairo_t* cr) c_cairo_get_tolerance;
	typedef void function(cairo_t* cr) c_cairo_clip;
	typedef void function(cairo_t* cr) c_cairo_clip_preserve;
	typedef void function(cairo_t* cr, double* x1, double* y1, double* x2, double* y2) c_cairo_clip_extents;
	typedef void function(cairo_t* cr) c_cairo_reset_clip;
	typedef void function(cairo_rectangle_list_t* rectangleList) c_cairo_rectangle_list_destroy;
	typedef cairo_rectangle_list_t* function(cairo_t* cr) c_cairo_copy_clip_rectangle_list;
	typedef void function(cairo_t* cr) c_cairo_fill;
	typedef void function(cairo_t* cr) c_cairo_fill_preserve;
	typedef void function(cairo_t* cr, double* x1, double* y1, double* x2, double* y2) c_cairo_fill_extents;
	typedef cairo_bool_t function(cairo_t* cr, double x, double y) c_cairo_in_fill;
	typedef void function(cairo_t* cr, cairo_pattern_t* pattern) c_cairo_mask;
	typedef void function(cairo_t* cr, cairo_surface_t* surface, double surfaceX, double surfaceY) c_cairo_mask_surface;
	typedef void function(cairo_t* cr) c_cairo_paint;
	typedef void function(cairo_t* cr, double alpha) c_cairo_paint_with_alpha;
	typedef void function(cairo_t* cr) c_cairo_stroke;
	typedef void function(cairo_t* cr) c_cairo_stroke_preserve;
	typedef void function(cairo_t* cr, double* x1, double* y1, double* x2, double* y2) c_cairo_stroke_extents;
	typedef cairo_bool_t function(cairo_t* cr, double x, double y) c_cairo_in_stroke;
	typedef void function(cairo_t* cr) c_cairo_copy_page;
	typedef void function(cairo_t* cr) c_cairo_show_page;
	typedef uint function(cairo_t* cr) c_cairo_get_reference_count;
	typedef cairo_status_t function(cairo_t* cr, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_set_user_data;
	typedef void* function(cairo_t* cr, cairo_user_data_key_t* key) c_cairo_get_user_data;
	typedef cairo_path_t* function(cairo_t* cr) c_cairo_copy_path;
	typedef cairo_path_t* function(cairo_t* cr) c_cairo_copy_path_flat;
	typedef void function(cairo_path_t* path) c_cairo_path_destroy;
	typedef void function(cairo_t* cr, cairo_path_t* path) c_cairo_append_path;
	typedef cairo_bool_t function(cairo_t* cr) c_cairo_has_current_point;
	typedef void function(cairo_t* cr, double* x, double* y) c_cairo_get_current_point;
	typedef void function(cairo_t* cr) c_cairo_new_path;
	typedef void function(cairo_t* cr) c_cairo_new_sub_path;
	typedef void function(cairo_t* cr) c_cairo_close_path;
	typedef void function(cairo_t* cr, double xc, double yc, double radius, double angle1, double angle2) c_cairo_arc;
	typedef void function(cairo_t* cr, double xc, double yc, double radius, double angle1, double angle2) c_cairo_arc_negative;
	typedef void function(cairo_t* cr, double x1, double y1, double x2, double y2, double x3, double y3) c_cairo_curve_to;
	typedef void function(cairo_t* cr, double x, double y) c_cairo_line_to;
	typedef void function(cairo_t* cr, double x, double y) c_cairo_move_to;
	typedef void function(cairo_t* cr, double x, double y, double width, double height) c_cairo_rectangle;
	typedef void function(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs) c_cairo_glyph_path;
	typedef void function(cairo_t* cr, char* utf8) c_cairo_text_path;
	typedef void function(cairo_t* cr, double dx1, double dy1, double dx2, double dy2, double dx3, double dy3) c_cairo_rel_curve_to;
	typedef void function(cairo_t* cr, double dx, double dy) c_cairo_rel_line_to;
	typedef void function(cairo_t* cr, double dx, double dy) c_cairo_rel_move_to;
	typedef void function(cairo_t* cr, double* x1, double* y1, double* x2, double* y2) c_cairo_path_extents;
	typedef void function(cairo_t* cr, double tx, double ty) c_cairo_translate;
	typedef void function(cairo_t* cr, double sx, double sy) c_cairo_scale;
	typedef void function(cairo_t* cr, double angle) c_cairo_rotate;
	typedef void function(cairo_t* cr, cairo_matrix_t* matrix) c_cairo_transform;
	typedef void function(cairo_t* cr, cairo_matrix_t* matrix) c_cairo_set_matrix;
	typedef void function(cairo_t* cr, cairo_matrix_t* matrix) c_cairo_get_matrix;
	typedef void function(cairo_t* cr) c_cairo_identity_matrix;
	typedef void function(cairo_t* cr, double* x, double* y) c_cairo_user_to_device;
	typedef void function(cairo_t* cr, double* dx, double* dy) c_cairo_user_to_device_distance;
	typedef void function(cairo_t* cr, double* x, double* y) c_cairo_device_to_user;
	typedef void function(cairo_t* cr, double* dx, double* dy) c_cairo_device_to_user_distance;
	typedef void function(cairo_t* cr, char* family, cairo_font_slant_t slant, cairo_font_weight_t weight) c_cairo_select_font_face;
	typedef void function(cairo_t* cr, double size) c_cairo_set_font_size;
	typedef void function(cairo_t* cr, cairo_matrix_t* matrix) c_cairo_set_font_matrix;
	typedef void function(cairo_t* cr, cairo_matrix_t* matrix) c_cairo_get_font_matrix;
	typedef void function(cairo_t* cr, cairo_font_options_t* options) c_cairo_set_font_options;
	typedef void function(cairo_t* cr, cairo_font_options_t* options) c_cairo_get_font_options;
	typedef void function(cairo_t* cr, cairo_font_face_t* fontFace) c_cairo_set_font_face;
	typedef cairo_font_face_t* function(cairo_t* cr) c_cairo_get_font_face;
	typedef void function(cairo_t* cr, cairo_scaled_font_t* scaledFont) c_cairo_set_scaled_font;
	typedef cairo_scaled_font_t* function(cairo_t* cr) c_cairo_get_scaled_font;
	typedef void function(cairo_t* cr, char* utf8) c_cairo_show_text;
	typedef void function(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs) c_cairo_show_glyphs;
	typedef void function(cairo_t* cr, char* utf8, int utf8_Len, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_cluster_t* clusters, int numClusters, cairo_text_cluster_flags_t clusterFlags) c_cairo_show_text_glyphs;
	typedef void function(cairo_t* cr, cairo_font_extents_t* extents) c_cairo_font_extents;
	typedef void function(cairo_t* cr, char* utf8, cairo_text_extents_t* extents) c_cairo_text_extents;
	typedef void function(cairo_t* cr, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents) c_cairo_glyph_extents;
	typedef cairo_font_face_t* function(char* family, cairo_font_slant_t slant, cairo_font_weight_t weight) c_cairo_toy_font_face_create;
	typedef char* function(cairo_font_face_t* fontFace) c_cairo_toy_font_face_get_family;
	typedef cairo_font_slant_t function(cairo_font_face_t* fontFace) c_cairo_toy_font_face_get_slant;
	typedef cairo_font_weight_t function(cairo_font_face_t* fontFace) c_cairo_toy_font_face_get_weight;
	typedef cairo_glyph_t* function(int numGlyphs) c_cairo_glyph_allocate;
	typedef void function(cairo_glyph_t* glyphs) c_cairo_glyph_free;
	typedef cairo_text_cluster_t* function(int numClusters) c_cairo_text_cluster_allocate;
	typedef void function(cairo_text_cluster_t* clusters) c_cairo_text_cluster_free;
	
	// cairo.Pattern
	
	typedef void function(cairo_pattern_t* pattern, double offset, double red, double green, double blue) c_cairo_pattern_add_color_stop_rgb;
	typedef void function(cairo_pattern_t* pattern, double offset, double red, double green, double blue, double alpha) c_cairo_pattern_add_color_stop_rgba;
	typedef cairo_status_t function(cairo_pattern_t* pattern, int* count) c_cairo_pattern_get_color_stop_count;
	typedef cairo_status_t function(cairo_pattern_t* pattern, int index, double* offset, double* red, double* green, double* blue, double* alpha) c_cairo_pattern_get_color_stop_rgba;
	typedef cairo_pattern_t* function(double red, double green, double blue) c_cairo_pattern_create_rgb;
	typedef cairo_pattern_t* function(double red, double green, double blue, double alpha) c_cairo_pattern_create_rgba;
	typedef cairo_status_t function(cairo_pattern_t* pattern, double* red, double* green, double* blue, double* alpha) c_cairo_pattern_get_rgba;
	typedef cairo_pattern_t* function(cairo_surface_t* surface) c_cairo_pattern_create_for_surface;
	typedef cairo_status_t function(cairo_pattern_t* pattern, cairo_surface_t** surface) c_cairo_pattern_get_surface;
	typedef cairo_pattern_t* function(double x0, double y0, double x1, double y1) c_cairo_pattern_create_linear;
	typedef cairo_status_t function(cairo_pattern_t* pattern, double* x0, double* y0, double* x1, double* y1) c_cairo_pattern_get_linear_points;
	typedef cairo_pattern_t* function(double cx0, double cy0, double radius0, double cx1, double cy1, double radius1) c_cairo_pattern_create_radial;
	typedef cairo_status_t function(cairo_pattern_t* pattern, double* x0, double* y0, double* r0, double* x1, double* y1, double* r1) c_cairo_pattern_get_radial_circles;
	typedef cairo_pattern_t* function(cairo_pattern_t* pattern) c_cairo_pattern_reference;
	typedef void function(cairo_pattern_t* pattern) c_cairo_pattern_destroy;
	typedef cairo_status_t function(cairo_pattern_t* pattern) c_cairo_pattern_status;
	typedef void function(cairo_pattern_t* pattern, cairo_extend_t extend) c_cairo_pattern_set_extend;
	typedef cairo_extend_t function(cairo_pattern_t* pattern) c_cairo_pattern_get_extend;
	typedef void function(cairo_pattern_t* pattern, cairo_filter_t filter) c_cairo_pattern_set_filter;
	typedef cairo_filter_t function(cairo_pattern_t* pattern) c_cairo_pattern_get_filter;
	typedef void function(cairo_pattern_t* pattern, cairo_matrix_t* matrix) c_cairo_pattern_set_matrix;
	typedef void function(cairo_pattern_t* pattern, cairo_matrix_t* matrix) c_cairo_pattern_get_matrix;
	typedef cairo_pattern_type_t function(cairo_pattern_t* pattern) c_cairo_pattern_get_type;
	typedef uint function(cairo_pattern_t* pattern) c_cairo_pattern_get_reference_count;
	typedef cairo_status_t function(cairo_pattern_t* pattern, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_pattern_set_user_data;
	typedef void* function(cairo_pattern_t* pattern, cairo_user_data_key_t* key) c_cairo_pattern_get_user_data;
	
	// cairo.FontFace
	
	typedef cairo_font_face_t* function(cairo_font_face_t* fontFace) c_cairo_font_face_reference;
	typedef void function(cairo_font_face_t* fontFace) c_cairo_font_face_destroy;
	typedef cairo_status_t function(cairo_font_face_t* fontFace) c_cairo_font_face_status;
	typedef cairo_font_type_t function(cairo_font_face_t* fontFace) c_cairo_font_face_get_type;
	typedef uint function(cairo_font_face_t* fontFace) c_cairo_font_face_get_reference_count;
	typedef cairo_status_t function(cairo_font_face_t* fontFace, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_font_face_set_user_data;
	typedef void* function(cairo_font_face_t* fontFace, cairo_user_data_key_t* key) c_cairo_font_face_get_user_data;
	
	// cairo.ScaledFont
	
	typedef cairo_scaled_font_t* function(cairo_font_face_t* fontFace, cairo_matrix_t* fontMatrix, cairo_matrix_t* ctm, cairo_font_options_t* options) c_cairo_scaled_font_create;
	typedef cairo_scaled_font_t* function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_reference;
	typedef void function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_destroy;
	typedef cairo_status_t function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_status;
	typedef void function(cairo_scaled_font_t* scaledFont, cairo_font_extents_t* extents) c_cairo_scaled_font_extents;
	typedef void function(cairo_scaled_font_t* scaledFont, char* utf8, cairo_text_extents_t* extents) c_cairo_scaled_font_text_extents;
	typedef void function(cairo_scaled_font_t* scaledFont, cairo_glyph_t* glyphs, int numGlyphs, cairo_text_extents_t* extents) c_cairo_scaled_font_glyph_extents;
	typedef cairo_status_t function(cairo_scaled_font_t* scaledFont, double x, double y, char* utf8, int utf8_Len, cairo_glyph_t** glyphs, int* numGlyphs, cairo_text_cluster_t** clusters, int* numClusters, cairo_text_cluster_flags_t* clusterFlags) c_cairo_scaled_font_text_to_glyphs;
	typedef cairo_font_face_t* function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_get_font_face;
	typedef void function(cairo_scaled_font_t* scaledFont, cairo_font_options_t* options) c_cairo_scaled_font_get_font_options;
	typedef void function(cairo_scaled_font_t* scaledFont, cairo_matrix_t* fontMatrix) c_cairo_scaled_font_get_font_matrix;
	typedef void function(cairo_scaled_font_t* scaledFont, cairo_matrix_t* ctm) c_cairo_scaled_font_get_ctm;
	typedef void function(cairo_scaled_font_t* scaledFont, cairo_matrix_t* scaleMatrix) c_cairo_scaled_font_get_scale_matrix;
	typedef cairo_font_type_t function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_get_type;
	typedef uint function(cairo_scaled_font_t* scaledFont) c_cairo_scaled_font_get_reference_count;
	typedef cairo_status_t function(cairo_scaled_font_t* scaledFont, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_scaled_font_set_user_data;
	typedef void* function(cairo_scaled_font_t* scaledFont, cairo_user_data_key_t* key) c_cairo_scaled_font_get_user_data;
	
	// cairo.FontOption
	
	typedef cairo_font_options_t* function() c_cairo_font_options_create;
	typedef cairo_font_options_t* function(cairo_font_options_t* original) c_cairo_font_options_copy;
	typedef void function(cairo_font_options_t* options) c_cairo_font_options_destroy;
	typedef cairo_status_t function(cairo_font_options_t* options) c_cairo_font_options_status;
	typedef void function(cairo_font_options_t* options, cairo_font_options_t* other) c_cairo_font_options_merge;
	typedef ulong function(cairo_font_options_t* options) c_cairo_font_options_hash;
	typedef cairo_bool_t function(cairo_font_options_t* options, cairo_font_options_t* other) c_cairo_font_options_equal;
	typedef void function(cairo_font_options_t* options, cairo_antialias_t antialias) c_cairo_font_options_set_antialias;
	typedef cairo_antialias_t function(cairo_font_options_t* options) c_cairo_font_options_get_antialias;
	typedef void function(cairo_font_options_t* options, cairo_subpixel_order_t subpixelOrder) c_cairo_font_options_set_subpixel_order;
	typedef cairo_subpixel_order_t function(cairo_font_options_t* options) c_cairo_font_options_get_subpixel_order;
	typedef void function(cairo_font_options_t* options, cairo_hint_style_t hintStyle) c_cairo_font_options_set_hint_style;
	typedef cairo_hint_style_t function(cairo_font_options_t* options) c_cairo_font_options_get_hint_style;
	typedef void function(cairo_font_options_t* options, cairo_hint_metrics_t hintMetrics) c_cairo_font_options_set_hint_metrics;
	typedef cairo_hint_metrics_t function(cairo_font_options_t* options) c_cairo_font_options_get_hint_metrics;
	
	// cairo.UserFontFace
	
	typedef cairo_font_face_t* function() c_cairo_user_font_face_create;
	typedef void function(cairo_font_face_t* fontFace, cairo_user_scaled_font_init_func_t initFunc) c_cairo_user_font_face_set_init_func;
	typedef cairo_user_scaled_font_init_func_t function(cairo_font_face_t* fontFace) c_cairo_user_font_face_get_init_func;
	typedef void function(cairo_font_face_t* fontFace, cairo_user_scaled_font_render_glyph_func_t renderGlyphFunc) c_cairo_user_font_face_set_render_glyph_func;
	typedef cairo_user_scaled_font_render_glyph_func_t function(cairo_font_face_t* fontFace) c_cairo_user_font_face_get_render_glyph_func;
	typedef void function(cairo_font_face_t* fontFace, cairo_user_scaled_font_unicode_to_glyph_func_t unicodeToGlyphFunc) c_cairo_user_font_face_set_unicode_to_glyph_func;
	typedef cairo_user_scaled_font_unicode_to_glyph_func_t function(cairo_font_face_t* fontFace) c_cairo_user_font_face_get_unicode_to_glyph_func;
	typedef void function(cairo_font_face_t* fontFace, cairo_user_scaled_font_text_to_glyphs_func_t textToGlyphsFunc) c_cairo_user_font_face_set_text_to_glyphs_func;
	typedef cairo_user_scaled_font_text_to_glyphs_func_t function(cairo_font_face_t* fontFace) c_cairo_user_font_face_get_text_to_glyphs_func;
	
	// cairo.Surface
	
	typedef cairo_surface_t* function(cairo_surface_t* other, cairo_content_t content, int width, int height) c_cairo_surface_create_similar;
	typedef cairo_surface_t* function(cairo_surface_t* surface) c_cairo_surface_reference;
	typedef void function(cairo_surface_t* surface) c_cairo_surface_destroy;
	typedef cairo_status_t function(cairo_surface_t* surface) c_cairo_surface_status;
	typedef void function(cairo_surface_t* surface) c_cairo_surface_finish;
	typedef void function(cairo_surface_t* surface) c_cairo_surface_flush;
	typedef void function(cairo_surface_t* surface, cairo_font_options_t* options) c_cairo_surface_get_font_options;
	typedef cairo_content_t function(cairo_surface_t* surface) c_cairo_surface_get_content;
	typedef void function(cairo_surface_t* surface) c_cairo_surface_mark_dirty;
	typedef void function(cairo_surface_t* surface, int x, int y, int width, int height) c_cairo_surface_mark_dirty_rectangle;
	typedef void function(cairo_surface_t* surface, double xOffset, double yOffset) c_cairo_surface_set_device_offset;
	typedef void function(cairo_surface_t* surface, double* xOffset, double* yOffset) c_cairo_surface_get_device_offset;
	typedef void function(cairo_surface_t* surface, double xPixelsPerInch, double yPixelsPerInch) c_cairo_surface_set_fallback_resolution;
	typedef void function(cairo_surface_t* surface, double* xPixelsPerInch, double* yPixelsPerInch) c_cairo_surface_get_fallback_resolution;
	typedef cairo_surface_type_t function(cairo_surface_t* surface) c_cairo_surface_get_type;
	typedef uint function(cairo_surface_t* surface) c_cairo_surface_get_reference_count;
	typedef cairo_status_t function(cairo_surface_t* surface, cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy) c_cairo_surface_set_user_data;
	typedef void* function(cairo_surface_t* surface, cairo_user_data_key_t* key) c_cairo_surface_get_user_data;
	typedef void function(cairo_surface_t* surface) c_cairo_surface_copy_page;
	typedef void function(cairo_surface_t* surface) c_cairo_surface_show_page;
	typedef cairo_bool_t function(cairo_surface_t* surface) c_cairo_surface_has_show_text_glyphs;
	
	// cairo.ImageSurface
	
	typedef int function(cairo_format_t format, int width) c_cairo_format_stride_for_width;
	typedef cairo_surface_t* function(cairo_format_t format, int width, int height) c_cairo_image_surface_create;
	typedef cairo_surface_t* function(uchar* data, cairo_format_t format, int width, int height, int stride) c_cairo_image_surface_create_for_data;
	typedef uchar* function(cairo_surface_t* surface) c_cairo_image_surface_get_data;
	typedef cairo_format_t function(cairo_surface_t* surface) c_cairo_image_surface_get_format;
	typedef int function(cairo_surface_t* surface) c_cairo_image_surface_get_width;
	typedef int function(cairo_surface_t* surface) c_cairo_image_surface_get_height;
	typedef int function(cairo_surface_t* surface) c_cairo_image_surface_get_stride;
	typedef cairo_surface_t* function(char* filename) c_cairo_image_surface_create_from_png;
	typedef cairo_surface_t* function(cairo_read_func_t readFunc, void* closure) c_cairo_image_surface_create_from_png_stream;
	typedef cairo_status_t function(cairo_surface_t* surface, char* filename) c_cairo_surface_write_to_png;
	typedef cairo_status_t function(cairo_surface_t* surface, cairo_write_func_t writeFunc, void* closure) c_cairo_surface_write_to_png_stream;
	
	// cairo.PdfSurface
	
	typedef cairo_surface_t* function(char* filename, double widthInPoints, double heightInPoints) c_cairo_pdf_surface_create;
	typedef cairo_surface_t* function(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints) c_cairo_pdf_surface_create_for_stream;
	typedef void function(cairo_surface_t* surface, double widthInPoints, double heightInPoints) c_cairo_pdf_surface_set_size;
	
	// cairo.PostScriptSurface
	
	typedef cairo_surface_t* function(char* filename, double widthInPoints, double heightInPoints) c_cairo_ps_surface_create;
	typedef cairo_surface_t* function(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints) c_cairo_ps_surface_create_for_stream;
	typedef void function(cairo_surface_t* surface, cairo_ps_level_t level) c_cairo_ps_surface_restrict_to_level;
	typedef void function(cairo_ps_level_t** levels, int* numLevels) c_cairo_ps_get_levels;
	typedef char* function(cairo_ps_level_t level) c_cairo_ps_level_to_string;
	typedef void function(cairo_surface_t* surface, cairo_bool_t eps) c_cairo_ps_surface_set_eps;
	typedef cairo_bool_t function(cairo_surface_t* surface) c_cairo_ps_surface_get_eps;
	typedef void function(cairo_surface_t* surface, double widthInPoints, double heightInPoints) c_cairo_ps_surface_set_size;
	typedef void function(cairo_surface_t* surface) c_cairo_ps_surface_dsc_begin_setup;
	typedef void function(cairo_surface_t* surface) c_cairo_ps_surface_dsc_begin_page_setup;
	typedef void function(cairo_surface_t* surface, char* comment) c_cairo_ps_surface_dsc_comment;
	
	// cairo.SvgSurface
	
	typedef cairo_surface_t* function(char* filename, double widthInPoints, double heightInPoints) c_cairo_svg_surface_create;
	typedef cairo_surface_t* function(cairo_write_func_t writeFunc, void* closure, double widthInPoints, double heightInPoints) c_cairo_svg_surface_create_for_stream;
	typedef void function(cairo_surface_t* surface, cairo_svg_version_t versio) c_cairo_svg_surface_restrict_to_version;
	typedef void function(cairo_svg_version_t** versions, int* numVersions) c_cairo_svg_get_versions;
	typedef char* function(cairo_svg_version_t versio) c_cairo_svg_version_to_string;
	
	// cairo.Matrix
	
	typedef void function(cairo_matrix_t* matrix, double xx, double yx, double xy, double yy, double x0, double y0) c_cairo_matrix_init;
	typedef void function(cairo_matrix_t* matrix) c_cairo_matrix_init_identity;
	typedef void function(cairo_matrix_t* matrix, double tx, double ty) c_cairo_matrix_init_translate;
	typedef void function(cairo_matrix_t* matrix, double sx, double sy) c_cairo_matrix_init_scale;
	typedef void function(cairo_matrix_t* matrix, double radians) c_cairo_matrix_init_rotate;
	typedef void function(cairo_matrix_t* matrix, double tx, double ty) c_cairo_matrix_translate;
	typedef void function(cairo_matrix_t* matrix, double sx, double sy) c_cairo_matrix_scale;
	typedef void function(cairo_matrix_t* matrix, double radians) c_cairo_matrix_rotate;
	typedef cairo_status_t function(cairo_matrix_t* matrix) c_cairo_matrix_invert;
	typedef void function(cairo_matrix_t* result, cairo_matrix_t* a, cairo_matrix_t* b) c_cairo_matrix_multiply;
	typedef void function(cairo_matrix_t* matrix, double* dx, double* dy) c_cairo_matrix_transform_distance;
	typedef void function(cairo_matrix_t* matrix, double* x, double* y) c_cairo_matrix_transform_point;
	
	// cairo.Status
	
	typedef char* function(cairo_status_t status) c_cairo_status_to_string;
	typedef void function() c_cairo_debug_reset_static_data;
	
	// cairo.Version
	
	typedef int function() c_cairo_version;
	typedef char* function() c_cairo_version_string;
	
	// cairo.
	
}

// cairo.Context

c_cairo_create  cairo_create;
c_cairo_reference  cairo_reference;
c_cairo_destroy  cairo_destroy;
c_cairo_status  cairo_status;
c_cairo_save  cairo_save;
c_cairo_restore  cairo_restore;
c_cairo_get_target  cairo_get_target;
c_cairo_push_group  cairo_push_group;
c_cairo_push_group_with_content  cairo_push_group_with_content;
c_cairo_pop_group  cairo_pop_group;
c_cairo_pop_group_to_source  cairo_pop_group_to_source;
c_cairo_get_group_target  cairo_get_group_target;
c_cairo_set_source_rgb  cairo_set_source_rgb;
c_cairo_set_source_rgba  cairo_set_source_rgba;
c_cairo_set_source  cairo_set_source;
c_cairo_set_source_surface  cairo_set_source_surface;
c_cairo_get_source  cairo_get_source;
c_cairo_set_antialias  cairo_set_antialias;
c_cairo_get_antialias  cairo_get_antialias;
c_cairo_set_dash  cairo_set_dash;
c_cairo_get_dash_count  cairo_get_dash_count;
c_cairo_get_dash  cairo_get_dash;
c_cairo_set_fill_rule  cairo_set_fill_rule;
c_cairo_get_fill_rule  cairo_get_fill_rule;
c_cairo_set_line_cap  cairo_set_line_cap;
c_cairo_get_line_cap  cairo_get_line_cap;
c_cairo_set_line_join  cairo_set_line_join;
c_cairo_get_line_join  cairo_get_line_join;
c_cairo_set_line_width  cairo_set_line_width;
c_cairo_get_line_width  cairo_get_line_width;
c_cairo_set_miter_limit  cairo_set_miter_limit;
c_cairo_get_miter_limit  cairo_get_miter_limit;
c_cairo_set_operator  cairo_set_operator;
c_cairo_get_operator  cairo_get_operator;
c_cairo_set_tolerance  cairo_set_tolerance;
c_cairo_get_tolerance  cairo_get_tolerance;
c_cairo_clip  cairo_clip;
c_cairo_clip_preserve  cairo_clip_preserve;
c_cairo_clip_extents  cairo_clip_extents;
c_cairo_reset_clip  cairo_reset_clip;
c_cairo_rectangle_list_destroy  cairo_rectangle_list_destroy;
c_cairo_copy_clip_rectangle_list  cairo_copy_clip_rectangle_list;
c_cairo_fill  cairo_fill;
c_cairo_fill_preserve  cairo_fill_preserve;
c_cairo_fill_extents  cairo_fill_extents;
c_cairo_in_fill  cairo_in_fill;
c_cairo_mask  cairo_mask;
c_cairo_mask_surface  cairo_mask_surface;
c_cairo_paint  cairo_paint;
c_cairo_paint_with_alpha  cairo_paint_with_alpha;
c_cairo_stroke  cairo_stroke;
c_cairo_stroke_preserve  cairo_stroke_preserve;
c_cairo_stroke_extents  cairo_stroke_extents;
c_cairo_in_stroke  cairo_in_stroke;
c_cairo_copy_page  cairo_copy_page;
c_cairo_show_page  cairo_show_page;
c_cairo_get_reference_count  cairo_get_reference_count;
c_cairo_set_user_data  cairo_set_user_data;
c_cairo_get_user_data  cairo_get_user_data;
c_cairo_copy_path  cairo_copy_path;
c_cairo_copy_path_flat  cairo_copy_path_flat;
c_cairo_path_destroy  cairo_path_destroy;
c_cairo_append_path  cairo_append_path;
c_cairo_has_current_point  cairo_has_current_point;
c_cairo_get_current_point  cairo_get_current_point;
c_cairo_new_path  cairo_new_path;
c_cairo_new_sub_path  cairo_new_sub_path;
c_cairo_close_path  cairo_close_path;
c_cairo_arc  cairo_arc;
c_cairo_arc_negative  cairo_arc_negative;
c_cairo_curve_to  cairo_curve_to;
c_cairo_line_to  cairo_line_to;
c_cairo_move_to  cairo_move_to;
c_cairo_rectangle  cairo_rectangle;
c_cairo_glyph_path  cairo_glyph_path;
c_cairo_text_path  cairo_text_path;
c_cairo_rel_curve_to  cairo_rel_curve_to;
c_cairo_rel_line_to  cairo_rel_line_to;
c_cairo_rel_move_to  cairo_rel_move_to;
c_cairo_path_extents  cairo_path_extents;
c_cairo_translate  cairo_translate;
c_cairo_scale  cairo_scale;
c_cairo_rotate  cairo_rotate;
c_cairo_transform  cairo_transform;
c_cairo_set_matrix  cairo_set_matrix;
c_cairo_get_matrix  cairo_get_matrix;
c_cairo_identity_matrix  cairo_identity_matrix;
c_cairo_user_to_device  cairo_user_to_device;
c_cairo_user_to_device_distance  cairo_user_to_device_distance;
c_cairo_device_to_user  cairo_device_to_user;
c_cairo_device_to_user_distance  cairo_device_to_user_distance;
c_cairo_select_font_face  cairo_select_font_face;
c_cairo_set_font_size  cairo_set_font_size;
c_cairo_set_font_matrix  cairo_set_font_matrix;
c_cairo_get_font_matrix  cairo_get_font_matrix;
c_cairo_set_font_options  cairo_set_font_options;
c_cairo_get_font_options  cairo_get_font_options;
c_cairo_set_font_face  cairo_set_font_face;
c_cairo_get_font_face  cairo_get_font_face;
c_cairo_set_scaled_font  cairo_set_scaled_font;
c_cairo_get_scaled_font  cairo_get_scaled_font;
c_cairo_show_text  cairo_show_text;
c_cairo_show_glyphs  cairo_show_glyphs;
c_cairo_show_text_glyphs  cairo_show_text_glyphs;
c_cairo_font_extents  cairo_font_extents;
c_cairo_text_extents  cairo_text_extents;
c_cairo_glyph_extents  cairo_glyph_extents;
c_cairo_toy_font_face_create  cairo_toy_font_face_create;
c_cairo_toy_font_face_get_family  cairo_toy_font_face_get_family;
c_cairo_toy_font_face_get_slant  cairo_toy_font_face_get_slant;
c_cairo_toy_font_face_get_weight  cairo_toy_font_face_get_weight;
c_cairo_glyph_allocate  cairo_glyph_allocate;
c_cairo_glyph_free  cairo_glyph_free;
c_cairo_text_cluster_allocate  cairo_text_cluster_allocate;
c_cairo_text_cluster_free  cairo_text_cluster_free;

// cairo.Pattern

c_cairo_pattern_add_color_stop_rgb  cairo_pattern_add_color_stop_rgb;
c_cairo_pattern_add_color_stop_rgba  cairo_pattern_add_color_stop_rgba;
c_cairo_pattern_get_color_stop_count  cairo_pattern_get_color_stop_count;
c_cairo_pattern_get_color_stop_rgba  cairo_pattern_get_color_stop_rgba;
c_cairo_pattern_create_rgb  cairo_pattern_create_rgb;
c_cairo_pattern_create_rgba  cairo_pattern_create_rgba;
c_cairo_pattern_get_rgba  cairo_pattern_get_rgba;
c_cairo_pattern_create_for_surface  cairo_pattern_create_for_surface;
c_cairo_pattern_get_surface  cairo_pattern_get_surface;
c_cairo_pattern_create_linear  cairo_pattern_create_linear;
c_cairo_pattern_get_linear_points  cairo_pattern_get_linear_points;
c_cairo_pattern_create_radial  cairo_pattern_create_radial;
c_cairo_pattern_get_radial_circles  cairo_pattern_get_radial_circles;
c_cairo_pattern_reference  cairo_pattern_reference;
c_cairo_pattern_destroy  cairo_pattern_destroy;
c_cairo_pattern_status  cairo_pattern_status;
c_cairo_pattern_set_extend  cairo_pattern_set_extend;
c_cairo_pattern_get_extend  cairo_pattern_get_extend;
c_cairo_pattern_set_filter  cairo_pattern_set_filter;
c_cairo_pattern_get_filter  cairo_pattern_get_filter;
c_cairo_pattern_set_matrix  cairo_pattern_set_matrix;
c_cairo_pattern_get_matrix  cairo_pattern_get_matrix;
c_cairo_pattern_get_type  cairo_pattern_get_type;
c_cairo_pattern_get_reference_count  cairo_pattern_get_reference_count;
c_cairo_pattern_set_user_data  cairo_pattern_set_user_data;
c_cairo_pattern_get_user_data  cairo_pattern_get_user_data;

// cairo.FontFace

c_cairo_font_face_reference  cairo_font_face_reference;
c_cairo_font_face_destroy  cairo_font_face_destroy;
c_cairo_font_face_status  cairo_font_face_status;
c_cairo_font_face_get_type  cairo_font_face_get_type;
c_cairo_font_face_get_reference_count  cairo_font_face_get_reference_count;
c_cairo_font_face_set_user_data  cairo_font_face_set_user_data;
c_cairo_font_face_get_user_data  cairo_font_face_get_user_data;

// cairo.ScaledFont

c_cairo_scaled_font_create  cairo_scaled_font_create;
c_cairo_scaled_font_reference  cairo_scaled_font_reference;
c_cairo_scaled_font_destroy  cairo_scaled_font_destroy;
c_cairo_scaled_font_status  cairo_scaled_font_status;
c_cairo_scaled_font_extents  cairo_scaled_font_extents;
c_cairo_scaled_font_text_extents  cairo_scaled_font_text_extents;
c_cairo_scaled_font_glyph_extents  cairo_scaled_font_glyph_extents;
c_cairo_scaled_font_text_to_glyphs  cairo_scaled_font_text_to_glyphs;
c_cairo_scaled_font_get_font_face  cairo_scaled_font_get_font_face;
c_cairo_scaled_font_get_font_options  cairo_scaled_font_get_font_options;
c_cairo_scaled_font_get_font_matrix  cairo_scaled_font_get_font_matrix;
c_cairo_scaled_font_get_ctm  cairo_scaled_font_get_ctm;
c_cairo_scaled_font_get_scale_matrix  cairo_scaled_font_get_scale_matrix;
c_cairo_scaled_font_get_type  cairo_scaled_font_get_type;
c_cairo_scaled_font_get_reference_count  cairo_scaled_font_get_reference_count;
c_cairo_scaled_font_set_user_data  cairo_scaled_font_set_user_data;
c_cairo_scaled_font_get_user_data  cairo_scaled_font_get_user_data;

// cairo.FontOption

c_cairo_font_options_create  cairo_font_options_create;
c_cairo_font_options_copy  cairo_font_options_copy;
c_cairo_font_options_destroy  cairo_font_options_destroy;
c_cairo_font_options_status  cairo_font_options_status;
c_cairo_font_options_merge  cairo_font_options_merge;
c_cairo_font_options_hash  cairo_font_options_hash;
c_cairo_font_options_equal  cairo_font_options_equal;
c_cairo_font_options_set_antialias  cairo_font_options_set_antialias;
c_cairo_font_options_get_antialias  cairo_font_options_get_antialias;
c_cairo_font_options_set_subpixel_order  cairo_font_options_set_subpixel_order;
c_cairo_font_options_get_subpixel_order  cairo_font_options_get_subpixel_order;
c_cairo_font_options_set_hint_style  cairo_font_options_set_hint_style;
c_cairo_font_options_get_hint_style  cairo_font_options_get_hint_style;
c_cairo_font_options_set_hint_metrics  cairo_font_options_set_hint_metrics;
c_cairo_font_options_get_hint_metrics  cairo_font_options_get_hint_metrics;

// cairo.UserFontFace

c_cairo_user_font_face_create  cairo_user_font_face_create;
c_cairo_user_font_face_set_init_func  cairo_user_font_face_set_init_func;
c_cairo_user_font_face_get_init_func  cairo_user_font_face_get_init_func;
c_cairo_user_font_face_set_render_glyph_func  cairo_user_font_face_set_render_glyph_func;
c_cairo_user_font_face_get_render_glyph_func  cairo_user_font_face_get_render_glyph_func;
c_cairo_user_font_face_set_unicode_to_glyph_func  cairo_user_font_face_set_unicode_to_glyph_func;
c_cairo_user_font_face_get_unicode_to_glyph_func  cairo_user_font_face_get_unicode_to_glyph_func;
c_cairo_user_font_face_set_text_to_glyphs_func  cairo_user_font_face_set_text_to_glyphs_func;
c_cairo_user_font_face_get_text_to_glyphs_func  cairo_user_font_face_get_text_to_glyphs_func;

// cairo.Surface

c_cairo_surface_create_similar  cairo_surface_create_similar;
c_cairo_surface_reference  cairo_surface_reference;
c_cairo_surface_destroy  cairo_surface_destroy;
c_cairo_surface_status  cairo_surface_status;
c_cairo_surface_finish  cairo_surface_finish;
c_cairo_surface_flush  cairo_surface_flush;
c_cairo_surface_get_font_options  cairo_surface_get_font_options;
c_cairo_surface_get_content  cairo_surface_get_content;
c_cairo_surface_mark_dirty  cairo_surface_mark_dirty;
c_cairo_surface_mark_dirty_rectangle  cairo_surface_mark_dirty_rectangle;
c_cairo_surface_set_device_offset  cairo_surface_set_device_offset;
c_cairo_surface_get_device_offset  cairo_surface_get_device_offset;
c_cairo_surface_set_fallback_resolution  cairo_surface_set_fallback_resolution;
c_cairo_surface_get_fallback_resolution  cairo_surface_get_fallback_resolution;
c_cairo_surface_get_type  cairo_surface_get_type;
c_cairo_surface_get_reference_count  cairo_surface_get_reference_count;
c_cairo_surface_set_user_data  cairo_surface_set_user_data;
c_cairo_surface_get_user_data  cairo_surface_get_user_data;
c_cairo_surface_copy_page  cairo_surface_copy_page;
c_cairo_surface_show_page  cairo_surface_show_page;
c_cairo_surface_has_show_text_glyphs  cairo_surface_has_show_text_glyphs;

// cairo.ImageSurface

c_cairo_format_stride_for_width  cairo_format_stride_for_width;
c_cairo_image_surface_create  cairo_image_surface_create;
c_cairo_image_surface_create_for_data  cairo_image_surface_create_for_data;
c_cairo_image_surface_get_data  cairo_image_surface_get_data;
c_cairo_image_surface_get_format  cairo_image_surface_get_format;
c_cairo_image_surface_get_width  cairo_image_surface_get_width;
c_cairo_image_surface_get_height  cairo_image_surface_get_height;
c_cairo_image_surface_get_stride  cairo_image_surface_get_stride;
c_cairo_image_surface_create_from_png  cairo_image_surface_create_from_png;
c_cairo_image_surface_create_from_png_stream  cairo_image_surface_create_from_png_stream;
c_cairo_surface_write_to_png  cairo_surface_write_to_png;
c_cairo_surface_write_to_png_stream  cairo_surface_write_to_png_stream;

// cairo.PdfSurface

c_cairo_pdf_surface_create  cairo_pdf_surface_create;
c_cairo_pdf_surface_create_for_stream  cairo_pdf_surface_create_for_stream;
c_cairo_pdf_surface_set_size  cairo_pdf_surface_set_size;

// cairo.PostScriptSurface

c_cairo_ps_surface_create  cairo_ps_surface_create;
c_cairo_ps_surface_create_for_stream  cairo_ps_surface_create_for_stream;
c_cairo_ps_surface_restrict_to_level  cairo_ps_surface_restrict_to_level;
c_cairo_ps_get_levels  cairo_ps_get_levels;
c_cairo_ps_level_to_string  cairo_ps_level_to_string;
c_cairo_ps_surface_set_eps  cairo_ps_surface_set_eps;
c_cairo_ps_surface_get_eps  cairo_ps_surface_get_eps;
c_cairo_ps_surface_set_size  cairo_ps_surface_set_size;
c_cairo_ps_surface_dsc_begin_setup  cairo_ps_surface_dsc_begin_setup;
c_cairo_ps_surface_dsc_begin_page_setup  cairo_ps_surface_dsc_begin_page_setup;
c_cairo_ps_surface_dsc_comment  cairo_ps_surface_dsc_comment;

// cairo.SvgSurface

c_cairo_svg_surface_create  cairo_svg_surface_create;
c_cairo_svg_surface_create_for_stream  cairo_svg_surface_create_for_stream;
c_cairo_svg_surface_restrict_to_version  cairo_svg_surface_restrict_to_version;
c_cairo_svg_get_versions  cairo_svg_get_versions;
c_cairo_svg_version_to_string  cairo_svg_version_to_string;

// cairo.Matrix

c_cairo_matrix_init  cairo_matrix_init;
c_cairo_matrix_init_identity  cairo_matrix_init_identity;
c_cairo_matrix_init_translate  cairo_matrix_init_translate;
c_cairo_matrix_init_scale  cairo_matrix_init_scale;
c_cairo_matrix_init_rotate  cairo_matrix_init_rotate;
c_cairo_matrix_translate  cairo_matrix_translate;
c_cairo_matrix_scale  cairo_matrix_scale;
c_cairo_matrix_rotate  cairo_matrix_rotate;
c_cairo_matrix_invert  cairo_matrix_invert;
c_cairo_matrix_multiply  cairo_matrix_multiply;
c_cairo_matrix_transform_distance  cairo_matrix_transform_distance;
c_cairo_matrix_transform_point  cairo_matrix_transform_point;

// cairo.Status

c_cairo_status_to_string  cairo_status_to_string;
c_cairo_debug_reset_static_data  cairo_debug_reset_static_data;

// cairo.Version

c_cairo_version  cairo_version;
c_cairo_version_string  cairo_version_string;

// cairo.

