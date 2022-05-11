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
 * This method should retrieve the extents for a font, for horizontal-direction
 * text segments. Extents must be returned in an #hb_glyph_extents output
 * parameter.
 */
public alias hb_font_get_font_extents_func_t hb_font_get_font_h_extents_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the extents for a font, for vertical-direction
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

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the kerning-adjustment value for a glyph-pair in
 * the specified font, for horizontal text segments.
 */
public alias hb_font_get_glyph_kerning_func_t hb_font_get_glyph_h_kerning_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the (X,Y) coordinates (in font units) of the
 * origin for a glyph, for horizontal-direction text segments. Each
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

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the kerning-adjustment value for a glyph-pair in
 * the specified font, for vertical text segments.
 */
public alias hb_font_get_glyph_kerning_func_t hb_font_get_glyph_v_kerning_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the (X,Y) coordinates (in font units) of the
 * origin for a glyph, for vertical-direction text segments. Each coordinate
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
 *
 * For more information on these fields, see the
 * [OpenType spec](https://docs.microsoft.com/en-us/typography/opentype/spec/name#name-ids).
 */
public alias uint hb_ot_name_id_t;

/**
 * Data type for holding a single coordinate value.
 * Contour points and other multi-dimensional data are
 * stored as tuples of #hb_position_t's.
 */
public alias int hb_position_t;

/**
 * Data type for tag identifiers. Tags are four
 * byte integers, each byte representing a character.
 *
 * Tags are used to identify tables, design-variation axes,
 * scripts, languages, font features, and baselines with
 * human-readable names.
 */
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
 * The possible feature types defined for AAT shaping, from Apple [Font Feature Registry](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html).
 *
 * Since: 2.2.0
 */
public enum hb_aat_layout_feature_type_t
{
	/**
	 * Initial, unset feature type
	 */
	INVALID = 65535,
	/**
	 * [All Typographic Features](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type0)
	 */
	ALL_TYPOGRAPHIC = 0,
	/**
	 * [Ligatures](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type1)
	 */
	LIGATURES = 1,
	/**
	 * [Cursive Connection](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type2)
	 */
	CURISVE_CONNECTION = 2,
	/**
	 * [Letter Case](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type3)
	 */
	LETTER_CASE = 3,
	/**
	 * [Vertical Substitution](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type4)
	 */
	VERTICAL_SUBSTITUTION = 4,
	/**
	 * [Linguistic Rearrangement](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type5)
	 */
	LINGUISTIC_REARRANGEMENT = 5,
	/**
	 * [Number Spacing](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type6)
	 */
	NUMBER_SPACING = 6,
	/**
	 * [Smart Swash](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type8)
	 */
	SMART_SWASH_TYPE = 8,
	/**
	 * [Diacritics](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type9)
	 */
	DIACRITICS_TYPE = 9,
	/**
	 * [Vertical Position](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type10)
	 */
	VERTICAL_POSITION = 10,
	/**
	 * [Fractions](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type11)
	 */
	FRACTIONS = 11,
	/**
	 * [Overlapping Characters](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type13)
	 */
	OVERLAPPING_CHARACTERS_TYPE = 13,
	/**
	 * [Typographic Extras](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type14)
	 */
	TYPOGRAPHIC_EXTRAS = 14,
	/**
	 * [Mathematical Extras](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type15)
	 */
	MATHEMATICAL_EXTRAS = 15,
	/**
	 * [Ornament Sets](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type16)
	 */
	ORNAMENT_SETS_TYPE = 16,
	/**
	 * [Character Alternatives](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type17)
	 */
	CHARACTER_ALTERNATIVES = 17,
	/**
	 * [Design Complexity](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type18)
	 */
	DESIGN_COMPLEXITY_TYPE = 18,
	/**
	 * [Style Options](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type19)
	 */
	STYLE_OPTIONS = 19,
	/**
	 * [Character Shape](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type20)
	 */
	CHARACTER_SHAPE = 20,
	/**
	 * [Number Case](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type21)
	 */
	NUMBER_CASE = 21,
	/**
	 * [Text Spacing](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type22)
	 */
	TEXT_SPACING = 22,
	/**
	 * [Transliteration](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type23)
	 */
	TRANSLITERATION = 23,
	/**
	 * [Annotation](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type24)
	 */
	ANNOTATION_TYPE = 24,
	/**
	 * [Kana Spacing](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type25)
	 */
	KANA_SPACING_TYPE = 25,
	/**
	 * [Ideographic Spacing](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type26)
	 */
	IDEOGRAPHIC_SPACING_TYPE = 26,
	/**
	 * [Unicode Decomposition](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type27)
	 */
	UNICODE_DECOMPOSITION_TYPE = 27,
	/**
	 * [Ruby Kana](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type28)
	 */
	RUBY_KANA = 28,
	/**
	 * [CJK Symbol Alternatives](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type29)
	 */
	CJK_SYMBOL_ALTERNATIVES_TYPE = 29,
	/**
	 * [Ideographic Alternatives](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type30)
	 */
	IDEOGRAPHIC_ALTERNATIVES_TYPE = 30,
	/**
	 * [CJK Vertical Roman Placement](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type31)
	 */
	CJK_VERTICAL_ROMAN_PLACEMENT_TYPE = 31,
	/**
	 * [Italic CJK Roman](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type32)
	 */
	ITALIC_CJK_ROMAN = 32,
	/**
	 * [Case Sensitive Layout](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type33)
	 */
	CASE_SENSITIVE_LAYOUT = 33,
	/**
	 * [Alternate Kana](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type34)
	 */
	ALTERNATE_KANA = 34,
	/**
	 * [Stylistic Alternatives](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type35)
	 */
	STYLISTIC_ALTERNATIVES = 35,
	/**
	 * [Contextual Alternatives](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type36)
	 */
	CONTEXTUAL_ALTERNATIVES = 36,
	/**
	 * [Lower Case](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type37)
	 */
	LOWER_CASE = 37,
	/**
	 * [Upper Case](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type38)
	 */
	UPPER_CASE = 38,
	/**
	 * [Language Tag](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type39)
	 */
	LANGUAGE_TAG_TYPE = 39,
	/**
	 * [CJK Roman Spacing](https://developer.apple.com/fonts/TrueType-Reference-Manual/RM09/AppendixF.html#Type103)
	 */
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

/**
 * The type of #hb_buffer_t contents.
 */
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

/**
 * Flags from comparing two #hb_buffer_t's.
 *
 * Buffer with different #hb_buffer_content_type_t cannot be meaningfully
 * compared in any further detail.
 *
 * For buffers with differing length, the per-glyph comparison is not
 * attempted, though we do still scan reference buffer for dotted circle and
 * `.notdef` glyphs.
 *
 * If the buffers have the same length, we compare them glyph-by-glyph and
 * report which aspect(s) of the glyph info/position are different.
 *
 * Since: 1.5.0
 */
public enum hb_buffer_diff_flags_t
{
	/**
	 * equal buffers.
	 */
	EQUAL = 0,
	/**
	 * buffers with different
	 * #hb_buffer_content_type_t.
	 */
	CONTENT_TYPE_MISMATCH = 1,
	/**
	 * buffers with differing length.
	 */
	LENGTH_MISMATCH = 2,
	/**
	 * `.notdef` glyph is present in the
	 * reference buffer.
	 */
	NOTDEF_PRESENT = 4,
	/**
	 * dotted circle glyph is present
	 * in the reference buffer.
	 */
	DOTTED_CIRCLE_PRESENT = 8,
	/**
	 * difference in #hb_glyph_info_t.codepoint
	 */
	CODEPOINT_MISMATCH = 16,
	/**
	 * difference in #hb_glyph_info_t.cluster
	 */
	CLUSTER_MISMATCH = 32,
	/**
	 * difference in #hb_glyph_flags_t.
	 */
	GLYPH_FLAGS_MISMATCH = 64,
	/**
	 * difference in #hb_glyph_position_t.
	 */
	POSITION_MISMATCH = 128,
}
alias hb_buffer_diff_flags_t buffer_diff_flags_t;

/**
 * Flags for #hb_buffer_t.
 *
 * Since: 0.9.20
 */
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
	 * character sequences (such at <0905 093E>). Since: 2.4.0
	 */
	DO_NOT_INSERT_DOTTED_CIRCLE = 16,
	/**
	 * flag indicating that the hb_shape() call and its variants
	 * should perform various verification processes on the results
	 * of the shaping operation on the buffer.  If the verification
	 * fails, then either a buffer message is sent, if a message
	 * handler is installed on the buffer, or a message is written
	 * to standard error.  In either case, the shaping result might
	 * be modified to show the failed output. Since: 3.4.0
	 */
	VERIFY = 32,
	/**
	 * flag indicating that the @HB_GLYPH_FLAG_UNSAFE_TO_CONCAT
	 * glyph-flag should be produced by the shaper. By default
	 * it will not be produced since it incurs a cost. Since: 4.0.0
	 */
	PRODUCE_UNSAFE_TO_CONCAT = 64,
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

/**
 * Flags for #hb_glyph_info_t.
 *
 * Since: 1.5.0
 */
public enum hb_glyph_flags_t
{
	/**
	 * Indicates that if input text is broken at the
	 * beginning of the cluster this glyph is part of,
	 * then both sides need to be re-shaped, as the
	 * result might be different.
	 * On the flip side, it means that when this
	 * flag is not present, then it is safe to break
	 * the glyph-run at the beginning of this
	 * cluster, and the two sides will represent the
	 * exact same result one would get if breaking
	 * input text at the beginning of this cluster
	 * and shaping the two sides separately.
	 * This can be used to optimize paragraph
	 * layout, by avoiding re-shaping of each line
	 * after line-breaking.
	 */
	UNSAFE_TO_BREAK = 1,
	/**
	 * Indicates that if input text is changed on one
	 * side of the beginning of the cluster this glyph
	 * is part of, then the shaping results for the
	 * other side might change.
	 * Note that the absence of this flag will NOT by
	 * itself mean that it IS safe to concat text.
	 * Only two pieces of text both of which clear of
	 * this flag can be concatenated safely.
	 * This can be used to optimize paragraph
	 * layout, by avoiding re-shaping of each line
	 * after line-breaking, by limiting the
	 * reshaping to a small piece around the
	 * breaking positin only, even if the breaking
	 * position carries the
	 * #HB_GLYPH_FLAG_UNSAFE_TO_BREAK or when
	 * hyphenation or other text transformation
	 * happens at line-break position, in the following
	 * way:
	 * 1. Iterate back from the line-break position
	 * until the first cluster start position that is
	 * NOT unsafe-to-concat, 2. shape the segment from
	 * there till the end of line, 3. check whether the
	 * resulting glyph-run also is clear of the
	 * unsafe-to-concat at its start-of-text position;
	 * if it is, just splice it into place and the line
	 * is shaped; If not, move on to a position further
	 * back that is clear of unsafe-to-concat and retry
	 * from there, and repeat.
	 * At the start of next line a similar algorithm can
	 * be implemented. That is: 1. Iterate forward from
	 * the line-break position until the first cluster
	 * start position that is NOT unsafe-to-concat, 2.
	 * shape the segment from beginning of the line to
	 * that position, 3. check whether the resulting
	 * glyph-run also is clear of the unsafe-to-concat
	 * at its end-of-text position; if it is, just splice
	 * it into place and the beginning is shaped; If not,
	 * move on to a position further forward that is clear
	 * of unsafe-to-concat and retry up to there, and repeat.
	 * A slight complication will arise in the
	 * implementation of the algorithm above,
	 * because while our buffer API has a way to
	 * return flags for position corresponding to
	 * start-of-text, there is currently no position
	 * corresponding to end-of-text.  This limitation
	 * can be alleviated by shaping more text than needed
	 * and looking for unsafe-to-concat flag within text
	 * clusters.
	 * The #HB_GLYPH_FLAG_UNSAFE_TO_BREAK flag will
	 * always imply this flag.
	 * To use this flag, you must enable the buffer flag
	 * @HB_BUFFER_FLAG_PRODUCE_UNSAFE_TO_CONCAT during
	 * shaping, otherwise the buffer flag will not be
	 * reliably produced.
	 * Since: 4.0.0
	 */
	UNSAFE_TO_CONCAT = 2,
	/**
	 * All the currently defined flags.
	 */
	DEFINED = 3,
}
alias hb_glyph_flags_t glyph_flags_t;

/**
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
	/**
	 * HarfBuzz immediately makes a copy of the data.
	 */
	DUPLICATE = 0,
	/**
	 * HarfBuzz client will never modify the data,
	 * and HarfBuzz will never modify the data.
	 */
	READONLY = 1,
	/**
	 * HarfBuzz client made a copy of the data solely
	 * for HarfBuzz, so HarfBuzz may modify the data.
	 */
	WRITABLE = 2,
	/**
	 * See above
	 */
	READONLY_MAY_MAKE_WRITABLE = 3,
}
alias hb_memory_mode_t memory_mode_t;

/**
 * Flags that describe the properties of color palette.
 *
 * Since: 2.1.0
 */
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
 * Baseline tags from [Baseline Tags](https://docs.microsoft.com/en-us/typography/opentype/spec/baselinetags) registry.
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
	 * The center of the ideographic character face. Since: 4.0.0
	 */
	IDEO_FACE_CENTRAL = 1231251043,
	/**
	 * Ideographic em-box bottom or left edge,
	 * if the direction is horizontal or vertical, respectively.
	 */
	IDEO_EMBOX_BOTTOM_OR_LEFT = 1768187247,
	/**
	 * Ideographic em-box top or right edge baseline,
	 */
	IDEO_EMBOX_TOP_OR_RIGHT = 1768191088,
	/**
	 * The center of the ideographic em-box. Since: 4.0.0
	 * if the direction is horizontal or vertical, respectively.
	 */
	IDEO_EMBOX_CENTRAL = 1231315813,
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
 * The 'MATH' table constants, refer to
 * [OpenType documentation](https://docs.microsoft.com/en-us/typography/opentype/spec/math#mathconstants-table)
 * For more explanations.
 *
 * Since: 1.3.3
 */
public enum hb_ot_math_constant_t
{
	/**
	 * scriptPercentScaleDown
	 */
	SCRIPT_PERCENT_SCALE_DOWN = 0,
	/**
	 * scriptScriptPercentScaleDown
	 */
	SCRIPT_SCRIPT_PERCENT_SCALE_DOWN = 1,
	/**
	 * delimitedSubFormulaMinHeight
	 */
	DELIMITED_SUB_FORMULA_MIN_HEIGHT = 2,
	/**
	 * displayOperatorMinHeight
	 */
	DISPLAY_OPERATOR_MIN_HEIGHT = 3,
	/**
	 * mathLeading
	 */
	MATH_LEADING = 4,
	/**
	 * axisHeight
	 */
	AXIS_HEIGHT = 5,
	/**
	 * accentBaseHeight
	 */
	ACCENT_BASE_HEIGHT = 6,
	/**
	 * flattenedAccentBaseHeight
	 */
	FLATTENED_ACCENT_BASE_HEIGHT = 7,
	/**
	 * subscriptShiftDown
	 */
	SUBSCRIPT_SHIFT_DOWN = 8,
	/**
	 * subscriptTopMax
	 */
	SUBSCRIPT_TOP_MAX = 9,
	/**
	 * subscriptBaselineDropMin
	 */
	SUBSCRIPT_BASELINE_DROP_MIN = 10,
	/**
	 * superscriptShiftUp
	 */
	SUPERSCRIPT_SHIFT_UP = 11,
	/**
	 * superscriptShiftUpCramped
	 */
	SUPERSCRIPT_SHIFT_UP_CRAMPED = 12,
	/**
	 * superscriptBottomMin
	 */
	SUPERSCRIPT_BOTTOM_MIN = 13,
	/**
	 * superscriptBaselineDropMax
	 */
	SUPERSCRIPT_BASELINE_DROP_MAX = 14,
	/**
	 * subSuperscriptGapMin
	 */
	SUB_SUPERSCRIPT_GAP_MIN = 15,
	/**
	 * superscriptBottomMaxWithSubscript
	 */
	SUPERSCRIPT_BOTTOM_MAX_WITH_SUBSCRIPT = 16,
	/**
	 * spaceAfterScript
	 */
	SPACE_AFTER_SCRIPT = 17,
	/**
	 * upperLimitGapMin
	 */
	UPPER_LIMIT_GAP_MIN = 18,
	/**
	 * upperLimitBaselineRiseMin
	 */
	UPPER_LIMIT_BASELINE_RISE_MIN = 19,
	/**
	 * lowerLimitGapMin
	 */
	LOWER_LIMIT_GAP_MIN = 20,
	/**
	 * lowerLimitBaselineDropMin
	 */
	LOWER_LIMIT_BASELINE_DROP_MIN = 21,
	/**
	 * stackTopShiftUp
	 */
	STACK_TOP_SHIFT_UP = 22,
	/**
	 * stackTopDisplayStyleShiftUp
	 */
	STACK_TOP_DISPLAY_STYLE_SHIFT_UP = 23,
	/**
	 * stackBottomShiftDown
	 */
	STACK_BOTTOM_SHIFT_DOWN = 24,
	/**
	 * stackBottomDisplayStyleShiftDown
	 */
	STACK_BOTTOM_DISPLAY_STYLE_SHIFT_DOWN = 25,
	/**
	 * stackGapMin
	 */
	STACK_GAP_MIN = 26,
	/**
	 * stackDisplayStyleGapMin
	 */
	STACK_DISPLAY_STYLE_GAP_MIN = 27,
	/**
	 * stretchStackTopShiftUp
	 */
	STRETCH_STACK_TOP_SHIFT_UP = 28,
	/**
	 * stretchStackBottomShiftDown
	 */
	STRETCH_STACK_BOTTOM_SHIFT_DOWN = 29,
	/**
	 * stretchStackGapAboveMin
	 */
	STRETCH_STACK_GAP_ABOVE_MIN = 30,
	/**
	 * stretchStackGapBelowMin
	 */
	STRETCH_STACK_GAP_BELOW_MIN = 31,
	/**
	 * fractionNumeratorShiftUp
	 */
	FRACTION_NUMERATOR_SHIFT_UP = 32,
	/**
	 * fractionNumeratorDisplayStyleShiftUp
	 */
	FRACTION_NUMERATOR_DISPLAY_STYLE_SHIFT_UP = 33,
	/**
	 * fractionDenominatorShiftDown
	 */
	FRACTION_DENOMINATOR_SHIFT_DOWN = 34,
	/**
	 * fractionDenominatorDisplayStyleShiftDown
	 */
	FRACTION_DENOMINATOR_DISPLAY_STYLE_SHIFT_DOWN = 35,
	/**
	 * fractionNumeratorGapMin
	 */
	FRACTION_NUMERATOR_GAP_MIN = 36,
	/**
	 * fractionNumDisplayStyleGapMin
	 */
	FRACTION_NUM_DISPLAY_STYLE_GAP_MIN = 37,
	/**
	 * fractionRuleThickness
	 */
	FRACTION_RULE_THICKNESS = 38,
	/**
	 * fractionDenominatorGapMin
	 */
	FRACTION_DENOMINATOR_GAP_MIN = 39,
	/**
	 * fractionDenomDisplayStyleGapMin
	 */
	FRACTION_DENOM_DISPLAY_STYLE_GAP_MIN = 40,
	/**
	 * skewedFractionHorizontalGap
	 */
	SKEWED_FRACTION_HORIZONTAL_GAP = 41,
	/**
	 * skewedFractionVerticalGap
	 */
	SKEWED_FRACTION_VERTICAL_GAP = 42,
	/**
	 * overbarVerticalGap
	 */
	OVERBAR_VERTICAL_GAP = 43,
	/**
	 * overbarRuleThickness
	 */
	OVERBAR_RULE_THICKNESS = 44,
	/**
	 * overbarExtraAscender
	 */
	OVERBAR_EXTRA_ASCENDER = 45,
	/**
	 * underbarVerticalGap
	 */
	UNDERBAR_VERTICAL_GAP = 46,
	/**
	 * underbarRuleThickness
	 */
	UNDERBAR_RULE_THICKNESS = 47,
	/**
	 * underbarExtraDescender
	 */
	UNDERBAR_EXTRA_DESCENDER = 48,
	/**
	 * radicalVerticalGap
	 */
	RADICAL_VERTICAL_GAP = 49,
	/**
	 * radicalDisplayStyleVerticalGap
	 */
	RADICAL_DISPLAY_STYLE_VERTICAL_GAP = 50,
	/**
	 * radicalRuleThickness
	 */
	RADICAL_RULE_THICKNESS = 51,
	/**
	 * radicalExtraAscender
	 */
	RADICAL_EXTRA_ASCENDER = 52,
	/**
	 * radicalKernBeforeDegree
	 */
	RADICAL_KERN_BEFORE_DEGREE = 53,
	/**
	 * radicalKernAfterDegree
	 */
	RADICAL_KERN_AFTER_DEGREE = 54,
	/**
	 * radicalDegreeBottomRaisePercent
	 */
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
	/**
	 * This is an extender glyph part that
	 * can be repeated to reach the desired length.
	 */
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
	/**
	 * The top right corner of the glyph.
	 */
	TOP_RIGHT = 0,
	/**
	 * The top left corner of the glyph.
	 */
	TOP_LEFT = 1,
	/**
	 * The bottom right corner of the glyph.
	 */
	BOTTOM_RIGHT = 2,
	/**
	 * The bottom left corner of the glyph.
	 */
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
 * Metric tags corresponding to [MVAR Value
 * Tags](https://docs.microsoft.com/en-us/typography/opentype/spec/mvar#value-tags)
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

/**
 * Flags for #hb_ot_var_axis_info_t.
 *
 * Since: 2.2.0
 */
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
	 * `Zyyy`
	 */
	COMMON = 1517910393,
	/**
	 * `Zinh`
	 */
	INHERITED = 1516858984,
	/**
	 * `Zzzz`
	 */
	UNKNOWN = 1517976186,
	/**
	 * `Arab`
	 */
	ARABIC = 1098015074,
	/**
	 * `Armn`
	 */
	ARMENIAN = 1098018158,
	/**
	 * `Beng`
	 */
	BENGALI = 1113943655,
	/**
	 * `Cyrl`
	 */
	CYRILLIC = 1132032620,
	/**
	 * `Deva`
	 */
	DEVANAGARI = 1147500129,
	/**
	 * `Geor`
	 */
	GEORGIAN = 1197830002,
	/**
	 * `Grek`
	 */
	GREEK = 1198679403,
	/**
	 * `Gujr`
	 */
	GUJARATI = 1198877298,
	/**
	 * `Guru`
	 */
	GURMUKHI = 1198879349,
	/**
	 * `Hang`
	 */
	HANGUL = 1214344807,
	/**
	 * `Hani`
	 */
	HAN = 1214344809,
	/**
	 * `Hebr`
	 */
	HEBREW = 1214603890,
	/**
	 * `Hira`
	 */
	HIRAGANA = 1214870113,
	/**
	 * `Knda`
	 */
	KANNADA = 1265525857,
	/**
	 * `Kana`
	 */
	KATAKANA = 1264676449,
	/**
	 * `Laoo`
	 */
	LAO = 1281453935,
	/**
	 * `Latn`
	 */
	LATIN = 1281455214,
	/**
	 * `Mlym`
	 */
	MALAYALAM = 1298954605,
	/**
	 * `Orya`
	 */
	ORIYA = 1332902241,
	/**
	 * `Taml`
	 */
	TAMIL = 1415671148,
	/**
	 * `Telu`
	 */
	TELUGU = 1415933045,
	/**
	 * `Thai`
	 */
	THAI = 1416126825,
	/**
	 * `Tibt`
	 */
	TIBETAN = 1416192628,
	/**
	 * `Bopo`
	 */
	BOPOMOFO = 1114599535,
	/**
	 * `Brai`
	 */
	BRAILLE = 1114792297,
	/**
	 * `Cans`
	 */
	CANADIAN_SYLLABICS = 1130458739,
	/**
	 * `Cher`
	 */
	CHEROKEE = 1130915186,
	/**
	 * `Ethi`
	 */
	ETHIOPIC = 1165256809,
	/**
	 * `Khmr`
	 */
	KHMER = 1265134962,
	/**
	 * `Mong`
	 */
	MONGOLIAN = 1299148391,
	/**
	 * `Mymr`
	 */
	MYANMAR = 1299803506,
	/**
	 * `Ogam`
	 */
	OGHAM = 1332175213,
	/**
	 * `Runr`
	 */
	RUNIC = 1383427698,
	/**
	 * `Sinh`
	 */
	SINHALA = 1399418472,
	/**
	 * `Syrc`
	 */
	SYRIAC = 1400468067,
	/**
	 * `Thaa`
	 */
	THAANA = 1416126817,
	/**
	 * `Yiii`
	 */
	YI = 1500080489,
	/**
	 * `Dsrt`
	 */
	DESERET = 1148416628,
	/**
	 * `Goth`
	 */
	GOTHIC = 1198486632,
	/**
	 * `Ital`
	 */
	OLD_ITALIC = 1232363884,
	/**
	 * `Buhd`
	 */
	BUHID = 1114990692,
	/**
	 * `Hano`
	 */
	HANUNOO = 1214344815,
	/**
	 * `Tglg`
	 */
	TAGALOG = 1416064103,
	/**
	 * `Tagb`
	 */
	TAGBANWA = 1415669602,
	/**
	 * `Cprt`
	 */
	CYPRIOT = 1131442804,
	/**
	 * `Limb`
	 */
	LIMBU = 1281977698,
	/**
	 * `Linb`
	 */
	LINEAR_B = 1281977954,
	/**
	 * `Osma`
	 */
	OSMANYA = 1332964705,
	/**
	 * `Shaw`
	 */
	SHAVIAN = 1399349623,
	/**
	 * `Tale`
	 */
	TAI_LE = 1415670885,
	/**
	 * `Ugar`
	 */
	UGARITIC = 1432838514,
	/**
	 * `Bugi`
	 */
	BUGINESE = 1114990441,
	/**
	 * `Copt`
	 */
	COPTIC = 1131376756,
	/**
	 * `Glag`
	 */
	GLAGOLITIC = 1198285159,
	/**
	 * `Khar`
	 */
	KHAROSHTHI = 1265131890,
	/**
	 * `Talu`
	 */
	NEW_TAI_LUE = 1415670901,
	/**
	 * `Xpeo`
	 */
	OLD_PERSIAN = 1483761007,
	/**
	 * `Sylo`
	 */
	SYLOTI_NAGRI = 1400466543,
	/**
	 * `Tfng`
	 */
	TIFINAGH = 1415999079,
	/**
	 * `Bali`
	 */
	BALINESE = 1113681001,
	/**
	 * `Xsux`
	 */
	CUNEIFORM = 1483961720,
	/**
	 * `Nkoo`
	 */
	NKO = 1315663727,
	/**
	 * `Phag`
	 */
	PHAGS_PA = 1349017959,
	/**
	 * `Phnx`
	 */
	PHOENICIAN = 1349021304,
	/**
	 * `Cari`
	 */
	CARIAN = 1130459753,
	/**
	 * `Cham`
	 */
	CHAM = 1130914157,
	/**
	 * `Kali`
	 */
	KAYAH_LI = 1264675945,
	/**
	 * `Lepc`
	 */
	LEPCHA = 1281716323,
	/**
	 * `Lyci`
	 */
	LYCIAN = 1283023721,
	/**
	 * `Lydi`
	 */
	LYDIAN = 1283023977,
	/**
	 * `Olck`
	 */
	OL_CHIKI = 1332503403,
	/**
	 * `Rjng`
	 */
	REJANG = 1382706791,
	/**
	 * `Saur`
	 */
	SAURASHTRA = 1398895986,
	/**
	 * `Sund`
	 */
	SUNDANESE = 1400204900,
	/**
	 * `Vaii`
	 */
	VAI = 1449224553,
	/**
	 * `Avst`
	 */
	AVESTAN = 1098281844,
	/**
	 * `Bamu`
	 */
	BAMUM = 1113681269,
	/**
	 * `Egyp`
	 */
	EGYPTIAN_HIEROGLYPHS = 1164409200,
	/**
	 * `Armi`
	 */
	IMPERIAL_ARAMAIC = 1098018153,
	/**
	 * `Phli`
	 */
	INSCRIPTIONAL_PAHLAVI = 1349020777,
	/**
	 * `Prti`
	 */
	INSCRIPTIONAL_PARTHIAN = 1349678185,
	/**
	 * `Java`
	 */
	JAVANESE = 1247901281,
	/**
	 * `Kthi`
	 */
	KAITHI = 1265920105,
	/**
	 * `Lisu`
	 */
	LISU = 1281979253,
	/**
	 * `Mtei`
	 */
	MEETEI_MAYEK = 1299473769,
	/**
	 * `Sarb`
	 */
	OLD_SOUTH_ARABIAN = 1398895202,
	/**
	 * `Orkh`
	 */
	OLD_TURKIC = 1332898664,
	/**
	 * `Samr`
	 */
	SAMARITAN = 1398893938,
	/**
	 * `Lana`
	 */
	TAI_THAM = 1281453665,
	/**
	 * `Tavt`
	 */
	TAI_VIET = 1415673460,
	/**
	 * `Batk`
	 */
	BATAK = 1113683051,
	/**
	 * `Brah`
	 */
	BRAHMI = 1114792296,
	/**
	 * `Mand`
	 */
	MANDAIC = 1298230884,
	/**
	 * `Cakm`
	 */
	CHAKMA = 1130457965,
	/**
	 * `Merc`
	 */
	MEROITIC_CURSIVE = 1298494051,
	/**
	 * `Mero`
	 */
	MEROITIC_HIEROGLYPHS = 1298494063,
	/**
	 * `Plrd`
	 */
	MIAO = 1349284452,
	/**
	 * `Shrd`
	 */
	SHARADA = 1399353956,
	/**
	 * `Sora`
	 */
	SORA_SOMPENG = 1399812705,
	/**
	 * `Takr`
	 */
	TAKRI = 1415670642,
	/**
	 * `Bass`, Since: 0.9.30
	 */
	BASSA_VAH = 1113682803,
	/**
	 * `Aghb`, Since: 0.9.30
	 */
	CAUCASIAN_ALBANIAN = 1097295970,
	/**
	 * `Dupl`, Since: 0.9.30
	 */
	DUPLOYAN = 1148547180,
	/**
	 * `Elba`, Since: 0.9.30
	 */
	ELBASAN = 1164730977,
	/**
	 * `Gran`, Since: 0.9.30
	 */
	GRANTHA = 1198678382,
	/**
	 * `Khoj`, Since: 0.9.30
	 */
	KHOJKI = 1265135466,
	/**
	 * `Sind`, Since: 0.9.30
	 */
	KHUDAWADI = 1399418468,
	/**
	 * `Lina`, Since: 0.9.30
	 */
	LINEAR_A = 1281977953,
	/**
	 * `Mahj`, Since: 0.9.30
	 */
	MAHAJANI = 1298229354,
	/**
	 * `Mani`, Since: 0.9.30
	 */
	MANICHAEAN = 1298230889,
	/**
	 * `Mend`, Since: 0.9.30
	 */
	MENDE_KIKAKUI = 1298493028,
	/**
	 * `Modi`, Since: 0.9.30
	 */
	MODI = 1299145833,
	/**
	 * `Mroo`, Since: 0.9.30
	 */
	MRO = 1299345263,
	/**
	 * `Nbat`, Since: 0.9.30
	 */
	NABATAEAN = 1315070324,
	/**
	 * `Narb`, Since: 0.9.30
	 */
	OLD_NORTH_ARABIAN = 1315009122,
	/**
	 * `Perm`, Since: 0.9.30
	 */
	OLD_PERMIC = 1348825709,
	/**
	 * `Hmng`, Since: 0.9.30
	 */
	PAHAWH_HMONG = 1215131239,
	/**
	 * `Palm`, Since: 0.9.30
	 */
	PALMYRENE = 1348562029,
	/**
	 * `Pauc`, Since: 0.9.30
	 */
	PAU_CIN_HAU = 1348564323,
	/**
	 * `Phlp`, Since: 0.9.30
	 */
	PSALTER_PAHLAVI = 1349020784,
	/**
	 * `Sidd`, Since: 0.9.30
	 */
	SIDDHAM = 1399415908,
	/**
	 * `Tirh`, Since: 0.9.30
	 */
	TIRHUTA = 1416196712,
	/**
	 * `Wara`, Since: 0.9.30
	 */
	WARANG_CITI = 1466004065,
	/**
	 * `Ahom`, Since: 0.9.30
	 */
	AHOM = 1097363309,
	/**
	 * `Hluw`, Since: 0.9.30
	 */
	ANATOLIAN_HIEROGLYPHS = 1215067511,
	/**
	 * `Hatr`, Since: 0.9.30
	 */
	HATRAN = 1214346354,
	/**
	 * `Mult`, Since: 0.9.30
	 */
	MULTANI = 1299541108,
	/**
	 * `Hung`, Since: 0.9.30
	 */
	OLD_HUNGARIAN = 1215655527,
	/**
	 * `Sgnw`, Since: 0.9.30
	 */
	SIGNWRITING = 1399287415,
	/**
	 * `Adlm`, Since: 1.3.0
	 */
	ADLAM = 1097100397,
	/**
	 * `Bhks`, Since: 1.3.0
	 */
	BHAIKSUKI = 1114139507,
	/**
	 * `Marc`, Since: 1.3.0
	 */
	MARCHEN = 1298231907,
	/**
	 * `Osge`, Since: 1.3.0
	 */
	OSAGE = 1332963173,
	/**
	 * `Tang`, Since: 1.3.0
	 */
	TANGUT = 1415671399,
	/**
	 * `Newa`, Since: 1.3.0
	 */
	NEWA = 1315272545,
	/**
	 * `Gonm`, Since: 1.6.0
	 */
	MASARAM_GONDI = 1198485101,
	/**
	 * `Nshu`, Since: 1.6.0
	 */
	NUSHU = 1316186229,
	/**
	 * `Soyo`, Since: 1.6.0
	 */
	SOYOMBO = 1399814511,
	/**
	 * `Zanb`, Since: 1.6.0
	 */
	ZANABAZAR_SQUARE = 1516334690,
	/**
	 * `Dogr`, Since: 1.8.0
	 */
	DOGRA = 1148151666,
	/**
	 * `Gong`, Since: 1.8.0
	 */
	GUNJALA_GONDI = 1198485095,
	/**
	 * `Rohg`, Since: 1.8.0
	 */
	HANIFI_ROHINGYA = 1383032935,
	/**
	 * `Maka`, Since: 1.8.0
	 */
	MAKASAR = 1298230113,
	/**
	 * `Medf`, Since: 1.8.0
	 */
	MEDEFAIDRIN = 1298490470,
	/**
	 * `Sogo`, Since: 1.8.0
	 */
	OLD_SOGDIAN = 1399809903,
	/**
	 * `Sogd`, Since: 1.8.0
	 */
	SOGDIAN = 1399809892,
	/**
	 * `Elym`, Since: 2.4.0
	 */
	ELYMAIC = 1164736877,
	/**
	 * `Nand`, Since: 2.4.0
	 */
	NANDINAGARI = 1315008100,
	/**
	 * `Hmnp`, Since: 2.4.0
	 */
	NYIAKENG_PUACHUE_HMONG = 1215131248,
	/**
	 * `Wcho`, Since: 2.4.0
	 */
	WANCHO = 1466132591,
	/**
	 * `Chrs`, Since: 2.6.7
	 */
	CHORASMIAN = 1130918515,
	/**
	 * `Diak`, Since: 2.6.7
	 */
	DIVES_AKURU = 1147756907,
	/**
	 * `Kits`, Since: 2.6.7
	 */
	KHITAN_SMALL_SCRIPT = 1265202291,
	/**
	 * `Yezi`, Since: 2.6.7
	 */
	YEZIDI = 1499822697,
	/**
	 * `Cpmn`, Since: 3.0.0
	 */
	CYPRO_MINOAN = 1131441518,
	/**
	 * `Ougr`, Since: 3.0.0
	 */
	OLD_UYGHUR = 1333094258,
	/**
	 * `Tnsa`, Since: 3.0.0
	 */
	TANGSA = 1416524641,
	/**
	 * `Toto`, Since: 3.0.0
	 */
	TOTO = 1416590447,
	/**
	 * `Vith`, Since: 3.0.0
	 */
	VITHKUQI = 1449751656,
	/**
	 * `Zmth`, Since: 3.4.0
	 */
	MATH = 1517122664,
	/**
	 * No script set
	 */
	INVALID = 0,
}
alias hb_script_t script_t;

/**
 * Defined by [OpenType Design-Variation Axis Tag Registry](https://docs.microsoft.com/en-us/typography/opentype/spec/dvaraxisreg).
 *
 * Since: 3.0.0
 */
public enum hb_style_tag_t
{
	/**
	 * Used to vary between non-italic and italic.
	 * A value of 0 can be interpreted as "Roman" (non-italic); a value of 1 can
	 * be interpreted as (fully) italic.
	 */
	ITALIC = 1769234796,
	/**
	 * Used to vary design to suit different text sizes.
	 * Non-zero. Values can be interpreted as text size, in points.
	 */
	OPTICAL_SIZE = 1869640570,
	/**
	 * Used to vary between upright and slanted text. Values
	 * must be greater than -90 and less than +90. Values can be interpreted as
	 * the angle, in counter-clockwise degrees, of oblique slant from whatever the
	 * designer considers to be upright for that font design. Typical right-leaning
	 * Italic fonts have a negative slant angle (typically around -12)
	 */
	SLANT_ANGLE = 1936486004,
	/**
	 * same as @HB_STYLE_TAG_SLANT_ANGLE expression as ratio.
	 * Typical right-leaning Italic fonts have a positive slant ratio (typically around 0.2)
	 */
	SLANT_RATIO = 1399615092,
	/**
	 * Used to vary width of text from narrower to wider.
	 * Non-zero. Values can be interpreted as a percentage of whatever the font
	 * designer considers “normal width” for that font design.
	 */
	WIDTH = 2003072104,
	/**
	 * Used to vary stroke thicknesses or other design details
	 * to give variation from lighter to blacker. Values can be interpreted in direct
	 * comparison to values for usWeightClass in the OS/2 table,
	 * or the CSS font-weight property.
	 */
	WEIGHT = 2003265652,
}
alias hb_style_tag_t style_tag_t;

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
 * Structure representing a setting for an #hb_aat_layout_feature_type_t.
 */
struct hb_aat_layout_feature_selector_info_t
{
	/**
	 * The selector's name identifier
	 */
	hb_ot_name_id_t nameId;
	/**
	 * The value to turn the selector on
	 */
	hb_aat_layout_feature_selector_t enable;
	/**
	 * The value to turn the selector off
	 */
	hb_aat_layout_feature_selector_t disable;
	uint reserved;
}

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
 * Glyph draw callbacks.
 *
 * #hb_draw_move_to_func_t, #hb_draw_line_to_func_t and
 * #hb_draw_cubic_to_func_t calls are necessary to be defined but we translate
 * #hb_draw_quadratic_to_func_t calls to #hb_draw_cubic_to_func_t if the
 * callback isn't defined.
 *
 * Since: 4.0.0
 */
struct hb_draw_funcs_t;

/**
 * Current drawing state.
 *
 * Since: 4.0.0
 */
struct hb_draw_state_t
{
	/**
	 * Whether there is an open path
	 */
	hb_bool_t pathOpen;
	/**
	 * X component of the start of current path
	 */
	float pathStartX;
	/**
	 * Y component of the start of current path
	 */
	float pathStartY;
	/**
	 * X component of current point
	 */
	float currentX;
	/**
	 * Y component of current point
	 */
	float currentY;
	hb_var_num_t reserved1;
	hb_var_num_t reserved2;
	hb_var_num_t reserved3;
	hb_var_num_t reserved4;
	hb_var_num_t reserved5;
	hb_var_num_t reserved6;
	hb_var_num_t reserved7;
}

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

/**
 * Data type for holding fonts.
 */
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
	/**
	 * the glyph ID of the layer
	 */
	hb_codepoint_t glyph;
	/**
	 * the palette color index of the layer
	 */
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
 * Data type to hold math kerning (cut-in) information for a glyph.
 *
 * Since: 3.4.0
 */
struct hb_ot_math_kern_entry_t
{
	/**
	 * The maximum height at which this entry should be used
	 */
	hb_position_t maxCorrectionHeight;
	/**
	 * The kern value of the entry
	 */
	hb_position_t kernValue;
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
	 * The minimum value on the variation axis that the font covers
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

/**
 * Use #hb_ot_var_axis_info_t instead.
 *
 * Since: 1.4.2
 */
struct hb_ot_var_axis_t
{
	/**
	 * axis tag
	 */
	hb_tag_t tag;
	/**
	 * axis name identifier
	 */
	hb_ot_name_id_t nameId;
	/**
	 * minimum value of the axis
	 */
	float minValue;
	/**
	 * default value of the axis
	 */
	float defaultValue;
	/**
	 * maximum value of the axis
	 */
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

struct hb_var_num_t
{
	union
	{
		float f;
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

/**
 * A callback method for #hb_buffer_t. The method gets called with the
 * #hb_buffer_t it was set on, the #hb_font_t the buffer is shaped with and a
 * message describing what step of the shaping process will be performed.
 * Returning %false from this method will skip this shaping step and move to
 * the next one.
 *
 * Params:
 *     buffer = An #hb_buffer_t to work upon
 *     font = The #hb_font_t the @buffer is shaped with
 *     message = %NULL-terminated message passed to the function
 *     userData = User data pointer passed by the caller
 *
 * Returns: %true to perform the shaping step, %false to skip it.
 *
 * Since: 1.1.3
 */
public alias extern(C) hb_bool_t function(hb_buffer_t* buffer, hb_font_t* font, const(char)* message, void* userData) hb_buffer_message_func_t;

/**
 * A virtual method for destroy user-data callbacks.
 *
 * Params:
 *     userData = the data to be destroyed
 */
public alias extern(C) void function(void* userData) hb_destroy_func_t;

/**
 * A virtual method for the #hb_draw_funcs_t to perform a "close-path" draw
 * operation.
 *
 * Params:
 *     dfuncs = draw functions object
 *     drawData = The data accompanying the draw functions
 *     st = current draw state
 *     userData = User data pointer passed by the caller
 *
 * Since: 4.0.0
 */
public alias extern(C) void function(hb_draw_funcs_t* dfuncs, void* drawData, hb_draw_state_t* st, void* userData) hb_draw_close_path_func_t;

/**
 * A virtual method for the #hb_draw_funcs_t to perform a "cubic-to" draw
 * operation.
 *
 * Params:
 *     dfuncs = draw functions object
 *     drawData = The data accompanying the draw functions
 *     st = current draw state
 *     control1X = X component of first control point
 *     control1Y = Y component of first control point
 *     control2X = X component of second control point
 *     control2Y = Y component of second control point
 *     toX = X component of target point
 *     toY = Y component of target point
 *     userData = User data pointer passed by the caller
 *
 * Since: 4.0.0
 */
public alias extern(C) void function(hb_draw_funcs_t* dfuncs, void* drawData, hb_draw_state_t* st, float control1X, float control1Y, float control2X, float control2Y, float toX, float toY, void* userData) hb_draw_cubic_to_func_t;

/**
 * A virtual method for the #hb_draw_funcs_t to perform a "line-to" draw
 * operation.
 *
 * Params:
 *     dfuncs = draw functions object
 *     drawData = The data accompanying the draw functions
 *     st = current draw state
 *     toX = X component of target point
 *     toY = Y component of target point
 *     userData = User data pointer passed by the caller
 *
 * Since: 4.0.0
 */
public alias extern(C) void function(hb_draw_funcs_t* dfuncs, void* drawData, hb_draw_state_t* st, float toX, float toY, void* userData) hb_draw_line_to_func_t;

/**
 * A virtual method for the #hb_draw_funcs_t to perform a "move-to" draw
 * operation.
 *
 * Params:
 *     dfuncs = draw functions object
 *     drawData = The data accompanying the draw functions
 *     st = current draw state
 *     toX = X component of target point
 *     toY = Y component of target point
 *     userData = User data pointer passed by the caller
 *
 * Since: 4.0.0
 */
public alias extern(C) void function(hb_draw_funcs_t* dfuncs, void* drawData, hb_draw_state_t* st, float toX, float toY, void* userData) hb_draw_move_to_func_t;

/**
 * A virtual method for the #hb_draw_funcs_t to perform a "quadratic-to" draw
 * operation.
 *
 * Params:
 *     dfuncs = draw functions object
 *     drawData = The data accompanying the draw functions
 *     st = current draw state
 *     controlX = X component of control point
 *     controlY = Y component of control point
 *     toX = X component of target point
 *     toY = Y component of target point
 *     userData = User data pointer passed by the caller
 *
 * Since: 4.0.0
 */
public alias extern(C) void function(hb_draw_funcs_t* dfuncs, void* drawData, hb_draw_state_t* st, float controlX, float controlY, float toX, float toY, void* userData) hb_draw_quadratic_to_func_t;

/**
 * This method should retrieve the extents for a font.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     extents = The font extents retrieved
 *     userData = User data pointer passed by the caller
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_font_extents_t* extents, void* userData) hb_font_get_font_extents_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the advance for a specified glyph. The
 * method must return an #hb_position_t.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     glyph = The glyph ID to query
 *     userData = User data pointer passed by the caller
 *
 * Returns: The advance of @glyph within @font
 */
public alias extern(C) hb_position_t function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, void* userData) hb_font_get_glyph_advance_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the advances for a sequence of glyphs.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     count = The number of glyph IDs in the sequence queried
 *     firstGlyph = The first glyph ID to query
 *     glyphStride = The stride between successive glyph IDs
 *     firstAdvance = The first advance retrieved
 *     advanceStride = The stride between successive advances
 *     userData = User data pointer passed by the caller
 */
public alias extern(C) void function(hb_font_t* font, void* fontData, uint count, hb_codepoint_t* firstGlyph, uint glyphStride, hb_position_t* firstAdvance, uint advanceStride, void* userData) hb_font_get_glyph_advances_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the (X,Y) coordinates (in font units) for a
 * specified contour point in a glyph. Each coordinate must be returned as
 * an #hb_position_t output parameter.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     glyph = The glyph ID to query
 *     pointIndex = The contour-point index to query
 *     x = The X value retrieved for the contour point
 *     y = The Y value retrieved for the contour point
 *     userData = User data pointer passed by the caller
 *
 * Returns: %true if data found, %false otherwise
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, uint pointIndex, hb_position_t* x, hb_position_t* y, void* userData) hb_font_get_glyph_contour_point_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the extents for a specified glyph. Extents must be
 * returned in an #hb_glyph_extents output parameter.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     glyph = The glyph ID to query
 *     extents = The #hb_glyph_extents_t retrieved
 *     userData = User data pointer passed by the caller
 *
 * Returns: %true if data found, %false otherwise
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, hb_glyph_extents_t* extents, void* userData) hb_font_get_glyph_extents_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the glyph ID that corresponds to a glyph-name
 * string.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     name = The name string to query
 *     len = The length of the name queried
 *     glyph = The glyph ID retrieved
 *     userData = User data pointer passed by the caller
 *
 * Returns: %true if data found, %false otherwise
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, char* name, int len, hb_codepoint_t* glyph, void* userData) hb_font_get_glyph_from_name_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the glyph ID for a specified Unicode code point
 * font, with an optional variation selector.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     unicode = The Unicode code point to query
 *     variationSelector = The  variation-selector code point to query
 *     glyph = The glyph ID retrieved
 *     userData = User data pointer passed by the caller
 *
 * Returns: %true if data found, %false otherwise
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t unicode, hb_codepoint_t variationSelector, hb_codepoint_t* glyph, void* userData) hb_font_get_glyph_func_t;

/**
 * This method should retrieve the kerning-adjustment value for a glyph-pair in
 * the specified font, for horizontal text segments.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     firstGlyph = The glyph ID of the first glyph in the glyph pair
 *     secondGlyph = The glyph ID of the second glyph in the glyph pair
 *     userData = User data pointer passed by the caller
 */
public alias extern(C) hb_position_t function(hb_font_t* font, void* fontData, hb_codepoint_t firstGlyph, hb_codepoint_t secondGlyph, void* userData) hb_font_get_glyph_kerning_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the glyph name that corresponds to a
 * glyph ID. The name should be returned in a string output parameter.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     glyph = The glyph ID to query
 *     name = Name string retrieved for the glyph ID
 *     size = Length of the glyph-name string retrieved
 *     userData = User data pointer passed by the caller
 *
 * Returns: %true if data found, %false otherwise
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, char* name, uint size, void* userData) hb_font_get_glyph_name_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the (X,Y) coordinates (in font units) of the
 * origin for a glyph. Each coordinate must be returned in an #hb_position_t
 * output parameter.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     glyph = The glyph ID to query
 *     x = The X coordinate of the origin
 *     y = The Y coordinate of the origin
 *     userData = User data pointer passed by the caller
 *
 * Returns: %true if data found, %false otherwise
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, hb_position_t* x, hb_position_t* y, void* userData) hb_font_get_glyph_origin_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     glyph = The glyph ID to query
 *     drawFuncs = The draw functions to send the shape data to
 *     drawData = The data accompanying the draw functions
 *     userData = User data pointer passed by the caller
 *
 * Since: 4.0.0
 */
public alias extern(C) void function(hb_font_t* font, void* fontData, hb_codepoint_t glyph, hb_draw_funcs_t* drawFuncs, void* drawData, void* userData) hb_font_get_glyph_shape_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the nominal glyph ID for a specified Unicode code
 * point. Glyph IDs must be returned in a #hb_codepoint_t output parameter.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     unicode = The Unicode code point to query
 *     glyph = The glyph ID retrieved
 *     userData = User data pointer passed by the caller
 *
 * Returns: %true if data found, %false otherwise
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t unicode, hb_codepoint_t* glyph, void* userData) hb_font_get_nominal_glyph_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the nominal glyph IDs for a sequence of
 * Unicode code points. Glyph IDs must be returned in a #hb_codepoint_t
 * output parameter.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     count = number of code points to query
 *     firstUnicode = The first Unicode code point to query
 *     unicodeStride = The stride between successive code points
 *     firstGlyph = The first glyph ID retrieved
 *     glyphStride = The stride between successive glyph IDs
 *     userData = User data pointer passed by the caller
 *
 * Returns: the number of code points processed
 */
