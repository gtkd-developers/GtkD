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


module gtkc.pango;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.pangotypes;
private import gtkc.cairotypes;
private import gtkc.Loader;
private import gtkc.paths;

static this()
{
	// pango.PgContext

	Linker.link(pango_itemize, "pango_itemize", LIBRARY.PANGO);
	Linker.link(pango_itemize_with_base_dir, "pango_itemize_with_base_dir", LIBRARY.PANGO);
	Linker.link(pango_reorder_items, "pango_reorder_items", LIBRARY.PANGO);
	Linker.link(pango_context_new, "pango_context_new", LIBRARY.PANGO);
	Linker.link(pango_context_set_font_map, "pango_context_set_font_map", LIBRARY.PANGO);
	Linker.link(pango_context_get_font_map, "pango_context_get_font_map", LIBRARY.PANGO);
	Linker.link(pango_context_get_font_description, "pango_context_get_font_description", LIBRARY.PANGO);
	Linker.link(pango_context_set_font_description, "pango_context_set_font_description", LIBRARY.PANGO);
	Linker.link(pango_context_get_language, "pango_context_get_language", LIBRARY.PANGO);
	Linker.link(pango_context_set_language, "pango_context_set_language", LIBRARY.PANGO);
	Linker.link(pango_context_get_base_dir, "pango_context_get_base_dir", LIBRARY.PANGO);
	Linker.link(pango_context_set_base_dir, "pango_context_set_base_dir", LIBRARY.PANGO);
	Linker.link(pango_context_get_base_gravity, "pango_context_get_base_gravity", LIBRARY.PANGO);
	Linker.link(pango_context_set_base_gravity, "pango_context_set_base_gravity", LIBRARY.PANGO);
	Linker.link(pango_context_get_gravity, "pango_context_get_gravity", LIBRARY.PANGO);
	Linker.link(pango_context_get_gravity_hint, "pango_context_get_gravity_hint", LIBRARY.PANGO);
	Linker.link(pango_context_set_gravity_hint, "pango_context_set_gravity_hint", LIBRARY.PANGO);
	Linker.link(pango_context_get_matrix, "pango_context_get_matrix", LIBRARY.PANGO);
	Linker.link(pango_context_set_matrix, "pango_context_set_matrix", LIBRARY.PANGO);
	Linker.link(pango_context_load_font, "pango_context_load_font", LIBRARY.PANGO);
	Linker.link(pango_context_load_fontset, "pango_context_load_fontset", LIBRARY.PANGO);
	Linker.link(pango_context_get_metrics, "pango_context_get_metrics", LIBRARY.PANGO);
	Linker.link(pango_context_list_families, "pango_context_list_families", LIBRARY.PANGO);
	Linker.link(pango_break, "pango_break", LIBRARY.PANGO);
	Linker.link(pango_get_log_attrs, "pango_get_log_attrs", LIBRARY.PANGO);
	Linker.link(pango_find_paragraph_boundary, "pango_find_paragraph_boundary", LIBRARY.PANGO);
	Linker.link(pango_default_break, "pango_default_break", LIBRARY.PANGO);
	Linker.link(pango_shape, "pango_shape", LIBRARY.PANGO);
	Linker.link(pango_unichar_direction, "pango_unichar_direction", LIBRARY.PANGO);
	Linker.link(pango_find_base_dir, "pango_find_base_dir", LIBRARY.PANGO);
	Linker.link(pango_get_mirror_char, "pango_get_mirror_char", LIBRARY.PANGO);
	Linker.link(pango_bidi_type_for_unichar, "pango_bidi_type_for_unichar", LIBRARY.PANGO);

	// pango.PgItem


	// pango.PgMatrix

	Linker.link(pango_units_to_double, "pango_units_to_double", LIBRARY.PANGO);
	Linker.link(pango_units_from_double, "pango_units_from_double", LIBRARY.PANGO);
	Linker.link(pango_extents_to_pixels, "pango_extents_to_pixels", LIBRARY.PANGO);
	Linker.link(pango_matrix_copy, "pango_matrix_copy", LIBRARY.PANGO);
	Linker.link(pango_matrix_free, "pango_matrix_free", LIBRARY.PANGO);
	Linker.link(pango_matrix_translate, "pango_matrix_translate", LIBRARY.PANGO);
	Linker.link(pango_matrix_scale, "pango_matrix_scale", LIBRARY.PANGO);
	Linker.link(pango_matrix_rotate, "pango_matrix_rotate", LIBRARY.PANGO);
	Linker.link(pango_matrix_concat, "pango_matrix_concat", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_point, "pango_matrix_transform_point", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_distance, "pango_matrix_transform_distance", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_rectangle, "pango_matrix_transform_rectangle", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_pixel_rectangle, "pango_matrix_transform_pixel_rectangle", LIBRARY.PANGO);
	Linker.link(pango_matrix_get_font_scale_factor, "pango_matrix_get_font_scale_factor", LIBRARY.PANGO);

	// pango.PgGlyphString

	Linker.link(pango_glyph_string_new, "pango_glyph_string_new", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_copy, "pango_glyph_string_copy", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_set_size, "pango_glyph_string_set_size", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_free, "pango_glyph_string_free", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_extents, "pango_glyph_string_extents", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_extents_range, "pango_glyph_string_extents_range", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_get_width, "pango_glyph_string_get_width", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_index_to_x, "pango_glyph_string_index_to_x", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_x_to_index, "pango_glyph_string_x_to_index", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_get_logical_widths, "pango_glyph_string_get_logical_widths", LIBRARY.PANGO);

	// pango.PgGlyphItem

	Linker.link(pango_glyph_item_copy, "pango_glyph_item_copy", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_free, "pango_glyph_item_free", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_split, "pango_glyph_item_split", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_apply_attrs, "pango_glyph_item_apply_attrs", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_letter_space, "pango_glyph_item_letter_space", LIBRARY.PANGO);

	// pango.PgGlyphItemIter

	Linker.link(pango_glyph_item_iter_copy, "pango_glyph_item_iter_copy", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_free, "pango_glyph_item_iter_free", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_init_start, "pango_glyph_item_iter_init_start", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_init_end, "pango_glyph_item_iter_init_end", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_next_cluster, "pango_glyph_item_iter_next_cluster", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_prev_cluster, "pango_glyph_item_iter_prev_cluster", LIBRARY.PANGO);

	// pango.PgFont

	Linker.link(pango_font_find_shaper, "pango_font_find_shaper", LIBRARY.PANGO);
	Linker.link(pango_font_describe, "pango_font_describe", LIBRARY.PANGO);
	Linker.link(pango_font_describe_with_absolute_size, "pango_font_describe_with_absolute_size", LIBRARY.PANGO);
	Linker.link(pango_font_get_coverage, "pango_font_get_coverage", LIBRARY.PANGO);
	Linker.link(pango_font_get_glyph_extents, "pango_font_get_glyph_extents", LIBRARY.PANGO);
	Linker.link(pango_font_get_metrics, "pango_font_get_metrics", LIBRARY.PANGO);
	Linker.link(pango_font_get_font_map, "pango_font_get_font_map", LIBRARY.PANGO);

	// pango.PgFontDescription

	Linker.link(pango_font_description_new, "pango_font_description_new", LIBRARY.PANGO);
	Linker.link(pango_font_description_copy, "pango_font_description_copy", LIBRARY.PANGO);
	Linker.link(pango_font_description_copy_static, "pango_font_description_copy_static", LIBRARY.PANGO);
	Linker.link(pango_font_description_hash, "pango_font_description_hash", LIBRARY.PANGO);
	Linker.link(pango_font_description_equal, "pango_font_description_equal", LIBRARY.PANGO);
	Linker.link(pango_font_description_free, "pango_font_description_free", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_family, "pango_font_description_set_family", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_family_static, "pango_font_description_set_family_static", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_family, "pango_font_description_get_family", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_style, "pango_font_description_set_style", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_style, "pango_font_description_get_style", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_variant, "pango_font_description_set_variant", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_variant, "pango_font_description_get_variant", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_weight, "pango_font_description_set_weight", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_weight, "pango_font_description_get_weight", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_stretch, "pango_font_description_set_stretch", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_stretch, "pango_font_description_get_stretch", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_size, "pango_font_description_set_size", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_size, "pango_font_description_get_size", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_absolute_size, "pango_font_description_set_absolute_size", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_size_is_absolute, "pango_font_description_get_size_is_absolute", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_gravity, "pango_font_description_set_gravity", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_gravity, "pango_font_description_get_gravity", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_set_fields, "pango_font_description_get_set_fields", LIBRARY.PANGO);
	Linker.link(pango_font_description_unset_fields, "pango_font_description_unset_fields", LIBRARY.PANGO);
	Linker.link(pango_font_description_merge, "pango_font_description_merge", LIBRARY.PANGO);
	Linker.link(pango_font_description_merge_static, "pango_font_description_merge_static", LIBRARY.PANGO);
	Linker.link(pango_font_description_better_match, "pango_font_description_better_match", LIBRARY.PANGO);
	Linker.link(pango_font_description_from_string, "pango_font_description_from_string", LIBRARY.PANGO);
	Linker.link(pango_font_description_to_string, "pango_font_description_to_string", LIBRARY.PANGO);
	Linker.link(pango_font_description_to_filename, "pango_font_description_to_filename", LIBRARY.PANGO);

	// pango.PgFontMetrics

	Linker.link(pango_font_metrics_ref, "pango_font_metrics_ref", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_unref, "pango_font_metrics_unref", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_ascent, "pango_font_metrics_get_ascent", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_descent, "pango_font_metrics_get_descent", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_approximate_char_width, "pango_font_metrics_get_approximate_char_width", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_approximate_digit_width, "pango_font_metrics_get_approximate_digit_width", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_underline_thickness, "pango_font_metrics_get_underline_thickness", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_underline_position, "pango_font_metrics_get_underline_position", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_strikethrough_thickness, "pango_font_metrics_get_strikethrough_thickness", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_strikethrough_position, "pango_font_metrics_get_strikethrough_position", LIBRARY.PANGO);

	// pango.PgFontFamily

	Linker.link(pango_font_family_get_name, "pango_font_family_get_name", LIBRARY.PANGO);
	Linker.link(pango_font_family_is_monospace, "pango_font_family_is_monospace", LIBRARY.PANGO);
	Linker.link(pango_font_family_list_faces, "pango_font_family_list_faces", LIBRARY.PANGO);

	// pango.PgFontFace

	Linker.link(pango_font_face_get_face_name, "pango_font_face_get_face_name", LIBRARY.PANGO);
	Linker.link(pango_font_face_list_sizes, "pango_font_face_list_sizes", LIBRARY.PANGO);
	Linker.link(pango_font_face_describe, "pango_font_face_describe", LIBRARY.PANGO);
	Linker.link(pango_font_face_is_synthesized, "pango_font_face_is_synthesized", LIBRARY.PANGO);

	// pango.PgFontMap

	Linker.link(pango_font_map_create_context, "pango_font_map_create_context", LIBRARY.PANGO);
	Linker.link(pango_font_map_load_font, "pango_font_map_load_font", LIBRARY.PANGO);
	Linker.link(pango_font_map_load_fontset, "pango_font_map_load_fontset", LIBRARY.PANGO);
	Linker.link(pango_font_map_list_families, "pango_font_map_list_families", LIBRARY.PANGO);
	Linker.link(pango_font_map_get_shape_engine_type, "pango_font_map_get_shape_engine_type", LIBRARY.PANGO);

	// pango.PgFontset

	Linker.link(pango_fontset_get_font, "pango_fontset_get_font", LIBRARY.PANGO);
	Linker.link(pango_fontset_get_metrics, "pango_fontset_get_metrics", LIBRARY.PANGO);
	Linker.link(pango_fontset_foreach, "pango_fontset_foreach", LIBRARY.PANGO);

	// pango.PgFontsetSimple

	Linker.link(pango_fontset_simple_new, "pango_fontset_simple_new", LIBRARY.PANGO);
	Linker.link(pango_fontset_simple_append, "pango_fontset_simple_append", LIBRARY.PANGO);
	Linker.link(pango_fontset_simple_size, "pango_fontset_simple_size", LIBRARY.PANGO);

	// pango.PgAttribute

	Linker.link(pango_parse_markup, "pango_parse_markup", LIBRARY.PANGO);
	Linker.link(pango_attr_type_register, "pango_attr_type_register", LIBRARY.PANGO);
	Linker.link(pango_attr_type_get_name, "pango_attr_type_get_name", LIBRARY.PANGO);
	Linker.link(pango_attribute_init, "pango_attribute_init", LIBRARY.PANGO);
	Linker.link(pango_attribute_copy, "pango_attribute_copy", LIBRARY.PANGO);
	Linker.link(pango_attribute_equal, "pango_attribute_equal", LIBRARY.PANGO);
	Linker.link(pango_attribute_destroy, "pango_attribute_destroy", LIBRARY.PANGO);
	Linker.link(pango_attr_language_new, "pango_attr_language_new", LIBRARY.PANGO);
	Linker.link(pango_attr_family_new, "pango_attr_family_new", LIBRARY.PANGO);
	Linker.link(pango_attr_style_new, "pango_attr_style_new", LIBRARY.PANGO);
	Linker.link(pango_attr_variant_new, "pango_attr_variant_new", LIBRARY.PANGO);
	Linker.link(pango_attr_stretch_new, "pango_attr_stretch_new", LIBRARY.PANGO);
	Linker.link(pango_attr_weight_new, "pango_attr_weight_new", LIBRARY.PANGO);
	Linker.link(pango_attr_size_new, "pango_attr_size_new", LIBRARY.PANGO);
	Linker.link(pango_attr_size_new_absolute, "pango_attr_size_new_absolute", LIBRARY.PANGO);
	Linker.link(pango_attr_font_desc_new, "pango_attr_font_desc_new", LIBRARY.PANGO);
	Linker.link(pango_attr_foreground_new, "pango_attr_foreground_new", LIBRARY.PANGO);
	Linker.link(pango_attr_background_new, "pango_attr_background_new", LIBRARY.PANGO);
	Linker.link(pango_attr_strikethrough_new, "pango_attr_strikethrough_new", LIBRARY.PANGO);
	Linker.link(pango_attr_strikethrough_color_new, "pango_attr_strikethrough_color_new", LIBRARY.PANGO);
	Linker.link(pango_attr_underline_new, "pango_attr_underline_new", LIBRARY.PANGO);
	Linker.link(pango_attr_underline_color_new, "pango_attr_underline_color_new", LIBRARY.PANGO);
	Linker.link(pango_attr_shape_new, "pango_attr_shape_new", LIBRARY.PANGO);
	Linker.link(pango_attr_shape_new_with_data, "pango_attr_shape_new_with_data", LIBRARY.PANGO);
	Linker.link(pango_attr_scale_new, "pango_attr_scale_new", LIBRARY.PANGO);
	Linker.link(pango_attr_rise_new, "pango_attr_rise_new", LIBRARY.PANGO);
	Linker.link(pango_attr_letter_spacing_new, "pango_attr_letter_spacing_new", LIBRARY.PANGO);
	Linker.link(pango_attr_fallback_new, "pango_attr_fallback_new", LIBRARY.PANGO);
	Linker.link(pango_attr_gravity_new, "pango_attr_gravity_new", LIBRARY.PANGO);
	Linker.link(pango_attr_gravity_hint_new, "pango_attr_gravity_hint_new", LIBRARY.PANGO);

	// pango.PgColor

	Linker.link(pango_color_parse, "pango_color_parse", LIBRARY.PANGO);
	Linker.link(pango_color_copy, "pango_color_copy", LIBRARY.PANGO);
	Linker.link(pango_color_free, "pango_color_free", LIBRARY.PANGO);
	Linker.link(pango_color_to_string, "pango_color_to_string", LIBRARY.PANGO);

	// pango.PgAttributeList

	Linker.link(pango_attr_list_new, "pango_attr_list_new", LIBRARY.PANGO);
	Linker.link(pango_attr_list_ref, "pango_attr_list_ref", LIBRARY.PANGO);
	Linker.link(pango_attr_list_unref, "pango_attr_list_unref", LIBRARY.PANGO);
	Linker.link(pango_attr_list_copy, "pango_attr_list_copy", LIBRARY.PANGO);
	Linker.link(pango_attr_list_insert, "pango_attr_list_insert", LIBRARY.PANGO);
	Linker.link(pango_attr_list_insert_before, "pango_attr_list_insert_before", LIBRARY.PANGO);
	Linker.link(pango_attr_list_change, "pango_attr_list_change", LIBRARY.PANGO);
	Linker.link(pango_attr_list_splice, "pango_attr_list_splice", LIBRARY.PANGO);
	Linker.link(pango_attr_list_filter, "pango_attr_list_filter", LIBRARY.PANGO);
	Linker.link(pango_attr_list_get_iterator, "pango_attr_list_get_iterator", LIBRARY.PANGO);

	// pango.PgAttributeIterator

	Linker.link(pango_attr_iterator_copy, "pango_attr_iterator_copy", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_next, "pango_attr_iterator_next", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_range, "pango_attr_iterator_range", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_get, "pango_attr_iterator_get", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_get_font, "pango_attr_iterator_get_font", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_get_attrs, "pango_attr_iterator_get_attrs", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_destroy, "pango_attr_iterator_destroy", LIBRARY.PANGO);

	// pango.PgTabArray

	Linker.link(pango_tab_array_new, "pango_tab_array_new", LIBRARY.PANGO);
	Linker.link(pango_tab_array_new_with_positions, "pango_tab_array_new_with_positions", LIBRARY.PANGO);
	Linker.link(pango_tab_array_copy, "pango_tab_array_copy", LIBRARY.PANGO);
	Linker.link(pango_tab_array_free, "pango_tab_array_free", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_size, "pango_tab_array_get_size", LIBRARY.PANGO);
	Linker.link(pango_tab_array_resize, "pango_tab_array_resize", LIBRARY.PANGO);
	Linker.link(pango_tab_array_set_tab, "pango_tab_array_set_tab", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_tab, "pango_tab_array_get_tab", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_tabs, "pango_tab_array_get_tabs", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_positions_in_pixels, "pango_tab_array_get_positions_in_pixels", LIBRARY.PANGO);

	// pango.PgLayout

	Linker.link(pango_layout_new, "pango_layout_new", LIBRARY.PANGO);
	Linker.link(pango_layout_copy, "pango_layout_copy", LIBRARY.PANGO);
	Linker.link(pango_layout_get_context, "pango_layout_get_context", LIBRARY.PANGO);
	Linker.link(pango_layout_context_changed, "pango_layout_context_changed", LIBRARY.PANGO);
	Linker.link(pango_layout_set_text, "pango_layout_set_text", LIBRARY.PANGO);
	Linker.link(pango_layout_get_text, "pango_layout_get_text", LIBRARY.PANGO);
	Linker.link(pango_layout_set_markup, "pango_layout_set_markup", LIBRARY.PANGO);
	Linker.link(pango_layout_set_markup_with_accel, "pango_layout_set_markup_with_accel", LIBRARY.PANGO);
	Linker.link(pango_layout_set_attributes, "pango_layout_set_attributes", LIBRARY.PANGO);
	Linker.link(pango_layout_get_attributes, "pango_layout_get_attributes", LIBRARY.PANGO);
	Linker.link(pango_layout_set_font_description, "pango_layout_set_font_description", LIBRARY.PANGO);
	Linker.link(pango_layout_get_font_description, "pango_layout_get_font_description", LIBRARY.PANGO);
	Linker.link(pango_layout_set_width, "pango_layout_set_width", LIBRARY.PANGO);
	Linker.link(pango_layout_get_width, "pango_layout_get_width", LIBRARY.PANGO);
	Linker.link(pango_layout_set_height, "pango_layout_set_height", LIBRARY.PANGO);
	Linker.link(pango_layout_get_height, "pango_layout_get_height", LIBRARY.PANGO);
	Linker.link(pango_layout_set_wrap, "pango_layout_set_wrap", LIBRARY.PANGO);
	Linker.link(pango_layout_get_wrap, "pango_layout_get_wrap", LIBRARY.PANGO);
	Linker.link(pango_layout_is_wrapped, "pango_layout_is_wrapped", LIBRARY.PANGO);
	Linker.link(pango_layout_set_ellipsize, "pango_layout_set_ellipsize", LIBRARY.PANGO);
	Linker.link(pango_layout_get_ellipsize, "pango_layout_get_ellipsize", LIBRARY.PANGO);
	Linker.link(pango_layout_is_ellipsized, "pango_layout_is_ellipsized", LIBRARY.PANGO);
	Linker.link(pango_layout_set_indent, "pango_layout_set_indent", LIBRARY.PANGO);
	Linker.link(pango_layout_get_indent, "pango_layout_get_indent", LIBRARY.PANGO);
	Linker.link(pango_layout_get_spacing, "pango_layout_get_spacing", LIBRARY.PANGO);
	Linker.link(pango_layout_set_spacing, "pango_layout_set_spacing", LIBRARY.PANGO);
	Linker.link(pango_layout_set_justify, "pango_layout_set_justify", LIBRARY.PANGO);
	Linker.link(pango_layout_get_justify, "pango_layout_get_justify", LIBRARY.PANGO);
	Linker.link(pango_layout_set_auto_dir, "pango_layout_set_auto_dir", LIBRARY.PANGO);
	Linker.link(pango_layout_get_auto_dir, "pango_layout_get_auto_dir", LIBRARY.PANGO);
	Linker.link(pango_layout_set_alignment, "pango_layout_set_alignment", LIBRARY.PANGO);
	Linker.link(pango_layout_get_alignment, "pango_layout_get_alignment", LIBRARY.PANGO);
	Linker.link(pango_layout_set_tabs, "pango_layout_set_tabs", LIBRARY.PANGO);
	Linker.link(pango_layout_get_tabs, "pango_layout_get_tabs", LIBRARY.PANGO);
	Linker.link(pango_layout_set_single_paragraph_mode, "pango_layout_set_single_paragraph_mode", LIBRARY.PANGO);
	Linker.link(pango_layout_get_single_paragraph_mode, "pango_layout_get_single_paragraph_mode", LIBRARY.PANGO);
	Linker.link(pango_layout_get_unknown_glyphs_count, "pango_layout_get_unknown_glyphs_count", LIBRARY.PANGO);
	Linker.link(pango_layout_get_log_attrs, "pango_layout_get_log_attrs", LIBRARY.PANGO);
	Linker.link(pango_layout_index_to_pos, "pango_layout_index_to_pos", LIBRARY.PANGO);
	Linker.link(pango_layout_index_to_line_x, "pango_layout_index_to_line_x", LIBRARY.PANGO);
	Linker.link(pango_layout_xy_to_index, "pango_layout_xy_to_index", LIBRARY.PANGO);
	Linker.link(pango_layout_get_cursor_pos, "pango_layout_get_cursor_pos", LIBRARY.PANGO);
	Linker.link(pango_layout_move_cursor_visually, "pango_layout_move_cursor_visually", LIBRARY.PANGO);
	Linker.link(pango_layout_get_extents, "pango_layout_get_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_get_pixel_extents, "pango_layout_get_pixel_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_get_size, "pango_layout_get_size", LIBRARY.PANGO);
	Linker.link(pango_layout_get_pixel_size, "pango_layout_get_pixel_size", LIBRARY.PANGO);
	Linker.link(pango_layout_get_baseline, "pango_layout_get_baseline", LIBRARY.PANGO);
	Linker.link(pango_layout_get_line_count, "pango_layout_get_line_count", LIBRARY.PANGO);
	Linker.link(pango_layout_get_line, "pango_layout_get_line", LIBRARY.PANGO);
	Linker.link(pango_layout_get_line_readonly, "pango_layout_get_line_readonly", LIBRARY.PANGO);
	Linker.link(pango_layout_get_lines, "pango_layout_get_lines", LIBRARY.PANGO);
	Linker.link(pango_layout_get_lines_readonly, "pango_layout_get_lines_readonly", LIBRARY.PANGO);
	Linker.link(pango_layout_get_iter, "pango_layout_get_iter", LIBRARY.PANGO);

	// pango.PgLayoutIter

	Linker.link(pango_layout_iter_copy, "pango_layout_iter_copy", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_free, "pango_layout_iter_free", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_run, "pango_layout_iter_next_run", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_char, "pango_layout_iter_next_char", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_cluster, "pango_layout_iter_next_cluster", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_line, "pango_layout_iter_next_line", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_at_last_line, "pango_layout_iter_at_last_line", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_index, "pango_layout_iter_get_index", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_baseline, "pango_layout_iter_get_baseline", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_run, "pango_layout_iter_get_run", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_run_readonly, "pango_layout_iter_get_run_readonly", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line, "pango_layout_iter_get_line", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line_readonly, "pango_layout_iter_get_line_readonly", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_layout, "pango_layout_iter_get_layout", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_char_extents, "pango_layout_iter_get_char_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_cluster_extents, "pango_layout_iter_get_cluster_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_run_extents, "pango_layout_iter_get_run_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line_yrange, "pango_layout_iter_get_line_yrange", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line_extents, "pango_layout_iter_get_line_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_layout_extents, "pango_layout_iter_get_layout_extents", LIBRARY.PANGO);

	// pango.PgLayoutLine

	Linker.link(pango_layout_line_ref, "pango_layout_line_ref", LIBRARY.PANGO);
	Linker.link(pango_layout_line_unref, "pango_layout_line_unref", LIBRARY.PANGO);
	Linker.link(pango_layout_line_get_extents, "pango_layout_line_get_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_line_get_pixel_extents, "pango_layout_line_get_pixel_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_line_index_to_x, "pango_layout_line_index_to_x", LIBRARY.PANGO);
	Linker.link(pango_layout_line_x_to_index, "pango_layout_line_x_to_index", LIBRARY.PANGO);
	Linker.link(pango_layout_line_get_x_ranges, "pango_layout_line_get_x_ranges", LIBRARY.PANGO);

	// pango.PgScript

	Linker.link(pango_script_for_unichar, "pango_script_for_unichar", LIBRARY.PANGO);
	Linker.link(pango_script_get_sample_language, "pango_script_get_sample_language", LIBRARY.PANGO);

	// pango.PgScriptIter

	Linker.link(pango_script_iter_new, "pango_script_iter_new", LIBRARY.PANGO);
	Linker.link(pango_script_iter_get_range, "pango_script_iter_get_range", LIBRARY.PANGO);
	Linker.link(pango_script_iter_next, "pango_script_iter_next", LIBRARY.PANGO);
	Linker.link(pango_script_iter_free, "pango_script_iter_free", LIBRARY.PANGO);

	// pango.PgLanguage

	Linker.link(pango_language_from_string, "pango_language_from_string", LIBRARY.PANGO);
	Linker.link(pango_language_to_string, "pango_language_to_string", LIBRARY.PANGO);
	Linker.link(pango_language_matches, "pango_language_matches", LIBRARY.PANGO);
	Linker.link(pango_language_includes_script, "pango_language_includes_script", LIBRARY.PANGO);
	Linker.link(pango_language_get_scripts, "pango_language_get_scripts", LIBRARY.PANGO);
	Linker.link(pango_language_get_default, "pango_language_get_default", LIBRARY.PANGO);
	Linker.link(pango_language_get_sample_string, "pango_language_get_sample_string", LIBRARY.PANGO);

	// pango.PgVertical

	Linker.link(pango_gravity_get_for_matrix, "pango_gravity_get_for_matrix", LIBRARY.PANGO);
	Linker.link(pango_gravity_get_for_script, "pango_gravity_get_for_script", LIBRARY.PANGO);
	Linker.link(pango_gravity_to_rotation, "pango_gravity_to_rotation", LIBRARY.PANGO);

	// pango.PgCairoFontMap

	Linker.link(pango_cairo_font_map_get_default, "pango_cairo_font_map_get_default", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_set_default, "pango_cairo_font_map_set_default", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_new, "pango_cairo_font_map_new", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_new_for_font_type, "pango_cairo_font_map_new_for_font_type", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_get_font_type, "pango_cairo_font_map_get_font_type", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_set_resolution, "pango_cairo_font_map_set_resolution", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_get_resolution, "pango_cairo_font_map_get_resolution", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_create_context, "pango_cairo_font_map_create_context", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);

	// pango.PgCairo

	Linker.link(pango_cairo_font_get_scaled_font, "pango_cairo_font_get_scaled_font", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_set_resolution, "pango_cairo_context_set_resolution", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_get_resolution, "pango_cairo_context_get_resolution", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_set_font_options, "pango_cairo_context_set_font_options", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_get_font_options, "pango_cairo_context_get_font_options", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_set_shape_renderer, "pango_cairo_context_set_shape_renderer", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_get_shape_renderer, "pango_cairo_context_get_shape_renderer", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_create_context, "pango_cairo_create_context", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_update_context, "pango_cairo_update_context", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_create_layout, "pango_cairo_create_layout", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_update_layout, "pango_cairo_update_layout", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_glyph_string, "pango_cairo_show_glyph_string", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_glyph_item, "pango_cairo_show_glyph_item", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_layout_line, "pango_cairo_show_layout_line", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_layout, "pango_cairo_show_layout", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_error_underline, "pango_cairo_show_error_underline", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_glyph_string_path, "pango_cairo_glyph_string_path", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_layout_line_path, "pango_cairo_layout_line_path", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_layout_path, "pango_cairo_layout_path", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_error_underline_path, "pango_cairo_error_underline_path", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);

	// pango.PgRenderer

	Linker.link(pango_renderer_draw_layout, "pango_renderer_draw_layout", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_layout_line, "pango_renderer_draw_layout_line", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_glyphs, "pango_renderer_draw_glyphs", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_glyph_item, "pango_renderer_draw_glyph_item", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_rectangle, "pango_renderer_draw_rectangle", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_error_underline, "pango_renderer_draw_error_underline", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_trapezoid, "pango_renderer_draw_trapezoid", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_glyph, "pango_renderer_draw_glyph", LIBRARY.PANGO);
	Linker.link(pango_renderer_activate, "pango_renderer_activate", LIBRARY.PANGO);
	Linker.link(pango_renderer_deactivate, "pango_renderer_deactivate", LIBRARY.PANGO);
	Linker.link(pango_renderer_part_changed, "pango_renderer_part_changed", LIBRARY.PANGO);
	Linker.link(pango_renderer_set_color, "pango_renderer_set_color", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_color, "pango_renderer_get_color", LIBRARY.PANGO);
	Linker.link(pango_renderer_set_matrix, "pango_renderer_set_matrix", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_matrix, "pango_renderer_get_matrix", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_layout, "pango_renderer_get_layout", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_layout_line, "pango_renderer_get_layout_line", LIBRARY.PANGO);

	// pango.PgCoverage

	Linker.link(pango_coverage_new, "pango_coverage_new", LIBRARY.PANGO);
	Linker.link(pango_coverage_ref, "pango_coverage_ref", LIBRARY.PANGO);
	Linker.link(pango_coverage_unref, "pango_coverage_unref", LIBRARY.PANGO);
	Linker.link(pango_coverage_copy, "pango_coverage_copy", LIBRARY.PANGO);
	Linker.link(pango_coverage_get, "pango_coverage_get", LIBRARY.PANGO);
	Linker.link(pango_coverage_max, "pango_coverage_max", LIBRARY.PANGO);
	Linker.link(pango_coverage_set, "pango_coverage_set", LIBRARY.PANGO);
	Linker.link(pango_coverage_to_bytes, "pango_coverage_to_bytes", LIBRARY.PANGO);
	Linker.link(pango_coverage_from_bytes, "pango_coverage_from_bytes", LIBRARY.PANGO);

	// pango.PgEngine

	Linker.link(script_engine_list, "script_engine_list", LIBRARY.PANGO);
	Linker.link(script_engine_init, "script_engine_init", LIBRARY.PANGO);
	Linker.link(script_engine_exit, "script_engine_exit", LIBRARY.PANGO);
	Linker.link(script_engine_create, "script_engine_create", LIBRARY.PANGO);

	// pango.PgEngineLang


	// pango.PgEngineShape


	// pango.PgMiscellaneous

	Linker.link(pango_split_file_list, "pango_split_file_list", LIBRARY.PANGO);
	Linker.link(pango_trim_string, "pango_trim_string", LIBRARY.PANGO);
	Linker.link(pango_read_line, "pango_read_line", LIBRARY.PANGO);
	Linker.link(pango_skip_space, "pango_skip_space", LIBRARY.PANGO);
	Linker.link(pango_scan_word, "pango_scan_word", LIBRARY.PANGO);
	Linker.link(pango_scan_string, "pango_scan_string", LIBRARY.PANGO);
	Linker.link(pango_scan_int, "pango_scan_int", LIBRARY.PANGO);
	Linker.link(pango_config_key_get, "pango_config_key_get", LIBRARY.PANGO);
	Linker.link(pango_lookup_aliases, "pango_lookup_aliases", LIBRARY.PANGO);
	Linker.link(pango_parse_enum, "pango_parse_enum", LIBRARY.PANGO);
	Linker.link(pango_parse_style, "pango_parse_style", LIBRARY.PANGO);
	Linker.link(pango_parse_variant, "pango_parse_variant", LIBRARY.PANGO);
	Linker.link(pango_parse_weight, "pango_parse_weight", LIBRARY.PANGO);
	Linker.link(pango_parse_stretch, "pango_parse_stretch", LIBRARY.PANGO);
	Linker.link(pango_get_sysconf_subdirectory, "pango_get_sysconf_subdirectory", LIBRARY.PANGO);
	Linker.link(pango_get_lib_subdirectory, "pango_get_lib_subdirectory", LIBRARY.PANGO);
	Linker.link(pango_log2vis_get_embedding_levels, "pango_log2vis_get_embedding_levels", LIBRARY.PANGO);
	Linker.link(pango_is_zero_width, "pango_is_zero_width", LIBRARY.PANGO);
	Linker.link(pango_quantize_line_geometry, "pango_quantize_line_geometry", LIBRARY.PANGO);

	// pango.PgVersion

	Linker.link(pango_version, "pango_version", LIBRARY.PANGO);
	Linker.link(pango_version_string, "pango_version_string", LIBRARY.PANGO);
	Linker.link(pango_version_check, "pango_version_check", LIBRARY.PANGO);
}

