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

// Adapted from John Reimer's DUI loader modules


module gtkc.pango;

version(Tango)
{
	private import tango.stdc.stdio;
	debug private import tango.io.Stdout;
}
else
	private import std.stdio;

private import gtkc.pangotypes;
private import gtkc.Loader;
private import gtkc.paths;

private Linker pango_Linker;

static this()
{
 pango_Linker = new Linker(libPath ~ importLibs[LIBRARY.PANGO] );
 pango_Linker.link(pangoLinks);

 debug
 {
 	version(Tango) Stdout("* Finished static this(): pango").newline;
 	else writefln("* Finished static this(): pango");
 }
}

static ~this()
{
 delete pango_Linker;

 debug
 {
 	version(Tango) Stdout("* Finished static ~this(): pango").newline;
 	else writefln("* Finished static ~this(): pango");
 }
}

extern(C) 
{	
	// pango.PgContext
	
	GList* function(PangoContext* context, char* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter)pango_itemize;
	GList* function(PangoContext* context, PangoDirection baseDir, char* text, int startIndex, int length, PangoAttrList* attrs, PangoAttrIterator* cachedIter)pango_itemize_with_base_dir;
	GList* function(GList* logicalItems)pango_reorder_items;
	PangoContext* function()pango_context_new;
	void function(PangoContext* context, PangoFontMap* fontMap)pango_context_set_font_map;
	PangoFontMap* function(PangoContext* context)pango_context_get_font_map;
	PangoFontDescription* function(PangoContext* context)pango_context_get_font_description;
	void function(PangoContext* context, PangoFontDescription* desc)pango_context_set_font_description;
	PangoLanguage* function(PangoContext* context)pango_context_get_language;
	void function(PangoContext* context, PangoLanguage* language)pango_context_set_language;
	PangoDirection function(PangoContext* context)pango_context_get_base_dir;
	void function(PangoContext* context, PangoDirection direction)pango_context_set_base_dir;
	PangoGravity function(PangoContext* context)pango_context_get_base_gravity;
	void function(PangoContext* context, PangoGravity gravity)pango_context_set_base_gravity;
	PangoGravity function(PangoContext* context)pango_context_get_gravity;
	PangoGravityHint function(PangoContext* context)pango_context_get_gravity_hint;
	void function(PangoContext* context, PangoGravityHint hint)pango_context_set_gravity_hint;
	PangoMatrix* function(PangoContext* context)pango_context_get_matrix;
	void function(PangoContext* context, PangoMatrix* matrix)pango_context_set_matrix;
	PangoFont* function(PangoContext* context, PangoFontDescription* desc)pango_context_load_font;
	PangoFontset* function(PangoContext* context, PangoFontDescription* desc, PangoLanguage* language)pango_context_load_fontset;
	PangoFontMetrics* function(PangoContext* context, PangoFontDescription* desc, PangoLanguage* language)pango_context_get_metrics;
	void function(PangoContext* context, PangoFontFamily*** families, int* nFamilies)pango_context_list_families;
	gboolean function(gunichar ch, gunichar* mirroredCh)pango_get_mirror_char;
	PangoDirection function(gunichar ch)pango_unichar_direction;
	PangoDirection function(gchar* text, gint length)pango_find_base_dir;
	void function(gchar* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen)pango_break;
	void function(char* text, int length, int level, PangoLanguage* language, PangoLogAttr* logAttrs, int attrsLen)pango_get_log_attrs;
	void function(gchar* text, gint length, gint* paragraphDelimiterIndex, gint* nextParagraphStart)pango_find_paragraph_boundary;
	void function(gchar* text, int length, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen)pango_default_break;
	void function(gchar* text, gint length, PangoAnalysis* analysis, PangoGlyphString* glyphs)pango_shape;
	
	// pango.PgItem
	
	void function(PangoItem* item)pango_item_free;
	PangoItem* function(PangoItem* item)pango_item_copy;
	PangoItem* function()pango_item_new;
	PangoItem* function(PangoItem* orig, int splitIndex, int splitOffset)pango_item_split;
	
	// pango.PgMatrix
	
	double function(int i)pango_units_to_double;
	int function(double d)pango_units_from_double;
	void function(PangoRectangle* inclusive, PangoRectangle* nearest)pango_extents_to_pixels;
	PangoMatrix* function(PangoMatrix* matrix)pango_matrix_copy;
	void function(PangoMatrix* matrix)pango_matrix_free;
	void function(PangoMatrix* matrix, double tx, double ty)pango_matrix_translate;
	void function(PangoMatrix* matrix, double scaleX, double scaleY)pango_matrix_scale;
	void function(PangoMatrix* matrix, double degrees)pango_matrix_rotate;
	void function(PangoMatrix* matrix, PangoMatrix* newMatrix)pango_matrix_concat;
	void function(PangoMatrix* matrix, double* x, double* y)pango_matrix_transform_point;
	void function(PangoMatrix* matrix, double* dx, double* dy)pango_matrix_transform_distance;
	void function(PangoMatrix* matrix, PangoRectangle* rect)pango_matrix_transform_rectangle;
	void function(PangoMatrix* matrix, PangoRectangle* rect)pango_matrix_transform_pixel_rectangle;
	double function(PangoMatrix* matrix)pango_matrix_get_font_scale_factor;
	
	// pango.PgGlyphString
	
	PangoGlyphString* function()pango_glyph_string_new;
	PangoGlyphString* function(PangoGlyphString* string)pango_glyph_string_copy;
	void function(PangoGlyphString* string, gint newLen)pango_glyph_string_set_size;
	void function(PangoGlyphString* string)pango_glyph_string_free;
	void function(PangoGlyphString* glyphs, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_glyph_string_extents;
	void function(PangoGlyphString* glyphs, int start, int end, PangoFont* font, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_glyph_string_extents_range;
	int function(PangoGlyphString* glyphs)pango_glyph_string_get_width;
	void function(PangoGlyphString* glyphs, char* text, int length, PangoAnalysis* analysis, int index, gboolean trailing, int* xPos)pango_glyph_string_index_to_x;
	void function(PangoGlyphString* glyphs, char* text, int length, PangoAnalysis* analysis, int xPos, int* index, int* trailing)pango_glyph_string_x_to_index;
	void function(PangoGlyphString* glyphs, char* text, int length, int embeddingLevel, int* logicalWidths)pango_glyph_string_get_logical_widths;
	
	// pango.PgGlyphItem
	
	PangoGlyphItem* function(PangoGlyphItem* orig, char* text, int splitIndex)pango_glyph_item_split;
	GSList* function(PangoGlyphItem* glyphItem, char* text, PangoAttrList* list)pango_glyph_item_apply_attrs;
	void function(PangoGlyphItem* glyphItem, char* text, PangoLogAttr* logAttrs, int letterSpacing)pango_glyph_item_letter_space;
	PangoGlyphItem* function(PangoGlyphItem* orig)pango_glyph_item_copy;
	void function(PangoGlyphItem* glyphItem)pango_glyph_item_free;
	
	// pango.PgFont
	
	PangoEngineShape* function(PangoFont* font, PangoLanguage* language, guint32 ch)pango_font_find_shaper;
	PangoFontDescription* function(PangoFont* font)pango_font_describe;
	PangoFontDescription* function(PangoFont* font)pango_font_describe_with_absolute_size;
	PangoCoverage* function(PangoFont* font, PangoLanguage* language)pango_font_get_coverage;
	void function(PangoFont* font, PangoGlyph glyph, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_font_get_glyph_extents;
	PangoFontMetrics* function(PangoFont* font, PangoLanguage* language)pango_font_get_metrics;
	PangoFontMap* function(PangoFont* font)pango_font_get_font_map;
	
	// pango.PgFontDescription
	
	PangoFontDescription* function()pango_font_description_new;
	PangoFontDescription* function(PangoFontDescription* desc)pango_font_description_copy;
	PangoFontDescription* function(PangoFontDescription* desc)pango_font_description_copy_static;
	guint function(PangoFontDescription* desc)pango_font_description_hash;
	gboolean function(PangoFontDescription* desc1, PangoFontDescription* desc2)pango_font_description_equal;
	void function(PangoFontDescription* desc)pango_font_description_free;
	void function(PangoFontDescription* desc, char* family)pango_font_description_set_family;
	void function(PangoFontDescription* desc, char* family)pango_font_description_set_family_static;
	char* function(PangoFontDescription* desc)pango_font_description_get_family;
	void function(PangoFontDescription* desc, PangoStyle style)pango_font_description_set_style;
	PangoStyle function(PangoFontDescription* desc)pango_font_description_get_style;
	void function(PangoFontDescription* desc, PangoVariant variant)pango_font_description_set_variant;
	PangoVariant function(PangoFontDescription* desc)pango_font_description_get_variant;
	void function(PangoFontDescription* desc, PangoWeight weight)pango_font_description_set_weight;
	PangoWeight function(PangoFontDescription* desc)pango_font_description_get_weight;
	void function(PangoFontDescription* desc, PangoStretch stretch)pango_font_description_set_stretch;
	PangoStretch function(PangoFontDescription* desc)pango_font_description_get_stretch;
	void function(PangoFontDescription* desc, gint size)pango_font_description_set_size;
	gint function(PangoFontDescription* desc)pango_font_description_get_size;
	void function(PangoFontDescription* desc, double size)pango_font_description_set_absolute_size;
	gboolean function(PangoFontDescription* desc)pango_font_description_get_size_is_absolute;
	void function(PangoFontDescription* desc, PangoGravity gravity)pango_font_description_set_gravity;
	PangoGravity function(PangoFontDescription* desc)pango_font_description_get_gravity;
	PangoFontMask function(PangoFontDescription* desc)pango_font_description_get_set_fields;
	void function(PangoFontDescription* desc, PangoFontMask toUnset)pango_font_description_unset_fields;
	void function(PangoFontDescription* desc, PangoFontDescription* descToMerge, gboolean replaceExisting)pango_font_description_merge;
	void function(PangoFontDescription* desc, PangoFontDescription* descToMerge, gboolean replaceExisting)pango_font_description_merge_static;
	gboolean function(PangoFontDescription* desc, PangoFontDescription* oldMatch, PangoFontDescription* newMatch)pango_font_description_better_match;
	PangoFontDescription* function(char* str)pango_font_description_from_string;
	char* function(PangoFontDescription* desc)pango_font_description_to_string;
	char* function(PangoFontDescription* desc)pango_font_description_to_filename;
	
	// pango.PgFontMetrics
	
	PangoFontMetrics* function(PangoFontMetrics* metrics)pango_font_metrics_ref;
	void function(PangoFontMetrics* metrics)pango_font_metrics_unref;
	int function(PangoFontMetrics* metrics)pango_font_metrics_get_ascent;
	int function(PangoFontMetrics* metrics)pango_font_metrics_get_descent;
	int function(PangoFontMetrics* metrics)pango_font_metrics_get_approximate_char_width;
	int function(PangoFontMetrics* metrics)pango_font_metrics_get_approximate_digit_width;
	int function(PangoFontMetrics* metrics)pango_font_metrics_get_underline_thickness;
	int function(PangoFontMetrics* metrics)pango_font_metrics_get_underline_position;
	int function(PangoFontMetrics* metrics)pango_font_metrics_get_strikethrough_thickness;
	int function(PangoFontMetrics* metrics)pango_font_metrics_get_strikethrough_position;
	
	// pango.PgFontFamily
	
	char* function(PangoFontFamily* family)pango_font_family_get_name;
	gboolean function(PangoFontFamily* family)pango_font_family_is_monospace;
	void function(PangoFontFamily* family, PangoFontFace*** faces, int* nFaces)pango_font_family_list_faces;
	
	// pango.PgFontFace
	
	char* function(PangoFontFace* face)pango_font_face_get_face_name;
	void function(PangoFontFace* face, int** sizes, int* nSizes)pango_font_face_list_sizes;
	PangoFontDescription* function(PangoFontFace* face)pango_font_face_describe;
	gboolean function(PangoFontFace* face)pango_font_face_is_synthesized;
	
	// pango.PgFontMap
	
	PangoFont* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc)pango_font_map_load_font;
	PangoFontset* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc, PangoLanguage* language)pango_font_map_load_fontset;
	void function(PangoFontMap* fontmap, PangoFontFamily*** families, int* nFamilies)pango_font_map_list_families;
	char* function(PangoFontMap* fontmap)pango_font_map_get_shape_engine_type;
	
	// pango.PgFontset
	
	PangoFont* function(PangoFontset* fontset, guint wc)pango_fontset_get_font;
	PangoFontMetrics* function(PangoFontset* fontset)pango_fontset_get_metrics;
	void function(PangoFontset* fontset, PangoFontsetForeachFunc func, gpointer data)pango_fontset_foreach;
	
	// pango.PgFontsetSimple
	
	PangoFontsetSimple* function(PangoLanguage* language)pango_fontset_simple_new;
	void function(PangoFontsetSimple* fontset, PangoFont* font)pango_fontset_simple_append;
	int function(PangoFontsetSimple* fontset)pango_fontset_simple_size;
	
	// pango.PgAttribute
	
	gboolean function(char* markupText, int length, gunichar accelMarker, PangoAttrList** attrList, char** text, gunichar* accelChar, GError** error)pango_parse_markup;
	PangoAttrType function(gchar* name)pango_attr_type_register;
	void function(PangoAttribute* attr, PangoAttrClass* klass)pango_attribute_init;
	PangoAttribute* function(PangoAttribute* attr)pango_attribute_copy;
	gboolean function(PangoAttribute* attr1, PangoAttribute* attr2)pango_attribute_equal;
	void function(PangoAttribute* attr)pango_attribute_destroy;
	PangoAttribute* function(PangoLanguage* language)pango_attr_language_new;
	PangoAttribute* function(char* family)pango_attr_family_new;
	PangoAttribute* function(PangoStyle style)pango_attr_style_new;
	PangoAttribute* function(PangoVariant variant)pango_attr_variant_new;
	PangoAttribute* function(PangoStretch stretch)pango_attr_stretch_new;
	PangoAttribute* function(PangoWeight weight)pango_attr_weight_new;
	PangoAttribute* function(int size)pango_attr_size_new;
	PangoAttribute* function(int size)pango_attr_size_new_absolute;
	PangoAttribute* function(PangoFontDescription* desc)pango_attr_font_desc_new;
	PangoAttribute* function(guint16 red, guint16 green, guint16 blue)pango_attr_foreground_new;
	PangoAttribute* function(guint16 red, guint16 green, guint16 blue)pango_attr_background_new;
	PangoAttribute* function(gboolean strikethrough)pango_attr_strikethrough_new;
	PangoAttribute* function(guint16 red, guint16 green, guint16 blue)pango_attr_strikethrough_color_new;
	PangoAttribute* function(PangoUnderline underline)pango_attr_underline_new;
	PangoAttribute* function(guint16 red, guint16 green, guint16 blue)pango_attr_underline_color_new;
	PangoAttribute* function(PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_attr_shape_new;
	PangoAttribute* function(PangoRectangle* inkRect, PangoRectangle* logicalRect, gpointer data, PangoAttrDataCopyFunc copyFunc, GDestroyNotify destroyFunc)pango_attr_shape_new_with_data;
	PangoAttribute* function(double scaleFactor)pango_attr_scale_new;
	PangoAttribute* function(int rise)pango_attr_rise_new;
	PangoAttribute* function(int letterSpacing)pango_attr_letter_spacing_new;
	PangoAttribute* function(gboolean enableFallback)pango_attr_fallback_new;
	PangoAttribute* function(PangoGravity gravity)pango_attr_gravity_new;
	PangoAttribute* function(PangoGravityHint hint)pango_attr_gravity_hint_new;
	
	// pango.PgColor
	
	gboolean function(PangoColor* color, char* spec)pango_color_parse;
	PangoColor* function(PangoColor* src)pango_color_copy;
	void function(PangoColor* color)pango_color_free;
	gchar* function(PangoColor* color)pango_color_to_string;
	
	// pango.PgLanguage
	
	PangoLanguage* function(char* language)pango_language_from_string;
	gboolean function(PangoLanguage* language, char* rangeList)pango_language_matches;
	
	// pango.PgAttributeList
	
	PangoAttrList* function()pango_attr_list_new;
	PangoAttrList* function(PangoAttrList* list)pango_attr_list_ref;
	void function(PangoAttrList* list)pango_attr_list_unref;
	PangoAttrList* function(PangoAttrList* list)pango_attr_list_copy;
	void function(PangoAttrList* list, PangoAttribute* attr)pango_attr_list_insert;
	void function(PangoAttrList* list, PangoAttribute* attr)pango_attr_list_insert_before;
	void function(PangoAttrList* list, PangoAttribute* attr)pango_attr_list_change;
	void function(PangoAttrList* list, PangoAttrList* other, gint pos, gint len)pango_attr_list_splice;
	PangoAttrList* function(PangoAttrList* list, PangoAttrFilterFunc func, gpointer data)pango_attr_list_filter;
	PangoAttrIterator* function(PangoAttrList* list)pango_attr_list_get_iterator;
	
	// pango.PgAttributeIterator
	
	PangoAttrIterator* function(PangoAttrIterator* iterator)pango_attr_iterator_copy;
	gboolean function(PangoAttrIterator* iterator)pango_attr_iterator_next;
	void function(PangoAttrIterator* iterator, gint* start, gint* end)pango_attr_iterator_range;
	PangoAttribute* function(PangoAttrIterator* iterator, PangoAttrType type)pango_attr_iterator_get;
	void function(PangoAttrIterator* iterator, PangoFontDescription* desc, PangoLanguage** language, GSList** extraAttrs)pango_attr_iterator_get_font;
	GSList* function(PangoAttrIterator* iterator)pango_attr_iterator_get_attrs;
	void function(PangoAttrIterator* iterator)pango_attr_iterator_destroy;
	
	// pango.PgTabArray
	
	PangoTabArray* function(gint initialSize, gboolean positionsInPixels)pango_tab_array_new;
	PangoTabArray* function(gint size, gboolean positionsInPixels, PangoTabAlign firstAlignment, gint firstPosition, ... )pango_tab_array_new_with_positions;
	PangoTabArray* function(PangoTabArray* src)pango_tab_array_copy;
	void function(PangoTabArray* tabArray)pango_tab_array_free;
	gint function(PangoTabArray* tabArray)pango_tab_array_get_size;
	void function(PangoTabArray* tabArray, gint newSize)pango_tab_array_resize;
	void function(PangoTabArray* tabArray, gint tabIndex, PangoTabAlign alignment, gint location)pango_tab_array_set_tab;
	void function(PangoTabArray* tabArray, gint tabIndex, PangoTabAlign* alignment, gint* location)pango_tab_array_get_tab;
	void function(PangoTabArray* tabArray, PangoTabAlign** alignments, gint** locations)pango_tab_array_get_tabs;
	gboolean function(PangoTabArray* tabArray)pango_tab_array_get_positions_in_pixels;
	
	// pango.PgLayout
	
	PangoLayout* function(PangoContext* context)pango_layout_new;
	PangoLayout* function(PangoLayout* src)pango_layout_copy;
	PangoContext* function(PangoLayout* layout)pango_layout_get_context;
	void function(PangoLayout* layout)pango_layout_context_changed;
	void function(PangoLayout* layout, char* text, int length)pango_layout_set_text;
	char* function(PangoLayout* layout)pango_layout_get_text;
	void function(PangoLayout* layout, char* markup, int length)pango_layout_set_markup;
	void function(PangoLayout* layout, char* markup, int length, gunichar accelMarker, gunichar* accelChar)pango_layout_set_markup_with_accel;
	void function(PangoLayout* layout, PangoAttrList* attrs)pango_layout_set_attributes;
	PangoAttrList* function(PangoLayout* layout)pango_layout_get_attributes;
	void function(PangoLayout* layout, PangoFontDescription* desc)pango_layout_set_font_description;
	PangoFontDescription* function(PangoLayout* layout)pango_layout_get_font_description;
	void function(PangoLayout* layout, int width)pango_layout_set_width;
	int function(PangoLayout* layout)pango_layout_get_width;
	void function(PangoLayout* layout, int height)pango_layout_set_height;
	int function(PangoLayout* layout)pango_layout_get_height;
	void function(PangoLayout* layout, PangoWrapMode wrap)pango_layout_set_wrap;
	PangoWrapMode function(PangoLayout* layout)pango_layout_get_wrap;
	gboolean function(PangoLayout* layout)pango_layout_is_wrapped;
	void function(PangoLayout* layout, PangoEllipsizeMode ellipsize)pango_layout_set_ellipsize;
	PangoEllipsizeMode function(PangoLayout* layout)pango_layout_get_ellipsize;
	gboolean function(PangoLayout* layout)pango_layout_is_ellipsized;
	void function(PangoLayout* layout, int indent)pango_layout_set_indent;
	int function(PangoLayout* layout)pango_layout_get_indent;
	int function(PangoLayout* layout)pango_layout_get_spacing;
	void function(PangoLayout* layout, int spacing)pango_layout_set_spacing;
	void function(PangoLayout* layout, gboolean justify)pango_layout_set_justify;
	gboolean function(PangoLayout* layout)pango_layout_get_justify;
	void function(PangoLayout* layout, gboolean autoDir)pango_layout_set_auto_dir;
	gboolean function(PangoLayout* layout)pango_layout_get_auto_dir;
	void function(PangoLayout* layout, PangoAlignment alignment)pango_layout_set_alignment;
	PangoAlignment function(PangoLayout* layout)pango_layout_get_alignment;
	void function(PangoLayout* layout, PangoTabArray* tabs)pango_layout_set_tabs;
	PangoTabArray* function(PangoLayout* layout)pango_layout_get_tabs;
	void function(PangoLayout* layout, gboolean setting)pango_layout_set_single_paragraph_mode;
	gboolean function(PangoLayout* layout)pango_layout_get_single_paragraph_mode;
	int function(PangoLayout* layout)pango_layout_get_unknown_glyphs_count;
	void function(PangoLayout* layout, PangoLogAttr** attrs, gint* nAttrs)pango_layout_get_log_attrs;
	void function(PangoLayout* layout, int index, PangoRectangle* pos)pango_layout_index_to_pos;
	void function(PangoLayout* layout, int index, gboolean trailing, int* line, int* xPos)pango_layout_index_to_line_x;
	gboolean function(PangoLayout* layout, int x, int y, int* index, int* trailing)pango_layout_xy_to_index;
	void function(PangoLayout* layout, int index, PangoRectangle* strongPos, PangoRectangle* weakPos)pango_layout_get_cursor_pos;
	void function(PangoLayout* layout, gboolean strong, int oldIndex, int oldTrailing, int direction, int* newIndex, int* newTrailing)pango_layout_move_cursor_visually;
	void function(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_layout_get_extents;
	void function(PangoLayout* layout, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_layout_get_pixel_extents;
	void function(PangoLayout* layout, int* width, int* height)pango_layout_get_size;
	void function(PangoLayout* layout, int* width, int* height)pango_layout_get_pixel_size;
	int function(PangoLayout* layout)pango_layout_get_line_count;
	PangoLayoutLine* function(PangoLayout* layout, int line)pango_layout_get_line;
	PangoLayoutLine* function(PangoLayout* layout, int line)pango_layout_get_line_readonly;
	GSList* function(PangoLayout* layout)pango_layout_get_lines;
	GSList* function(PangoLayout* layout)pango_layout_get_lines_readonly;
	PangoLayoutIter* function(PangoLayout* layout)pango_layout_get_iter;
	
	// pango.PgLayoutIter
	
	PangoLayoutIter* function(PangoLayoutIter* iter)pango_layout_iter_copy;
	void function(PangoLayoutIter* iter)pango_layout_iter_free;
	gboolean function(PangoLayoutIter* iter)pango_layout_iter_next_run;
	gboolean function(PangoLayoutIter* iter)pango_layout_iter_next_char;
	gboolean function(PangoLayoutIter* iter)pango_layout_iter_next_cluster;
	gboolean function(PangoLayoutIter* iter)pango_layout_iter_next_line;
	gboolean function(PangoLayoutIter* iter)pango_layout_iter_at_last_line;
	int function(PangoLayoutIter* iter)pango_layout_iter_get_index;
	int function(PangoLayoutIter* iter)pango_layout_iter_get_baseline;
	PangoLayoutRun* function(PangoLayoutIter* iter)pango_layout_iter_get_run;
	PangoLayoutRun* function(PangoLayoutIter* iter)pango_layout_iter_get_run_readonly;
	PangoLayoutLine* function(PangoLayoutIter* iter)pango_layout_iter_get_line;
	PangoLayoutLine* function(PangoLayoutIter* iter)pango_layout_iter_get_line_readonly;
	PangoLayout* function(PangoLayoutIter* iter)pango_layout_iter_get_layout;
	void function(PangoLayoutIter* iter, PangoRectangle* logicalRect)pango_layout_iter_get_char_extents;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_layout_iter_get_cluster_extents;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_layout_iter_get_run_extents;
	void function(PangoLayoutIter* iter, int* y0_, int* y1_)pango_layout_iter_get_line_yrange;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_layout_iter_get_line_extents;
	void function(PangoLayoutIter* iter, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_layout_iter_get_layout_extents;
	
	// pango.PgLayoutLine
	
	PangoLayoutLine* function(PangoLayoutLine* line)pango_layout_line_ref;
	void function(PangoLayoutLine* line)pango_layout_line_unref;
	void function(PangoLayoutLine* line, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_layout_line_get_extents;
	void function(PangoLayoutLine* layoutLine, PangoRectangle* inkRect, PangoRectangle* logicalRect)pango_layout_line_get_pixel_extents;
	void function(PangoLayoutLine* line, int index, gboolean trailing, int* xPos)pango_layout_line_index_to_x;
	gboolean function(PangoLayoutLine* line, int xPos, int* index, int* trailing)pango_layout_line_x_to_index;
	void function(PangoLayoutLine* line, int startIndex, int endIndex, int** ranges, int* nRanges)pango_layout_line_get_x_ranges;
	
	// pango.PgScript
	
	PangoScript function(gunichar ch)pango_script_for_unichar;
	PangoLanguage* function(PangoScript script)pango_script_get_sample_language;
	gboolean function(PangoLanguage* language, PangoScript script)pango_language_includes_script;
	
	// pango.PgScriptIter
	
	PangoScriptIter* function(char* text, int length)pango_script_iter_new;
	void function(PangoScriptIter* iter, char** start, char** end, PangoScript* script)pango_script_iter_get_range;
	gboolean function(PangoScriptIter* iter)pango_script_iter_next;
	void function(PangoScriptIter* iter)pango_script_iter_free;
	
	// pango.PgVertical
	
	PangoGravity function(PangoMatrix* matrix)pango_gravity_get_for_matrix;
	PangoGravity function(PangoScript script, PangoGravity baseGravity, PangoGravityHint hint)pango_gravity_get_for_script;
	double function(PangoGravity gravity)pango_gravity_to_rotation;
	
	// pango.PgRenderer
	
	void function(PangoRenderer* renderer, PangoLayout* layout, int x, int y)pango_renderer_draw_layout;
	void function(PangoRenderer* renderer, PangoLayoutLine* line, int x, int y)pango_renderer_draw_layout_line;
	void function(PangoRenderer* renderer, PangoFont* font, PangoGlyphString* glyphs, int x, int y)pango_renderer_draw_glyphs;
	void function(PangoRenderer* renderer, PangoRenderPart part, int x, int y, int width, int height)pango_renderer_draw_rectangle;
	void function(PangoRenderer* renderer, int x, int y, int width, int height)pango_renderer_draw_error_underline;
	void function(PangoRenderer* renderer, PangoRenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22)pango_renderer_draw_trapezoid;
	void function(PangoRenderer* renderer, PangoFont* font, PangoGlyph glyph, double x, double y)pango_renderer_draw_glyph;
	void function(PangoRenderer* renderer)pango_renderer_activate;
	void function(PangoRenderer* renderer)pango_renderer_deactivate;
	void function(PangoRenderer* renderer, PangoRenderPart part)pango_renderer_part_changed;
	void function(PangoRenderer* renderer, PangoRenderPart part, PangoColor* color)pango_renderer_set_color;
	PangoColor* function(PangoRenderer* renderer, PangoRenderPart part)pango_renderer_get_color;
	void function(PangoRenderer* renderer, PangoMatrix* matrix)pango_renderer_set_matrix;
	PangoMatrix* function(PangoRenderer* renderer)pango_renderer_get_matrix;
	PangoLayout* function(PangoRenderer* renderer)pango_renderer_get_layout;
	PangoLayoutLine* function(PangoRenderer* renderer)pango_renderer_get_layout_line;
	
	// pango.PgCoverage
	
	PangoCoverage* function()pango_coverage_new;
	PangoCoverage* function(PangoCoverage* coverage)pango_coverage_ref;
	void function(PangoCoverage* coverage)pango_coverage_unref;
	PangoCoverage* function(PangoCoverage* coverage)pango_coverage_copy;
	PangoCoverageLevel function(PangoCoverage* coverage, int index)pango_coverage_get;
	void function(PangoCoverage* coverage, PangoCoverage* other)pango_coverage_max;
	void function(PangoCoverage* coverage, int index, PangoCoverageLevel level)pango_coverage_set;
	void function(PangoCoverage* coverage, guchar** bytes, int* nBytes)pango_coverage_to_bytes;
	PangoCoverage* function(guchar* bytes, int nBytes)pango_coverage_from_bytes;
	
	// pango.PgEngine
	
	void function(PangoEngineInfo** engines, int* nEngines)script_engine_list;
	void function(GTypeModule* modul)script_engine_init;
	void function()script_engine_exit;
	PangoEngine* function(char* id)script_engine_create;
	
	// pango.PgEngineLang
	
	
	// pango.PgEngineShape
	
	
	// pango.PgMiscellaneous
	
	char** function(char* str)pango_split_file_list;
	char* function(char* str)pango_trim_string;
	gint function(FILE* stream, GString* str)pango_read_line;
	gboolean function(char** pos)pango_skip_space;
	gboolean function(char** pos, GString* f_out)pango_scan_word;
	gboolean function(char** pos, GString* f_out)pango_scan_string;
	gboolean function(char** pos, int* f_out)pango_scan_int;
	char* function(char* key)pango_config_key_get;
	void function(char* fontname, char*** families, int* nFamilies)pango_lookup_aliases;
	gboolean function(GType type, char* str, int* value, gboolean warn, char** possibleValues)pango_parse_enum;
	gboolean function(char* str, PangoStyle* style, gboolean warn)pango_parse_style;
	gboolean function(char* str, PangoVariant* variant, gboolean warn)pango_parse_variant;
	gboolean function(char* str, PangoWeight* weight, gboolean warn)pango_parse_weight;
	gboolean function(char* str, PangoStretch* stretch, gboolean warn)pango_parse_stretch;
	char* function()pango_get_sysconf_subdirectory;
	char* function()pango_get_lib_subdirectory;
	guint8* function(gchar* text, int length, PangoDirection* pbaseDir)pango_log2vis_get_embedding_levels;
	PangoLanguage* function()pango_language_get_default;
	char* function(PangoLanguage* language)pango_language_get_sample_string;
	gboolean function(gunichar ch)pango_is_zero_width;
	void function(int* thickness, int* position)pango_quantize_line_geometry;
	
	// pango.PgVersion
	
	int function()pango_version;
	char* function()pango_version_string;
	char* function(int requiredMajor, int requiredMinor, int requiredMicro)pango_version_check;


}

Symbol[] pangoLinks = 
[

	{ "pango_itemize",  cast(void**)& pango_itemize},
	{ "pango_itemize_with_base_dir",  cast(void**)& pango_itemize_with_base_dir},
	{ "pango_reorder_items",  cast(void**)& pango_reorder_items},
	{ "pango_context_new",  cast(void**)& pango_context_new},
	{ "pango_context_set_font_map",  cast(void**)& pango_context_set_font_map},
	{ "pango_context_get_font_map",  cast(void**)& pango_context_get_font_map},
	{ "pango_context_get_font_description",  cast(void**)& pango_context_get_font_description},
	{ "pango_context_set_font_description",  cast(void**)& pango_context_set_font_description},
	{ "pango_context_get_language",  cast(void**)& pango_context_get_language},
	{ "pango_context_set_language",  cast(void**)& pango_context_set_language},
	{ "pango_context_get_base_dir",  cast(void**)& pango_context_get_base_dir},
	{ "pango_context_set_base_dir",  cast(void**)& pango_context_set_base_dir},
	{ "pango_context_get_base_gravity",  cast(void**)& pango_context_get_base_gravity},
	{ "pango_context_set_base_gravity",  cast(void**)& pango_context_set_base_gravity},
	{ "pango_context_get_gravity",  cast(void**)& pango_context_get_gravity},
	{ "pango_context_get_gravity_hint",  cast(void**)& pango_context_get_gravity_hint},
	{ "pango_context_set_gravity_hint",  cast(void**)& pango_context_set_gravity_hint},
	{ "pango_context_get_matrix",  cast(void**)& pango_context_get_matrix},
	{ "pango_context_set_matrix",  cast(void**)& pango_context_set_matrix},
	{ "pango_context_load_font",  cast(void**)& pango_context_load_font},
	{ "pango_context_load_fontset",  cast(void**)& pango_context_load_fontset},
	{ "pango_context_get_metrics",  cast(void**)& pango_context_get_metrics},
	{ "pango_context_list_families",  cast(void**)& pango_context_list_families},
	{ "pango_get_mirror_char",  cast(void**)& pango_get_mirror_char},
	{ "pango_unichar_direction",  cast(void**)& pango_unichar_direction},
	{ "pango_find_base_dir",  cast(void**)& pango_find_base_dir},
	{ "pango_break",  cast(void**)& pango_break},
	{ "pango_get_log_attrs",  cast(void**)& pango_get_log_attrs},
	{ "pango_find_paragraph_boundary",  cast(void**)& pango_find_paragraph_boundary},
	{ "pango_default_break",  cast(void**)& pango_default_break},
	{ "pango_shape",  cast(void**)& pango_shape},
	{ "pango_item_free",  cast(void**)& pango_item_free},
	{ "pango_item_copy",  cast(void**)& pango_item_copy},
	{ "pango_item_new",  cast(void**)& pango_item_new},
	{ "pango_item_split",  cast(void**)& pango_item_split},
	{ "pango_units_to_double",  cast(void**)& pango_units_to_double},
	{ "pango_units_from_double",  cast(void**)& pango_units_from_double},
	{ "pango_extents_to_pixels",  cast(void**)& pango_extents_to_pixels},
	{ "pango_matrix_copy",  cast(void**)& pango_matrix_copy},
	{ "pango_matrix_free",  cast(void**)& pango_matrix_free},
	{ "pango_matrix_translate",  cast(void**)& pango_matrix_translate},
	{ "pango_matrix_scale",  cast(void**)& pango_matrix_scale},
	{ "pango_matrix_rotate",  cast(void**)& pango_matrix_rotate},
	{ "pango_matrix_concat",  cast(void**)& pango_matrix_concat},
	{ "pango_matrix_transform_point",  cast(void**)& pango_matrix_transform_point},
	{ "pango_matrix_transform_distance",  cast(void**)& pango_matrix_transform_distance},
	{ "pango_matrix_transform_rectangle",  cast(void**)& pango_matrix_transform_rectangle},
	{ "pango_matrix_transform_pixel_rectangle",  cast(void**)& pango_matrix_transform_pixel_rectangle},
	{ "pango_matrix_get_font_scale_factor",  cast(void**)& pango_matrix_get_font_scale_factor},
	{ "pango_glyph_string_new",  cast(void**)& pango_glyph_string_new},
	{ "pango_glyph_string_copy",  cast(void**)& pango_glyph_string_copy},
	{ "pango_glyph_string_set_size",  cast(void**)& pango_glyph_string_set_size},
	{ "pango_glyph_string_free",  cast(void**)& pango_glyph_string_free},
	{ "pango_glyph_string_extents",  cast(void**)& pango_glyph_string_extents},
	{ "pango_glyph_string_extents_range",  cast(void**)& pango_glyph_string_extents_range},
	{ "pango_glyph_string_get_width",  cast(void**)& pango_glyph_string_get_width},
	{ "pango_glyph_string_index_to_x",  cast(void**)& pango_glyph_string_index_to_x},
	{ "pango_glyph_string_x_to_index",  cast(void**)& pango_glyph_string_x_to_index},
	{ "pango_glyph_string_get_logical_widths",  cast(void**)& pango_glyph_string_get_logical_widths},
	{ "pango_glyph_item_split",  cast(void**)& pango_glyph_item_split},
	{ "pango_glyph_item_apply_attrs",  cast(void**)& pango_glyph_item_apply_attrs},
	{ "pango_glyph_item_letter_space",  cast(void**)& pango_glyph_item_letter_space},
	{ "pango_glyph_item_copy",  cast(void**)& pango_glyph_item_copy},
	{ "pango_glyph_item_free",  cast(void**)& pango_glyph_item_free},
	{ "pango_font_find_shaper",  cast(void**)& pango_font_find_shaper},
	{ "pango_font_describe",  cast(void**)& pango_font_describe},
	{ "pango_font_describe_with_absolute_size",  cast(void**)& pango_font_describe_with_absolute_size},
	{ "pango_font_get_coverage",  cast(void**)& pango_font_get_coverage},
	{ "pango_font_get_glyph_extents",  cast(void**)& pango_font_get_glyph_extents},
	{ "pango_font_get_metrics",  cast(void**)& pango_font_get_metrics},
	{ "pango_font_get_font_map",  cast(void**)& pango_font_get_font_map},
	{ "pango_font_description_new",  cast(void**)& pango_font_description_new},
	{ "pango_font_description_copy",  cast(void**)& pango_font_description_copy},
	{ "pango_font_description_copy_static",  cast(void**)& pango_font_description_copy_static},
	{ "pango_font_description_hash",  cast(void**)& pango_font_description_hash},
	{ "pango_font_description_equal",  cast(void**)& pango_font_description_equal},
	{ "pango_font_description_free",  cast(void**)& pango_font_description_free},
	{ "pango_font_description_set_family",  cast(void**)& pango_font_description_set_family},
	{ "pango_font_description_set_family_static",  cast(void**)& pango_font_description_set_family_static},
	{ "pango_font_description_get_family",  cast(void**)& pango_font_description_get_family},
	{ "pango_font_description_set_style",  cast(void**)& pango_font_description_set_style},
	{ "pango_font_description_get_style",  cast(void**)& pango_font_description_get_style},
	{ "pango_font_description_set_variant",  cast(void**)& pango_font_description_set_variant},
	{ "pango_font_description_get_variant",  cast(void**)& pango_font_description_get_variant},
	{ "pango_font_description_set_weight",  cast(void**)& pango_font_description_set_weight},
	{ "pango_font_description_get_weight",  cast(void**)& pango_font_description_get_weight},
	{ "pango_font_description_set_stretch",  cast(void**)& pango_font_description_set_stretch},
	{ "pango_font_description_get_stretch",  cast(void**)& pango_font_description_get_stretch},
	{ "pango_font_description_set_size",  cast(void**)& pango_font_description_set_size},
	{ "pango_font_description_get_size",  cast(void**)& pango_font_description_get_size},
	{ "pango_font_description_set_absolute_size",  cast(void**)& pango_font_description_set_absolute_size},
	{ "pango_font_description_get_size_is_absolute",  cast(void**)& pango_font_description_get_size_is_absolute},
	{ "pango_font_description_set_gravity",  cast(void**)& pango_font_description_set_gravity},
	{ "pango_font_description_get_gravity",  cast(void**)& pango_font_description_get_gravity},
	{ "pango_font_description_get_set_fields",  cast(void**)& pango_font_description_get_set_fields},
	{ "pango_font_description_unset_fields",  cast(void**)& pango_font_description_unset_fields},
	{ "pango_font_description_merge",  cast(void**)& pango_font_description_merge},
	{ "pango_font_description_merge_static",  cast(void**)& pango_font_description_merge_static},
	{ "pango_font_description_better_match",  cast(void**)& pango_font_description_better_match},
	{ "pango_font_description_from_string",  cast(void**)& pango_font_description_from_string},
	{ "pango_font_description_to_string",  cast(void**)& pango_font_description_to_string},
	{ "pango_font_description_to_filename",  cast(void**)& pango_font_description_to_filename},
	{ "pango_font_metrics_ref",  cast(void**)& pango_font_metrics_ref},
	{ "pango_font_metrics_unref",  cast(void**)& pango_font_metrics_unref},
	{ "pango_font_metrics_get_ascent",  cast(void**)& pango_font_metrics_get_ascent},
	{ "pango_font_metrics_get_descent",  cast(void**)& pango_font_metrics_get_descent},
	{ "pango_font_metrics_get_approximate_char_width",  cast(void**)& pango_font_metrics_get_approximate_char_width},
	{ "pango_font_metrics_get_approximate_digit_width",  cast(void**)& pango_font_metrics_get_approximate_digit_width},
	{ "pango_font_metrics_get_underline_thickness",  cast(void**)& pango_font_metrics_get_underline_thickness},
	{ "pango_font_metrics_get_underline_position",  cast(void**)& pango_font_metrics_get_underline_position},
	{ "pango_font_metrics_get_strikethrough_thickness",  cast(void**)& pango_font_metrics_get_strikethrough_thickness},
	{ "pango_font_metrics_get_strikethrough_position",  cast(void**)& pango_font_metrics_get_strikethrough_position},
	{ "pango_font_family_get_name",  cast(void**)& pango_font_family_get_name},
	{ "pango_font_family_is_monospace",  cast(void**)& pango_font_family_is_monospace},
	{ "pango_font_family_list_faces",  cast(void**)& pango_font_family_list_faces},
	{ "pango_font_face_get_face_name",  cast(void**)& pango_font_face_get_face_name},
	{ "pango_font_face_list_sizes",  cast(void**)& pango_font_face_list_sizes},
	{ "pango_font_face_describe",  cast(void**)& pango_font_face_describe},
	{ "pango_font_face_is_synthesized",  cast(void**)& pango_font_face_is_synthesized},
	{ "pango_font_map_load_font",  cast(void**)& pango_font_map_load_font},
	{ "pango_font_map_load_fontset",  cast(void**)& pango_font_map_load_fontset},
	{ "pango_font_map_list_families",  cast(void**)& pango_font_map_list_families},
	{ "pango_font_map_get_shape_engine_type",  cast(void**)& pango_font_map_get_shape_engine_type},
	{ "pango_fontset_get_font",  cast(void**)& pango_fontset_get_font},
	{ "pango_fontset_get_metrics",  cast(void**)& pango_fontset_get_metrics},
	{ "pango_fontset_foreach",  cast(void**)& pango_fontset_foreach},
	{ "pango_fontset_simple_new",  cast(void**)& pango_fontset_simple_new},
	{ "pango_fontset_simple_append",  cast(void**)& pango_fontset_simple_append},
	{ "pango_fontset_simple_size",  cast(void**)& pango_fontset_simple_size},
	{ "pango_parse_markup",  cast(void**)& pango_parse_markup},
	{ "pango_attr_type_register",  cast(void**)& pango_attr_type_register},
	{ "pango_attribute_init",  cast(void**)& pango_attribute_init},
	{ "pango_attribute_copy",  cast(void**)& pango_attribute_copy},
	{ "pango_attribute_equal",  cast(void**)& pango_attribute_equal},
	{ "pango_attribute_destroy",  cast(void**)& pango_attribute_destroy},
	{ "pango_attr_language_new",  cast(void**)& pango_attr_language_new},
	{ "pango_attr_family_new",  cast(void**)& pango_attr_family_new},
	{ "pango_attr_style_new",  cast(void**)& pango_attr_style_new},
	{ "pango_attr_variant_new",  cast(void**)& pango_attr_variant_new},
	{ "pango_attr_stretch_new",  cast(void**)& pango_attr_stretch_new},
	{ "pango_attr_weight_new",  cast(void**)& pango_attr_weight_new},
	{ "pango_attr_size_new",  cast(void**)& pango_attr_size_new},
	{ "pango_attr_size_new_absolute",  cast(void**)& pango_attr_size_new_absolute},
	{ "pango_attr_font_desc_new",  cast(void**)& pango_attr_font_desc_new},
	{ "pango_attr_foreground_new",  cast(void**)& pango_attr_foreground_new},
	{ "pango_attr_background_new",  cast(void**)& pango_attr_background_new},
	{ "pango_attr_strikethrough_new",  cast(void**)& pango_attr_strikethrough_new},
	{ "pango_attr_strikethrough_color_new",  cast(void**)& pango_attr_strikethrough_color_new},
	{ "pango_attr_underline_new",  cast(void**)& pango_attr_underline_new},
	{ "pango_attr_underline_color_new",  cast(void**)& pango_attr_underline_color_new},
	{ "pango_attr_shape_new",  cast(void**)& pango_attr_shape_new},
	{ "pango_attr_shape_new_with_data",  cast(void**)& pango_attr_shape_new_with_data},
	{ "pango_attr_scale_new",  cast(void**)& pango_attr_scale_new},
	{ "pango_attr_rise_new",  cast(void**)& pango_attr_rise_new},
	{ "pango_attr_letter_spacing_new",  cast(void**)& pango_attr_letter_spacing_new},
	{ "pango_attr_fallback_new",  cast(void**)& pango_attr_fallback_new},
	{ "pango_attr_gravity_new",  cast(void**)& pango_attr_gravity_new},
	{ "pango_attr_gravity_hint_new",  cast(void**)& pango_attr_gravity_hint_new},
	{ "pango_color_parse",  cast(void**)& pango_color_parse},
	{ "pango_color_copy",  cast(void**)& pango_color_copy},
	{ "pango_color_free",  cast(void**)& pango_color_free},
	{ "pango_color_to_string",  cast(void**)& pango_color_to_string},
	{ "pango_language_from_string",  cast(void**)& pango_language_from_string},
	{ "pango_language_matches",  cast(void**)& pango_language_matches},
	{ "pango_attr_list_new",  cast(void**)& pango_attr_list_new},
	{ "pango_attr_list_ref",  cast(void**)& pango_attr_list_ref},
	{ "pango_attr_list_unref",  cast(void**)& pango_attr_list_unref},
	{ "pango_attr_list_copy",  cast(void**)& pango_attr_list_copy},
	{ "pango_attr_list_insert",  cast(void**)& pango_attr_list_insert},
	{ "pango_attr_list_insert_before",  cast(void**)& pango_attr_list_insert_before},
	{ "pango_attr_list_change",  cast(void**)& pango_attr_list_change},
	{ "pango_attr_list_splice",  cast(void**)& pango_attr_list_splice},
	{ "pango_attr_list_filter",  cast(void**)& pango_attr_list_filter},
	{ "pango_attr_list_get_iterator",  cast(void**)& pango_attr_list_get_iterator},
	{ "pango_attr_iterator_copy",  cast(void**)& pango_attr_iterator_copy},
	{ "pango_attr_iterator_next",  cast(void**)& pango_attr_iterator_next},
	{ "pango_attr_iterator_range",  cast(void**)& pango_attr_iterator_range},
	{ "pango_attr_iterator_get",  cast(void**)& pango_attr_iterator_get},
	{ "pango_attr_iterator_get_font",  cast(void**)& pango_attr_iterator_get_font},
	{ "pango_attr_iterator_get_attrs",  cast(void**)& pango_attr_iterator_get_attrs},
	{ "pango_attr_iterator_destroy",  cast(void**)& pango_attr_iterator_destroy},
	{ "pango_tab_array_new",  cast(void**)& pango_tab_array_new},
	{ "pango_tab_array_new_with_positions",  cast(void**)& pango_tab_array_new_with_positions},
	{ "pango_tab_array_copy",  cast(void**)& pango_tab_array_copy},
	{ "pango_tab_array_free",  cast(void**)& pango_tab_array_free},
	{ "pango_tab_array_get_size",  cast(void**)& pango_tab_array_get_size},
	{ "pango_tab_array_resize",  cast(void**)& pango_tab_array_resize},
	{ "pango_tab_array_set_tab",  cast(void**)& pango_tab_array_set_tab},
	{ "pango_tab_array_get_tab",  cast(void**)& pango_tab_array_get_tab},
	{ "pango_tab_array_get_tabs",  cast(void**)& pango_tab_array_get_tabs},
	{ "pango_tab_array_get_positions_in_pixels",  cast(void**)& pango_tab_array_get_positions_in_pixels},
	{ "pango_layout_new",  cast(void**)& pango_layout_new},
	{ "pango_layout_copy",  cast(void**)& pango_layout_copy},
	{ "pango_layout_get_context",  cast(void**)& pango_layout_get_context},
	{ "pango_layout_context_changed",  cast(void**)& pango_layout_context_changed},
	{ "pango_layout_set_text",  cast(void**)& pango_layout_set_text},
	{ "pango_layout_get_text",  cast(void**)& pango_layout_get_text},
	{ "pango_layout_set_markup",  cast(void**)& pango_layout_set_markup},
	{ "pango_layout_set_markup_with_accel",  cast(void**)& pango_layout_set_markup_with_accel},
	{ "pango_layout_set_attributes",  cast(void**)& pango_layout_set_attributes},
	{ "pango_layout_get_attributes",  cast(void**)& pango_layout_get_attributes},
	{ "pango_layout_set_font_description",  cast(void**)& pango_layout_set_font_description},
	{ "pango_layout_get_font_description",  cast(void**)& pango_layout_get_font_description},
	{ "pango_layout_set_width",  cast(void**)& pango_layout_set_width},
	{ "pango_layout_get_width",  cast(void**)& pango_layout_get_width},
	{ "pango_layout_set_height",  cast(void**)& pango_layout_set_height},
	{ "pango_layout_get_height",  cast(void**)& pango_layout_get_height},
	{ "pango_layout_set_wrap",  cast(void**)& pango_layout_set_wrap},
	{ "pango_layout_get_wrap",  cast(void**)& pango_layout_get_wrap},
	{ "pango_layout_is_wrapped",  cast(void**)& pango_layout_is_wrapped},
	{ "pango_layout_set_ellipsize",  cast(void**)& pango_layout_set_ellipsize},
	{ "pango_layout_get_ellipsize",  cast(void**)& pango_layout_get_ellipsize},
	{ "pango_layout_is_ellipsized",  cast(void**)& pango_layout_is_ellipsized},
	{ "pango_layout_set_indent",  cast(void**)& pango_layout_set_indent},
	{ "pango_layout_get_indent",  cast(void**)& pango_layout_get_indent},
	{ "pango_layout_get_spacing",  cast(void**)& pango_layout_get_spacing},
	{ "pango_layout_set_spacing",  cast(void**)& pango_layout_set_spacing},
	{ "pango_layout_set_justify",  cast(void**)& pango_layout_set_justify},
	{ "pango_layout_get_justify",  cast(void**)& pango_layout_get_justify},
	{ "pango_layout_set_auto_dir",  cast(void**)& pango_layout_set_auto_dir},
	{ "pango_layout_get_auto_dir",  cast(void**)& pango_layout_get_auto_dir},
	{ "pango_layout_set_alignment",  cast(void**)& pango_layout_set_alignment},
	{ "pango_layout_get_alignment",  cast(void**)& pango_layout_get_alignment},
	{ "pango_layout_set_tabs",  cast(void**)& pango_layout_set_tabs},
	{ "pango_layout_get_tabs",  cast(void**)& pango_layout_get_tabs},
	{ "pango_layout_set_single_paragraph_mode",  cast(void**)& pango_layout_set_single_paragraph_mode},
	{ "pango_layout_get_single_paragraph_mode",  cast(void**)& pango_layout_get_single_paragraph_mode},
	{ "pango_layout_get_unknown_glyphs_count",  cast(void**)& pango_layout_get_unknown_glyphs_count},
	{ "pango_layout_get_log_attrs",  cast(void**)& pango_layout_get_log_attrs},
	{ "pango_layout_index_to_pos",  cast(void**)& pango_layout_index_to_pos},
	{ "pango_layout_index_to_line_x",  cast(void**)& pango_layout_index_to_line_x},
	{ "pango_layout_xy_to_index",  cast(void**)& pango_layout_xy_to_index},
	{ "pango_layout_get_cursor_pos",  cast(void**)& pango_layout_get_cursor_pos},
	{ "pango_layout_move_cursor_visually",  cast(void**)& pango_layout_move_cursor_visually},
	{ "pango_layout_get_extents",  cast(void**)& pango_layout_get_extents},
	{ "pango_layout_get_pixel_extents",  cast(void**)& pango_layout_get_pixel_extents},
	{ "pango_layout_get_size",  cast(void**)& pango_layout_get_size},
	{ "pango_layout_get_pixel_size",  cast(void**)& pango_layout_get_pixel_size},
	{ "pango_layout_get_line_count",  cast(void**)& pango_layout_get_line_count},
	{ "pango_layout_get_line",  cast(void**)& pango_layout_get_line},
	{ "pango_layout_get_line_readonly",  cast(void**)& pango_layout_get_line_readonly},
	{ "pango_layout_get_lines",  cast(void**)& pango_layout_get_lines},
	{ "pango_layout_get_lines_readonly",  cast(void**)& pango_layout_get_lines_readonly},
	{ "pango_layout_get_iter",  cast(void**)& pango_layout_get_iter},
	{ "pango_layout_iter_copy",  cast(void**)& pango_layout_iter_copy},
	{ "pango_layout_iter_free",  cast(void**)& pango_layout_iter_free},
	{ "pango_layout_iter_next_run",  cast(void**)& pango_layout_iter_next_run},
	{ "pango_layout_iter_next_char",  cast(void**)& pango_layout_iter_next_char},
	{ "pango_layout_iter_next_cluster",  cast(void**)& pango_layout_iter_next_cluster},
	{ "pango_layout_iter_next_line",  cast(void**)& pango_layout_iter_next_line},
	{ "pango_layout_iter_at_last_line",  cast(void**)& pango_layout_iter_at_last_line},
	{ "pango_layout_iter_get_index",  cast(void**)& pango_layout_iter_get_index},
	{ "pango_layout_iter_get_baseline",  cast(void**)& pango_layout_iter_get_baseline},
	{ "pango_layout_iter_get_run",  cast(void**)& pango_layout_iter_get_run},
	{ "pango_layout_iter_get_run_readonly",  cast(void**)& pango_layout_iter_get_run_readonly},
	{ "pango_layout_iter_get_line",  cast(void**)& pango_layout_iter_get_line},
	{ "pango_layout_iter_get_line_readonly",  cast(void**)& pango_layout_iter_get_line_readonly},
	{ "pango_layout_iter_get_layout",  cast(void**)& pango_layout_iter_get_layout},
	{ "pango_layout_iter_get_char_extents",  cast(void**)& pango_layout_iter_get_char_extents},
	{ "pango_layout_iter_get_cluster_extents",  cast(void**)& pango_layout_iter_get_cluster_extents},
	{ "pango_layout_iter_get_run_extents",  cast(void**)& pango_layout_iter_get_run_extents},
	{ "pango_layout_iter_get_line_yrange",  cast(void**)& pango_layout_iter_get_line_yrange},
	{ "pango_layout_iter_get_line_extents",  cast(void**)& pango_layout_iter_get_line_extents},
	{ "pango_layout_iter_get_layout_extents",  cast(void**)& pango_layout_iter_get_layout_extents},
	{ "pango_layout_line_ref",  cast(void**)& pango_layout_line_ref},
	{ "pango_layout_line_unref",  cast(void**)& pango_layout_line_unref},
	{ "pango_layout_line_get_extents",  cast(void**)& pango_layout_line_get_extents},
	{ "pango_layout_line_get_pixel_extents",  cast(void**)& pango_layout_line_get_pixel_extents},
	{ "pango_layout_line_index_to_x",  cast(void**)& pango_layout_line_index_to_x},
	{ "pango_layout_line_x_to_index",  cast(void**)& pango_layout_line_x_to_index},
	{ "pango_layout_line_get_x_ranges",  cast(void**)& pango_layout_line_get_x_ranges},
	{ "pango_script_for_unichar",  cast(void**)& pango_script_for_unichar},
	{ "pango_script_get_sample_language",  cast(void**)& pango_script_get_sample_language},
	{ "pango_language_includes_script",  cast(void**)& pango_language_includes_script},
	{ "pango_script_iter_new",  cast(void**)& pango_script_iter_new},
	{ "pango_script_iter_get_range",  cast(void**)& pango_script_iter_get_range},
	{ "pango_script_iter_next",  cast(void**)& pango_script_iter_next},
	{ "pango_script_iter_free",  cast(void**)& pango_script_iter_free},
	{ "pango_gravity_get_for_matrix",  cast(void**)& pango_gravity_get_for_matrix},
	{ "pango_gravity_get_for_script",  cast(void**)& pango_gravity_get_for_script},
	{ "pango_gravity_to_rotation",  cast(void**)& pango_gravity_to_rotation},
	{ "pango_renderer_draw_layout",  cast(void**)& pango_renderer_draw_layout},
	{ "pango_renderer_draw_layout_line",  cast(void**)& pango_renderer_draw_layout_line},
	{ "pango_renderer_draw_glyphs",  cast(void**)& pango_renderer_draw_glyphs},
	{ "pango_renderer_draw_rectangle",  cast(void**)& pango_renderer_draw_rectangle},
	{ "pango_renderer_draw_error_underline",  cast(void**)& pango_renderer_draw_error_underline},
	{ "pango_renderer_draw_trapezoid",  cast(void**)& pango_renderer_draw_trapezoid},
	{ "pango_renderer_draw_glyph",  cast(void**)& pango_renderer_draw_glyph},
	{ "pango_renderer_activate",  cast(void**)& pango_renderer_activate},
	{ "pango_renderer_deactivate",  cast(void**)& pango_renderer_deactivate},
	{ "pango_renderer_part_changed",  cast(void**)& pango_renderer_part_changed},
	{ "pango_renderer_set_color",  cast(void**)& pango_renderer_set_color},
	{ "pango_renderer_get_color",  cast(void**)& pango_renderer_get_color},
	{ "pango_renderer_set_matrix",  cast(void**)& pango_renderer_set_matrix},
	{ "pango_renderer_get_matrix",  cast(void**)& pango_renderer_get_matrix},
	{ "pango_renderer_get_layout",  cast(void**)& pango_renderer_get_layout},
	{ "pango_renderer_get_layout_line",  cast(void**)& pango_renderer_get_layout_line},
	{ "pango_coverage_new",  cast(void**)& pango_coverage_new},
	{ "pango_coverage_ref",  cast(void**)& pango_coverage_ref},
	{ "pango_coverage_unref",  cast(void**)& pango_coverage_unref},
	{ "pango_coverage_copy",  cast(void**)& pango_coverage_copy},
	{ "pango_coverage_get",  cast(void**)& pango_coverage_get},
	{ "pango_coverage_max",  cast(void**)& pango_coverage_max},
	{ "pango_coverage_set",  cast(void**)& pango_coverage_set},
	{ "pango_coverage_to_bytes",  cast(void**)& pango_coverage_to_bytes},
	{ "pango_coverage_from_bytes",  cast(void**)& pango_coverage_from_bytes},
	{ "script_engine_list",  cast(void**)& script_engine_list},
	{ "script_engine_init",  cast(void**)& script_engine_init},
	{ "script_engine_exit",  cast(void**)& script_engine_exit},
	{ "script_engine_create",  cast(void**)& script_engine_create},
	{ "pango_split_file_list",  cast(void**)& pango_split_file_list},
	{ "pango_trim_string",  cast(void**)& pango_trim_string},
	{ "pango_read_line",  cast(void**)& pango_read_line},
	{ "pango_skip_space",  cast(void**)& pango_skip_space},
	{ "pango_scan_word",  cast(void**)& pango_scan_word},
	{ "pango_scan_string",  cast(void**)& pango_scan_string},
	{ "pango_scan_int",  cast(void**)& pango_scan_int},
	{ "pango_config_key_get",  cast(void**)& pango_config_key_get},
	{ "pango_lookup_aliases",  cast(void**)& pango_lookup_aliases},
	{ "pango_parse_enum",  cast(void**)& pango_parse_enum},
	{ "pango_parse_style",  cast(void**)& pango_parse_style},
	{ "pango_parse_variant",  cast(void**)& pango_parse_variant},
	{ "pango_parse_weight",  cast(void**)& pango_parse_weight},
	{ "pango_parse_stretch",  cast(void**)& pango_parse_stretch},
	{ "pango_get_sysconf_subdirectory",  cast(void**)& pango_get_sysconf_subdirectory},
	{ "pango_get_lib_subdirectory",  cast(void**)& pango_get_lib_subdirectory},
	{ "pango_log2vis_get_embedding_levels",  cast(void**)& pango_log2vis_get_embedding_levels},
	{ "pango_language_get_default",  cast(void**)& pango_language_get_default},
	{ "pango_language_get_sample_string",  cast(void**)& pango_language_get_sample_string},
	{ "pango_is_zero_width",  cast(void**)& pango_is_zero_width},
	{ "pango_quantize_line_geometry",  cast(void**)& pango_quantize_line_geometry},
	{ "pango_version",  cast(void**)& pango_version},
	{ "pango_version_string",  cast(void**)& pango_version_string},
	{ "pango_version_check",  cast(void**)& pango_version_check},

];