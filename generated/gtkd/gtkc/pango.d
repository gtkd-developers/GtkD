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

import std.stdio;
import gtkc.pangotypes;
import gtkc.cairotypes;
import gtkc.Loader;
import gtkc.paths;

shared static this()
{
	// pango.PgAttributeFontDesc

	Linker.link(pango_attr_font_desc_new, "pango_attr_font_desc_new", LIBRARY.PANGO);

	// pango.PgAttrFontFeatures

	Linker.link(pango_attr_font_features_new, "pango_attr_font_features_new", LIBRARY.PANGO);

	// pango.PgAttributeIterator

	Linker.link(pango_attr_iterator_copy, "pango_attr_iterator_copy", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_destroy, "pango_attr_iterator_destroy", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_get, "pango_attr_iterator_get", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_get_attrs, "pango_attr_iterator_get_attrs", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_get_font, "pango_attr_iterator_get_font", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_next, "pango_attr_iterator_next", LIBRARY.PANGO);
	Linker.link(pango_attr_iterator_range, "pango_attr_iterator_range", LIBRARY.PANGO);

	// pango.PgAttributeLanguage

	Linker.link(pango_attr_language_new, "pango_attr_language_new", LIBRARY.PANGO);

	// pango.PgAttributeList

	Linker.link(pango_attr_list_get_type, "pango_attr_list_get_type", LIBRARY.PANGO);
	Linker.link(pango_attr_list_new, "pango_attr_list_new", LIBRARY.PANGO);
	Linker.link(pango_attr_list_change, "pango_attr_list_change", LIBRARY.PANGO);
	Linker.link(pango_attr_list_copy, "pango_attr_list_copy", LIBRARY.PANGO);
	Linker.link(pango_attr_list_filter, "pango_attr_list_filter", LIBRARY.PANGO);
	Linker.link(pango_attr_list_get_iterator, "pango_attr_list_get_iterator", LIBRARY.PANGO);
	Linker.link(pango_attr_list_insert, "pango_attr_list_insert", LIBRARY.PANGO);
	Linker.link(pango_attr_list_insert_before, "pango_attr_list_insert_before", LIBRARY.PANGO);
	Linker.link(pango_attr_list_ref, "pango_attr_list_ref", LIBRARY.PANGO);
	Linker.link(pango_attr_list_splice, "pango_attr_list_splice", LIBRARY.PANGO);
	Linker.link(pango_attr_list_unref, "pango_attr_list_unref", LIBRARY.PANGO);

	// pango.PgAttributeShape

	Linker.link(pango_attr_shape_new, "pango_attr_shape_new", LIBRARY.PANGO);
	Linker.link(pango_attr_shape_new_with_data, "pango_attr_shape_new_with_data", LIBRARY.PANGO);

	// pango.PgAttributeSize

	Linker.link(pango_attr_size_new, "pango_attr_size_new", LIBRARY.PANGO);
	Linker.link(pango_attr_size_new_absolute, "pango_attr_size_new_absolute", LIBRARY.PANGO);

	// pango.PgAttribute

	Linker.link(pango_attribute_copy, "pango_attribute_copy", LIBRARY.PANGO);
	Linker.link(pango_attribute_destroy, "pango_attribute_destroy", LIBRARY.PANGO);
	Linker.link(pango_attribute_equal, "pango_attribute_equal", LIBRARY.PANGO);
	Linker.link(pango_attribute_init, "pango_attribute_init", LIBRARY.PANGO);
	Linker.link(pango_attr_background_new, "pango_attr_background_new", LIBRARY.PANGO);
	Linker.link(pango_attr_background_alpha_new, "pango_attr_background_alpha_new", LIBRARY.PANGO);
	Linker.link(pango_attr_fallback_new, "pango_attr_fallback_new", LIBRARY.PANGO);
	Linker.link(pango_attr_family_new, "pango_attr_family_new", LIBRARY.PANGO);
	Linker.link(pango_attr_foreground_new, "pango_attr_foreground_new", LIBRARY.PANGO);
	Linker.link(pango_attr_foreground_alpha_new, "pango_attr_foreground_alpha_new", LIBRARY.PANGO);
	Linker.link(pango_attr_gravity_hint_new, "pango_attr_gravity_hint_new", LIBRARY.PANGO);
	Linker.link(pango_attr_gravity_new, "pango_attr_gravity_new", LIBRARY.PANGO);
	Linker.link(pango_attr_letter_spacing_new, "pango_attr_letter_spacing_new", LIBRARY.PANGO);
	Linker.link(pango_attr_rise_new, "pango_attr_rise_new", LIBRARY.PANGO);
	Linker.link(pango_attr_scale_new, "pango_attr_scale_new", LIBRARY.PANGO);
	Linker.link(pango_attr_stretch_new, "pango_attr_stretch_new", LIBRARY.PANGO);
	Linker.link(pango_attr_strikethrough_color_new, "pango_attr_strikethrough_color_new", LIBRARY.PANGO);
	Linker.link(pango_attr_strikethrough_new, "pango_attr_strikethrough_new", LIBRARY.PANGO);
	Linker.link(pango_attr_style_new, "pango_attr_style_new", LIBRARY.PANGO);
	Linker.link(pango_attr_type_get_name, "pango_attr_type_get_name", LIBRARY.PANGO);
	Linker.link(pango_attr_type_register, "pango_attr_type_register", LIBRARY.PANGO);
	Linker.link(pango_attr_underline_color_new, "pango_attr_underline_color_new", LIBRARY.PANGO);
	Linker.link(pango_attr_underline_new, "pango_attr_underline_new", LIBRARY.PANGO);
	Linker.link(pango_attr_variant_new, "pango_attr_variant_new", LIBRARY.PANGO);
	Linker.link(pango_attr_weight_new, "pango_attr_weight_new", LIBRARY.PANGO);
	Linker.link(pango_markup_parser_finish, "pango_markup_parser_finish", LIBRARY.PANGO);
	Linker.link(pango_markup_parser_new, "pango_markup_parser_new", LIBRARY.PANGO);
	Linker.link(pango_parse_markup, "pango_parse_markup", LIBRARY.PANGO);

	// pango.PgColor

	Linker.link(pango_color_get_type, "pango_color_get_type", LIBRARY.PANGO);
	Linker.link(pango_color_copy, "pango_color_copy", LIBRARY.PANGO);
	Linker.link(pango_color_free, "pango_color_free", LIBRARY.PANGO);
	Linker.link(pango_color_parse, "pango_color_parse", LIBRARY.PANGO);
	Linker.link(pango_color_to_string, "pango_color_to_string", LIBRARY.PANGO);

	// pango.PgContext

	Linker.link(pango_context_get_type, "pango_context_get_type", LIBRARY.PANGO);
	Linker.link(pango_context_new, "pango_context_new", LIBRARY.PANGO);
	Linker.link(pango_context_changed, "pango_context_changed", LIBRARY.PANGO);
	Linker.link(pango_context_get_base_dir, "pango_context_get_base_dir", LIBRARY.PANGO);
	Linker.link(pango_context_get_base_gravity, "pango_context_get_base_gravity", LIBRARY.PANGO);
	Linker.link(pango_context_get_font_description, "pango_context_get_font_description", LIBRARY.PANGO);
	Linker.link(pango_context_get_font_map, "pango_context_get_font_map", LIBRARY.PANGO);
	Linker.link(pango_context_get_gravity, "pango_context_get_gravity", LIBRARY.PANGO);
	Linker.link(pango_context_get_gravity_hint, "pango_context_get_gravity_hint", LIBRARY.PANGO);
	Linker.link(pango_context_get_language, "pango_context_get_language", LIBRARY.PANGO);
	Linker.link(pango_context_get_matrix, "pango_context_get_matrix", LIBRARY.PANGO);
	Linker.link(pango_context_get_metrics, "pango_context_get_metrics", LIBRARY.PANGO);
	Linker.link(pango_context_get_serial, "pango_context_get_serial", LIBRARY.PANGO);
	Linker.link(pango_context_list_families, "pango_context_list_families", LIBRARY.PANGO);
	Linker.link(pango_context_load_font, "pango_context_load_font", LIBRARY.PANGO);
	Linker.link(pango_context_load_fontset, "pango_context_load_fontset", LIBRARY.PANGO);
	Linker.link(pango_context_set_base_dir, "pango_context_set_base_dir", LIBRARY.PANGO);
	Linker.link(pango_context_set_base_gravity, "pango_context_set_base_gravity", LIBRARY.PANGO);
	Linker.link(pango_context_set_font_description, "pango_context_set_font_description", LIBRARY.PANGO);
	Linker.link(pango_context_set_font_map, "pango_context_set_font_map", LIBRARY.PANGO);
	Linker.link(pango_context_set_gravity_hint, "pango_context_set_gravity_hint", LIBRARY.PANGO);
	Linker.link(pango_context_set_language, "pango_context_set_language", LIBRARY.PANGO);
	Linker.link(pango_context_set_matrix, "pango_context_set_matrix", LIBRARY.PANGO);
	Linker.link(pango_bidi_type_for_unichar, "pango_bidi_type_for_unichar", LIBRARY.PANGO);
	Linker.link(pango_break, "pango_break", LIBRARY.PANGO);
	Linker.link(pango_default_break, "pango_default_break", LIBRARY.PANGO);
	Linker.link(pango_find_base_dir, "pango_find_base_dir", LIBRARY.PANGO);
	Linker.link(pango_find_paragraph_boundary, "pango_find_paragraph_boundary", LIBRARY.PANGO);
	Linker.link(pango_get_log_attrs, "pango_get_log_attrs", LIBRARY.PANGO);
	Linker.link(pango_get_mirror_char, "pango_get_mirror_char", LIBRARY.PANGO);
	Linker.link(pango_itemize, "pango_itemize", LIBRARY.PANGO);
	Linker.link(pango_itemize_with_base_dir, "pango_itemize_with_base_dir", LIBRARY.PANGO);
	Linker.link(pango_reorder_items, "pango_reorder_items", LIBRARY.PANGO);
	Linker.link(pango_shape, "pango_shape", LIBRARY.PANGO);
	Linker.link(pango_shape_full, "pango_shape_full", LIBRARY.PANGO);
	Linker.link(pango_unichar_direction, "pango_unichar_direction", LIBRARY.PANGO);

	// pango.PgCoverage

	Linker.link(pango_coverage_copy, "pango_coverage_copy", LIBRARY.PANGO);
	Linker.link(pango_coverage_get, "pango_coverage_get", LIBRARY.PANGO);
	Linker.link(pango_coverage_max, "pango_coverage_max", LIBRARY.PANGO);
	Linker.link(pango_coverage_ref, "pango_coverage_ref", LIBRARY.PANGO);
	Linker.link(pango_coverage_set, "pango_coverage_set", LIBRARY.PANGO);
	Linker.link(pango_coverage_to_bytes, "pango_coverage_to_bytes", LIBRARY.PANGO);
	Linker.link(pango_coverage_unref, "pango_coverage_unref", LIBRARY.PANGO);
	Linker.link(pango_coverage_from_bytes, "pango_coverage_from_bytes", LIBRARY.PANGO);
	Linker.link(pango_coverage_new, "pango_coverage_new", LIBRARY.PANGO);

	// pango.PgEngine

	Linker.link(pango_engine_get_type, "pango_engine_get_type", LIBRARY.PANGO);

	// pango.PgEngineLang

	Linker.link(pango_engine_lang_get_type, "pango_engine_lang_get_type", LIBRARY.PANGO);

	// pango.PgEngineShape

	Linker.link(pango_engine_shape_get_type, "pango_engine_shape_get_type", LIBRARY.PANGO);

	// pango.PgFont

	Linker.link(pango_font_get_type, "pango_font_get_type", LIBRARY.PANGO);
	Linker.link(pango_font_descriptions_free, "pango_font_descriptions_free", LIBRARY.PANGO);
	Linker.link(pango_font_describe, "pango_font_describe", LIBRARY.PANGO);
	Linker.link(pango_font_describe_with_absolute_size, "pango_font_describe_with_absolute_size", LIBRARY.PANGO);
	Linker.link(pango_font_find_shaper, "pango_font_find_shaper", LIBRARY.PANGO);
	Linker.link(pango_font_get_coverage, "pango_font_get_coverage", LIBRARY.PANGO);
	Linker.link(pango_font_get_font_map, "pango_font_get_font_map", LIBRARY.PANGO);
	Linker.link(pango_font_get_glyph_extents, "pango_font_get_glyph_extents", LIBRARY.PANGO);
	Linker.link(pango_font_get_metrics, "pango_font_get_metrics", LIBRARY.PANGO);

	// pango.PgFontDescription

	Linker.link(pango_font_description_get_type, "pango_font_description_get_type", LIBRARY.PANGO);
	Linker.link(pango_font_description_new, "pango_font_description_new", LIBRARY.PANGO);
	Linker.link(pango_font_description_better_match, "pango_font_description_better_match", LIBRARY.PANGO);
	Linker.link(pango_font_description_copy, "pango_font_description_copy", LIBRARY.PANGO);
	Linker.link(pango_font_description_copy_static, "pango_font_description_copy_static", LIBRARY.PANGO);
	Linker.link(pango_font_description_equal, "pango_font_description_equal", LIBRARY.PANGO);
	Linker.link(pango_font_description_free, "pango_font_description_free", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_family, "pango_font_description_get_family", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_gravity, "pango_font_description_get_gravity", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_set_fields, "pango_font_description_get_set_fields", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_size, "pango_font_description_get_size", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_size_is_absolute, "pango_font_description_get_size_is_absolute", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_stretch, "pango_font_description_get_stretch", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_style, "pango_font_description_get_style", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_variant, "pango_font_description_get_variant", LIBRARY.PANGO);
	Linker.link(pango_font_description_get_weight, "pango_font_description_get_weight", LIBRARY.PANGO);
	Linker.link(pango_font_description_hash, "pango_font_description_hash", LIBRARY.PANGO);
	Linker.link(pango_font_description_merge, "pango_font_description_merge", LIBRARY.PANGO);
	Linker.link(pango_font_description_merge_static, "pango_font_description_merge_static", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_absolute_size, "pango_font_description_set_absolute_size", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_family, "pango_font_description_set_family", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_family_static, "pango_font_description_set_family_static", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_gravity, "pango_font_description_set_gravity", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_size, "pango_font_description_set_size", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_stretch, "pango_font_description_set_stretch", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_style, "pango_font_description_set_style", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_variant, "pango_font_description_set_variant", LIBRARY.PANGO);
	Linker.link(pango_font_description_set_weight, "pango_font_description_set_weight", LIBRARY.PANGO);
	Linker.link(pango_font_description_to_filename, "pango_font_description_to_filename", LIBRARY.PANGO);
	Linker.link(pango_font_description_to_string, "pango_font_description_to_string", LIBRARY.PANGO);
	Linker.link(pango_font_description_unset_fields, "pango_font_description_unset_fields", LIBRARY.PANGO);
	Linker.link(pango_font_description_from_string, "pango_font_description_from_string", LIBRARY.PANGO);

	// pango.PgFontFace

	Linker.link(pango_font_face_get_type, "pango_font_face_get_type", LIBRARY.PANGO);
	Linker.link(pango_font_face_describe, "pango_font_face_describe", LIBRARY.PANGO);
	Linker.link(pango_font_face_get_face_name, "pango_font_face_get_face_name", LIBRARY.PANGO);
	Linker.link(pango_font_face_is_synthesized, "pango_font_face_is_synthesized", LIBRARY.PANGO);
	Linker.link(pango_font_face_list_sizes, "pango_font_face_list_sizes", LIBRARY.PANGO);

	// pango.PgFontFamily

	Linker.link(pango_font_family_get_type, "pango_font_family_get_type", LIBRARY.PANGO);
	Linker.link(pango_font_family_get_name, "pango_font_family_get_name", LIBRARY.PANGO);
	Linker.link(pango_font_family_is_monospace, "pango_font_family_is_monospace", LIBRARY.PANGO);
	Linker.link(pango_font_family_list_faces, "pango_font_family_list_faces", LIBRARY.PANGO);

	// pango.PgFontMap

	Linker.link(pango_font_map_get_type, "pango_font_map_get_type", LIBRARY.PANGO);
	Linker.link(pango_font_map_changed, "pango_font_map_changed", LIBRARY.PANGO);
	Linker.link(pango_font_map_create_context, "pango_font_map_create_context", LIBRARY.PANGO);
	Linker.link(pango_font_map_get_serial, "pango_font_map_get_serial", LIBRARY.PANGO);
	Linker.link(pango_font_map_get_shape_engine_type, "pango_font_map_get_shape_engine_type", LIBRARY.PANGO);
	Linker.link(pango_font_map_list_families, "pango_font_map_list_families", LIBRARY.PANGO);
	Linker.link(pango_font_map_load_font, "pango_font_map_load_font", LIBRARY.PANGO);
	Linker.link(pango_font_map_load_fontset, "pango_font_map_load_fontset", LIBRARY.PANGO);

	// pango.PgFontMetrics

	Linker.link(pango_font_metrics_get_type, "pango_font_metrics_get_type", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_new, "pango_font_metrics_new", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_approximate_char_width, "pango_font_metrics_get_approximate_char_width", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_approximate_digit_width, "pango_font_metrics_get_approximate_digit_width", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_ascent, "pango_font_metrics_get_ascent", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_descent, "pango_font_metrics_get_descent", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_strikethrough_position, "pango_font_metrics_get_strikethrough_position", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_strikethrough_thickness, "pango_font_metrics_get_strikethrough_thickness", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_underline_position, "pango_font_metrics_get_underline_position", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_get_underline_thickness, "pango_font_metrics_get_underline_thickness", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_ref, "pango_font_metrics_ref", LIBRARY.PANGO);
	Linker.link(pango_font_metrics_unref, "pango_font_metrics_unref", LIBRARY.PANGO);

	// pango.PgFontset

	Linker.link(pango_fontset_get_type, "pango_fontset_get_type", LIBRARY.PANGO);
	Linker.link(pango_fontset_foreach, "pango_fontset_foreach", LIBRARY.PANGO);
	Linker.link(pango_fontset_get_font, "pango_fontset_get_font", LIBRARY.PANGO);
	Linker.link(pango_fontset_get_metrics, "pango_fontset_get_metrics", LIBRARY.PANGO);

	// pango.PgFontsetSimple

	Linker.link(pango_fontset_simple_get_type, "pango_fontset_simple_get_type", LIBRARY.PANGO);
	Linker.link(pango_fontset_simple_new, "pango_fontset_simple_new", LIBRARY.PANGO);
	Linker.link(pango_fontset_simple_append, "pango_fontset_simple_append", LIBRARY.PANGO);
	Linker.link(pango_fontset_simple_size, "pango_fontset_simple_size", LIBRARY.PANGO);

	// pango.PgGlyphItem

	Linker.link(pango_glyph_item_get_type, "pango_glyph_item_get_type", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_apply_attrs, "pango_glyph_item_apply_attrs", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_copy, "pango_glyph_item_copy", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_free, "pango_glyph_item_free", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_get_logical_widths, "pango_glyph_item_get_logical_widths", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_letter_space, "pango_glyph_item_letter_space", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_split, "pango_glyph_item_split", LIBRARY.PANGO);

	// pango.PgGlyphItemIter

	Linker.link(pango_glyph_item_iter_get_type, "pango_glyph_item_iter_get_type", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_copy, "pango_glyph_item_iter_copy", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_free, "pango_glyph_item_iter_free", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_init_end, "pango_glyph_item_iter_init_end", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_init_start, "pango_glyph_item_iter_init_start", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_next_cluster, "pango_glyph_item_iter_next_cluster", LIBRARY.PANGO);
	Linker.link(pango_glyph_item_iter_prev_cluster, "pango_glyph_item_iter_prev_cluster", LIBRARY.PANGO);

	// pango.PgGlyphString

	Linker.link(pango_glyph_string_get_type, "pango_glyph_string_get_type", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_new, "pango_glyph_string_new", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_copy, "pango_glyph_string_copy", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_extents, "pango_glyph_string_extents", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_extents_range, "pango_glyph_string_extents_range", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_free, "pango_glyph_string_free", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_get_logical_widths, "pango_glyph_string_get_logical_widths", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_get_width, "pango_glyph_string_get_width", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_index_to_x, "pango_glyph_string_index_to_x", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_set_size, "pango_glyph_string_set_size", LIBRARY.PANGO);
	Linker.link(pango_glyph_string_x_to_index, "pango_glyph_string_x_to_index", LIBRARY.PANGO);

	// pango.PgItem

	Linker.link(pango_item_get_type, "pango_item_get_type", LIBRARY.PANGO);
	Linker.link(pango_item_new, "pango_item_new", LIBRARY.PANGO);
	Linker.link(pango_item_copy, "pango_item_copy", LIBRARY.PANGO);
	Linker.link(pango_item_free, "pango_item_free", LIBRARY.PANGO);
	Linker.link(pango_item_split, "pango_item_split", LIBRARY.PANGO);

	// pango.PgLanguage

	Linker.link(pango_language_get_type, "pango_language_get_type", LIBRARY.PANGO);
	Linker.link(pango_language_get_sample_string, "pango_language_get_sample_string", LIBRARY.PANGO);
	Linker.link(pango_language_get_scripts, "pango_language_get_scripts", LIBRARY.PANGO);
	Linker.link(pango_language_includes_script, "pango_language_includes_script", LIBRARY.PANGO);
	Linker.link(pango_language_matches, "pango_language_matches", LIBRARY.PANGO);
	Linker.link(pango_language_to_string, "pango_language_to_string", LIBRARY.PANGO);
	Linker.link(pango_language_from_string, "pango_language_from_string", LIBRARY.PANGO);
	Linker.link(pango_language_get_default, "pango_language_get_default", LIBRARY.PANGO);

	// pango.PgLayout

	Linker.link(pango_layout_get_type, "pango_layout_get_type", LIBRARY.PANGO);
	Linker.link(pango_layout_new, "pango_layout_new", LIBRARY.PANGO);
	Linker.link(pango_layout_context_changed, "pango_layout_context_changed", LIBRARY.PANGO);
	Linker.link(pango_layout_copy, "pango_layout_copy", LIBRARY.PANGO);
	Linker.link(pango_layout_get_alignment, "pango_layout_get_alignment", LIBRARY.PANGO);
	Linker.link(pango_layout_get_attributes, "pango_layout_get_attributes", LIBRARY.PANGO);
	Linker.link(pango_layout_get_auto_dir, "pango_layout_get_auto_dir", LIBRARY.PANGO);
	Linker.link(pango_layout_get_baseline, "pango_layout_get_baseline", LIBRARY.PANGO);
	Linker.link(pango_layout_get_character_count, "pango_layout_get_character_count", LIBRARY.PANGO);
	Linker.link(pango_layout_get_context, "pango_layout_get_context", LIBRARY.PANGO);
	Linker.link(pango_layout_get_cursor_pos, "pango_layout_get_cursor_pos", LIBRARY.PANGO);
	Linker.link(pango_layout_get_ellipsize, "pango_layout_get_ellipsize", LIBRARY.PANGO);
	Linker.link(pango_layout_get_extents, "pango_layout_get_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_get_font_description, "pango_layout_get_font_description", LIBRARY.PANGO);
	Linker.link(pango_layout_get_height, "pango_layout_get_height", LIBRARY.PANGO);
	Linker.link(pango_layout_get_indent, "pango_layout_get_indent", LIBRARY.PANGO);
	Linker.link(pango_layout_get_iter, "pango_layout_get_iter", LIBRARY.PANGO);
	Linker.link(pango_layout_get_justify, "pango_layout_get_justify", LIBRARY.PANGO);
	Linker.link(pango_layout_get_line, "pango_layout_get_line", LIBRARY.PANGO);
	Linker.link(pango_layout_get_line_count, "pango_layout_get_line_count", LIBRARY.PANGO);
	Linker.link(pango_layout_get_line_readonly, "pango_layout_get_line_readonly", LIBRARY.PANGO);
	Linker.link(pango_layout_get_lines, "pango_layout_get_lines", LIBRARY.PANGO);
	Linker.link(pango_layout_get_lines_readonly, "pango_layout_get_lines_readonly", LIBRARY.PANGO);
	Linker.link(pango_layout_get_log_attrs, "pango_layout_get_log_attrs", LIBRARY.PANGO);
	Linker.link(pango_layout_get_log_attrs_readonly, "pango_layout_get_log_attrs_readonly", LIBRARY.PANGO);
	Linker.link(pango_layout_get_pixel_extents, "pango_layout_get_pixel_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_get_pixel_size, "pango_layout_get_pixel_size", LIBRARY.PANGO);
	Linker.link(pango_layout_get_serial, "pango_layout_get_serial", LIBRARY.PANGO);
	Linker.link(pango_layout_get_single_paragraph_mode, "pango_layout_get_single_paragraph_mode", LIBRARY.PANGO);
	Linker.link(pango_layout_get_size, "pango_layout_get_size", LIBRARY.PANGO);
	Linker.link(pango_layout_get_spacing, "pango_layout_get_spacing", LIBRARY.PANGO);
	Linker.link(pango_layout_get_tabs, "pango_layout_get_tabs", LIBRARY.PANGO);
	Linker.link(pango_layout_get_text, "pango_layout_get_text", LIBRARY.PANGO);
	Linker.link(pango_layout_get_unknown_glyphs_count, "pango_layout_get_unknown_glyphs_count", LIBRARY.PANGO);
	Linker.link(pango_layout_get_width, "pango_layout_get_width", LIBRARY.PANGO);
	Linker.link(pango_layout_get_wrap, "pango_layout_get_wrap", LIBRARY.PANGO);
	Linker.link(pango_layout_index_to_line_x, "pango_layout_index_to_line_x", LIBRARY.PANGO);
	Linker.link(pango_layout_index_to_pos, "pango_layout_index_to_pos", LIBRARY.PANGO);
	Linker.link(pango_layout_is_ellipsized, "pango_layout_is_ellipsized", LIBRARY.PANGO);
	Linker.link(pango_layout_is_wrapped, "pango_layout_is_wrapped", LIBRARY.PANGO);
	Linker.link(pango_layout_move_cursor_visually, "pango_layout_move_cursor_visually", LIBRARY.PANGO);
	Linker.link(pango_layout_set_alignment, "pango_layout_set_alignment", LIBRARY.PANGO);
	Linker.link(pango_layout_set_attributes, "pango_layout_set_attributes", LIBRARY.PANGO);
	Linker.link(pango_layout_set_auto_dir, "pango_layout_set_auto_dir", LIBRARY.PANGO);
	Linker.link(pango_layout_set_ellipsize, "pango_layout_set_ellipsize", LIBRARY.PANGO);
	Linker.link(pango_layout_set_font_description, "pango_layout_set_font_description", LIBRARY.PANGO);
	Linker.link(pango_layout_set_height, "pango_layout_set_height", LIBRARY.PANGO);
	Linker.link(pango_layout_set_indent, "pango_layout_set_indent", LIBRARY.PANGO);
	Linker.link(pango_layout_set_justify, "pango_layout_set_justify", LIBRARY.PANGO);
	Linker.link(pango_layout_set_markup, "pango_layout_set_markup", LIBRARY.PANGO);
	Linker.link(pango_layout_set_markup_with_accel, "pango_layout_set_markup_with_accel", LIBRARY.PANGO);
	Linker.link(pango_layout_set_single_paragraph_mode, "pango_layout_set_single_paragraph_mode", LIBRARY.PANGO);
	Linker.link(pango_layout_set_spacing, "pango_layout_set_spacing", LIBRARY.PANGO);
	Linker.link(pango_layout_set_tabs, "pango_layout_set_tabs", LIBRARY.PANGO);
	Linker.link(pango_layout_set_text, "pango_layout_set_text", LIBRARY.PANGO);
	Linker.link(pango_layout_set_width, "pango_layout_set_width", LIBRARY.PANGO);
	Linker.link(pango_layout_set_wrap, "pango_layout_set_wrap", LIBRARY.PANGO);
	Linker.link(pango_layout_xy_to_index, "pango_layout_xy_to_index", LIBRARY.PANGO);

	// pango.PgLayoutIter

	Linker.link(pango_layout_iter_get_type, "pango_layout_iter_get_type", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_at_last_line, "pango_layout_iter_at_last_line", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_copy, "pango_layout_iter_copy", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_free, "pango_layout_iter_free", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_baseline, "pango_layout_iter_get_baseline", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_char_extents, "pango_layout_iter_get_char_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_cluster_extents, "pango_layout_iter_get_cluster_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_index, "pango_layout_iter_get_index", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_layout, "pango_layout_iter_get_layout", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_layout_extents, "pango_layout_iter_get_layout_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line, "pango_layout_iter_get_line", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line_extents, "pango_layout_iter_get_line_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line_readonly, "pango_layout_iter_get_line_readonly", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_line_yrange, "pango_layout_iter_get_line_yrange", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_run, "pango_layout_iter_get_run", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_run_extents, "pango_layout_iter_get_run_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_get_run_readonly, "pango_layout_iter_get_run_readonly", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_char, "pango_layout_iter_next_char", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_cluster, "pango_layout_iter_next_cluster", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_line, "pango_layout_iter_next_line", LIBRARY.PANGO);
	Linker.link(pango_layout_iter_next_run, "pango_layout_iter_next_run", LIBRARY.PANGO);

	// pango.PgLayoutLine

	Linker.link(pango_layout_line_get_type, "pango_layout_line_get_type", LIBRARY.PANGO);
	Linker.link(pango_layout_line_get_extents, "pango_layout_line_get_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_line_get_pixel_extents, "pango_layout_line_get_pixel_extents", LIBRARY.PANGO);
	Linker.link(pango_layout_line_get_x_ranges, "pango_layout_line_get_x_ranges", LIBRARY.PANGO);
	Linker.link(pango_layout_line_index_to_x, "pango_layout_line_index_to_x", LIBRARY.PANGO);
	Linker.link(pango_layout_line_ref, "pango_layout_line_ref", LIBRARY.PANGO);
	Linker.link(pango_layout_line_unref, "pango_layout_line_unref", LIBRARY.PANGO);
	Linker.link(pango_layout_line_x_to_index, "pango_layout_line_x_to_index", LIBRARY.PANGO);

	// pango.PgMap

	Linker.link(pango_map_get_engine, "pango_map_get_engine", LIBRARY.PANGO);
	Linker.link(pango_map_get_engines, "pango_map_get_engines", LIBRARY.PANGO);
	Linker.link(pango_find_map, "pango_find_map", LIBRARY.PANGO);
	Linker.link(pango_module_register, "pango_module_register", LIBRARY.PANGO);

	// pango.PgMatrix

	Linker.link(pango_matrix_get_type, "pango_matrix_get_type", LIBRARY.PANGO);
	Linker.link(pango_matrix_concat, "pango_matrix_concat", LIBRARY.PANGO);
	Linker.link(pango_matrix_copy, "pango_matrix_copy", LIBRARY.PANGO);
	Linker.link(pango_matrix_free, "pango_matrix_free", LIBRARY.PANGO);
	Linker.link(pango_matrix_get_font_scale_factor, "pango_matrix_get_font_scale_factor", LIBRARY.PANGO);
	Linker.link(pango_matrix_get_font_scale_factors, "pango_matrix_get_font_scale_factors", LIBRARY.PANGO);
	Linker.link(pango_matrix_rotate, "pango_matrix_rotate", LIBRARY.PANGO);
	Linker.link(pango_matrix_scale, "pango_matrix_scale", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_distance, "pango_matrix_transform_distance", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_pixel_rectangle, "pango_matrix_transform_pixel_rectangle", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_point, "pango_matrix_transform_point", LIBRARY.PANGO);
	Linker.link(pango_matrix_transform_rectangle, "pango_matrix_transform_rectangle", LIBRARY.PANGO);
	Linker.link(pango_matrix_translate, "pango_matrix_translate", LIBRARY.PANGO);
	Linker.link(pango_extents_to_pixels, "pango_extents_to_pixels", LIBRARY.PANGO);
	Linker.link(pango_units_from_double, "pango_units_from_double", LIBRARY.PANGO);
	Linker.link(pango_units_to_double, "pango_units_to_double", LIBRARY.PANGO);

	// pango.PgRenderer

	Linker.link(pango_renderer_get_type, "pango_renderer_get_type", LIBRARY.PANGO);
	Linker.link(pango_renderer_activate, "pango_renderer_activate", LIBRARY.PANGO);
	Linker.link(pango_renderer_deactivate, "pango_renderer_deactivate", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_error_underline, "pango_renderer_draw_error_underline", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_glyph, "pango_renderer_draw_glyph", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_glyph_item, "pango_renderer_draw_glyph_item", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_glyphs, "pango_renderer_draw_glyphs", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_layout, "pango_renderer_draw_layout", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_layout_line, "pango_renderer_draw_layout_line", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_rectangle, "pango_renderer_draw_rectangle", LIBRARY.PANGO);
	Linker.link(pango_renderer_draw_trapezoid, "pango_renderer_draw_trapezoid", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_alpha, "pango_renderer_get_alpha", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_color, "pango_renderer_get_color", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_layout, "pango_renderer_get_layout", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_layout_line, "pango_renderer_get_layout_line", LIBRARY.PANGO);
	Linker.link(pango_renderer_get_matrix, "pango_renderer_get_matrix", LIBRARY.PANGO);
	Linker.link(pango_renderer_part_changed, "pango_renderer_part_changed", LIBRARY.PANGO);
	Linker.link(pango_renderer_set_alpha, "pango_renderer_set_alpha", LIBRARY.PANGO);
	Linker.link(pango_renderer_set_color, "pango_renderer_set_color", LIBRARY.PANGO);
	Linker.link(pango_renderer_set_matrix, "pango_renderer_set_matrix", LIBRARY.PANGO);

	// pango.PgScriptIter

	Linker.link(pango_script_iter_free, "pango_script_iter_free", LIBRARY.PANGO);
	Linker.link(pango_script_iter_get_range, "pango_script_iter_get_range", LIBRARY.PANGO);
	Linker.link(pango_script_iter_next, "pango_script_iter_next", LIBRARY.PANGO);
	Linker.link(pango_script_iter_new, "pango_script_iter_new", LIBRARY.PANGO);

	// pango.PgTabArray

	Linker.link(pango_tab_array_get_type, "pango_tab_array_get_type", LIBRARY.PANGO);
	Linker.link(pango_tab_array_new, "pango_tab_array_new", LIBRARY.PANGO);
	Linker.link(pango_tab_array_new_with_positions, "pango_tab_array_new_with_positions", LIBRARY.PANGO);
	Linker.link(pango_tab_array_copy, "pango_tab_array_copy", LIBRARY.PANGO);
	Linker.link(pango_tab_array_free, "pango_tab_array_free", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_positions_in_pixels, "pango_tab_array_get_positions_in_pixels", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_size, "pango_tab_array_get_size", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_tab, "pango_tab_array_get_tab", LIBRARY.PANGO);
	Linker.link(pango_tab_array_get_tabs, "pango_tab_array_get_tabs", LIBRARY.PANGO);
	Linker.link(pango_tab_array_resize, "pango_tab_array_resize", LIBRARY.PANGO);
	Linker.link(pango_tab_array_set_tab, "pango_tab_array_set_tab", LIBRARY.PANGO);

	// pango.PgCairoFontMap

	Linker.link(pango_cairo_font_map_get_type, "pango_cairo_font_map_get_type", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_get_scaled_font, "pango_cairo_font_get_scaled_font", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_get_default, "pango_cairo_font_map_get_default", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_new, "pango_cairo_font_map_new", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_new_for_font_type, "pango_cairo_font_map_new_for_font_type", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_create_context, "pango_cairo_font_map_create_context", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_get_font_type, "pango_cairo_font_map_get_font_type", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_get_resolution, "pango_cairo_font_map_get_resolution", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_set_default, "pango_cairo_font_map_set_default", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_font_map_set_resolution, "pango_cairo_font_map_set_resolution", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);

	// pango.PgMiscellaneous

	Linker.link(pango_config_key_get, "pango_config_key_get", LIBRARY.PANGO);
	Linker.link(pango_config_key_get_system, "pango_config_key_get_system", LIBRARY.PANGO);
	Linker.link(pango_get_lib_subdirectory, "pango_get_lib_subdirectory", LIBRARY.PANGO);
	Linker.link(pango_get_sysconf_subdirectory, "pango_get_sysconf_subdirectory", LIBRARY.PANGO);
	Linker.link(pango_is_zero_width, "pango_is_zero_width", LIBRARY.PANGO);
	Linker.link(pango_log2vis_get_embedding_levels, "pango_log2vis_get_embedding_levels", LIBRARY.PANGO);
	Linker.link(pango_lookup_aliases, "pango_lookup_aliases", LIBRARY.PANGO);
	Linker.link(pango_parse_enum, "pango_parse_enum", LIBRARY.PANGO);
	Linker.link(pango_parse_stretch, "pango_parse_stretch", LIBRARY.PANGO);
	Linker.link(pango_parse_style, "pango_parse_style", LIBRARY.PANGO);
	Linker.link(pango_parse_variant, "pango_parse_variant", LIBRARY.PANGO);
	Linker.link(pango_parse_weight, "pango_parse_weight", LIBRARY.PANGO);
	Linker.link(pango_quantize_line_geometry, "pango_quantize_line_geometry", LIBRARY.PANGO);
	Linker.link(pango_read_line, "pango_read_line", LIBRARY.PANGO);
	Linker.link(pango_scan_int, "pango_scan_int", LIBRARY.PANGO);
	Linker.link(pango_scan_string, "pango_scan_string", LIBRARY.PANGO);
	Linker.link(pango_scan_word, "pango_scan_word", LIBRARY.PANGO);
	Linker.link(pango_skip_space, "pango_skip_space", LIBRARY.PANGO);
	Linker.link(pango_split_file_list, "pango_split_file_list", LIBRARY.PANGO);
	Linker.link(pango_trim_string, "pango_trim_string", LIBRARY.PANGO);

	// pango.PgVertical

	Linker.link(pango_gravity_get_for_matrix, "pango_gravity_get_for_matrix", LIBRARY.PANGO);
	Linker.link(pango_gravity_get_for_script, "pango_gravity_get_for_script", LIBRARY.PANGO);
	Linker.link(pango_gravity_get_for_script_and_width, "pango_gravity_get_for_script_and_width", LIBRARY.PANGO);
	Linker.link(pango_gravity_to_rotation, "pango_gravity_to_rotation", LIBRARY.PANGO);

	// pango.PgScript

	Linker.link(pango_script_for_unichar, "pango_script_for_unichar", LIBRARY.PANGO);
	Linker.link(pango_script_get_sample_language, "pango_script_get_sample_language", LIBRARY.PANGO);

	// pango.PgVersion

	Linker.link(pango_version, "pango_version", LIBRARY.PANGO);
	Linker.link(pango_version_check, "pango_version_check", LIBRARY.PANGO);
	Linker.link(pango_version_string, "pango_version_string", LIBRARY.PANGO);

	// pango.PgCairo

	Linker.link(pango_cairo_context_get_font_options, "pango_cairo_context_get_font_options", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_get_resolution, "pango_cairo_context_get_resolution", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_get_shape_renderer, "pango_cairo_context_get_shape_renderer", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_set_font_options, "pango_cairo_context_set_font_options", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_set_resolution, "pango_cairo_context_set_resolution", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_context_set_shape_renderer, "pango_cairo_context_set_shape_renderer", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_create_context, "pango_cairo_create_context", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_create_layout, "pango_cairo_create_layout", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_error_underline_path, "pango_cairo_error_underline_path", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_glyph_string_path, "pango_cairo_glyph_string_path", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_layout_line_path, "pango_cairo_layout_line_path", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_layout_path, "pango_cairo_layout_path", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_error_underline, "pango_cairo_show_error_underline", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_glyph_item, "pango_cairo_show_glyph_item", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_glyph_string, "pango_cairo_show_glyph_string", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_layout, "pango_cairo_show_layout", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_show_layout_line, "pango_cairo_show_layout_line", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_update_context, "pango_cairo_update_context", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
	Linker.link(pango_cairo_update_layout, "pango_cairo_update_layout", LIBRARY.PANGO, LIBRARY.PANGOCAIRO);
}

__gshared extern(C)
{

	// pango.PgAttributeFontDesc

	PangoAttribute* function(PangoFontDescription* desc) c_pango_attr_font_desc_new;

	// pango.PgAttrFontFeatures

	PangoAttribute* function(const(char)* features) c_pango_attr_font_features_new;

	// pango.PgAttributeIterator

	PangoAttrIterator* function(PangoAttrIterator* iterator) c_pango_attr_iterator_copy;
	void function(PangoAttrIterator* iterator) c_pango_attr_iterator_destroy;
	PangoAttribute* function(PangoAttrIterator* iterator, PangoAttrType type) c_pango_attr_iterator_get;
	GSList* function(PangoAttrIterator* iterator) c_pango_attr_iterator_get_attrs;
	void function(PangoAttrIterator* iterator, PangoFontDescription* desc, PangoLanguage** language, GSList** extraAttrs) c_pango_attr_iterator_get_font;
	int function(PangoAttrIterator* iterator) c_pango_attr_iterator_next;
	void function(PangoAttrIterator* iterator, int* start, int* end) c_pango_attr_iterator_range;

	// pango.PgAttributeLanguage

	PangoAttribute* function(PangoLanguage* language) c_pango_attr_language_new;

	// pango.PgAttributeList

	GType function() c_pango_attr_list_get_type;
	PangoAttrList* function() c_pango_attr_list_new;
	void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_change;
	PangoAttrList* function(PangoAttrList* list) c_pango_attr_list_copy;
	PangoAttrList* function(PangoAttrList* list, PangoAttrFilterFunc func, void* data) c_pango_attr_list_filter;
	PangoAttrIterator* function(PangoAttrList* list) c_pango_attr_list_get_iterator;
	void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_insert;
	void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_insert_before;
	PangoAttrList* function(PangoAttrList* list) c_pango_attr_list_ref;
	void function(PangoAttrList* list, PangoAttrList* other, int pos, int len) c_pango_attr_list_splice;
	void function(PangoAttrList* list) c_pango_attr_list_unref;

	// pango.PgAttributeShape

	PangoAttribute* function(PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_attr_shape_new;
	PangoAttribute* function(PangoRectangle* inkRect, PangoRectangle* logicalRect, void* data, PangoAttrDataCopyFunc copyFunc, GDestroyNotify destroyFunc) c_pango_attr_shape_new_with_data;

	// pango.PgAttributeSize

	PangoAttribute* function(int size) c_pango_attr_size_new;
	PangoAttribute* function(int size) c_pango_attr_size_new_absolute;

	// pango.PgAttribute

	PangoAttribute* function(PangoAttribute* attr) c_pango_attribute_copy;
	void function(PangoAttribute* attr) c_pango_attribute_destroy;
	int function(PangoAttribute* attr1, PangoAttribute* attr2) c_pango_attribute_equal;
	void function(PangoAttribute* attr, PangoAttrClass* klass) c_pango_attribute_init;
	PangoAttribute* function(ushort red, ushort green, ushort blue) c_pango_attr_background_new;
	PangoAttribute* function(ushort alpha) c_pango_attr_background_alpha_new;
	PangoAttribute* function(int enableFallback) c_pango_attr_fallback_new;
	PangoAttribute* function(const(char)* family) c_pango_attr_family_new;
	PangoAttribute* function(ushort red, ushort green, ushort blue) c_pango_attr_foreground_new;
	PangoAttribute* function(ushort alpha) c_pango_attr_foreground_alpha_new;
	PangoAttribute* function(PangoGravityHint hint) c_pango_attr_gravity_hint_new;
	PangoAttribute* function(PangoGravity gravity) c_pango_attr_gravity_new;
	PangoAttribute* function(int letterSpacing) c_pango_attr_letter_spacing_new;
	PangoAttribute* function(int rise) c_pango_attr_rise_new;
	PangoAttribute* function(double scaleFactor) c_pango_attr_scale_new;
	PangoAttribute* function(PangoStretch stretch) c_pango_attr_stretch_new;
	PangoAttribute* function(ushort red, ushort green, ushort blue) c_pango_attr_strikethrough_color_new;
	PangoAttribute* function(int strikethrough) c_pango_attr_strikethrough_new;
	PangoAttribute* function(PangoStyle style) c_pango_attr_style_new;
	const(char)* function(PangoAttrType type) c_pango_attr_type_get_name;
	PangoAttrType function(const(char)* name) c_pango_attr_type_register;
	PangoAttribute* function(ushort red, ushort green, ushort blue) c_pango_attr_underline_color_new;
	PangoAttribute* function(PangoUnderline underline) c_pango_attr_underline_new;
	PangoAttribute* function(PangoVariant variant) c_pango_attr_variant_new;
	PangoAttribute* function(PangoWeight weight) c_pango_attr_weight_new;
	int function(GMarkupParseContext* context, PangoAttrList** attrList, char** text, dchar* accelChar, GError** err) c_pango_markup_parser_finish;
	GMarkupParseContext* function(dchar accelMarker) c_pango_markup_parser_new;
	int function(const(char)* markupText, int length, dchar accelMarker, PangoAttrList** attrList, char** text, dchar* accelChar, GError** err) c_pango_parse_markup;

	// pango.PgColor

	GType function() c_pango_color_get_type;
	PangoColor* function(PangoColor* src) c_pango_color_copy;
	void function(PangoColor* color) c_pango_color_free;
	int function(PangoColor* color, const(char)* spec) c_pango_color_parse;
	char* function(PangoColor* color) c_pango_color_to_string;

	// pango.PgContext

	GType function() c_pango_context_get_type;
	PangoContext* function() c_pango_context_new;
	void function(PangoContext* context) c_pango_context_changed;
	PangoDirection function(PangoContext* context) c_pango_context_get_base_dir;
	PangoGravity function(PangoContext* context) c_pango_context_get_base_gravity;
	PangoFontDescription* function(PangoContext* context) c_pango_context_get_font_description;
	PangoFontMap* function(PangoContext* context) c_pango_context_get_font_map;
	PangoGravity function(PangoContext* context) c_pango_context_get_gravity;
	PangoGravityHint function(PangoContext* context) c_pango_context_get_gravity_hint;
	PangoLanguage* function(PangoContext* context) c_pango_context_get_language;
	PangoMatrix* function(PangoContext* context) c_pango_context_get_matrix;
	PangoFontMetrics* function(PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) c_pango_context_get_metrics;
	uint function(PangoContext* context) c_pango_context_get_serial;
	void function(PangoContext* context, PangoFontFamily*** families, int* nFamilies) c_pango_context_list_families;
	PangoFont* function(PangoContext* context, PangoFontDescription* desc) c_pango_context_load_font;
	PangoFontset* function(PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) c_pango_context_load_fontset;
	void function(PangoContext* context, PangoDirection direction) c_pango_context_set_base_dir;
	void function(PangoContext* context, PangoGravity gravity) c_pango_context_set_base_gravity;
	void function(PangoContext* context, PangoFontDescription* desc) c_pango_context_set_font_description;
	void function(PangoContext* context, PangoFontMap* fontMap) c_pango_context_set_font_map;
	void function(PangoContext* context, PangoGravityHint hint) c_pango_context_set_gravity_hint;
	void function(PangoContext* context, PangoLanguage* language) c_pango_context_set_language;
	void function(PangoContext* context, PangoMatrix* matrix) c_pango_context_set_matrix;
	PangoBidiType function(dchar ch) c_pango_bidi_type_for_unichar;
	void function(const(char)* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen) c_pango_break;
	void function(const(char)* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen) c_pango_default_break;
	PangoDirection function(const(char)* text, int length) c_pango_find_base_dir;
	void function(const(char)* text, int length, int* paragraphDelimiterIndex, int* nextParagraphStart) c_pango_find_paragraph_boundary;
	void function(const(char)* text, int length, int level, PangoLanguage* language, PangoLogAttr* logAttrs, int attrsLen) c_pango_get_log_attrs;
	int function(dchar ch, dchar* mirroredCh) c_pango_get_mirror_char;
	GList* function(PangoContext* context, const(char)* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter) c_pango_itemize;
	GList* function(PangoContext* context, PangoDirection baseDir, const(char)* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter) c_pango_itemize_with_base_dir;
	GList* function(GList* logicalItems) c_pango_reorder_items;
	void function(const(char)* text, int length, PangoAnalysis* analysis, PangoGlyphString* glyphs) c_pango_shape;
	void function(const(char)* itemText, int itemLength, const(char)* paragraphText, int paragraphLength, PangoAnalysis* analysis, PangoGlyphString* glyphs) c_pango_shape_full;
	PangoDirection function(dchar ch) c_pango_unichar_direction;

	// pango.PgCoverage

	PangoCoverage* function(PangoCoverage* coverage) c_pango_coverage_copy;
	PangoCoverageLevel function(PangoCoverage* coverage, int index) c_pango_coverage_get;
	void function(PangoCoverage* coverage, PangoCoverage* other) c_pango_coverage_max;
	PangoCoverage* function(PangoCoverage* coverage) c_pango_coverage_ref;
	void function(PangoCoverage* coverage, int index, PangoCoverageLevel level) c_pango_coverage_set;
	void function(PangoCoverage* coverage, char** bytes, int* nBytes) c_pango_coverage_to_bytes;
	void function(PangoCoverage* coverage) c_pango_coverage_unref;
	PangoCoverage* function(char* bytes, int nBytes) c_pango_coverage_from_bytes;
	PangoCoverage* function() c_pango_coverage_new;

	// pango.PgEngine

	GType function() c_pango_engine_get_type;

	// pango.PgEngineLang

	GType function() c_pango_engine_lang_get_type;

	// pango.PgEngineShape

	GType function() c_pango_engine_shape_get_type;

	// pango.PgFont

	GType function() c_pango_font_get_type;
	void function(PangoFontDescription** descs, int nDescs) c_pango_font_descriptions_free;
	PangoFontDescription* function(PangoFont* font) c_pango_font_describe;
	PangoFontDescription* function(PangoFont* font) c_pango_font_describe_with_absolute_size;
	PangoEngineShape* function(PangoFont* font, PangoLanguage* language, uint ch) c_pango_font_find_shaper;
	PangoCoverage* function(PangoFont* font, PangoLanguage* language) c_pango_font_get_coverage;
	PangoFontMap* function(PangoFont* font) c_pango_font_get_font_map;
	void function(PangoFont* font, PangoGlyph glyph, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_font_get_glyph_extents;
	PangoFontMetrics* function(PangoFont* font, PangoLanguage* language) c_pango_font_get_metrics;

	// pango.PgFontDescription

	GType function() c_pango_font_description_get_type;
	PangoFontDescription* function() c_pango_font_description_new;
	int function(PangoFontDescription* desc, PangoFontDescription* oldMatch, PangoFontDescription* newMatch) c_pango_font_description_better_match;
	PangoFontDescription* function(PangoFontDescription* desc) c_pango_font_description_copy;
	PangoFontDescription* function(PangoFontDescription* desc) c_pango_font_description_copy_static;
	int function(PangoFontDescription* desc1, PangoFontDescription* desc2) c_pango_font_description_equal;
	void function(PangoFontDescription* desc) c_pango_font_description_free;
	const(char)* function(PangoFontDescription* desc) c_pango_font_description_get_family;
	PangoGravity function(PangoFontDescription* desc) c_pango_font_description_get_gravity;
	PangoFontMask function(PangoFontDescription* desc) c_pango_font_description_get_set_fields;
	int function(PangoFontDescription* desc) c_pango_font_description_get_size;
	int function(PangoFontDescription* desc) c_pango_font_description_get_size_is_absolute;
	PangoStretch function(PangoFontDescription* desc) c_pango_font_description_get_stretch;
	PangoStyle function(PangoFontDescription* desc) c_pango_font_description_get_style;
	PangoVariant function(PangoFontDescription* desc) c_pango_font_description_get_variant;
	PangoWeight function(PangoFontDescription* desc) c_pango_font_description_get_weight;
	uint function(PangoFontDescription* desc) c_pango_font_description_hash;
	void function(PangoFontDescription* desc, PangoFontDescription* descToMerge, int replaceExisting) c_pango_font_description_merge;
	void function(PangoFontDescription* desc, PangoFontDescription* descToMerge, int replaceExisting) c_pango_font_description_merge_static;
	void function(PangoFontDescription* desc, double size) c_pango_font_description_set_absolute_size;
	void function(PangoFontDescription* desc, const(char)* family) c_pango_font_description_set_family;
	void function(PangoFontDescription* desc, const(char)* family) c_pango_font_description_set_family_static;
	void function(PangoFontDescription* desc, PangoGravity gravity) c_pango_font_description_set_gravity;
	void function(PangoFontDescription* desc, int size) c_pango_font_description_set_size;
	void function(PangoFontDescription* desc, PangoStretch stretch) c_pango_font_description_set_stretch;
	void function(PangoFontDescription* desc, PangoStyle style) c_pango_font_description_set_style;
	void function(PangoFontDescription* desc, PangoVariant variant) c_pango_font_description_set_variant;
	void function(PangoFontDescription* desc, PangoWeight weight) c_pango_font_description_set_weight;
	char* function(PangoFontDescription* desc) c_pango_font_description_to_filename;
	char* function(PangoFontDescription* desc) c_pango_font_description_to_string;
	void function(PangoFontDescription* desc, PangoFontMask toUnset) c_pango_font_description_unset_fields;
	PangoFontDescription* function(const(char)* str) c_pango_font_description_from_string;

	// pango.PgFontFace

	GType function() c_pango_font_face_get_type;
	PangoFontDescription* function(PangoFontFace* face) c_pango_font_face_describe;
	const(char)* function(PangoFontFace* face) c_pango_font_face_get_face_name;
	int function(PangoFontFace* face) c_pango_font_face_is_synthesized;
	void function(PangoFontFace* face, int** sizes, int* nSizes) c_pango_font_face_list_sizes;

	// pango.PgFontFamily

	GType function() c_pango_font_family_get_type;
	const(char)* function(PangoFontFamily* family) c_pango_font_family_get_name;
	int function(PangoFontFamily* family) c_pango_font_family_is_monospace;
	void function(PangoFontFamily* family, PangoFontFace*** faces, int* nFaces) c_pango_font_family_list_faces;

	// pango.PgFontMap

	GType function() c_pango_font_map_get_type;
	void function(PangoFontMap* fontmap) c_pango_font_map_changed;
	PangoContext* function(PangoFontMap* fontmap) c_pango_font_map_create_context;
	uint function(PangoFontMap* fontmap) c_pango_font_map_get_serial;
	const(char)* function(PangoFontMap* fontmap) c_pango_font_map_get_shape_engine_type;
	void function(PangoFontMap* fontmap, PangoFontFamily*** families, int* nFamilies) c_pango_font_map_list_families;
	PangoFont* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc) c_pango_font_map_load_font;
	PangoFontset* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) c_pango_font_map_load_fontset;

	// pango.PgFontMetrics

	GType function() c_pango_font_metrics_get_type;
	PangoFontMetrics* function() c_pango_font_metrics_new;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_approximate_char_width;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_approximate_digit_width;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_ascent;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_descent;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_strikethrough_position;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_strikethrough_thickness;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_underline_position;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_underline_thickness;
	PangoFontMetrics* function(PangoFontMetrics* metrics) c_pango_font_metrics_ref;
	void function(PangoFontMetrics* metrics) c_pango_font_metrics_unref;

	// pango.PgFontset

	GType function() c_pango_fontset_get_type;
	void function(PangoFontset* fontset, PangoFontsetForeachFunc func, void* data) c_pango_fontset_foreach;
	PangoFont* function(PangoFontset* fontset, uint wc) c_pango_fontset_get_font;
	PangoFontMetrics* function(PangoFontset* fontset) c_pango_fontset_get_metrics;

	// pango.PgFontsetSimple

	GType function() c_pango_fontset_simple_get_type;
	PangoFontsetSimple* function(PangoLanguage* language) c_pango_fontset_simple_new;
	void function(PangoFontsetSimple* fontset, PangoFont* font) c_pango_fontset_simple_append;
	int function(PangoFontsetSimple* fontset) c_pango_fontset_simple_size;

	// pango.PgGlyphItem

	GType function() c_pango_glyph_item_get_type;
	GSList* function(PangoGlyphItem* glyphItem, const(char)* text, PangoAttrList* list) c_pango_glyph_item_apply_attrs;
	PangoGlyphItem* function(PangoGlyphItem* orig) c_pango_glyph_item_copy;
	void function(PangoGlyphItem* glyphItem) c_pango_glyph_item_free;
	void function(PangoGlyphItem* glyphItem, const(char)* text, int* logicalWidths) c_pango_glyph_item_get_logical_widths;
	void function(PangoGlyphItem* glyphItem, const(char)* text, PangoLogAttr* logAttrs, int letterSpacing) c_pango_glyph_item_letter_space;
	PangoGlyphItem* function(PangoGlyphItem* orig, const(char)* text, int splitIndex) c_pango_glyph_item_split;

	// pango.PgGlyphItemIter

	GType function() c_pango_glyph_item_iter_get_type;
	PangoGlyphItemIter* function(PangoGlyphItemIter* orig) c_pango_glyph_item_iter_copy;
	void function(PangoGlyphItemIter* iter) c_pango_glyph_item_iter_free;
	int function(PangoGlyphItemIter* iter, PangoGlyphItem* glyphItem, const(char)* text) c_pango_glyph_item_iter_init_end;
	int function(PangoGlyphItemIter* iter, PangoGlyphItem* glyphItem, const(char)* text) c_pango_glyph_item_iter_init_start;
	int function(PangoGlyphItemIter* iter) c_pango_glyph_item_iter_next_cluster;
	int function(PangoGlyphItemIter* iter) c_pango_glyph_item_iter_prev_cluster;

	// pango.PgGlyphString

	GType function() c_pango_glyph_string_get_type;
	PangoGlyphString* function() c_pango_glyph_string_new;
	PangoGlyphString* function(PangoGlyphString* str) c_pango_glyph_string_copy;
	void function(PangoGlyphString* glyphs, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_glyph_string_extents;
	void function(PangoGlyphString* glyphs, int start, int end, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_glyph_string_extents_range;
	void function(PangoGlyphString* str) c_pango_glyph_string_free;
	void function(PangoGlyphString* glyphs, const(char)* text, int length, int embeddingLevel, int* logicalWidths) c_pango_glyph_string_get_logical_widths;
	int function(PangoGlyphString* glyphs) c_pango_glyph_string_get_width;
	void function(PangoGlyphString* glyphs, char* text, int length, PangoAnalysis* analysis, int index, int trailing, int* xPos) c_pango_glyph_string_index_to_x;
	void function(PangoGlyphString* str, int newLen) c_pango_glyph_string_set_size;
	void function(PangoGlyphString* glyphs, char* text, int length, PangoAnalysis* analysis, int xPos, int* index, int* trailing) c_pango_glyph_string_x_to_index;

	// pango.PgItem

	GType function() c_pango_item_get_type;
	PangoItem* function() c_pango_item_new;
	PangoItem* function(PangoItem* item) c_pango_item_copy;
	void function(PangoItem* item) c_pango_item_free;
	PangoItem* function(PangoItem* orig, int splitIndex, int splitOffset) c_pango_item_split;

	// pango.PgLanguage

	GType function() c_pango_language_get_type;
	const(char)* function(PangoLanguage* language) c_pango_language_get_sample_string;
	PangoScript* function(PangoLanguage* language, int* numScripts) c_pango_language_get_scripts;
	int function(PangoLanguage* language, PangoScript script) c_pango_language_includes_script;
	int function(PangoLanguage* language, const(char)* rangeList) c_pango_language_matches;
	const(char)* function(PangoLanguage* language) c_pango_language_to_string;
	PangoLanguage* function(const(char)* language) c_pango_language_from_string;
	PangoLanguage* function() c_pango_language_get_default;

	// pango.PgLayout

	GType function() c_pango_layout_get_type;
	PangoLayout* function(PangoContext* context) c_pango_layout_new;
	void function(PangoLayout* layout) c_pango_layout_context_changed;
	PangoLayout* function(PangoLayout* src) c_pango_layout_copy;
	PangoAlignment function(PangoLayout* layout) c_pango_layout_get_alignment;
	PangoAttrList* function(PangoLayout* layout) c_pango_layout_get_attributes;
	int function(PangoLayout* layout) c_pango_layout_get_auto_dir;
	int function(PangoLayout* layout) c_pango_layout_get_baseline;
	int function(PangoLayout* layout) c_pango_layout_get_character_count;
	PangoContext* function(PangoLayout* layout) c_pango_layout_get_context;
	void function(PangoLayout* layout, int index, PangoRectangle* strongPos, PangoRectangle* weakPos) c_pango_layout_get_cursor_pos;
	PangoEllipsizeMode function(PangoLayout* layout) c_pango_layout_get_ellipsize;
	void function(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_get_extents;
	PangoFontDescription* function(PangoLayout* layout) c_pango_layout_get_font_description;
	int function(PangoLayout* layout) c_pango_layout_get_height;
	int function(PangoLayout* layout) c_pango_layout_get_indent;
	PangoLayoutIter* function(PangoLayout* layout) c_pango_layout_get_iter;
	int function(PangoLayout* layout) c_pango_layout_get_justify;
	PangoLayoutLine* function(PangoLayout* layout, int line) c_pango_layout_get_line;
	int function(PangoLayout* layout) c_pango_layout_get_line_count;
	PangoLayoutLine* function(PangoLayout* layout, int line) c_pango_layout_get_line_readonly;
	GSList* function(PangoLayout* layout) c_pango_layout_get_lines;
	GSList* function(PangoLayout* layout) c_pango_layout_get_lines_readonly;
	void function(PangoLayout* layout, PangoLogAttr** attrs, int* nAttrs) c_pango_layout_get_log_attrs;
	PangoLogAttr* function(PangoLayout* layout, int* nAttrs) c_pango_layout_get_log_attrs_readonly;
	void function(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_get_pixel_extents;
	void function(PangoLayout* layout, int* width, int* height) c_pango_layout_get_pixel_size;
	uint function(PangoLayout* layout) c_pango_layout_get_serial;
	int function(PangoLayout* layout) c_pango_layout_get_single_paragraph_mode;
	void function(PangoLayout* layout, int* width, int* height) c_pango_layout_get_size;
	int function(PangoLayout* layout) c_pango_layout_get_spacing;
	PangoTabArray* function(PangoLayout* layout) c_pango_layout_get_tabs;
	const(char)* function(PangoLayout* layout) c_pango_layout_get_text;
	int function(PangoLayout* layout) c_pango_layout_get_unknown_glyphs_count;
	int function(PangoLayout* layout) c_pango_layout_get_width;
	PangoWrapMode function(PangoLayout* layout) c_pango_layout_get_wrap;
	void function(PangoLayout* layout, int index, int trailing, int* line, int* xPos) c_pango_layout_index_to_line_x;
	void function(PangoLayout* layout, int index, PangoRectangle* pos) c_pango_layout_index_to_pos;
	int function(PangoLayout* layout) c_pango_layout_is_ellipsized;
	int function(PangoLayout* layout) c_pango_layout_is_wrapped;
	void function(PangoLayout* layout, int strong, int oldIndex, int oldTrailing, int direction, int* newIndex, int* newTrailing) c_pango_layout_move_cursor_visually;
	void function(PangoLayout* layout, PangoAlignment alignment) c_pango_layout_set_alignment;
	void function(PangoLayout* layout, PangoAttrList* attrs) c_pango_layout_set_attributes;
	void function(PangoLayout* layout, int autoDir) c_pango_layout_set_auto_dir;
	void function(PangoLayout* layout, PangoEllipsizeMode ellipsize) c_pango_layout_set_ellipsize;
	void function(PangoLayout* layout, PangoFontDescription* desc) c_pango_layout_set_font_description;
	void function(PangoLayout* layout, int height) c_pango_layout_set_height;
	void function(PangoLayout* layout, int indent) c_pango_layout_set_indent;
	void function(PangoLayout* layout, int justify) c_pango_layout_set_justify;
	void function(PangoLayout* layout, const(char)* markup, int length) c_pango_layout_set_markup;
	void function(PangoLayout* layout, const(char)* markup, int length, dchar accelMarker, dchar* accelChar) c_pango_layout_set_markup_with_accel;
	void function(PangoLayout* layout, int setting) c_pango_layout_set_single_paragraph_mode;
	void function(PangoLayout* layout, int spacing) c_pango_layout_set_spacing;
	void function(PangoLayout* layout, PangoTabArray* tabs) c_pango_layout_set_tabs;
	void function(PangoLayout* layout, const(char)* text, int length) c_pango_layout_set_text;
	void function(PangoLayout* layout, int width) c_pango_layout_set_width;
	void function(PangoLayout* layout, PangoWrapMode wrap) c_pango_layout_set_wrap;
	int function(PangoLayout* layout, int x, int y, int* index, int* trailing) c_pango_layout_xy_to_index;

	// pango.PgLayoutIter

	GType function() c_pango_layout_iter_get_type;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_at_last_line;
	PangoLayoutIter* function(PangoLayoutIter* iter) c_pango_layout_iter_copy;
	void function(PangoLayoutIter* iter) c_pango_layout_iter_free;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_get_baseline;
	void function(PangoLayoutIter* iter, PangoRectangle* logicalRect) c_pango_layout_iter_get_char_extents;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_cluster_extents;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_get_index;
	PangoLayout* function(PangoLayoutIter* iter) c_pango_layout_iter_get_layout;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_layout_extents;
	PangoLayoutLine* function(PangoLayoutIter* iter) c_pango_layout_iter_get_line;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_line_extents;
	PangoLayoutLine* function(PangoLayoutIter* iter) c_pango_layout_iter_get_line_readonly;
	void function(PangoLayoutIter* iter, int* y0, int* y1) c_pango_layout_iter_get_line_yrange;
	PangoLayoutRun* function(PangoLayoutIter* iter) c_pango_layout_iter_get_run;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_run_extents;
	PangoLayoutRun* function(PangoLayoutIter* iter) c_pango_layout_iter_get_run_readonly;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_next_char;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_next_cluster;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_next_line;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_next_run;

	// pango.PgLayoutLine

	GType function() c_pango_layout_line_get_type;
	void function(PangoLayoutLine* line, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_line_get_extents;
	void function(PangoLayoutLine* layoutLine, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_line_get_pixel_extents;
	void function(PangoLayoutLine* line, int startIndex, int endIndex, int** ranges, int* nRanges) c_pango_layout_line_get_x_ranges;
	void function(PangoLayoutLine* line, int index, int trailing, int* xPos) c_pango_layout_line_index_to_x;
	PangoLayoutLine* function(PangoLayoutLine* line) c_pango_layout_line_ref;
	void function(PangoLayoutLine* line) c_pango_layout_line_unref;
	int function(PangoLayoutLine* line, int xPos, int* index, int* trailing) c_pango_layout_line_x_to_index;

	// pango.PgMap

	PangoEngine* function(PangoMap* map, PangoScript script) c_pango_map_get_engine;
	void function(PangoMap* map, PangoScript script, GSList** exactEngines, GSList** fallbackEngines) c_pango_map_get_engines;
	PangoMap* function(PangoLanguage* language, uint engineTypeId, uint renderTypeId) c_pango_find_map;
	void function(PangoIncludedModule* modul) c_pango_module_register;

	// pango.PgMatrix

	GType function() c_pango_matrix_get_type;
	void function(PangoMatrix* matrix, PangoMatrix* newMatrix) c_pango_matrix_concat;
	PangoMatrix* function(PangoMatrix* matrix) c_pango_matrix_copy;
	void function(PangoMatrix* matrix) c_pango_matrix_free;
	double function(PangoMatrix* matrix) c_pango_matrix_get_font_scale_factor;
	void function(PangoMatrix* matrix, double* xscale, double* yscale) c_pango_matrix_get_font_scale_factors;
	void function(PangoMatrix* matrix, double degrees) c_pango_matrix_rotate;
	void function(PangoMatrix* matrix, double scaleX, double scaleY) c_pango_matrix_scale;
	void function(PangoMatrix* matrix, double* dx, double* dy) c_pango_matrix_transform_distance;
	void function(PangoMatrix* matrix, PangoRectangle* rect) c_pango_matrix_transform_pixel_rectangle;
	void function(PangoMatrix* matrix, double* x, double* y) c_pango_matrix_transform_point;
	void function(PangoMatrix* matrix, PangoRectangle* rect) c_pango_matrix_transform_rectangle;
	void function(PangoMatrix* matrix, double tx, double ty) c_pango_matrix_translate;
	void function(PangoRectangle* inclusive, PangoRectangle* nearest) c_pango_extents_to_pixels;
	int function(double d) c_pango_units_from_double;
	double function(int i) c_pango_units_to_double;

	// pango.PgRenderer

	GType function() c_pango_renderer_get_type;
	void function(PangoRenderer* renderer) c_pango_renderer_activate;
	void function(PangoRenderer* renderer) c_pango_renderer_deactivate;
	void function(PangoRenderer* renderer, int x, int y, int width, int height) c_pango_renderer_draw_error_underline;
	void function(PangoRenderer* renderer, PangoFont* font, PangoGlyph glyph, double x, double y) c_pango_renderer_draw_glyph;
	void function(PangoRenderer* renderer, const(char)* text, PangoGlyphItem* glyphItem, int x, int y) c_pango_renderer_draw_glyph_item;
	void function(PangoRenderer* renderer, PangoFont* font, PangoGlyphString* glyphs, int x, int y) c_pango_renderer_draw_glyphs;
	void function(PangoRenderer* renderer, PangoLayout* layout, int x, int y) c_pango_renderer_draw_layout;
	void function(PangoRenderer* renderer, PangoLayoutLine* line, int x, int y) c_pango_renderer_draw_layout_line;
	void function(PangoRenderer* renderer, PangoRenderPart part, int x, int y, int width, int height) c_pango_renderer_draw_rectangle;
	void function(PangoRenderer* renderer, PangoRenderPart part, double y1, double x11, double x21, double y2, double x12, double x22) c_pango_renderer_draw_trapezoid;
	ushort function(PangoRenderer* renderer, PangoRenderPart part) c_pango_renderer_get_alpha;
	PangoColor* function(PangoRenderer* renderer, PangoRenderPart part) c_pango_renderer_get_color;
	PangoLayout* function(PangoRenderer* renderer) c_pango_renderer_get_layout;
	PangoLayoutLine* function(PangoRenderer* renderer) c_pango_renderer_get_layout_line;
	PangoMatrix* function(PangoRenderer* renderer) c_pango_renderer_get_matrix;
	void function(PangoRenderer* renderer, PangoRenderPart part) c_pango_renderer_part_changed;
	void function(PangoRenderer* renderer, PangoRenderPart part, ushort alpha) c_pango_renderer_set_alpha;
	void function(PangoRenderer* renderer, PangoRenderPart part, PangoColor* color) c_pango_renderer_set_color;
	void function(PangoRenderer* renderer, PangoMatrix* matrix) c_pango_renderer_set_matrix;

	// pango.PgScriptIter

	void function(PangoScriptIter* iter) c_pango_script_iter_free;
	void function(PangoScriptIter* iter, char** start, char** end, PangoScript* script) c_pango_script_iter_get_range;
	int function(PangoScriptIter* iter) c_pango_script_iter_next;
	PangoScriptIter* function(const(char)* text, int length) c_pango_script_iter_new;

	// pango.PgTabArray

	GType function() c_pango_tab_array_get_type;
	PangoTabArray* function(int initialSize, int positionsInPixels) c_pango_tab_array_new;
	PangoTabArray* function(int size, int positionsInPixels, PangoTabAlign firstAlignment, int firstPosition, ... ) c_pango_tab_array_new_with_positions;
	PangoTabArray* function(PangoTabArray* src) c_pango_tab_array_copy;
	void function(PangoTabArray* tabArray) c_pango_tab_array_free;
	int function(PangoTabArray* tabArray) c_pango_tab_array_get_positions_in_pixels;
	int function(PangoTabArray* tabArray) c_pango_tab_array_get_size;
	void function(PangoTabArray* tabArray, int tabIndex, PangoTabAlign* alignment, int* location) c_pango_tab_array_get_tab;
	void function(PangoTabArray* tabArray, PangoTabAlign** alignments, int** locations) c_pango_tab_array_get_tabs;
	void function(PangoTabArray* tabArray, int newSize) c_pango_tab_array_resize;
	void function(PangoTabArray* tabArray, int tabIndex, PangoTabAlign alignment, int location) c_pango_tab_array_set_tab;

	// pango.PgCairoFontMap

	GType function() c_pango_cairo_font_map_get_type;
	cairo_scaled_font_t* function(PangoCairoFont* font) c_pango_cairo_font_get_scaled_font;
	PangoFontMap* function() c_pango_cairo_font_map_get_default;
	PangoFontMap* function() c_pango_cairo_font_map_new;
	PangoFontMap* function(cairo_font_type_t fonttype) c_pango_cairo_font_map_new_for_font_type;
	PangoContext* function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_create_context;
	cairo_font_type_t function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_get_font_type;
	double function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_get_resolution;
	void function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_set_default;
	void function(PangoCairoFontMap* fontmap, double dpi) c_pango_cairo_font_map_set_resolution;

	// pango.PgMiscellaneous

	char* function(const(char)* key) c_pango_config_key_get;
	char* function(const(char)* key) c_pango_config_key_get_system;
	const(char)* function() c_pango_get_lib_subdirectory;
	const(char)* function() c_pango_get_sysconf_subdirectory;
	int function(dchar ch) c_pango_is_zero_width;
	ubyte* function(const(char)* text, int length, PangoDirection* pbaseDir) c_pango_log2vis_get_embedding_levels;
	void function(const(char)* fontname, char*** families, int* nFamilies) c_pango_lookup_aliases;
	int function(GType type, const(char)* str, int* value, int warn, char** possibleValues) c_pango_parse_enum;
	int function(const(char)* str, PangoStretch* stretch, int warn) c_pango_parse_stretch;
	int function(const(char)* str, PangoStyle* style, int warn) c_pango_parse_style;
	int function(const(char)* str, PangoVariant* variant, int warn) c_pango_parse_variant;
	int function(const(char)* str, PangoWeight* weight, int warn) c_pango_parse_weight;
	void function(int* thickness, int* position) c_pango_quantize_line_geometry;
	int function(FILE* stream, GString* str) c_pango_read_line;
	int function(char** pos, int* output) c_pango_scan_int;
	int function(char** pos, GString* output) c_pango_scan_string;
	int function(char** pos, GString* output) c_pango_scan_word;
	int function(char** pos) c_pango_skip_space;
	char** function(const(char)* str) c_pango_split_file_list;
	char* function(const(char)* str) c_pango_trim_string;

	// pango.PgVertical

	PangoGravity function(PangoMatrix* matrix) c_pango_gravity_get_for_matrix;
	PangoGravity function(PangoScript script, PangoGravity baseGravity, PangoGravityHint hint) c_pango_gravity_get_for_script;
	PangoGravity function(PangoScript script, int wide, PangoGravity baseGravity, PangoGravityHint hint) c_pango_gravity_get_for_script_and_width;
	double function(PangoGravity gravity) c_pango_gravity_to_rotation;

	// pango.PgScript

	PangoScript function(dchar ch) c_pango_script_for_unichar;
	PangoLanguage* function(PangoScript script) c_pango_script_get_sample_language;

	// pango.PgVersion

	int function() c_pango_version;
	const(char)* function(int requiredMajor, int requiredMinor, int requiredMicro) c_pango_version_check;
	const(char)* function() c_pango_version_string;

	// pango.PgCairo

	cairo_font_options_t* function(PangoContext* context) c_pango_cairo_context_get_font_options;
	double function(PangoContext* context) c_pango_cairo_context_get_resolution;
	PangoCairoShapeRendererFunc function(PangoContext* context, void** data) c_pango_cairo_context_get_shape_renderer;
	void function(PangoContext* context, cairo_font_options_t* options) c_pango_cairo_context_set_font_options;
	void function(PangoContext* context, double dpi) c_pango_cairo_context_set_resolution;
	void function(PangoContext* context, PangoCairoShapeRendererFunc func, void* data, GDestroyNotify dnotify) c_pango_cairo_context_set_shape_renderer;
	PangoContext* function(cairo_t* cr) c_pango_cairo_create_context;
	PangoLayout* function(cairo_t* cr) c_pango_cairo_create_layout;
	void function(cairo_t* cr, double x, double y, double width, double height) c_pango_cairo_error_underline_path;
	void function(cairo_t* cr, PangoFont* font, PangoGlyphString* glyphs) c_pango_cairo_glyph_string_path;
	void function(cairo_t* cr, PangoLayoutLine* line) c_pango_cairo_layout_line_path;
	void function(cairo_t* cr, PangoLayout* layout) c_pango_cairo_layout_path;
	void function(cairo_t* cr, double x, double y, double width, double height) c_pango_cairo_show_error_underline;
	void function(cairo_t* cr, const(char)* text, PangoGlyphItem* glyphItem) c_pango_cairo_show_glyph_item;
	void function(cairo_t* cr, PangoFont* font, PangoGlyphString* glyphs) c_pango_cairo_show_glyph_string;
	void function(cairo_t* cr, PangoLayout* layout) c_pango_cairo_show_layout;
	void function(cairo_t* cr, PangoLayoutLine* line) c_pango_cairo_show_layout_line;
	void function(cairo_t* cr, PangoContext* context) c_pango_cairo_update_context;
	void function(cairo_t* cr, PangoLayout* layout) c_pango_cairo_update_layout;
}


// pango.PgAttributeFontDesc

alias c_pango_attr_font_desc_new pango_attr_font_desc_new;

// pango.PgAttrFontFeatures

alias c_pango_attr_font_features_new pango_attr_font_features_new;

// pango.PgAttributeIterator

alias c_pango_attr_iterator_copy pango_attr_iterator_copy;
alias c_pango_attr_iterator_destroy pango_attr_iterator_destroy;
alias c_pango_attr_iterator_get pango_attr_iterator_get;
alias c_pango_attr_iterator_get_attrs pango_attr_iterator_get_attrs;
alias c_pango_attr_iterator_get_font pango_attr_iterator_get_font;
alias c_pango_attr_iterator_next pango_attr_iterator_next;
alias c_pango_attr_iterator_range pango_attr_iterator_range;

// pango.PgAttributeLanguage

alias c_pango_attr_language_new pango_attr_language_new;

// pango.PgAttributeList

alias c_pango_attr_list_get_type pango_attr_list_get_type;
alias c_pango_attr_list_new pango_attr_list_new;
alias c_pango_attr_list_change pango_attr_list_change;
alias c_pango_attr_list_copy pango_attr_list_copy;
alias c_pango_attr_list_filter pango_attr_list_filter;
alias c_pango_attr_list_get_iterator pango_attr_list_get_iterator;
alias c_pango_attr_list_insert pango_attr_list_insert;
alias c_pango_attr_list_insert_before pango_attr_list_insert_before;
alias c_pango_attr_list_ref pango_attr_list_ref;
alias c_pango_attr_list_splice pango_attr_list_splice;
alias c_pango_attr_list_unref pango_attr_list_unref;

// pango.PgAttributeShape

alias c_pango_attr_shape_new pango_attr_shape_new;
alias c_pango_attr_shape_new_with_data pango_attr_shape_new_with_data;

// pango.PgAttributeSize

alias c_pango_attr_size_new pango_attr_size_new;
alias c_pango_attr_size_new_absolute pango_attr_size_new_absolute;

// pango.PgAttribute

alias c_pango_attribute_copy pango_attribute_copy;
alias c_pango_attribute_destroy pango_attribute_destroy;
alias c_pango_attribute_equal pango_attribute_equal;
alias c_pango_attribute_init pango_attribute_init;
alias c_pango_attr_background_new pango_attr_background_new;
alias c_pango_attr_background_alpha_new pango_attr_background_alpha_new;
alias c_pango_attr_fallback_new pango_attr_fallback_new;
alias c_pango_attr_family_new pango_attr_family_new;
alias c_pango_attr_foreground_new pango_attr_foreground_new;
alias c_pango_attr_foreground_alpha_new pango_attr_foreground_alpha_new;
alias c_pango_attr_gravity_hint_new pango_attr_gravity_hint_new;
alias c_pango_attr_gravity_new pango_attr_gravity_new;
alias c_pango_attr_letter_spacing_new pango_attr_letter_spacing_new;
alias c_pango_attr_rise_new pango_attr_rise_new;
alias c_pango_attr_scale_new pango_attr_scale_new;
alias c_pango_attr_stretch_new pango_attr_stretch_new;
alias c_pango_attr_strikethrough_color_new pango_attr_strikethrough_color_new;
alias c_pango_attr_strikethrough_new pango_attr_strikethrough_new;
alias c_pango_attr_style_new pango_attr_style_new;
alias c_pango_attr_type_get_name pango_attr_type_get_name;
alias c_pango_attr_type_register pango_attr_type_register;
alias c_pango_attr_underline_color_new pango_attr_underline_color_new;
alias c_pango_attr_underline_new pango_attr_underline_new;
alias c_pango_attr_variant_new pango_attr_variant_new;
alias c_pango_attr_weight_new pango_attr_weight_new;
alias c_pango_markup_parser_finish pango_markup_parser_finish;
alias c_pango_markup_parser_new pango_markup_parser_new;
alias c_pango_parse_markup pango_parse_markup;

// pango.PgColor

alias c_pango_color_get_type pango_color_get_type;
alias c_pango_color_copy pango_color_copy;
alias c_pango_color_free pango_color_free;
alias c_pango_color_parse pango_color_parse;
alias c_pango_color_to_string pango_color_to_string;

// pango.PgContext

alias c_pango_context_get_type pango_context_get_type;
alias c_pango_context_new pango_context_new;
alias c_pango_context_changed pango_context_changed;
alias c_pango_context_get_base_dir pango_context_get_base_dir;
alias c_pango_context_get_base_gravity pango_context_get_base_gravity;
alias c_pango_context_get_font_description pango_context_get_font_description;
alias c_pango_context_get_font_map pango_context_get_font_map;
alias c_pango_context_get_gravity pango_context_get_gravity;
alias c_pango_context_get_gravity_hint pango_context_get_gravity_hint;
alias c_pango_context_get_language pango_context_get_language;
alias c_pango_context_get_matrix pango_context_get_matrix;
alias c_pango_context_get_metrics pango_context_get_metrics;
alias c_pango_context_get_serial pango_context_get_serial;
alias c_pango_context_list_families pango_context_list_families;
alias c_pango_context_load_font pango_context_load_font;
alias c_pango_context_load_fontset pango_context_load_fontset;
alias c_pango_context_set_base_dir pango_context_set_base_dir;
alias c_pango_context_set_base_gravity pango_context_set_base_gravity;
alias c_pango_context_set_font_description pango_context_set_font_description;
alias c_pango_context_set_font_map pango_context_set_font_map;
alias c_pango_context_set_gravity_hint pango_context_set_gravity_hint;
alias c_pango_context_set_language pango_context_set_language;
alias c_pango_context_set_matrix pango_context_set_matrix;
alias c_pango_bidi_type_for_unichar pango_bidi_type_for_unichar;
alias c_pango_break pango_break;
alias c_pango_default_break pango_default_break;
alias c_pango_find_base_dir pango_find_base_dir;
alias c_pango_find_paragraph_boundary pango_find_paragraph_boundary;
alias c_pango_get_log_attrs pango_get_log_attrs;
alias c_pango_get_mirror_char pango_get_mirror_char;
alias c_pango_itemize pango_itemize;
alias c_pango_itemize_with_base_dir pango_itemize_with_base_dir;
alias c_pango_reorder_items pango_reorder_items;
alias c_pango_shape pango_shape;
alias c_pango_shape_full pango_shape_full;
alias c_pango_unichar_direction pango_unichar_direction;

// pango.PgCoverage

alias c_pango_coverage_copy pango_coverage_copy;
alias c_pango_coverage_get pango_coverage_get;
alias c_pango_coverage_max pango_coverage_max;
alias c_pango_coverage_ref pango_coverage_ref;
alias c_pango_coverage_set pango_coverage_set;
alias c_pango_coverage_to_bytes pango_coverage_to_bytes;
alias c_pango_coverage_unref pango_coverage_unref;
alias c_pango_coverage_from_bytes pango_coverage_from_bytes;
alias c_pango_coverage_new pango_coverage_new;

// pango.PgEngine

alias c_pango_engine_get_type pango_engine_get_type;

// pango.PgEngineLang

alias c_pango_engine_lang_get_type pango_engine_lang_get_type;

// pango.PgEngineShape

alias c_pango_engine_shape_get_type pango_engine_shape_get_type;

// pango.PgFont

alias c_pango_font_get_type pango_font_get_type;
alias c_pango_font_descriptions_free pango_font_descriptions_free;
alias c_pango_font_describe pango_font_describe;
alias c_pango_font_describe_with_absolute_size pango_font_describe_with_absolute_size;
alias c_pango_font_find_shaper pango_font_find_shaper;
alias c_pango_font_get_coverage pango_font_get_coverage;
alias c_pango_font_get_font_map pango_font_get_font_map;
alias c_pango_font_get_glyph_extents pango_font_get_glyph_extents;
alias c_pango_font_get_metrics pango_font_get_metrics;

// pango.PgFontDescription

alias c_pango_font_description_get_type pango_font_description_get_type;
alias c_pango_font_description_new pango_font_description_new;
alias c_pango_font_description_better_match pango_font_description_better_match;
alias c_pango_font_description_copy pango_font_description_copy;
alias c_pango_font_description_copy_static pango_font_description_copy_static;
alias c_pango_font_description_equal pango_font_description_equal;
alias c_pango_font_description_free pango_font_description_free;
alias c_pango_font_description_get_family pango_font_description_get_family;
alias c_pango_font_description_get_gravity pango_font_description_get_gravity;
alias c_pango_font_description_get_set_fields pango_font_description_get_set_fields;
alias c_pango_font_description_get_size pango_font_description_get_size;
alias c_pango_font_description_get_size_is_absolute pango_font_description_get_size_is_absolute;
alias c_pango_font_description_get_stretch pango_font_description_get_stretch;
alias c_pango_font_description_get_style pango_font_description_get_style;
alias c_pango_font_description_get_variant pango_font_description_get_variant;
alias c_pango_font_description_get_weight pango_font_description_get_weight;
alias c_pango_font_description_hash pango_font_description_hash;
alias c_pango_font_description_merge pango_font_description_merge;
alias c_pango_font_description_merge_static pango_font_description_merge_static;
alias c_pango_font_description_set_absolute_size pango_font_description_set_absolute_size;
alias c_pango_font_description_set_family pango_font_description_set_family;
alias c_pango_font_description_set_family_static pango_font_description_set_family_static;
alias c_pango_font_description_set_gravity pango_font_description_set_gravity;
alias c_pango_font_description_set_size pango_font_description_set_size;
alias c_pango_font_description_set_stretch pango_font_description_set_stretch;
alias c_pango_font_description_set_style pango_font_description_set_style;
alias c_pango_font_description_set_variant pango_font_description_set_variant;
alias c_pango_font_description_set_weight pango_font_description_set_weight;
alias c_pango_font_description_to_filename pango_font_description_to_filename;
alias c_pango_font_description_to_string pango_font_description_to_string;
alias c_pango_font_description_unset_fields pango_font_description_unset_fields;
alias c_pango_font_description_from_string pango_font_description_from_string;

// pango.PgFontFace

alias c_pango_font_face_get_type pango_font_face_get_type;
alias c_pango_font_face_describe pango_font_face_describe;
alias c_pango_font_face_get_face_name pango_font_face_get_face_name;
alias c_pango_font_face_is_synthesized pango_font_face_is_synthesized;
alias c_pango_font_face_list_sizes pango_font_face_list_sizes;

// pango.PgFontFamily

alias c_pango_font_family_get_type pango_font_family_get_type;
alias c_pango_font_family_get_name pango_font_family_get_name;
alias c_pango_font_family_is_monospace pango_font_family_is_monospace;
alias c_pango_font_family_list_faces pango_font_family_list_faces;

// pango.PgFontMap

alias c_pango_font_map_get_type pango_font_map_get_type;
alias c_pango_font_map_changed pango_font_map_changed;
alias c_pango_font_map_create_context pango_font_map_create_context;
alias c_pango_font_map_get_serial pango_font_map_get_serial;
alias c_pango_font_map_get_shape_engine_type pango_font_map_get_shape_engine_type;
alias c_pango_font_map_list_families pango_font_map_list_families;
alias c_pango_font_map_load_font pango_font_map_load_font;
alias c_pango_font_map_load_fontset pango_font_map_load_fontset;

// pango.PgFontMetrics

alias c_pango_font_metrics_get_type pango_font_metrics_get_type;
alias c_pango_font_metrics_new pango_font_metrics_new;
alias c_pango_font_metrics_get_approximate_char_width pango_font_metrics_get_approximate_char_width;
alias c_pango_font_metrics_get_approximate_digit_width pango_font_metrics_get_approximate_digit_width;
alias c_pango_font_metrics_get_ascent pango_font_metrics_get_ascent;
alias c_pango_font_metrics_get_descent pango_font_metrics_get_descent;
alias c_pango_font_metrics_get_strikethrough_position pango_font_metrics_get_strikethrough_position;
alias c_pango_font_metrics_get_strikethrough_thickness pango_font_metrics_get_strikethrough_thickness;
alias c_pango_font_metrics_get_underline_position pango_font_metrics_get_underline_position;
alias c_pango_font_metrics_get_underline_thickness pango_font_metrics_get_underline_thickness;
alias c_pango_font_metrics_ref pango_font_metrics_ref;
alias c_pango_font_metrics_unref pango_font_metrics_unref;

// pango.PgFontset

alias c_pango_fontset_get_type pango_fontset_get_type;
alias c_pango_fontset_foreach pango_fontset_foreach;
alias c_pango_fontset_get_font pango_fontset_get_font;
alias c_pango_fontset_get_metrics pango_fontset_get_metrics;

// pango.PgFontsetSimple

alias c_pango_fontset_simple_get_type pango_fontset_simple_get_type;
alias c_pango_fontset_simple_new pango_fontset_simple_new;
alias c_pango_fontset_simple_append pango_fontset_simple_append;
alias c_pango_fontset_simple_size pango_fontset_simple_size;

// pango.PgGlyphItem

alias c_pango_glyph_item_get_type pango_glyph_item_get_type;
alias c_pango_glyph_item_apply_attrs pango_glyph_item_apply_attrs;
alias c_pango_glyph_item_copy pango_glyph_item_copy;
alias c_pango_glyph_item_free pango_glyph_item_free;
alias c_pango_glyph_item_get_logical_widths pango_glyph_item_get_logical_widths;
alias c_pango_glyph_item_letter_space pango_glyph_item_letter_space;
alias c_pango_glyph_item_split pango_glyph_item_split;

// pango.PgGlyphItemIter

alias c_pango_glyph_item_iter_get_type pango_glyph_item_iter_get_type;
alias c_pango_glyph_item_iter_copy pango_glyph_item_iter_copy;
alias c_pango_glyph_item_iter_free pango_glyph_item_iter_free;
alias c_pango_glyph_item_iter_init_end pango_glyph_item_iter_init_end;
alias c_pango_glyph_item_iter_init_start pango_glyph_item_iter_init_start;
alias c_pango_glyph_item_iter_next_cluster pango_glyph_item_iter_next_cluster;
alias c_pango_glyph_item_iter_prev_cluster pango_glyph_item_iter_prev_cluster;

// pango.PgGlyphString

alias c_pango_glyph_string_get_type pango_glyph_string_get_type;
alias c_pango_glyph_string_new pango_glyph_string_new;
alias c_pango_glyph_string_copy pango_glyph_string_copy;
alias c_pango_glyph_string_extents pango_glyph_string_extents;
alias c_pango_glyph_string_extents_range pango_glyph_string_extents_range;
alias c_pango_glyph_string_free pango_glyph_string_free;
alias c_pango_glyph_string_get_logical_widths pango_glyph_string_get_logical_widths;
alias c_pango_glyph_string_get_width pango_glyph_string_get_width;
alias c_pango_glyph_string_index_to_x pango_glyph_string_index_to_x;
alias c_pango_glyph_string_set_size pango_glyph_string_set_size;
alias c_pango_glyph_string_x_to_index pango_glyph_string_x_to_index;

// pango.PgItem

alias c_pango_item_get_type pango_item_get_type;
alias c_pango_item_new pango_item_new;
alias c_pango_item_copy pango_item_copy;
alias c_pango_item_free pango_item_free;
alias c_pango_item_split pango_item_split;

// pango.PgLanguage

alias c_pango_language_get_type pango_language_get_type;
alias c_pango_language_get_sample_string pango_language_get_sample_string;
alias c_pango_language_get_scripts pango_language_get_scripts;
alias c_pango_language_includes_script pango_language_includes_script;
alias c_pango_language_matches pango_language_matches;
alias c_pango_language_to_string pango_language_to_string;
alias c_pango_language_from_string pango_language_from_string;
alias c_pango_language_get_default pango_language_get_default;

// pango.PgLayout

alias c_pango_layout_get_type pango_layout_get_type;
alias c_pango_layout_new pango_layout_new;
alias c_pango_layout_context_changed pango_layout_context_changed;
alias c_pango_layout_copy pango_layout_copy;
alias c_pango_layout_get_alignment pango_layout_get_alignment;
alias c_pango_layout_get_attributes pango_layout_get_attributes;
alias c_pango_layout_get_auto_dir pango_layout_get_auto_dir;
alias c_pango_layout_get_baseline pango_layout_get_baseline;
alias c_pango_layout_get_character_count pango_layout_get_character_count;
alias c_pango_layout_get_context pango_layout_get_context;
alias c_pango_layout_get_cursor_pos pango_layout_get_cursor_pos;
alias c_pango_layout_get_ellipsize pango_layout_get_ellipsize;
alias c_pango_layout_get_extents pango_layout_get_extents;
alias c_pango_layout_get_font_description pango_layout_get_font_description;
alias c_pango_layout_get_height pango_layout_get_height;
alias c_pango_layout_get_indent pango_layout_get_indent;
alias c_pango_layout_get_iter pango_layout_get_iter;
alias c_pango_layout_get_justify pango_layout_get_justify;
alias c_pango_layout_get_line pango_layout_get_line;
alias c_pango_layout_get_line_count pango_layout_get_line_count;
alias c_pango_layout_get_line_readonly pango_layout_get_line_readonly;
alias c_pango_layout_get_lines pango_layout_get_lines;
alias c_pango_layout_get_lines_readonly pango_layout_get_lines_readonly;
alias c_pango_layout_get_log_attrs pango_layout_get_log_attrs;
alias c_pango_layout_get_log_attrs_readonly pango_layout_get_log_attrs_readonly;
alias c_pango_layout_get_pixel_extents pango_layout_get_pixel_extents;
alias c_pango_layout_get_pixel_size pango_layout_get_pixel_size;
alias c_pango_layout_get_serial pango_layout_get_serial;
alias c_pango_layout_get_single_paragraph_mode pango_layout_get_single_paragraph_mode;
alias c_pango_layout_get_size pango_layout_get_size;
alias c_pango_layout_get_spacing pango_layout_get_spacing;
alias c_pango_layout_get_tabs pango_layout_get_tabs;
alias c_pango_layout_get_text pango_layout_get_text;
alias c_pango_layout_get_unknown_glyphs_count pango_layout_get_unknown_glyphs_count;
alias c_pango_layout_get_width pango_layout_get_width;
alias c_pango_layout_get_wrap pango_layout_get_wrap;
alias c_pango_layout_index_to_line_x pango_layout_index_to_line_x;
alias c_pango_layout_index_to_pos pango_layout_index_to_pos;
alias c_pango_layout_is_ellipsized pango_layout_is_ellipsized;
alias c_pango_layout_is_wrapped pango_layout_is_wrapped;
alias c_pango_layout_move_cursor_visually pango_layout_move_cursor_visually;
alias c_pango_layout_set_alignment pango_layout_set_alignment;
alias c_pango_layout_set_attributes pango_layout_set_attributes;
alias c_pango_layout_set_auto_dir pango_layout_set_auto_dir;
alias c_pango_layout_set_ellipsize pango_layout_set_ellipsize;
alias c_pango_layout_set_font_description pango_layout_set_font_description;
alias c_pango_layout_set_height pango_layout_set_height;
alias c_pango_layout_set_indent pango_layout_set_indent;
alias c_pango_layout_set_justify pango_layout_set_justify;
alias c_pango_layout_set_markup pango_layout_set_markup;
alias c_pango_layout_set_markup_with_accel pango_layout_set_markup_with_accel;
alias c_pango_layout_set_single_paragraph_mode pango_layout_set_single_paragraph_mode;
alias c_pango_layout_set_spacing pango_layout_set_spacing;
alias c_pango_layout_set_tabs pango_layout_set_tabs;
alias c_pango_layout_set_text pango_layout_set_text;
alias c_pango_layout_set_width pango_layout_set_width;
alias c_pango_layout_set_wrap pango_layout_set_wrap;
alias c_pango_layout_xy_to_index pango_layout_xy_to_index;

// pango.PgLayoutIter

alias c_pango_layout_iter_get_type pango_layout_iter_get_type;
alias c_pango_layout_iter_at_last_line pango_layout_iter_at_last_line;
alias c_pango_layout_iter_copy pango_layout_iter_copy;
alias c_pango_layout_iter_free pango_layout_iter_free;
alias c_pango_layout_iter_get_baseline pango_layout_iter_get_baseline;
alias c_pango_layout_iter_get_char_extents pango_layout_iter_get_char_extents;
alias c_pango_layout_iter_get_cluster_extents pango_layout_iter_get_cluster_extents;
alias c_pango_layout_iter_get_index pango_layout_iter_get_index;
alias c_pango_layout_iter_get_layout pango_layout_iter_get_layout;
alias c_pango_layout_iter_get_layout_extents pango_layout_iter_get_layout_extents;
alias c_pango_layout_iter_get_line pango_layout_iter_get_line;
alias c_pango_layout_iter_get_line_extents pango_layout_iter_get_line_extents;
alias c_pango_layout_iter_get_line_readonly pango_layout_iter_get_line_readonly;
alias c_pango_layout_iter_get_line_yrange pango_layout_iter_get_line_yrange;
alias c_pango_layout_iter_get_run pango_layout_iter_get_run;
alias c_pango_layout_iter_get_run_extents pango_layout_iter_get_run_extents;
alias c_pango_layout_iter_get_run_readonly pango_layout_iter_get_run_readonly;
alias c_pango_layout_iter_next_char pango_layout_iter_next_char;
alias c_pango_layout_iter_next_cluster pango_layout_iter_next_cluster;
alias c_pango_layout_iter_next_line pango_layout_iter_next_line;
alias c_pango_layout_iter_next_run pango_layout_iter_next_run;

// pango.PgLayoutLine

alias c_pango_layout_line_get_type pango_layout_line_get_type;
alias c_pango_layout_line_get_extents pango_layout_line_get_extents;
alias c_pango_layout_line_get_pixel_extents pango_layout_line_get_pixel_extents;
alias c_pango_layout_line_get_x_ranges pango_layout_line_get_x_ranges;
alias c_pango_layout_line_index_to_x pango_layout_line_index_to_x;
alias c_pango_layout_line_ref pango_layout_line_ref;
alias c_pango_layout_line_unref pango_layout_line_unref;
alias c_pango_layout_line_x_to_index pango_layout_line_x_to_index;

// pango.PgMap

alias c_pango_map_get_engine pango_map_get_engine;
alias c_pango_map_get_engines pango_map_get_engines;
alias c_pango_find_map pango_find_map;
alias c_pango_module_register pango_module_register;

// pango.PgMatrix

alias c_pango_matrix_get_type pango_matrix_get_type;
alias c_pango_matrix_concat pango_matrix_concat;
alias c_pango_matrix_copy pango_matrix_copy;
alias c_pango_matrix_free pango_matrix_free;
alias c_pango_matrix_get_font_scale_factor pango_matrix_get_font_scale_factor;
alias c_pango_matrix_get_font_scale_factors pango_matrix_get_font_scale_factors;
alias c_pango_matrix_rotate pango_matrix_rotate;
alias c_pango_matrix_scale pango_matrix_scale;
alias c_pango_matrix_transform_distance pango_matrix_transform_distance;
alias c_pango_matrix_transform_pixel_rectangle pango_matrix_transform_pixel_rectangle;
alias c_pango_matrix_transform_point pango_matrix_transform_point;
alias c_pango_matrix_transform_rectangle pango_matrix_transform_rectangle;
alias c_pango_matrix_translate pango_matrix_translate;
alias c_pango_extents_to_pixels pango_extents_to_pixels;
alias c_pango_units_from_double pango_units_from_double;
alias c_pango_units_to_double pango_units_to_double;

// pango.PgRenderer

alias c_pango_renderer_get_type pango_renderer_get_type;
alias c_pango_renderer_activate pango_renderer_activate;
alias c_pango_renderer_deactivate pango_renderer_deactivate;
alias c_pango_renderer_draw_error_underline pango_renderer_draw_error_underline;
alias c_pango_renderer_draw_glyph pango_renderer_draw_glyph;
alias c_pango_renderer_draw_glyph_item pango_renderer_draw_glyph_item;
alias c_pango_renderer_draw_glyphs pango_renderer_draw_glyphs;
alias c_pango_renderer_draw_layout pango_renderer_draw_layout;
alias c_pango_renderer_draw_layout_line pango_renderer_draw_layout_line;
alias c_pango_renderer_draw_rectangle pango_renderer_draw_rectangle;
alias c_pango_renderer_draw_trapezoid pango_renderer_draw_trapezoid;
alias c_pango_renderer_get_alpha pango_renderer_get_alpha;
alias c_pango_renderer_get_color pango_renderer_get_color;
alias c_pango_renderer_get_layout pango_renderer_get_layout;
alias c_pango_renderer_get_layout_line pango_renderer_get_layout_line;
alias c_pango_renderer_get_matrix pango_renderer_get_matrix;
alias c_pango_renderer_part_changed pango_renderer_part_changed;
alias c_pango_renderer_set_alpha pango_renderer_set_alpha;
alias c_pango_renderer_set_color pango_renderer_set_color;
alias c_pango_renderer_set_matrix pango_renderer_set_matrix;

// pango.PgScriptIter

alias c_pango_script_iter_free pango_script_iter_free;
alias c_pango_script_iter_get_range pango_script_iter_get_range;
alias c_pango_script_iter_next pango_script_iter_next;
alias c_pango_script_iter_new pango_script_iter_new;

// pango.PgTabArray

alias c_pango_tab_array_get_type pango_tab_array_get_type;
alias c_pango_tab_array_new pango_tab_array_new;
alias c_pango_tab_array_new_with_positions pango_tab_array_new_with_positions;
alias c_pango_tab_array_copy pango_tab_array_copy;
alias c_pango_tab_array_free pango_tab_array_free;
alias c_pango_tab_array_get_positions_in_pixels pango_tab_array_get_positions_in_pixels;
alias c_pango_tab_array_get_size pango_tab_array_get_size;
alias c_pango_tab_array_get_tab pango_tab_array_get_tab;
alias c_pango_tab_array_get_tabs pango_tab_array_get_tabs;
alias c_pango_tab_array_resize pango_tab_array_resize;
alias c_pango_tab_array_set_tab pango_tab_array_set_tab;

// pango.PgCairoFontMap

alias c_pango_cairo_font_map_get_type pango_cairo_font_map_get_type;
alias c_pango_cairo_font_get_scaled_font pango_cairo_font_get_scaled_font;
alias c_pango_cairo_font_map_get_default pango_cairo_font_map_get_default;
alias c_pango_cairo_font_map_new pango_cairo_font_map_new;
alias c_pango_cairo_font_map_new_for_font_type pango_cairo_font_map_new_for_font_type;
alias c_pango_cairo_font_map_create_context pango_cairo_font_map_create_context;
alias c_pango_cairo_font_map_get_font_type pango_cairo_font_map_get_font_type;
alias c_pango_cairo_font_map_get_resolution pango_cairo_font_map_get_resolution;
alias c_pango_cairo_font_map_set_default pango_cairo_font_map_set_default;
alias c_pango_cairo_font_map_set_resolution pango_cairo_font_map_set_resolution;

// pango.PgMiscellaneous

alias c_pango_config_key_get pango_config_key_get;
alias c_pango_config_key_get_system pango_config_key_get_system;
alias c_pango_get_lib_subdirectory pango_get_lib_subdirectory;
alias c_pango_get_sysconf_subdirectory pango_get_sysconf_subdirectory;
alias c_pango_is_zero_width pango_is_zero_width;
alias c_pango_log2vis_get_embedding_levels pango_log2vis_get_embedding_levels;
alias c_pango_lookup_aliases pango_lookup_aliases;
alias c_pango_parse_enum pango_parse_enum;
alias c_pango_parse_stretch pango_parse_stretch;
alias c_pango_parse_style pango_parse_style;
alias c_pango_parse_variant pango_parse_variant;
alias c_pango_parse_weight pango_parse_weight;
alias c_pango_quantize_line_geometry pango_quantize_line_geometry;
alias c_pango_read_line pango_read_line;
alias c_pango_scan_int pango_scan_int;
alias c_pango_scan_string pango_scan_string;
alias c_pango_scan_word pango_scan_word;
alias c_pango_skip_space pango_skip_space;
alias c_pango_split_file_list pango_split_file_list;
alias c_pango_trim_string pango_trim_string;

// pango.PgVertical

alias c_pango_gravity_get_for_matrix pango_gravity_get_for_matrix;
alias c_pango_gravity_get_for_script pango_gravity_get_for_script;
alias c_pango_gravity_get_for_script_and_width pango_gravity_get_for_script_and_width;
alias c_pango_gravity_to_rotation pango_gravity_to_rotation;

// pango.PgScript

alias c_pango_script_for_unichar pango_script_for_unichar;
alias c_pango_script_get_sample_language pango_script_get_sample_language;

// pango.PgVersion

alias c_pango_version pango_version;
alias c_pango_version_check pango_version_check;
alias c_pango_version_string pango_version_string;

// pango.PgCairo

alias c_pango_cairo_context_get_font_options pango_cairo_context_get_font_options;
alias c_pango_cairo_context_get_resolution pango_cairo_context_get_resolution;
alias c_pango_cairo_context_get_shape_renderer pango_cairo_context_get_shape_renderer;
alias c_pango_cairo_context_set_font_options pango_cairo_context_set_font_options;
alias c_pango_cairo_context_set_resolution pango_cairo_context_set_resolution;
alias c_pango_cairo_context_set_shape_renderer pango_cairo_context_set_shape_renderer;
alias c_pango_cairo_create_context pango_cairo_create_context;
alias c_pango_cairo_create_layout pango_cairo_create_layout;
alias c_pango_cairo_error_underline_path pango_cairo_error_underline_path;
alias c_pango_cairo_glyph_string_path pango_cairo_glyph_string_path;
alias c_pango_cairo_layout_line_path pango_cairo_layout_line_path;
alias c_pango_cairo_layout_path pango_cairo_layout_path;
alias c_pango_cairo_show_error_underline pango_cairo_show_error_underline;
alias c_pango_cairo_show_glyph_item pango_cairo_show_glyph_item;
alias c_pango_cairo_show_glyph_string pango_cairo_show_glyph_string;
alias c_pango_cairo_show_layout pango_cairo_show_layout;
alias c_pango_cairo_show_layout_line pango_cairo_show_layout_line;
alias c_pango_cairo_update_context pango_cairo_update_context;
alias c_pango_cairo_update_layout pango_cairo_update_layout;