extern(C)
{
	
	// pango.PgContext
	
	typedef GList* function(PangoContext* context, char* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter) c_pango_itemize;
	typedef GList* function(PangoContext* context, PangoDirection baseDir, char* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter) c_pango_itemize_with_base_dir;
	typedef GList* function(GList* logicalItems) c_pango_reorder_items;
	typedef PangoContext* function() c_pango_context_new;
	typedef void function(PangoContext* context, PangoFontMap* fontMap) c_pango_context_set_font_map;
	typedef PangoFontMap* function(PangoContext* context) c_pango_context_get_font_map;
	typedef PangoFontDescription* function(PangoContext* context) c_pango_context_get_font_description;
	typedef void function(PangoContext* context, PangoFontDescription* desc) c_pango_context_set_font_description;
	typedef PangoLanguage* function(PangoContext* context) c_pango_context_get_language;
	typedef void function(PangoContext* context, PangoLanguage* language) c_pango_context_set_language;
	typedef PangoDirection function(PangoContext* context) c_pango_context_get_base_dir;
	typedef void function(PangoContext* context, PangoDirection direction) c_pango_context_set_base_dir;
	typedef PangoGravity function(PangoContext* context) c_pango_context_get_base_gravity;
	typedef void function(PangoContext* context, PangoGravity gravity) c_pango_context_set_base_gravity;
	typedef PangoGravity function(PangoContext* context) c_pango_context_get_gravity;
	typedef PangoGravityHint function(PangoContext* context) c_pango_context_get_gravity_hint;
	typedef void function(PangoContext* context, PangoGravityHint hint) c_pango_context_set_gravity_hint;
	typedef PangoMatrix* function(PangoContext* context) c_pango_context_get_matrix;
	typedef void function(PangoContext* context, PangoMatrix* matrix) c_pango_context_set_matrix;
	typedef PangoFont* function(PangoContext* context, PangoFontDescription* desc) c_pango_context_load_font;
	typedef PangoFontset* function(PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) c_pango_context_load_fontset;
	typedef PangoFontMetrics* function(PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) c_pango_context_get_metrics;
	typedef void function(PangoContext* context, PangoFontFamily*** families, int* nFamilies) c_pango_context_list_families;
	typedef void function(gchar* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen) c_pango_break;
	typedef void function(char* text, int length, int level, PangoLanguage* language, PangoLogAttr* logAttrs, int attrsLen) c_pango_get_log_attrs;
	typedef void function(gchar* text, gint length, gint* paragraphDelimiterIndex, gint* nextParagraphStart) c_pango_find_paragraph_boundary;
	typedef void function(gchar* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen) c_pango_default_break;
	typedef void function(gchar* text, gint length, PangoAnalysis* analysis, PangoGlyphString* glyphs) c_pango_shape;
	typedef PangoDirection function(gunichar ch) c_pango_unichar_direction;
	typedef PangoDirection function(gchar* text, gint length) c_pango_find_base_dir;
	typedef gboolean function(gunichar ch, gunichar* mirroredCh) c_pango_get_mirror_char;
	typedef PangoBidiType function(gunichar ch) c_pango_bidi_type_for_unichar;
	
	// pango.PgItem
	
	
	// pango.PgMatrix
	
	typedef double function(int i) c_pango_units_to_double;
	typedef int function(double d) c_pango_units_from_double;
	typedef void function(PangoRectangle* inclusive, PangoRectangle* nearest) c_pango_extents_to_pixels;
	typedef PangoMatrix* function(PangoMatrix* matrix) c_pango_matrix_copy;
	typedef void function(PangoMatrix* matrix) c_pango_matrix_free;
	typedef void function(PangoMatrix* matrix, double tx, double ty) c_pango_matrix_translate;
	typedef void function(PangoMatrix* matrix, double scaleX, double scaleY) c_pango_matrix_scale;
	typedef void function(PangoMatrix* matrix, double degrees) c_pango_matrix_rotate;
	typedef void function(PangoMatrix* matrix, PangoMatrix* newMatrix) c_pango_matrix_concat;
	typedef void function(PangoMatrix* matrix, double* x, double* y) c_pango_matrix_transform_point;
	typedef void function(PangoMatrix* matrix, double* dx, double* dy) c_pango_matrix_transform_distance;
	typedef void function(PangoMatrix* matrix, PangoRectangle* rect) c_pango_matrix_transform_rectangle;
	typedef void function(PangoMatrix* matrix, PangoRectangle* rect) c_pango_matrix_transform_pixel_rectangle;
	typedef double function(PangoMatrix* matrix) c_pango_matrix_get_font_scale_factor;
	
	// pango.PgGlyphString
	
	typedef PangoGlyphString* function() c_pango_glyph_string_new;
	typedef PangoGlyphString* function(PangoGlyphString* string) c_pango_glyph_string_copy;
	typedef void function(PangoGlyphString* string, gint newLen) c_pango_glyph_string_set_size;
	typedef void function(PangoGlyphString* string) c_pango_glyph_string_free;
	typedef void function(PangoGlyphString* glyphs, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_glyph_string_extents;
	typedef void function(PangoGlyphString* glyphs, int start, int end, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_glyph_string_extents_range;
	typedef int function(PangoGlyphString* glyphs) c_pango_glyph_string_get_width;
	typedef void function(PangoGlyphString* glyphs, char* text, int length, PangoAnalysis* analysis, int index, gboolean trailing, int* xPos) c_pango_glyph_string_index_to_x;
	typedef void function(PangoGlyphString* glyphs, char* text, int length, PangoAnalysis* analysis, int xPos, int* index, int* trailing) c_pango_glyph_string_x_to_index;
	typedef void function(PangoGlyphString* glyphs, char* text, int length, int embeddingLevel, int* logicalWidths) c_pango_glyph_string_get_logical_widths;
	
	// pango.PgGlyphItem
	
	typedef PangoGlyphItem* function(PangoGlyphItem* orig) c_pango_glyph_item_copy;
	typedef void function(PangoGlyphItem* glyphItem) c_pango_glyph_item_free;
	typedef PangoGlyphItem* function(PangoGlyphItem* orig, char* text, int splitIndex) c_pango_glyph_item_split;
	typedef GSList* function(PangoGlyphItem* glyphItem, char* text, PangoAttrList* list) c_pango_glyph_item_apply_attrs;
	typedef void function(PangoGlyphItem* glyphItem, char* text, PangoLogAttr* logAttrs, int letterSpacing) c_pango_glyph_item_letter_space;
	
	// pango.PgGlyphItemIter
	
	typedef PangoGlyphItemIter* function(PangoGlyphItemIter* orig) c_pango_glyph_item_iter_copy;
	typedef void function(PangoGlyphItemIter* iter) c_pango_glyph_item_iter_free;
	typedef gboolean function(PangoGlyphItemIter* iter, PangoGlyphItem* glyphItem, char* text) c_pango_glyph_item_iter_init_start;
	typedef gboolean function(PangoGlyphItemIter* iter, PangoGlyphItem* glyphItem, char* text) c_pango_glyph_item_iter_init_end;
	typedef gboolean function(PangoGlyphItemIter* iter) c_pango_glyph_item_iter_next_cluster;
	typedef gboolean function(PangoGlyphItemIter* iter) c_pango_glyph_item_iter_prev_cluster;
	
	// pango.PgFont
	
	typedef PangoEngineShape* function(PangoFont* font, PangoLanguage* language, guint32 ch) c_pango_font_find_shaper;
	typedef PangoFontDescription* function(PangoFont* font) c_pango_font_describe;
	typedef PangoFontDescription* function(PangoFont* font) c_pango_font_describe_with_absolute_size;
	typedef PangoCoverage* function(PangoFont* font, PangoLanguage* language) c_pango_font_get_coverage;
	typedef void function(PangoFont* font, PangoGlyph glyph, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_font_get_glyph_extents;
	typedef PangoFontMetrics* function(PangoFont* font, PangoLanguage* language) c_pango_font_get_metrics;
	typedef PangoFontMap* function(PangoFont* font) c_pango_font_get_font_map;
	
	// pango.PgFontDescription
	
	typedef PangoFontDescription* function() c_pango_font_description_new;
	typedef PangoFontDescription* function(PangoFontDescription* desc) c_pango_font_description_copy;
	typedef PangoFontDescription* function(PangoFontDescription* desc) c_pango_font_description_copy_static;
	typedef guint function(PangoFontDescription* desc) c_pango_font_description_hash;
	typedef gboolean function(PangoFontDescription* desc1, PangoFontDescription* desc2) c_pango_font_description_equal;
	typedef void function(PangoFontDescription* desc) c_pango_font_description_free;
	typedef void function(PangoFontDescription* desc, char* family) c_pango_font_description_set_family;
	typedef void function(PangoFontDescription* desc, char* family) c_pango_font_description_set_family_static;
	typedef char* function(PangoFontDescription* desc) c_pango_font_description_get_family;
	typedef void function(PangoFontDescription* desc, PangoStyle style) c_pango_font_description_set_style;
	typedef PangoStyle function(PangoFontDescription* desc) c_pango_font_description_get_style;
	typedef void function(PangoFontDescription* desc, PangoVariant variant) c_pango_font_description_set_variant;
	typedef PangoVariant function(PangoFontDescription* desc) c_pango_font_description_get_variant;
	typedef void function(PangoFontDescription* desc, PangoWeight weight) c_pango_font_description_set_weight;
	typedef PangoWeight function(PangoFontDescription* desc) c_pango_font_description_get_weight;
	typedef void function(PangoFontDescription* desc, PangoStretch stretch) c_pango_font_description_set_stretch;
	typedef PangoStretch function(PangoFontDescription* desc) c_pango_font_description_get_stretch;
	typedef void function(PangoFontDescription* desc, gint size) c_pango_font_description_set_size;
	typedef gint function(PangoFontDescription* desc) c_pango_font_description_get_size;
	typedef void function(PangoFontDescription* desc, double size) c_pango_font_description_set_absolute_size;
	typedef gboolean function(PangoFontDescription* desc) c_pango_font_description_get_size_is_absolute;
	typedef void function(PangoFontDescription* desc, PangoGravity gravity) c_pango_font_description_set_gravity;
	typedef PangoGravity function(PangoFontDescription* desc) c_pango_font_description_get_gravity;
	typedef PangoFontMask function(PangoFontDescription* desc) c_pango_font_description_get_set_fields;
	typedef void function(PangoFontDescription* desc, PangoFontMask toUnset) c_pango_font_description_unset_fields;
	typedef void function(PangoFontDescription* desc, PangoFontDescription* descToMerge, gboolean replaceExisting) c_pango_font_description_merge;
	typedef void function(PangoFontDescription* desc, PangoFontDescription* descToMerge, gboolean replaceExisting) c_pango_font_description_merge_static;
	typedef gboolean function(PangoFontDescription* desc, PangoFontDescription* oldMatch, PangoFontDescription* newMatch) c_pango_font_description_better_match;
	typedef PangoFontDescription* function(char* str) c_pango_font_description_from_string;
	typedef char* function(PangoFontDescription* desc) c_pango_font_description_to_string;
	typedef char* function(PangoFontDescription* desc) c_pango_font_description_to_filename;
	
	// pango.PgFontMetrics
	
	typedef PangoFontMetrics* function(PangoFontMetrics* metrics) c_pango_font_metrics_ref;
	typedef void function(PangoFontMetrics* metrics) c_pango_font_metrics_unref;
	typedef int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_ascent;
	typedef int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_descent;
	typedef int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_approximate_char_width;
	typedef int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_approximate_digit_width;
	typedef int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_underline_thickness;
	typedef int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_underline_position;
	typedef int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_strikethrough_thickness;
	typedef int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_strikethrough_position;
	
	// pango.PgFontFamily
	
	typedef char* function(PangoFontFamily* family) c_pango_font_family_get_name;
	typedef gboolean function(PangoFontFamily* family) c_pango_font_family_is_monospace;
	typedef void function(PangoFontFamily* family, PangoFontFace*** faces, int* nFaces) c_pango_font_family_list_faces;
	
	// pango.PgFontFace
	
	typedef char* function(PangoFontFace* face) c_pango_font_face_get_face_name;
	typedef void function(PangoFontFace* face, int** sizes, int* nSizes) c_pango_font_face_list_sizes;
	typedef PangoFontDescription* function(PangoFontFace* face) c_pango_font_face_describe;
	typedef gboolean function(PangoFontFace* face) c_pango_font_face_is_synthesized;
	
	// pango.PgFontMap
	
	typedef PangoContext* function(PangoFontMap* fontmap) c_pango_font_map_create_context;
	typedef PangoFont* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc) c_pango_font_map_load_font;
	typedef PangoFontset* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) c_pango_font_map_load_fontset;
	typedef void function(PangoFontMap* fontmap, PangoFontFamily*** families, int* nFamilies) c_pango_font_map_list_families;
	typedef char* function(PangoFontMap* fontmap) c_pango_font_map_get_shape_engine_type;
	
	// pango.PgFontset
	
	typedef PangoFont* function(PangoFontset* fontset, guint wc) c_pango_fontset_get_font;
	typedef PangoFontMetrics* function(PangoFontset* fontset) c_pango_fontset_get_metrics;
	typedef void function(PangoFontset* fontset, PangoFontsetForeachFunc func, gpointer data) c_pango_fontset_foreach;
	
	// pango.PgFontsetSimple
	
	typedef PangoFontsetSimple* function(PangoLanguage* language) c_pango_fontset_simple_new;
	typedef void function(PangoFontsetSimple* fontset, PangoFont* font) c_pango_fontset_simple_append;
	typedef int function(PangoFontsetSimple* fontset) c_pango_fontset_simple_size;
	
	// pango.PgAttribute
	
	typedef gboolean function(char* markupText, int length, gunichar accelMarker, PangoAttrList** attrList, char** text, gunichar* accelChar, GError** error) c_pango_parse_markup;
	typedef PangoAttrType function(gchar* name) c_pango_attr_type_register;
	typedef char* function(PangoAttrType type) c_pango_attr_type_get_name;
	typedef void function(PangoAttribute* attr, PangoAttrClass* klass) c_pango_attribute_init;
	typedef PangoAttribute* function(PangoAttribute* attr) c_pango_attribute_copy;
	typedef gboolean function(PangoAttribute* attr1, PangoAttribute* attr2) c_pango_attribute_equal;
	typedef void function(PangoAttribute* attr) c_pango_attribute_destroy;
	typedef PangoAttribute* function(PangoLanguage* language) c_pango_attr_language_new;
	typedef PangoAttribute* function(char* family) c_pango_attr_family_new;
	typedef PangoAttribute* function(PangoStyle style) c_pango_attr_style_new;
	typedef PangoAttribute* function(PangoVariant variant) c_pango_attr_variant_new;
	typedef PangoAttribute* function(PangoStretch stretch) c_pango_attr_stretch_new;
	typedef PangoAttribute* function(PangoWeight weight) c_pango_attr_weight_new;
	typedef PangoAttribute* function(int size) c_pango_attr_size_new;
	typedef PangoAttribute* function(int size) c_pango_attr_size_new_absolute;
	typedef PangoAttribute* function(PangoFontDescription* desc) c_pango_attr_font_desc_new;
	typedef PangoAttribute* function(guint16 red, guint16 green, guint16 blue) c_pango_attr_foreground_new;
	typedef PangoAttribute* function(guint16 red, guint16 green, guint16 blue) c_pango_attr_background_new;
	typedef PangoAttribute* function(gboolean strikethrough) c_pango_attr_strikethrough_new;
	typedef PangoAttribute* function(guint16 red, guint16 green, guint16 blue) c_pango_attr_strikethrough_color_new;
	typedef PangoAttribute* function(PangoUnderline underline) c_pango_attr_underline_new;
	typedef PangoAttribute* function(guint16 red, guint16 green, guint16 blue) c_pango_attr_underline_color_new;
	typedef PangoAttribute* function(PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_attr_shape_new;
	typedef PangoAttribute* function(PangoRectangle* inkRect, PangoRectangle* logicalRect, gpointer data, PangoAttrDataCopyFunc copyFunc, GDestroyNotify destroyFunc) c_pango_attr_shape_new_with_data;
	typedef PangoAttribute* function(double scaleFactor) c_pango_attr_scale_new;
	typedef PangoAttribute* function(int rise) c_pango_attr_rise_new;
	typedef PangoAttribute* function(int letterSpacing) c_pango_attr_letter_spacing_new;
	typedef PangoAttribute* function(gboolean enableFallback) c_pango_attr_fallback_new;
	typedef PangoAttribute* function(PangoGravity gravity) c_pango_attr_gravity_new;
	typedef PangoAttribute* function(PangoGravityHint hint) c_pango_attr_gravity_hint_new;
	
	// pango.PgColor
	
	typedef gboolean function(PangoColor* color, char* spec) c_pango_color_parse;
	typedef PangoColor* function(PangoColor* src) c_pango_color_copy;
	typedef void function(PangoColor* color) c_pango_color_free;
	typedef gchar* function(PangoColor* color) c_pango_color_to_string;
	
	// pango.PgAttributeList
	
	typedef PangoAttrList* function() c_pango_attr_list_new;
	typedef PangoAttrList* function(PangoAttrList* list) c_pango_attr_list_ref;
	typedef void function(PangoAttrList* list) c_pango_attr_list_unref;
	typedef PangoAttrList* function(PangoAttrList* list) c_pango_attr_list_copy;
	typedef void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_insert;
	typedef void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_insert_before;
	typedef void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_change;
	typedef void function(PangoAttrList* list, PangoAttrList* other, gint pos, gint len) c_pango_attr_list_splice;
	typedef PangoAttrList* function(PangoAttrList* list, PangoAttrFilterFunc func, gpointer data) c_pango_attr_list_filter;
	typedef PangoAttrIterator* function(PangoAttrList* list) c_pango_attr_list_get_iterator;
	
	// pango.PgAttributeIterator
	
	typedef PangoAttrIterator* function(PangoAttrIterator* iterator) c_pango_attr_iterator_copy;
	typedef gboolean function(PangoAttrIterator* iterator) c_pango_attr_iterator_next;
	typedef void function(PangoAttrIterator* iterator, gint* start, gint* end) c_pango_attr_iterator_range;
	typedef PangoAttribute* function(PangoAttrIterator* iterator, PangoAttrType type) c_pango_attr_iterator_get;
	typedef void function(PangoAttrIterator* iterator, PangoFontDescription* desc, PangoLanguage** language, GSList** extraAttrs) c_pango_attr_iterator_get_font;
	typedef GSList* function(PangoAttrIterator* iterator) c_pango_attr_iterator_get_attrs;
	typedef void function(PangoAttrIterator* iterator) c_pango_attr_iterator_destroy;
	
	// pango.PgTabArray
	
	typedef PangoTabArray* function(gint initialSize, gboolean positionsInPixels) c_pango_tab_array_new;
	typedef PangoTabArray* function(gint size, gboolean positionsInPixels, PangoTabAlign firstAlignment, gint firstPosition, ... ) c_pango_tab_array_new_with_positions;
	typedef PangoTabArray* function(PangoTabArray* src) c_pango_tab_array_copy;
	typedef void function(PangoTabArray* tabArray) c_pango_tab_array_free;
	typedef gint function(PangoTabArray* tabArray) c_pango_tab_array_get_size;
	typedef void function(PangoTabArray* tabArray, gint newSize) c_pango_tab_array_resize;
	typedef void function(PangoTabArray* tabArray, gint tabIndex, PangoTabAlign alignment, gint location) c_pango_tab_array_set_tab;
	typedef void function(PangoTabArray* tabArray, gint tabIndex, PangoTabAlign* alignment, gint* location) c_pango_tab_array_get_tab;
	typedef void function(PangoTabArray* tabArray, PangoTabAlign** alignments, gint** locations) c_pango_tab_array_get_tabs;
	typedef gboolean function(PangoTabArray* tabArray) c_pango_tab_array_get_positions_in_pixels;
	
	// pango.PgLayout
	
	typedef PangoLayout* function(PangoContext* context) c_pango_layout_new;
	typedef PangoLayout* function(PangoLayout* src) c_pango_layout_copy;
	typedef PangoContext* function(PangoLayout* layout) c_pango_layout_get_context;
	typedef void function(PangoLayout* layout) c_pango_layout_context_changed;
	typedef void function(PangoLayout* layout, char* text, int length) c_pango_layout_set_text;
	typedef char* function(PangoLayout* layout) c_pango_layout_get_text;
	typedef void function(PangoLayout* layout, char* markup, int length) c_pango_layout_set_markup;
	typedef void function(PangoLayout* layout, char* markup, int length, gunichar accelMarker, gunichar* accelChar) c_pango_layout_set_markup_with_accel;
	typedef void function(PangoLayout* layout, PangoAttrList* attrs) c_pango_layout_set_attributes;
	typedef PangoAttrList* function(PangoLayout* layout) c_pango_layout_get_attributes;
	typedef void function(PangoLayout* layout, PangoFontDescription* desc) c_pango_layout_set_font_description;
	typedef PangoFontDescription* function(PangoLayout* layout) c_pango_layout_get_font_description;
	typedef void function(PangoLayout* layout, int width) c_pango_layout_set_width;
	typedef int function(PangoLayout* layout) c_pango_layout_get_width;
	typedef void function(PangoLayout* layout, int height) c_pango_layout_set_height;
	typedef int function(PangoLayout* layout) c_pango_layout_get_height;
	typedef void function(PangoLayout* layout, PangoWrapMode wrap) c_pango_layout_set_wrap;
	typedef PangoWrapMode function(PangoLayout* layout) c_pango_layout_get_wrap;
	typedef gboolean function(PangoLayout* layout) c_pango_layout_is_wrapped;
	typedef void function(PangoLayout* layout, PangoEllipsizeMode ellipsize) c_pango_layout_set_ellipsize;
	typedef PangoEllipsizeMode function(PangoLayout* layout) c_pango_layout_get_ellipsize;
	typedef gboolean function(PangoLayout* layout) c_pango_layout_is_ellipsized;
	typedef void function(PangoLayout* layout, int indent) c_pango_layout_set_indent;
	typedef int function(PangoLayout* layout) c_pango_layout_get_indent;
	typedef int function(PangoLayout* layout) c_pango_layout_get_spacing;
	typedef void function(PangoLayout* layout, int spacing) c_pango_layout_set_spacing;
	typedef void function(PangoLayout* layout, gboolean justify) c_pango_layout_set_justify;
	typedef gboolean function(PangoLayout* layout) c_pango_layout_get_justify;
	typedef void function(PangoLayout* layout, gboolean autoDir) c_pango_layout_set_auto_dir;
	typedef gboolean function(PangoLayout* layout) c_pango_layout_get_auto_dir;
	typedef void function(PangoLayout* layout, PangoAlignment alignment) c_pango_layout_set_alignment;
	typedef PangoAlignment function(PangoLayout* layout) c_pango_layout_get_alignment;
	typedef void function(PangoLayout* layout, PangoTabArray* tabs) c_pango_layout_set_tabs;
	typedef PangoTabArray* function(PangoLayout* layout) c_pango_layout_get_tabs;
	typedef void function(PangoLayout* layout, gboolean setting) c_pango_layout_set_single_paragraph_mode;
	typedef gboolean function(PangoLayout* layout) c_pango_layout_get_single_paragraph_mode;
	typedef int function(PangoLayout* layout) c_pango_layout_get_unknown_glyphs_count;
	typedef void function(PangoLayout* layout, PangoLogAttr** attrs, gint* nAttrs) c_pango_layout_get_log_attrs;
	typedef void function(PangoLayout* layout, int index, PangoRectangle* pos) c_pango_layout_index_to_pos;
	typedef void function(PangoLayout* layout, int index, gboolean trailing, int* line, int* xPos) c_pango_layout_index_to_line_x;
	typedef gboolean function(PangoLayout* layout, int x, int y, int* index, int* trailing) c_pango_layout_xy_to_index;
	typedef void function(PangoLayout* layout, int index, PangoRectangle* strongPos, PangoRectangle* weakPos) c_pango_layout_get_cursor_pos;
	typedef void function(PangoLayout* layout, gboolean strong, int oldIndex, int oldTrailing, int direction, int* newIndex, int* newTrailing) c_pango_layout_move_cursor_visually;
	typedef void function(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_get_extents;
	typedef void function(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_get_pixel_extents;
	typedef void function(PangoLayout* layout, int* width, int* height) c_pango_layout_get_size;
	typedef void function(PangoLayout* layout, int* width, int* height) c_pango_layout_get_pixel_size;
	typedef int function(PangoLayout* layout) c_pango_layout_get_baseline;
	typedef int function(PangoLayout* layout) c_pango_layout_get_line_count;
	typedef PangoLayoutLine* function(PangoLayout* layout, int line) c_pango_layout_get_line;
	typedef PangoLayoutLine* function(PangoLayout* layout, int line) c_pango_layout_get_line_readonly;
	typedef GSList* function(PangoLayout* layout) c_pango_layout_get_lines;
	typedef GSList* function(PangoLayout* layout) c_pango_layout_get_lines_readonly;
	typedef PangoLayoutIter* function(PangoLayout* layout) c_pango_layout_get_iter;
	
	// pango.PgLayoutIter
	
	typedef PangoLayoutIter* function(PangoLayoutIter* iter) c_pango_layout_iter_copy;
	typedef void function(PangoLayoutIter* iter) c_pango_layout_iter_free;
	typedef gboolean function(PangoLayoutIter* iter) c_pango_layout_iter_next_run;
	typedef gboolean function(PangoLayoutIter* iter) c_pango_layout_iter_next_char;
	typedef gboolean function(PangoLayoutIter* iter) c_pango_layout_iter_next_cluster;
	typedef gboolean function(PangoLayoutIter* iter) c_pango_layout_iter_next_line;
	typedef gboolean function(PangoLayoutIter* iter) c_pango_layout_iter_at_last_line;
	typedef int function(PangoLayoutIter* iter) c_pango_layout_iter_get_index;
	typedef int function(PangoLayoutIter* iter) c_pango_layout_iter_get_baseline;
	typedef PangoLayoutRun* function(PangoLayoutIter* iter) c_pango_layout_iter_get_run;
	typedef PangoLayoutRun* function(PangoLayoutIter* iter) c_pango_layout_iter_get_run_readonly;
	typedef PangoLayoutLine* function(PangoLayoutIter* iter) c_pango_layout_iter_get_line;
	typedef PangoLayoutLine* function(PangoLayoutIter* iter) c_pango_layout_iter_get_line_readonly;
	typedef PangoLayout* function(PangoLayoutIter* iter) c_pango_layout_iter_get_layout;
	typedef void function(PangoLayoutIter* iter, PangoRectangle* logicalRect) c_pango_layout_iter_get_char_extents;
	typedef void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_cluster_extents;
	typedef void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_run_extents;
	typedef void function(PangoLayoutIter* iter, int* y0_, int* y1_) c_pango_layout_iter_get_line_yrange;
	typedef void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_line_extents;
	typedef void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_layout_extents;
	
	// pango.PgLayoutLine
	
	typedef PangoLayoutLine* function(PangoLayoutLine* line) c_pango_layout_line_ref;
	typedef void function(PangoLayoutLine* line) c_pango_layout_line_unref;
	typedef void function(PangoLayoutLine* line, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_line_get_extents;
	typedef void function(PangoLayoutLine* layoutLine, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_line_get_pixel_extents;
	typedef void function(PangoLayoutLine* line, int index, gboolean trailing, int* xPos) c_pango_layout_line_index_to_x;
	typedef gboolean function(PangoLayoutLine* line, int xPos, int* index, int* trailing) c_pango_layout_line_x_to_index;
	typedef void function(PangoLayoutLine* line, int startIndex, int endIndex, int** ranges, int* nRanges) c_pango_layout_line_get_x_ranges;
	
	// pango.PgScript
	
	typedef PangoScript function(gunichar ch) c_pango_script_for_unichar;
	typedef PangoLanguage* function(PangoScript script) c_pango_script_get_sample_language;
	
	// pango.PgScriptIter
	
	typedef PangoScriptIter* function(char* text, int length) c_pango_script_iter_new;
	typedef void function(PangoScriptIter* iter, char** start, char** end, PangoScript* script) c_pango_script_iter_get_range;
	typedef gboolean function(PangoScriptIter* iter) c_pango_script_iter_next;
	typedef void function(PangoScriptIter* iter) c_pango_script_iter_free;
	
	// pango.PgLanguage
	
	typedef PangoLanguage* function(char* language) c_pango_language_from_string;
	typedef char* function(PangoLanguage* language) c_pango_language_to_string;
	typedef gboolean function(PangoLanguage* language, char* rangeList) c_pango_language_matches;
	typedef gboolean function(PangoLanguage* language, PangoScript script) c_pango_language_includes_script;
	typedef PangoScript* function(PangoLanguage* language, int* numScripts) c_pango_language_get_scripts;
	typedef PangoLanguage* function() c_pango_language_get_default;
	typedef char* function(PangoLanguage* language) c_pango_language_get_sample_string;
	
	// pango.PgVertical
	
	typedef PangoGravity function(PangoMatrix* matrix) c_pango_gravity_get_for_matrix;
	typedef PangoGravity function(PangoScript script, PangoGravity baseGravity, PangoGravityHint hint) c_pango_gravity_get_for_script;
	typedef double function(PangoGravity gravity) c_pango_gravity_to_rotation;
	
	// pango.PgCairoFontMap
	
	typedef PangoFontMap* function() c_pango_cairo_font_map_get_default;
	typedef void function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_set_default;
	typedef PangoFontMap* function() c_pango_cairo_font_map_new;
	typedef PangoFontMap* function(cairo_font_type_t fonttype) c_pango_cairo_font_map_new_for_font_type;
	typedef cairo_font_type_t function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_get_font_type;
	typedef void function(PangoCairoFontMap* fontmap, double dpi) c_pango_cairo_font_map_set_resolution;
	typedef double function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_get_resolution;
	typedef PangoContext* function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_create_context;
	
	// pango.PgCairo
	
	typedef cairo_scaled_font_t* function(PangoCairoFont* font) c_pango_cairo_font_get_scaled_font;
	typedef void function(PangoContext* context, double dpi) c_pango_cairo_context_set_resolution;
	typedef double function(PangoContext* context) c_pango_cairo_context_get_resolution;
	typedef void function(PangoContext* context, cairo_font_options_t* options) c_pango_cairo_context_set_font_options;
	typedef cairo_font_options_t* function(PangoContext* context) c_pango_cairo_context_get_font_options;
	typedef void function(PangoContext* context, PangoCairoShapeRendererFunc func, gpointer data, GDestroyNotify dnotify) c_pango_cairo_context_set_shape_renderer;
	typedef PangoCairoShapeRendererFunc function(PangoContext* context, gpointer* data) c_pango_cairo_context_get_shape_renderer;
	typedef PangoContext* function(cairo_t* cr) c_pango_cairo_create_context;
	typedef void function(cairo_t* cr, PangoContext* context) c_pango_cairo_update_context;
	typedef PangoLayout* function(cairo_t* cr) c_pango_cairo_create_layout;
	typedef void function(cairo_t* cr, PangoLayout* layout) c_pango_cairo_update_layout;
	typedef void function(cairo_t* cr, PangoFont* font, PangoGlyphString* glyphs) c_pango_cairo_show_glyph_string;
	typedef void function(cairo_t* cr, char* text, PangoGlyphItem* glyphItem) c_pango_cairo_show_glyph_item;
	typedef void function(cairo_t* cr, PangoLayoutLine* line) c_pango_cairo_show_layout_line;
	typedef void function(cairo_t* cr, PangoLayout* layout) c_pango_cairo_show_layout;
	typedef void function(cairo_t* cr, double x, double y, double width, double height) c_pango_cairo_show_error_underline;
	typedef void function(cairo_t* cr, PangoFont* font, PangoGlyphString* glyphs) c_pango_cairo_glyph_string_path;
	typedef void function(cairo_t* cr, PangoLayoutLine* line) c_pango_cairo_layout_line_path;
	typedef void function(cairo_t* cr, PangoLayout* layout) c_pango_cairo_layout_path;
	typedef void function(cairo_t* cr, double x, double y, double width, double height) c_pango_cairo_error_underline_path;
	
	// pango.PgRenderer
	
	typedef void function(PangoRenderer* renderer, PangoLayout* layout, int x, int y) c_pango_renderer_draw_layout;
	typedef void function(PangoRenderer* renderer, PangoLayoutLine* line, int x, int y) c_pango_renderer_draw_layout_line;
	typedef void function(PangoRenderer* renderer, PangoFont* font, PangoGlyphString* glyphs, int x, int y) c_pango_renderer_draw_glyphs;
	typedef void function(PangoRenderer* renderer, char* text, PangoGlyphItem* glyphItem, int x, int y) c_pango_renderer_draw_glyph_item;
	typedef void function(PangoRenderer* renderer, PangoRenderPart part, int x, int y, int width, int height) c_pango_renderer_draw_rectangle;
	typedef void function(PangoRenderer* renderer, int x, int y, int width, int height) c_pango_renderer_draw_error_underline;
	typedef void function(PangoRenderer* renderer, PangoRenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22) c_pango_renderer_draw_trapezoid;
	typedef void function(PangoRenderer* renderer, PangoFont* font, PangoGlyph glyph, double x, double y) c_pango_renderer_draw_glyph;
	typedef void function(PangoRenderer* renderer) c_pango_renderer_activate;
	typedef void function(PangoRenderer* renderer) c_pango_renderer_deactivate;
	typedef void function(PangoRenderer* renderer, PangoRenderPart part) c_pango_renderer_part_changed;
	typedef void function(PangoRenderer* renderer, PangoRenderPart part, PangoColor* color) c_pango_renderer_set_color;
	typedef PangoColor* function(PangoRenderer* renderer, PangoRenderPart part) c_pango_renderer_get_color;
	typedef void function(PangoRenderer* renderer, PangoMatrix* matrix) c_pango_renderer_set_matrix;
	typedef PangoMatrix* function(PangoRenderer* renderer) c_pango_renderer_get_matrix;
	typedef PangoLayout* function(PangoRenderer* renderer) c_pango_renderer_get_layout;
	typedef PangoLayoutLine* function(PangoRenderer* renderer) c_pango_renderer_get_layout_line;
	
	// pango.PgCoverage
	
	typedef PangoCoverage* function() c_pango_coverage_new;
	typedef PangoCoverage* function(PangoCoverage* coverage) c_pango_coverage_ref;
	typedef void function(PangoCoverage* coverage) c_pango_coverage_unref;
	typedef PangoCoverage* function(PangoCoverage* coverage) c_pango_coverage_copy;
	typedef PangoCoverageLevel function(PangoCoverage* coverage, int index) c_pango_coverage_get;
	typedef void function(PangoCoverage* coverage, PangoCoverage* other) c_pango_coverage_max;
	typedef void function(PangoCoverage* coverage, int index, PangoCoverageLevel level) c_pango_coverage_set;
	typedef void function(PangoCoverage* coverage, guchar** bytes, int* nBytes) c_pango_coverage_to_bytes;
	typedef PangoCoverage* function(guchar* bytes, int nBytes) c_pango_coverage_from_bytes;
	
	// pango.PgEngine
	
	typedef void function(PangoEngineInfo** engines, int* nEngines) c_script_engine_list;
	typedef void function(GTypeModule* modul) c_script_engine_init;
	typedef void function() c_script_engine_exit;
	typedef PangoEngine* function(char* id) c_script_engine_create;
	
	// pango.PgEngineLang
	
	
	// pango.PgEngineShape
	
	
	// pango.PgMiscellaneous
	
	typedef char** function(char* str) c_pango_split_file_list;
	typedef char* function(char* str) c_pango_trim_string;
	typedef gint function(FILE* stream, GString* str) c_pango_read_line;
	typedef gboolean function(char** pos) c_pango_skip_space;
	typedef gboolean function(char** pos, GString* f_out) c_pango_scan_word;
	typedef gboolean function(char** pos, GString* f_out) c_pango_scan_string;
	typedef gboolean function(char** pos, int* f_out) c_pango_scan_int;
	typedef char* function(char* key) c_pango_config_key_get;
	typedef void function(char* fontname, char*** families, int* nFamilies) c_pango_lookup_aliases;
	typedef gboolean function(GType type, char* str, int* value, gboolean warn, char** possibleValues) c_pango_parse_enum;
	typedef gboolean function(char* str, PangoStyle* style, gboolean warn) c_pango_parse_style;
	typedef gboolean function(char* str, PangoVariant* variant, gboolean warn) c_pango_parse_variant;
	typedef gboolean function(char* str, PangoWeight* weight, gboolean warn) c_pango_parse_weight;
	typedef gboolean function(char* str, PangoStretch* stretch, gboolean warn) c_pango_parse_stretch;
	typedef char* function() c_pango_get_sysconf_subdirectory;
	typedef char* function() c_pango_get_lib_subdirectory;
	typedef guint8* function(gchar* text, int length, PangoDirection* pbaseDir) c_pango_log2vis_get_embedding_levels;
	typedef gboolean function(gunichar ch) c_pango_is_zero_width;
	typedef void function(int* thickness, int* position) c_pango_quantize_line_geometry;
	
	// pango.PgVersion
	
	typedef int function() c_pango_version;
	typedef char* function() c_pango_version_string;
	typedef char* function(int requiredMajor, int requiredMinor, int requiredMicro) c_pango_version_check;
}

// pango.PgContext

c_pango_itemize  pango_itemize;
c_pango_itemize_with_base_dir  pango_itemize_with_base_dir;
c_pango_reorder_items  pango_reorder_items;
c_pango_context_new  pango_context_new;
c_pango_context_set_font_map  pango_context_set_font_map;
c_pango_context_get_font_map  pango_context_get_font_map;
c_pango_context_get_font_description  pango_context_get_font_description;
c_pango_context_set_font_description  pango_context_set_font_description;
c_pango_context_get_language  pango_context_get_language;
c_pango_context_set_language  pango_context_set_language;
c_pango_context_get_base_dir  pango_context_get_base_dir;
c_pango_context_set_base_dir  pango_context_set_base_dir;
c_pango_context_get_base_gravity  pango_context_get_base_gravity;
c_pango_context_set_base_gravity  pango_context_set_base_gravity;
c_pango_context_get_gravity  pango_context_get_gravity;
c_pango_context_get_gravity_hint  pango_context_get_gravity_hint;
c_pango_context_set_gravity_hint  pango_context_set_gravity_hint;
c_pango_context_get_matrix  pango_context_get_matrix;
c_pango_context_set_matrix  pango_context_set_matrix;
c_pango_context_load_font  pango_context_load_font;
c_pango_context_load_fontset  pango_context_load_fontset;
c_pango_context_get_metrics  pango_context_get_metrics;
c_pango_context_list_families  pango_context_list_families;
c_pango_break  pango_break;
c_pango_get_log_attrs  pango_get_log_attrs;
c_pango_find_paragraph_boundary  pango_find_paragraph_boundary;
c_pango_default_break  pango_default_break;
c_pango_shape  pango_shape;
c_pango_unichar_direction  pango_unichar_direction;
c_pango_find_base_dir  pango_find_base_dir;
c_pango_get_mirror_char  pango_get_mirror_char;
c_pango_bidi_type_for_unichar  pango_bidi_type_for_unichar;

// pango.PgItem


// pango.PgMatrix

c_pango_units_to_double  pango_units_to_double;
c_pango_units_from_double  pango_units_from_double;
c_pango_extents_to_pixels  pango_extents_to_pixels;
c_pango_matrix_copy  pango_matrix_copy;
c_pango_matrix_free  pango_matrix_free;
c_pango_matrix_translate  pango_matrix_translate;
c_pango_matrix_scale  pango_matrix_scale;
c_pango_matrix_rotate  pango_matrix_rotate;
c_pango_matrix_concat  pango_matrix_concat;
c_pango_matrix_transform_point  pango_matrix_transform_point;
c_pango_matrix_transform_distance  pango_matrix_transform_distance;
c_pango_matrix_transform_rectangle  pango_matrix_transform_rectangle;
c_pango_matrix_transform_pixel_rectangle  pango_matrix_transform_pixel_rectangle;
c_pango_matrix_get_font_scale_factor  pango_matrix_get_font_scale_factor;

// pango.PgGlyphString

c_pango_glyph_string_new  pango_glyph_string_new;
c_pango_glyph_string_copy  pango_glyph_string_copy;
c_pango_glyph_string_set_size  pango_glyph_string_set_size;
c_pango_glyph_string_free  pango_glyph_string_free;
c_pango_glyph_string_extents  pango_glyph_string_extents;
c_pango_glyph_string_extents_range  pango_glyph_string_extents_range;
c_pango_glyph_string_get_width  pango_glyph_string_get_width;
c_pango_glyph_string_index_to_x  pango_glyph_string_index_to_x;
c_pango_glyph_string_x_to_index  pango_glyph_string_x_to_index;
c_pango_glyph_string_get_logical_widths  pango_glyph_string_get_logical_widths;

// pango.PgGlyphItem

c_pango_glyph_item_copy  pango_glyph_item_copy;
c_pango_glyph_item_free  pango_glyph_item_free;
c_pango_glyph_item_split  pango_glyph_item_split;
c_pango_glyph_item_apply_attrs  pango_glyph_item_apply_attrs;
c_pango_glyph_item_letter_space  pango_glyph_item_letter_space;

// pango.PgGlyphItemIter

c_pango_glyph_item_iter_copy  pango_glyph_item_iter_copy;
c_pango_glyph_item_iter_free  pango_glyph_item_iter_free;
c_pango_glyph_item_iter_init_start  pango_glyph_item_iter_init_start;
c_pango_glyph_item_iter_init_end  pango_glyph_item_iter_init_end;
c_pango_glyph_item_iter_next_cluster  pango_glyph_item_iter_next_cluster;
c_pango_glyph_item_iter_prev_cluster  pango_glyph_item_iter_prev_cluster;

// pango.PgFont

c_pango_font_find_shaper  pango_font_find_shaper;
c_pango_font_describe  pango_font_describe;
c_pango_font_describe_with_absolute_size  pango_font_describe_with_absolute_size;
c_pango_font_get_coverage  pango_font_get_coverage;
c_pango_font_get_glyph_extents  pango_font_get_glyph_extents;
c_pango_font_get_metrics  pango_font_get_metrics;
c_pango_font_get_font_map  pango_font_get_font_map;

// pango.PgFontDescription

c_pango_font_description_new  pango_font_description_new;
c_pango_font_description_copy  pango_font_description_copy;
c_pango_font_description_copy_static  pango_font_description_copy_static;
c_pango_font_description_hash  pango_font_description_hash;
c_pango_font_description_equal  pango_font_description_equal;
c_pango_font_description_free  pango_font_description_free;
c_pango_font_description_set_family  pango_font_description_set_family;
c_pango_font_description_set_family_static  pango_font_description_set_family_static;
c_pango_font_description_get_family  pango_font_description_get_family;
c_pango_font_description_set_style  pango_font_description_set_style;
c_pango_font_description_get_style  pango_font_description_get_style;
c_pango_font_description_set_variant  pango_font_description_set_variant;
c_pango_font_description_get_variant  pango_font_description_get_variant;
c_pango_font_description_set_weight  pango_font_description_set_weight;
c_pango_font_description_get_weight  pango_font_description_get_weight;
c_pango_font_description_set_stretch  pango_font_description_set_stretch;
c_pango_font_description_get_stretch  pango_font_description_get_stretch;
c_pango_font_description_set_size  pango_font_description_set_size;
c_pango_font_description_get_size  pango_font_description_get_size;
c_pango_font_description_set_absolute_size  pango_font_description_set_absolute_size;
c_pango_font_description_get_size_is_absolute  pango_font_description_get_size_is_absolute;
c_pango_font_description_set_gravity  pango_font_description_set_gravity;
c_pango_font_description_get_gravity  pango_font_description_get_gravity;
c_pango_font_description_get_set_fields  pango_font_description_get_set_fields;
c_pango_font_description_unset_fields  pango_font_description_unset_fields;
c_pango_font_description_merge  pango_font_description_merge;
c_pango_font_description_merge_static  pango_font_description_merge_static;
c_pango_font_description_better_match  pango_font_description_better_match;
c_pango_font_description_from_string  pango_font_description_from_string;
c_pango_font_description_to_string  pango_font_description_to_string;
c_pango_font_description_to_filename  pango_font_description_to_filename;

// pango.PgFontMetrics

c_pango_font_metrics_ref  pango_font_metrics_ref;
c_pango_font_metrics_unref  pango_font_metrics_unref;
c_pango_font_metrics_get_ascent  pango_font_metrics_get_ascent;
c_pango_font_metrics_get_descent  pango_font_metrics_get_descent;
c_pango_font_metrics_get_approximate_char_width  pango_font_metrics_get_approximate_char_width;
c_pango_font_metrics_get_approximate_digit_width  pango_font_metrics_get_approximate_digit_width;
c_pango_font_metrics_get_underline_thickness  pango_font_metrics_get_underline_thickness;
c_pango_font_metrics_get_underline_position  pango_font_metrics_get_underline_position;
c_pango_font_metrics_get_strikethrough_thickness  pango_font_metrics_get_strikethrough_thickness;
c_pango_font_metrics_get_strikethrough_position  pango_font_metrics_get_strikethrough_position;

// pango.PgFontFamily

c_pango_font_family_get_name  pango_font_family_get_name;
c_pango_font_family_is_monospace  pango_font_family_is_monospace;
c_pango_font_family_list_faces  pango_font_family_list_faces;

// pango.PgFontFace

c_pango_font_face_get_face_name  pango_font_face_get_face_name;
c_pango_font_face_list_sizes  pango_font_face_list_sizes;
c_pango_font_face_describe  pango_font_face_describe;
c_pango_font_face_is_synthesized  pango_font_face_is_synthesized;

// pango.PgFontMap

c_pango_font_map_create_context  pango_font_map_create_context;
c_pango_font_map_load_font  pango_font_map_load_font;
c_pango_font_map_load_fontset  pango_font_map_load_fontset;
c_pango_font_map_list_families  pango_font_map_list_families;
c_pango_font_map_get_shape_engine_type  pango_font_map_get_shape_engine_type;

// pango.PgFontset

c_pango_fontset_get_font  pango_fontset_get_font;
c_pango_fontset_get_metrics  pango_fontset_get_metrics;
c_pango_fontset_foreach  pango_fontset_foreach;

// pango.PgFontsetSimple

c_pango_fontset_simple_new  pango_fontset_simple_new;
c_pango_fontset_simple_append  pango_fontset_simple_append;
c_pango_fontset_simple_size  pango_fontset_simple_size;

// pango.PgAttribute

c_pango_parse_markup  pango_parse_markup;
c_pango_attr_type_register  pango_attr_type_register;
c_pango_attr_type_get_name  pango_attr_type_get_name;
c_pango_attribute_init  pango_attribute_init;
c_pango_attribute_copy  pango_attribute_copy;
c_pango_attribute_equal  pango_attribute_equal;
c_pango_attribute_destroy  pango_attribute_destroy;
c_pango_attr_language_new  pango_attr_language_new;
c_pango_attr_family_new  pango_attr_family_new;
c_pango_attr_style_new  pango_attr_style_new;
c_pango_attr_variant_new  pango_attr_variant_new;
c_pango_attr_stretch_new  pango_attr_stretch_new;
c_pango_attr_weight_new  pango_attr_weight_new;
c_pango_attr_size_new  pango_attr_size_new;
c_pango_attr_size_new_absolute  pango_attr_size_new_absolute;
c_pango_attr_font_desc_new  pango_attr_font_desc_new;
c_pango_attr_foreground_new  pango_attr_foreground_new;
c_pango_attr_background_new  pango_attr_background_new;
c_pango_attr_strikethrough_new  pango_attr_strikethrough_new;
c_pango_attr_strikethrough_color_new  pango_attr_strikethrough_color_new;
c_pango_attr_underline_new  pango_attr_underline_new;
c_pango_attr_underline_color_new  pango_attr_underline_color_new;
c_pango_attr_shape_new  pango_attr_shape_new;
c_pango_attr_shape_new_with_data  pango_attr_shape_new_with_data;
c_pango_attr_scale_new  pango_attr_scale_new;
c_pango_attr_rise_new  pango_attr_rise_new;
c_pango_attr_letter_spacing_new  pango_attr_letter_spacing_new;
c_pango_attr_fallback_new  pango_attr_fallback_new;
c_pango_attr_gravity_new  pango_attr_gravity_new;
c_pango_attr_gravity_hint_new  pango_attr_gravity_hint_new;

// pango.PgColor

c_pango_color_parse  pango_color_parse;
c_pango_color_copy  pango_color_copy;
c_pango_color_free  pango_color_free;
c_pango_color_to_string  pango_color_to_string;

// pango.PgAttributeList

c_pango_attr_list_new  pango_attr_list_new;
c_pango_attr_list_ref  pango_attr_list_ref;
c_pango_attr_list_unref  pango_attr_list_unref;
c_pango_attr_list_copy  pango_attr_list_copy;
c_pango_attr_list_insert  pango_attr_list_insert;
c_pango_attr_list_insert_before  pango_attr_list_insert_before;
c_pango_attr_list_change  pango_attr_list_change;
c_pango_attr_list_splice  pango_attr_list_splice;
c_pango_attr_list_filter  pango_attr_list_filter;
c_pango_attr_list_get_iterator  pango_attr_list_get_iterator;

// pango.PgAttributeIterator

c_pango_attr_iterator_copy  pango_attr_iterator_copy;
c_pango_attr_iterator_next  pango_attr_iterator_next;
c_pango_attr_iterator_range  pango_attr_iterator_range;
c_pango_attr_iterator_get  pango_attr_iterator_get;
c_pango_attr_iterator_get_font  pango_attr_iterator_get_font;
c_pango_attr_iterator_get_attrs  pango_attr_iterator_get_attrs;
c_pango_attr_iterator_destroy  pango_attr_iterator_destroy;

// pango.PgTabArray

c_pango_tab_array_new  pango_tab_array_new;
c_pango_tab_array_new_with_positions  pango_tab_array_new_with_positions;
c_pango_tab_array_copy  pango_tab_array_copy;
c_pango_tab_array_free  pango_tab_array_free;
c_pango_tab_array_get_size  pango_tab_array_get_size;
c_pango_tab_array_resize  pango_tab_array_resize;
c_pango_tab_array_set_tab  pango_tab_array_set_tab;
c_pango_tab_array_get_tab  pango_tab_array_get_tab;
c_pango_tab_array_get_tabs  pango_tab_array_get_tabs;
c_pango_tab_array_get_positions_in_pixels  pango_tab_array_get_positions_in_pixels;

// pango.PgLayout

c_pango_layout_new  pango_layout_new;
c_pango_layout_copy  pango_layout_copy;
c_pango_layout_get_context  pango_layout_get_context;
c_pango_layout_context_changed  pango_layout_context_changed;
c_pango_layout_set_text  pango_layout_set_text;
c_pango_layout_get_text  pango_layout_get_text;
c_pango_layout_set_markup  pango_layout_set_markup;
c_pango_layout_set_markup_with_accel  pango_layout_set_markup_with_accel;
c_pango_layout_set_attributes  pango_layout_set_attributes;
c_pango_layout_get_attributes  pango_layout_get_attributes;
c_pango_layout_set_font_description  pango_layout_set_font_description;
c_pango_layout_get_font_description  pango_layout_get_font_description;
c_pango_layout_set_width  pango_layout_set_width;
c_pango_layout_get_width  pango_layout_get_width;
c_pango_layout_set_height  pango_layout_set_height;
c_pango_layout_get_height  pango_layout_get_height;
c_pango_layout_set_wrap  pango_layout_set_wrap;
c_pango_layout_get_wrap  pango_layout_get_wrap;
c_pango_layout_is_wrapped  pango_layout_is_wrapped;
c_pango_layout_set_ellipsize  pango_layout_set_ellipsize;
c_pango_layout_get_ellipsize  pango_layout_get_ellipsize;
c_pango_layout_is_ellipsized  pango_layout_is_ellipsized;
c_pango_layout_set_indent  pango_layout_set_indent;
c_pango_layout_get_indent  pango_layout_get_indent;
c_pango_layout_get_spacing  pango_layout_get_spacing;
c_pango_layout_set_spacing  pango_layout_set_spacing;
c_pango_layout_set_justify  pango_layout_set_justify;
c_pango_layout_get_justify  pango_layout_get_justify;
c_pango_layout_set_auto_dir  pango_layout_set_auto_dir;
c_pango_layout_get_auto_dir  pango_layout_get_auto_dir;
c_pango_layout_set_alignment  pango_layout_set_alignment;
c_pango_layout_get_alignment  pango_layout_get_alignment;
c_pango_layout_set_tabs  pango_layout_set_tabs;
c_pango_layout_get_tabs  pango_layout_get_tabs;
c_pango_layout_set_single_paragraph_mode  pango_layout_set_single_paragraph_mode;
c_pango_layout_get_single_paragraph_mode  pango_layout_get_single_paragraph_mode;
c_pango_layout_get_unknown_glyphs_count  pango_layout_get_unknown_glyphs_count;
c_pango_layout_get_log_attrs  pango_layout_get_log_attrs;
c_pango_layout_index_to_pos  pango_layout_index_to_pos;
c_pango_layout_index_to_line_x  pango_layout_index_to_line_x;
c_pango_layout_xy_to_index  pango_layout_xy_to_index;
c_pango_layout_get_cursor_pos  pango_layout_get_cursor_pos;
c_pango_layout_move_cursor_visually  pango_layout_move_cursor_visually;
c_pango_layout_get_extents  pango_layout_get_extents;
c_pango_layout_get_pixel_extents  pango_layout_get_pixel_extents;
c_pango_layout_get_size  pango_layout_get_size;
c_pango_layout_get_pixel_size  pango_layout_get_pixel_size;
c_pango_layout_get_baseline  pango_layout_get_baseline;
c_pango_layout_get_line_count  pango_layout_get_line_count;
c_pango_layout_get_line  pango_layout_get_line;
c_pango_layout_get_line_readonly  pango_layout_get_line_readonly;
c_pango_layout_get_lines  pango_layout_get_lines;
c_pango_layout_get_lines_readonly  pango_layout_get_lines_readonly;
c_pango_layout_get_iter  pango_layout_get_iter;

// pango.PgLayoutIter

c_pango_layout_iter_copy  pango_layout_iter_copy;
c_pango_layout_iter_free  pango_layout_iter_free;
c_pango_layout_iter_next_run  pango_layout_iter_next_run;
c_pango_layout_iter_next_char  pango_layout_iter_next_char;
c_pango_layout_iter_next_cluster  pango_layout_iter_next_cluster;
c_pango_layout_iter_next_line  pango_layout_iter_next_line;
c_pango_layout_iter_at_last_line  pango_layout_iter_at_last_line;
c_pango_layout_iter_get_index  pango_layout_iter_get_index;
c_pango_layout_iter_get_baseline  pango_layout_iter_get_baseline;
c_pango_layout_iter_get_run  pango_layout_iter_get_run;
c_pango_layout_iter_get_run_readonly  pango_layout_iter_get_run_readonly;
c_pango_layout_iter_get_line  pango_layout_iter_get_line;
c_pango_layout_iter_get_line_readonly  pango_layout_iter_get_line_readonly;
c_pango_layout_iter_get_layout  pango_layout_iter_get_layout;
c_pango_layout_iter_get_char_extents  pango_layout_iter_get_char_extents;
c_pango_layout_iter_get_cluster_extents  pango_layout_iter_get_cluster_extents;
c_pango_layout_iter_get_run_extents  pango_layout_iter_get_run_extents;
c_pango_layout_iter_get_line_yrange  pango_layout_iter_get_line_yrange;
c_pango_layout_iter_get_line_extents  pango_layout_iter_get_line_extents;
c_pango_layout_iter_get_layout_extents  pango_layout_iter_get_layout_extents;

// pango.PgLayoutLine

c_pango_layout_line_ref  pango_layout_line_ref;
c_pango_layout_line_unref  pango_layout_line_unref;
c_pango_layout_line_get_extents  pango_layout_line_get_extents;
c_pango_layout_line_get_pixel_extents  pango_layout_line_get_pixel_extents;
c_pango_layout_line_index_to_x  pango_layout_line_index_to_x;
c_pango_layout_line_x_to_index  pango_layout_line_x_to_index;
c_pango_layout_line_get_x_ranges  pango_layout_line_get_x_ranges;

// pango.PgScript

c_pango_script_for_unichar  pango_script_for_unichar;
c_pango_script_get_sample_language  pango_script_get_sample_language;

// pango.PgScriptIter

c_pango_script_iter_new  pango_script_iter_new;
c_pango_script_iter_get_range  pango_script_iter_get_range;
c_pango_script_iter_next  pango_script_iter_next;
c_pango_script_iter_free  pango_script_iter_free;

// pango.PgLanguage

c_pango_language_from_string  pango_language_from_string;
c_pango_language_to_string  pango_language_to_string;
c_pango_language_matches  pango_language_matches;
c_pango_language_includes_script  pango_language_includes_script;
c_pango_language_get_scripts  pango_language_get_scripts;
c_pango_language_get_default  pango_language_get_default;
c_pango_language_get_sample_string  pango_language_get_sample_string;

// pango.PgVertical

c_pango_gravity_get_for_matrix  pango_gravity_get_for_matrix;
c_pango_gravity_get_for_script  pango_gravity_get_for_script;
c_pango_gravity_to_rotation  pango_gravity_to_rotation;

// pango.PgCairoFontMap

c_pango_cairo_font_map_get_default  pango_cairo_font_map_get_default;
c_pango_cairo_font_map_set_default  pango_cairo_font_map_set_default;
c_pango_cairo_font_map_new  pango_cairo_font_map_new;
c_pango_cairo_font_map_new_for_font_type  pango_cairo_font_map_new_for_font_type;
c_pango_cairo_font_map_get_font_type  pango_cairo_font_map_get_font_type;
c_pango_cairo_font_map_set_resolution  pango_cairo_font_map_set_resolution;
c_pango_cairo_font_map_get_resolution  pango_cairo_font_map_get_resolution;
c_pango_cairo_font_map_create_context  pango_cairo_font_map_create_context;

// pango.PgCairo

c_pango_cairo_font_get_scaled_font  pango_cairo_font_get_scaled_font;
c_pango_cairo_context_set_resolution  pango_cairo_context_set_resolution;
c_pango_cairo_context_get_resolution  pango_cairo_context_get_resolution;
c_pango_cairo_context_set_font_options  pango_cairo_context_set_font_options;
c_pango_cairo_context_get_font_options  pango_cairo_context_get_font_options;
c_pango_cairo_context_set_shape_renderer  pango_cairo_context_set_shape_renderer;
c_pango_cairo_context_get_shape_renderer  pango_cairo_context_get_shape_renderer;
c_pango_cairo_create_context  pango_cairo_create_context;
c_pango_cairo_update_context  pango_cairo_update_context;
c_pango_cairo_create_layout  pango_cairo_create_layout;
c_pango_cairo_update_layout  pango_cairo_update_layout;
c_pango_cairo_show_glyph_string  pango_cairo_show_glyph_string;
c_pango_cairo_show_glyph_item  pango_cairo_show_glyph_item;
c_pango_cairo_show_layout_line  pango_cairo_show_layout_line;
c_pango_cairo_show_layout  pango_cairo_show_layout;
c_pango_cairo_show_error_underline  pango_cairo_show_error_underline;
c_pango_cairo_glyph_string_path  pango_cairo_glyph_string_path;
c_pango_cairo_layout_line_path  pango_cairo_layout_line_path;
c_pango_cairo_layout_path  pango_cairo_layout_path;
c_pango_cairo_error_underline_path  pango_cairo_error_underline_path;

// pango.PgRenderer

c_pango_renderer_draw_layout  pango_renderer_draw_layout;
c_pango_renderer_draw_layout_line  pango_renderer_draw_layout_line;
c_pango_renderer_draw_glyphs  pango_renderer_draw_glyphs;
c_pango_renderer_draw_glyph_item  pango_renderer_draw_glyph_item;
c_pango_renderer_draw_rectangle  pango_renderer_draw_rectangle;
c_pango_renderer_draw_error_underline  pango_renderer_draw_error_underline;
c_pango_renderer_draw_trapezoid  pango_renderer_draw_trapezoid;
c_pango_renderer_draw_glyph  pango_renderer_draw_glyph;
c_pango_renderer_activate  pango_renderer_activate;
c_pango_renderer_deactivate  pango_renderer_deactivate;
c_pango_renderer_part_changed  pango_renderer_part_changed;
c_pango_renderer_set_color  pango_renderer_set_color;
c_pango_renderer_get_color  pango_renderer_get_color;
c_pango_renderer_set_matrix  pango_renderer_set_matrix;
c_pango_renderer_get_matrix  pango_renderer_get_matrix;
c_pango_renderer_get_layout  pango_renderer_get_layout;
c_pango_renderer_get_layout_line  pango_renderer_get_layout_line;

// pango.PgCoverage

c_pango_coverage_new  pango_coverage_new;
c_pango_coverage_ref  pango_coverage_ref;
c_pango_coverage_unref  pango_coverage_unref;
c_pango_coverage_copy  pango_coverage_copy;
c_pango_coverage_get  pango_coverage_get;
c_pango_coverage_max  pango_coverage_max;
c_pango_coverage_set  pango_coverage_set;
c_pango_coverage_to_bytes  pango_coverage_to_bytes;
c_pango_coverage_from_bytes  pango_coverage_from_bytes;

// pango.PgEngine

c_script_engine_list  script_engine_list;
c_script_engine_init  script_engine_init;
c_script_engine_exit  script_engine_exit;
c_script_engine_create  script_engine_create;

// pango.PgEngineLang


// pango.PgEngineShape


// pango.PgMiscellaneous

c_pango_split_file_list  pango_split_file_list;
c_pango_trim_string  pango_trim_string;
c_pango_read_line  pango_read_line;
c_pango_skip_space  pango_skip_space;
c_pango_scan_word  pango_scan_word;
c_pango_scan_string  pango_scan_string;
c_pango_scan_int  pango_scan_int;
c_pango_config_key_get  pango_config_key_get;
c_pango_lookup_aliases  pango_lookup_aliases;
c_pango_parse_enum  pango_parse_enum;
c_pango_parse_style  pango_parse_style;
c_pango_parse_variant  pango_parse_variant;
c_pango_parse_weight  pango_parse_weight;
c_pango_parse_stretch  pango_parse_stretch;
c_pango_get_sysconf_subdirectory  pango_get_sysconf_subdirectory;
c_pango_get_lib_subdirectory  pango_get_lib_subdirectory;
c_pango_log2vis_get_embedding_levels  pango_log2vis_get_embedding_levels;
c_pango_is_zero_width  pango_is_zero_width;
c_pango_quantize_line_geometry  pango_quantize_line_geometry;

// pango.PgVersion

c_pango_version  pango_version;
c_pango_version_string  pango_version_string;
c_pango_version_check  pango_version_check;
