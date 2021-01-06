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


module harfbuzz.c.types;

public import gobject.c.types;

public alias hb_language_t = void*;

/**
 * Data type for booleans.
 */
public alias int hb_bool_t;

/**
 * Data type for holding Unicode codepoints. Also
 * used to hold glyph IDs.
 */
public alias uint hb_codepoint_t;

/**
 * Data type for holding color values. Colors are eight bits per
 * channel RGB plus alpha transparency.
 */
public alias uint hb_color_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the extents for a font, in horizontal-direction
 * text segments. Extents must be returned in an #hb_glyph_extents output
 * parameter.
 */
public alias hb_font_get_font_extents_func_t hb_font_get_font_h_extents_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the extents for a font, in vertical-direction
 * text segments. Extents must be returned in an #hb_glyph_extents output
 * parameter.
 */
public alias hb_font_get_font_extents_func_t hb_font_get_font_v_extents_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the advance for a specified glyph, in
 * horizontal-direction text segments. Advances must be returned in
 * an #hb_position_t output parameter.
 */
public alias hb_font_get_glyph_advance_func_t hb_font_get_glyph_h_advance_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the advances for a sequence of glyphs, in
 * horizontal-direction text segments.
 */
public alias hb_font_get_glyph_advances_func_t hb_font_get_glyph_h_advances_func_t;

public alias hb_font_get_glyph_kerning_func_t hb_font_get_glyph_h_kerning_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the (X,Y) coordinates (in font units) of the
 * origin for a glyph, in horizontal-direction text segments. Each
 * coordinate must be returned in an #hb_position_t output parameter.
 */
public alias hb_font_get_glyph_origin_func_t hb_font_get_glyph_h_origin_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the advance for a specified glyph, in
 * vertical-direction text segments. Advances must be returned in
 * an #hb_position_t output parameter.
 */
public alias hb_font_get_glyph_advance_func_t hb_font_get_glyph_v_advance_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the advances for a sequence of glyphs, in
 * vertical-direction text segments.
 */
public alias hb_font_get_glyph_advances_func_t hb_font_get_glyph_v_advances_func_t;

public alias hb_font_get_glyph_kerning_func_t hb_font_get_glyph_v_kerning_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the (X,Y) coordinates (in font units) of the
 * origin for a glyph, in vertical-direction text segments. Each coordinate
 * must be returned in an #hb_position_t output parameter.
 */
public alias hb_font_get_glyph_origin_func_t hb_font_get_glyph_v_origin_func_t;

/**
 * Data type for bitmasks.
 */
public alias uint hb_mask_t;

/**
 * An integral type representing an OpenType 'name' table name identifier.
 * There are predefined name IDs, as well as name IDs return from other
 * API.  These can be used to fetch name strings from a font face.
 */
public alias uint hb_ot_name_id_t;

/**
 * Data type for holding a single coordinate value.
 * Contour points and other multi-dimensional data are
 * stored as tuples of #hb_position_t's.
 */
public alias int hb_position_t;

public alias uint hb_tag_t;

/**
 * The selectors defined for specifying AAT feature settings.
 *
 * Since: 2.2.0
 */
