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

version (Windows)
	static immutable LIBRARY_PANGO = ["libpango-1.0-0.dll;pango-1.0-0.dll;pango-1.dll", "libpangocairo-1.0-0.dll;pangocairo-1.0-0.dll;pangocairo-1.dll"];
else version (OSX)
	static immutable LIBRARY_PANGO = ["libpango-1.0.0.dylib", "libpangocairo-1.0.0.dylib"];
else
	static immutable LIBRARY_PANGO = ["libpango-1.0.so.0", "libpangocairo-1.0.so.0"];

__gshared extern(C)
{

	// pango.PgAttributeFontDesc

	PangoAttribute* pango_attr_font_desc_new(PangoFontDescription* desc);

	// pango.PgAttrFontFeatures

	PangoAttribute* pango_attr_font_features_new(const(char)* features);

	// pango.PgAttributeIterator

	GType pango_attr_iterator_get_type();
	PangoAttrIterator* pango_attr_iterator_copy(PangoAttrIterator* iterator);
	void pango_attr_iterator_destroy(PangoAttrIterator* iterator);
	PangoAttribute* pango_attr_iterator_get(PangoAttrIterator* iterator, PangoAttrType type);
	GSList* pango_attr_iterator_get_attrs(PangoAttrIterator* iterator);
	void pango_attr_iterator_get_font(PangoAttrIterator* iterator, PangoFontDescription* desc, PangoLanguage** language, GSList** extraAttrs);
	int pango_attr_iterator_next(PangoAttrIterator* iterator);
	void pango_attr_iterator_range(PangoAttrIterator* iterator, int* start, int* end);

	// pango.PgAttributeLanguage

	PangoAttribute* pango_attr_language_new(PangoLanguage* language);

	// pango.PgAttributeList

	GType pango_attr_list_get_type();
	PangoAttrList* pango_attr_list_new();
	void pango_attr_list_change(PangoAttrList* list, PangoAttribute* attr);
	PangoAttrList* pango_attr_list_copy(PangoAttrList* list);
	int pango_attr_list_equal(PangoAttrList* list, PangoAttrList* otherList);
	PangoAttrList* pango_attr_list_filter(PangoAttrList* list, PangoAttrFilterFunc func, void* data);
	GSList* pango_attr_list_get_attributes(PangoAttrList* list);
	PangoAttrIterator* pango_attr_list_get_iterator(PangoAttrList* list);
	void pango_attr_list_insert(PangoAttrList* list, PangoAttribute* attr);
	void pango_attr_list_insert_before(PangoAttrList* list, PangoAttribute* attr);
	PangoAttrList* pango_attr_list_ref(PangoAttrList* list);
	void pango_attr_list_splice(PangoAttrList* list, PangoAttrList* other, int pos, int len);
	void pango_attr_list_unref(PangoAttrList* list);
	void pango_attr_list_update(PangoAttrList* list, int pos, int remove, int add);

	// pango.PgAttributeShape

	PangoAttribute* pango_attr_shape_new(PangoRectangle* inkRect, PangoRectangle* logicalRect);
	PangoAttribute* pango_attr_shape_new_with_data(PangoRectangle* inkRect, PangoRectangle* logicalRect, void* data, PangoAttrDataCopyFunc copyFunc, GDestroyNotify destroyFunc);

	// pango.PgAttributeSize

	PangoAttribute* pango_attr_size_new(int size);
	PangoAttribute* pango_attr_size_new_absolute(int size);

	// pango.PgAttribute

	GType pango_attribute_get_type();
	PangoAttribute* pango_attribute_copy(PangoAttribute* attr);
	void pango_attribute_destroy(PangoAttribute* attr);
	int pango_attribute_equal(PangoAttribute* attr1, PangoAttribute* attr2);
	void pango_attribute_init(PangoAttribute* attr, PangoAttrClass* klass);
	PangoAttribute* pango_attr_background_new(ushort red, ushort green, ushort blue);
	PangoAttribute* pango_attr_background_alpha_new(ushort alpha);
	PangoAttribute* pango_attr_fallback_new(int enableFallback);
	PangoAttribute* pango_attr_family_new(const(char)* family);
	PangoAttribute* pango_attr_foreground_new(ushort red, ushort green, ushort blue);
	PangoAttribute* pango_attr_foreground_alpha_new(ushort alpha);
	PangoAttribute* pango_attr_gravity_hint_new(PangoGravityHint hint);
	PangoAttribute* pango_attr_gravity_new(PangoGravity gravity);
	PangoAttribute* pango_attr_letter_spacing_new(int letterSpacing);
	PangoAttribute* pango_attr_rise_new(int rise);
	PangoAttribute* pango_attr_scale_new(double scaleFactor);
	PangoAttribute* pango_attr_stretch_new(PangoStretch stretch);
	PangoAttribute* pango_attr_strikethrough_color_new(ushort red, ushort green, ushort blue);
	PangoAttribute* pango_attr_strikethrough_new(int strikethrough);
	PangoAttribute* pango_attr_style_new(PangoStyle style);
	const(char)* pango_attr_type_get_name(PangoAttrType type);
	PangoAttrType pango_attr_type_register(const(char)* name);
	PangoAttribute* pango_attr_underline_color_new(ushort red, ushort green, ushort blue);
	PangoAttribute* pango_attr_underline_new(PangoUnderline underline);
	PangoAttribute* pango_attr_variant_new(PangoVariant variant);
	PangoAttribute* pango_attr_weight_new(PangoWeight weight);
	int pango_markup_parser_finish(GMarkupParseContext* context, PangoAttrList** attrList, char** text, dchar* accelChar, GError** err);
	GMarkupParseContext* pango_markup_parser_new(dchar accelMarker);
	int pango_parse_markup(const(char)* markupText, int length, dchar accelMarker, PangoAttrList** attrList, char** text, dchar* accelChar, GError** err);

	// pango.PgColor

	GType pango_color_get_type();
	PangoColor* pango_color_copy(PangoColor* src);
	void pango_color_free(PangoColor* color);
	int pango_color_parse(PangoColor* color, const(char)* spec);
	int pango_color_parse_with_alpha(PangoColor* color, ushort* alpha, const(char)* spec);
	char* pango_color_to_string(PangoColor* color);

	// pango.PgContext

	GType pango_context_get_type();
	PangoContext* pango_context_new();
	void pango_context_changed(PangoContext* context);
	PangoDirection pango_context_get_base_dir(PangoContext* context);
	PangoGravity pango_context_get_base_gravity(PangoContext* context);
	PangoFontDescription* pango_context_get_font_description(PangoContext* context);
	PangoFontMap* pango_context_get_font_map(PangoContext* context);
	PangoGravity pango_context_get_gravity(PangoContext* context);
	PangoGravityHint pango_context_get_gravity_hint(PangoContext* context);
	PangoLanguage* pango_context_get_language(PangoContext* context);
	PangoMatrix* pango_context_get_matrix(PangoContext* context);
	PangoFontMetrics* pango_context_get_metrics(PangoContext* context, PangoFontDescription* desc, PangoLanguage* language);
	int pango_context_get_round_glyph_positions(PangoContext* context);
	uint pango_context_get_serial(PangoContext* context);
	void pango_context_list_families(PangoContext* context, PangoFontFamily*** families, int* nFamilies);
	PangoFont* pango_context_load_font(PangoContext* context, PangoFontDescription* desc);
	PangoFontset* pango_context_load_fontset(PangoContext* context, PangoFontDescription* desc, PangoLanguage* language);
	void pango_context_set_base_dir(PangoContext* context, PangoDirection direction);
	void pango_context_set_base_gravity(PangoContext* context, PangoGravity gravity);
	void pango_context_set_font_description(PangoContext* context, PangoFontDescription* desc);
	void pango_context_set_font_map(PangoContext* context, PangoFontMap* fontMap);
	void pango_context_set_gravity_hint(PangoContext* context, PangoGravityHint hint);
	void pango_context_set_language(PangoContext* context, PangoLanguage* language);
	void pango_context_set_matrix(PangoContext* context, PangoMatrix* matrix);
	void pango_context_set_round_glyph_positions(PangoContext* context, int roundPositions);
	PangoBidiType pango_bidi_type_for_unichar(dchar ch);
	void pango_break(const(char)* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen);
	void pango_default_break(const(char)* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen);
	PangoDirection pango_find_base_dir(const(char)* text, int length);
	void pango_find_paragraph_boundary(const(char)* text, int length, int* paragraphDelimiterIndex, int* nextParagraphStart);
	void pango_get_log_attrs(const(char)* text, int length, int level, PangoLanguage* language, PangoLogAttr* logAttrs, int attrsLen);
	int pango_get_mirror_char(dchar ch, dchar* mirroredCh);
	GList* pango_itemize(PangoContext* context, const(char)* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter);
	GList* pango_itemize_with_base_dir(PangoContext* context, PangoDirection baseDir, const(char)* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter);
	GList* pango_reorder_items(GList* logicalItems);
	void pango_shape(const(char)* text, int length, PangoAnalysis* analysis, PangoGlyphString* glyphs);
	void pango_shape_full(const(char)* itemText, int itemLength, const(char)* paragraphText, int paragraphLength, PangoAnalysis* analysis, PangoGlyphString* glyphs);
	PangoDirection pango_unichar_direction(dchar ch);

	// pango.PgCoverage

	GType pango_coverage_get_type();
	PangoCoverage* pango_coverage_new();
	PangoCoverage* pango_coverage_from_bytes(char* bytes, int nBytes);
	PangoCoverage* pango_coverage_copy(PangoCoverage* coverage);
	PangoCoverageLevel pango_coverage_get(PangoCoverage* coverage, int index);
	void pango_coverage_max(PangoCoverage* coverage, PangoCoverage* other);
	PangoCoverage* pango_coverage_ref(PangoCoverage* coverage);
	void pango_coverage_set(PangoCoverage* coverage, int index, PangoCoverageLevel level);
	void pango_coverage_to_bytes(PangoCoverage* coverage, char** bytes, int* nBytes);
	void pango_coverage_unref(PangoCoverage* coverage);

	// pango.PgFont

	GType pango_font_get_type();
	void pango_font_descriptions_free(PangoFontDescription** descs, int nDescs);
	PangoFontDescription* pango_font_describe(PangoFont* font);
	PangoFontDescription* pango_font_describe_with_absolute_size(PangoFont* font);
	PangoCoverage* pango_font_get_coverage(PangoFont* font, PangoLanguage* language);
	PangoFontFace* pango_font_get_face(PangoFont* font);
	void pango_font_get_features(PangoFont* font, hb_feature_t* features, uint len, uint* numFeatures);
	PangoFontMap* pango_font_get_font_map(PangoFont* font);
	void pango_font_get_glyph_extents(PangoFont* font, PangoGlyph glyph, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	hb_font_t* pango_font_get_hb_font(PangoFont* font);
	PangoFontMetrics* pango_font_get_metrics(PangoFont* font, PangoLanguage* language);
	int pango_font_has_char(PangoFont* font, dchar wc);

	// pango.PgFontDescription

	GType pango_font_description_get_type();
	PangoFontDescription* pango_font_description_new();
	int pango_font_description_better_match(PangoFontDescription* desc, PangoFontDescription* oldMatch, PangoFontDescription* newMatch);
	PangoFontDescription* pango_font_description_copy(PangoFontDescription* desc);
	PangoFontDescription* pango_font_description_copy_static(PangoFontDescription* desc);
	int pango_font_description_equal(PangoFontDescription* desc1, PangoFontDescription* desc2);
	void pango_font_description_free(PangoFontDescription* desc);
	const(char)* pango_font_description_get_family(PangoFontDescription* desc);
	PangoGravity pango_font_description_get_gravity(PangoFontDescription* desc);
	PangoFontMask pango_font_description_get_set_fields(PangoFontDescription* desc);
	int pango_font_description_get_size(PangoFontDescription* desc);
	int pango_font_description_get_size_is_absolute(PangoFontDescription* desc);
	PangoStretch pango_font_description_get_stretch(PangoFontDescription* desc);
	PangoStyle pango_font_description_get_style(PangoFontDescription* desc);
	PangoVariant pango_font_description_get_variant(PangoFontDescription* desc);
	const(char)* pango_font_description_get_variations(PangoFontDescription* desc);
	PangoWeight pango_font_description_get_weight(PangoFontDescription* desc);
	uint pango_font_description_hash(PangoFontDescription* desc);
	void pango_font_description_merge(PangoFontDescription* desc, PangoFontDescription* descToMerge, int replaceExisting);
	void pango_font_description_merge_static(PangoFontDescription* desc, PangoFontDescription* descToMerge, int replaceExisting);
	void pango_font_description_set_absolute_size(PangoFontDescription* desc, double size);
	void pango_font_description_set_family(PangoFontDescription* desc, const(char)* family);
	void pango_font_description_set_family_static(PangoFontDescription* desc, const(char)* family);
	void pango_font_description_set_gravity(PangoFontDescription* desc, PangoGravity gravity);
	void pango_font_description_set_size(PangoFontDescription* desc, int size);
	void pango_font_description_set_stretch(PangoFontDescription* desc, PangoStretch stretch);
	void pango_font_description_set_style(PangoFontDescription* desc, PangoStyle style);
	void pango_font_description_set_variant(PangoFontDescription* desc, PangoVariant variant);
	void pango_font_description_set_variations(PangoFontDescription* desc, const(char)* variations);
	void pango_font_description_set_variations_static(PangoFontDescription* desc, const(char)* variations);
	void pango_font_description_set_weight(PangoFontDescription* desc, PangoWeight weight);
	char* pango_font_description_to_filename(PangoFontDescription* desc);
	char* pango_font_description_to_string(PangoFontDescription* desc);
	void pango_font_description_unset_fields(PangoFontDescription* desc, PangoFontMask toUnset);
	PangoFontDescription* pango_font_description_from_string(const(char)* str);

	// pango.PgFontFace

	GType pango_font_face_get_type();
	PangoFontDescription* pango_font_face_describe(PangoFontFace* face);
	const(char)* pango_font_face_get_face_name(PangoFontFace* face);
	PangoFontFamily* pango_font_face_get_family(PangoFontFace* face);
	int pango_font_face_is_synthesized(PangoFontFace* face);
	void pango_font_face_list_sizes(PangoFontFace* face, int** sizes, int* nSizes);

	// pango.PgFontFamily

	GType pango_font_family_get_type();
	PangoFontFace* pango_font_family_get_face(PangoFontFamily* family, const(char)* name);
	const(char)* pango_font_family_get_name(PangoFontFamily* family);
	int pango_font_family_is_monospace(PangoFontFamily* family);
	int pango_font_family_is_variable(PangoFontFamily* family);
	void pango_font_family_list_faces(PangoFontFamily* family, PangoFontFace*** faces, int* nFaces);

	// pango.PgFontMap

	GType pango_font_map_get_type();
	void pango_font_map_changed(PangoFontMap* fontmap);
	PangoContext* pango_font_map_create_context(PangoFontMap* fontmap);
	PangoFontFamily* pango_font_map_get_family(PangoFontMap* fontmap, const(char)* name);
	uint pango_font_map_get_serial(PangoFontMap* fontmap);
	void pango_font_map_list_families(PangoFontMap* fontmap, PangoFontFamily*** families, int* nFamilies);
	PangoFont* pango_font_map_load_font(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc);
	PangoFontset* pango_font_map_load_fontset(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc, PangoLanguage* language);

	// pango.PgFontMetrics

	GType pango_font_metrics_get_type();
	int pango_font_metrics_get_approximate_char_width(PangoFontMetrics* metrics);
	int pango_font_metrics_get_approximate_digit_width(PangoFontMetrics* metrics);
	int pango_font_metrics_get_ascent(PangoFontMetrics* metrics);
	int pango_font_metrics_get_descent(PangoFontMetrics* metrics);
	int pango_font_metrics_get_height(PangoFontMetrics* metrics);
	int pango_font_metrics_get_strikethrough_position(PangoFontMetrics* metrics);
	int pango_font_metrics_get_strikethrough_thickness(PangoFontMetrics* metrics);
	int pango_font_metrics_get_underline_position(PangoFontMetrics* metrics);
	int pango_font_metrics_get_underline_thickness(PangoFontMetrics* metrics);
	PangoFontMetrics* pango_font_metrics_ref(PangoFontMetrics* metrics);
	void pango_font_metrics_unref(PangoFontMetrics* metrics);

	// pango.PgFontset

	GType pango_fontset_get_type();
	void pango_fontset_foreach(PangoFontset* fontset, PangoFontsetForeachFunc func, void* data);
	PangoFont* pango_fontset_get_font(PangoFontset* fontset, uint wc);
	PangoFontMetrics* pango_fontset_get_metrics(PangoFontset* fontset);

	// pango.PgFontsetSimple

	GType pango_fontset_simple_get_type();
	PangoFontsetSimple* pango_fontset_simple_new(PangoLanguage* language);
	void pango_fontset_simple_append(PangoFontsetSimple* fontset, PangoFont* font);
	int pango_fontset_simple_size(PangoFontsetSimple* fontset);

	// pango.PgGlyphItem

	GType pango_glyph_item_get_type();
	GSList* pango_glyph_item_apply_attrs(PangoGlyphItem* glyphItem, const(char)* text, PangoAttrList* list);
	PangoGlyphItem* pango_glyph_item_copy(PangoGlyphItem* orig);
	void pango_glyph_item_free(PangoGlyphItem* glyphItem);
	void pango_glyph_item_get_logical_widths(PangoGlyphItem* glyphItem, const(char)* text, int* logicalWidths);
	void pango_glyph_item_letter_space(PangoGlyphItem* glyphItem, const(char)* text, PangoLogAttr* logAttrs, int letterSpacing);
	PangoGlyphItem* pango_glyph_item_split(PangoGlyphItem* orig, const(char)* text, int splitIndex);

	// pango.PgGlyphItemIter

	GType pango_glyph_item_iter_get_type();
	PangoGlyphItemIter* pango_glyph_item_iter_copy(PangoGlyphItemIter* orig);
	void pango_glyph_item_iter_free(PangoGlyphItemIter* iter);
	int pango_glyph_item_iter_init_end(PangoGlyphItemIter* iter, PangoGlyphItem* glyphItem, const(char)* text);
	int pango_glyph_item_iter_init_start(PangoGlyphItemIter* iter, PangoGlyphItem* glyphItem, const(char)* text);
	int pango_glyph_item_iter_next_cluster(PangoGlyphItemIter* iter);
	int pango_glyph_item_iter_prev_cluster(PangoGlyphItemIter* iter);

	// pango.PgGlyphString

	GType pango_glyph_string_get_type();
	PangoGlyphString* pango_glyph_string_new();
	PangoGlyphString* pango_glyph_string_copy(PangoGlyphString* string_);
	void pango_glyph_string_extents(PangoGlyphString* glyphs, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	void pango_glyph_string_extents_range(PangoGlyphString* glyphs, int start, int end, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	void pango_glyph_string_free(PangoGlyphString* string_);
	void pango_glyph_string_get_logical_widths(PangoGlyphString* glyphs, const(char)* text, int length, int embeddingLevel, int* logicalWidths);
	int pango_glyph_string_get_width(PangoGlyphString* glyphs);
	void pango_glyph_string_index_to_x(PangoGlyphString* glyphs, char* text, int length, PangoAnalysis* analysis, int index, int trailing, int* xPos);
	void pango_glyph_string_set_size(PangoGlyphString* string_, int newLen);
	void pango_glyph_string_x_to_index(PangoGlyphString* glyphs, char* text, int length, PangoAnalysis* analysis, int xPos, int* index, int* trailing);

	// pango.PgItem

	GType pango_item_get_type();
	PangoItem* pango_item_new();
	void pango_item_apply_attrs(PangoItem* item, PangoAttrIterator* iter);
	PangoItem* pango_item_copy(PangoItem* item);
	void pango_item_free(PangoItem* item);
	PangoItem* pango_item_split(PangoItem* orig, int splitIndex, int splitOffset);

	// pango.PgLanguage

	GType pango_language_get_type();
	const(char)* pango_language_get_sample_string(PangoLanguage* language);
	PangoScript* pango_language_get_scripts(PangoLanguage* language, int* numScripts);
	int pango_language_includes_script(PangoLanguage* language, PangoScript script);
	int pango_language_matches(PangoLanguage* language, const(char)* rangeList);
	const(char)* pango_language_to_string(PangoLanguage* language);
	PangoLanguage* pango_language_from_string(const(char)* language);
	PangoLanguage* pango_language_get_default();
	PangoLanguage** pango_language_get_preferred();

	// pango.PgLayout

	GType pango_layout_get_type();
	PangoLayout* pango_layout_new(PangoContext* context);
	void pango_layout_context_changed(PangoLayout* layout);
	PangoLayout* pango_layout_copy(PangoLayout* src);
	PangoAlignment pango_layout_get_alignment(PangoLayout* layout);
	PangoAttrList* pango_layout_get_attributes(PangoLayout* layout);
	int pango_layout_get_auto_dir(PangoLayout* layout);
	int pango_layout_get_baseline(PangoLayout* layout);
	int pango_layout_get_character_count(PangoLayout* layout);
	PangoContext* pango_layout_get_context(PangoLayout* layout);
	void pango_layout_get_cursor_pos(PangoLayout* layout, int index, PangoRectangle* strongPos, PangoRectangle* weakPos);
	PangoDirection pango_layout_get_direction(PangoLayout* layout, int index);
	PangoEllipsizeMode pango_layout_get_ellipsize(PangoLayout* layout);
	void pango_layout_get_extents(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	PangoFontDescription* pango_layout_get_font_description(PangoLayout* layout);
	int pango_layout_get_height(PangoLayout* layout);
	int pango_layout_get_indent(PangoLayout* layout);
	PangoLayoutIter* pango_layout_get_iter(PangoLayout* layout);
	int pango_layout_get_justify(PangoLayout* layout);
	PangoLayoutLine* pango_layout_get_line(PangoLayout* layout, int line);
	int pango_layout_get_line_count(PangoLayout* layout);
	PangoLayoutLine* pango_layout_get_line_readonly(PangoLayout* layout, int line);
	float pango_layout_get_line_spacing(PangoLayout* layout);
	GSList* pango_layout_get_lines(PangoLayout* layout);
	GSList* pango_layout_get_lines_readonly(PangoLayout* layout);
	void pango_layout_get_log_attrs(PangoLayout* layout, PangoLogAttr** attrs, int* nAttrs);
	PangoLogAttr* pango_layout_get_log_attrs_readonly(PangoLayout* layout, int* nAttrs);
	void pango_layout_get_pixel_extents(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	void pango_layout_get_pixel_size(PangoLayout* layout, int* width, int* height);
	uint pango_layout_get_serial(PangoLayout* layout);
	int pango_layout_get_single_paragraph_mode(PangoLayout* layout);
	void pango_layout_get_size(PangoLayout* layout, int* width, int* height);
	int pango_layout_get_spacing(PangoLayout* layout);
	PangoTabArray* pango_layout_get_tabs(PangoLayout* layout);
	const(char)* pango_layout_get_text(PangoLayout* layout);
	int pango_layout_get_unknown_glyphs_count(PangoLayout* layout);
	int pango_layout_get_width(PangoLayout* layout);
	PangoWrapMode pango_layout_get_wrap(PangoLayout* layout);
	void pango_layout_index_to_line_x(PangoLayout* layout, int index, int trailing, int* line, int* xPos);
	void pango_layout_index_to_pos(PangoLayout* layout, int index, PangoRectangle* pos);
	int pango_layout_is_ellipsized(PangoLayout* layout);
	int pango_layout_is_wrapped(PangoLayout* layout);
	void pango_layout_move_cursor_visually(PangoLayout* layout, int strong, int oldIndex, int oldTrailing, int direction, int* newIndex, int* newTrailing);
	void pango_layout_set_alignment(PangoLayout* layout, PangoAlignment alignment);
	void pango_layout_set_attributes(PangoLayout* layout, PangoAttrList* attrs);
	void pango_layout_set_auto_dir(PangoLayout* layout, int autoDir);
	void pango_layout_set_ellipsize(PangoLayout* layout, PangoEllipsizeMode ellipsize);
	void pango_layout_set_font_description(PangoLayout* layout, PangoFontDescription* desc);
	void pango_layout_set_height(PangoLayout* layout, int height);
	void pango_layout_set_indent(PangoLayout* layout, int indent);
	void pango_layout_set_justify(PangoLayout* layout, int justify);
	void pango_layout_set_line_spacing(PangoLayout* layout, float factor);
	void pango_layout_set_markup(PangoLayout* layout, const(char)* markup, int length);
	void pango_layout_set_markup_with_accel(PangoLayout* layout, const(char)* markup, int length, dchar accelMarker, dchar* accelChar);
	void pango_layout_set_single_paragraph_mode(PangoLayout* layout, int setting);
	void pango_layout_set_spacing(PangoLayout* layout, int spacing);
	void pango_layout_set_tabs(PangoLayout* layout, PangoTabArray* tabs);
	void pango_layout_set_text(PangoLayout* layout, const(char)* text, int length);
	void pango_layout_set_width(PangoLayout* layout, int width);
	void pango_layout_set_wrap(PangoLayout* layout, PangoWrapMode wrap);
	int pango_layout_xy_to_index(PangoLayout* layout, int x, int y, int* index, int* trailing);

	// pango.PgLayoutIter

	GType pango_layout_iter_get_type();
	int pango_layout_iter_at_last_line(PangoLayoutIter* iter);
	PangoLayoutIter* pango_layout_iter_copy(PangoLayoutIter* iter);
	void pango_layout_iter_free(PangoLayoutIter* iter);
	int pango_layout_iter_get_baseline(PangoLayoutIter* iter);
	void pango_layout_iter_get_char_extents(PangoLayoutIter* iter, PangoRectangle* logicalRect);
	void pango_layout_iter_get_cluster_extents(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	int pango_layout_iter_get_index(PangoLayoutIter* iter);
	PangoLayout* pango_layout_iter_get_layout(PangoLayoutIter* iter);
	void pango_layout_iter_get_layout_extents(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	PangoLayoutLine* pango_layout_iter_get_line(PangoLayoutIter* iter);
	void pango_layout_iter_get_line_extents(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	PangoLayoutLine* pango_layout_iter_get_line_readonly(PangoLayoutIter* iter);
	void pango_layout_iter_get_line_yrange(PangoLayoutIter* iter, int* y0, int* y1);
	PangoLayoutRun* pango_layout_iter_get_run(PangoLayoutIter* iter);
	void pango_layout_iter_get_run_extents(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	PangoLayoutRun* pango_layout_iter_get_run_readonly(PangoLayoutIter* iter);
	int pango_layout_iter_next_char(PangoLayoutIter* iter);
	int pango_layout_iter_next_cluster(PangoLayoutIter* iter);
	int pango_layout_iter_next_line(PangoLayoutIter* iter);
	int pango_layout_iter_next_run(PangoLayoutIter* iter);

	// pango.PgLayoutLine

	GType pango_layout_line_get_type();
	void pango_layout_line_get_extents(PangoLayoutLine* line, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	void pango_layout_line_get_height(PangoLayoutLine* line, int* height);
	void pango_layout_line_get_pixel_extents(PangoLayoutLine* layoutLine, PangoRectangle* inkRect, PangoRectangle* logicalRect);
	void pango_layout_line_get_x_ranges(PangoLayoutLine* line, int startIndex, int endIndex, int** ranges, int* nRanges);
	void pango_layout_line_index_to_x(PangoLayoutLine* line, int index, int trailing, int* xPos);
	PangoLayoutLine* pango_layout_line_ref(PangoLayoutLine* line);
	void pango_layout_line_unref(PangoLayoutLine* line);
	int pango_layout_line_x_to_index(PangoLayoutLine* line, int xPos, int* index, int* trailing);

	// pango.PgMatrix

	GType pango_matrix_get_type();
	void pango_matrix_concat(PangoMatrix* matrix, PangoMatrix* newMatrix);
	PangoMatrix* pango_matrix_copy(PangoMatrix* matrix);
	void pango_matrix_free(PangoMatrix* matrix);
	double pango_matrix_get_font_scale_factor(PangoMatrix* matrix);
	void pango_matrix_get_font_scale_factors(PangoMatrix* matrix, double* xscale, double* yscale);
	void pango_matrix_rotate(PangoMatrix* matrix, double degrees);
	void pango_matrix_scale(PangoMatrix* matrix, double scaleX, double scaleY);
	void pango_matrix_transform_distance(PangoMatrix* matrix, double* dx, double* dy);
	void pango_matrix_transform_pixel_rectangle(PangoMatrix* matrix, PangoRectangle* rect);
	void pango_matrix_transform_point(PangoMatrix* matrix, double* x, double* y);
	void pango_matrix_transform_rectangle(PangoMatrix* matrix, PangoRectangle* rect);
	void pango_matrix_translate(PangoMatrix* matrix, double tx, double ty);
	void pango_extents_to_pixels(PangoRectangle* inclusive, PangoRectangle* nearest);
	int pango_units_from_double(double d);
	double pango_units_to_double(int i);

	// pango.PgRenderer

	GType pango_renderer_get_type();
	void pango_renderer_activate(PangoRenderer* renderer);
	void pango_renderer_deactivate(PangoRenderer* renderer);
	void pango_renderer_draw_error_underline(PangoRenderer* renderer, int x, int y, int width, int height);
	void pango_renderer_draw_glyph(PangoRenderer* renderer, PangoFont* font, PangoGlyph glyph, double x, double y);
	void pango_renderer_draw_glyph_item(PangoRenderer* renderer, const(char)* text, PangoGlyphItem* glyphItem, int x, int y);
	void pango_renderer_draw_glyphs(PangoRenderer* renderer, PangoFont* font, PangoGlyphString* glyphs, int x, int y);
	void pango_renderer_draw_layout(PangoRenderer* renderer, PangoLayout* layout, int x, int y);
	void pango_renderer_draw_layout_line(PangoRenderer* renderer, PangoLayoutLine* line, int x, int y);
	void pango_renderer_draw_rectangle(PangoRenderer* renderer, PangoRenderPart part, int x, int y, int width, int height);
	void pango_renderer_draw_trapezoid(PangoRenderer* renderer, PangoRenderPart part, double y1, double x11, double x21, double y2, double x12, double x22);
	ushort pango_renderer_get_alpha(PangoRenderer* renderer, PangoRenderPart part);
	PangoColor* pango_renderer_get_color(PangoRenderer* renderer, PangoRenderPart part);
	PangoLayout* pango_renderer_get_layout(PangoRenderer* renderer);
	PangoLayoutLine* pango_renderer_get_layout_line(PangoRenderer* renderer);
	PangoMatrix* pango_renderer_get_matrix(PangoRenderer* renderer);
	void pango_renderer_part_changed(PangoRenderer* renderer, PangoRenderPart part);
	void pango_renderer_set_alpha(PangoRenderer* renderer, PangoRenderPart part, ushort alpha);
	void pango_renderer_set_color(PangoRenderer* renderer, PangoRenderPart part, PangoColor* color);
	void pango_renderer_set_matrix(PangoRenderer* renderer, PangoMatrix* matrix);

	// pango.PgScriptIter

	GType pango_script_iter_get_type();
	PangoScriptIter* pango_script_iter_new(const(char)* text, int length);
	void pango_script_iter_free(PangoScriptIter* iter);
	void pango_script_iter_get_range(PangoScriptIter* iter, char** start, char** end, PangoScript* script);
	int pango_script_iter_next(PangoScriptIter* iter);

	// pango.PgTabArray

	GType pango_tab_array_get_type();
	PangoTabArray* pango_tab_array_new(int initialSize, int positionsInPixels);
	PangoTabArray* pango_tab_array_new_with_positions(int size, int positionsInPixels, PangoTabAlign firstAlignment, int firstPosition, ... );
	PangoTabArray* pango_tab_array_copy(PangoTabArray* src);
	void pango_tab_array_free(PangoTabArray* tabArray);
	int pango_tab_array_get_positions_in_pixels(PangoTabArray* tabArray);
	int pango_tab_array_get_size(PangoTabArray* tabArray);
	void pango_tab_array_get_tab(PangoTabArray* tabArray, int tabIndex, PangoTabAlign* alignment, int* location);
	void pango_tab_array_get_tabs(PangoTabArray* tabArray, PangoTabAlign** alignments, int** locations);
	void pango_tab_array_resize(PangoTabArray* tabArray, int newSize);
	void pango_tab_array_set_tab(PangoTabArray* tabArray, int tabIndex, PangoTabAlign alignment, int location);

	// pango.PgCairoFontMap

	GType pango_cairo_font_get_type();
	PangoFontMap* pango_cairo_font_map_get_default();
	PangoFontMap* pango_cairo_font_map_new();
	PangoFontMap* pango_cairo_font_map_new_for_font_type(cairo_font_type_t fonttype);
	PangoContext* pango_cairo_font_map_create_context(PangoCairoFontMap* fontmap);
	cairo_font_type_t pango_cairo_font_map_get_font_type(PangoCairoFontMap* fontmap);
	double pango_cairo_font_map_get_resolution(PangoCairoFontMap* fontmap);
	void pango_cairo_font_map_set_default(PangoCairoFontMap* fontmap);
	void pango_cairo_font_map_set_resolution(PangoCairoFontMap* fontmap, double dpi);
	cairo_scaled_font_t* pango_cairo_font_get_scaled_font(PangoCairoFont* font);

	// pango.PgMiscellaneous

	int pango_is_zero_width(dchar ch);
	ubyte* pango_log2vis_get_embedding_levels(const(char)* text, int length, PangoDirection* pbaseDir);
	int pango_parse_enum(GType type, const(char)* str, int* value, int warn, char** possibleValues);
	int pango_parse_stretch(const(char)* str, PangoStretch* stretch, int warn);
	int pango_parse_style(const(char)* str, PangoStyle* style, int warn);
	int pango_parse_variant(const(char)* str, PangoVariant* variant, int warn);
	int pango_parse_weight(const(char)* str, PangoWeight* weight, int warn);
	void pango_quantize_line_geometry(int* thickness, int* position);
	int pango_scan_int(char** pos, int* out_);
	int pango_scan_string(char** pos, GString* out_);
	int pango_scan_word(char** pos, GString* out_);
	int pango_skip_space(char** pos);
	char** pango_split_file_list(const(char)* str);
	char* pango_trim_string(const(char)* str);
	int pango_read_line(FILE* stream, GString* str);

	// pango.PgVertical

	PangoGravity pango_gravity_get_for_matrix(PangoMatrix* matrix);
	PangoGravity pango_gravity_get_for_script(PangoScript script, PangoGravity baseGravity, PangoGravityHint hint);
	PangoGravity pango_gravity_get_for_script_and_width(PangoScript script, int wide, PangoGravity baseGravity, PangoGravityHint hint);
	double pango_gravity_to_rotation(PangoGravity gravity);

	// pango.PgScript

	PangoScript pango_script_for_unichar(dchar ch);
	PangoLanguage* pango_script_get_sample_language(PangoScript script);

	// pango.PgVersion

	int pango_version();
	const(char)* pango_version_check(int requiredMajor, int requiredMinor, int requiredMicro);
	const(char)* pango_version_string();

	// pango.PgCairo

	cairo_font_options_t* pango_cairo_context_get_font_options(PangoContext* context);
	double pango_cairo_context_get_resolution(PangoContext* context);
	PangoCairoShapeRendererFunc pango_cairo_context_get_shape_renderer(PangoContext* context, void** data);
	void pango_cairo_context_set_font_options(PangoContext* context, cairo_font_options_t* options);
	void pango_cairo_context_set_resolution(PangoContext* context, double dpi);
	void pango_cairo_context_set_shape_renderer(PangoContext* context, PangoCairoShapeRendererFunc func, void* data, GDestroyNotify dnotify);
	PangoContext* pango_cairo_create_context(cairo_t* cr);
	PangoLayout* pango_cairo_create_layout(cairo_t* cr);
	void pango_cairo_error_underline_path(cairo_t* cr, double x, double y, double width, double height);
	void pango_cairo_glyph_string_path(cairo_t* cr, PangoFont* font, PangoGlyphString* glyphs);
	void pango_cairo_layout_line_path(cairo_t* cr, PangoLayoutLine* line);
	void pango_cairo_layout_path(cairo_t* cr, PangoLayout* layout);
	void pango_cairo_show_error_underline(cairo_t* cr, double x, double y, double width, double height);
	void pango_cairo_show_glyph_item(cairo_t* cr, const(char)* text, PangoGlyphItem* glyphItem);
	void pango_cairo_show_glyph_string(cairo_t* cr, PangoFont* font, PangoGlyphString* glyphs);
	void pango_cairo_show_layout(cairo_t* cr, PangoLayout* layout);
	void pango_cairo_show_layout_line(cairo_t* cr, PangoLayoutLine* line);
	void pango_cairo_update_context(cairo_t* cr, PangoContext* context);
	void pango_cairo_update_layout(cairo_t* cr, PangoLayout* layout);
}