public alias extern(C) uint function(hb_font_t* font, void* fontData, uint count, hb_codepoint_t* firstUnicode, uint unicodeStride, hb_codepoint_t* firstGlyph, uint glyphStride, void* userData) hb_font_get_nominal_glyphs_func_t;

/**
 * A virtual method for the #hb_font_funcs_t of an #hb_font_t object.
 *
 * This method should retrieve the glyph ID for a specified Unicode code point
 * followed by a specified Variation Selector code point. Glyph IDs must be
 * returned in a #hb_codepoint_t output parameter.
 *
 * Params:
 *     font = #hb_font_t to work upon
 *     fontData = @font user data pointer
 *     unicode = The Unicode code point to query
 *     variationSelector = The  variation-selector code point to query
 *     glyph = The glyph ID retrieved
 *     userData = User data pointer passed by the caller
 *
 * Returns: %true if data found, %false otherwise
 */
public alias extern(C) hb_bool_t function(hb_font_t* font, void* fontData, hb_codepoint_t unicode, hb_codepoint_t variationSelector, hb_codepoint_t* glyph, void* userData) hb_font_get_variation_glyph_func_t;

/**
 * Callback function for hb_face_create_for_tables().
 *
 * Params:
 *     face = an #hb_face_t to reference table for
 *     tag = the tag of the table to reference
 *     userData = User data pointer passed by the caller
 *
 * Returns: A pointer to the @tag table within @face
 *
 * Since: 0.9.2
 */
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
 * Returns: %true is @a,@b composed, %false otherwise
 */