public enum hb_aat_layout_feature_selector_t
{
	/**
	 * Initial, unset feature selector
	 */
	INVALID = 65535,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ALL_TYPOGRAPHIC
	 */
	ALL_TYPE_FEATURES_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ALL_TYPOGRAPHIC
	 */
	ALL_TYPE_FEATURES_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	REQUIRED_LIGATURES_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	REQUIRED_LIGATURES_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	COMMON_LIGATURES_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	COMMON_LIGATURES_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	RARE_LIGATURES_ON = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	RARE_LIGATURES_OFF = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	LOGOS_ON = 6,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	LOGOS_OFF = 7,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	REBUS_PICTURES_ON = 8,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	REBUS_PICTURES_OFF = 9,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	DIPHTHONG_LIGATURES_ON = 10,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	DIPHTHONG_LIGATURES_OFF = 11,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	SQUARED_LIGATURES_ON = 12,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	SQUARED_LIGATURES_OFF = 13,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	ABBREV_SQUARED_LIGATURES_ON = 14,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	ABBREV_SQUARED_LIGATURES_OFF = 15,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	SYMBOL_LIGATURES_ON = 16,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	SYMBOL_LIGATURES_OFF = 17,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	CONTEXTUAL_LIGATURES_ON = 18,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	CONTEXTUAL_LIGATURES_OFF = 19,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	HISTORICAL_LIGATURES_ON = 20,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	HISTORICAL_LIGATURES_OFF = 21,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	UNCONNECTED = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	PARTIALLY_CONNECTED = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LIGATURES
	 */
	CURSIVE = 2,
	/**
	 * Deprecated
	 */
	UPPER_AND_LOWER_CASE = 0,
	/**
	 * Deprecated
	 */
	ALL_CAPS = 1,
	/**
	 * Deprecated
	 */
	ALL_LOWER_CASE = 2,
	/**
	 * Deprecated
	 */
	SMALL_CAPS = 3,
	/**
	 * Deprecated
	 */
	INITIAL_CAPS = 4,
	/**
	 * Deprecated
	 */
	INITIAL_CAPS_AND_SMALL_CAPS = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_VERTICAL_SUBSTITUTION
	 */
	SUBSTITUTE_VERTICAL_FORMS_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_VERTICAL_SUBSTITUTION
	 */
	SUBSTITUTE_VERTICAL_FORMS_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LINGUISTIC_REARRANGEMENT
	 */
	LINGUISTIC_REARRANGEMENT_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LINGUISTIC_REARRANGEMENT
	 */
	LINGUISTIC_REARRANGEMENT_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_NUMBER_SPACING
	 */
	MONOSPACED_NUMBERS = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_NUMBER_SPACING
	 */
	PROPORTIONAL_NUMBERS = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_NUMBER_SPACING
	 */
	THIRD_WIDTH_NUMBERS = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_NUMBER_SPACING
	 */
	QUARTER_WIDTH_NUMBERS = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_SMART_SWASH_TYPE
	 */
	WORD_INITIAL_SWASHES_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_SMART_SWASH_TYPE
	 */
	WORD_INITIAL_SWASHES_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_SMART_SWASH_TYPE
	 */
	WORD_FINAL_SWASHES_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_SMART_SWASH_TYPE
	 */
	WORD_FINAL_SWASHES_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_SMART_SWASH_TYPE
	 */
	LINE_INITIAL_SWASHES_ON = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_SMART_SWASH_TYPE
	 */
	LINE_INITIAL_SWASHES_OFF = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_SMART_SWASH_TYPE
	 */
	LINE_FINAL_SWASHES_ON = 6,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_SMART_SWASH_TYPE
	 */
	LINE_FINAL_SWASHES_OFF = 7,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_SMART_SWASH_TYPE
	 */
	NON_FINAL_SWASHES_ON = 8,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_SMART_SWASH_TYPE
	 */
	NON_FINAL_SWASHES_OFF = 9,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_DIACRITICS_TYPE
	 */
	SHOW_DIACRITICS = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_DIACRITICS_TYPE
	 */
	HIDE_DIACRITICS = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_DIACRITICS_TYPE
	 */
	DECOMPOSE_DIACRITICS = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_VERTICAL_POSITION
	 */
	NORMAL_POSITION = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_VERTICAL_POSITION
	 */
	SUPERIORS = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_VERTICAL_POSITION
	 */
	INFERIORS = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_VERTICAL_POSITION
	 */
	ORDINALS = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_VERTICAL_POSITION
	 */
	SCIENTIFIC_INFERIORS = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_FRACTIONS
	 */
	NO_FRACTIONS = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_FRACTIONS
	 */
	VERTICAL_FRACTIONS = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_FRACTIONS
	 */
	DIAGONAL_FRACTIONS = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_OVERLAPPING_CHARACTERS_TYPE
	 */
	PREVENT_OVERLAP_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_OVERLAPPING_CHARACTERS_TYPE
	 */
	PREVENT_OVERLAP_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	HYPHENS_TO_EM_DASH_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	HYPHENS_TO_EM_DASH_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	HYPHEN_TO_EN_DASH_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	HYPHEN_TO_EN_DASH_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	SLASHED_ZERO_ON = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	SLASHED_ZERO_OFF = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	FORM_INTERROBANG_ON = 6,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	FORM_INTERROBANG_OFF = 7,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	SMART_QUOTES_ON = 8,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	SMART_QUOTES_OFF = 9,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	PERIODS_TO_ELLIPSIS_ON = 10,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TYPOGRAPHIC_EXTRAS
	 */
	PERIODS_TO_ELLIPSIS_OFF = 11,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	HYPHEN_TO_MINUS_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	HYPHEN_TO_MINUS_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	ASTERISK_TO_MULTIPLY_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	ASTERISK_TO_MULTIPLY_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	SLASH_TO_DIVIDE_ON = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	SLASH_TO_DIVIDE_OFF = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	INEQUALITY_LIGATURES_ON = 6,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	INEQUALITY_LIGATURES_OFF = 7,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	EXPONENTS_ON = 8,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	EXPONENTS_OFF = 9,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	MATHEMATICAL_GREEK_ON = 10,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_MATHEMATICAL_EXTRAS
	 */
	MATHEMATICAL_GREEK_OFF = 11,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ORNAMENT_SETS_TYPE
	 */
	NO_ORNAMENTS = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ORNAMENT_SETS_TYPE
	 */
	DINGBATS = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ORNAMENT_SETS_TYPE
	 */
	PI_CHARACTERS = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ORNAMENT_SETS_TYPE
	 */
	FLEURONS = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ORNAMENT_SETS_TYPE
	 */
	DECORATIVE_BORDERS = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ORNAMENT_SETS_TYPE
	 */
	INTERNATIONAL_SYMBOLS = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ORNAMENT_SETS_TYPE
	 */
	MATH_SYMBOLS = 6,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_ALTERNATIVES
	 */
	NO_ALTERNATES = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_DESIGN_COMPLEXITY_TYPE
	 */
	DESIGN_LEVEL1 = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_DESIGN_COMPLEXITY_TYPE
	 */
	DESIGN_LEVEL2 = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_DESIGN_COMPLEXITY_TYPE
	 */
	DESIGN_LEVEL3 = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_DESIGN_COMPLEXITY_TYPE
	 */
	DESIGN_LEVEL4 = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_DESIGN_COMPLEXITY_TYPE
	 */
	DESIGN_LEVEL5 = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLE_OPTIONS
	 */
	NO_STYLE_OPTIONS = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLE_OPTIONS
	 */
	DISPLAY_TEXT = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLE_OPTIONS
	 */
	ENGRAVED_TEXT = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLE_OPTIONS
	 */
	ILLUMINATED_CAPS = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLE_OPTIONS
	 */
	TITLING_CAPS = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLE_OPTIONS
	 */
	TALL_CAPS = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	TRADITIONAL_CHARACTERS = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	SIMPLIFIED_CHARACTERS = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	JIS1978_CHARACTERS = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	JIS1983_CHARACTERS = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	JIS1990_CHARACTERS = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	TRADITIONAL_ALT_ONE = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	TRADITIONAL_ALT_TWO = 6,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	TRADITIONAL_ALT_THREE = 7,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	TRADITIONAL_ALT_FOUR = 8,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	TRADITIONAL_ALT_FIVE = 9,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	EXPERT_CHARACTERS = 10,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	JIS2004_CHARACTERS = 11,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	HOJO_CHARACTERS = 12,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	NLCCHARACTERS = 13,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CHARACTER_SHAPE
	 */
	TRADITIONAL_NAMES_CHARACTERS = 14,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_NUMBER_CASE
	 */
	LOWER_CASE_NUMBERS = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_NUMBER_CASE
	 */
	UPPER_CASE_NUMBERS = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TEXT_SPACING
	 */
	PROPORTIONAL_TEXT = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TEXT_SPACING
	 */
	MONOSPACED_TEXT = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TEXT_SPACING
	 */
	HALF_WIDTH_TEXT = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TEXT_SPACING
	 */
	THIRD_WIDTH_TEXT = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TEXT_SPACING
	 */
	QUARTER_WIDTH_TEXT = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TEXT_SPACING
	 */
	ALT_PROPORTIONAL_TEXT = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TEXT_SPACING
	 */
	ALT_HALF_WIDTH_TEXT = 6,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TRANSLITERATION
	 */
	NO_TRANSLITERATION = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TRANSLITERATION
	 */
	HANJA_TO_HANGUL = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TRANSLITERATION
	 */
	HIRAGANA_TO_KATAKANA = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TRANSLITERATION
	 */
	KATAKANA_TO_HIRAGANA = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TRANSLITERATION
	 */
	KANA_TO_ROMANIZATION = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TRANSLITERATION
	 */
	ROMANIZATION_TO_HIRAGANA = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TRANSLITERATION
	 */
	ROMANIZATION_TO_KATAKANA = 6,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TRANSLITERATION
	 */
	HANJA_TO_HANGUL_ALT_ONE = 7,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TRANSLITERATION
	 */
	HANJA_TO_HANGUL_ALT_TWO = 8,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_TRANSLITERATION
	 */
	HANJA_TO_HANGUL_ALT_THREE = 9,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	NO_ANNOTATION = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	BOX_ANNOTATION = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	ROUNDED_BOX_ANNOTATION = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	CIRCLE_ANNOTATION = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	INVERTED_CIRCLE_ANNOTATION = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	PARENTHESIS_ANNOTATION = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	PERIOD_ANNOTATION = 6,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	ROMAN_NUMERAL_ANNOTATION = 7,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	DIAMOND_ANNOTATION = 8,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	INVERTED_BOX_ANNOTATION = 9,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ANNOTATION_TYPE
	 */
	INVERTED_ROUNDED_BOX_ANNOTATION = 10,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_KANA_SPACING_TYPE
	 */
	FULL_WIDTH_KANA = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_KANA_SPACING_TYPE
	 */
	PROPORTIONAL_KANA = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_IDEOGRAPHIC_SPACING_TYPE
	 */
	FULL_WIDTH_IDEOGRAPHS = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_IDEOGRAPHIC_SPACING_TYPE
	 */
	PROPORTIONAL_IDEOGRAPHS = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_IDEOGRAPHIC_SPACING_TYPE
	 */
	HALF_WIDTH_IDEOGRAPHS = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_UNICODE_DECOMPOSITION_TYPE
	 */
	CANONICAL_COMPOSITION_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_UNICODE_DECOMPOSITION_TYPE
	 */
	CANONICAL_COMPOSITION_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_UNICODE_DECOMPOSITION_TYPE
	 */
	COMPATIBILITY_COMPOSITION_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_UNICODE_DECOMPOSITION_TYPE
	 */
	COMPATIBILITY_COMPOSITION_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_UNICODE_DECOMPOSITION_TYPE
	 */
	TRANSCODING_COMPOSITION_ON = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_UNICODE_DECOMPOSITION_TYPE
	 */
	TRANSCODING_COMPOSITION_OFF = 5,
	/**
	 * Deprecated; use #HB_AAT_LAYOUT_FEATURE_SELECTOR_RUBY_KANA_OFF instead
	 */
	NO_RUBY_KANA = 0,
	/**
	 * Deprecated; use #HB_AAT_LAYOUT_FEATURE_SELECTOR_RUBY_KANA_ON instead
	 */
	RUBY_KANA = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_RUBY_KANA
	 */
	RUBY_KANA_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_RUBY_KANA
	 */
	RUBY_KANA_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_SYMBOL_ALTERNATIVES_TYPE
	 */
	NO_CJK_SYMBOL_ALTERNATIVES = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_SYMBOL_ALTERNATIVES_TYPE
	 */
	CJK_SYMBOL_ALT_ONE = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_SYMBOL_ALTERNATIVES_TYPE
	 */
	CJK_SYMBOL_ALT_TWO = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_SYMBOL_ALTERNATIVES_TYPE
	 */
	CJK_SYMBOL_ALT_THREE = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_SYMBOL_ALTERNATIVES_TYPE
	 */
	CJK_SYMBOL_ALT_FOUR = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_SYMBOL_ALTERNATIVES_TYPE
	 */
	CJK_SYMBOL_ALT_FIVE = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_IDEOGRAPHIC_ALTERNATIVES_TYPE
	 */
	NO_IDEOGRAPHIC_ALTERNATIVES = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_IDEOGRAPHIC_ALTERNATIVES_TYPE
	 */
	IDEOGRAPHIC_ALT_ONE = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_IDEOGRAPHIC_ALTERNATIVES_TYPE
	 */
	IDEOGRAPHIC_ALT_TWO = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_IDEOGRAPHIC_ALTERNATIVES_TYPE
	 */
	IDEOGRAPHIC_ALT_THREE = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_IDEOGRAPHIC_ALTERNATIVES_TYPE
	 */
	IDEOGRAPHIC_ALT_FOUR = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_IDEOGRAPHIC_ALTERNATIVES_TYPE
	 */
	IDEOGRAPHIC_ALT_FIVE = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_VERTICAL_ROMAN_PLACEMENT_TYPE
	 */
	CJK_VERTICAL_ROMAN_CENTERED = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_VERTICAL_ROMAN_PLACEMENT_TYPE
	 */
	CJK_VERTICAL_ROMAN_HBASELINE = 1,
	/**
	 * Deprecated; use #HB_AAT_LAYOUT_FEATURE_SELECTOR_CJK_ITALIC_ROMAN_OFF instead
	 */
	NO_CJK_ITALIC_ROMAN = 0,
	/**
	 * Deprecated; use #HB_AAT_LAYOUT_FEATURE_SELECTOR_CJK_ITALIC_ROMAN_ON instead
	 */
	CJK_ITALIC_ROMAN = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ITALIC_CJK_ROMAN
	 */
	CJK_ITALIC_ROMAN_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ITALIC_CJK_ROMAN
	 */
	CJK_ITALIC_ROMAN_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CASE_SENSITIVE_LAYOUT
	 */
	CASE_SENSITIVE_LAYOUT_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CASE_SENSITIVE_LAYOUT
	 */
	CASE_SENSITIVE_LAYOUT_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CASE_SENSITIVE_LAYOUT
	 */
	CASE_SENSITIVE_SPACING_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CASE_SENSITIVE_LAYOUT
	 */
	CASE_SENSITIVE_SPACING_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ALTERNATE_KANA
	 */
	ALTERNATE_HORIZ_KANA_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ALTERNATE_KANA
	 */
	ALTERNATE_HORIZ_KANA_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ALTERNATE_KANA
	 */
	ALTERNATE_VERT_KANA_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_ALTERNATE_KANA
	 */
	ALTERNATE_VERT_KANA_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	NO_STYLISTIC_ALTERNATES = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_ONE_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_ONE_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_TWO_ON = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_TWO_OFF = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_THREE_ON = 6,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_THREE_OFF = 7,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_FOUR_ON = 8,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_FOUR_OFF = 9,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_FIVE_ON = 10,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_FIVE_OFF = 11,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_SIX_ON = 12,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_SIX_OFF = 13,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_SEVEN_ON = 14,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_SEVEN_OFF = 15,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_EIGHT_ON = 16,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_EIGHT_OFF = 17,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_NINE_ON = 18,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_NINE_OFF = 19,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_TEN_ON = 20,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_TEN_OFF = 21,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_ELEVEN_ON = 22,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_ELEVEN_OFF = 23,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_TWELVE_ON = 24,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_TWELVE_OFF = 25,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_THIRTEEN_ON = 26,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_THIRTEEN_OFF = 27,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_FOURTEEN_ON = 28,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_FOURTEEN_OFF = 29,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_FIFTEEN_ON = 30,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_FIFTEEN_OFF = 31,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_SIXTEEN_ON = 32,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_SIXTEEN_OFF = 33,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_SEVENTEEN_ON = 34,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_SEVENTEEN_OFF = 35,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_EIGHTEEN_ON = 36,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_EIGHTEEN_OFF = 37,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_NINETEEN_ON = 38,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_NINETEEN_OFF = 39,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_TWENTY_ON = 40,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_STYLISTIC_ALTERNATIVES
	 */
	STYLISTIC_ALT_TWENTY_OFF = 41,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CONTEXTUAL_ALTERNATIVES
	 */
	CONTEXTUAL_ALTERNATES_ON = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CONTEXTUAL_ALTERNATIVES
	 */
	CONTEXTUAL_ALTERNATES_OFF = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CONTEXTUAL_ALTERNATIVES
	 */
	SWASH_ALTERNATES_ON = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CONTEXTUAL_ALTERNATIVES
	 */
	SWASH_ALTERNATES_OFF = 3,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CONTEXTUAL_ALTERNATIVES
	 */
	CONTEXTUAL_SWASH_ALTERNATES_ON = 4,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CONTEXTUAL_ALTERNATIVES
	 */
	CONTEXTUAL_SWASH_ALTERNATES_OFF = 5,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LOWER_CASE
	 */
	DEFAULT_LOWER_CASE = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LOWER_CASE
	 */
	LOWER_CASE_SMALL_CAPS = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_LOWER_CASE
	 */
	LOWER_CASE_PETITE_CAPS = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_UPPER_CASE
	 */
	DEFAULT_UPPER_CASE = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_UPPER_CASE
	 */
	UPPER_CASE_SMALL_CAPS = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_UPPER_CASE
	 */
	UPPER_CASE_PETITE_CAPS = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_ROMAN_SPACING_TYPE
	 */
	HALF_WIDTH_CJK_ROMAN = 0,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_ROMAN_SPACING_TYPE
	 */
	PROPORTIONAL_CJK_ROMAN = 1,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_ROMAN_SPACING_TYPE
	 */
	DEFAULT_CJK_ROMAN = 2,
	/**
	 * for #HB_AAT_LAYOUT_FEATURE_TYPE_CJK_ROMAN_SPACING_TYPE
	 */
	FULL_WIDTH_CJK_ROMAN = 3,
}
alias hb_aat_layout_feature_selector_t aat_layout_feature_selector_t;

/**
 * The possible feature types defined for AAT shaping.
 *
 * Since: 2.2.0
 */
