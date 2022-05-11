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


module pango.c.functions;

import std.stdio;
import pango.c.types;
import cairo.c.types;
import linker.Loader;

version (Windows)
	static immutable LIBRARY_PANGO = ["libpango-1.0-0.dll;pango-1.0-0.dll;pango-1.dll", "libpangocairo-1.0-0.dll;pangocairo-1.0-0.dll;pangocairo-1.dll"];
else version (OSX)
	static immutable LIBRARY_PANGO = ["libpango-1.0.0.dylib", "libpangocairo-1.0.0.dylib"];
else
	static immutable LIBRARY_PANGO = ["libpango-1.0.so.0", "libpangocairo-1.0.so.0"];

shared static this()
{
	// pango.PgAttributeFontDesc

	Linker.link(pango_attr_font_desc_new, "pango_attr_font_desc_new", LIBRARY_PANGO);

	// pango.PgAttrFontFeatures

	Linker.link(pango_attr_font_features_new, "pango_attr_font_features_new", LIBRARY_PANGO);

	// pango.PgAttributeIterator

	Linker.link(pango_attr_iterator_get_type, "pango_attr_iterator_get_type", LIBRARY_PANGO);
	Linker.link(pango_attr_iterator_copy, "pango_attr_iterator_copy", LIBRARY_PANGO);
	Linker.link(pango_attr_iterator_destroy, "pango_attr_iterator_destroy", LIBRARY_PANGO);
	Linker.link(pango_attr_iterator_get, "pango_attr_iterator_get", LIBRARY_PANGO);
	Linker.link(pango_attr_iterator_get_attrs, "pango_attr_iterator_get_attrs", LIBRARY_PANGO);
	Linker.link(pango_attr_iterator_get_font, "pango_attr_iterator_get_font", LIBRARY_PANGO);
	Linker.link(pango_attr_iterator_next, "pango_attr_iterator_next", LIBRARY_PANGO);
	Linker.link(pango_attr_iterator_range, "pango_attr_iterator_range", LIBRARY_PANGO);

	// pango.PgAttributeLanguage

	Linker.link(pango_attr_language_new, "pango_attr_language_new", LIBRARY_PANGO);

	// pango.PgAttributeList

	Linker.link(pango_attr_list_get_type, "pango_attr_list_get_type", LIBRARY_PANGO);
	Linker.link(pango_attr_list_new, "pango_attr_list_new", LIBRARY_PANGO);
	Linker.link(pango_attr_list_change, "pango_attr_list_change", LIBRARY_PANGO);
	Linker.link(pango_attr_list_copy, "pango_attr_list_copy", LIBRARY_PANGO);
	Linker.link(pango_attr_list_equal, "pango_attr_list_equal", LIBRARY_PANGO);
	Linker.link(pango_attr_list_filter, "pango_attr_list_filter", LIBRARY_PANGO);
	Linker.link(pango_attr_list_get_attributes, "pango_attr_list_get_attributes", LIBRARY_PANGO);
	Linker.link(pango_attr_list_get_iterator, "pango_attr_list_get_iterator", LIBRARY_PANGO);
	Linker.link(pango_attr_list_insert, "pango_attr_list_insert", LIBRARY_PANGO);
	Linker.link(pango_attr_list_insert_before, "pango_attr_list_insert_before", LIBRARY_PANGO);
	Linker.link(pango_attr_list_ref, "pango_attr_list_ref", LIBRARY_PANGO);
	Linker.link(pango_attr_list_splice, "pango_attr_list_splice", LIBRARY_PANGO);
	Linker.link(pango_attr_list_to_string, "pango_attr_list_to_string", LIBRARY_PANGO);
	Linker.link(pango_attr_list_unref, "pango_attr_list_unref", LIBRARY_PANGO);
	Linker.link(pango_attr_list_update, "pango_attr_list_update", LIBRARY_PANGO);
	Linker.link(pango_attr_list_from_string, "pango_attr_list_from_string", LIBRARY_PANGO);

	// pango.PgAttributeShape

	Linker.link(pango_attr_shape_new, "pango_attr_shape_new", LIBRARY_PANGO);
	Linker.link(pango_attr_shape_new_with_data, "pango_attr_shape_new_with_data", LIBRARY_PANGO);

	// pango.PgAttributeSize

	Linker.link(pango_attr_size_new, "pango_attr_size_new", LIBRARY_PANGO);
	Linker.link(pango_attr_size_new_absolute, "pango_attr_size_new_absolute", LIBRARY_PANGO);

	// pango.PgAttribute

	Linker.link(pango_attribute_get_type, "pango_attribute_get_type", LIBRARY_PANGO);
	Linker.link(pango_attribute_as_color, "pango_attribute_as_color", LIBRARY_PANGO);
	Linker.link(pango_attribute_as_float, "pango_attribute_as_float", LIBRARY_PANGO);
	Linker.link(pango_attribute_as_font_desc, "pango_attribute_as_font_desc", LIBRARY_PANGO);
	Linker.link(pango_attribute_as_font_features, "pango_attribute_as_font_features", LIBRARY_PANGO);
	Linker.link(pango_attribute_as_int, "pango_attribute_as_int", LIBRARY_PANGO);
	Linker.link(pango_attribute_as_language, "pango_attribute_as_language", LIBRARY_PANGO);
	Linker.link(pango_attribute_as_shape, "pango_attribute_as_shape", LIBRARY_PANGO);
	Linker.link(pango_attribute_as_size, "pango_attribute_as_size", LIBRARY_PANGO);
	Linker.link(pango_attribute_as_string, "pango_attribute_as_string", LIBRARY_PANGO);
	Linker.link(pango_attribute_copy, "pango_attribute_copy", LIBRARY_PANGO);
	Linker.link(pango_attribute_destroy, "pango_attribute_destroy", LIBRARY_PANGO);
	Linker.link(pango_attribute_equal, "pango_attribute_equal", LIBRARY_PANGO);
	Linker.link(pango_attribute_init, "pango_attribute_init", LIBRARY_PANGO);
	Linker.link(pango_attr_background_new, "pango_attr_background_new", LIBRARY_PANGO);
	Linker.link(pango_attr_background_alpha_new, "pango_attr_background_alpha_new", LIBRARY_PANGO);
	Linker.link(pango_attr_fallback_new, "pango_attr_fallback_new", LIBRARY_PANGO);
	Linker.link(pango_attr_family_new, "pango_attr_family_new", LIBRARY_PANGO);
	Linker.link(pango_attr_foreground_new, "pango_attr_foreground_new", LIBRARY_PANGO);
	Linker.link(pango_attr_foreground_alpha_new, "pango_attr_foreground_alpha_new", LIBRARY_PANGO);
	Linker.link(pango_attr_gravity_hint_new, "pango_attr_gravity_hint_new", LIBRARY_PANGO);
	Linker.link(pango_attr_gravity_new, "pango_attr_gravity_new", LIBRARY_PANGO);
	Linker.link(pango_attr_letter_spacing_new, "pango_attr_letter_spacing_new", LIBRARY_PANGO);
	Linker.link(pango_attr_rise_new, "pango_attr_rise_new", LIBRARY_PANGO);
	Linker.link(pango_attr_scale_new, "pango_attr_scale_new", LIBRARY_PANGO);
	Linker.link(pango_attr_stretch_new, "pango_attr_stretch_new", LIBRARY_PANGO);
	Linker.link(pango_attr_strikethrough_color_new, "pango_attr_strikethrough_color_new", LIBRARY_PANGO);
	Linker.link(pango_attr_strikethrough_new, "pango_attr_strikethrough_new", LIBRARY_PANGO);
	Linker.link(pango_attr_style_new, "pango_attr_style_new", LIBRARY_PANGO);
	Linker.link(pango_attr_type_get_name, "pango_attr_type_get_name", LIBRARY_PANGO);
	Linker.link(pango_attr_type_register, "pango_attr_type_register", LIBRARY_PANGO);
	Linker.link(pango_attr_underline_color_new, "pango_attr_underline_color_new", LIBRARY_PANGO);
	Linker.link(pango_attr_underline_new, "pango_attr_underline_new", LIBRARY_PANGO);
	Linker.link(pango_attr_variant_new, "pango_attr_variant_new", LIBRARY_PANGO);
	Linker.link(pango_attr_weight_new, "pango_attr_weight_new", LIBRARY_PANGO);
	Linker.link(pango_markup_parser_finish, "pango_markup_parser_finish", LIBRARY_PANGO);
	Linker.link(pango_markup_parser_new, "pango_markup_parser_new", LIBRARY_PANGO);
	Linker.link(pango_parse_markup, "pango_parse_markup", LIBRARY_PANGO);

	// pango.PgColor

	Linker.link(pango_color_get_type, "pango_color_get_type", LIBRARY_PANGO);
	Linker.link(pango_color_copy, "pango_color_copy", LIBRARY_PANGO);
	Linker.link(pango_color_free, "pango_color_free", LIBRARY_PANGO);
	Linker.link(pango_color_parse, "pango_color_parse", LIBRARY_PANGO);
	Linker.link(pango_color_parse_with_alpha, "pango_color_parse_with_alpha", LIBRARY_PANGO);
	Linker.link(pango_color_to_string, "pango_color_to_string", LIBRARY_PANGO);

	// pango.PgContext

	Linker.link(pango_context_get_type, "pango_context_get_type", LIBRARY_PANGO);
	Linker.link(pango_context_new, "pango_context_new", LIBRARY_PANGO);
	Linker.link(pango_context_changed, "pango_context_changed", LIBRARY_PANGO);
	Linker.link(pango_context_get_base_dir, "pango_context_get_base_dir", LIBRARY_PANGO);
	Linker.link(pango_context_get_base_gravity, "pango_context_get_base_gravity", LIBRARY_PANGO);
	Linker.link(pango_context_get_font_description, "pango_context_get_font_description", LIBRARY_PANGO);
	Linker.link(pango_context_get_font_map, "pango_context_get_font_map", LIBRARY_PANGO);
	Linker.link(pango_context_get_gravity, "pango_context_get_gravity", LIBRARY_PANGO);
	Linker.link(pango_context_get_gravity_hint, "pango_context_get_gravity_hint", LIBRARY_PANGO);
	Linker.link(pango_context_get_language, "pango_context_get_language", LIBRARY_PANGO);
	Linker.link(pango_context_get_matrix, "pango_context_get_matrix", LIBRARY_PANGO);
	Linker.link(pango_context_get_metrics, "pango_context_get_metrics", LIBRARY_PANGO);
	Linker.link(pango_context_get_round_glyph_positions, "pango_context_get_round_glyph_positions", LIBRARY_PANGO);
	Linker.link(pango_context_get_serial, "pango_context_get_serial", LIBRARY_PANGO);
	Linker.link(pango_context_list_families, "pango_context_list_families", LIBRARY_PANGO);
	Linker.link(pango_context_load_font, "pango_context_load_font", LIBRARY_PANGO);
	Linker.link(pango_context_load_fontset, "pango_context_load_fontset", LIBRARY_PANGO);
	Linker.link(pango_context_set_base_dir, "pango_context_set_base_dir", LIBRARY_PANGO);
	Linker.link(pango_context_set_base_gravity, "pango_context_set_base_gravity", LIBRARY_PANGO);
	Linker.link(pango_context_set_font_description, "pango_context_set_font_description", LIBRARY_PANGO);
	Linker.link(pango_context_set_font_map, "pango_context_set_font_map", LIBRARY_PANGO);
	Linker.link(pango_context_set_gravity_hint, "pango_context_set_gravity_hint", LIBRARY_PANGO);
	Linker.link(pango_context_set_language, "pango_context_set_language", LIBRARY_PANGO);
	Linker.link(pango_context_set_matrix, "pango_context_set_matrix", LIBRARY_PANGO);
	Linker.link(pango_context_set_round_glyph_positions, "pango_context_set_round_glyph_positions", LIBRARY_PANGO);
	Linker.link(pango_bidi_type_for_unichar, "pango_bidi_type_for_unichar", LIBRARY_PANGO);
	Linker.link(pango_break, "pango_break", LIBRARY_PANGO);
	Linker.link(pango_default_break, "pango_default_break", LIBRARY_PANGO);
	Linker.link(pango_find_base_dir, "pango_find_base_dir", LIBRARY_PANGO);
	Linker.link(pango_find_paragraph_boundary, "pango_find_paragraph_boundary", LIBRARY_PANGO);
	Linker.link(pango_get_log_attrs, "pango_get_log_attrs", LIBRARY_PANGO);
	Linker.link(pango_get_mirror_char, "pango_get_mirror_char", LIBRARY_PANGO);
	Linker.link(pango_itemize, "pango_itemize", LIBRARY_PANGO);
	Linker.link(pango_itemize_with_base_dir, "pango_itemize_with_base_dir", LIBRARY_PANGO);
	Linker.link(pango_reorder_items, "pango_reorder_items", LIBRARY_PANGO);
	Linker.link(pango_shape, "pango_shape", LIBRARY_PANGO);
	Linker.link(pango_shape_full, "pango_shape_full", LIBRARY_PANGO);
	Linker.link(pango_unichar_direction, "pango_unichar_direction", LIBRARY_PANGO);

	// pango.PgCoverage

	Linker.link(pango_coverage_get_type, "pango_coverage_get_type", LIBRARY_PANGO);
	Linker.link(pango_coverage_new, "pango_coverage_new", LIBRARY_PANGO);
	Linker.link(pango_coverage_from_bytes, "pango_coverage_from_bytes", LIBRARY_PANGO);
	Linker.link(pango_coverage_copy, "pango_coverage_copy", LIBRARY_PANGO);
	Linker.link(pango_coverage_get, "pango_coverage_get", LIBRARY_PANGO);
	Linker.link(pango_coverage_max, "pango_coverage_max", LIBRARY_PANGO);
	Linker.link(pango_coverage_ref, "pango_coverage_ref", LIBRARY_PANGO);
	Linker.link(pango_coverage_set, "pango_coverage_set", LIBRARY_PANGO);
	Linker.link(pango_coverage_to_bytes, "pango_coverage_to_bytes", LIBRARY_PANGO);
	Linker.link(pango_coverage_unref, "pango_coverage_unref", LIBRARY_PANGO);

	// pango.PgFont

	Linker.link(pango_font_get_type, "pango_font_get_type", LIBRARY_PANGO);
	Linker.link(pango_font_descriptions_free, "pango_font_descriptions_free", LIBRARY_PANGO);
	Linker.link(pango_font_deserialize, "pango_font_deserialize", LIBRARY_PANGO);
	Linker.link(pango_font_describe, "pango_font_describe", LIBRARY_PANGO);
	Linker.link(pango_font_describe_with_absolute_size, "pango_font_describe_with_absolute_size", LIBRARY_PANGO);
	Linker.link(pango_font_get_coverage, "pango_font_get_coverage", LIBRARY_PANGO);
	Linker.link(pango_font_get_face, "pango_font_get_face", LIBRARY_PANGO);
	Linker.link(pango_font_get_features, "pango_font_get_features", LIBRARY_PANGO);
	Linker.link(pango_font_get_font_map, "pango_font_get_font_map", LIBRARY_PANGO);
	Linker.link(pango_font_get_glyph_extents, "pango_font_get_glyph_extents", LIBRARY_PANGO);
	Linker.link(pango_font_get_hb_font, "pango_font_get_hb_font", LIBRARY_PANGO);
	Linker.link(pango_font_get_languages, "pango_font_get_languages", LIBRARY_PANGO);
	Linker.link(pango_font_get_metrics, "pango_font_get_metrics", LIBRARY_PANGO);
	Linker.link(pango_font_has_char, "pango_font_has_char", LIBRARY_PANGO);
	Linker.link(pango_font_serialize, "pango_font_serialize", LIBRARY_PANGO);

	// pango.PgFontDescription

	Linker.link(pango_font_description_get_type, "pango_font_description_get_type", LIBRARY_PANGO);
	Linker.link(pango_font_description_new, "pango_font_description_new", LIBRARY_PANGO);
	Linker.link(pango_font_description_better_match, "pango_font_description_better_match", LIBRARY_PANGO);
	Linker.link(pango_font_description_copy, "pango_font_description_copy", LIBRARY_PANGO);
	Linker.link(pango_font_description_copy_static, "pango_font_description_copy_static", LIBRARY_PANGO);
	Linker.link(pango_font_description_equal, "pango_font_description_equal", LIBRARY_PANGO);
	Linker.link(pango_font_description_free, "pango_font_description_free", LIBRARY_PANGO);
	Linker.link(pango_font_description_get_family, "pango_font_description_get_family", LIBRARY_PANGO);
	Linker.link(pango_font_description_get_gravity, "pango_font_description_get_gravity", LIBRARY_PANGO);
	Linker.link(pango_font_description_get_set_fields, "pango_font_description_get_set_fields", LIBRARY_PANGO);
	Linker.link(pango_font_description_get_size, "pango_font_description_get_size", LIBRARY_PANGO);
	Linker.link(pango_font_description_get_size_is_absolute, "pango_font_description_get_size_is_absolute", LIBRARY_PANGO);
	Linker.link(pango_font_description_get_stretch, "pango_font_description_get_stretch", LIBRARY_PANGO);
	Linker.link(pango_font_description_get_style, "pango_font_description_get_style", LIBRARY_PANGO);
	Linker.link(pango_font_description_get_variant, "pango_font_description_get_variant", LIBRARY_PANGO);
	Linker.link(pango_font_description_get_variations, "pango_font_description_get_variations", LIBRARY_PANGO);
	Linker.link(pango_font_description_get_weight, "pango_font_description_get_weight", LIBRARY_PANGO);
	Linker.link(pango_font_description_hash, "pango_font_description_hash", LIBRARY_PANGO);
	Linker.link(pango_font_description_merge, "pango_font_description_merge", LIBRARY_PANGO);
	Linker.link(pango_font_description_merge_static, "pango_font_description_merge_static", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_absolute_size, "pango_font_description_set_absolute_size", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_family, "pango_font_description_set_family", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_family_static, "pango_font_description_set_family_static", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_gravity, "pango_font_description_set_gravity", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_size, "pango_font_description_set_size", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_stretch, "pango_font_description_set_stretch", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_style, "pango_font_description_set_style", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_variant, "pango_font_description_set_variant", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_variations, "pango_font_description_set_variations", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_variations_static, "pango_font_description_set_variations_static", LIBRARY_PANGO);
	Linker.link(pango_font_description_set_weight, "pango_font_description_set_weight", LIBRARY_PANGO);
	Linker.link(pango_font_description_to_filename, "pango_font_description_to_filename", LIBRARY_PANGO);
	Linker.link(pango_font_description_to_string, "pango_font_description_to_string", LIBRARY_PANGO);
	Linker.link(pango_font_description_unset_fields, "pango_font_description_unset_fields", LIBRARY_PANGO);
	Linker.link(pango_font_description_from_string, "pango_font_description_from_string", LIBRARY_PANGO);

	// pango.PgFontFace

	Linker.link(pango_font_face_get_type, "pango_font_face_get_type", LIBRARY_PANGO);
	Linker.link(pango_font_face_describe, "pango_font_face_describe", LIBRARY_PANGO);
	Linker.link(pango_font_face_get_face_name, "pango_font_face_get_face_name", LIBRARY_PANGO);
	Linker.link(pango_font_face_get_family, "pango_font_face_get_family", LIBRARY_PANGO);
	Linker.link(pango_font_face_is_synthesized, "pango_font_face_is_synthesized", LIBRARY_PANGO);
	Linker.link(pango_font_face_list_sizes, "pango_font_face_list_sizes", LIBRARY_PANGO);

	// pango.PgFontFamily

	Linker.link(pango_font_family_get_type, "pango_font_family_get_type", LIBRARY_PANGO);
	Linker.link(pango_font_family_get_face, "pango_font_family_get_face", LIBRARY_PANGO);
	Linker.link(pango_font_family_get_name, "pango_font_family_get_name", LIBRARY_PANGO);
	Linker.link(pango_font_family_is_monospace, "pango_font_family_is_monospace", LIBRARY_PANGO);
	Linker.link(pango_font_family_is_variable, "pango_font_family_is_variable", LIBRARY_PANGO);
	Linker.link(pango_font_family_list_faces, "pango_font_family_list_faces", LIBRARY_PANGO);

	// pango.PgFontMap

	Linker.link(pango_font_map_get_type, "pango_font_map_get_type", LIBRARY_PANGO);
	Linker.link(pango_font_map_changed, "pango_font_map_changed", LIBRARY_PANGO);
	Linker.link(pango_font_map_create_context, "pango_font_map_create_context", LIBRARY_PANGO);
	Linker.link(pango_font_map_get_family, "pango_font_map_get_family", LIBRARY_PANGO);
	Linker.link(pango_font_map_get_serial, "pango_font_map_get_serial", LIBRARY_PANGO);
	Linker.link(pango_font_map_list_families, "pango_font_map_list_families", LIBRARY_PANGO);
	Linker.link(pango_font_map_load_font, "pango_font_map_load_font", LIBRARY_PANGO);
	Linker.link(pango_font_map_load_fontset, "pango_font_map_load_fontset", LIBRARY_PANGO);

	// pango.PgFontMetrics

	Linker.link(pango_font_metrics_get_type, "pango_font_metrics_get_type", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_get_approximate_char_width, "pango_font_metrics_get_approximate_char_width", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_get_approximate_digit_width, "pango_font_metrics_get_approximate_digit_width", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_get_ascent, "pango_font_metrics_get_ascent", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_get_descent, "pango_font_metrics_get_descent", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_get_height, "pango_font_metrics_get_height", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_get_strikethrough_position, "pango_font_metrics_get_strikethrough_position", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_get_strikethrough_thickness, "pango_font_metrics_get_strikethrough_thickness", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_get_underline_position, "pango_font_metrics_get_underline_position", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_get_underline_thickness, "pango_font_metrics_get_underline_thickness", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_ref, "pango_font_metrics_ref", LIBRARY_PANGO);
	Linker.link(pango_font_metrics_unref, "pango_font_metrics_unref", LIBRARY_PANGO);

	// pango.PgFontset

	Linker.link(pango_fontset_get_type, "pango_fontset_get_type", LIBRARY_PANGO);
	Linker.link(pango_fontset_foreach, "pango_fontset_foreach", LIBRARY_PANGO);
	Linker.link(pango_fontset_get_font, "pango_fontset_get_font", LIBRARY_PANGO);
	Linker.link(pango_fontset_get_metrics, "pango_fontset_get_metrics", LIBRARY_PANGO);

	// pango.PgFontsetSimple

	Linker.link(pango_fontset_simple_get_type, "pango_fontset_simple_get_type", LIBRARY_PANGO);
	Linker.link(pango_fontset_simple_new, "pango_fontset_simple_new", LIBRARY_PANGO);
	Linker.link(pango_fontset_simple_append, "pango_fontset_simple_append", LIBRARY_PANGO);
	Linker.link(pango_fontset_simple_size, "pango_fontset_simple_size", LIBRARY_PANGO);

	// pango.PgGlyphItem

	Linker.link(pango_glyph_item_get_type, "pango_glyph_item_get_type", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_apply_attrs, "pango_glyph_item_apply_attrs", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_copy, "pango_glyph_item_copy", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_free, "pango_glyph_item_free", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_get_logical_widths, "pango_glyph_item_get_logical_widths", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_letter_space, "pango_glyph_item_letter_space", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_split, "pango_glyph_item_split", LIBRARY_PANGO);

	// pango.PgGlyphItemIter

	Linker.link(pango_glyph_item_iter_get_type, "pango_glyph_item_iter_get_type", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_iter_copy, "pango_glyph_item_iter_copy", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_iter_free, "pango_glyph_item_iter_free", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_iter_init_end, "pango_glyph_item_iter_init_end", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_iter_init_start, "pango_glyph_item_iter_init_start", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_iter_next_cluster, "pango_glyph_item_iter_next_cluster", LIBRARY_PANGO);
	Linker.link(pango_glyph_item_iter_prev_cluster, "pango_glyph_item_iter_prev_cluster", LIBRARY_PANGO);

	// pango.PgGlyphString

	Linker.link(pango_glyph_string_get_type, "pango_glyph_string_get_type", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_new, "pango_glyph_string_new", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_copy, "pango_glyph_string_copy", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_extents, "pango_glyph_string_extents", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_extents_range, "pango_glyph_string_extents_range", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_free, "pango_glyph_string_free", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_get_logical_widths, "pango_glyph_string_get_logical_widths", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_get_width, "pango_glyph_string_get_width", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_index_to_x, "pango_glyph_string_index_to_x", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_index_to_x_full, "pango_glyph_string_index_to_x_full", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_set_size, "pango_glyph_string_set_size", LIBRARY_PANGO);
	Linker.link(pango_glyph_string_x_to_index, "pango_glyph_string_x_to_index", LIBRARY_PANGO);

	// pango.PgItem

	Linker.link(pango_item_get_type, "pango_item_get_type", LIBRARY_PANGO);
	Linker.link(pango_item_new, "pango_item_new", LIBRARY_PANGO);
	Linker.link(pango_item_apply_attrs, "pango_item_apply_attrs", LIBRARY_PANGO);
	Linker.link(pango_item_copy, "pango_item_copy", LIBRARY_PANGO);
	Linker.link(pango_item_free, "pango_item_free", LIBRARY_PANGO);
	Linker.link(pango_item_split, "pango_item_split", LIBRARY_PANGO);

	// pango.PgLanguage

	Linker.link(pango_language_get_type, "pango_language_get_type", LIBRARY_PANGO);
	Linker.link(pango_language_get_sample_string, "pango_language_get_sample_string", LIBRARY_PANGO);
	Linker.link(pango_language_get_scripts, "pango_language_get_scripts", LIBRARY_PANGO);
	Linker.link(pango_language_includes_script, "pango_language_includes_script", LIBRARY_PANGO);
	Linker.link(pango_language_matches, "pango_language_matches", LIBRARY_PANGO);
	Linker.link(pango_language_to_string, "pango_language_to_string", LIBRARY_PANGO);
	Linker.link(pango_language_from_string, "pango_language_from_string", LIBRARY_PANGO);
	Linker.link(pango_language_get_default, "pango_language_get_default", LIBRARY_PANGO);
	Linker.link(pango_language_get_preferred, "pango_language_get_preferred", LIBRARY_PANGO);

	// pango.PgLayout

	Linker.link(pango_layout_get_type, "pango_layout_get_type", LIBRARY_PANGO);
	Linker.link(pango_layout_new, "pango_layout_new", LIBRARY_PANGO);
	Linker.link(pango_layout_deserialize, "pango_layout_deserialize", LIBRARY_PANGO);
	Linker.link(pango_layout_context_changed, "pango_layout_context_changed", LIBRARY_PANGO);
	Linker.link(pango_layout_copy, "pango_layout_copy", LIBRARY_PANGO);
	Linker.link(pango_layout_get_alignment, "pango_layout_get_alignment", LIBRARY_PANGO);
	Linker.link(pango_layout_get_attributes, "pango_layout_get_attributes", LIBRARY_PANGO);
	Linker.link(pango_layout_get_auto_dir, "pango_layout_get_auto_dir", LIBRARY_PANGO);
	Linker.link(pango_layout_get_baseline, "pango_layout_get_baseline", LIBRARY_PANGO);
	Linker.link(pango_layout_get_caret_pos, "pango_layout_get_caret_pos", LIBRARY_PANGO);
	Linker.link(pango_layout_get_character_count, "pango_layout_get_character_count", LIBRARY_PANGO);
	Linker.link(pango_layout_get_context, "pango_layout_get_context", LIBRARY_PANGO);
	Linker.link(pango_layout_get_cursor_pos, "pango_layout_get_cursor_pos", LIBRARY_PANGO);
	Linker.link(pango_layout_get_direction, "pango_layout_get_direction", LIBRARY_PANGO);
	Linker.link(pango_layout_get_ellipsize, "pango_layout_get_ellipsize", LIBRARY_PANGO);
	Linker.link(pango_layout_get_extents, "pango_layout_get_extents", LIBRARY_PANGO);
	Linker.link(pango_layout_get_font_description, "pango_layout_get_font_description", LIBRARY_PANGO);
	Linker.link(pango_layout_get_height, "pango_layout_get_height", LIBRARY_PANGO);
	Linker.link(pango_layout_get_indent, "pango_layout_get_indent", LIBRARY_PANGO);
	Linker.link(pango_layout_get_iter, "pango_layout_get_iter", LIBRARY_PANGO);
	Linker.link(pango_layout_get_justify, "pango_layout_get_justify", LIBRARY_PANGO);
	Linker.link(pango_layout_get_justify_last_line, "pango_layout_get_justify_last_line", LIBRARY_PANGO);
	Linker.link(pango_layout_get_line, "pango_layout_get_line", LIBRARY_PANGO);
	Linker.link(pango_layout_get_line_count, "pango_layout_get_line_count", LIBRARY_PANGO);
	Linker.link(pango_layout_get_line_readonly, "pango_layout_get_line_readonly", LIBRARY_PANGO);
	Linker.link(pango_layout_get_line_spacing, "pango_layout_get_line_spacing", LIBRARY_PANGO);
	Linker.link(pango_layout_get_lines, "pango_layout_get_lines", LIBRARY_PANGO);
	Linker.link(pango_layout_get_lines_readonly, "pango_layout_get_lines_readonly", LIBRARY_PANGO);
	Linker.link(pango_layout_get_log_attrs, "pango_layout_get_log_attrs", LIBRARY_PANGO);
	Linker.link(pango_layout_get_log_attrs_readonly, "pango_layout_get_log_attrs_readonly", LIBRARY_PANGO);
	Linker.link(pango_layout_get_pixel_extents, "pango_layout_get_pixel_extents", LIBRARY_PANGO);
	Linker.link(pango_layout_get_pixel_size, "pango_layout_get_pixel_size", LIBRARY_PANGO);
	Linker.link(pango_layout_get_serial, "pango_layout_get_serial", LIBRARY_PANGO);
	Linker.link(pango_layout_get_single_paragraph_mode, "pango_layout_get_single_paragraph_mode", LIBRARY_PANGO);
	Linker.link(pango_layout_get_size, "pango_layout_get_size", LIBRARY_PANGO);
	Linker.link(pango_layout_get_spacing, "pango_layout_get_spacing", LIBRARY_PANGO);
	Linker.link(pango_layout_get_tabs, "pango_layout_get_tabs", LIBRARY_PANGO);
	Linker.link(pango_layout_get_text, "pango_layout_get_text", LIBRARY_PANGO);
	Linker.link(pango_layout_get_unknown_glyphs_count, "pango_layout_get_unknown_glyphs_count", LIBRARY_PANGO);
	Linker.link(pango_layout_get_width, "pango_layout_get_width", LIBRARY_PANGO);
	Linker.link(pango_layout_get_wrap, "pango_layout_get_wrap", LIBRARY_PANGO);
	Linker.link(pango_layout_index_to_line_x, "pango_layout_index_to_line_x", LIBRARY_PANGO);
	Linker.link(pango_layout_index_to_pos, "pango_layout_index_to_pos", LIBRARY_PANGO);
	Linker.link(pango_layout_is_ellipsized, "pango_layout_is_ellipsized", LIBRARY_PANGO);
	Linker.link(pango_layout_is_wrapped, "pango_layout_is_wrapped", LIBRARY_PANGO);
	Linker.link(pango_layout_move_cursor_visually, "pango_layout_move_cursor_visually", LIBRARY_PANGO);
	Linker.link(pango_layout_serialize, "pango_layout_serialize", LIBRARY_PANGO);
	Linker.link(pango_layout_set_alignment, "pango_layout_set_alignment", LIBRARY_PANGO);
	Linker.link(pango_layout_set_attributes, "pango_layout_set_attributes", LIBRARY_PANGO);
	Linker.link(pango_layout_set_auto_dir, "pango_layout_set_auto_dir", LIBRARY_PANGO);
	Linker.link(pango_layout_set_ellipsize, "pango_layout_set_ellipsize", LIBRARY_PANGO);
	Linker.link(pango_layout_set_font_description, "pango_layout_set_font_description", LIBRARY_PANGO);
	Linker.link(pango_layout_set_height, "pango_layout_set_height", LIBRARY_PANGO);
	Linker.link(pango_layout_set_indent, "pango_layout_set_indent", LIBRARY_PANGO);
	Linker.link(pango_layout_set_justify, "pango_layout_set_justify", LIBRARY_PANGO);
	Linker.link(pango_layout_set_justify_last_line, "pango_layout_set_justify_last_line", LIBRARY_PANGO);
	Linker.link(pango_layout_set_line_spacing, "pango_layout_set_line_spacing", LIBRARY_PANGO);
	Linker.link(pango_layout_set_markup, "pango_layout_set_markup", LIBRARY_PANGO);
	Linker.link(pango_layout_set_markup_with_accel, "pango_layout_set_markup_with_accel", LIBRARY_PANGO);
	Linker.link(pango_layout_set_single_paragraph_mode, "pango_layout_set_single_paragraph_mode", LIBRARY_PANGO);
	Linker.link(pango_layout_set_spacing, "pango_layout_set_spacing", LIBRARY_PANGO);
	Linker.link(pango_layout_set_tabs, "pango_layout_set_tabs", LIBRARY_PANGO);
	Linker.link(pango_layout_set_text, "pango_layout_set_text", LIBRARY_PANGO);
	Linker.link(pango_layout_set_width, "pango_layout_set_width", LIBRARY_PANGO);
	Linker.link(pango_layout_set_wrap, "pango_layout_set_wrap", LIBRARY_PANGO);
	Linker.link(pango_layout_write_to_file, "pango_layout_write_to_file", LIBRARY_PANGO);
	Linker.link(pango_layout_xy_to_index, "pango_layout_xy_to_index", LIBRARY_PANGO);

	// pango.PgLayoutIter

	Linker.link(pango_layout_iter_get_type, "pango_layout_iter_get_type", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_at_last_line, "pango_layout_iter_at_last_line", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_copy, "pango_layout_iter_copy", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_free, "pango_layout_iter_free", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_baseline, "pango_layout_iter_get_baseline", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_char_extents, "pango_layout_iter_get_char_extents", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_cluster_extents, "pango_layout_iter_get_cluster_extents", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_index, "pango_layout_iter_get_index", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_layout, "pango_layout_iter_get_layout", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_layout_extents, "pango_layout_iter_get_layout_extents", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_line, "pango_layout_iter_get_line", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_line_extents, "pango_layout_iter_get_line_extents", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_line_readonly, "pango_layout_iter_get_line_readonly", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_line_yrange, "pango_layout_iter_get_line_yrange", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_run, "pango_layout_iter_get_run", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_run_baseline, "pango_layout_iter_get_run_baseline", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_run_extents, "pango_layout_iter_get_run_extents", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_get_run_readonly, "pango_layout_iter_get_run_readonly", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_next_char, "pango_layout_iter_next_char", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_next_cluster, "pango_layout_iter_next_cluster", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_next_line, "pango_layout_iter_next_line", LIBRARY_PANGO);
	Linker.link(pango_layout_iter_next_run, "pango_layout_iter_next_run", LIBRARY_PANGO);

	// pango.PgLayoutLine

	Linker.link(pango_layout_line_get_type, "pango_layout_line_get_type", LIBRARY_PANGO);
	Linker.link(pango_layout_line_get_extents, "pango_layout_line_get_extents", LIBRARY_PANGO);
	Linker.link(pango_layout_line_get_height, "pango_layout_line_get_height", LIBRARY_PANGO);
	Linker.link(pango_layout_line_get_length, "pango_layout_line_get_length", LIBRARY_PANGO);
	Linker.link(pango_layout_line_get_pixel_extents, "pango_layout_line_get_pixel_extents", LIBRARY_PANGO);
	Linker.link(pango_layout_line_get_resolved_direction, "pango_layout_line_get_resolved_direction", LIBRARY_PANGO);
	Linker.link(pango_layout_line_get_start_index, "pango_layout_line_get_start_index", LIBRARY_PANGO);
	Linker.link(pango_layout_line_get_x_ranges, "pango_layout_line_get_x_ranges", LIBRARY_PANGO);
	Linker.link(pango_layout_line_index_to_x, "pango_layout_line_index_to_x", LIBRARY_PANGO);
	Linker.link(pango_layout_line_is_paragraph_start, "pango_layout_line_is_paragraph_start", LIBRARY_PANGO);
	Linker.link(pango_layout_line_ref, "pango_layout_line_ref", LIBRARY_PANGO);
	Linker.link(pango_layout_line_unref, "pango_layout_line_unref", LIBRARY_PANGO);
	Linker.link(pango_layout_line_x_to_index, "pango_layout_line_x_to_index", LIBRARY_PANGO);

	// pango.PgMatrix

	Linker.link(pango_matrix_get_type, "pango_matrix_get_type", LIBRARY_PANGO);
	Linker.link(pango_matrix_concat, "pango_matrix_concat", LIBRARY_PANGO);
	Linker.link(pango_matrix_copy, "pango_matrix_copy", LIBRARY_PANGO);
	Linker.link(pango_matrix_free, "pango_matrix_free", LIBRARY_PANGO);
	Linker.link(pango_matrix_get_font_scale_factor, "pango_matrix_get_font_scale_factor", LIBRARY_PANGO);
	Linker.link(pango_matrix_get_font_scale_factors, "pango_matrix_get_font_scale_factors", LIBRARY_PANGO);
	Linker.link(pango_matrix_get_slant_ratio, "pango_matrix_get_slant_ratio", LIBRARY_PANGO);
	Linker.link(pango_matrix_rotate, "pango_matrix_rotate", LIBRARY_PANGO);
	Linker.link(pango_matrix_scale, "pango_matrix_scale", LIBRARY_PANGO);
	Linker.link(pango_matrix_transform_distance, "pango_matrix_transform_distance", LIBRARY_PANGO);
	Linker.link(pango_matrix_transform_pixel_rectangle, "pango_matrix_transform_pixel_rectangle", LIBRARY_PANGO);
	Linker.link(pango_matrix_transform_point, "pango_matrix_transform_point", LIBRARY_PANGO);
	Linker.link(pango_matrix_transform_rectangle, "pango_matrix_transform_rectangle", LIBRARY_PANGO);
	Linker.link(pango_matrix_translate, "pango_matrix_translate", LIBRARY_PANGO);
	Linker.link(pango_extents_to_pixels, "pango_extents_to_pixels", LIBRARY_PANGO);
	Linker.link(pango_units_from_double, "pango_units_from_double", LIBRARY_PANGO);
	Linker.link(pango_units_to_double, "pango_units_to_double", LIBRARY_PANGO);

	// pango.PgRenderer

	Linker.link(pango_renderer_get_type, "pango_renderer_get_type", LIBRARY_PANGO);
	Linker.link(pango_renderer_activate, "pango_renderer_activate", LIBRARY_PANGO);
	Linker.link(pango_renderer_deactivate, "pango_renderer_deactivate", LIBRARY_PANGO);
	Linker.link(pango_renderer_draw_error_underline, "pango_renderer_draw_error_underline", LIBRARY_PANGO);
	Linker.link(pango_renderer_draw_glyph, "pango_renderer_draw_glyph", LIBRARY_PANGO);
	Linker.link(pango_renderer_draw_glyph_item, "pango_renderer_draw_glyph_item", LIBRARY_PANGO);
	Linker.link(pango_renderer_draw_glyphs, "pango_renderer_draw_glyphs", LIBRARY_PANGO);
	Linker.link(pango_renderer_draw_layout, "pango_renderer_draw_layout", LIBRARY_PANGO);
	Linker.link(pango_renderer_draw_layout_line, "pango_renderer_draw_layout_line", LIBRARY_PANGO);
	Linker.link(pango_renderer_draw_rectangle, "pango_renderer_draw_rectangle", LIBRARY_PANGO);
	Linker.link(pango_renderer_draw_trapezoid, "pango_renderer_draw_trapezoid", LIBRARY_PANGO);
	Linker.link(pango_renderer_get_alpha, "pango_renderer_get_alpha", LIBRARY_PANGO);
	Linker.link(pango_renderer_get_color, "pango_renderer_get_color", LIBRARY_PANGO);
	Linker.link(pango_renderer_get_layout, "pango_renderer_get_layout", LIBRARY_PANGO);
	Linker.link(pango_renderer_get_layout_line, "pango_renderer_get_layout_line", LIBRARY_PANGO);
	Linker.link(pango_renderer_get_matrix, "pango_renderer_get_matrix", LIBRARY_PANGO);
	Linker.link(pango_renderer_part_changed, "pango_renderer_part_changed", LIBRARY_PANGO);
	Linker.link(pango_renderer_set_alpha, "pango_renderer_set_alpha", LIBRARY_PANGO);
	Linker.link(pango_renderer_set_color, "pango_renderer_set_color", LIBRARY_PANGO);
	Linker.link(pango_renderer_set_matrix, "pango_renderer_set_matrix", LIBRARY_PANGO);

	// pango.PgScriptIter

	Linker.link(pango_script_iter_get_type, "pango_script_iter_get_type", LIBRARY_PANGO);
	Linker.link(pango_script_iter_new, "pango_script_iter_new", LIBRARY_PANGO);
	Linker.link(pango_script_iter_free, "pango_script_iter_free", LIBRARY_PANGO);
	Linker.link(pango_script_iter_get_range, "pango_script_iter_get_range", LIBRARY_PANGO);
	Linker.link(pango_script_iter_next, "pango_script_iter_next", LIBRARY_PANGO);

	// pango.PgTabArray

	Linker.link(pango_tab_array_get_type, "pango_tab_array_get_type", LIBRARY_PANGO);
	Linker.link(pango_tab_array_new, "pango_tab_array_new", LIBRARY_PANGO);
	Linker.link(pango_tab_array_new_with_positions, "pango_tab_array_new_with_positions", LIBRARY_PANGO);
	Linker.link(pango_tab_array_copy, "pango_tab_array_copy", LIBRARY_PANGO);
	Linker.link(pango_tab_array_free, "pango_tab_array_free", LIBRARY_PANGO);
	Linker.link(pango_tab_array_get_decimal_point, "pango_tab_array_get_decimal_point", LIBRARY_PANGO);
	Linker.link(pango_tab_array_get_positions_in_pixels, "pango_tab_array_get_positions_in_pixels", LIBRARY_PANGO);
	Linker.link(pango_tab_array_get_size, "pango_tab_array_get_size", LIBRARY_PANGO);
	Linker.link(pango_tab_array_get_tab, "pango_tab_array_get_tab", LIBRARY_PANGO);
	Linker.link(pango_tab_array_get_tabs, "pango_tab_array_get_tabs", LIBRARY_PANGO);
	Linker.link(pango_tab_array_resize, "pango_tab_array_resize", LIBRARY_PANGO);
	Linker.link(pango_tab_array_set_decimal_point, "pango_tab_array_set_decimal_point", LIBRARY_PANGO);
	Linker.link(pango_tab_array_set_positions_in_pixels, "pango_tab_array_set_positions_in_pixels", LIBRARY_PANGO);
	Linker.link(pango_tab_array_set_tab, "pango_tab_array_set_tab", LIBRARY_PANGO);
	Linker.link(pango_tab_array_sort, "pango_tab_array_sort", LIBRARY_PANGO);
	Linker.link(pango_tab_array_to_string, "pango_tab_array_to_string", LIBRARY_PANGO);
	Linker.link(pango_tab_array_from_string, "pango_tab_array_from_string", LIBRARY_PANGO);

	// pango.PgCairoFontMap

	Linker.link(pango_cairo_font_get_type, "pango_cairo_font_get_type", LIBRARY_PANGO);
	Linker.link(pango_cairo_font_map_get_default, "pango_cairo_font_map_get_default", LIBRARY_PANGO);
	Linker.link(pango_cairo_font_map_new, "pango_cairo_font_map_new", LIBRARY_PANGO);
	Linker.link(pango_cairo_font_map_new_for_font_type, "pango_cairo_font_map_new_for_font_type", LIBRARY_PANGO);
	Linker.link(pango_cairo_font_map_create_context, "pango_cairo_font_map_create_context", LIBRARY_PANGO);
	Linker.link(pango_cairo_font_map_get_font_type, "pango_cairo_font_map_get_font_type", LIBRARY_PANGO);
	Linker.link(pango_cairo_font_map_get_resolution, "pango_cairo_font_map_get_resolution", LIBRARY_PANGO);
	Linker.link(pango_cairo_font_map_set_default, "pango_cairo_font_map_set_default", LIBRARY_PANGO);
	Linker.link(pango_cairo_font_map_set_resolution, "pango_cairo_font_map_set_resolution", LIBRARY_PANGO);
	Linker.link(pango_cairo_font_get_scaled_font, "pango_cairo_font_get_scaled_font", LIBRARY_PANGO);

	// pango.PgMiscellaneous

	Linker.link(pango_is_zero_width, "pango_is_zero_width", LIBRARY_PANGO);
	Linker.link(pango_log2vis_get_embedding_levels, "pango_log2vis_get_embedding_levels", LIBRARY_PANGO);
	Linker.link(pango_parse_enum, "pango_parse_enum", LIBRARY_PANGO);
	Linker.link(pango_parse_stretch, "pango_parse_stretch", LIBRARY_PANGO);
	Linker.link(pango_parse_style, "pango_parse_style", LIBRARY_PANGO);
	Linker.link(pango_parse_variant, "pango_parse_variant", LIBRARY_PANGO);
	Linker.link(pango_parse_weight, "pango_parse_weight", LIBRARY_PANGO);
	Linker.link(pango_quantize_line_geometry, "pango_quantize_line_geometry", LIBRARY_PANGO);
	Linker.link(pango_scan_int, "pango_scan_int", LIBRARY_PANGO);
	Linker.link(pango_scan_string, "pango_scan_string", LIBRARY_PANGO);
	Linker.link(pango_scan_word, "pango_scan_word", LIBRARY_PANGO);
	Linker.link(pango_skip_space, "pango_skip_space", LIBRARY_PANGO);
	Linker.link(pango_split_file_list, "pango_split_file_list", LIBRARY_PANGO);
	Linker.link(pango_trim_string, "pango_trim_string", LIBRARY_PANGO);
	Linker.link(pango_read_line, "pango_read_line", LIBRARY_PANGO);

	// pango.PgVertical

	Linker.link(pango_gravity_get_for_matrix, "pango_gravity_get_for_matrix", LIBRARY_PANGO);
	Linker.link(pango_gravity_get_for_script, "pango_gravity_get_for_script", LIBRARY_PANGO);
	Linker.link(pango_gravity_get_for_script_and_width, "pango_gravity_get_for_script_and_width", LIBRARY_PANGO);
	Linker.link(pango_gravity_to_rotation, "pango_gravity_to_rotation", LIBRARY_PANGO);

	// pango.PgScript

	Linker.link(pango_script_for_unichar, "pango_script_for_unichar", LIBRARY_PANGO);
	Linker.link(pango_script_get_sample_language, "pango_script_get_sample_language", LIBRARY_PANGO);

	// pango.PgVersion

	Linker.link(pango_version, "pango_version", LIBRARY_PANGO);
	Linker.link(pango_version_check, "pango_version_check", LIBRARY_PANGO);
	Linker.link(pango_version_string, "pango_version_string", LIBRARY_PANGO);

	// pango.PgCairo

	Linker.link(pango_cairo_context_get_font_options, "pango_cairo_context_get_font_options", LIBRARY_PANGO);
	Linker.link(pango_cairo_context_get_resolution, "pango_cairo_context_get_resolution", LIBRARY_PANGO);
	Linker.link(pango_cairo_context_get_shape_renderer, "pango_cairo_context_get_shape_renderer", LIBRARY_PANGO);
	Linker.link(pango_cairo_context_set_font_options, "pango_cairo_context_set_font_options", LIBRARY_PANGO);
	Linker.link(pango_cairo_context_set_resolution, "pango_cairo_context_set_resolution", LIBRARY_PANGO);
	Linker.link(pango_cairo_context_set_shape_renderer, "pango_cairo_context_set_shape_renderer", LIBRARY_PANGO);
	Linker.link(pango_cairo_create_context, "pango_cairo_create_context", LIBRARY_PANGO);
	Linker.link(pango_cairo_create_layout, "pango_cairo_create_layout", LIBRARY_PANGO);
	Linker.link(pango_cairo_error_underline_path, "pango_cairo_error_underline_path", LIBRARY_PANGO);
	Linker.link(pango_cairo_glyph_string_path, "pango_cairo_glyph_string_path", LIBRARY_PANGO);
	Linker.link(pango_cairo_layout_line_path, "pango_cairo_layout_line_path", LIBRARY_PANGO);
	Linker.link(pango_cairo_layout_path, "pango_cairo_layout_path", LIBRARY_PANGO);
	Linker.link(pango_cairo_show_error_underline, "pango_cairo_show_error_underline", LIBRARY_PANGO);
	Linker.link(pango_cairo_show_glyph_item, "pango_cairo_show_glyph_item", LIBRARY_PANGO);
	Linker.link(pango_cairo_show_glyph_string, "pango_cairo_show_glyph_string", LIBRARY_PANGO);
	Linker.link(pango_cairo_show_layout, "pango_cairo_show_layout", LIBRARY_PANGO);
	Linker.link(pango_cairo_show_layout_line, "pango_cairo_show_layout_line", LIBRARY_PANGO);
	Linker.link(pango_cairo_update_context, "pango_cairo_update_context", LIBRARY_PANGO);
	Linker.link(pango_cairo_update_layout, "pango_cairo_update_layout", LIBRARY_PANGO);
}