public alias extern(C) hb_bool_t function(hb_unicode_funcs_t* ufuncs, hb_codepoint_t a, hb_codepoint_t b, hb_codepoint_t* ab, void* userData) hb_unicode_compose_func_t;

/**
 * Fully decompose @u to its Unicode compatibility decomposition. The codepoints of the decomposition will be written to @decomposed.
 * The complete length of the decomposition will be returned.
 *
 * If @u has no compatibility decomposition, zero should be returned.
 *
 * The Unicode standard guarantees that a buffer of length #HB_UNICODE_MAX_DECOMPOSITION_LEN codepoints will always be sufficient for any
 * compatibility decomposition plus an terminating value of 0.  Consequently, @decompose must be allocated by the caller to be at least this length.  Implementations
 * of this function type must ensure that they do not write past the provided array.
 *
 * Params:
 *     ufuncs = a Unicode function structure
 *     u = codepoint to decompose
 *     decomposed = address of codepoint array (of length #HB_UNICODE_MAX_DECOMPOSITION_LEN) to write decomposition into
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
 * Returns: %true if @ab decomposed, %false otherwise
 */
public alias extern(C) hb_bool_t function(hb_unicode_funcs_t* ufuncs, hb_codepoint_t ab, hb_codepoint_t* a, hb_codepoint_t* b, void* userData) hb_unicode_decompose_func_t;