public enum hb_aat_layout_feature_type_t
{
	/**
	 * Initial, unset feature type
	 */
	INVALID = 65535,
	ALL_TYPOGRAPHIC = 0,
	LIGATURES = 1,
	CURISVE_CONNECTION = 2,
	LETTER_CASE = 3,
	VERTICAL_SUBSTITUTION = 4,
	LINGUISTIC_REARRANGEMENT = 5,
	NUMBER_SPACING = 6,
	SMART_SWASH_TYPE = 8,
	DIACRITICS_TYPE = 9,
	VERTICAL_POSITION = 10,
	FRACTIONS = 11,
	OVERLAPPING_CHARACTERS_TYPE = 13,
	TYPOGRAPHIC_EXTRAS = 14,
	MATHEMATICAL_EXTRAS = 15,
	ORNAMENT_SETS_TYPE = 16,
	CHARACTER_ALTERNATIVES = 17,
	DESIGN_COMPLEXITY_TYPE = 18,
	STYLE_OPTIONS = 19,
	CHARACTER_SHAPE = 20,
	NUMBER_CASE = 21,
	TEXT_SPACING = 22,
	TRANSLITERATION = 23,
	ANNOTATION_TYPE = 24,
	KANA_SPACING_TYPE = 25,
	IDEOGRAPHIC_SPACING_TYPE = 26,
	UNICODE_DECOMPOSITION_TYPE = 27,
	RUBY_KANA = 28,
	CJK_SYMBOL_ALTERNATIVES_TYPE = 29,
	IDEOGRAPHIC_ALTERNATIVES_TYPE = 30,
	CJK_VERTICAL_ROMAN_PLACEMENT_TYPE = 31,
	ITALIC_CJK_ROMAN = 32,
	CASE_SENSITIVE_LAYOUT = 33,
	ALTERNATE_KANA = 34,
	STYLISTIC_ALTERNATIVES = 35,
	CONTEXTUAL_ALTERNATIVES = 36,
	LOWER_CASE = 37,
	UPPER_CASE = 38,
	LANGUAGE_TAG_TYPE = 39,
	CJK_ROMAN_SPACING_TYPE = 103,
}
alias hb_aat_layout_feature_type_t aat_layout_feature_type_t;

/**
 * Data type for holding HarfBuzz's clustering behavior options. The cluster level
 * dictates one aspect of how HarfBuzz will treat non-base characters
 * during shaping.
 *
 * In @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_GRAPHEMES, non-base
 * characters are merged into the cluster of the base character that precedes them.
 *
 * In @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_CHARACTERS, non-base characters are initially
 * assigned their own cluster values, which are not merged into preceding base
 * clusters. This allows HarfBuzz to perform additional operations like reorder
 * sequences of adjacent marks.
 *
 * @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_GRAPHEMES is the default, because it maintains
 * backward compatibility with older versions of HarfBuzz. New client programs that
 * do not need to maintain such backward compatibility are recommended to use
 * @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_CHARACTERS instead of the default.
 *
 * Since: 0.9.42
 */
public enum hb_buffer_cluster_level_t
{
	/**
	 * Return cluster values grouped by graphemes into
	 * monotone order.
	 */
	MONOTONE_GRAPHEMES = 0,
	/**
	 * Return cluster values grouped into monotone order.
	 */
	MONOTONE_CHARACTERS = 1,
	/**
	 * Don't group cluster values.
	 */
	CHARACTERS = 2,
	/**
	 * Default cluster level,
	 * equal to @HB_BUFFER_CLUSTER_LEVEL_MONOTONE_GRAPHEMES.
	 */
	DEFAULT = 0,
}
alias hb_buffer_cluster_level_t buffer_cluster_level_t;

public enum hb_buffer_content_type_t
{
	/**
	 * Initial value for new buffer.
	 */
	INVALID = 0,
	/**
	 * The buffer contains input characters (before shaping).
	 */
	UNICODE = 1,
	/**
	 * The buffer contains output glyphs (after shaping).
	 */
	GLYPHS = 2,
}
alias hb_buffer_content_type_t buffer_content_type_t;

public enum hb_buffer_diff_flags_t
{
	EQUAL = 0,
	CONTENT_TYPE_MISMATCH = 1,
	LENGTH_MISMATCH = 2,
	NOTDEF_PRESENT = 4,
	DOTTED_CIRCLE_PRESENT = 8,
	CODEPOINT_MISMATCH = 16,
	CLUSTER_MISMATCH = 32,
	GLYPH_FLAGS_MISMATCH = 64,
	POSITION_MISMATCH = 128,
}
alias hb_buffer_diff_flags_t buffer_diff_flags_t;

public enum hb_buffer_flags_t
{
	/**
	 * the default buffer flag.
	 */
	DEFAULT = 0,
	/**
	 * flag indicating that special handling of the beginning
	 * of text paragraph can be applied to this buffer. Should usually
	 * be set, unless you are passing to the buffer only part
	 * of the text without the full context.
	 */
	BOT = 1,
	/**
	 * flag indicating that special handling of the end of text
	 * paragraph can be applied to this buffer, similar to
	 * @HB_BUFFER_FLAG_BOT.
	 */
	EOT = 2,
	/**
	 * flag indication that character with Default_Ignorable
	 * Unicode property should use the corresponding glyph
	 * from the font, instead of hiding them (done by
	 * replacing them with the space glyph and zeroing the
	 * advance width.)  This flag takes precedence over
	 * @HB_BUFFER_FLAG_REMOVE_DEFAULT_IGNORABLES.
	 */
	PRESERVE_DEFAULT_IGNORABLES = 4,
	/**
	 * flag indication that character with Default_Ignorable
	 * Unicode property should be removed from glyph string
	 * instead of hiding them (done by replacing them with the
	 * space glyph and zeroing the advance width.)
	 * @HB_BUFFER_FLAG_PRESERVE_DEFAULT_IGNORABLES takes
	 * precedence over this flag. Since: 1.8.0
	 */
	REMOVE_DEFAULT_IGNORABLES = 8,
	/**
	 * flag indicating that a dotted circle should
	 * not be inserted in the rendering of incorrect
	 * character sequences (such at <0905 093E>). Since: 2.4
	 */
	DO_NOT_INSERT_DOTTED_CIRCLE = 16,
}
alias hb_buffer_flags_t buffer_flags_t;

/**
 * Flags that control what glyph information are serialized in hb_buffer_serialize_glyphs().
 *
 * Since: 0.9.20
 */
public enum hb_buffer_serialize_flags_t
{
	/**
	 * serialize glyph names, clusters and positions.
	 */
	DEFAULT = 0,
	/**
	 * do not serialize glyph cluster.
	 */
	NO_CLUSTERS = 1,
	/**
	 * do not serialize glyph position information.
	 */
	NO_POSITIONS = 2,
	/**
	 * do no serialize glyph name.
	 */
	NO_GLYPH_NAMES = 4,
	/**
	 * serialize glyph extents.
	 */
	GLYPH_EXTENTS = 8,
	/**
	 * serialize glyph flags. Since: 1.5.0
	 */
	GLYPH_FLAGS = 16,
	/**
	 * do not serialize glyph advances,
	 * glyph offsets will reflect absolute glyph positions. Since: 1.8.0
	 */
	NO_ADVANCES = 32,
}
alias hb_buffer_serialize_flags_t buffer_serialize_flags_t;

/**
 * The buffer serialization and de-serialization format used in
 * hb_buffer_serialize_glyphs() and hb_buffer_deserialize_glyphs().
 *
 * Since: 0.9.2
 */
public enum hb_buffer_serialize_format_t
{
	/**
	 * a human-readable, plain text format.
	 */
	TEXT = 1413830740,
	/**
	 * a machine-readable JSON format.
	 */
	JSON = 1246973774,
	/**
	 * invalid format.
	 */
	INVALID = 0,
}
alias hb_buffer_serialize_format_t buffer_serialize_format_t;

/**
 * The direction of a text segment or buffer.
 *
 * A segment can also be tested for horizontal or vertical
 * orientation (irrespective of specific direction) with
 * HB_DIRECTION_IS_HORIZONTAL() or HB_DIRECTION_IS_VERTICAL().
 */
public enum hb_direction_t
{
	/**
	 * Initial, unset direction.
	 */
	INVALID = 0,
	/**
	 * Text is set horizontally from left to right.
	 */
	LTR = 4,
	/**
	 * Text is set horizontally from right to left.
	 */
	RTL = 5,
	/**
	 * Text is set vertically from top to bottom.
	 */
	TTB = 6,
	/**
	 * Text is set vertically from bottom to top.
	 */
	BTT = 7,
}
alias hb_direction_t direction_t;

public enum hb_glyph_flags_t
{
	/**
	 * Indicates that if input text is broken at the
	 * beginning of the cluster this glyph is part of,
	 * then both sides need to be re-shaped, as the
	 * result might be different.  On the flip side,
	 * it means that when this flag is not present,
	 * then it's safe to break the glyph-run at the
	 * beginning of this cluster, and the two sides
	 * represent the exact same result one would get
	 * if breaking input text at the beginning of
	 * this cluster and shaping the two sides
	 * separately.  This can be used to optimize
	 * paragraph layout, by avoiding re-shaping
	 * of each line after line-breaking, or limiting
	 * the reshaping to a small piece around the
	 * breaking point only.
	 */
	UNSAFE_TO_BREAK = 1,
	/**
	 * All the currently defined flags.
	 */
	DEFINED = 1,
}
alias hb_glyph_flags_t glyph_flags_t;

/**
 * @HB_MEMORY_MODE_DUPLICATE
 * @HB_MEMORY_MODE_READONLY
 * @HB_MEMORY_MODE_WRITABLE
 * @HB_MEMORY_MODE_READONLY_MAY_MAKE_WRITABLE
 * Data type holding the memory modes available to
 * client programs.
 *
 * Regarding these various memory-modes:
 *
 * - In no case shall the HarfBuzz client modify memory
 * that is passed to HarfBuzz in a blob.  If there is
 * any such possibility, @HB_MEMORY_MODE_DUPLICATE should be used
 * such that HarfBuzz makes a copy immediately,
 *
 * - Use @HB_MEMORY_MODE_READONLY otherwise, unless you really really
 * really know what you are doing,
 *
 * - @HB_MEMORY_MODE_WRITABLE is appropriate if you really made a
 * copy of data solely for the purpose of passing to
 * HarfBuzz and doing that just once (no reuse!),
 *
 * - If the font is mmap()ed, it's okay to use
 * @HB_MEMORY_READONLY_MAY_MAKE_WRITABLE, however, using that mode
 * correctly is very tricky.  Use @HB_MEMORY_MODE_READONLY instead.
 */
public enum hb_memory_mode_t
{
	DUPLICATE = 0,
	READONLY = 1,
	WRITABLE = 2,
	READONLY_MAY_MAKE_WRITABLE = 3,
}
alias hb_memory_mode_t memory_mode_t;

public enum hb_ot_color_palette_flags_t
{
	/**
	 * Default indicating that there is nothing special
	 * to note about a color palette.
	 */
	DEFAULT = 0,
	/**
	 * Flag indicating that the color
	 * palette is appropriate to use when displaying the font on a light background such as white.
	 */
	USABLE_WITH_LIGHT_BACKGROUND = 1,
	/**
	 * Flag indicating that the color
	 * palette is appropriate to use when displaying the font on a dark background such as black.
	 */
	USABLE_WITH_DARK_BACKGROUND = 2,
}
alias hb_ot_color_palette_flags_t ot_color_palette_flags_t;

/**
 * Baseline tags from https://docs.microsoft.com/en-us/typography/opentype/spec/baselinetags
 *
 * Since: 2.6.0
 */
