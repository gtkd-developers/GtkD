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


module gtkc.pango;

version(Tango)
	private import tango.stdc.stdio;
else
	private import std.stdio;

private import gtkc.pangotypes;
private import gtkc.cairotypes;
private import gtkc.Loader;
private import gtkc.paths;

mixin( _shared ~ "static this()
{
	// pango.PgContext

	Linker.link(pango_itemize, \"pango_itemize\", LIBRARY.PANGO);
	Linker.link(pango_itemize_with_base_dir, \"pango_itemize_with_base_dir\", LIBRARY.PANGO);
	Linker.link(pango_reorder_items, \"pango_reorder_items\", LIBRARY.PANGO);
	Linker.link(pango_context_new, \"pango_context_new\", LIBRARY.PANGO);
	Linker.link(pango_context_changed, \"pango_context_changed\", LIBRARY.PANGO);
	Linker.link(pango_context_get_serial, \"pango_context_get_serial\", LIBRARY.PANGO);
	Linker.link(pango_context_set_font_map, \"pango_context_set_font_map\", LIBRARY.PANGO);
	Linker.link(pango_context_get_font_map, \"pango_context_get_font_map\", LIBRARY.PANGO);
	Linker.link(pango_context_get_font_description, \"pango_context_get_font_description\", LIBRARY.PANGO);
	Linker.link(pango_context_set_font_description, \"pango_context_set_font_description\", LIBRARY.PANGO);
	Linker.link(pango_context_get_language, \"pango_context_get_language\", LIBRARY.PANGO);
	Linker.link(pango_context_set_language, \"pango_context_set_language\", LIBRARY.PANGO);
	Linker.link(pango_context_get_base_dir, \"pango_context_get_base_dir\", LIBRARY.PANGO);
	Linker.link(pango_context_set_base_dir, \"pango_context_set_base_dir\", LIBRARY.PANGO);
	Linker.link(pango_context_get_base_gravity, \"pango_context_get_base_gravity\", LIBRARY.PANGO);
	Linker.link(pango_context_set_base_gravity, \"pango_context_set_base_gravity\", LIBRARY.PANGO);
	Linker.link(pango_context_get_gravity, \"pango_context_get_gravity\", LIBRARY.PANGO);
	Linker.link(pango_context_get_gravity_hint, \"pango_context_get_gravity_hint\", LIBRARY.PANGO);
	Linker.link(pango_context_set_gravity_hint, \"pango_context_set_gravity_hint\", LIBRARY.PANGO);
	Linker.link(pango_context_get_matrix, \"pango_context_get_matrix\", LIBRARY.PANGO);
	Linker.link(pango_context_set_matrix, \"pango_context_set_matrix\", LIBRARY.PANGO);
	Linker.link(pango_context_load_font, \"pango_context_load_font\", LIBRARY.PANGO);
	Linker.link(pango_context_load_fontset, \"pango_context_load_fontset\", LIBRARY.PANGO);
	Linker.link(pango_context_get_metrics, \"pango_context_get_metrics\", LIBRARY.PANGO);
	Linker.link(pango_context_list_families, \"pango_context_list_families\", LIBRARY.PANGO);
	Linker.link(pango_break, \"pango_break\", LIBRARY.PANGO);
	Linker.link(pango_get_log_attrs, \"pango_get_log_attrs\", LIBRARY.PANGO);
	Linker.link(pango_find_paragraph_boundary, \"pango_find_paragraph_boundary\", LIBRARY.PANGO);
	Linker.link(pango_default_break, \"pango_default_break\", LIBRARY.PANGO);
	Linker.link(pango_shape, \"pango_shape\", LIBRARY.PANGO);
	Linker.link(pango_shape_full, \"pango_shape_full\", LIBRARY.PANGO);
	Linker.link(pango_unichar_direction, \"pango_unichar_direction\", LIBRARY.PANGO);
	Linker.link(pango_find_base_dir, \"pango_find_base_dir\", LIBRARY.PANGO);
	Linker.link(pango_get_mirror_char, \"pango_get_mirror_char\", LIBRARY.PANGO);
	Linker.link(pango_bidi_type_for_unichar, \"pango_bidi_type_for_unichar\", LIBRARY.PANGO);

	// pango.PgItem


	// pango.PgMatrix

	Linker.link(pango_units_to_double, \"pango_units_to_double\", LIBRARY.PANGO);
	Linker.link(pango_units_from_double, \"pango_units_from_double\", LIBRARY.PANGO);
	Linker.link(pango_extents_to_pixels, \"pango_extents_to_pixels\", LIBRARY.PANGO);
	Linker.link(pango_matrix_copy, \"pango_matrix_copy\", LIBRARY.PANGO);
	Linker.link(pango_matrix_free, \"pango_matrix_free\", LIBRARY.PANGO);
	Linker.link(pango_matrix_translate, \"pango_matrix_translate\", LIBRARY.PANGO);
	Linker.link(pango_matrix_scale, \"pango_matrix_scale\", LIBRARY.PANGO);
	Linker.link(pango_matrix_rotate, \"pango_matrix_rotate\", LIBRARY.PANGO);
	Linker.link(pango_matrix_concat, \"pango_matrix_concat\", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_point, \"pango_matrix_transform_point\", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_distance, \"pango_matrix_transform_distance\", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_rectangle, \"pango_matrix_transform_rectangle\", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_pixel_rectangle, \"pango_matrix_transform_pixel_rectangle\", LIBRARY.PANGO);
	Linker.link(pango_matrix_get_font_scale_factor, \"pango_matrix_get_font_scale_factor\", LIBRARY.PANGO);

	// pango.PgGlyphString

	Linker.link(pango_glyph_string_new, \"pango_glyph_string_new\", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_copy, \"pango_glyph_string_copy\", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_set_size, \"pango_glyph_string_set_size\", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_free, \"pango_glyph_string_free\", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_extents, \"pango_glyph_string_extents\", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_extents_range, \"pango_glyph_string_extents_range\", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_get_width, \"pango_glyph_string_get_width\", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_index_to_x, \"pango_glyph_string_index_to_x\", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_x_to_index, \"pango_glyph_string_x_to_index\", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_get_logical_widths, \"pango_glyph_string_get_logical_widths\", LIBRARY.PANGO);

	// pango.PgGlyphItem

	Linker.link(pango_glyph_item_copy, \"pango_glyph_item_copy\", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_free, \"pango_glyph_item_free\", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_split, \"pango_glyph_item_split\", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_apply_attrs, \"pango_glyph_item_apply_attrs\", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_letter_space, \"pango_glyph_item_letter_space\", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_get_logical_widths, \"pango_glyph_item_get_logical_widths\", LIBRARY.PANGO);

	// pango.PgGlyphItemIter

	Linker.link(pango_glyph_item_iter_copy, \"pango_glyph_item_iter_copy\", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_free, \"pango_glyph_item_iter_free\", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_init_start, \"pango_glyph_item_iter_init_start\", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_init_end, \"pango_glyph_item_iter_init_end\", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_next_cluster, \"pango_glyph_item_iter_next_cluster\", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_prev_cluster, \"pango_glyph_item_iter_prev_cluster\", LIBRARY.PANGO);

	// pango.PgFont

	Linker.link(pango_font_find_shaper, \"pango_font_find_shaper\", LIBRARY.PANGO);
	Linker.link(pango_font_describe, \"pango_font_describe\", LIBRARY.PANGO);
	Linker.link(pango_font_describe_with_absolute_size, \"pango_font_describe_with_absolute_size\", LIBRARY.PANGO);
	Linker.link(pango_font_get_coverage, \"pango_font_get_coverage\", LIBRARY.PANGO);
	Linker.link(pango_font_get_glyph_extents, \"pango_font_get_glyph_extents\", LIBRARY.PANGO);
	Linker.link(pango_font_get_metrics, \"pango_font_get_metrics\", LIBRARY.PANGO);
	Linker.link(pango_font_get_font_map, \"pango_font_get_font_map\", LIBRARY.PANGO);

	// pango.PgFontDescription

	Linker.link(pango_font_description_new, \"pango_font_description_new\", LIBRARY.PANGO);
	Linker.link(pango_font_description_copy, \"pango_font_description_copy\", LIBRARY.PANGO);
	Linker.link(pango_font_description_copy_static, \"pango_font_description_copy_static\", LIBRARY.PANGO);
	Linker.link(pango_font_description_hash, \"pango_font_description_hash\", LIBRARY.PANGO);
	Linker.link(pango_font_description_equal, \"pango_font_description_equal\", LIBRARY.PANGO);
	Linker.link(pango_font_description_free, \"pango_font_description_free\", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_family, \"pango_font_description_set_family\", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_family_static, \"pango_font_description_set_family_static\", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_family, \"pango_font_description_get_family\", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_style, \"pango_font_description_set_style\", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_style, \"pango_font_description_get_style\", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_variant, \"pango_font_description_set_variant\", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_variant, \"pango_font_description_get_variant\", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_weight, \"pango_font_description_set_weight\", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_weight, \"pango_font_description_get_weight\", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_stretch, \"pango_font_description_set_stretch\", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_stretch, \"pango_font_description_get_stretch\", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_size, \"pango_font_description_set_size\", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_size, \"pango_font_description_get_size\", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_absolute_size, \"pango_font_description_set_absolute_size\", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_size_is_absolute, \"pango_font_description_get_size_is_absolute\", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_gravity, \"pango_font_description_set_gravity\", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_gravity, \"pango_font_description_get_gravity\", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_set_fields, \"pango_font_description_get_set_fields\", LIBRARY.PANGO);
	Linker.link(pango_font_description_unset_fields, \"pango_font_description_unset_fields\", LIBRARY.PANGO);
	Linker.link(pango_font_description_merge, \"pango_font_description_merge\", LIBRARY.PANGO);
	Linker.link(pango_font_description_merge_static, \"pango_font_description_merge_static\", LIBRARY.PANGO);
	Linker.link(pango_font_description_better_match, \"pango_font_description_better_match\", LIBRARY.PANGO);
	Linker.link(pango_font_description_from_string, \"pango_font_description_from_string\", LIBRARY.PANGO);
	Linker.link(pango_font_description_to_string, \"pango_font_description_to_string\", LIBRARY.PANGO);
	Linker.link(pango_font_description_to_filename, \"pango_font_description_to_filename\", LIBRARY.PANGO);

	// pango.PgFontMetrics

	Linker.link(pango_font_metrics_ref, \"pango_font_metrics_ref\", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_unref, \"pango_font_metrics_unref\", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_ascent, \"pango_font_metrics_get_ascent\", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_descent, \"pango_font_metrics_get_descent\", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_approximate_char_width, \"pango_font_metrics_get_approximate_char_width\", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_approximate_digit_width, \"pango_font_metrics_get_approximate_digit_width\", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_underline_thickness, \"pango_font_metrics_get_underline_thickness\", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_underline_position, \"pango_font_metrics_get_underline_position\", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_strikethrough_thickness, \"pango_font_metrics_get_strikethrough_thickness\", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_strikethrough_position, \"pango_font_metrics_get_strikethrough_position\", LIBRARY.PANGO);

	// pango.PgFontFamily

	Linker.link(pango_font_family_get_name, \"pango_font_family_get_name\", LIBRARY.PANGO);
	Linker.link(pango_font_family_is_monospace, \"pango_font_family_is_monospace\", LIBRARY.PANGO);
	Linker.link(pango_font_family_list_faces, \"pango_font_family_list_faces\", LIBRARY.PANGO);

	// pango.PgFontFace

	Linker.link(pango_font_face_get_face_name, \"pango_font_face_get_face_name\", LIBRARY.PANGO);
	Linker.link(pango_font_face_list_sizes, \"pango_font_face_list_sizes\", LIBRARY.PANGO);
	Linker.link(pango_font_face_describe, \"pango_font_face_describe\", LIBRARY.PANGO);
	Linker.link(pango_font_face_is_synthesized, \"pango_font_face_is_synthesized\", LIBRARY.PANGO);

	// pango.PgFontMap

	Linker.link(pango_font_map_create_context, \"pango_font_map_create_context\", LIBRARY.PANGO);
	Linker.link(pango_font_map_load_font, \"pango_font_map_load_font\", LIBRARY.PANGO);
	Linker.link(pango_font_map_load_fontset, \"pango_font_map_load_fontset\", LIBRARY.PANGO);
	Linker.link(pango_font_map_list_families, \"pango_font_map_list_families\", LIBRARY.PANGO);
	Linker.link(pango_font_map_get_shape_engine_type, \"pango_font_map_get_shape_engine_type\", LIBRARY.PANGO);
	Linker.link(pango_font_map_get_serial, \"pango_font_map_get_serial\", LIBRARY.PANGO);

	// pango.PgFontset

	Linker.link(pango_fontset_get_font, \"pango_fontset_get_font\", LIBRARY.PANGO);
	Linker.link(pango_fontset_get_metrics, \"pango_fontset_get_metrics\", LIBRARY.PANGO);
	Linker.link(pango_fontset_foreach, \"pango_fontset_foreach\", LIBRARY.PANGO);

	// pango.PgFontsetSimple

	Linker.link(pango_fontset_simple_new, \"pango_fontset_simple_new\", LIBRARY.PANGO);
	Linker.link(pango_fontset_simple_append, \"pango_fontset_simple_append\", LIBRARY.PANGO);
	Linker.link(pango_fontset_simple_size, \"pango_fontset_simple_size\", LIBRARY.PANGO);

	// pango.PgAttribute

	Linker.link(pango_parse_markup, \"pango_parse_markup\", LIBRARY.PANGO);
	Linker.link(pango_markup_parser_new, \"pango_markup_parser_new\", LIBRARY.PANGO);
	Linker.link(pango_markup_parser_finish, \"pango_markup_parser_finish\", LIBRARY.PANGO);
	Linker.link(pango_attr_type_register, \"pango_attr_type_register\", LIBRARY.PANGO);
	Linker.link(pango_attr_type_get_name, \"pango_attr_type_get_name\", LIBRARY.PANGO);
	Linker.link(pango_attribute_init, \"pango_attribute_init\", LIBRARY.PANGO);
	Linker.link(pango_attribute_copy, \"pango_attribute_copy\", LIBRARY.PANGO);
	Linker.link(pango_attribute_equal, \"pango_attribute_equal\", LIBRARY.PANGO);
	Linker.link(pango_attribute_destroy, \"pango_attribute_destroy\", LIBRARY.PANGO);
	Linker.link(pango_attr_language_new, \"pango_attr_language_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_family_new, \"pango_attr_family_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_style_new, \"pango_attr_style_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_variant_new, \"pango_attr_variant_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_stretch_new, \"pango_attr_stretch_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_weight_new, \"pango_attr_weight_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_size_new, \"pango_attr_size_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_size_new_absolute, \"pango_attr_size_new_absolute\", LIBRARY.PANGO);
	Linker.link(pango_attr_font_desc_new, \"pango_attr_font_desc_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_foreground_new, \"pango_attr_foreground_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_background_new, \"pango_attr_background_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_strikethrough_new, \"pango_attr_strikethrough_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_strikethrough_color_new, \"pango_attr_strikethrough_color_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_underline_new, \"pango_attr_underline_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_underline_color_new, \"pango_attr_underline_color_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_shape_new, \"pango_attr_shape_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_shape_new_with_data, \"pango_attr_shape_new_with_data\", LIBRARY.PANGO);
	Linker.link(pango_attr_scale_new, \"pango_attr_scale_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_rise_new, \"pango_attr_rise_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_letter_spacing_new, \"pango_attr_letter_spacing_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_fallback_new, \"pango_attr_fallback_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_gravity_new, \"pango_attr_gravity_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_gravity_hint_new, \"pango_attr_gravity_hint_new\", LIBRARY.PANGO);

	// pango.PgColor

	Linker.link(pango_color_parse, \"pango_color_parse\", LIBRARY.PANGO);
	Linker.link(pango_color_copy, \"pango_color_copy\", LIBRARY.PANGO);
	Linker.link(pango_color_free, \"pango_color_free\", LIBRARY.PANGO);
	Linker.link(pango_color_to_string, \"pango_color_to_string\", LIBRARY.PANGO);

	// pango.PgAttributeList

	Linker.link(pango_attr_list_new, \"pango_attr_list_new\", LIBRARY.PANGO);
	Linker.link(pango_attr_list_ref, \"pango_attr_list_ref\", LIBRARY.PANGO);
	Linker.link(pango_attr_list_unref, \"pango_attr_list_unref\", LIBRARY.PANGO);
	Linker.link(pango_attr_list_copy, \"pango_attr_list_copy\", LIBRARY.PANGO);
	Linker.link(pango_attr_list_insert, \"pango_attr_list_insert\", LIBRARY.PANGO);
	Linker.link(pango_attr_list_insert_before, \"pango_attr_list_insert_before\", LIBRARY.PANGO);
	Linker.link(pango_attr_list_change, \"pango_attr_list_change\", LIBRARY.PANGO);
	Linker.link(pango_attr_list_splice, \"pango_attr_list_splice\", LIBRARY.PANGO);
	Linker.link(pango_attr_list_filter, \"pango_attr_list_filter\", LIBRARY.PANGO);
	Linker.link(pango_attr_list_get_iterator, \"pango_attr_list_get_iterator\", LIBRARY.PANGO);

	// pango.PgAttributeIterator

	Linker.link(pango_attr_iterator_copy, \"pango_attr_iterator_copy\", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_next, \"pango_attr_iterator_next\", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_range, \"pango_attr_iterator_range\", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_get, \"pango_attr_iterator_get\", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_get_font, \"pango_attr_iterator_get_font\", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_get_attrs, \"pango_attr_iterator_get_attrs\", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_destroy, \"pango_attr_iterator_destroy\", LIBRARY.PANGO);

	// pango.PgTabArray

	Linker.link(pango_tab_array_new, \"pango_tab_array_new\", LIBRARY.PANGO);
	Linker.link(pango_tab_array_new_with_positions, \"pango_tab_array_new_with_positions\", LIBRARY.PANGO);
	Linker.link(pango_tab_array_copy, \"pango_tab_array_copy\", LIBRARY.PANGO);
	Linker.link(pango_tab_array_free, \"pango_tab_array_free\", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_size, \"pango_tab_array_get_size\", LIBRARY.PANGO);
	Linker.link(pango_tab_array_resize, \"pango_tab_array_resize\", LIBRARY.PANGO);
	Linker.link(pango_tab_array_set_tab, \"pango_tab_array_set_tab\", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_tab, \"pango_tab_array_get_tab\", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_tabs, \"pango_tab_array_get_tabs\", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_positions_in_pixels, \"pango_tab_array_get_positions_in_pixels\", LIBRARY.PANGO);

	// pango.PgLayout

	Linker.link(pango_layout_new, \"pango_layout_new\", LIBRARY.PANGO);
	Linker.link(pango_layout_copy, \"pango_layout_copy\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_context, \"pango_layout_get_context\", LIBRARY.PANGO);
	Linker.link(pango_layout_context_changed, \"pango_layout_context_changed\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_serial, \"pango_layout_get_serial\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_text, \"pango_layout_set_text\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_text, \"pango_layout_get_text\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_character_count, \"pango_layout_get_character_count\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_markup, \"pango_layout_set_markup\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_markup_with_accel, \"pango_layout_set_markup_with_accel\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_attributes, \"pango_layout_set_attributes\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_attributes, \"pango_layout_get_attributes\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_font_description, \"pango_layout_set_font_description\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_font_description, \"pango_layout_get_font_description\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_width, \"pango_layout_set_width\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_width, \"pango_layout_get_width\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_height, \"pango_layout_set_height\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_height, \"pango_layout_get_height\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_wrap, \"pango_layout_set_wrap\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_wrap, \"pango_layout_get_wrap\", LIBRARY.PANGO);
	Linker.link(pango_layout_is_wrapped, \"pango_layout_is_wrapped\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_ellipsize, \"pango_layout_set_ellipsize\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_ellipsize, \"pango_layout_get_ellipsize\", LIBRARY.PANGO);
	Linker.link(pango_layout_is_ellipsized, \"pango_layout_is_ellipsized\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_indent, \"pango_layout_set_indent\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_indent, \"pango_layout_get_indent\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_spacing, \"pango_layout_get_spacing\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_spacing, \"pango_layout_set_spacing\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_justify, \"pango_layout_set_justify\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_justify, \"pango_layout_get_justify\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_auto_dir, \"pango_layout_set_auto_dir\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_auto_dir, \"pango_layout_get_auto_dir\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_alignment, \"pango_layout_set_alignment\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_alignment, \"pango_layout_get_alignment\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_tabs, \"pango_layout_set_tabs\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_tabs, \"pango_layout_get_tabs\", LIBRARY.PANGO);
	Linker.link(pango_layout_set_single_paragraph_mode, \"pango_layout_set_single_paragraph_mode\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_single_paragraph_mode, \"pango_layout_get_single_paragraph_mode\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_unknown_glyphs_count, \"pango_layout_get_unknown_glyphs_count\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_log_attrs, \"pango_layout_get_log_attrs\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_log_attrs_readonly, \"pango_layout_get_log_attrs_readonly\", LIBRARY.PANGO);
	Linker.link(pango_layout_index_to_pos, \"pango_layout_index_to_pos\", LIBRARY.PANGO);
	Linker.link(pango_layout_index_to_line_x, \"pango_layout_index_to_line_x\", LIBRARY.PANGO);
	Linker.link(pango_layout_xy_to_index, \"pango_layout_xy_to_index\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_cursor_pos, \"pango_layout_get_cursor_pos\", LIBRARY.PANGO);
	Linker.link(pango_layout_move_cursor_visually, \"pango_layout_move_cursor_visually\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_extents, \"pango_layout_get_extents\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_pixel_extents, \"pango_layout_get_pixel_extents\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_size, \"pango_layout_get_size\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_pixel_size, \"pango_layout_get_pixel_size\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_baseline, \"pango_layout_get_baseline\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_line_count, \"pango_layout_get_line_count\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_line, \"pango_layout_get_line\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_line_readonly, \"pango_layout_get_line_readonly\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_lines, \"pango_layout_get_lines\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_lines_readonly, \"pango_layout_get_lines_readonly\", LIBRARY.PANGO);
	Linker.link(pango_layout_get_iter, \"pango_layout_get_iter\", LIBRARY.PANGO);

	// pango.PgLayoutIter

	Linker.link(pango_layout_iter_copy, \"pango_layout_iter_copy\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_free, \"pango_layout_iter_free\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_run, \"pango_layout_iter_next_run\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_char, \"pango_layout_iter_next_char\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_cluster, \"pango_layout_iter_next_cluster\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_line, \"pango_layout_iter_next_line\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_at_last_line, \"pango_layout_iter_at_last_line\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_index, \"pango_layout_iter_get_index\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_baseline, \"pango_layout_iter_get_baseline\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_run, \"pango_layout_iter_get_run\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_run_readonly, \"pango_layout_iter_get_run_readonly\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line, \"pango_layout_iter_get_line\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line_readonly, \"pango_layout_iter_get_line_readonly\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_layout, \"pango_layout_iter_get_layout\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_char_extents, \"pango_layout_iter_get_char_extents\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_cluster_extents, \"pango_layout_iter_get_cluster_extents\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_run_extents, \"pango_layout_iter_get_run_extents\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line_yrange, \"pango_layout_iter_get_line_yrange\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line_extents, \"pango_layout_iter_get_line_extents\", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_layout_extents, \"pango_layout_iter_get_layout_extents\", LIBRARY.PANGO);

	// pango.PgLayoutLine

	Linker.link(pango_layout_line_ref, \"pango_layout_line_ref\", LIBRARY.PANGO);
	Linker.link(pango_layout_line_unref, \"pango_layout_line_unref\", LIBRARY.PANGO);
	Linker.link(pango_layout_line_get_extents, \"pango_layout_line_get_extents\", LIBRARY.PANGO);
	Linker.link(pango_layout_line_get_pixel_extents, \"pango_layout_line_get_pixel_extents\", LIBRARY.PANGO);
	Linker.link(pango_layout_line_index_to_x, \"pango_layout_line_index_to_x\", LIBRARY.PANGO);
	Linker.link(pango_layout_line_x_to_index, \"pango_layout_line_x_to_index\", LIBRARY.PANGO);
	Linker.link(pango_layout_line_get_x_ranges, \"pango_layout_line_get_x_ranges\", LIBRARY.PANGO);

	// pango.PgScript

	Linker.link(pango_script_for_unichar, \"pango_script_for_unichar\", LIBRARY.PANGO);
	Linker.link(pango_script_get_sample_language, \"pango_script_get_sample_language\", LIBRARY.PANGO);

	// pango.PgScriptIter

	Linker.link(pango_script_iter_new, \"pango_script_iter_new\", LIBRARY.PANGO);
	Linker.link(pango_script_iter_get_range, \"pango_script_iter_get_range\", LIBRARY.PANGO);
	Linker.link(pango_script_iter_next, \"pango_script_iter_next\", LIBRARY.PANGO);
	Linker.link(pango_script_iter_free, \"pango_script_iter_free\", LIBRARY.PANGO);

	// pango.PgLanguage

	Linker.link(pango_language_from_string, \"pango_language_from_string\", LIBRARY.PANGO);
	Linker.link(pango_language_to_string, \"pango_language_to_string\", LIBRARY.PANGO);
	Linker.link(pango_language_matches, \"pango_language_matches\", LIBRARY.PANGO);
	Linker.link(pango_language_includes_script, \"pango_language_includes_script\", LIBRARY.PANGO);
	Linker.link(pango_language_get_scripts, \"pango_language_get_scripts\", LIBRARY.PANGO);
	Linker.link(pango_language_get_default, \"pango_language_get_default\", LIBRARY.PANGO);
	Linker.link(pango_language_get_sample_string, \"pango_language_get_sample_string\", LIBRARY.PANGO);

	// pango.PgVertical

	Linker.link(pango_gravity_get_for_matrix, \"pango_gravity_get_for_matrix\", LIBRARY.PANGO);
	Linker.link(pango_gravity_get_for_script, \"pango_gravity_get_for_script\", LIBRARY.PANGO);
	Linker.link(pango_gravity_get_for_script_and_width, \"pango_gravity_get_for_script_and_width\", LIBRARY.PANGO);
	Linker.link(pango_gravity_to_rotation, \"pango_gravity_to_rotation\", LIBRARY.PANGO);

	// pango.PgCairoFontMap

	Linker.link(pango_cairo_font_map_get_default, \"pango_cairo_font_map_get_default\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_set_default, \"pango_cairo_font_map_set_default\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_new, \"pango_cairo_font_map_new\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_new_for_font_type, \"pango_cairo_font_map_new_for_font_type\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_get_font_type, \"pango_cairo_font_map_get_font_type\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_set_resolution, \"pango_cairo_font_map_set_resolution\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_get_resolution, \"pango_cairo_font_map_get_resolution\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_create_context, \"pango_cairo_font_map_create_context\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);

	// pango.PgCairo

	Linker.link(pango_cairo_font_get_scaled_font, \"pango_cairo_font_get_scaled_font\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_set_resolution, \"pango_cairo_context_set_resolution\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_get_resolution, \"pango_cairo_context_get_resolution\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_set_font_options, \"pango_cairo_context_set_font_options\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_get_font_options, \"pango_cairo_context_get_font_options\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_set_shape_renderer, \"pango_cairo_context_set_shape_renderer\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_get_shape_renderer, \"pango_cairo_context_get_shape_renderer\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_create_context, \"pango_cairo_create_context\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_update_context, \"pango_cairo_update_context\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_create_layout, \"pango_cairo_create_layout\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_update_layout, \"pango_cairo_update_layout\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_glyph_string, \"pango_cairo_show_glyph_string\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_glyph_item, \"pango_cairo_show_glyph_item\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_layout_line, \"pango_cairo_show_layout_line\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_layout, \"pango_cairo_show_layout\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_error_underline, \"pango_cairo_show_error_underline\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_glyph_string_path, \"pango_cairo_glyph_string_path\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_layout_line_path, \"pango_cairo_layout_line_path\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_layout_path, \"pango_cairo_layout_path\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_error_underline_path, \"pango_cairo_error_underline_path\", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);

	// pango.PgRenderer

	Linker.link(pango_renderer_draw_layout, \"pango_renderer_draw_layout\", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_layout_line, \"pango_renderer_draw_layout_line\", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_glyphs, \"pango_renderer_draw_glyphs\", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_glyph_item, \"pango_renderer_draw_glyph_item\", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_rectangle, \"pango_renderer_draw_rectangle\", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_error_underline, \"pango_renderer_draw_error_underline\", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_trapezoid, \"pango_renderer_draw_trapezoid\", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_glyph, \"pango_renderer_draw_glyph\", LIBRARY.PANGO);
	Linker.link(pango_renderer_activate, \"pango_renderer_activate\", LIBRARY.PANGO);
	Linker.link(pango_renderer_deactivate, \"pango_renderer_deactivate\", LIBRARY.PANGO);
	Linker.link(pango_renderer_part_changed, \"pango_renderer_part_changed\", LIBRARY.PANGO);
	Linker.link(pango_renderer_set_color, \"pango_renderer_set_color\", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_color, \"pango_renderer_get_color\", LIBRARY.PANGO);
	Linker.link(pango_renderer_set_matrix, \"pango_renderer_set_matrix\", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_matrix, \"pango_renderer_get_matrix\", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_layout, \"pango_renderer_get_layout\", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_layout_line, \"pango_renderer_get_layout_line\", LIBRARY.PANGO);

	// pango.PgCoverage

	Linker.link(pango_coverage_new, \"pango_coverage_new\", LIBRARY.PANGO);
	Linker.link(pango_coverage_ref, \"pango_coverage_ref\", LIBRARY.PANGO);
	Linker.link(pango_coverage_unref, \"pango_coverage_unref\", LIBRARY.PANGO);
	Linker.link(pango_coverage_copy, \"pango_coverage_copy\", LIBRARY.PANGO);
	Linker.link(pango_coverage_get, \"pango_coverage_get\", LIBRARY.PANGO);
	Linker.link(pango_coverage_max, \"pango_coverage_max\", LIBRARY.PANGO);
	Linker.link(pango_coverage_set, \"pango_coverage_set\", LIBRARY.PANGO);
	Linker.link(pango_coverage_to_bytes, \"pango_coverage_to_bytes\", LIBRARY.PANGO);
	Linker.link(pango_coverage_from_bytes, \"pango_coverage_from_bytes\", LIBRARY.PANGO);

	// pango.PgEngine

	Linker.link(script_engine_list, \"script_engine_list\", LIBRARY.PANGO);
	Linker.link(script_engine_init, \"script_engine_init\", LIBRARY.PANGO);
	Linker.link(script_engine_exit, \"script_engine_exit\", LIBRARY.PANGO);
	Linker.link(script_engine_create, \"script_engine_create\", LIBRARY.PANGO);

	// pango.PgEngineLang


	// pango.PgEngineShape


	// pango.PgMiscellaneous

	Linker.link(pango_split_file_list, \"pango_split_file_list\", LIBRARY.PANGO);
	Linker.link(pango_trim_string, \"pango_trim_string\", LIBRARY.PANGO);
	Linker.link(pango_read_line, \"pango_read_line\", LIBRARY.PANGO);
	Linker.link(pango_skip_space, \"pango_skip_space\", LIBRARY.PANGO);
	Linker.link(pango_scan_word, \"pango_scan_word\", LIBRARY.PANGO);
	Linker.link(pango_scan_string, \"pango_scan_string\", LIBRARY.PANGO);
	Linker.link(pango_scan_int, \"pango_scan_int\", LIBRARY.PANGO);
	Linker.link(pango_config_key_get, \"pango_config_key_get\", LIBRARY.PANGO);
	Linker.link(pango_config_key_get_system, \"pango_config_key_get_system\", LIBRARY.PANGO);
	Linker.link(pango_lookup_aliases, \"pango_lookup_aliases\", LIBRARY.PANGO);
	Linker.link(pango_parse_enum, \"pango_parse_enum\", LIBRARY.PANGO);
	Linker.link(pango_parse_style, \"pango_parse_style\", LIBRARY.PANGO);
	Linker.link(pango_parse_variant, \"pango_parse_variant\", LIBRARY.PANGO);
	Linker.link(pango_parse_weight, \"pango_parse_weight\", LIBRARY.PANGO);
	Linker.link(pango_parse_stretch, \"pango_parse_stretch\", LIBRARY.PANGO);
	Linker.link(pango_get_sysconf_subdirectory, \"pango_get_sysconf_subdirectory\", LIBRARY.PANGO);
	Linker.link(pango_get_lib_subdirectory, \"pango_get_lib_subdirectory\", LIBRARY.PANGO);
	Linker.link(pango_log2vis_get_embedding_levels, \"pango_log2vis_get_embedding_levels\", LIBRARY.PANGO);
	Linker.link(pango_is_zero_width, \"pango_is_zero_width\", LIBRARY.PANGO);
	Linker.link(pango_quantize_line_geometry, \"pango_quantize_line_geometry\", LIBRARY.PANGO);

	// pango.PgVersion

	Linker.link(pango_version, \"pango_version\", LIBRARY.PANGO);
	Linker.link(pango_version_string, \"pango_version_string\", LIBRARY.PANGO);
	Linker.link(pango_version_check, \"pango_version_check\", LIBRARY.PANGO);
}");

mixin( gshared ~"extern(C)
{
	// pango.PgContext

	GList* function(PangoContext* context, char* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter) c_pango_itemize;
	GList* function(PangoContext* context, PangoDirection baseDir, char* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter) c_pango_itemize_with_base_dir;
	GList* function(GList* logicalItems) c_pango_reorder_items;
	PangoContext* function() c_pango_context_new;
	void function(PangoContext* context) c_pango_context_changed;
	guint function(PangoContext* context) c_pango_context_get_serial;
	void function(PangoContext* context, PangoFontMap* fontMap) c_pango_context_set_font_map;
	PangoFontMap* function(PangoContext* context) c_pango_context_get_font_map;
	PangoFontDescription* function(PangoContext* context) c_pango_context_get_font_description;
	void function(PangoContext* context, PangoFontDescription* desc) c_pango_context_set_font_description;
	PangoLanguage* function(PangoContext* context) c_pango_context_get_language;
	void function(PangoContext* context, PangoLanguage* language) c_pango_context_set_language;
	PangoDirection function(PangoContext* context) c_pango_context_get_base_dir;
	void function(PangoContext* context, PangoDirection direction) c_pango_context_set_base_dir;
	PangoGravity function(PangoContext* context) c_pango_context_get_base_gravity;
	void function(PangoContext* context, PangoGravity gravity) c_pango_context_set_base_gravity;
	PangoGravity function(PangoContext* context) c_pango_context_get_gravity;
	PangoGravityHint function(PangoContext* context) c_pango_context_get_gravity_hint;
	void function(PangoContext* context, PangoGravityHint hint) c_pango_context_set_gravity_hint;
	PangoMatrix* function(PangoContext* context) c_pango_context_get_matrix;
	void function(PangoContext* context, PangoMatrix* matrix) c_pango_context_set_matrix;
	PangoFont* function(PangoContext* context, PangoFontDescription* desc) c_pango_context_load_font;
	PangoFontset* function(PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) c_pango_context_load_fontset;
	PangoFontMetrics* function(PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) c_pango_context_get_metrics;
	void function(PangoContext* context, PangoFontFamily*** families, int* nFamilies) c_pango_context_list_families;
	void function(gchar* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen) c_pango_break;
	void function(char* text, int length, int level, PangoLanguage* language, PangoLogAttr* logAttrs, int attrsLen) c_pango_get_log_attrs;
	void function(gchar* text, gint length, gint* paragraphDelimiterIndex, gint* nextParagraphStart) c_pango_find_paragraph_boundary;
	void function(gchar* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen) c_pango_default_break;
	void function(gchar* text, gint length, PangoAnalysis* analysis, PangoGlyphString* glyphs) c_pango_shape;
	void function(gchar* itemText, gint itemLength, gchar* paragraphText, gint paragraphLength, PangoAnalysis* analysis, PangoGlyphString* glyphs) c_pango_shape_full;
	PangoDirection function(gunichar ch) c_pango_unichar_direction;
	PangoDirection function(gchar* text, gint length) c_pango_find_base_dir;
	gboolean function(gunichar ch, gunichar* mirroredCh) c_pango_get_mirror_char;
	PangoBidiType function(gunichar ch) c_pango_bidi_type_for_unichar;

	// pango.PgItem


	// pango.PgMatrix

	double function(int i) c_pango_units_to_double;
	int function(double d) c_pango_units_from_double;
	void function(PangoRectangle* inclusive, PangoRectangle* nearest) c_pango_extents_to_pixels;
	PangoMatrix* function(PangoMatrix* matrix) c_pango_matrix_copy;
	void function(PangoMatrix* matrix) c_pango_matrix_free;
	void function(PangoMatrix* matrix, double tx, double ty) c_pango_matrix_translate;
	void function(PangoMatrix* matrix, double scaleX, double scaleY) c_pango_matrix_scale;
	void function(PangoMatrix* matrix, double degrees) c_pango_matrix_rotate;
	void function(PangoMatrix* matrix, PangoMatrix* newMatrix) c_pango_matrix_concat;
	void function(PangoMatrix* matrix, double* x, double* y) c_pango_matrix_transform_point;
	void function(PangoMatrix* matrix, double* dx, double* dy) c_pango_matrix_transform_distance;
	void function(PangoMatrix* matrix, PangoRectangle* rect) c_pango_matrix_transform_rectangle;
	void function(PangoMatrix* matrix, PangoRectangle* rect) c_pango_matrix_transform_pixel_rectangle;
	double function(PangoMatrix* matrix) c_pango_matrix_get_font_scale_factor;

	// pango.PgGlyphString

	PangoGlyphString* function() c_pango_glyph_string_new;
	PangoGlyphString* function(PangoGlyphString* string) c_pango_glyph_string_copy;
	void function(PangoGlyphString* string, gint newLen) c_pango_glyph_string_set_size;
	void function(PangoGlyphString* string) c_pango_glyph_string_free;
	void function(PangoGlyphString* glyphs, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_glyph_string_extents;
	void function(PangoGlyphString* glyphs, int start, int end, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_glyph_string_extents_range;
	int function(PangoGlyphString* glyphs) c_pango_glyph_string_get_width;
	void function(PangoGlyphString* glyphs, char* text, int length, PangoAnalysis* analysis, int index, gboolean trailing, int* xPos) c_pango_glyph_string_index_to_x;
	void function(PangoGlyphString* glyphs, char* text, int length, PangoAnalysis* analysis, int xPos, int* index, int* trailing) c_pango_glyph_string_x_to_index;
	void function(PangoGlyphString* glyphs, char* text, int length, int embeddingLevel, int* logicalWidths) c_pango_glyph_string_get_logical_widths;

	// pango.PgGlyphItem

	PangoGlyphItem* function(PangoGlyphItem* orig) c_pango_glyph_item_copy;
	void function(PangoGlyphItem* glyphItem) c_pango_glyph_item_free;
	PangoGlyphItem* function(PangoGlyphItem* orig, char* text, int splitIndex) c_pango_glyph_item_split;
	GSList* function(PangoGlyphItem* glyphItem, char* text, PangoAttrList* list) c_pango_glyph_item_apply_attrs;
	void function(PangoGlyphItem* glyphItem, char* text, PangoLogAttr* logAttrs, int letterSpacing) c_pango_glyph_item_letter_space;
	void function(PangoGlyphItem* glyphItem, char* text, int* logicalWidths) c_pango_glyph_item_get_logical_widths;

	// pango.PgGlyphItemIter

	PangoGlyphItemIter* function(PangoGlyphItemIter* orig) c_pango_glyph_item_iter_copy;
	void function(PangoGlyphItemIter* iter) c_pango_glyph_item_iter_free;
	gboolean function(PangoGlyphItemIter* iter, PangoGlyphItem* glyphItem, char* text) c_pango_glyph_item_iter_init_start;
	gboolean function(PangoGlyphItemIter* iter, PangoGlyphItem* glyphItem, char* text) c_pango_glyph_item_iter_init_end;
	gboolean function(PangoGlyphItemIter* iter) c_pango_glyph_item_iter_next_cluster;
	gboolean function(PangoGlyphItemIter* iter) c_pango_glyph_item_iter_prev_cluster;

	// pango.PgFont

	PangoEngineShape* function(PangoFont* font, PangoLanguage* language, guint32 ch) c_pango_font_find_shaper;
	PangoFontDescription* function(PangoFont* font) c_pango_font_describe;
	PangoFontDescription* function(PangoFont* font) c_pango_font_describe_with_absolute_size;
	PangoCoverage* function(PangoFont* font, PangoLanguage* language) c_pango_font_get_coverage;
	void function(PangoFont* font, PangoGlyph glyph, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_font_get_glyph_extents;
	PangoFontMetrics* function(PangoFont* font, PangoLanguage* language) c_pango_font_get_metrics;
	PangoFontMap* function(PangoFont* font) c_pango_font_get_font_map;

	// pango.PgFontDescription

	PangoFontDescription* function() c_pango_font_description_new;
	PangoFontDescription* function(PangoFontDescription* desc) c_pango_font_description_copy;
	PangoFontDescription* function(PangoFontDescription* desc) c_pango_font_description_copy_static;
	guint function(PangoFontDescription* desc) c_pango_font_description_hash;
	gboolean function(PangoFontDescription* desc1, PangoFontDescription* desc2) c_pango_font_description_equal;
	void function(PangoFontDescription* desc) c_pango_font_description_free;
	void function(PangoFontDescription* desc, char* family) c_pango_font_description_set_family;
	void function(PangoFontDescription* desc, char* family) c_pango_font_description_set_family_static;
	char* function(PangoFontDescription* desc) c_pango_font_description_get_family;
	void function(PangoFontDescription* desc, PangoStyle style) c_pango_font_description_set_style;
	PangoStyle function(PangoFontDescription* desc) c_pango_font_description_get_style;
	void function(PangoFontDescription* desc, PangoVariant variant) c_pango_font_description_set_variant;
	PangoVariant function(PangoFontDescription* desc) c_pango_font_description_get_variant;
	void function(PangoFontDescription* desc, PangoWeight weight) c_pango_font_description_set_weight;
	PangoWeight function(PangoFontDescription* desc) c_pango_font_description_get_weight;
	void function(PangoFontDescription* desc, PangoStretch stretch) c_pango_font_description_set_stretch;
	PangoStretch function(PangoFontDescription* desc) c_pango_font_description_get_stretch;
	void function(PangoFontDescription* desc, gint size) c_pango_font_description_set_size;
	gint function(PangoFontDescription* desc) c_pango_font_description_get_size;
	void function(PangoFontDescription* desc, double size) c_pango_font_description_set_absolute_size;
	gboolean function(PangoFontDescription* desc) c_pango_font_description_get_size_is_absolute;
	void function(PangoFontDescription* desc, PangoGravity gravity) c_pango_font_description_set_gravity;
	PangoGravity function(PangoFontDescription* desc) c_pango_font_description_get_gravity;
	PangoFontMask function(PangoFontDescription* desc) c_pango_font_description_get_set_fields;
	void function(PangoFontDescription* desc, PangoFontMask toUnset) c_pango_font_description_unset_fields;
	void function(PangoFontDescription* desc, PangoFontDescription* descToMerge, gboolean replaceExisting) c_pango_font_description_merge;
	void function(PangoFontDescription* desc, PangoFontDescription* descToMerge, gboolean replaceExisting) c_pango_font_description_merge_static;
	gboolean function(PangoFontDescription* desc, PangoFontDescription* oldMatch, PangoFontDescription* newMatch) c_pango_font_description_better_match;
	PangoFontDescription* function(char* str) c_pango_font_description_from_string;
	char* function(PangoFontDescription* desc) c_pango_font_description_to_string;
	char* function(PangoFontDescription* desc) c_pango_font_description_to_filename;

	// pango.PgFontMetrics

	PangoFontMetrics* function(PangoFontMetrics* metrics) c_pango_font_metrics_ref;
	void function(PangoFontMetrics* metrics) c_pango_font_metrics_unref;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_ascent;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_descent;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_approximate_char_width;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_approximate_digit_width;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_underline_thickness;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_underline_position;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_strikethrough_thickness;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_strikethrough_position;

	// pango.PgFontFamily

	char* function(PangoFontFamily* family) c_pango_font_family_get_name;
	gboolean function(PangoFontFamily* family) c_pango_font_family_is_monospace;
	void function(PangoFontFamily* family, PangoFontFace*** faces, int* nFaces) c_pango_font_family_list_faces;

	// pango.PgFontFace

	char* function(PangoFontFace* face) c_pango_font_face_get_face_name;
	void function(PangoFontFace* face, int** sizes, int* nSizes) c_pango_font_face_list_sizes;
	PangoFontDescription* function(PangoFontFace* face) c_pango_font_face_describe;
	gboolean function(PangoFontFace* face) c_pango_font_face_is_synthesized;

	// pango.PgFontMap

	PangoContext* function(PangoFontMap* fontmap) c_pango_font_map_create_context;
	PangoFont* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc) c_pango_font_map_load_font;
	PangoFontset* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) c_pango_font_map_load_fontset;
	void function(PangoFontMap* fontmap, PangoFontFamily*** families, int* nFamilies) c_pango_font_map_list_families;
	char* function(PangoFontMap* fontmap) c_pango_font_map_get_shape_engine_type;
	guint function(PangoFontMap* fontmap) c_pango_font_map_get_serial;

	// pango.PgFontset

	PangoFont* function(PangoFontset* fontset, guint wc) c_pango_fontset_get_font;
	PangoFontMetrics* function(PangoFontset* fontset) c_pango_fontset_get_metrics;
	void function(PangoFontset* fontset, PangoFontsetForeachFunc func, void* data) c_pango_fontset_foreach;

	// pango.PgFontsetSimple

	PangoFontsetSimple* function(PangoLanguage* language) c_pango_fontset_simple_new;
	void function(PangoFontsetSimple* fontset, PangoFont* font) c_pango_fontset_simple_append;
	int function(PangoFontsetSimple* fontset) c_pango_fontset_simple_size;

	// pango.PgAttribute

	gboolean function(char* markupText, int length, gunichar accelMarker, PangoAttrList** attrList, char** text, gunichar* accelChar, GError** error) c_pango_parse_markup;
	GMarkupParseContext* function(gunichar accelMarker) c_pango_markup_parser_new;
	gboolean function(GMarkupParseContext* context, PangoAttrList** attrList, char** text, gunichar* accelChar, GError** error) c_pango_markup_parser_finish;
	PangoAttrType function(gchar* name) c_pango_attr_type_register;
	char* function(PangoAttrType type) c_pango_attr_type_get_name;
	void function(PangoAttribute* attr, PangoAttrClass* klass) c_pango_attribute_init;
	PangoAttribute* function(PangoAttribute* attr) c_pango_attribute_copy;
	gboolean function(PangoAttribute* attr1, PangoAttribute* attr2) c_pango_attribute_equal;
	void function(PangoAttribute* attr) c_pango_attribute_destroy;
	PangoAttribute* function(PangoLanguage* language) c_pango_attr_language_new;
	PangoAttribute* function(char* family) c_pango_attr_family_new;
	PangoAttribute* function(PangoStyle style) c_pango_attr_style_new;
	PangoAttribute* function(PangoVariant variant) c_pango_attr_variant_new;
	PangoAttribute* function(PangoStretch stretch) c_pango_attr_stretch_new;
	PangoAttribute* function(PangoWeight weight) c_pango_attr_weight_new;
	PangoAttribute* function(int size) c_pango_attr_size_new;
	PangoAttribute* function(int size) c_pango_attr_size_new_absolute;
	PangoAttribute* function(PangoFontDescription* desc) c_pango_attr_font_desc_new;
	PangoAttribute* function(guint16 red, guint16 green, guint16 blue) c_pango_attr_foreground_new;
	PangoAttribute* function(guint16 red, guint16 green, guint16 blue) c_pango_attr_background_new;
	PangoAttribute* function(gboolean strikethrough) c_pango_attr_strikethrough_new;
	PangoAttribute* function(guint16 red, guint16 green, guint16 blue) c_pango_attr_strikethrough_color_new;
	PangoAttribute* function(PangoUnderline underline) c_pango_attr_underline_new;
	PangoAttribute* function(guint16 red, guint16 green, guint16 blue) c_pango_attr_underline_color_new;
	PangoAttribute* function(PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_attr_shape_new;
	PangoAttribute* function(PangoRectangle* inkRect, PangoRectangle* logicalRect, void* data, PangoAttrDataCopyFunc copyFunc, GDestroyNotify destroyFunc) c_pango_attr_shape_new_with_data;
	PangoAttribute* function(double scaleFactor) c_pango_attr_scale_new;
	PangoAttribute* function(int rise) c_pango_attr_rise_new;
	PangoAttribute* function(int letterSpacing) c_pango_attr_letter_spacing_new;
	PangoAttribute* function(gboolean enableFallback) c_pango_attr_fallback_new;
	PangoAttribute* function(PangoGravity gravity) c_pango_attr_gravity_new;
	PangoAttribute* function(PangoGravityHint hint) c_pango_attr_gravity_hint_new;

	// pango.PgColor

	gboolean function(PangoColor* color, char* spec) c_pango_color_parse;
	PangoColor* function(PangoColor* src) c_pango_color_copy;
	void function(PangoColor* color) c_pango_color_free;
	gchar* function(PangoColor* color) c_pango_color_to_string;

	// pango.PgAttributeList

	PangoAttrList* function() c_pango_attr_list_new;
	PangoAttrList* function(PangoAttrList* list) c_pango_attr_list_ref;
	void function(PangoAttrList* list) c_pango_attr_list_unref;
	PangoAttrList* function(PangoAttrList* list) c_pango_attr_list_copy;
	void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_insert;
	void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_insert_before;
	void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_change;
	void function(PangoAttrList* list, PangoAttrList* other, gint pos, gint len) c_pango_attr_list_splice;
	PangoAttrList* function(PangoAttrList* list, PangoAttrFilterFunc func, void* data) c_pango_attr_list_filter;
	PangoAttrIterator* function(PangoAttrList* list) c_pango_attr_list_get_iterator;

	// pango.PgAttributeIterator

	PangoAttrIterator* function(PangoAttrIterator* iterator) c_pango_attr_iterator_copy;
	gboolean function(PangoAttrIterator* iterator) c_pango_attr_iterator_next;
	void function(PangoAttrIterator* iterator, gint* start, gint* end) c_pango_attr_iterator_range;
	PangoAttribute* function(PangoAttrIterator* iterator, PangoAttrType type) c_pango_attr_iterator_get;
	void function(PangoAttrIterator* iterator, PangoFontDescription* desc, PangoLanguage** language, GSList** extraAttrs) c_pango_attr_iterator_get_font;
	GSList* function(PangoAttrIterator* iterator) c_pango_attr_iterator_get_attrs;
	void function(PangoAttrIterator* iterator) c_pango_attr_iterator_destroy;

	// pango.PgTabArray

	PangoTabArray* function(gint initialSize, gboolean positionsInPixels) c_pango_tab_array_new;
	PangoTabArray* function(gint size, gboolean positionsInPixels, PangoTabAlign firstAlignment, gint firstPosition, ... ) c_pango_tab_array_new_with_positions;
	PangoTabArray* function(PangoTabArray* src) c_pango_tab_array_copy;
	void function(PangoTabArray* tabArray) c_pango_tab_array_free;
	gint function(PangoTabArray* tabArray) c_pango_tab_array_get_size;
	void function(PangoTabArray* tabArray, gint newSize) c_pango_tab_array_resize;
	void function(PangoTabArray* tabArray, gint tabIndex, PangoTabAlign alignment, gint location) c_pango_tab_array_set_tab;
	void function(PangoTabArray* tabArray, gint tabIndex, PangoTabAlign* alignment, gint* location) c_pango_tab_array_get_tab;
	void function(PangoTabArray* tabArray, PangoTabAlign** alignments, gint** locations) c_pango_tab_array_get_tabs;
	gboolean function(PangoTabArray* tabArray) c_pango_tab_array_get_positions_in_pixels;

	// pango.PgLayout

	PangoLayout* function(PangoContext* context) c_pango_layout_new;
	PangoLayout* function(PangoLayout* src) c_pango_layout_copy;
	PangoContext* function(PangoLayout* layout) c_pango_layout_get_context;
	void function(PangoLayout* layout) c_pango_layout_context_changed;
	guint function(PangoLayout* layout) c_pango_layout_get_serial;
	void function(PangoLayout* layout, char* text, int length) c_pango_layout_set_text;
	char* function(PangoLayout* layout) c_pango_layout_get_text;
	gint function(PangoLayout* layout) c_pango_layout_get_character_count;
	void function(PangoLayout* layout, char* markup, int length) c_pango_layout_set_markup;
	void function(PangoLayout* layout, char* markup, int length, gunichar accelMarker, gunichar* accelChar) c_pango_layout_set_markup_with_accel;
	void function(PangoLayout* layout, PangoAttrList* attrs) c_pango_layout_set_attributes;
	PangoAttrList* function(PangoLayout* layout) c_pango_layout_get_attributes;
	void function(PangoLayout* layout, PangoFontDescription* desc) c_pango_layout_set_font_description;
	PangoFontDescription* function(PangoLayout* layout) c_pango_layout_get_font_description;
	void function(PangoLayout* layout, int width) c_pango_layout_set_width;
	int function(PangoLayout* layout) c_pango_layout_get_width;
	void function(PangoLayout* layout, int height) c_pango_layout_set_height;
	int function(PangoLayout* layout) c_pango_layout_get_height;
	void function(PangoLayout* layout, PangoWrapMode wrap) c_pango_layout_set_wrap;
	PangoWrapMode function(PangoLayout* layout) c_pango_layout_get_wrap;
	gboolean function(PangoLayout* layout) c_pango_layout_is_wrapped;
	void function(PangoLayout* layout, PangoEllipsizeMode ellipsize) c_pango_layout_set_ellipsize;
	PangoEllipsizeMode function(PangoLayout* layout) c_pango_layout_get_ellipsize;
	gboolean function(PangoLayout* layout) c_pango_layout_is_ellipsized;
	void function(PangoLayout* layout, int indent) c_pango_layout_set_indent;
	int function(PangoLayout* layout) c_pango_layout_get_indent;
	int function(PangoLayout* layout) c_pango_layout_get_spacing;
	void function(PangoLayout* layout, int spacing) c_pango_layout_set_spacing;
	void function(PangoLayout* layout, gboolean justify) c_pango_layout_set_justify;
	gboolean function(PangoLayout* layout) c_pango_layout_get_justify;
	void function(PangoLayout* layout, gboolean autoDir) c_pango_layout_set_auto_dir;
	gboolean function(PangoLayout* layout) c_pango_layout_get_auto_dir;
	void function(PangoLayout* layout, PangoAlignment alignment) c_pango_layout_set_alignment;
	PangoAlignment function(PangoLayout* layout) c_pango_layout_get_alignment;
	void function(PangoLayout* layout, PangoTabArray* tabs) c_pango_layout_set_tabs;
	PangoTabArray* function(PangoLayout* layout) c_pango_layout_get_tabs;
	void function(PangoLayout* layout, gboolean setting) c_pango_layout_set_single_paragraph_mode;
	gboolean function(PangoLayout* layout) c_pango_layout_get_single_paragraph_mode;
	int function(PangoLayout* layout) c_pango_layout_get_unknown_glyphs_count;
	void function(PangoLayout* layout, PangoLogAttr** attrs, gint* nAttrs) c_pango_layout_get_log_attrs;
	PangoLogAttr* function(PangoLayout* layout, gint* nAttrs) c_pango_layout_get_log_attrs_readonly;
	void function(PangoLayout* layout, int index, PangoRectangle* pos) c_pango_layout_index_to_pos;
	void function(PangoLayout* layout, int index, gboolean trailing, int* line, int* xPos) c_pango_layout_index_to_line_x;
	gboolean function(PangoLayout* layout, int x, int y, int* index, int* trailing) c_pango_layout_xy_to_index;
	void function(PangoLayout* layout, int index, PangoRectangle* strongPos, PangoRectangle* weakPos) c_pango_layout_get_cursor_pos;
	void function(PangoLayout* layout, gboolean strong, int oldIndex, int oldTrailing, int direction, int* newIndex, int* newTrailing) c_pango_layout_move_cursor_visually;
	void function(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_get_extents;
	void function(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_get_pixel_extents;
	void function(PangoLayout* layout, int* width, int* height) c_pango_layout_get_size;
	void function(PangoLayout* layout, int* width, int* height) c_pango_layout_get_pixel_size;
	int function(PangoLayout* layout) c_pango_layout_get_baseline;
	int function(PangoLayout* layout) c_pango_layout_get_line_count;
	PangoLayoutLine* function(PangoLayout* layout, int line) c_pango_layout_get_line;
	PangoLayoutLine* function(PangoLayout* layout, int line) c_pango_layout_get_line_readonly;
	GSList* function(PangoLayout* layout) c_pango_layout_get_lines;
	GSList* function(PangoLayout* layout) c_pango_layout_get_lines_readonly;
	PangoLayoutIter* function(PangoLayout* layout) c_pango_layout_get_iter;

	// pango.PgLayoutIter

	PangoLayoutIter* function(PangoLayoutIter* iter) c_pango_layout_iter_copy;
	void function(PangoLayoutIter* iter) c_pango_layout_iter_free;
	gboolean function(PangoLayoutIter* iter) c_pango_layout_iter_next_run;
	gboolean function(PangoLayoutIter* iter) c_pango_layout_iter_next_char;
	gboolean function(PangoLayoutIter* iter) c_pango_layout_iter_next_cluster;
	gboolean function(PangoLayoutIter* iter) c_pango_layout_iter_next_line;
	gboolean function(PangoLayoutIter* iter) c_pango_layout_iter_at_last_line;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_get_index;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_get_baseline;
	PangoLayoutRun* function(PangoLayoutIter* iter) c_pango_layout_iter_get_run;
	PangoLayoutRun* function(PangoLayoutIter* iter) c_pango_layout_iter_get_run_readonly;
	PangoLayoutLine* function(PangoLayoutIter* iter) c_pango_layout_iter_get_line;
	PangoLayoutLine* function(PangoLayoutIter* iter) c_pango_layout_iter_get_line_readonly;
	PangoLayout* function(PangoLayoutIter* iter) c_pango_layout_iter_get_layout;
	void function(PangoLayoutIter* iter, PangoRectangle* logicalRect) c_pango_layout_iter_get_char_extents;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_cluster_extents;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_run_extents;
	void function(PangoLayoutIter* iter, int* y0_, int* y1_) c_pango_layout_iter_get_line_yrange;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_line_extents;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_layout_extents;

	// pango.PgLayoutLine

	PangoLayoutLine* function(PangoLayoutLine* line) c_pango_layout_line_ref;
	void function(PangoLayoutLine* line) c_pango_layout_line_unref;
	void function(PangoLayoutLine* line, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_line_get_extents;
	void function(PangoLayoutLine* layoutLine, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_line_get_pixel_extents;
	void function(PangoLayoutLine* line, int index, gboolean trailing, int* xPos) c_pango_layout_line_index_to_x;
	gboolean function(PangoLayoutLine* line, int xPos, int* index, int* trailing) c_pango_layout_line_x_to_index;
	void function(PangoLayoutLine* line, int startIndex, int endIndex, int** ranges, int* nRanges) c_pango_layout_line_get_x_ranges;

	// pango.PgScript

	PangoScript function(gunichar ch) c_pango_script_for_unichar;
	PangoLanguage* function(PangoScript script) c_pango_script_get_sample_language;

	// pango.PgScriptIter

	PangoScriptIter* function(char* text, int length) c_pango_script_iter_new;
	void function(PangoScriptIter* iter, char** start, char** end, PangoScript* script) c_pango_script_iter_get_range;
	gboolean function(PangoScriptIter* iter) c_pango_script_iter_next;
	void function(PangoScriptIter* iter) c_pango_script_iter_free;

	// pango.PgLanguage

	PangoLanguage* function(char* language) c_pango_language_from_string;
	char* function(PangoLanguage* language) c_pango_language_to_string;
	gboolean function(PangoLanguage* language, char* rangeList) c_pango_language_matches;
	gboolean function(PangoLanguage* language, PangoScript script) c_pango_language_includes_script;
	PangoScript* function(PangoLanguage* language, int* numScripts) c_pango_language_get_scripts;
	PangoLanguage* function() c_pango_language_get_default;
	char* function(PangoLanguage* language) c_pango_language_get_sample_string;

	// pango.PgVertical

	PangoGravity function(PangoMatrix* matrix) c_pango_gravity_get_for_matrix;
	PangoGravity function(PangoScript script, PangoGravity baseGravity, PangoGravityHint hint) c_pango_gravity_get_for_script;
	PangoGravity function(PangoScript script, gboolean wide, PangoGravity baseGravity, PangoGravityHint hint) c_pango_gravity_get_for_script_and_width;
	double function(PangoGravity gravity) c_pango_gravity_to_rotation;

	// pango.PgCairoFontMap

	PangoFontMap* function() c_pango_cairo_font_map_get_default;
	void function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_set_default;
	PangoFontMap* function() c_pango_cairo_font_map_new;
	PangoFontMap* function(cairo_font_type_t fonttype) c_pango_cairo_font_map_new_for_font_type;
	cairo_font_type_t function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_get_font_type;
	void function(PangoCairoFontMap* fontmap, double dpi) c_pango_cairo_font_map_set_resolution;
	double function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_get_resolution;
	PangoContext* function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_create_context;

	// pango.PgCairo

	cairo_scaled_font_t* function(PangoCairoFont* font) c_pango_cairo_font_get_scaled_font;
	void function(PangoContext* context, double dpi) c_pango_cairo_context_set_resolution;
	double function(PangoContext* context) c_pango_cairo_context_get_resolution;
	void function(PangoContext* context, cairo_font_options_t* options) c_pango_cairo_context_set_font_options;
	cairo_font_options_t* function(PangoContext* context) c_pango_cairo_context_get_font_options;
	void function(PangoContext* context, PangoCairoShapeRendererFunc func, void* data, GDestroyNotify dnotify) c_pango_cairo_context_set_shape_renderer;
	PangoCairoShapeRendererFunc function(PangoContext* context, void** data) c_pango_cairo_context_get_shape_renderer;
	PangoContext* function(cairo_t* cr) c_pango_cairo_create_context;
	void function(cairo_t* cr, PangoContext* context) c_pango_cairo_update_context;
	PangoLayout* function(cairo_t* cr) c_pango_cairo_create_layout;
	void function(cairo_t* cr, PangoLayout* layout) c_pango_cairo_update_layout;
	void function(cairo_t* cr, PangoFont* font, PangoGlyphString* glyphs) c_pango_cairo_show_glyph_string;
	void function(cairo_t* cr, char* text, PangoGlyphItem* glyphItem) c_pango_cairo_show_glyph_item;
	void function(cairo_t* cr, PangoLayoutLine* line) c_pango_cairo_show_layout_line;
	void function(cairo_t* cr, PangoLayout* layout) c_pango_cairo_show_layout;
	void function(cairo_t* cr, double x, double y, double width, double height) c_pango_cairo_show_error_underline;
	void function(cairo_t* cr, PangoFont* font, PangoGlyphString* glyphs) c_pango_cairo_glyph_string_path;
	void function(cairo_t* cr, PangoLayoutLine* line) c_pango_cairo_layout_line_path;
	void function(cairo_t* cr, PangoLayout* layout) c_pango_cairo_layout_path;
	void function(cairo_t* cr, double x, double y, double width, double height) c_pango_cairo_error_underline_path;

	// pango.PgRenderer

	void function(PangoRenderer* renderer, PangoLayout* layout, int x, int y) c_pango_renderer_draw_layout;
	void function(PangoRenderer* renderer, PangoLayoutLine* line, int x, int y) c_pango_renderer_draw_layout_line;
	void function(PangoRenderer* renderer, PangoFont* font, PangoGlyphString* glyphs, int x, int y) c_pango_renderer_draw_glyphs;
	void function(PangoRenderer* renderer, char* text, PangoGlyphItem* glyphItem, int x, int y) c_pango_renderer_draw_glyph_item;
	void function(PangoRenderer* renderer, PangoRenderPart part, int x, int y, int width, int height) c_pango_renderer_draw_rectangle;
	void function(PangoRenderer* renderer, int x, int y, int width, int height) c_pango_renderer_draw_error_underline;
	void function(PangoRenderer* renderer, PangoRenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22) c_pango_renderer_draw_trapezoid;
	void function(PangoRenderer* renderer, PangoFont* font, PangoGlyph glyph, double x, double y) c_pango_renderer_draw_glyph;
	void function(PangoRenderer* renderer) c_pango_renderer_activate;
	void function(PangoRenderer* renderer) c_pango_renderer_deactivate;
	void function(PangoRenderer* renderer, PangoRenderPart part) c_pango_renderer_part_changed;
	void function(PangoRenderer* renderer, PangoRenderPart part, PangoColor* color) c_pango_renderer_set_color;
	PangoColor* function(PangoRenderer* renderer, PangoRenderPart part) c_pango_renderer_get_color;
	void function(PangoRenderer* renderer, PangoMatrix* matrix) c_pango_renderer_set_matrix;
	PangoMatrix* function(PangoRenderer* renderer) c_pango_renderer_get_matrix;
	PangoLayout* function(PangoRenderer* renderer) c_pango_renderer_get_layout;
	PangoLayoutLine* function(PangoRenderer* renderer) c_pango_renderer_get_layout_line;

	// pango.PgCoverage

	PangoCoverage* function() c_pango_coverage_new;
	PangoCoverage* function(PangoCoverage* coverage) c_pango_coverage_ref;
	void function(PangoCoverage* coverage) c_pango_coverage_unref;
	PangoCoverage* function(PangoCoverage* coverage) c_pango_coverage_copy;
	PangoCoverageLevel function(PangoCoverage* coverage, int index) c_pango_coverage_get;
	void function(PangoCoverage* coverage, PangoCoverage* other) c_pango_coverage_max;
	void function(PangoCoverage* coverage, int index, PangoCoverageLevel level) c_pango_coverage_set;
	void function(PangoCoverage* coverage, guchar** bytes, int* nBytes) c_pango_coverage_to_bytes;
	PangoCoverage* function(guchar* bytes, int nBytes) c_pango_coverage_from_bytes;

	// pango.PgEngine

	void function(PangoEngineInfo** engines, int* nEngines) c_script_engine_list;
	void function(GTypeModule* modul) c_script_engine_init;
	void function() c_script_engine_exit;
	PangoEngine* function(char* id) c_script_engine_create;

	// pango.PgEngineLang


	// pango.PgEngineShape


	// pango.PgMiscellaneous

	char** function(char* str) c_pango_split_file_list;
	char* function(char* str) c_pango_trim_string;
	gint function(void* stream, GString* str) c_pango_read_line;
	gboolean function(char** pos) c_pango_skip_space;
	gboolean function(char** pos, GString* f_out) c_pango_scan_word;
	gboolean function(char** pos, GString* f_out) c_pango_scan_string;
	gboolean function(char** pos, int* f_out) c_pango_scan_int;
	char* function(char* key) c_pango_config_key_get;
	char* function(char* key) c_pango_config_key_get_system;
	void function(char* fontname, char*** families, int* nFamilies) c_pango_lookup_aliases;
	gboolean function(GType type, char* str, int* value, gboolean warn, char** possibleValues) c_pango_parse_enum;
	gboolean function(char* str, PangoStyle* style, gboolean warn) c_pango_parse_style;
	gboolean function(char* str, PangoVariant* variant, gboolean warn) c_pango_parse_variant;
	gboolean function(char* str, PangoWeight* weight, gboolean warn) c_pango_parse_weight;
	gboolean function(char* str, PangoStretch* stretch, gboolean warn) c_pango_parse_stretch;
	char* function() c_pango_get_sysconf_subdirectory;
	char* function() c_pango_get_lib_subdirectory;
	guint8* function(gchar* text, int length, PangoDirection* pbaseDir) c_pango_log2vis_get_embedding_levels;
	gboolean function(gunichar ch) c_pango_is_zero_width;
	void function(int* thickness, int* position) c_pango_quantize_line_geometry;

	// pango.PgVersion

	int function() c_pango_version;
	char* function() c_pango_version_string;
	char* function(int requiredMajor, int requiredMinor, int requiredMicro) c_pango_version_check;
}");

// pango.PgContext

alias c_pango_itemize  pango_itemize;
alias c_pango_itemize_with_base_dir  pango_itemize_with_base_dir;
alias c_pango_reorder_items  pango_reorder_items;
alias c_pango_context_new  pango_context_new;
alias c_pango_context_changed  pango_context_changed;
alias c_pango_context_get_serial  pango_context_get_serial;
alias c_pango_context_set_font_map  pango_context_set_font_map;
alias c_pango_context_get_font_map  pango_context_get_font_map;
alias c_pango_context_get_font_description  pango_context_get_font_description;
alias c_pango_context_set_font_description  pango_context_set_font_description;
alias c_pango_context_get_language  pango_context_get_language;
alias c_pango_context_set_language  pango_context_set_language;
alias c_pango_context_get_base_dir  pango_context_get_base_dir;
alias c_pango_context_set_base_dir  pango_context_set_base_dir;
alias c_pango_context_get_base_gravity  pango_context_get_base_gravity;
alias c_pango_context_set_base_gravity  pango_context_set_base_gravity;
alias c_pango_context_get_gravity  pango_context_get_gravity;
alias c_pango_context_get_gravity_hint  pango_context_get_gravity_hint;
alias c_pango_context_set_gravity_hint  pango_context_set_gravity_hint;
alias c_pango_context_get_matrix  pango_context_get_matrix;
alias c_pango_context_set_matrix  pango_context_set_matrix;
alias c_pango_context_load_font  pango_context_load_font;
alias c_pango_context_load_fontset  pango_context_load_fontset;
alias c_pango_context_get_metrics  pango_context_get_metrics;
alias c_pango_context_list_families  pango_context_list_families;
alias c_pango_break  pango_break;
alias c_pango_get_log_attrs  pango_get_log_attrs;
alias c_pango_find_paragraph_boundary  pango_find_paragraph_boundary;
alias c_pango_default_break  pango_default_break;
alias c_pango_shape  pango_shape;
alias c_pango_shape_full  pango_shape_full;
alias c_pango_unichar_direction  pango_unichar_direction;
alias c_pango_find_base_dir  pango_find_base_dir;
alias c_pango_get_mirror_char  pango_get_mirror_char;
alias c_pango_bidi_type_for_unichar  pango_bidi_type_for_unichar;

// pango.PgItem


// pango.PgMatrix

alias c_pango_units_to_double  pango_units_to_double;
alias c_pango_units_from_double  pango_units_from_double;
alias c_pango_extents_to_pixels  pango_extents_to_pixels;
alias c_pango_matrix_copy  pango_matrix_copy;
alias c_pango_matrix_free  pango_matrix_free;
alias c_pango_matrix_translate  pango_matrix_translate;
alias c_pango_matrix_scale  pango_matrix_scale;
alias c_pango_matrix_rotate  pango_matrix_rotate;
alias c_pango_matrix_concat  pango_matrix_concat;
alias c_pango_matrix_transform_point  pango_matrix_transform_point;
alias c_pango_matrix_transform_distance  pango_matrix_transform_distance;
alias c_pango_matrix_transform_rectangle  pango_matrix_transform_rectangle;
alias c_pango_matrix_transform_pixel_rectangle  pango_matrix_transform_pixel_rectangle;
alias c_pango_matrix_get_font_scale_factor  pango_matrix_get_font_scale_factor;

// pango.PgGlyphString

alias c_pango_glyph_string_new  pango_glyph_string_new;
alias c_pango_glyph_string_copy  pango_glyph_string_copy;
alias c_pango_glyph_string_set_size  pango_glyph_string_set_size;
alias c_pango_glyph_string_free  pango_glyph_string_free;
alias c_pango_glyph_string_extents  pango_glyph_string_extents;
alias c_pango_glyph_string_extents_range  pango_glyph_string_extents_range;
alias c_pango_glyph_string_get_width  pango_glyph_string_get_width;
alias c_pango_glyph_string_index_to_x  pango_glyph_string_index_to_x;
alias c_pango_glyph_string_x_to_index  pango_glyph_string_x_to_index;
alias c_pango_glyph_string_get_logical_widths  pango_glyph_string_get_logical_widths;

// pango.PgGlyphItem

alias c_pango_glyph_item_copy  pango_glyph_item_copy;
alias c_pango_glyph_item_free  pango_glyph_item_free;
alias c_pango_glyph_item_split  pango_glyph_item_split;
alias c_pango_glyph_item_apply_attrs  pango_glyph_item_apply_attrs;
alias c_pango_glyph_item_letter_space  pango_glyph_item_letter_space;
alias c_pango_glyph_item_get_logical_widths  pango_glyph_item_get_logical_widths;

// pango.PgGlyphItemIter

alias c_pango_glyph_item_iter_copy  pango_glyph_item_iter_copy;
alias c_pango_glyph_item_iter_free  pango_glyph_item_iter_free;
alias c_pango_glyph_item_iter_init_start  pango_glyph_item_iter_init_start;
alias c_pango_glyph_item_iter_init_end  pango_glyph_item_iter_init_end;
alias c_pango_glyph_item_iter_next_cluster  pango_glyph_item_iter_next_cluster;
alias c_pango_glyph_item_iter_prev_cluster  pango_glyph_item_iter_prev_cluster;

// pango.PgFont

alias c_pango_font_find_shaper  pango_font_find_shaper;
alias c_pango_font_describe  pango_font_describe;
alias c_pango_font_describe_with_absolute_size  pango_font_describe_with_absolute_size;
alias c_pango_font_get_coverage  pango_font_get_coverage;
alias c_pango_font_get_glyph_extents  pango_font_get_glyph_extents;
alias c_pango_font_get_metrics  pango_font_get_metrics;
alias c_pango_font_get_font_map  pango_font_get_font_map;

// pango.PgFontDescription

alias c_pango_font_description_new  pango_font_description_new;
alias c_pango_font_description_copy  pango_font_description_copy;
alias c_pango_font_description_copy_static  pango_font_description_copy_static;
alias c_pango_font_description_hash  pango_font_description_hash;
alias c_pango_font_description_equal  pango_font_description_equal;
alias c_pango_font_description_free  pango_font_description_free;
alias c_pango_font_description_set_family  pango_font_description_set_family;
alias c_pango_font_description_set_family_static  pango_font_description_set_family_static;
alias c_pango_font_description_get_family  pango_font_description_get_family;
alias c_pango_font_description_set_style  pango_font_description_set_style;
alias c_pango_font_description_get_style  pango_font_description_get_style;
alias c_pango_font_description_set_variant  pango_font_description_set_variant;
alias c_pango_font_description_get_variant  pango_font_description_get_variant;
alias c_pango_font_description_set_weight  pango_font_description_set_weight;
alias c_pango_font_description_get_weight  pango_font_description_get_weight;
alias c_pango_font_description_set_stretch  pango_font_description_set_stretch;
alias c_pango_font_description_get_stretch  pango_font_description_get_stretch;
alias c_pango_font_description_set_size  pango_font_description_set_size;
alias c_pango_font_description_get_size  pango_font_description_get_size;
alias c_pango_font_description_set_absolute_size  pango_font_description_set_absolute_size;
alias c_pango_font_description_get_size_is_absolute  pango_font_description_get_size_is_absolute;
alias c_pango_font_description_set_gravity  pango_font_description_set_gravity;
alias c_pango_font_description_get_gravity  pango_font_description_get_gravity;
alias c_pango_font_description_get_set_fields  pango_font_description_get_set_fields;
alias c_pango_font_description_unset_fields  pango_font_description_unset_fields;
alias c_pango_font_description_merge  pango_font_description_merge;
alias c_pango_font_description_merge_static  pango_font_description_merge_static;
alias c_pango_font_description_better_match  pango_font_description_better_match;
alias c_pango_font_description_from_string  pango_font_description_from_string;
alias c_pango_font_description_to_string  pango_font_description_to_string;
alias c_pango_font_description_to_filename  pango_font_description_to_filename;

// pango.PgFontMetrics

alias c_pango_font_metrics_ref  pango_font_metrics_ref;
alias c_pango_font_metrics_unref  pango_font_metrics_unref;
alias c_pango_font_metrics_get_ascent  pango_font_metrics_get_ascent;
alias c_pango_font_metrics_get_descent  pango_font_metrics_get_descent;
alias c_pango_font_metrics_get_approximate_char_width  pango_font_metrics_get_approximate_char_width;
alias c_pango_font_metrics_get_approximate_digit_width  pango_font_metrics_get_approximate_digit_width;
alias c_pango_font_metrics_get_underline_thickness  pango_font_metrics_get_underline_thickness;
alias c_pango_font_metrics_get_underline_position  pango_font_metrics_get_underline_position;
alias c_pango_font_metrics_get_strikethrough_thickness  pango_font_metrics_get_strikethrough_thickness;
alias c_pango_font_metrics_get_strikethrough_position  pango_font_metrics_get_strikethrough_position;

// pango.PgFontFamily

alias c_pango_font_family_get_name  pango_font_family_get_name;
alias c_pango_font_family_is_monospace  pango_font_family_is_monospace;
alias c_pango_font_family_list_faces  pango_font_family_list_faces;

// pango.PgFontFace

alias c_pango_font_face_get_face_name  pango_font_face_get_face_name;
alias c_pango_font_face_list_sizes  pango_font_face_list_sizes;
alias c_pango_font_face_describe  pango_font_face_describe;
alias c_pango_font_face_is_synthesized  pango_font_face_is_synthesized;

// pango.PgFontMap

alias c_pango_font_map_create_context  pango_font_map_create_context;
alias c_pango_font_map_load_font  pango_font_map_load_font;
alias c_pango_font_map_load_fontset  pango_font_map_load_fontset;
alias c_pango_font_map_list_families  pango_font_map_list_families;
alias c_pango_font_map_get_shape_engine_type  pango_font_map_get_shape_engine_type;
alias c_pango_font_map_get_serial  pango_font_map_get_serial;

// pango.PgFontset

alias c_pango_fontset_get_font  pango_fontset_get_font;
alias c_pango_fontset_get_metrics  pango_fontset_get_metrics;
alias c_pango_fontset_foreach  pango_fontset_foreach;

// pango.PgFontsetSimple

alias c_pango_fontset_simple_new  pango_fontset_simple_new;
alias c_pango_fontset_simple_append  pango_fontset_simple_append;
alias c_pango_fontset_simple_size  pango_fontset_simple_size;

// pango.PgAttribute

alias c_pango_parse_markup  pango_parse_markup;
alias c_pango_markup_parser_new  pango_markup_parser_new;
alias c_pango_markup_parser_finish  pango_markup_parser_finish;
alias c_pango_attr_type_register  pango_attr_type_register;
alias c_pango_attr_type_get_name  pango_attr_type_get_name;
alias c_pango_attribute_init  pango_attribute_init;
alias c_pango_attribute_copy  pango_attribute_copy;
alias c_pango_attribute_equal  pango_attribute_equal;
alias c_pango_attribute_destroy  pango_attribute_destroy;
alias c_pango_attr_language_new  pango_attr_language_new;
alias c_pango_attr_family_new  pango_attr_family_new;
alias c_pango_attr_style_new  pango_attr_style_new;
alias c_pango_attr_variant_new  pango_attr_variant_new;
alias c_pango_attr_stretch_new  pango_attr_stretch_new;
alias c_pango_attr_weight_new  pango_attr_weight_new;
alias c_pango_attr_size_new  pango_attr_size_new;
alias c_pango_attr_size_new_absolute  pango_attr_size_new_absolute;
alias c_pango_attr_font_desc_new  pango_attr_font_desc_new;
alias c_pango_attr_foreground_new  pango_attr_foreground_new;
alias c_pango_attr_background_new  pango_attr_background_new;
alias c_pango_attr_strikethrough_new  pango_attr_strikethrough_new;
alias c_pango_attr_strikethrough_color_new  pango_attr_strikethrough_color_new;
alias c_pango_attr_underline_new  pango_attr_underline_new;
alias c_pango_attr_underline_color_new  pango_attr_underline_color_new;
alias c_pango_attr_shape_new  pango_attr_shape_new;
alias c_pango_attr_shape_new_with_data  pango_attr_shape_new_with_data;
alias c_pango_attr_scale_new  pango_attr_scale_new;
alias c_pango_attr_rise_new  pango_attr_rise_new;
alias c_pango_attr_letter_spacing_new  pango_attr_letter_spacing_new;
alias c_pango_attr_fallback_new  pango_attr_fallback_new;
alias c_pango_attr_gravity_new  pango_attr_gravity_new;
alias c_pango_attr_gravity_hint_new  pango_attr_gravity_hint_new;

// pango.PgColor

alias c_pango_color_parse  pango_color_parse;
alias c_pango_color_copy  pango_color_copy;
alias c_pango_color_free  pango_color_free;
alias c_pango_color_to_string  pango_color_to_string;

// pango.PgAttributeList

alias c_pango_attr_list_new  pango_attr_list_new;
alias c_pango_attr_list_ref  pango_attr_list_ref;
alias c_pango_attr_list_unref  pango_attr_list_unref;
alias c_pango_attr_list_copy  pango_attr_list_copy;
alias c_pango_attr_list_insert  pango_attr_list_insert;
alias c_pango_attr_list_insert_before  pango_attr_list_insert_before;
alias c_pango_attr_list_change  pango_attr_list_change;
alias c_pango_attr_list_splice  pango_attr_list_splice;
alias c_pango_attr_list_filter  pango_attr_list_filter;
alias c_pango_attr_list_get_iterator  pango_attr_list_get_iterator;

// pango.PgAttributeIterator

alias c_pango_attr_iterator_copy  pango_attr_iterator_copy;
alias c_pango_attr_iterator_next  pango_attr_iterator_next;
alias c_pango_attr_iterator_range  pango_attr_iterator_range;
alias c_pango_attr_iterator_get  pango_attr_iterator_get;
alias c_pango_attr_iterator_get_font  pango_attr_iterator_get_font;
alias c_pango_attr_iterator_get_attrs  pango_attr_iterator_get_attrs;
alias c_pango_attr_iterator_destroy  pango_attr_iterator_destroy;

// pango.PgTabArray

alias c_pango_tab_array_new  pango_tab_array_new;
alias c_pango_tab_array_new_with_positions  pango_tab_array_new_with_positions;
alias c_pango_tab_array_copy  pango_tab_array_copy;
alias c_pango_tab_array_free  pango_tab_array_free;
alias c_pango_tab_array_get_size  pango_tab_array_get_size;
alias c_pango_tab_array_resize  pango_tab_array_resize;
alias c_pango_tab_array_set_tab  pango_tab_array_set_tab;
alias c_pango_tab_array_get_tab  pango_tab_array_get_tab;
alias c_pango_tab_array_get_tabs  pango_tab_array_get_tabs;
alias c_pango_tab_array_get_positions_in_pixels  pango_tab_array_get_positions_in_pixels;

// pango.PgLayout

alias c_pango_layout_new  pango_layout_new;
alias c_pango_layout_copy  pango_layout_copy;
alias c_pango_layout_get_context  pango_layout_get_context;
alias c_pango_layout_context_changed  pango_layout_context_changed;
alias c_pango_layout_get_serial  pango_layout_get_serial;
alias c_pango_layout_set_text  pango_layout_set_text;
alias c_pango_layout_get_text  pango_layout_get_text;
alias c_pango_layout_get_character_count  pango_layout_get_character_count;
alias c_pango_layout_set_markup  pango_layout_set_markup;
alias c_pango_layout_set_markup_with_accel  pango_layout_set_markup_with_accel;
alias c_pango_layout_set_attributes  pango_layout_set_attributes;
alias c_pango_layout_get_attributes  pango_layout_get_attributes;
alias c_pango_layout_set_font_description  pango_layout_set_font_description;
alias c_pango_layout_get_font_description  pango_layout_get_font_description;
alias c_pango_layout_set_width  pango_layout_set_width;
alias c_pango_layout_get_width  pango_layout_get_width;
alias c_pango_layout_set_height  pango_layout_set_height;
alias c_pango_layout_get_height  pango_layout_get_height;
alias c_pango_layout_set_wrap  pango_layout_set_wrap;
alias c_pango_layout_get_wrap  pango_layout_get_wrap;
alias c_pango_layout_is_wrapped  pango_layout_is_wrapped;
alias c_pango_layout_set_ellipsize  pango_layout_set_ellipsize;
alias c_pango_layout_get_ellipsize  pango_layout_get_ellipsize;
alias c_pango_layout_is_ellipsized  pango_layout_is_ellipsized;
alias c_pango_layout_set_indent  pango_layout_set_indent;
alias c_pango_layout_get_indent  pango_layout_get_indent;
alias c_pango_layout_get_spacing  pango_layout_get_spacing;
alias c_pango_layout_set_spacing  pango_layout_set_spacing;
alias c_pango_layout_set_justify  pango_layout_set_justify;
alias c_pango_layout_get_justify  pango_layout_get_justify;
alias c_pango_layout_set_auto_dir  pango_layout_set_auto_dir;
alias c_pango_layout_get_auto_dir  pango_layout_get_auto_dir;
alias c_pango_layout_set_alignment  pango_layout_set_alignment;
alias c_pango_layout_get_alignment  pango_layout_get_alignment;
alias c_pango_layout_set_tabs  pango_layout_set_tabs;
alias c_pango_layout_get_tabs  pango_layout_get_tabs;
alias c_pango_layout_set_single_paragraph_mode  pango_layout_set_single_paragraph_mode;
alias c_pango_layout_get_single_paragraph_mode  pango_layout_get_single_paragraph_mode;
alias c_pango_layout_get_unknown_glyphs_count  pango_layout_get_unknown_glyphs_count;
alias c_pango_layout_get_log_attrs  pango_layout_get_log_attrs;
alias c_pango_layout_get_log_attrs_readonly  pango_layout_get_log_attrs_readonly;
alias c_pango_layout_index_to_pos  pango_layout_index_to_pos;
alias c_pango_layout_index_to_line_x  pango_layout_index_to_line_x;
alias c_pango_layout_xy_to_index  pango_layout_xy_to_index;
alias c_pango_layout_get_cursor_pos  pango_layout_get_cursor_pos;
alias c_pango_layout_move_cursor_visually  pango_layout_move_cursor_visually;
alias c_pango_layout_get_extents  pango_layout_get_extents;
alias c_pango_layout_get_pixel_extents  pango_layout_get_pixel_extents;
alias c_pango_layout_get_size  pango_layout_get_size;
alias c_pango_layout_get_pixel_size  pango_layout_get_pixel_size;
alias c_pango_layout_get_baseline  pango_layout_get_baseline;
alias c_pango_layout_get_line_count  pango_layout_get_line_count;
alias c_pango_layout_get_line  pango_layout_get_line;
alias c_pango_layout_get_line_readonly  pango_layout_get_line_readonly;
alias c_pango_layout_get_lines  pango_layout_get_lines;
alias c_pango_layout_get_lines_readonly  pango_layout_get_lines_readonly;
alias c_pango_layout_get_iter  pango_layout_get_iter;

// pango.PgLayoutIter

alias c_pango_layout_iter_copy  pango_layout_iter_copy;
alias c_pango_layout_iter_free  pango_layout_iter_free;
alias c_pango_layout_iter_next_run  pango_layout_iter_next_run;
alias c_pango_layout_iter_next_char  pango_layout_iter_next_char;
alias c_pango_layout_iter_next_cluster  pango_layout_iter_next_cluster;
alias c_pango_layout_iter_next_line  pango_layout_iter_next_line;
alias c_pango_layout_iter_at_last_line  pango_layout_iter_at_last_line;
alias c_pango_layout_iter_get_index  pango_layout_iter_get_index;
alias c_pango_layout_iter_get_baseline  pango_layout_iter_get_baseline;
alias c_pango_layout_iter_get_run  pango_layout_iter_get_run;
alias c_pango_layout_iter_get_run_readonly  pango_layout_iter_get_run_readonly;
alias c_pango_layout_iter_get_line  pango_layout_iter_get_line;
alias c_pango_layout_iter_get_line_readonly  pango_layout_iter_get_line_readonly;
alias c_pango_layout_iter_get_layout  pango_layout_iter_get_layout;
alias c_pango_layout_iter_get_char_extents  pango_layout_iter_get_char_extents;
alias c_pango_layout_iter_get_cluster_extents  pango_layout_iter_get_cluster_extents;
alias c_pango_layout_iter_get_run_extents  pango_layout_iter_get_run_extents;
alias c_pango_layout_iter_get_line_yrange  pango_layout_iter_get_line_yrange;
alias c_pango_layout_iter_get_line_extents  pango_layout_iter_get_line_extents;
alias c_pango_layout_iter_get_layout_extents  pango_layout_iter_get_layout_extents;

// pango.PgLayoutLine

alias c_pango_layout_line_ref  pango_layout_line_ref;
alias c_pango_layout_line_unref  pango_layout_line_unref;
alias c_pango_layout_line_get_extents  pango_layout_line_get_extents;
alias c_pango_layout_line_get_pixel_extents  pango_layout_line_get_pixel_extents;
alias c_pango_layout_line_index_to_x  pango_layout_line_index_to_x;
alias c_pango_layout_line_x_to_index  pango_layout_line_x_to_index;
alias c_pango_layout_line_get_x_ranges  pango_layout_line_get_x_ranges;

// pango.PgScript

alias c_pango_script_for_unichar  pango_script_for_unichar;
alias c_pango_script_get_sample_language  pango_script_get_sample_language;

// pango.PgScriptIter

alias c_pango_script_iter_new  pango_script_iter_new;
alias c_pango_script_iter_get_range  pango_script_iter_get_range;
alias c_pango_script_iter_next  pango_script_iter_next;
alias c_pango_script_iter_free  pango_script_iter_free;

// pango.PgLanguage

alias c_pango_language_from_string  pango_language_from_string;
alias c_pango_language_to_string  pango_language_to_string;
alias c_pango_language_matches  pango_language_matches;
alias c_pango_language_includes_script  pango_language_includes_script;
alias c_pango_language_get_scripts  pango_language_get_scripts;
alias c_pango_language_get_default  pango_language_get_default;
alias c_pango_language_get_sample_string  pango_language_get_sample_string;

// pango.PgVertical

alias c_pango_gravity_get_for_matrix  pango_gravity_get_for_matrix;
alias c_pango_gravity_get_for_script  pango_gravity_get_for_script;
alias c_pango_gravity_get_for_script_and_width  pango_gravity_get_for_script_and_width;
alias c_pango_gravity_to_rotation  pango_gravity_to_rotation;

// pango.PgCairoFontMap

alias c_pango_cairo_font_map_get_default  pango_cairo_font_map_get_default;
alias c_pango_cairo_font_map_set_default  pango_cairo_font_map_set_default;
alias c_pango_cairo_font_map_new  pango_cairo_font_map_new;
alias c_pango_cairo_font_map_new_for_font_type  pango_cairo_font_map_new_for_font_type;
alias c_pango_cairo_font_map_get_font_type  pango_cairo_font_map_get_font_type;
alias c_pango_cairo_font_map_set_resolution  pango_cairo_font_map_set_resolution;
alias c_pango_cairo_font_map_get_resolution  pango_cairo_font_map_get_resolution;
alias c_pango_cairo_font_map_create_context  pango_cairo_font_map_create_context;

// pango.PgCairo

alias c_pango_cairo_font_get_scaled_font  pango_cairo_font_get_scaled_font;
alias c_pango_cairo_context_set_resolution  pango_cairo_context_set_resolution;
alias c_pango_cairo_context_get_resolution  pango_cairo_context_get_resolution;
alias c_pango_cairo_context_set_font_options  pango_cairo_context_set_font_options;
alias c_pango_cairo_context_get_font_options  pango_cairo_context_get_font_options;
alias c_pango_cairo_context_set_shape_renderer  pango_cairo_context_set_shape_renderer;
alias c_pango_cairo_context_get_shape_renderer  pango_cairo_context_get_shape_renderer;
alias c_pango_cairo_create_context  pango_cairo_create_context;
alias c_pango_cairo_update_context  pango_cairo_update_context;
alias c_pango_cairo_create_layout  pango_cairo_create_layout;
alias c_pango_cairo_update_layout  pango_cairo_update_layout;
alias c_pango_cairo_show_glyph_string  pango_cairo_show_glyph_string;
alias c_pango_cairo_show_glyph_item  pango_cairo_show_glyph_item;
alias c_pango_cairo_show_layout_line  pango_cairo_show_layout_line;
alias c_pango_cairo_show_layout  pango_cairo_show_layout;
alias c_pango_cairo_show_error_underline  pango_cairo_show_error_underline;
alias c_pango_cairo_glyph_string_path  pango_cairo_glyph_string_path;
alias c_pango_cairo_layout_line_path  pango_cairo_layout_line_path;
alias c_pango_cairo_layout_path  pango_cairo_layout_path;
alias c_pango_cairo_error_underline_path  pango_cairo_error_underline_path;

// pango.PgRenderer

alias c_pango_renderer_draw_layout  pango_renderer_draw_layout;
alias c_pango_renderer_draw_layout_line  pango_renderer_draw_layout_line;
alias c_pango_renderer_draw_glyphs  pango_renderer_draw_glyphs;
alias c_pango_renderer_draw_glyph_item  pango_renderer_draw_glyph_item;
alias c_pango_renderer_draw_rectangle  pango_renderer_draw_rectangle;
alias c_pango_renderer_draw_error_underline  pango_renderer_draw_error_underline;
alias c_pango_renderer_draw_trapezoid  pango_renderer_draw_trapezoid;
alias c_pango_renderer_draw_glyph  pango_renderer_draw_glyph;
alias c_pango_renderer_activate  pango_renderer_activate;
alias c_pango_renderer_deactivate  pango_renderer_deactivate;
alias c_pango_renderer_part_changed  pango_renderer_part_changed;
alias c_pango_renderer_set_color  pango_renderer_set_color;
alias c_pango_renderer_get_color  pango_renderer_get_color;
alias c_pango_renderer_set_matrix  pango_renderer_set_matrix;
alias c_pango_renderer_get_matrix  pango_renderer_get_matrix;
alias c_pango_renderer_get_layout  pango_renderer_get_layout;
alias c_pango_renderer_get_layout_line  pango_renderer_get_layout_line;

// pango.PgCoverage

alias c_pango_coverage_new  pango_coverage_new;
alias c_pango_coverage_ref  pango_coverage_ref;
alias c_pango_coverage_unref  pango_coverage_unref;
alias c_pango_coverage_copy  pango_coverage_copy;
alias c_pango_coverage_get  pango_coverage_get;
alias c_pango_coverage_max  pango_coverage_max;
alias c_pango_coverage_set  pango_coverage_set;
alias c_pango_coverage_to_bytes  pango_coverage_to_bytes;
alias c_pango_coverage_from_bytes  pango_coverage_from_bytes;

// pango.PgEngine

alias c_script_engine_list  script_engine_list;
alias c_script_engine_init  script_engine_init;
alias c_script_engine_exit  script_engine_exit;
alias c_script_engine_create  script_engine_create;

// pango.PgEngineLang


// pango.PgEngineShape


// pango.PgMiscellaneous

alias c_pango_split_file_list  pango_split_file_list;
alias c_pango_trim_string  pango_trim_string;
alias c_pango_read_line  pango_read_line;
alias c_pango_skip_space  pango_skip_space;
alias c_pango_scan_word  pango_scan_word;
alias c_pango_scan_string  pango_scan_string;
alias c_pango_scan_int  pango_scan_int;
alias c_pango_config_key_get  pango_config_key_get;
alias c_pango_config_key_get_system  pango_config_key_get_system;
alias c_pango_lookup_aliases  pango_lookup_aliases;
alias c_pango_parse_enum  pango_parse_enum;
alias c_pango_parse_style  pango_parse_style;
alias c_pango_parse_variant  pango_parse_variant;
alias c_pango_parse_weight  pango_parse_weight;
alias c_pango_parse_stretch  pango_parse_stretch;
alias c_pango_get_sysconf_subdirectory  pango_get_sysconf_subdirectory;
alias c_pango_get_lib_subdirectory  pango_get_lib_subdirectory;
alias c_pango_log2vis_get_embedding_levels  pango_log2vis_get_embedding_levels;
alias c_pango_is_zero_width  pango_is_zero_width;
alias c_pango_quantize_line_geometry  pango_quantize_line_geometry;

// pango.PgVersion

alias c_pango_version  pango_version;
alias c_pango_version_string  pango_version_string;
alias c_pango_version_check  pango_version_check;