/**
 * A virtual method for the #hb_unicode_funcs_t structure.
 *
 * Params:
 *     ufuncs = A Unicode-functions structure
 *     unicode = The code point to query
 *     userData = User data pointer passed by the caller
 */
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

/**
 * Special setting for #hb_feature_t.start to apply the feature from the start
 * of the buffer.
 */
enum FEATURE_GLOBAL_START = 0;
alias HB_FEATURE_GLOBAL_START = FEATURE_GLOBAL_START;

/**
 * An unset #hb_language_t.
 */
enum LANGUAGE_INVALID = 0;
alias HB_LANGUAGE_INVALID = LANGUAGE_INVALID;

/**
 * Unset #hb_map_t value.
 */
enum MAP_VALUE_INVALID = 4294967295;
alias HB_MAP_VALUE_INVALID = MAP_VALUE_INVALID;

/**
 * Special value for language index indicating default or unsupported language.
 */
enum OT_LAYOUT_DEFAULT_LANGUAGE_INDEX = 65535;
alias HB_OT_LAYOUT_DEFAULT_LANGUAGE_INDEX = OT_LAYOUT_DEFAULT_LANGUAGE_INDEX;

/**
 * Special value for feature index indicating unsupported feature.
 */
enum OT_LAYOUT_NO_FEATURE_INDEX = 65535;
alias HB_OT_LAYOUT_NO_FEATURE_INDEX = OT_LAYOUT_NO_FEATURE_INDEX;