public enum hb_ot_layout_baseline_tag_t
{
	/**
	 * The baseline used by alphabetic scripts such as Latin, Cyrillic and Greek.
	 * In vertical writing mode, the alphabetic baseline for characters rotated 90 degrees clockwise.
	 * (This would not apply to alphabetic characters that remain upright in vertical writing mode, since these
	 * characters are not rotated.)
	 */
	ROMAN = 1919905134,
	/**
	 * The hanging baseline. In horizontal direction, this is the horizontal
	 * line from which syllables seem, to hang in Tibetan and other similar scripts. In vertical writing mode,
	 * for Tibetan (or some other similar script) characters rotated 90 degrees clockwise.
	 */
	HANGING = 1751215719,
	/**
	 * Ideographic character face bottom or left edge,
	 * if the direction is horizontal or vertical, respectively.
	 */
	IDEO_FACE_BOTTOM_OR_LEFT = 1768121954,
	/**
	 * Ideographic character face top or right edge,
	 * if the direction is horizontal or vertical, respectively.
	 */
	IDEO_FACE_TOP_OR_RIGHT = 1768121972,
	/**
	 * Ideographic em-box bottom or left edge,
	 * if the direction is horizontal or vertical, respectively.
	 */
	IDEO_EMBOX_BOTTOM_OR_LEFT = 1768187247,
	/**
	 * Ideographic em-box top or right edge baseline,
	 * if the direction is horizontal or vertical, respectively.
	 */
	IDEO_EMBOX_TOP_OR_RIGHT = 1768191088,
	/**
	 * The baseline about which mathematical characters are centered.
	 * In vertical writing mode when mathematical characters rotated 90 degrees clockwise, are centered.
	 */
	MATH = 1835103336,
}
alias hb_ot_layout_baseline_tag_t ot_layout_baseline_tag_t;

/**
 * The GDEF classes defined for glyphs.
 */
public enum hb_ot_layout_glyph_class_t
{
	/**
	 * Glyphs not matching the other classifications
	 */
	UNCLASSIFIED = 0,
	/**
	 * Spacing, single characters, capable of accepting marks
	 */
	BASE_GLYPH = 1,
	/**
	 * Glyphs that represent ligation of multiple characters
	 */
	LIGATURE = 2,
	/**
	 * Non-spacing, combining glyphs that represent marks
	 */
	MARK = 3,
	/**
	 * Spacing glyphs that represent part of a single character
	 */
	COMPONENT = 4,
}
alias hb_ot_layout_glyph_class_t ot_layout_glyph_class_t;

/**
 * The 'MATH' table constants specified at
 * https://docs.microsoft.com/en-us/typography/opentype/spec/math
 *
 * Since: 1.3.3
 */
public enum hb_ot_math_constant_t
{
	SCRIPT_PERCENT_SCALE_DOWN = 0,
	SCRIPT_SCRIPT_PERCENT_SCALE_DOWN = 1,
	DELIMITED_SUB_FORMULA_MIN_HEIGHT = 2,
	DISPLAY_OPERATOR_MIN_HEIGHT = 3,
	MATH_LEADING = 4,
	AXIS_HEIGHT = 5,
	ACCENT_BASE_HEIGHT = 6,
	FLATTENED_ACCENT_BASE_HEIGHT = 7,
	SUBSCRIPT_SHIFT_DOWN = 8,
	SUBSCRIPT_TOP_MAX = 9,
	SUBSCRIPT_BASELINE_DROP_MIN = 10,
	SUPERSCRIPT_SHIFT_UP = 11,
	SUPERSCRIPT_SHIFT_UP_CRAMPED = 12,
	SUPERSCRIPT_BOTTOM_MIN = 13,
	SUPERSCRIPT_BASELINE_DROP_MAX = 14,
	SUB_SUPERSCRIPT_GAP_MIN = 15,
	SUPERSCRIPT_BOTTOM_MAX_WITH_SUBSCRIPT = 16,
	SPACE_AFTER_SCRIPT = 17,
	UPPER_LIMIT_GAP_MIN = 18,
	UPPER_LIMIT_BASELINE_RISE_MIN = 19,
	LOWER_LIMIT_GAP_MIN = 20,
	LOWER_LIMIT_BASELINE_DROP_MIN = 21,
	STACK_TOP_SHIFT_UP = 22,
	STACK_TOP_DISPLAY_STYLE_SHIFT_UP = 23,
	STACK_BOTTOM_SHIFT_DOWN = 24,
	STACK_BOTTOM_DISPLAY_STYLE_SHIFT_DOWN = 25,
	STACK_GAP_MIN = 26,
	STACK_DISPLAY_STYLE_GAP_MIN = 27,
	STRETCH_STACK_TOP_SHIFT_UP = 28,
	STRETCH_STACK_BOTTOM_SHIFT_DOWN = 29,
	STRETCH_STACK_GAP_ABOVE_MIN = 30,
	STRETCH_STACK_GAP_BELOW_MIN = 31,
	FRACTION_NUMERATOR_SHIFT_UP = 32,
	FRACTION_NUMERATOR_DISPLAY_STYLE_SHIFT_UP = 33,
	FRACTION_DENOMINATOR_SHIFT_DOWN = 34,
	FRACTION_DENOMINATOR_DISPLAY_STYLE_SHIFT_DOWN = 35,
	FRACTION_NUMERATOR_GAP_MIN = 36,
	FRACTION_NUM_DISPLAY_STYLE_GAP_MIN = 37,
	FRACTION_RULE_THICKNESS = 38,
	FRACTION_DENOMINATOR_GAP_MIN = 39,
	FRACTION_DENOM_DISPLAY_STYLE_GAP_MIN = 40,
	SKEWED_FRACTION_HORIZONTAL_GAP = 41,
	SKEWED_FRACTION_VERTICAL_GAP = 42,
	OVERBAR_VERTICAL_GAP = 43,
	OVERBAR_RULE_THICKNESS = 44,
	OVERBAR_EXTRA_ASCENDER = 45,
	UNDERBAR_VERTICAL_GAP = 46,
	UNDERBAR_RULE_THICKNESS = 47,
	UNDERBAR_EXTRA_DESCENDER = 48,
	RADICAL_VERTICAL_GAP = 49,
	RADICAL_DISPLAY_STYLE_VERTICAL_GAP = 50,
	RADICAL_RULE_THICKNESS = 51,
	RADICAL_EXTRA_ASCENDER = 52,
	RADICAL_KERN_BEFORE_DEGREE = 53,
	RADICAL_KERN_AFTER_DEGREE = 54,
	RADICAL_DEGREE_BOTTOM_RAISE_PERCENT = 55,
}
alias hb_ot_math_constant_t ot_math_constant_t;

/**
 * Flags for math glyph parts.
 *
 * Since: 1.3.3
 */
public enum hb_ot_math_glyph_part_flags_t
{
	EXTENDER = 1,
}
alias hb_ot_math_glyph_part_flags_t ot_math_glyph_part_flags_t;

/**
 * The math kerning-table types defined for the four corners
 * of a glyph.
 *
 * Since: 1.3.3
 */
public enum hb_ot_math_kern_t
{
	TOP_RIGHT = 0,
	TOP_LEFT = 1,
	BOTTOM_RIGHT = 2,
	BOTTOM_LEFT = 3,
}
alias hb_ot_math_kern_t ot_math_kern_t;

/**
 * Known metadata tags from https://docs.microsoft.com/en-us/typography/opentype/spec/meta
 *
 * Since: 2.6.0
 */
public enum hb_ot_meta_tag_t
{
	/**
	 * Design languages. Text, using only
	 * Basic Latin (ASCII) characters. Indicates languages and/or scripts
	 * for the user audiences that the font was primarily designed for.
	 */
	DESIGN_LANGUAGES = 1684827751,
	/**
	 * Supported languages. Text, using
	 * only Basic Latin (ASCII) characters. Indicates languages and/or scripts
	 * that the font is declared to be capable of supporting.
	 */
	SUPPORTED_LANGUAGES = 1936485991,
}
alias hb_ot_meta_tag_t ot_meta_tag_t;

/**
 * From https://docs.microsoft.com/en-us/typography/opentype/spec/mvar#value-tags
 *
 * Since: 2.6.0
 */
public enum hb_ot_metrics_tag_t
{
	/**
	 * horizontal ascender.
	 */
	HORIZONTAL_ASCENDER = 1751216995,
	/**
	 * horizontal descender.
	 */
	HORIZONTAL_DESCENDER = 1751413603,
	/**
	 * horizontal line gap.
	 */
	HORIZONTAL_LINE_GAP = 1751934832,
	/**
	 * horizontal clipping ascent.
	 */
	HORIZONTAL_CLIPPING_ASCENT = 1751346273,
	/**
	 * horizontal clipping descent.
	 */
	HORIZONTAL_CLIPPING_DESCENT = 1751346276,
	/**
	 * vertical ascender.
	 */
	VERTICAL_ASCENDER = 1986098019,
	/**
	 * vertical descender.
	 */
	VERTICAL_DESCENDER = 1986294627,
	/**
	 * vertical line gap.
	 */
	VERTICAL_LINE_GAP = 1986815856,
	/**
	 * horizontal caret rise.
	 */
	HORIZONTAL_CARET_RISE = 1751347827,
	/**
	 * horizontal caret run.
	 */
	HORIZONTAL_CARET_RUN = 1751347822,
	/**
	 * horizontal caret offset.
	 */
	HORIZONTAL_CARET_OFFSET = 1751347046,
	/**
	 * vertical caret rise.
	 */
	VERTICAL_CARET_RISE = 1986228851,
	/**
	 * vertical caret run.
	 */
	VERTICAL_CARET_RUN = 1986228846,
	/**
	 * vertical caret offset.
	 */
	VERTICAL_CARET_OFFSET = 1986228070,
	/**
	 * x height.
	 */
	X_HEIGHT = 2020108148,
	/**
	 * cap height.
	 */
	CAP_HEIGHT = 1668311156,
	/**
	 * subscript em x size.
	 */
	SUBSCRIPT_EM_X_SIZE = 1935833203,
	/**
	 * subscript em y size.
	 */
	SUBSCRIPT_EM_Y_SIZE = 1935833459,
	/**
	 * subscript em x offset.
	 */
	SUBSCRIPT_EM_X_OFFSET = 1935833199,
	/**
	 * subscript em y offset.
	 */
	SUBSCRIPT_EM_Y_OFFSET = 1935833455,
	/**
	 * superscript em x size.
	 */
	SUPERSCRIPT_EM_X_SIZE = 1936750707,
	/**
	 * superscript em y size.
	 */
	SUPERSCRIPT_EM_Y_SIZE = 1936750963,
	/**
	 * superscript em x offset.
	 */
	SUPERSCRIPT_EM_X_OFFSET = 1936750703,
	/**
	 * superscript em y offset.
	 */
	SUPERSCRIPT_EM_Y_OFFSET = 1936750959,
	/**
	 * strikeout size.
	 */
	STRIKEOUT_SIZE = 1937011315,
	/**
	 * strikeout offset.
	 */
	STRIKEOUT_OFFSET = 1937011311,
	/**
	 * underline size.
	 */
	UNDERLINE_SIZE = 1970168947,
	/**
	 * underline offset.
	 */
	UNDERLINE_OFFSET = 1970168943,
}
alias hb_ot_metrics_tag_t ot_metrics_tag_t;