__gshared extern(C)
{

	// pango.PgAttributeFontDesc

	PangoAttribute* function(PangoFontDescription* desc) c_pango_attr_font_desc_new;

	// pango.PgAttrFontFeatures

	PangoAttribute* function(const(char)* features) c_pango_attr_font_features_new;

	// pango.PgAttributeIterator

	GType function() c_pango_attr_iterator_get_type;
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
	int function(PangoAttrList* list, PangoAttrList* otherList) c_pango_attr_list_equal;
	PangoAttrList* function(PangoAttrList* list, PangoAttrFilterFunc func, void* data) c_pango_attr_list_filter;
	GSList* function(PangoAttrList* list) c_pango_attr_list_get_attributes;
	PangoAttrIterator* function(PangoAttrList* list) c_pango_attr_list_get_iterator;
	void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_insert;
	void function(PangoAttrList* list, PangoAttribute* attr) c_pango_attr_list_insert_before;
	PangoAttrList* function(PangoAttrList* list) c_pango_attr_list_ref;
	void function(PangoAttrList* list, PangoAttrList* other, int pos, int len) c_pango_attr_list_splice;
	char* function(PangoAttrList* list) c_pango_attr_list_to_string;
	void function(PangoAttrList* list) c_pango_attr_list_unref;
	void function(PangoAttrList* list, int pos, int remove, int add) c_pango_attr_list_update;
	PangoAttrList* function(const(char)* text) c_pango_attr_list_from_string;

	// pango.PgAttributeShape

	PangoAttribute* function(PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_attr_shape_new;
	PangoAttribute* function(PangoRectangle* inkRect, PangoRectangle* logicalRect, void* data, PangoAttrDataCopyFunc copyFunc, GDestroyNotify destroyFunc) c_pango_attr_shape_new_with_data;

	// pango.PgAttributeSize

	PangoAttribute* function(int size) c_pango_attr_size_new;
	PangoAttribute* function(int size) c_pango_attr_size_new_absolute;

	// pango.PgAttribute

	GType function() c_pango_attribute_get_type;
	PangoAttrColor* function(PangoAttribute* attr) c_pango_attribute_as_color;
	PangoAttrFloat* function(PangoAttribute* attr) c_pango_attribute_as_float;
	PangoAttrFontDesc* function(PangoAttribute* attr) c_pango_attribute_as_font_desc;
	PangoAttrFontFeatures* function(PangoAttribute* attr) c_pango_attribute_as_font_features;
	PangoAttrInt* function(PangoAttribute* attr) c_pango_attribute_as_int;
	PangoAttrLanguage* function(PangoAttribute* attr) c_pango_attribute_as_language;
	PangoAttrShape* function(PangoAttribute* attr) c_pango_attribute_as_shape;
	PangoAttrSize* function(PangoAttribute* attr) c_pango_attribute_as_size;
	PangoAttrString* function(PangoAttribute* attr) c_pango_attribute_as_string;
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
	int function(PangoColor* color, ushort* alpha, const(char)* spec) c_pango_color_parse_with_alpha;
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
	int function(PangoContext* context) c_pango_context_get_round_glyph_positions;
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
	void function(PangoContext* context, int roundPositions) c_pango_context_set_round_glyph_positions;
	PangoBidiType function(dchar ch) c_pango_bidi_type_for_unichar;
	void function(const(char)* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen) c_pango_break;
	void function(const(char)* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen) c_pango_default_break;
	PangoDirection function(const(char)* text, int length) c_pango_find_base_dir;
	void function(const(char)* text, int length, int* paragraphDelimiterIndex, int* nextParagraphStart) c_pango_find_paragraph_boundary;
	void function(const(char)* text, int length, int level, PangoLanguage* language, PangoLogAttr* attrs, int attrsLen) c_pango_get_log_attrs;
	int function(dchar ch, dchar* mirroredCh) c_pango_get_mirror_char;
	GList* function(PangoContext* context, const(char)* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter) c_pango_itemize;
	GList* function(PangoContext* context, PangoDirection baseDir, const(char)* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter) c_pango_itemize_with_base_dir;
	GList* function(GList* items) c_pango_reorder_items;
	void function(const(char)* text, int length, PangoAnalysis* analysis, PangoGlyphString* glyphs) c_pango_shape;
	void function(const(char)* itemText, int itemLength, const(char)* paragraphText, int paragraphLength, PangoAnalysis* analysis, PangoGlyphString* glyphs) c_pango_shape_full;
	PangoDirection function(dchar ch) c_pango_unichar_direction;

	// pango.PgCoverage

	GType function() c_pango_coverage_get_type;
	PangoCoverage* function() c_pango_coverage_new;
	PangoCoverage* function(char* bytes, int nBytes) c_pango_coverage_from_bytes;
	PangoCoverage* function(PangoCoverage* coverage) c_pango_coverage_copy;
	PangoCoverageLevel function(PangoCoverage* coverage, int index) c_pango_coverage_get;
	void function(PangoCoverage* coverage, PangoCoverage* other) c_pango_coverage_max;
	PangoCoverage* function(PangoCoverage* coverage) c_pango_coverage_ref;
	void function(PangoCoverage* coverage, int index, PangoCoverageLevel level) c_pango_coverage_set;
	void function(PangoCoverage* coverage, char** bytes, int* nBytes) c_pango_coverage_to_bytes;
	void function(PangoCoverage* coverage) c_pango_coverage_unref;

	// pango.PgFont

	GType function() c_pango_font_get_type;
	void function(PangoFontDescription** descs, int nDescs) c_pango_font_descriptions_free;
	PangoFont* function(PangoContext* context, GBytes* bytes, GError** err) c_pango_font_deserialize;
	PangoFontDescription* function(PangoFont* font) c_pango_font_describe;
	PangoFontDescription* function(PangoFont* font) c_pango_font_describe_with_absolute_size;
	PangoCoverage* function(PangoFont* font, PangoLanguage* language) c_pango_font_get_coverage;
	PangoFontFace* function(PangoFont* font) c_pango_font_get_face;
	void function(PangoFont* font, hb_feature_t* features, uint len, uint* numFeatures) c_pango_font_get_features;
	PangoFontMap* function(PangoFont* font) c_pango_font_get_font_map;
	void function(PangoFont* font, PangoGlyph glyph, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_font_get_glyph_extents;
	hb_font_t* function(PangoFont* font) c_pango_font_get_hb_font;
	PangoLanguage** function(PangoFont* font) c_pango_font_get_languages;
	PangoFontMetrics* function(PangoFont* font, PangoLanguage* language) c_pango_font_get_metrics;
	int function(PangoFont* font, dchar wc) c_pango_font_has_char;
	GBytes* function(PangoFont* font) c_pango_font_serialize;

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
	const(char)* function(PangoFontDescription* desc) c_pango_font_description_get_variations;
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
	void function(PangoFontDescription* desc, const(char)* variations) c_pango_font_description_set_variations;
	void function(PangoFontDescription* desc, const(char)* variations) c_pango_font_description_set_variations_static;
	void function(PangoFontDescription* desc, PangoWeight weight) c_pango_font_description_set_weight;
	char* function(PangoFontDescription* desc) c_pango_font_description_to_filename;
	char* function(PangoFontDescription* desc) c_pango_font_description_to_string;
	void function(PangoFontDescription* desc, PangoFontMask toUnset) c_pango_font_description_unset_fields;
	PangoFontDescription* function(const(char)* str) c_pango_font_description_from_string;

	// pango.PgFontFace

	GType function() c_pango_font_face_get_type;
	PangoFontDescription* function(PangoFontFace* face) c_pango_font_face_describe;
	const(char)* function(PangoFontFace* face) c_pango_font_face_get_face_name;
	PangoFontFamily* function(PangoFontFace* face) c_pango_font_face_get_family;
	int function(PangoFontFace* face) c_pango_font_face_is_synthesized;
	void function(PangoFontFace* face, int** sizes, int* nSizes) c_pango_font_face_list_sizes;

	// pango.PgFontFamily

	GType function() c_pango_font_family_get_type;
	PangoFontFace* function(PangoFontFamily* family, const(char)* name) c_pango_font_family_get_face;
	const(char)* function(PangoFontFamily* family) c_pango_font_family_get_name;
	int function(PangoFontFamily* family) c_pango_font_family_is_monospace;
	int function(PangoFontFamily* family) c_pango_font_family_is_variable;
	void function(PangoFontFamily* family, PangoFontFace*** faces, int* nFaces) c_pango_font_family_list_faces;

	// pango.PgFontMap

	GType function() c_pango_font_map_get_type;
	void function(PangoFontMap* fontmap) c_pango_font_map_changed;
	PangoContext* function(PangoFontMap* fontmap) c_pango_font_map_create_context;
	PangoFontFamily* function(PangoFontMap* fontmap, const(char)* name) c_pango_font_map_get_family;
	uint function(PangoFontMap* fontmap) c_pango_font_map_get_serial;
	void function(PangoFontMap* fontmap, PangoFontFamily*** families, int* nFamilies) c_pango_font_map_list_families;
	PangoFont* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc) c_pango_font_map_load_font;
	PangoFontset* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) c_pango_font_map_load_fontset;

	// pango.PgFontMetrics

	GType function() c_pango_font_metrics_get_type;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_approximate_char_width;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_approximate_digit_width;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_ascent;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_descent;
	int function(PangoFontMetrics* metrics) c_pango_font_metrics_get_height;
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
	PangoGlyphString* function(PangoGlyphString* string_) c_pango_glyph_string_copy;
	void function(PangoGlyphString* glyphs, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_glyph_string_extents;
	void function(PangoGlyphString* glyphs, int start, int end, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_glyph_string_extents_range;
	void function(PangoGlyphString* string_) c_pango_glyph_string_free;
	void function(PangoGlyphString* glyphs, const(char)* text, int length, int embeddingLevel, int* logicalWidths) c_pango_glyph_string_get_logical_widths;
	int function(PangoGlyphString* glyphs) c_pango_glyph_string_get_width;
	void function(PangoGlyphString* glyphs, const(char)* text, int length, PangoAnalysis* analysis, int index, int trailing, int* xPos) c_pango_glyph_string_index_to_x;
	void function(PangoGlyphString* glyphs, const(char)* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int index, int trailing, int* xPos) c_pango_glyph_string_index_to_x_full;
	void function(PangoGlyphString* string_, int newLen) c_pango_glyph_string_set_size;
	void function(PangoGlyphString* glyphs, const(char)* text, int length, PangoAnalysis* analysis, int xPos, int* index, int* trailing) c_pango_glyph_string_x_to_index;

	// pango.PgItem

	GType function() c_pango_item_get_type;
	PangoItem* function() c_pango_item_new;
	void function(PangoItem* item, PangoAttrIterator* iter) c_pango_item_apply_attrs;
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
	PangoLanguage** function() c_pango_language_get_preferred;

	// pango.PgLayout

	GType function() c_pango_layout_get_type;
	PangoLayout* function(PangoContext* context) c_pango_layout_new;
	PangoLayout* function(PangoContext* context, GBytes* bytes, PangoLayoutDeserializeFlags flags, GError** err) c_pango_layout_deserialize;
	void function(PangoLayout* layout) c_pango_layout_context_changed;
	PangoLayout* function(PangoLayout* src) c_pango_layout_copy;
	PangoAlignment function(PangoLayout* layout) c_pango_layout_get_alignment;
	PangoAttrList* function(PangoLayout* layout) c_pango_layout_get_attributes;
	int function(PangoLayout* layout) c_pango_layout_get_auto_dir;
	int function(PangoLayout* layout) c_pango_layout_get_baseline;
	void function(PangoLayout* layout, int index, PangoRectangle* strongPos, PangoRectangle* weakPos) c_pango_layout_get_caret_pos;
	int function(PangoLayout* layout) c_pango_layout_get_character_count;
	PangoContext* function(PangoLayout* layout) c_pango_layout_get_context;
	void function(PangoLayout* layout, int index, PangoRectangle* strongPos, PangoRectangle* weakPos) c_pango_layout_get_cursor_pos;
	PangoDirection function(PangoLayout* layout, int index) c_pango_layout_get_direction;
	PangoEllipsizeMode function(PangoLayout* layout) c_pango_layout_get_ellipsize;
	void function(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_get_extents;
	PangoFontDescription* function(PangoLayout* layout) c_pango_layout_get_font_description;
	int function(PangoLayout* layout) c_pango_layout_get_height;
	int function(PangoLayout* layout) c_pango_layout_get_indent;
	PangoLayoutIter* function(PangoLayout* layout) c_pango_layout_get_iter;
	int function(PangoLayout* layout) c_pango_layout_get_justify;
	int function(PangoLayout* layout) c_pango_layout_get_justify_last_line;
	PangoLayoutLine* function(PangoLayout* layout, int line) c_pango_layout_get_line;
	int function(PangoLayout* layout) c_pango_layout_get_line_count;
	PangoLayoutLine* function(PangoLayout* layout, int line) c_pango_layout_get_line_readonly;
	float function(PangoLayout* layout) c_pango_layout_get_line_spacing;
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
	GBytes* function(PangoLayout* layout, PangoLayoutSerializeFlags flags) c_pango_layout_serialize;
	void function(PangoLayout* layout, PangoAlignment alignment) c_pango_layout_set_alignment;
	void function(PangoLayout* layout, PangoAttrList* attrs) c_pango_layout_set_attributes;
	void function(PangoLayout* layout, int autoDir) c_pango_layout_set_auto_dir;
	void function(PangoLayout* layout, PangoEllipsizeMode ellipsize) c_pango_layout_set_ellipsize;
	void function(PangoLayout* layout, PangoFontDescription* desc) c_pango_layout_set_font_description;
	void function(PangoLayout* layout, int height) c_pango_layout_set_height;
	void function(PangoLayout* layout, int indent) c_pango_layout_set_indent;
	void function(PangoLayout* layout, int justify) c_pango_layout_set_justify;
	void function(PangoLayout* layout, int justify) c_pango_layout_set_justify_last_line;
	void function(PangoLayout* layout, float factor) c_pango_layout_set_line_spacing;
	void function(PangoLayout* layout, const(char)* markup, int length) c_pango_layout_set_markup;
	void function(PangoLayout* layout, const(char)* markup, int length, dchar accelMarker, dchar* accelChar) c_pango_layout_set_markup_with_accel;
	void function(PangoLayout* layout, int setting) c_pango_layout_set_single_paragraph_mode;
	void function(PangoLayout* layout, int spacing) c_pango_layout_set_spacing;
	void function(PangoLayout* layout, PangoTabArray* tabs) c_pango_layout_set_tabs;
	void function(PangoLayout* layout, const(char)* text, int length) c_pango_layout_set_text;
	void function(PangoLayout* layout, int width) c_pango_layout_set_width;
	void function(PangoLayout* layout, PangoWrapMode wrap) c_pango_layout_set_wrap;
	int function(PangoLayout* layout, PangoLayoutSerializeFlags flags, char* filename, GError** err) c_pango_layout_write_to_file;
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
	int function(PangoLayoutIter* iter) c_pango_layout_iter_get_run_baseline;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_iter_get_run_extents;
	PangoLayoutRun* function(PangoLayoutIter* iter) c_pango_layout_iter_get_run_readonly;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_next_char;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_next_cluster;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_next_line;
	int function(PangoLayoutIter* iter) c_pango_layout_iter_next_run;

	// pango.PgLayoutLine

	GType function() c_pango_layout_line_get_type;
	void function(PangoLayoutLine* line, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_line_get_extents;
	void function(PangoLayoutLine* line, int* height) c_pango_layout_line_get_height;
	int function(PangoLayoutLine* line) c_pango_layout_line_get_length;
	void function(PangoLayoutLine* layoutLine, PangoRectangle* inkRect, PangoRectangle* logicalRect) c_pango_layout_line_get_pixel_extents;
	PangoDirection function(PangoLayoutLine* line) c_pango_layout_line_get_resolved_direction;
	int function(PangoLayoutLine* line) c_pango_layout_line_get_start_index;
	void function(PangoLayoutLine* line, int startIndex, int endIndex, int** ranges, int* nRanges) c_pango_layout_line_get_x_ranges;
	void function(PangoLayoutLine* line, int index, int trailing, int* xPos) c_pango_layout_line_index_to_x;
	int function(PangoLayoutLine* line) c_pango_layout_line_is_paragraph_start;
	PangoLayoutLine* function(PangoLayoutLine* line) c_pango_layout_line_ref;
	void function(PangoLayoutLine* line) c_pango_layout_line_unref;
	int function(PangoLayoutLine* line, int xPos, int* index, int* trailing) c_pango_layout_line_x_to_index;

	// pango.PgMatrix

	GType function() c_pango_matrix_get_type;
	void function(PangoMatrix* matrix, PangoMatrix* newMatrix) c_pango_matrix_concat;
	PangoMatrix* function(PangoMatrix* matrix) c_pango_matrix_copy;
	void function(PangoMatrix* matrix) c_pango_matrix_free;
	double function(PangoMatrix* matrix) c_pango_matrix_get_font_scale_factor;
	void function(PangoMatrix* matrix, double* xscale, double* yscale) c_pango_matrix_get_font_scale_factors;
	double function(PangoMatrix* matrix) c_pango_matrix_get_slant_ratio;
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

	GType function() c_pango_script_iter_get_type;
	PangoScriptIter* function(const(char)* text, int length) c_pango_script_iter_new;
	void function(PangoScriptIter* iter) c_pango_script_iter_free;
	void function(PangoScriptIter* iter, char** start, char** end, PangoScript* script) c_pango_script_iter_get_range;
	int function(PangoScriptIter* iter) c_pango_script_iter_next;

	// pango.PgTabArray

	GType function() c_pango_tab_array_get_type;
	PangoTabArray* function(int initialSize, int positionsInPixels) c_pango_tab_array_new;
	PangoTabArray* function(int size, int positionsInPixels, PangoTabAlign firstAlignment, int firstPosition, ... ) c_pango_tab_array_new_with_positions;
	PangoTabArray* function(PangoTabArray* src) c_pango_tab_array_copy;
	void function(PangoTabArray* tabArray) c_pango_tab_array_free;
	dchar function(PangoTabArray* tabArray, int tabIndex) c_pango_tab_array_get_decimal_point;
	int function(PangoTabArray* tabArray) c_pango_tab_array_get_positions_in_pixels;
	int function(PangoTabArray* tabArray) c_pango_tab_array_get_size;
	void function(PangoTabArray* tabArray, int tabIndex, PangoTabAlign* alignment, int* location) c_pango_tab_array_get_tab;
	void function(PangoTabArray* tabArray, PangoTabAlign** alignments, int** locations) c_pango_tab_array_get_tabs;
	void function(PangoTabArray* tabArray, int newSize) c_pango_tab_array_resize;
	void function(PangoTabArray* tabArray, int tabIndex, dchar decimalPoint) c_pango_tab_array_set_decimal_point;
	void function(PangoTabArray* tabArray, int positionsInPixels) c_pango_tab_array_set_positions_in_pixels;
	void function(PangoTabArray* tabArray, int tabIndex, PangoTabAlign alignment, int location) c_pango_tab_array_set_tab;
	void function(PangoTabArray* tabArray) c_pango_tab_array_sort;
	char* function(PangoTabArray* tabArray) c_pango_tab_array_to_string;
	PangoTabArray* function(const(char)* text) c_pango_tab_array_from_string;

	// pango.PgCairoFontMap

	GType function() c_pango_cairo_font_get_type;
	PangoFontMap* function() c_pango_cairo_font_map_get_default;
	PangoFontMap* function() c_pango_cairo_font_map_new;
	PangoFontMap* function(cairo_font_type_t fonttype) c_pango_cairo_font_map_new_for_font_type;
	PangoContext* function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_create_context;
	cairo_font_type_t function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_get_font_type;
	double function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_get_resolution;
	void function(PangoCairoFontMap* fontmap) c_pango_cairo_font_map_set_default;
	void function(PangoCairoFontMap* fontmap, double dpi) c_pango_cairo_font_map_set_resolution;
	cairo_scaled_font_t* function(PangoCairoFont* font) c_pango_cairo_font_get_scaled_font;

	// pango.PgMiscellaneous

	int function(dchar ch) c_pango_is_zero_width;
	ubyte* function(const(char)* text, int length, PangoDirection* pbaseDir) c_pango_log2vis_get_embedding_levels;
	int function(GType type, const(char)* str, int* value, int warn, char** possibleValues) c_pango_parse_enum;
	int function(const(char)* str, PangoStretch* stretch, int warn) c_pango_parse_stretch;
	int function(const(char)* str, PangoStyle* style, int warn) c_pango_parse_style;
	int function(const(char)* str, PangoVariant* variant, int warn) c_pango_parse_variant;
	int function(const(char)* str, PangoWeight* weight, int warn) c_pango_parse_weight;
	void function(int* thickness, int* position) c_pango_quantize_line_geometry;
	int function(char** pos, int* out_) c_pango_scan_int;
	int function(char** pos, GString* out_) c_pango_scan_string;
	int function(char** pos, GString* out_) c_pango_scan_word;
	int function(char** pos) c_pango_skip_space;
	char** function(const(char)* str) c_pango_split_file_list;
	char* function(const(char)* str) c_pango_trim_string;
	int function(FILE* stream, GString* str) c_pango_read_line;

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

alias c_pango_attr_iterator_get_type pango_attr_iterator_get_type;
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
alias c_pango_attr_list_equal pango_attr_list_equal;
alias c_pango_attr_list_filter pango_attr_list_filter;
alias c_pango_attr_list_get_attributes pango_attr_list_get_attributes;
alias c_pango_attr_list_get_iterator pango_attr_list_get_iterator;
alias c_pango_attr_list_insert pango_attr_list_insert;
alias c_pango_attr_list_insert_before pango_attr_list_insert_before;
alias c_pango_attr_list_ref pango_attr_list_ref;
alias c_pango_attr_list_splice pango_attr_list_splice;
alias c_pango_attr_list_to_string pango_attr_list_to_string;
alias c_pango_attr_list_unref pango_attr_list_unref;
alias c_pango_attr_list_update pango_attr_list_update;
alias c_pango_attr_list_from_string pango_attr_list_from_string;

// pango.PgAttributeShape

alias c_pango_attr_shape_new pango_attr_shape_new;
alias c_pango_attr_shape_new_with_data pango_attr_shape_new_with_data;

// pango.PgAttributeSize

alias c_pango_attr_size_new pango_attr_size_new;
alias c_pango_attr_size_new_absolute pango_attr_size_new_absolute;

// pango.PgAttribute

alias c_pango_attribute_get_type pango_attribute_get_type;
alias c_pango_attribute_as_color pango_attribute_as_color;
alias c_pango_attribute_as_float pango_attribute_as_float;
alias c_pango_attribute_as_font_desc pango_attribute_as_font_desc;
alias c_pango_attribute_as_font_features pango_attribute_as_font_features;
alias c_pango_attribute_as_int pango_attribute_as_int;
alias c_pango_attribute_as_language pango_attribute_as_language;
alias c_pango_attribute_as_shape pango_attribute_as_shape;
alias c_pango_attribute_as_size pango_attribute_as_size;
alias c_pango_attribute_as_string pango_attribute_as_string;
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
alias c_pango_color_parse_with_alpha pango_color_parse_with_alpha;
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
alias c_pango_context_get_round_glyph_positions pango_context_get_round_glyph_positions;
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
alias c_pango_context_set_round_glyph_positions pango_context_set_round_glyph_positions;
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

alias c_pango_coverage_get_type pango_coverage_get_type;
alias c_pango_coverage_new pango_coverage_new;
alias c_pango_coverage_from_bytes pango_coverage_from_bytes;
alias c_pango_coverage_copy pango_coverage_copy;
alias c_pango_coverage_get pango_coverage_get;
alias c_pango_coverage_max pango_coverage_max;
alias c_pango_coverage_ref pango_coverage_ref;
alias c_pango_coverage_set pango_coverage_set;
alias c_pango_coverage_to_bytes pango_coverage_to_bytes;
alias c_pango_coverage_unref pango_coverage_unref;

// pango.PgFont

alias c_pango_font_get_type pango_font_get_type;
alias c_pango_font_descriptions_free pango_font_descriptions_free;
alias c_pango_font_deserialize pango_font_deserialize;
alias c_pango_font_describe pango_font_describe;
alias c_pango_font_describe_with_absolute_size pango_font_describe_with_absolute_size;
alias c_pango_font_get_coverage pango_font_get_coverage;
alias c_pango_font_get_face pango_font_get_face;
alias c_pango_font_get_features pango_font_get_features;
alias c_pango_font_get_font_map pango_font_get_font_map;
alias c_pango_font_get_glyph_extents pango_font_get_glyph_extents;
alias c_pango_font_get_hb_font pango_font_get_hb_font;
alias c_pango_font_get_languages pango_font_get_languages;
alias c_pango_font_get_metrics pango_font_get_metrics;
alias c_pango_font_has_char pango_font_has_char;
alias c_pango_font_serialize pango_font_serialize;

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
alias c_pango_font_description_get_variations pango_font_description_get_variations;
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
alias c_pango_font_description_set_variations pango_font_description_set_variations;
alias c_pango_font_description_set_variations_static pango_font_description_set_variations_static;
alias c_pango_font_description_set_weight pango_font_description_set_weight;
alias c_pango_font_description_to_filename pango_font_description_to_filename;
alias c_pango_font_description_to_string pango_font_description_to_string;
alias c_pango_font_description_unset_fields pango_font_description_unset_fields;
alias c_pango_font_description_from_string pango_font_description_from_string;

// pango.PgFontFace

alias c_pango_font_face_get_type pango_font_face_get_type;
alias c_pango_font_face_describe pango_font_face_describe;
alias c_pango_font_face_get_face_name pango_font_face_get_face_name;
alias c_pango_font_face_get_family pango_font_face_get_family;
alias c_pango_font_face_is_synthesized pango_font_face_is_synthesized;
alias c_pango_font_face_list_sizes pango_font_face_list_sizes;

// pango.PgFontFamily

alias c_pango_font_family_get_type pango_font_family_get_type;
alias c_pango_font_family_get_face pango_font_family_get_face;
alias c_pango_font_family_get_name pango_font_family_get_name;
alias c_pango_font_family_is_monospace pango_font_family_is_monospace;
alias c_pango_font_family_is_variable pango_font_family_is_variable;
alias c_pango_font_family_list_faces pango_font_family_list_faces;

// pango.PgFontMap

alias c_pango_font_map_get_type pango_font_map_get_type;
alias c_pango_font_map_changed pango_font_map_changed;
alias c_pango_font_map_create_context pango_font_map_create_context;
alias c_pango_font_map_get_family pango_font_map_get_family;
alias c_pango_font_map_get_serial pango_font_map_get_serial;
alias c_pango_font_map_list_families pango_font_map_list_families;
alias c_pango_font_map_load_font pango_font_map_load_font;
alias c_pango_font_map_load_fontset pango_font_map_load_fontset;

// pango.PgFontMetrics

alias c_pango_font_metrics_get_type pango_font_metrics_get_type;
alias c_pango_font_metrics_get_approximate_char_width pango_font_metrics_get_approximate_char_width;
alias c_pango_font_metrics_get_approximate_digit_width pango_font_metrics_get_approximate_digit_width;
alias c_pango_font_metrics_get_ascent pango_font_metrics_get_ascent;
alias c_pango_font_metrics_get_descent pango_font_metrics_get_descent;
alias c_pango_font_metrics_get_height pango_font_metrics_get_height;
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
alias c_pango_glyph_string_index_to_x_full pango_glyph_string_index_to_x_full;
alias c_pango_glyph_string_set_size pango_glyph_string_set_size;
alias c_pango_glyph_string_x_to_index pango_glyph_string_x_to_index;

// pango.PgItem

alias c_pango_item_get_type pango_item_get_type;
alias c_pango_item_new pango_item_new;
alias c_pango_item_apply_attrs pango_item_apply_attrs;
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
alias c_pango_language_get_preferred pango_language_get_preferred;

// pango.PgLayout

alias c_pango_layout_get_type pango_layout_get_type;
alias c_pango_layout_new pango_layout_new;
alias c_pango_layout_deserialize pango_layout_deserialize;
alias c_pango_layout_context_changed pango_layout_context_changed;
alias c_pango_layout_copy pango_layout_copy;
alias c_pango_layout_get_alignment pango_layout_get_alignment;
alias c_pango_layout_get_attributes pango_layout_get_attributes;
alias c_pango_layout_get_auto_dir pango_layout_get_auto_dir;
alias c_pango_layout_get_baseline pango_layout_get_baseline;
alias c_pango_layout_get_caret_pos pango_layout_get_caret_pos;
alias c_pango_layout_get_character_count pango_layout_get_character_count;
alias c_pango_layout_get_context pango_layout_get_context;
alias c_pango_layout_get_cursor_pos pango_layout_get_cursor_pos;
alias c_pango_layout_get_direction pango_layout_get_direction;
alias c_pango_layout_get_ellipsize pango_layout_get_ellipsize;
alias c_pango_layout_get_extents pango_layout_get_extents;
alias c_pango_layout_get_font_description pango_layout_get_font_description;
alias c_pango_layout_get_height pango_layout_get_height;
alias c_pango_layout_get_indent pango_layout_get_indent;
alias c_pango_layout_get_iter pango_layout_get_iter;
alias c_pango_layout_get_justify pango_layout_get_justify;
alias c_pango_layout_get_justify_last_line pango_layout_get_justify_last_line;
alias c_pango_layout_get_line pango_layout_get_line;
alias c_pango_layout_get_line_count pango_layout_get_line_count;
alias c_pango_layout_get_line_readonly pango_layout_get_line_readonly;
alias c_pango_layout_get_line_spacing pango_layout_get_line_spacing;
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
alias c_pango_layout_serialize pango_layout_serialize;
alias c_pango_layout_set_alignment pango_layout_set_alignment;
alias c_pango_layout_set_attributes pango_layout_set_attributes;
alias c_pango_layout_set_auto_dir pango_layout_set_auto_dir;
alias c_pango_layout_set_ellipsize pango_layout_set_ellipsize;
alias c_pango_layout_set_font_description pango_layout_set_font_description;
alias c_pango_layout_set_height pango_layout_set_height;
alias c_pango_layout_set_indent pango_layout_set_indent;
alias c_pango_layout_set_justify pango_layout_set_justify;
alias c_pango_layout_set_justify_last_line pango_layout_set_justify_last_line;
alias c_pango_layout_set_line_spacing pango_layout_set_line_spacing;
alias c_pango_layout_set_markup pango_layout_set_markup;
alias c_pango_layout_set_markup_with_accel pango_layout_set_markup_with_accel;
alias c_pango_layout_set_single_paragraph_mode pango_layout_set_single_paragraph_mode;
alias c_pango_layout_set_spacing pango_layout_set_spacing;
alias c_pango_layout_set_tabs pango_layout_set_tabs;
alias c_pango_layout_set_text pango_layout_set_text;
alias c_pango_layout_set_width pango_layout_set_width;
alias c_pango_layout_set_wrap pango_layout_set_wrap;
alias c_pango_layout_write_to_file pango_layout_write_to_file;
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
alias c_pango_layout_iter_get_run_baseline pango_layout_iter_get_run_baseline;
alias c_pango_layout_iter_get_run_extents pango_layout_iter_get_run_extents;
alias c_pango_layout_iter_get_run_readonly pango_layout_iter_get_run_readonly;
alias c_pango_layout_iter_next_char pango_layout_iter_next_char;
alias c_pango_layout_iter_next_cluster pango_layout_iter_next_cluster;
alias c_pango_layout_iter_next_line pango_layout_iter_next_line;
alias c_pango_layout_iter_next_run pango_layout_iter_next_run;

// pango.PgLayoutLine

alias c_pango_layout_line_get_type pango_layout_line_get_type;
alias c_pango_layout_line_get_extents pango_layout_line_get_extents;
alias c_pango_layout_line_get_height pango_layout_line_get_height;
alias c_pango_layout_line_get_length pango_layout_line_get_length;
alias c_pango_layout_line_get_pixel_extents pango_layout_line_get_pixel_extents;
alias c_pango_layout_line_get_resolved_direction pango_layout_line_get_resolved_direction;
alias c_pango_layout_line_get_start_index pango_layout_line_get_start_index;
alias c_pango_layout_line_get_x_ranges pango_layout_line_get_x_ranges;
alias c_pango_layout_line_index_to_x pango_layout_line_index_to_x;
alias c_pango_layout_line_is_paragraph_start pango_layout_line_is_paragraph_start;
alias c_pango_layout_line_ref pango_layout_line_ref;
alias c_pango_layout_line_unref pango_layout_line_unref;
alias c_pango_layout_line_x_to_index pango_layout_line_x_to_index;

// pango.PgMatrix

alias c_pango_matrix_get_type pango_matrix_get_type;
alias c_pango_matrix_concat pango_matrix_concat;
alias c_pango_matrix_copy pango_matrix_copy;
alias c_pango_matrix_free pango_matrix_free;
alias c_pango_matrix_get_font_scale_factor pango_matrix_get_font_scale_factor;
alias c_pango_matrix_get_font_scale_factors pango_matrix_get_font_scale_factors;
alias c_pango_matrix_get_slant_ratio pango_matrix_get_slant_ratio;
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

alias c_pango_script_iter_get_type pango_script_iter_get_type;
alias c_pango_script_iter_new pango_script_iter_new;
alias c_pango_script_iter_free pango_script_iter_free;
alias c_pango_script_iter_get_range pango_script_iter_get_range;
alias c_pango_script_iter_next pango_script_iter_next;

// pango.PgTabArray

alias c_pango_tab_array_get_type pango_tab_array_get_type;
alias c_pango_tab_array_new pango_tab_array_new;
alias c_pango_tab_array_new_with_positions pango_tab_array_new_with_positions;
alias c_pango_tab_array_copy pango_tab_array_copy;
alias c_pango_tab_array_free pango_tab_array_free;
alias c_pango_tab_array_get_decimal_point pango_tab_array_get_decimal_point;
alias c_pango_tab_array_get_positions_in_pixels pango_tab_array_get_positions_in_pixels;
alias c_pango_tab_array_get_size pango_tab_array_get_size;
alias c_pango_tab_array_get_tab pango_tab_array_get_tab;
alias c_pango_tab_array_get_tabs pango_tab_array_get_tabs;
alias c_pango_tab_array_resize pango_tab_array_resize;
alias c_pango_tab_array_set_decimal_point pango_tab_array_set_decimal_point;
alias c_pango_tab_array_set_positions_in_pixels pango_tab_array_set_positions_in_pixels;
alias c_pango_tab_array_set_tab pango_tab_array_set_tab;
alias c_pango_tab_array_sort pango_tab_array_sort;
alias c_pango_tab_array_to_string pango_tab_array_to_string;
alias c_pango_tab_array_from_string pango_tab_array_from_string;

// pango.PgCairoFontMap

alias c_pango_cairo_font_get_type pango_cairo_font_get_type;
alias c_pango_cairo_font_map_get_default pango_cairo_font_map_get_default;
alias c_pango_cairo_font_map_new pango_cairo_font_map_new;
alias c_pango_cairo_font_map_new_for_font_type pango_cairo_font_map_new_for_font_type;
alias c_pango_cairo_font_map_create_context pango_cairo_font_map_create_context;
alias c_pango_cairo_font_map_get_font_type pango_cairo_font_map_get_font_type;
alias c_pango_cairo_font_map_get_resolution pango_cairo_font_map_get_resolution;
alias c_pango_cairo_font_map_set_default pango_cairo_font_map_set_default;
alias c_pango_cairo_font_map_set_resolution pango_cairo_font_map_set_resolution;
alias c_pango_cairo_font_get_scaled_font pango_cairo_font_get_scaled_font;

// pango.PgMiscellaneous

alias c_pango_is_zero_width pango_is_zero_width;
alias c_pango_log2vis_get_embedding_levels pango_log2vis_get_embedding_levels;
alias c_pango_parse_enum pango_parse_enum;
alias c_pango_parse_stretch pango_parse_stretch;
alias c_pango_parse_style pango_parse_style;
alias c_pango_parse_variant pango_parse_variant;
alias c_pango_parse_weight pango_parse_weight;
alias c_pango_quantize_line_geometry pango_quantize_line_geometry;
alias c_pango_scan_int pango_scan_int;
alias c_pango_scan_string pango_scan_string;
alias c_pango_scan_word pango_scan_word;
alias c_pango_skip_space pango_skip_space;
alias c_pango_split_file_list pango_split_file_list;
alias c_pango_trim_string pango_trim_string;
alias c_pango_read_line pango_read_line;

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