/**
 * Special value for script index indicating unsupported script.
 */
enum OT_LAYOUT_NO_SCRIPT_INDEX = 65535;
alias HB_OT_LAYOUT_NO_SCRIPT_INDEX = OT_LAYOUT_NO_SCRIPT_INDEX;

/**
 * Special value for variations index indicating unsupported variation.
 */
enum OT_LAYOUT_NO_VARIATIONS_INDEX = 4294967295;
alias HB_OT_LAYOUT_NO_VARIATIONS_INDEX = OT_LAYOUT_NO_VARIATIONS_INDEX;

/**
 * Maximum number of OpenType tags that can correspond to a give #hb_language_t.
 */
enum OT_MAX_TAGS_PER_LANGUAGE = 3;
alias HB_OT_MAX_TAGS_PER_LANGUAGE = OT_MAX_TAGS_PER_LANGUAGE;

/**
 * Maximum number of OpenType tags that can correspond to a give #hb_script_t.
 */
enum OT_MAX_TAGS_PER_SCRIPT = 3;
alias HB_OT_MAX_TAGS_PER_SCRIPT = OT_MAX_TAGS_PER_SCRIPT;

/**
 * Do not use.
 */
enum OT_VAR_NO_AXIS_INDEX = 4294967295;
alias HB_OT_VAR_NO_AXIS_INDEX = OT_VAR_NO_AXIS_INDEX;

/**
 * Unset #hb_set_t value.
 */
enum SET_VALUE_INVALID = 4294967295;
alias HB_SET_VALUE_INVALID = SET_VALUE_INVALID;

/**
 * Maximum valid Unicode code point.
 */
enum UNICODE_MAX = 1114111;
alias HB_UNICODE_MAX = UNICODE_MAX;

/**
 * See Unicode 6.1 for details on the maximum decomposition length.
 */
enum UNICODE_MAX_DECOMPOSITION_LEN = 19;
alias HB_UNICODE_MAX_DECOMPOSITION_LEN = UNICODE_MAX_DECOMPOSITION_LEN;

enum VERSION_MAJOR = 4;
alias HB_VERSION_MAJOR = VERSION_MAJOR;

enum VERSION_MICRO = 1;
alias HB_VERSION_MICRO = VERSION_MICRO;

enum VERSION_MINOR = 2;
alias HB_VERSION_MINOR = VERSION_MINOR;

enum VERSION_STRING = "4.2.1";
alias HB_VERSION_STRING = VERSION_STRING;