public enum hb_ot_var_axis_flags_t
{
	/**
	 * The axis should not be exposed directly in user interfaces.
	 */
	HIDDEN = 1,
}
alias hb_ot_var_axis_flags_t ot_var_axis_flags_t;

/**
 * Data type for scripts. Each #hb_script_t's value is an #hb_tag_t corresponding
 * to the four-letter values defined by [ISO 15924](https://unicode.org/iso15924/).
 *
 * See also the Script (sc) property of the Unicode Character Database.
 */
public enum hb_script_t
{
	/**
	 * HB_TAG ('Z','y','y','y')
	 */
	COMMON = 1517910393,
	/**
	 * HB_TAG ('Z','i','n','h')
	 */
	INHERITED = 1516858984,
	/**
	 * HB_TAG ('Z','z','z','z')
	 * @HB_SCRIPT_ARABIC
	 * @HB_SCRIPT_ARMENIAN
	 * @HB_SCRIPT_BENGALI
	 * @HB_SCRIPT_CYRILLIC
	 * @HB_SCRIPT_DEVANAGARI
	 * @HB_SCRIPT_GEORGIAN
	 * @HB_SCRIPT_GREEK
	 * @HB_SCRIPT_GUJARATI
	 * @HB_SCRIPT_GURMUKHI
	 * @HB_SCRIPT_HANGUL
	 * @HB_SCRIPT_HAN
	 * @HB_SCRIPT_HEBREW
	 * @HB_SCRIPT_HIRAGANA
	 * @HB_SCRIPT_KANNADA
	 * @HB_SCRIPT_KATAKANA
	 * @HB_SCRIPT_LAO
	 * @HB_SCRIPT_LATIN
	 * @HB_SCRIPT_MALAYALAM
	 * @HB_SCRIPT_ORIYA
	 * @HB_SCRIPT_TAMIL
	 * @HB_SCRIPT_TELUGU
	 * @HB_SCRIPT_THAI
	 * @HB_SCRIPT_TIBETAN
	 * @HB_SCRIPT_BOPOMOFO
	 * @HB_SCRIPT_BRAILLE
	 * @HB_SCRIPT_CANADIAN_SYLLABICS
	 * @HB_SCRIPT_CHEROKEE
	 * @HB_SCRIPT_ETHIOPIC
	 * @HB_SCRIPT_KHMER
	 * @HB_SCRIPT_MONGOLIAN
	 * @HB_SCRIPT_MYANMAR
	 * @HB_SCRIPT_OGHAM
	 * @HB_SCRIPT_RUNIC
	 * @HB_SCRIPT_SINHALA
	 * @HB_SCRIPT_SYRIAC
	 * @HB_SCRIPT_THAANA
	 * @HB_SCRIPT_YI
	 * @HB_SCRIPT_DESERET
	 * @HB_SCRIPT_GOTHIC
	 * @HB_SCRIPT_OLD_ITALIC
	 * @HB_SCRIPT_BUHID
	 * @HB_SCRIPT_HANUNOO
	 * @HB_SCRIPT_TAGALOG
	 * @HB_SCRIPT_TAGBANWA
	 * @HB_SCRIPT_CYPRIOT
	 * @HB_SCRIPT_LIMBU
	 * @HB_SCRIPT_LINEAR_B
	 * @HB_SCRIPT_OSMANYA
	 * @HB_SCRIPT_SHAVIAN
	 * @HB_SCRIPT_TAI_LE
	 * @HB_SCRIPT_UGARITIC
	 * @HB_SCRIPT_BUGINESE
	 * @HB_SCRIPT_COPTIC
	 * @HB_SCRIPT_GLAGOLITIC
	 * @HB_SCRIPT_KHAROSHTHI
	 * @HB_SCRIPT_NEW_TAI_LUE
	 * @HB_SCRIPT_OLD_PERSIAN
	 * @HB_SCRIPT_SYLOTI_NAGRI
	 * @HB_SCRIPT_TIFINAGH
	 * @HB_SCRIPT_BALINESE
	 * @HB_SCRIPT_CUNEIFORM
	 * @HB_SCRIPT_NKO
	 * @HB_SCRIPT_PHAGS_PA
	 * @HB_SCRIPT_PHOENICIAN
	 * @HB_SCRIPT_CARIAN
	 * @HB_SCRIPT_CHAM
	 * @HB_SCRIPT_KAYAH_LI
	 * @HB_SCRIPT_LEPCHA
	 * @HB_SCRIPT_LYCIAN
	 * @HB_SCRIPT_LYDIAN
	 * @HB_SCRIPT_OL_CHIKI
	 * @HB_SCRIPT_REJANG
	 * @HB_SCRIPT_SAURASHTRA
	 * @HB_SCRIPT_SUNDANESE
	 * @HB_SCRIPT_VAI
	 * @HB_SCRIPT_AVESTAN
	 * @HB_SCRIPT_BAMUM
	 * @HB_SCRIPT_EGYPTIAN_HIEROGLYPHS
	 * @HB_SCRIPT_IMPERIAL_ARAMAIC
	 * @HB_SCRIPT_INSCRIPTIONAL_PAHLAVI
	 * @HB_SCRIPT_INSCRIPTIONAL_PARTHIAN
	 * @HB_SCRIPT_JAVANESE
	 * @HB_SCRIPT_KAITHI
	 * @HB_SCRIPT_LISU
	 * @HB_SCRIPT_MEETEI_MAYEK
	 * @HB_SCRIPT_OLD_SOUTH_ARABIAN
	 * @HB_SCRIPT_OLD_TURKIC
	 * @HB_SCRIPT_SAMARITAN
	 * @HB_SCRIPT_TAI_THAM
	 * @HB_SCRIPT_TAI_VIET
	 * @HB_SCRIPT_BATAK
	 * @HB_SCRIPT_BRAHMI
	 * @HB_SCRIPT_MANDAIC
	 * @HB_SCRIPT_CHAKMA
	 * @HB_SCRIPT_MEROITIC_CURSIVE
	 * @HB_SCRIPT_MEROITIC_HIEROGLYPHS
	 * @HB_SCRIPT_MIAO
	 * @HB_SCRIPT_SHARADA
	 * @HB_SCRIPT_SORA_SOMPENG
	 * @HB_SCRIPT_TAKRI
	 * @HB_SCRIPT_BASSA_VAH
	 * @HB_SCRIPT_CAUCASIAN_ALBANIAN
	 * @HB_SCRIPT_DUPLOYAN
	 * @HB_SCRIPT_ELBASAN
	 * @HB_SCRIPT_GRANTHA
	 * @HB_SCRIPT_KHOJKI
	 * @HB_SCRIPT_KHUDAWADI
	 * @HB_SCRIPT_LINEAR_A
	 * @HB_SCRIPT_MAHAJANI
	 * @HB_SCRIPT_MANICHAEAN
	 * @HB_SCRIPT_MENDE_KIKAKUI
	 * @HB_SCRIPT_MODI
	 * @HB_SCRIPT_MRO
	 * @HB_SCRIPT_NABATAEAN
	 * @HB_SCRIPT_OLD_NORTH_ARABIAN
	 * @HB_SCRIPT_OLD_PERMIC
	 * @HB_SCRIPT_PAHAWH_HMONG
	 * @HB_SCRIPT_PALMYRENE
	 * @HB_SCRIPT_PAU_CIN_HAU
	 * @HB_SCRIPT_PSALTER_PAHLAVI
	 * @HB_SCRIPT_SIDDHAM
	 * @HB_SCRIPT_TIRHUTA
	 * @HB_SCRIPT_WARANG_CITI
	 * @HB_SCRIPT_AHOM
	 * @HB_SCRIPT_ANATOLIAN_HIEROGLYPHS
	 * @HB_SCRIPT_HATRAN
	 * @HB_SCRIPT_MULTANI
	 * @HB_SCRIPT_OLD_HUNGARIAN
	 * @HB_SCRIPT_SIGNWRITING
	 * @HB_SCRIPT_ADLAM
	 * @HB_SCRIPT_BHAIKSUKI
	 * @HB_SCRIPT_MARCHEN
	 * @HB_SCRIPT_OSAGE
	 * @HB_SCRIPT_TANGUT
	 * @HB_SCRIPT_NEWA
	 * @HB_SCRIPT_MASARAM_GONDI
	 * @HB_SCRIPT_NUSHU
	 * @HB_SCRIPT_SOYOMBO
	 * @HB_SCRIPT_ZANABAZAR_SQUARE
	 * @HB_SCRIPT_DOGRA
	 * @HB_SCRIPT_GUNJALA_GONDI
	 * @HB_SCRIPT_HANIFI_ROHINGYA
	 * @HB_SCRIPT_MAKASAR
	 * @HB_SCRIPT_MEDEFAIDRIN
	 * @HB_SCRIPT_OLD_SOGDIAN
	 * @HB_SCRIPT_SOGDIAN
	 * @HB_SCRIPT_ELYMAIC
	 * @HB_SCRIPT_NANDINAGARI
	 * @HB_SCRIPT_NYIAKENG_PUACHUE_HMONG
	 * @HB_SCRIPT_WANCHO
	 */
	UNKNOWN = 1517976186,
	ARABIC = 1098015074,
	ARMENIAN = 1098018158,
	BENGALI = 1113943655,
	CYRILLIC = 1132032620,
	DEVANAGARI = 1147500129,
	GEORGIAN = 1197830002,
	GREEK = 1198679403,
	GUJARATI = 1198877298,
	GURMUKHI = 1198879349,
	HANGUL = 1214344807,
	HAN = 1214344809,
	HEBREW = 1214603890,
	HIRAGANA = 1214870113,
	KANNADA = 1265525857,
	KATAKANA = 1264676449,
	LAO = 1281453935,
	LATIN = 1281455214,
	MALAYALAM = 1298954605,
	ORIYA = 1332902241,
	TAMIL = 1415671148,
	TELUGU = 1415933045,
	THAI = 1416126825,
	TIBETAN = 1416192628,
	BOPOMOFO = 1114599535,
	BRAILLE = 1114792297,
	CANADIAN_SYLLABICS = 1130458739,
	CHEROKEE = 1130915186,
	ETHIOPIC = 1165256809,
	KHMER = 1265134962,
	MONGOLIAN = 1299148391,
	MYANMAR = 1299803506,
	OGHAM = 1332175213,
	RUNIC = 1383427698,
	SINHALA = 1399418472,
	SYRIAC = 1400468067,
	THAANA = 1416126817,
	YI = 1500080489,
	DESERET = 1148416628,
	GOTHIC = 1198486632,
	OLD_ITALIC = 1232363884,
	BUHID = 1114990692,
	HANUNOO = 1214344815,
	TAGALOG = 1416064103,
	TAGBANWA = 1415669602,
	CYPRIOT = 1131442804,
	LIMBU = 1281977698,
	LINEAR_B = 1281977954,
	OSMANYA = 1332964705,
	SHAVIAN = 1399349623,
	TAI_LE = 1415670885,
	UGARITIC = 1432838514,
	BUGINESE = 1114990441,
	COPTIC = 1131376756,
	GLAGOLITIC = 1198285159,
	KHAROSHTHI = 1265131890,
	NEW_TAI_LUE = 1415670901,
	OLD_PERSIAN = 1483761007,
	SYLOTI_NAGRI = 1400466543,
	TIFINAGH = 1415999079,
	BALINESE = 1113681001,
	CUNEIFORM = 1483961720,
	NKO = 1315663727,
	PHAGS_PA = 1349017959,
	PHOENICIAN = 1349021304,
	CARIAN = 1130459753,
	CHAM = 1130914157,
	KAYAH_LI = 1264675945,
	LEPCHA = 1281716323,
	LYCIAN = 1283023721,
	LYDIAN = 1283023977,
	OL_CHIKI = 1332503403,
	REJANG = 1382706791,
	SAURASHTRA = 1398895986,
	SUNDANESE = 1400204900,
	VAI = 1449224553,
	AVESTAN = 1098281844,
	BAMUM = 1113681269,
	EGYPTIAN_HIEROGLYPHS = 1164409200,
	IMPERIAL_ARAMAIC = 1098018153,
	INSCRIPTIONAL_PAHLAVI = 1349020777,
	INSCRIPTIONAL_PARTHIAN = 1349678185,
	JAVANESE = 1247901281,
	KAITHI = 1265920105,
	LISU = 1281979253,
	MEETEI_MAYEK = 1299473769,
	OLD_SOUTH_ARABIAN = 1398895202,
	OLD_TURKIC = 1332898664,
	SAMARITAN = 1398893938,
	TAI_THAM = 1281453665,
	TAI_VIET = 1415673460,
	BATAK = 1113683051,
	BRAHMI = 1114792296,
	MANDAIC = 1298230884,
	CHAKMA = 1130457965,
	MEROITIC_CURSIVE = 1298494051,
	MEROITIC_HIEROGLYPHS = 1298494063,
	MIAO = 1349284452,
	SHARADA = 1399353956,
	SORA_SOMPENG = 1399812705,
	TAKRI = 1415670642,
	BASSA_VAH = 1113682803,
	CAUCASIAN_ALBANIAN = 1097295970,
	DUPLOYAN = 1148547180,
	ELBASAN = 1164730977,
	GRANTHA = 1198678382,
	KHOJKI = 1265135466,
	KHUDAWADI = 1399418468,
	LINEAR_A = 1281977953,
	MAHAJANI = 1298229354,
	MANICHAEAN = 1298230889,
	MENDE_KIKAKUI = 1298493028,
	MODI = 1299145833,
	MRO = 1299345263,
	NABATAEAN = 1315070324,
	OLD_NORTH_ARABIAN = 1315009122,
	OLD_PERMIC = 1348825709,
	PAHAWH_HMONG = 1215131239,
	PALMYRENE = 1348562029,
	PAU_CIN_HAU = 1348564323,
	PSALTER_PAHLAVI = 1349020784,
	SIDDHAM = 1399415908,
	TIRHUTA = 1416196712,
	WARANG_CITI = 1466004065,
	AHOM = 1097363309,
	ANATOLIAN_HIEROGLYPHS = 1215067511,
	HATRAN = 1214346354,
	MULTANI = 1299541108,
	OLD_HUNGARIAN = 1215655527,
	SIGNWRITING = 1399287415,
	ADLAM = 1097100397,
	BHAIKSUKI = 1114139507,
	MARCHEN = 1298231907,
	OSAGE = 1332963173,
	TANGUT = 1415671399,
	NEWA = 1315272545,
	MASARAM_GONDI = 1198485101,
	NUSHU = 1316186229,
	SOYOMBO = 1399814511,
	ZANABAZAR_SQUARE = 1516334690,
	DOGRA = 1148151666,
	GUNJALA_GONDI = 1198485095,
	HANIFI_ROHINGYA = 1383032935,
	MAKASAR = 1298230113,
	MEDEFAIDRIN = 1298490470,
	OLD_SOGDIAN = 1399809903,
	SOGDIAN = 1399809892,
	ELYMAIC = 1164736877,
	NANDINAGARI = 1315008100,
	NYIAKENG_PUACHUE_HMONG = 1215131248,
	WANCHO = 1466132591,
	CHORASMIAN = 1130918515,
	DIVES_AKURU = 1147756907,
	KHITAN_SMALL_SCRIPT = 1265202291,
	YEZIDI = 1499822697,
	/**
	 * #HB_TAG_NONE
	 */
	INVALID = 0,
}
alias hb_script_t script_t;

/**
 * Data type for the Canonical_Combining_Class (ccc) property
 * from the Unicode Character Database.
 *
 * <note>Note: newer versions of Unicode may add new values.
 * Client programs should be ready to handle any value in the 0..254 range
 * being returned from hb_unicode_combining_class().</note>
 */
public enum hb_unicode_combining_class_t
{
	/**
	 * Spacing and enclosing marks; also many vowel and consonant signs, even if nonspacing
	 */
	NOT_REORDERED = 0,
	/**
	 * Marks which overlay a base letter or symbol
	 */
	OVERLAY = 1,
	/**
	 * Diacritic nukta marks in Brahmi-derived scripts
	 */
	NUKTA = 7,
	/**
	 * Hiragana/Katakana voicing marks
	 */
	KANA_VOICING = 8,
	/**
	 * Viramas
	 */
	VIRAMA = 9,
	/**
	 * [Hebrew]
	 */
	CCC10 = 10,
	/**
	 * [Hebrew]
	 */
	CCC11 = 11,
	/**
	 * [Hebrew]
	 */
	CCC12 = 12,
	/**
	 * [Hebrew]
	 */
	CCC13 = 13,
	/**
	 * [Hebrew]
	 */
	CCC14 = 14,
	/**
	 * [Hebrew]
	 */
	CCC15 = 15,
	/**
	 * [Hebrew]
	 */
	CCC16 = 16,
	/**
	 * [Hebrew]
	 */
	CCC17 = 17,
	/**
	 * [Hebrew]
	 */
	CCC18 = 18,
	/**
	 * [Hebrew]
	 */
	CCC19 = 19,
	/**
	 * [Hebrew]
	 */
	CCC20 = 20,
	/**
	 * [Hebrew]
	 */
	CCC21 = 21,
	/**
	 * [Hebrew]
	 */
	CCC22 = 22,
	/**
	 * [Hebrew]
	 */
	CCC23 = 23,
	/**
	 * [Hebrew]
	 */
	CCC24 = 24,
	/**
	 * [Hebrew]
	 */
	CCC25 = 25,
	/**
	 * [Hebrew]
	 */
	CCC26 = 26,
	/**
	 * [Arabic]
	 */
	CCC27 = 27,
	/**
	 * [Arabic]
	 */
	CCC28 = 28,
	/**
	 * [Arabic]
	 */
	CCC29 = 29,
	/**
	 * [Arabic]
	 */
	CCC30 = 30,
	/**
	 * [Arabic]
	 */
	CCC31 = 31,
	/**
	 * [Arabic]
	 */
	CCC32 = 32,
	/**
	 * [Arabic]
	 */
	CCC33 = 33,
	/**
	 * [Arabic]
	 */
	CCC34 = 34,
	/**
	 * [Arabic]
	 */
	CCC35 = 35,
	/**
	 * [Syriac]
	 */
	CCC36 = 36,
	/**
	 * [Telugu]
	 */
	CCC84 = 84,
	/**
	 * [Telugu]
	 */
	CCC91 = 91,
	/**
	 * [Thai]
	 */
	CCC103 = 103,
	/**
	 * [Thai]
	 */
	CCC107 = 107,
	/**
	 * [Lao]
	 */
	CCC118 = 118,
	/**
	 * [Lao]
	 */
	CCC122 = 122,
	/**
	 * [Tibetan]
	 */
	CCC129 = 129,
	/**
	 * [Tibetan]
	 */
	CCC130 = 130,
	/**
	 * [Tibetan]
	 */
	CCC133 = 132,
	/**
	 * Marks attached at the bottom left
	 */
	ATTACHED_BELOW_LEFT = 200,
	/**
	 * Marks attached directly below
	 */
	ATTACHED_BELOW = 202,
	/**
	 * Marks attached directly above
	 */
	ATTACHED_ABOVE = 214,
	/**
	 * Marks attached at the top right
	 */
	ATTACHED_ABOVE_RIGHT = 216,
	/**
	 * Distinct marks at the bottom left
	 */
	BELOW_LEFT = 218,
	/**
	 * Distinct marks directly below
	 */
	BELOW = 220,
	/**
	 * Distinct marks at the bottom right
	 */
	BELOW_RIGHT = 222,
	/**
	 * Distinct marks to the left
	 */
	LEFT = 224,
	/**
	 * Distinct marks to the right
	 */
	RIGHT = 226,
	/**
	 * Distinct marks at the top left
	 */
	ABOVE_LEFT = 228,
	/**
	 * Distinct marks directly above
	 */
	ABOVE = 230,
	/**
	 * Distinct marks at the top right
	 */
	ABOVE_RIGHT = 232,
	/**
	 * Distinct marks subtending two bases
	 */
	DOUBLE_BELOW = 233,
	/**
	 * Distinct marks extending above two bases
	 */
	DOUBLE_ABOVE = 234,
	/**
	 * Greek iota subscript only
	 */
	IOTA_SUBSCRIPT = 240,
	/**
	 * Invalid combining class
	 */
	INVALID = 255,
}
alias hb_unicode_combining_class_t unicode_combining_class_t;

/**
 * Data type for the "General_Category" (gc) property from
 * the Unicode Character Database.
 */
public enum hb_unicode_general_category_t
{
	/**
	 * [Cc]
	 */
	CONTROL = 0,
	/**
	 * [Cf]
	 */
	FORMAT = 1,
	/**
	 * [Cn]
	 */
	UNASSIGNED = 2,
	/**
	 * [Co]
	 */
	PRIVATE_USE = 3,
	/**
	 * [Cs]
	 */
	SURROGATE = 4,
	/**
	 * [Ll]
	 */
	LOWERCASE_LETTER = 5,
	/**
	 * [Lm]
	 */
	MODIFIER_LETTER = 6,
	/**
	 * [Lo]
	 */
	OTHER_LETTER = 7,
	/**
	 * [Lt]
	 */
	TITLECASE_LETTER = 8,
	/**
	 * [Lu]
	 */
	UPPERCASE_LETTER = 9,
	/**
	 * [Mc]
	 */
	SPACING_MARK = 10,
	/**
	 * [Me]
	 */
	ENCLOSING_MARK = 11,
	/**
	 * [Mn]
	 */
	NON_SPACING_MARK = 12,
	/**
	 * [Nd]
	 */
	DECIMAL_NUMBER = 13,
	/**
	 * [Nl]
	 */
	LETTER_NUMBER = 14,
	/**
	 * [No]
	 */
	OTHER_NUMBER = 15,
	/**
	 * [Pc]
	 */
	CONNECT_PUNCTUATION = 16,
	/**
	 * [Pd]
	 */
	DASH_PUNCTUATION = 17,
	/**
	 * [Pe]
	 */
	CLOSE_PUNCTUATION = 18,
	/**
	 * [Pf]
	 */
	FINAL_PUNCTUATION = 19,
	/**
	 * [Pi]
	 */
	INITIAL_PUNCTUATION = 20,
	/**
	 * [Po]
	 */
	OTHER_PUNCTUATION = 21,
	/**
	 * [Ps]
	 */
	OPEN_PUNCTUATION = 22,
	/**
	 * [Sc]
	 */
	CURRENCY_SYMBOL = 23,
	/**
	 * [Sk]
	 */
	MODIFIER_SYMBOL = 24,
	/**
	 * [Sm]
	 */
	MATH_SYMBOL = 25,
	/**
	 * [So]
	 */
	OTHER_SYMBOL = 26,
	/**
	 * [Zl]
	 */
	LINE_SEPARATOR = 27,
	/**
	 * [Zp]
	 */
	PARAGRAPH_SEPARATOR = 28,
	/**
	 * [Zs]
	 */
	SPACE_SEPARATOR = 29,
}
alias hb_unicode_general_category_t unicode_general_category_t;

/**
 * Data type for blobs. A blob wraps a chunk of binary
 * data and facilitates its lifecycle management between
 * a client program and HarfBuzz.
 */
struct hb_blob_t;

/**
 * The main structure holding the input text and its properties before shaping,
 * and output glyphs and their information after shaping.
 */
struct hb_buffer_t;

/**
 * Data type for holding font faces.
 */
struct hb_face_t;

struct hb_feature_t
{
	/**
	 * The #hb_tag_t tag of the feature
	 */
	hb_tag_t tag;
	/**
	 * The value of the feature. 0 disables the feature, non-zero (usually
	 * 1) enables the feature.  For features implemented as lookup type 3 (like
	 * 'salt') the @value is a one based index into the alternates.
	 */
	uint value;
	/**
	 * the cluster to start applying this feature setting (inclusive).
	 */
	uint start;
	/**
	 * the cluster to end applying this feature setting (exclusive).
	 */
	uint end;
}

/**
 * Font-wide extent values, measured in font units.
 *
 * Note that typically @ascender is positive and @descender
 * negative, in coordinate systems that grow up.
 */
struct hb_font_extents_t
{
	/**
	 * The height of typographic ascenders.
	 */
	hb_position_t ascender;
	/**
	 * The depth of typographic descenders.
	 */
	hb_position_t descender;
	/**
	 * The suggested line-spacing gap.
	 */
	hb_position_t lineGap;
	hb_position_t reserved9;
	hb_position_t reserved8;
	hb_position_t reserved7;
	hb_position_t reserved6;
	hb_position_t reserved5;
	hb_position_t reserved4;
	hb_position_t reserved3;
	hb_position_t reserved2;
	hb_position_t reserved1;
}

/**
 * Data type containing a set of virtual methods used for
 * working on #hb_font_t font objects.
 *
 * HarfBuzz provides a lightweight default function for each of
 * the methods in #hb_font_funcs_t. Client programs can implement
 * their own replacements for the individual font functions, as
 * needed, and replace the default by calling the setter for a
 * method.
 */
struct hb_font_funcs_t;

struct hb_font_t;

/**
 * Glyph extent values, measured in font units.
 *
 * Note that @height is negative, in coordinate systems that grow up.
 */
struct hb_glyph_extents_t
{
	/**
	 * Distance from the x-origin to the left extremum of the glyph.
	 */
	hb_position_t xBearing;
	/**
	 * Distance from the top extremum of the glyph to the y-origin.
	 */
	hb_position_t yBearing;
	/**
	 * Distance from the left extremum of the glyph to the right extremum.
	 */
	hb_position_t width;
	/**
	 * Distance from the top extremum of the glyph to the bottom extremum.
	 */
	hb_position_t height;
}

/**
 * The #hb_glyph_info_t is the structure that holds information about the
 * glyphs and their relation to input text.
 */
struct hb_glyph_info_t
{
	/**
	 * either a Unicode code point (before shaping) or a glyph index
	 * (after shaping).
	 */
	hb_codepoint_t codepoint;
	hb_mask_t mask;
	/**
	 * the index of the character in the original text that corresponds
	 * to this #hb_glyph_info_t, or whatever the client passes to
	 * hb_buffer_add(). More than one #hb_glyph_info_t can have the same
	 * @cluster value, if they resulted from the same character (e.g. one
	 * to many glyph substitution), and when more than one character gets
	 * merged in the same glyph (e.g. many to one glyph substitution) the
	 * #hb_glyph_info_t will have the smallest cluster value of them.
	 * By default some characters are merged into the same cluster
	 * (e.g. combining marks have the same cluster as their bases)
	 * even if they are separate glyphs, hb_buffer_set_cluster_level()
	 * allow selecting more fine-grained cluster handling.
	 */
	uint cluster;
	hb_var_int_t var1;
	hb_var_int_t var2;
}

/**
 * The #hb_glyph_position_t is the structure that holds the positions of the
 * glyph in both horizontal and vertical directions. All positions in
 * #hb_glyph_position_t are relative to the current point.
 */
struct hb_glyph_position_t
{
	/**
	 * how much the line advances after drawing this glyph when setting
	 * text in horizontal direction.
	 */
	hb_position_t xAdvance;
	/**
	 * how much the line advances after drawing this glyph when setting
	 * text in vertical direction.
	 */
	hb_position_t yAdvance;
	/**
	 * how much the glyph moves on the X-axis before drawing it, this
	 * should not affect how much the line advances.
	 */
	hb_position_t xOffset;
	/**
	 * how much the glyph moves on the Y-axis before drawing it, this
	 * should not affect how much the line advances.
	 */
	hb_position_t yOffset;
	hb_var_int_t var;
}

/**
 * Data type for holding integer-to-integer hash maps.
 */
struct hb_map_t;

/**
 * Pairs of glyph and color index.
 *
 * Since: 2.1.0
 */
struct hb_ot_color_layer_t
{
	hb_codepoint_t glyph;
	uint colorIndex;
}

/**
 * Data type to hold information for a "part" component of a math-variant glyph.
 * Large variants for stretchable math glyphs (such as parentheses) can be constructed
 * on the fly from parts.
 *
 * Since: 1.3.3
 */
struct hb_ot_math_glyph_part_t
{
	/**
	 * The glyph index of the variant part
	 */
	hb_codepoint_t glyph;
	/**
	 * The length of the connector on the starting side of the variant part
	 */
	hb_position_t startConnectorLength;
	/**
	 * The length of the connector on the ending side of the variant part
	 */
	hb_position_t endConnectorLength;
	/**
	 * The total advance of the part
	 */
	hb_position_t fullAdvance;
	/**
	 * #hb_ot_math_glyph_part_flags_t flags for the part
	 */
	hb_ot_math_glyph_part_flags_t flags;
}

/**
 * Data type to hold math-variant information for a glyph.
 *
 * Since: 1.3.3
 */
struct hb_ot_math_glyph_variant_t
{
	/**
	 * The glyph index of the variant
	 */
	hb_codepoint_t glyph;
	/**
	 * The advance width of the variant
	 */
	hb_position_t advance;
}

/**
 * Structure representing a name ID in a particular language.
 *
 * Since: 2.1.0
 */
struct hb_ot_name_entry_t
{
	/**
	 * name ID
	 */
	hb_ot_name_id_t nameId;
	hb_var_int_t var;
	/**
	 * language
	 */
	hb_language_t language;
}

/**
 * Data type for holding variation-axis values.
 *
 * The minimum, default, and maximum values are in un-normalized, user scales.
 *
 * <note>Note: at present, the only flag defined for @flags is
 * #HB_OT_VAR_AXIS_FLAG_HIDDEN.</note>
 *
 * Since: 2.2.0
 */
struct hb_ot_var_axis_info_t
{
	/**
	 * Index of the axis in the variation-axis array
	 */
	uint axisIndex;
	/**
	 * The #hb_tag_t tag identifying the design variation of the axis
	 */
	hb_tag_t tag;
	/**
	 * The `name` table Name ID that provides display names for the axis
	 */
	hb_ot_name_id_t nameId;
	/**
	 * The #hb_ot_var_axis_flags_t flags for the axis
	 */
	hb_ot_var_axis_flags_t flags;
	/**
	 * The mininum value on the variation axis that the font covers
	 */
	float minValue;
	/**
	 * The position on the variation axis corresponding to the font's defaults
	 */
	float defaultValue;
	/**
	 * The maximum value on the variation axis that the font covers
	 */
	float maxValue;
	uint reserved;
}

struct hb_ot_var_axis_t
{
	hb_tag_t tag;
	hb_ot_name_id_t nameId;
	float minValue;
	float defaultValue;
	float maxValue;
}

/**
 * The structure that holds various text properties of an #hb_buffer_t. Can be
 * set and retrieved using hb_buffer_set_segment_properties() and
 * hb_buffer_get_segment_properties(), respectively.
 */
struct hb_segment_properties_t
{
	/**
	 * the #hb_direction_t of the buffer, see hb_buffer_set_direction().
	 */
	hb_direction_t direction;
	/**
	 * the #hb_script_t of the buffer, see hb_buffer_set_script().
	 */
	hb_script_t script;
	/**
	 * the #hb_language_t of the buffer, see hb_buffer_set_language().
	 */
	hb_language_t language;
	void* reserved1;
	void* reserved2;
}

/**
 * Data type for holding a set of integers. #hb_set_t's are
 * used to gather and contain glyph IDs, Unicode code
 * points, and various other collections of discrete
 * values.
 */
struct hb_set_t;

/**
 * Data type for holding a shaping plan.
 *
 * Shape plans contain information about how HarfBuzz will shape a
 * particular text segment, based on the segment's properties and the
 * capabilities in the font face in use.
 *
 * Shape plans can be queried about how shaping will perform, given a set
 * of specific input parameters (script, language, direction, features,
 * etc.).
 */
struct hb_shape_plan_t;

/**
 * Data type containing a set of virtual methods used for
 * accessing various Unicode character properties.
 *
 * HarfBuzz provides a default function for each of the
 * methods in #hb_unicode_funcs_t. Client programs can implement
 * their own replacements for the individual Unicode functions, as
 * needed, and replace the default by calling the setter for a
 * method.
 */
struct hb_unicode_funcs_t;

/**
 * Data structure for holding user-data keys.
 */
struct hb_user_data_key_t
{
	char unused;
}

struct hb_var_int_t
{
	union
	{
		uint u32;
		int i32;
		ushort[2] u16;
		short[2] i16;
		ubyte[4] u8;
		byte[4] i8;
	}
}

struct hb_variation_t
{
	/**
	 * The #hb_tag_t tag of the variation-axis name
	 */
	hb_tag_t tag;
	/**
	 * The value of the variation axis
	 */
	float value;
}

/** */
public alias extern(C) hb_bool_t function(hb_buffer_t* buffer, hb_font_t* font, const(char)* message, void* userData) hb_buffer_message_func_t;

/** */
public alias extern(C) void function(void* userData) hb_destroy_func_t;

/** */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_font_extents_t* extents, void* userData) hb_font_get_font_extents_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the advance for a specified glyph. The
 * method must return an #hb_position_t.
 */
public alias extern(C) hb_position_t function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, void* userData) hb_font_get_glyph_advance_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the advances for a sequence of glyphs.
 */
public alias extern(C) void function(hb_font_t* font, void* fontData, uint count, hb_codepoint_t* firstGlyph, uint glyphStride, hb_position_t* firstAdvance, uint advanceStride, void* userData) hb_font_get_glyph_advances_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the (X,Y) coordinates (in font units) for a
 * specified contour point in a glyph. Each coordinate must be returned as
 * an #hb_position_t output parameter.
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, uint pointIndex, hb_position_t* x, hb_position_t* y, void* userData) hb_font_get_glyph_contour_point_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the extents for a specified glyph. Extents must be
 * returned in an #hb_glyph_extents output parameter.
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, hb_glyph_extents_t* extents, void* userData) hb_font_get_glyph_extents_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the glyph ID that corresponds to a glyph-name
 * string.
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, const(char)* name, int len, hb_codepoint_t* glyph, void* userData) hb_font_get_glyph_from_name_func_t;

/** */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t unicode, hb_codepoint_t variationSelector, hb_codepoint_t* glyph, void* userData) hb_font_get_glyph_func_t;

/** */
public alias extern(C) hb_position_t function(hb_font_t* font, void* fontData, hb_codepoint_t firstGlyph, hb_codepoint_t secondGlyph, void* userData) hb_font_get_glyph_kerning_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the glyph name that corresponds to a
 * glyph ID. The name should be returned in a string output parameter.
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, char* name, uint size, void* userData) hb_font_get_glyph_name_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the (X,Y) coordinates (in font units) of the
 * origin for a glyph. Each coordinate must be returned in an #hb_position_t
 * output parameter.
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, hb_position_t* x, hb_position_t* y, void* userData) hb_font_get_glyph_origin_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the nominal glyph ID for a specified Unicode code
 * point. Glyph IDs must be returned in a #hb_codepoint_t output parameter.
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t unicode, hb_codepoint_t* glyph, void* userData) hb_font_get_nominal_glyph_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the nominal glyph IDs for a sequence of
 * Unicode code points. Glyph IDs must be returned in a #hb_codepoint_t
 * output parameter.
 */
public alias extern(C) uint function(hb_font_t* font, void* fontData, uint count, hb_codepoint_t* firstUnicode, uint unicodeStride, hb_codepoint_t* firstGlyph, uint glyphStride, void* userData) hb_font_get_nominal_glyphs_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the glyph ID for a specified Unicode code point
 * followed by a specified Variation Selector code point. Glyph IDs must be
 * returned in a #hb_codepoint_t output parameter.
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t unicode, hb_codepoint_t variationSelector, hb_codepoint_t* glyph, void* userData) hb_font_get_variation_glyph_func_t;

/** */
public alias extern(C) hb_blob_t* function(hb_face_t* face, hb_tag_t tag, void* userData) hb_reference_table_func_t;

/**
 * A virtual method for the #hb_unicode_funcs_t structure.
 *
 * This method should retrieve the Canonical Combining Class (ccc)
 * property for a specified Unicode code point.
 *
 * Params:
 *     ufuncs = A Unicode-functions structure
 *     unicode = The code point to query
 *     userData = User data pointer passed by the caller
 *
 * Returns: The #hb_unicode_combining_class_t of @unicode
 */
public alias extern(C) hb_unicode_combining_class_t function(hb_unicode_funcs_t* ufuncs, hb_codepoint_t unicode, void* userData) hb_unicode_combining_class_func_t;

/**
 * A virtual method for the #hb_unicode_funcs_t structure.
 *
 * This method should compose a sequence of two input Unicode code
 * points by canonical equivalence, returning the composed code
 * point in a #hb_codepoint_t output parameter (if successful).
 * The method must return an #hb_bool_t indicating the success
 * of the composition.
 *
 * Params:
 *     ufuncs = A Unicode-functions structure
 *     a = The first code point to compose
 *     b = The second code point to compose
 *     ab = The composed code point
 *     userData = user data pointer passed by the caller
 *
 * Returns: True is @a,@b composed, false otherwise
 */
public alias extern(C) hb_bool_t function(hb_unicode_funcs_t* ufuncs, hb_codepoint_t a, hb_codepoint_t b, hb_codepoint_t* ab, void* userData) hb_unicode_compose_func_t;

/**
 * Fully decompose @u to its Unicode compatibility decomposition. The codepoints of the decomposition will be written to @decomposed.
 * The complete length of the decomposition will be returned.
 *
 * If @u has no compatibility decomposition, zero should be returned.
 *
 * The Unicode standard guarantees that a buffer of length %HB_UNICODE_MAX_DECOMPOSITION_LEN codepoints will always be sufficient for any
 * compatibility decomposition plus an terminating value of 0.  Consequently, @decompose must be allocated by the caller to be at least this length.  Implementations
 * of this function type must ensure that they do not write past the provided array.
 *
 * Params:
 *     ufuncs = a Unicode function structure
 *     u = codepoint to decompose
 *     decomposed = address of codepoint array (of length %HB_UNICODE_MAX_DECOMPOSITION_LEN) to write decomposition into
 *     userData = user data pointer as passed to hb_unicode_funcs_set_decompose_compatibility_func()
 *
 * Returns: number of codepoints in the full compatibility decomposition of @u, or 0 if no decomposition available.
 */
public alias extern(C) uint function(hb_unicode_funcs_t* ufuncs, hb_codepoint_t u, hb_codepoint_t* decomposed, void* userData) hb_unicode_decompose_compatibility_func_t;

/**
 * A virtual method for the #hb_unicode_funcs_t structure.
 *
 * This method should decompose an input Unicode code point,
 * returning the two decomposed code points in #hb_codepoint_t
 * output parameters (if successful). The method must return an
 * #hb_bool_t indicating the success of the composition.
 *
 * Params:
 *     ufuncs = A Unicode-functions structure
 *     ab = The code point to decompose
 *     a = The first decomposed code point
 *     b = The second decomposed code point
 *     userData = user data pointer passed by the caller
 *
 * Returns: True if @ab decomposed, false otherwise
 */
public alias extern(C) hb_bool_t function(hb_unicode_funcs_t* ufuncs, hb_codepoint_t ab, hb_codepoint_t* a, hb_codepoint_t* b, void* userData) hb_unicode_decompose_func_t;

/** */
public alias extern(C) uint function(hb_unicode_funcs_t* ufuncs, hb_codepoint_t unicode, void* userData) hb_unicode_eastasian_width_func_t;

/**
 * A virtual method for the #hb_unicode_funcs_t structure.
 *
 * This method should retrieve the General Category property for
 * a specified Unicode code point.
 *
 * Params:
 *     ufuncs = A Unicode-functions structure
 *     unicode = The code point to query
 *     userData = User data pointer passed by the caller
 *
 * Returns: The #hb_unicode_general_category_t of @unicode
 */
public alias extern(C) hb_unicode_general_category_t function(hb_unicode_funcs_t* ufuncs, hb_codepoint_t unicode, void* userData) hb_unicode_general_category_func_t;

/**
 * A virtual method for the #hb_unicode_funcs_t structure.
 *
 * This method should retrieve the Bi-Directional Mirroring Glyph
 * code point for a specified Unicode code point.
 *
 * <note>Note: If a code point does not have a specified
 * Bi-Directional Mirroring Glyph defined, the method should
 * return the original code point.</note>
 *
 * Params:
 *     ufuncs = A Unicode-functions structure
 *     unicode = The code point to query
 *     userData = User data pointer passed by the caller
 *
 * Returns: The #hb_codepoint_t of the Mirroring Glyph for @unicode
 */
public alias extern(C) hb_codepoint_t function(hb_unicode_funcs_t* ufuncs, hb_codepoint_t unicode, void* userData) hb_unicode_mirroring_func_t;

/**
 * A virtual method for the #hb_unicode_funcs_t structure.
 *
 * This method should retrieve the Script property for a
 * specified Unicode code point.
 *
 * Params:
 *     ufuncs = A Unicode-functions structure
 *     unicode = The code point to query
 *     userData = User data pointer passed by the caller
 *
 * Returns: The #hb_script_t of @unicode
 */
public alias extern(C) hb_script_t function(hb_unicode_funcs_t* ufuncs, hb_codepoint_t unicode, void* userData) hb_unicode_script_func_t;

/**
 * Used when getting or setting AAT feature selectors. Indicates that
 * there is no selector index corresponding to the selector of interest.
 */
enum AAT_LAYOUT_NO_SELECTOR_INDEX = 65535;
alias HB_AAT_LAYOUT_NO_SELECTOR_INDEX = AAT_LAYOUT_NO_SELECTOR_INDEX;

/**
 * The default code point for replacing invalid characters in a given encoding.
 * Set to U+FFFD REPLACEMENT CHARACTER.
 */
enum BUFFER_REPLACEMENT_CODEPOINT_DEFAULT = 65533;
alias HB_BUFFER_REPLACEMENT_CODEPOINT_DEFAULT = BUFFER_REPLACEMENT_CODEPOINT_DEFAULT;

enum FEATURE_GLOBAL_START = 0;
alias HB_FEATURE_GLOBAL_START = FEATURE_GLOBAL_START;

enum LANGUAGE_INVALID = 0;
alias HB_LANGUAGE_INVALID = LANGUAGE_INVALID;

enum MAP_VALUE_INVALID = 4294967295;
alias HB_MAP_VALUE_INVALID = MAP_VALUE_INVALID;

enum OT_LAYOUT_DEFAULT_LANGUAGE_INDEX = 65535;
alias HB_OT_LAYOUT_DEFAULT_LANGUAGE_INDEX = OT_LAYOUT_DEFAULT_LANGUAGE_INDEX;

enum OT_LAYOUT_NO_FEATURE_INDEX = 65535;
alias HB_OT_LAYOUT_NO_FEATURE_INDEX = OT_LAYOUT_NO_FEATURE_INDEX;

enum OT_LAYOUT_NO_SCRIPT_INDEX = 65535;
alias HB_OT_LAYOUT_NO_SCRIPT_INDEX = OT_LAYOUT_NO_SCRIPT_INDEX;

enum OT_LAYOUT_NO_VARIATIONS_INDEX = 4294967295;
alias HB_OT_LAYOUT_NO_VARIATIONS_INDEX = OT_LAYOUT_NO_VARIATIONS_INDEX;

enum OT_MAX_TAGS_PER_LANGUAGE = 3;
alias HB_OT_MAX_TAGS_PER_LANGUAGE = OT_MAX_TAGS_PER_LANGUAGE;

enum OT_MAX_TAGS_PER_SCRIPT = 3;
alias HB_OT_MAX_TAGS_PER_SCRIPT = OT_MAX_TAGS_PER_SCRIPT;

enum OT_VAR_NO_AXIS_INDEX = 4294967295;
alias HB_OT_VAR_NO_AXIS_INDEX = OT_VAR_NO_AXIS_INDEX;

enum SET_VALUE_INVALID = 4294967295;
alias HB_SET_VALUE_INVALID = SET_VALUE_INVALID;

enum UNICODE_MAX = 1114111;
alias HB_UNICODE_MAX = UNICODE_MAX;

/**
 * See Unicode 6.1 for details on the maximum decomposition length.
 */
enum UNICODE_MAX_DECOMPOSITION_LEN = 19;
alias HB_UNICODE_MAX_DECOMPOSITION_LEN = UNICODE_MAX_DECOMPOSITION_LEN;

enum VERSION_MAJOR = 2;
alias HB_VERSION_MAJOR = VERSION_MAJOR;

enum VERSION_MICRO = 4;
alias HB_VERSION_MICRO = VERSION_MICRO;

enum VERSION_MINOR = 7;
alias HB_VERSION_MINOR = VERSION_MINOR;

enum VERSION_STRING = "2.7.4";
alias HB_VERSION_STRING = VERSION_STRING;
