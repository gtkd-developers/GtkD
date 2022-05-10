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


module pango.c.types;

public import cairo.c.types;
public import glib.c.types;
public import gobject.c.types;
public import harfbuzz.c.types;

alias void* FTLibrary;

/**
 * A `PangoGlyph` represents a single glyph in the output form of a string.
 */
public alias uint PangoGlyph;

/**
 * The `PangoGlyphUnit` type is used to store dimensions within
 * Pango.
 *
 * Dimensions are stored in 1/PANGO_SCALE of a device unit.
 * (A device unit might be a pixel for screen display, or
 * a point on a printer.) PANGO_SCALE is currently 1024, and
 * may change in the future (unlikely though), but you should not
 * depend on its exact value.
 *
 * The PANGO_PIXELS() macro can be used to convert from glyph units
 * into device units with correct rounding.
 */
public alias int PangoGlyphUnit;

/**
 * A `PangoLayoutRun` represents a single run within a `PangoLayoutLine`.
 *
 * It is simply an alternate name for [struct@Pango.GlyphItem].
 * See the [struct@Pango.GlyphItem] docs for details on the fields.
 */
public alias PangoGlyphItem PangoLayoutRun;

/**
 * `PangoAlignment` describes how to align the lines of a `PangoLayout`
 * within the available space.
 *
 * If the `PangoLayout` is set to justify using [method@Pango.Layout.set_justify],
 * this only affects partial lines.
 *
 * See [method@Pango.Layout.set_auto_dir] for how text direction affects
 * the interpretation of `PangoAlignment` values.
 */
public enum PangoAlignment
{
	/**
	 * Put all available space on the right
	 */
	LEFT = 0,
	/**
	 * Center the line within the available space
	 */
	CENTER = 1,
	/**
	 * Put all available space on the left
	 */
	RIGHT = 2,
}

/**
 * The `PangoAttrType` distinguishes between different types of attributes.
 *
 * Along with the predefined values, it is possible to allocate additional
 * values for custom attributes using [func@AttrType.register]. The predefined
 * values are given below. The type of structure used to store the attribute is
 * listed in parentheses after the description.
 */
public enum PangoAttrType
{
	/**
	 * does not happen
	 */
	INVALID = 0,
	/**
	 * language ([struct@Pango.AttrLanguage])
	 */
	LANGUAGE = 1,
	/**
	 * font family name list ([struct@Pango.AttrString])
	 */
	FAMILY = 2,
	/**
	 * font slant style ([struct@Pango.AttrInt])
	 */
	STYLE = 3,
	/**
	 * font weight ([struct@Pango.AttrInt])
	 */
	WEIGHT = 4,
	/**
	 * font variant (normal or small caps) ([struct@Pango.AttrInt])
	 */
	VARIANT = 5,
	/**
	 * font stretch ([struct@Pango.AttrInt])
	 */
	STRETCH = 6,
	/**
	 * font size in points scaled by %PANGO_SCALE ([struct@Pango.AttrInt])
	 */
	SIZE = 7,
	/**
	 * font description ([struct@Pango.AttrFontDesc])
	 */
	FONT_DESC = 8,
	/**
	 * foreground color ([struct@Pango.AttrColor])
	 */
	FOREGROUND = 9,
	/**
	 * background color ([struct@Pango.AttrColor])
	 */
	BACKGROUND = 10,
	/**
	 * whether the text has an underline ([struct@Pango.AttrInt])
	 */
	UNDERLINE = 11,
	/**
	 * whether the text is struck-through ([struct@Pango.AttrInt])
	 */
	STRIKETHROUGH = 12,
	/**
	 * baseline displacement ([struct@Pango.AttrInt])
	 */
	RISE = 13,
	/**
	 * shape ([struct@Pango.AttrShape])
	 */
	SHAPE = 14,
	/**
	 * font size scale factor ([struct@Pango.AttrFloat])
	 */
	SCALE = 15,
	/**
	 * whether fallback is enabled ([struct@Pango.AttrInt])
	 */
	FALLBACK = 16,
	/**
	 * letter spacing ([struct@PangoAttrInt])
	 */
	LETTER_SPACING = 17,
	/**
	 * underline color ([struct@Pango.AttrColor])
	 */
	UNDERLINE_COLOR = 18,
	/**
	 * strikethrough color ([struct@Pango.AttrColor])
	 */
	STRIKETHROUGH_COLOR = 19,
	/**
	 * font size in pixels scaled by %PANGO_SCALE ([struct@Pango.AttrInt])
	 */
	ABSOLUTE_SIZE = 20,
	/**
	 * base text gravity ([struct@Pango.AttrInt])
	 */
	GRAVITY = 21,
	/**
	 * gravity hint ([struct@Pango.AttrInt])
	 */
	GRAVITY_HINT = 22,
	/**
	 * OpenType font features ([struct@Pango.AttrFontFeatures]). Since 1.38
	 */
	FONT_FEATURES = 23,
	/**
	 * foreground alpha ([struct@Pango.AttrInt]). Since 1.38
	 */
	FOREGROUND_ALPHA = 24,
	/**
	 * background alpha ([struct@Pango.AttrInt]). Since 1.38
	 */
	BACKGROUND_ALPHA = 25,
	/**
	 * whether breaks are allowed ([struct@Pango.AttrInt]). Since 1.44
	 */
	ALLOW_BREAKS = 26,
	/**
	 * how to render invisible characters ([struct@Pango.AttrInt]). Since 1.44
	 */
	SHOW = 27,
	/**
	 * whether to insert hyphens at intra-word line breaks ([struct@Pango.AttrInt]). Since 1.44
	 */
	INSERT_HYPHENS = 28,
	/**
	 * whether the text has an overline ([struct@Pango.AttrInt]). Since 1.46
	 */
	OVERLINE = 29,
	/**
	 * overline color ([struct@Pango.AttrColor]). Since 1.46
	 */
	OVERLINE_COLOR = 30,
	/**
	 * line height factor ([struct@Pango.AttrFloat]). Since: 1.50
	 */
	LINE_HEIGHT = 31,
	/**
	 * line height ([struct@Pango.AttrInt]). Since: 1.50
	 */
	ABSOLUTE_LINE_HEIGHT = 32,
	TEXT_TRANSFORM = 33,
	/**
	 * override segmentation to classify the range of the attribute as a single word ([struct@Pango.AttrInt]). Since 1.50
	 */
	WORD = 34,
	/**
	 * override segmentation to classify the range of the attribute as a single sentence ([struct@Pango.AttrInt]). Since 1.50
	 */
	SENTENCE = 35,
	/**
	 * baseline displacement ([struct@Pango.AttrInt]). Since 1.50
	 */
	BASELINE_SHIFT = 36,
	/**
	 * font-relative size change ([struct@Pango.AttrInt]). Since 1.50
	 */
	FONT_SCALE = 37,
}

/**
 * An enumeration that affects baseline shifts between runs.
 *
 * Since: 1.50
 */
public enum PangoBaselineShift
{
	/**
	 * Leave the baseline unchanged
	 */
	NONE = 0,
	/**
	 * Shift the baseline to the superscript position,
	 * relative to the previous run
	 */
	SUPERSCRIPT = 1,
	/**
	 * Shift the baseline to the subscript position,
	 * relative to the previous run
	 */
	SUBSCRIPT = 2,
}

/**
 * `PangoBidiType` represents the bidirectional character
 * type of a Unicode character.
 *
 * The values in this enumeration are specified by the
 * [Unicode bidirectional algorithm](http://www.unicode.org/reports/tr9/).
 *
 * Deprecated: Use fribidi for this information
 *
 * Since: 1.22
 */
public enum PangoBidiType
{
	/**
	 * Left-to-Right
	 */
	L = 0,
	/**
	 * Left-to-Right Embedding
	 */
	LRE = 1,
	/**
	 * Left-to-Right Override
	 */
	LRO = 2,
	/**
	 * Right-to-Left
	 */
	R = 3,
	/**
	 * Right-to-Left Arabic
	 */
	AL = 4,
	/**
	 * Right-to-Left Embedding
	 */
	RLE = 5,
	/**
	 * Right-to-Left Override
	 */
	RLO = 6,
	/**
	 * Pop Directional Format
	 */
	PDF = 7,
	/**
	 * European Number
	 */
	EN = 8,
	/**
	 * European Number Separator
	 */
	ES = 9,
	/**
	 * European Number Terminator
	 */
	ET = 10,
	/**
	 * Arabic Number
	 */
	AN = 11,
	/**
	 * Common Number Separator
	 */
	CS = 12,
	/**
	 * Nonspacing Mark
	 */
	NSM = 13,
	/**
	 * Boundary Neutral
	 */
	BN = 14,
	/**
	 * Paragraph Separator
	 */
	B = 15,
	/**
	 * Segment Separator
	 */
	S = 16,
	/**
	 * Whitespace
	 */
	WS = 17,
	/**
	 * Other Neutrals
	 */
	ON = 18,
	/**
	 * Left-to-Right isolate. Since 1.48.6
	 */
	LRI = 19,
	/**
	 * Right-to-Left isolate. Since 1.48.6
	 */
	RLI = 20,
	/**
	 * First strong isolate. Since 1.48.6
	 */
	FSI = 21,
	/**
	 * Pop directional isolate. Since 1.48.6
	 */
	PDI = 22,
}

/**
 * `PangoCoverageLevel` is used to indicate how well a font can
 * represent a particular Unicode character for a particular script.
 *
 * Since 1.44, only %PANGO_COVERAGE_NONE and %PANGO_COVERAGE_EXACT
 * will be returned.
 */
public enum PangoCoverageLevel
{
	/**
	 * The character is not representable with
	 * the font.
	 */
	NONE = 0,
	/**
	 * The character is represented in a
	 * way that may be comprehensible but is not the correct
	 * graphical form. For instance, a Hangul character represented
	 * as a a sequence of Jamos, or a Latin transliteration of a
	 * Cyrillic word.
	 */
	FALLBACK = 1,
	/**
	 * The character is represented as
	 * basically the correct graphical form, but with a stylistic
	 * variant inappropriate for the current script.
	 */
	APPROXIMATE = 2,
	/**
	 * The character is represented as the
	 * correct graphical form.
	 */
	EXACT = 3,
}

/**
 * `PangoDirection` represents a direction in the Unicode bidirectional
 * algorithm.
 *
 * Not every value in this enumeration makes sense for every usage of
 * `PangoDirection`; for example, the return value of [func@unichar_direction]
 * and [func@find_base_dir] cannot be `PANGO_DIRECTION_WEAK_LTR` or
 * `PANGO_DIRECTION_WEAK_RTL`, since every character is either neutral
 * or has a strong direction; on the other hand `PANGO_DIRECTION_NEUTRAL`
 * doesn't make sense to pass to [func@itemize_with_base_dir].
 *
 * The `PANGO_DIRECTION_TTB_LTR`, `PANGO_DIRECTION_TTB_RTL` values come from
 * an earlier interpretation of this enumeration as the writing direction
 * of a block of text and are no longer used. See `PangoGravity` for how
 * vertical text is handled in Pango.
 *
 * If you are interested in text direction, you should really use fribidi
 * directly. `PangoDirection` is only retained because it is used in some
 * public apis.
 */
public enum PangoDirection
{
	/**
	 * A strong left-to-right direction
	 */
	LTR = 0,
	/**
	 * A strong right-to-left direction
	 */
	RTL = 1,
	/**
	 * Deprecated value; treated the
	 * same as `PANGO_DIRECTION_RTL`.
	 */
	TTB_LTR = 2,
	/**
	 * Deprecated value; treated the
	 * same as `PANGO_DIRECTION_LTR`
	 */
	TTB_RTL = 3,
	/**
	 * A weak left-to-right direction
	 */
	WEAK_LTR = 4,
	/**
	 * A weak right-to-left direction
	 */
	WEAK_RTL = 5,
	/**
	 * No direction specified
	 */
	NEUTRAL = 6,
}

/**
 * `PangoEllipsizeMode` describes what sort of ellipsization
 * should be applied to text.
 *
 * In the ellipsization process characters are removed from the
 * text in order to make it fit to a given width and replaced
 * with an ellipsis.
 */
public enum PangoEllipsizeMode
{
	/**
	 * No ellipsization
	 */
	NONE = 0,
	/**
	 * Omit characters at the start of the text
	 */
	START = 1,
	/**
	 * Omit characters in the middle of the text
	 */
	MIDDLE = 2,
	/**
	 * Omit characters at the end of the text
	 */
	END = 3,
}

/**
 * The bits in a `PangoFontMask` correspond to the set fields in a
 * `PangoFontDescription`.
 */
public enum PangoFontMask
{
	/**
	 * the font family is specified.
	 */
	FAMILY = 1,
	/**
	 * the font style is specified.
	 */
	STYLE = 2,
	/**
	 * the font variant is specified.
	 */
	VARIANT = 4,
	/**
	 * the font weight is specified.
	 */
	WEIGHT = 8,
	/**
	 * the font stretch is specified.
	 */
	STRETCH = 16,
	/**
	 * the font size is specified.
	 */
	SIZE = 32,
	/**
	 * the font gravity is specified (Since: 1.16.)
	 */
	GRAVITY = 64,
	/**
	 * OpenType font variations are specified (Since: 1.42)
	 */
	VARIATIONS = 128,
}

/**
 * An enumeration that affects font sizes for superscript
 * and subscript positioning and for (emulated) Small Caps.
 *
 * Since: 1.50
 */
public enum PangoFontScale
{
	/**
	 * Leave the font size unchanged
	 */
	NONE = 0,
	/**
	 * Change the font to a size suitable for superscripts
	 */
	SUPERSCRIPT = 1,
	/**
	 * Change the font to a size suitable for subscripts
	 */
	SUBSCRIPT = 2,
	/**
	 * Change the font to a size suitable for Small Caps
	 */
	SMALL_CAPS = 3,
}

/**
 * `PangoGravity` represents the orientation of glyphs in a segment
 * of text.
 *
 * This is useful when rendering vertical text layouts. In those situations,
 * the layout is rotated using a non-identity [struct@Pango.Matrix], and then
 * glyph orientation is controlled using `PangoGravity`.
 *
 * Not every value in this enumeration makes sense for every usage of
 * `PangoGravity`; for example, %PANGO_GRAVITY_AUTO only can be passed to
 * [method@Pango.Context.set_base_gravity] and can only be returned by
 * [method@Pango.Context.get_base_gravity].
 *
 * See also: [enum@Pango.GravityHint]
 *
 * Since: 1.16
 */
public enum PangoGravity
{
	/**
	 * Glyphs stand upright (default) <img align="right" valign="center" src="m-south.png">
	 */
	SOUTH = 0,
	/**
	 * Glyphs are rotated 90 degrees counter-clockwise. <img align="right" valign="center" src="m-east.png">
	 */
	EAST = 1,
	/**
	 * Glyphs are upside-down. <img align="right" valign="cener" src="m-north.png">
	 */
	NORTH = 2,
	/**
	 * Glyphs are rotated 90 degrees clockwise. <img align="right" valign="center" src="m-west.png">
	 */
	WEST = 3,
	/**
	 * Gravity is resolved from the context matrix
	 */
	AUTO = 4,
}

/**
 * `PangoGravityHint` defines how horizontal scripts should behave in a
 * vertical context.
 *
 * That is, English excerpts in a vertical paragraph for example.
 *
 * See also [enum@Pango.Gravity]
 *
 * Since: 1.16
 */
public enum PangoGravityHint
{
	/**
	 * scripts will take their natural gravity based
	 * on the base gravity and the script.  This is the default.
	 */
	NATURAL = 0,
	/**
	 * always use the base gravity set, regardless of
	 * the script.
	 */
	STRONG = 1,
	/**
	 * for scripts not in their natural direction (eg.
	 * Latin in East gravity), choose per-script gravity such that every script
	 * respects the line progression. This means, Latin and Arabic will take
	 * opposite gravities and both flow top-to-bottom for example.
	 */
	LINE = 2,
}

/**
 * Errors that can be returned by [func@Pango.Layout.deserialize].
 *
 * Since: 1.50
 */
public enum PangoLayoutDeserializeError
{
	/**
	 * Unspecified error
	 */
	INVALID = 0,
	/**
	 * A JSon value could not be
	 * interpreted
	 */
	INVALID_VALUE = 1,
	/**
	 * A required JSon member was
	 * not found
	 */
	MISSING_VALUE = 2,
}

/**
 * Flags that influence the behavior of [func@Pango.Layout.deserialize].
 *
 * New members may be added to this enumeration over time.
 *
 * Since: 1.50
 */
public enum PangoLayoutDeserializeFlags
{
	/**
	 * Default behavior
	 */
	DEFAULT = 0,
	/**
	 * Apply context information
	 * from the serialization to the `PangoContext`
	 */
	CONTEXT = 1,
}

/**
 * Flags that influence the behavior of [method@Pango.Layout.serialize].
 *
 * New members may be added to this enumeration over time.
 *
 * Since: 1.50
 */
public enum PangoLayoutSerializeFlags
{
	/**
	 * Default behavior
	 */
	DEFAULT = 0,
	/**
	 * Include context information
	 */
	CONTEXT = 1,
	/**
	 * Include information about the formatted output
	 */
	OUTPUT = 2,
}

/**
 * The `PangoOverline` enumeration is used to specify whether text
 * should be overlined, and if so, the type of line.
 *
 * Since: 1.46
 */
public enum PangoOverline
{
	/**
	 * no overline should be drawn
	 */
	NONE = 0,
	/**
	 * Draw a single line above the ink
	 * extents of the text being underlined.
	 */
	SINGLE = 1,
}

/**
 * `PangoRenderPart` defines different items to render for such
 * purposes as setting colors.
 *
 * Since: 1.8
 */
public enum PangoRenderPart
{
	/**
	 * the text itself
	 */
	FOREGROUND = 0,
	/**
	 * the area behind the text
	 */
	BACKGROUND = 1,
	/**
	 * underlines
	 */
	UNDERLINE = 2,
	/**
	 * strikethrough lines
	 */
	STRIKETHROUGH = 3,
	/**
	 * overlines
	 */
	OVERLINE = 4,
}

/**
 * The `PangoScript` enumeration identifies different writing
 * systems.
 *
 * The values correspond to the names as defined in the Unicode standard. See
 * [Unicode Standard Annex 24: Script names](http://www.unicode.org/reports/tr24/)
 *
 * Note that this enumeration is deprecated and will not be updated to include values
 * in newer versions of the Unicode standard. Applications should use the
 * [enum@GLib.UnicodeScript] enumeration instead,
 * whose values are interchangeable with `PangoScript`.
 */
public enum PangoScript
{
	/**
	 * a value never returned from pango_script_for_unichar()
	 */
	INVALID_CODE = -1,
	/**
	 * a character used by multiple different scripts
	 */
	COMMON = 0,
	/**
	 * a mark glyph that takes its script from the
	 * base glyph to which it is attached
	 */
	INHERITED = 1,
	/**
	 * Arabic
	 */
	ARABIC = 2,
	/**
	 * Armenian
	 */
	ARMENIAN = 3,
	/**
	 * Bengali
	 */
	BENGALI = 4,
	/**
	 * Bopomofo
	 */
	BOPOMOFO = 5,
	/**
	 * Cherokee
	 */
	CHEROKEE = 6,
	/**
	 * Coptic
	 */
	COPTIC = 7,
	/**
	 * Cyrillic
	 */
	CYRILLIC = 8,
	/**
	 * Deseret
	 */
	DESERET = 9,
	/**
	 * Devanagari
	 */
	DEVANAGARI = 10,
	/**
	 * Ethiopic
	 */
	ETHIOPIC = 11,
	/**
	 * Georgian
	 */
	GEORGIAN = 12,
	/**
	 * Gothic
	 */
	GOTHIC = 13,
	/**
	 * Greek
	 */
	GREEK = 14,
	/**
	 * Gujarati
	 */
	GUJARATI = 15,
	/**
	 * Gurmukhi
	 */
	GURMUKHI = 16,
	/**
	 * Han
	 */
	HAN = 17,
	/**
	 * Hangul
	 */
	HANGUL = 18,
	/**
	 * Hebrew
	 */
	HEBREW = 19,
	/**
	 * Hiragana
	 */
	HIRAGANA = 20,
	/**
	 * Kannada
	 */
	KANNADA = 21,
	/**
	 * Katakana
	 */
	KATAKANA = 22,
	/**
	 * Khmer
	 */
	KHMER = 23,
	/**
	 * Lao
	 */
	LAO = 24,
	/**
	 * Latin
	 */
	LATIN = 25,
	/**
	 * Malayalam
	 */
	MALAYALAM = 26,
	/**
	 * Mongolian
	 */
	MONGOLIAN = 27,
	/**
	 * Myanmar
	 */
	MYANMAR = 28,
	/**
	 * Ogham
	 */
	OGHAM = 29,
	/**
	 * Old Italic
	 */
	OLD_ITALIC = 30,
	/**
	 * Oriya
	 */
	ORIYA = 31,
	/**
	 * Runic
	 */
	RUNIC = 32,
	/**
	 * Sinhala
	 */
	SINHALA = 33,
	/**
	 * Syriac
	 */
	SYRIAC = 34,
	/**
	 * Tamil
	 */
	TAMIL = 35,
	/**
	 * Telugu
	 */
	TELUGU = 36,
	/**
	 * Thaana
	 */
	THAANA = 37,
	/**
	 * Thai
	 */
	THAI = 38,
	/**
	 * Tibetan
	 */
	TIBETAN = 39,
	/**
	 * Canadian Aboriginal
	 */
	CANADIAN_ABORIGINAL = 40,
	/**
	 * Yi
	 */
	YI = 41,
	/**
	 * Tagalog
	 */
	TAGALOG = 42,
	/**
	 * Hanunoo
	 */
	HANUNOO = 43,
	/**
	 * Buhid
	 */
	BUHID = 44,
	/**
	 * Tagbanwa
	 */
	TAGBANWA = 45,
	/**
	 * Braille
	 */
	BRAILLE = 46,
	/**
	 * Cypriot
	 */
	CYPRIOT = 47,
	/**
	 * Limbu
	 */
	LIMBU = 48,
	/**
	 * Osmanya
	 */
	OSMANYA = 49,
	/**
	 * Shavian
	 */
	SHAVIAN = 50,
	/**
	 * Linear B
	 */
	LINEAR_B = 51,
	/**
	 * Tai Le
	 */
	TAI_LE = 52,
	/**
	 * Ugaritic
	 */
	UGARITIC = 53,
	/**
	 * New Tai Lue. Since 1.10
	 */
	NEW_TAI_LUE = 54,
	/**
	 * Buginese. Since 1.10
	 */
	BUGINESE = 55,
	/**
	 * Glagolitic. Since 1.10
	 */
	GLAGOLITIC = 56,
	/**
	 * Tifinagh. Since 1.10
	 */
	TIFINAGH = 57,
	/**
	 * Syloti Nagri. Since 1.10
	 */
	SYLOTI_NAGRI = 58,
	/**
	 * Old Persian. Since 1.10
	 */
	OLD_PERSIAN = 59,
	/**
	 * Kharoshthi. Since 1.10
	 */
	KHAROSHTHI = 60,
	/**
	 * an unassigned code point. Since 1.14
	 */
	UNKNOWN = 61,
	/**
	 * Balinese. Since 1.14
	 */
	BALINESE = 62,
	/**
	 * Cuneiform. Since 1.14
	 */
	CUNEIFORM = 63,
	/**
	 * Phoenician. Since 1.14
	 */
	PHOENICIAN = 64,
	/**
	 * Phags-pa. Since 1.14
	 */
	PHAGS_PA = 65,
	/**
	 * N'Ko. Since 1.14
	 */
	NKO = 66,
	/**
	 * Kayah Li. Since 1.20.1
	 */
	KAYAH_LI = 67,
	/**
	 * Lepcha. Since 1.20.1
	 */
	LEPCHA = 68,
	/**
	 * Rejang. Since 1.20.1
	 */
	REJANG = 69,
	/**
	 * Sundanese. Since 1.20.1
	 */
	SUNDANESE = 70,
	/**
	 * Saurashtra. Since 1.20.1
	 */
	SAURASHTRA = 71,
	/**
	 * Cham. Since 1.20.1
	 */
	CHAM = 72,
	/**
	 * Ol Chiki. Since 1.20.1
	 */
	OL_CHIKI = 73,
	/**
	 * Vai. Since 1.20.1
	 */
	VAI = 74,
	/**
	 * Carian. Since 1.20.1
	 */
	CARIAN = 75,
	/**
	 * Lycian. Since 1.20.1
	 */
	LYCIAN = 76,
	/**
	 * Lydian. Since 1.20.1
	 */
	LYDIAN = 77,
	/**
	 * Batak. Since 1.32
	 */
	BATAK = 78,
	/**
	 * Brahmi. Since 1.32
	 */
	BRAHMI = 79,
	/**
	 * Mandaic. Since 1.32
	 */
	MANDAIC = 80,
	/**
	 * Chakma. Since: 1.32
	 */
	CHAKMA = 81,
	/**
	 * Meroitic Cursive. Since: 1.32
	 */
	MEROITIC_CURSIVE = 82,
	/**
	 * Meroitic Hieroglyphs. Since: 1.32
	 */
	MEROITIC_HIEROGLYPHS = 83,
	/**
	 * Miao. Since: 1.32
	 */
	MIAO = 84,
	/**
	 * Sharada. Since: 1.32
	 */
	SHARADA = 85,
	/**
	 * Sora Sompeng. Since: 1.32
	 */
	SORA_SOMPENG = 86,
	/**
	 * Takri. Since: 1.32
	 */
	TAKRI = 87,
	/**
	 * Bassa. Since: 1.40
	 */
	BASSA_VAH = 88,
	/**
	 * Caucasian Albanian. Since: 1.40
	 */
	CAUCASIAN_ALBANIAN = 89,
	/**
	 * Duployan. Since: 1.40
	 */
	DUPLOYAN = 90,
	/**
	 * Elbasan. Since: 1.40
	 */
	ELBASAN = 91,
	/**
	 * Grantha. Since: 1.40
	 */
	GRANTHA = 92,
	/**
	 * Kjohki. Since: 1.40
	 */
	KHOJKI = 93,
	/**
	 * Khudawadi, Sindhi. Since: 1.40
	 */
	KHUDAWADI = 94,
	/**
	 * Linear A. Since: 1.40
	 */
	LINEAR_A = 95,
	/**
	 * Mahajani. Since: 1.40
	 */
	MAHAJANI = 96,
	/**
	 * Manichaean. Since: 1.40
	 */
	MANICHAEAN = 97,
	/**
	 * Mende Kikakui. Since: 1.40
	 */
	MENDE_KIKAKUI = 98,
	/**
	 * Modi. Since: 1.40
	 */
	MODI = 99,
	/**
	 * Mro. Since: 1.40
	 */
	MRO = 100,
	/**
	 * Nabataean. Since: 1.40
	 */
	NABATAEAN = 101,
	/**
	 * Old North Arabian. Since: 1.40
	 */
	OLD_NORTH_ARABIAN = 102,
	/**
	 * Old Permic. Since: 1.40
	 */
	OLD_PERMIC = 103,
	/**
	 * Pahawh Hmong. Since: 1.40
	 */
	PAHAWH_HMONG = 104,
	/**
	 * Palmyrene. Since: 1.40
	 */
	PALMYRENE = 105,
	/**
	 * Pau Cin Hau. Since: 1.40
	 */
	PAU_CIN_HAU = 106,
	/**
	 * Psalter Pahlavi. Since: 1.40
	 */
	PSALTER_PAHLAVI = 107,
	/**
	 * Siddham. Since: 1.40
	 */
	SIDDHAM = 108,
	/**
	 * Tirhuta. Since: 1.40
	 */
	TIRHUTA = 109,
	/**
	 * Warang Citi. Since: 1.40
	 */
	WARANG_CITI = 110,
	/**
	 * Ahom. Since: 1.40
	 */
	AHOM = 111,
	/**
	 * Anatolian Hieroglyphs. Since: 1.40
	 */
	ANATOLIAN_HIEROGLYPHS = 112,
	/**
	 * Hatran. Since: 1.40
	 */
	HATRAN = 113,
	/**
	 * Multani. Since: 1.40
	 */
	MULTANI = 114,
	/**
	 * Old Hungarian. Since: 1.40
	 */
	OLD_HUNGARIAN = 115,
	/**
	 * Signwriting. Since: 1.40
	 */
	SIGNWRITING = 116,
}

/**
 * Flags influencing the shaping process.
 *
 * `PangoShapeFlags` can be passed to [func@Pango.shape_with_flags].
 *
 * Since: 1.44
 */
public enum PangoShapeFlags
{
	/**
	 * Default value
	 */
	NONE = 0,
	/**
	 * Round glyph positions and widths to whole device units
	 * This option should be set if the target renderer can't do subpixel positioning of glyphs
	 */
	ROUND_POSITIONS = 1,
}

/**
 * These flags affect how Pango treats characters that are normally
 * not visible in the output.
 *
 * Since: 1.44
 */
public enum PangoShowFlags
{
	/**
	 * No special treatment for invisible characters
	 */
	NONE = 0,
	/**
	 * Render spaces, tabs and newlines visibly
	 */
	SPACES = 1,
	/**
	 * Render line breaks visibly
	 */
	LINE_BREAKS = 2,
	/**
	 * Render default-ignorable Unicode
	 * characters visibly
	 */
	IGNORABLES = 4,
}

/**
 * An enumeration specifying the width of the font relative to other designs
 * within a family.
 */
public enum PangoStretch
{
	/**
	 * ultra condensed width
	 */
	ULTRA_CONDENSED = 0,
	/**
	 * extra condensed width
	 */
	EXTRA_CONDENSED = 1,
	/**
	 * condensed width
	 */
	CONDENSED = 2,
	/**
	 * semi condensed width
	 */
	SEMI_CONDENSED = 3,
	/**
	 * the normal width
	 */
	NORMAL = 4,
	/**
	 * semi expanded width
	 */
	SEMI_EXPANDED = 5,
	/**
	 * expanded width
	 */
	EXPANDED = 6,
	/**
	 * extra expanded width
	 */
	EXTRA_EXPANDED = 7,
	/**
	 * ultra expanded width
	 */
	ULTRA_EXPANDED = 8,
}

/**
 * An enumeration specifying the various slant styles possible for a font.
 */
public enum PangoStyle
{
	/**
	 * the font is upright.
	 */
	NORMAL = 0,
	/**
	 * the font is slanted, but in a roman style.
	 */
	OBLIQUE = 1,
	/**
	 * the font is slanted in an italic style.
	 */
	ITALIC = 2,
}

/**
 * `PangoTabAlign` specifies where the text appears relative to the tab stop
 * position.
 */
public enum PangoTabAlign
{
	/**
	 * the text appears to the right of the tab stop position
	 */
	LEFT = 0,
	/**
	 * the text appears to the left of the tab stop position
	 * until the available space is filled. Since: 1.50
	 */
	RIGHT = 1,
	/**
	 * the text is centered at the tab stop position
	 * until the available space is filled. Since: 1.50
	 */
	CENTER = 2,
	/**
	 * text before the first occurrence of the decimal point
	 * character appears to the left of the tab stop position (until the available
	 * space is filled), the rest to the right. Since: 1.50
	 */
	DECIMAL = 3,
}

/**
 * An enumeration that affects how Pango treats characters during shaping.
 *
 * Since: 1.50
 */
public enum PangoTextTransform
{
	/**
	 * Leave text unchanged
	 */
	NONE = 0,
	/**
	 * Display letters and numbers as lowercase
	 */
	LOWERCASE = 1,
	/**
	 * Display letters and numbers as uppercase
	 */
	UPPERCASE = 2,
	/**
	 * Display the first character of a word
	 * in titlecase
	 */
	CAPITALIZE = 3,
}

/**
 * The `PangoUnderline` enumeration is used to specify whether text
 * should be underlined, and if so, the type of underlining.
 */
public enum PangoUnderline
{
	/**
	 * no underline should be drawn
	 */
	NONE = 0,
	/**
	 * a single underline should be drawn
	 */
	SINGLE = 1,
	/**
	 * a double underline should be drawn
	 */
	DOUBLE = 2,
	/**
	 * a single underline should be drawn at a
	 * position beneath the ink extents of the text being
	 * underlined. This should be used only for underlining
	 * single characters, such as for keyboard accelerators.
	 * %PANGO_UNDERLINE_SINGLE should be used for extended
	 * portions of text.
	 */
	LOW = 3,
	/**
	 * an underline indicating an error should
	 * be drawn below. The exact style of rendering is up to the
	 * `PangoRenderer` in use, but typical styles include wavy
	 * or dotted lines.
	 * This underline is typically used to indicate an error such
	 * as a possible mispelling; in some cases a contrasting color
	 * may automatically be used. This type of underlining is
	 * available since Pango 1.4.
	 */
	ERROR = 4,
	/**
	 * Like @PANGO_UNDERLINE_SINGLE, but
	 * drawn continuously across multiple runs. This type
	 * of underlining is available since Pango 1.46.
	 */
	SINGLE_LINE = 5,
	/**
	 * Like @PANGO_UNDERLINE_DOUBLE, but
	 * drawn continuously across multiple runs. This type
	 * of underlining is available since Pango 1.46.
	 */
	DOUBLE_LINE = 6,
	/**
	 * Like @PANGO_UNDERLINE_ERROR, but
	 * drawn continuously across multiple runs. This type
	 * of underlining is available since Pango 1.46.
	 */
	ERROR_LINE = 7,
}

/**
 * An enumeration specifying capitalization variant of the font.
 */
public enum PangoVariant
{
	/**
	 * A normal font.
	 */
	NORMAL = 0,
	/**
	 * A font with the lower case characters
	 * replaced by smaller variants of the capital characters.
	 */
	SMALL_CAPS = 1,
	/**
	 * A font with all characters
	 * replaced by smaller variants of the capital characters. Since: 1.50
	 */
	ALL_SMALL_CAPS = 2,
	/**
	 * A font with the lower case characters
	 * replaced by smaller variants of the capital characters.
	 * Petite Caps can be even smaller than Small Caps. Since: 1.50
	 */
	PETITE_CAPS = 3,
	/**
	 * A font with all characters
	 * replaced by smaller variants of the capital characters.
	 * Petite Caps can be even smaller than Small Caps. Since: 1.50
	 */
	ALL_PETITE_CAPS = 4,
	/**
	 * A font with the upper case characters
	 * replaced by smaller variants of the capital letters. Since: 1.50
	 */
	UNICASE = 5,
	/**
	 * A font with capital letters that
	 * are more suitable for all-uppercase titles. Since: 1.50
	 */
	TITLE_CAPS = 6,
}

/**
 * An enumeration specifying the weight (boldness) of a font.
 *
 * Weight is specified as a numeric value ranging from 100 to 1000.
 * This enumeration simply provides some common, predefined values.
 */
public enum PangoWeight
{
	/**
	 * the thin weight (= 100) Since: 1.24
	 */
	THIN = 100,
	/**
	 * the ultralight weight (= 200)
	 */
	ULTRALIGHT = 200,
	/**
	 * the light weight (= 300)
	 */
	LIGHT = 300,
	/**
	 * the semilight weight (= 350) Since: 1.36.7
	 */
	SEMILIGHT = 350,
	/**
	 * the book weight (= 380) Since: 1.24)
	 */
	BOOK = 380,
	/**
	 * the default weight (= 400)
	 */
	NORMAL = 400,
	/**
	 * the normal weight (= 500) Since: 1.24
	 */
	MEDIUM = 500,
	/**
	 * the semibold weight (= 600)
	 */
	SEMIBOLD = 600,
	/**
	 * the bold weight (= 700)
	 */
	BOLD = 700,
	/**
	 * the ultrabold weight (= 800)
	 */
	ULTRABOLD = 800,
	/**
	 * the heavy weight (= 900)
	 */
	HEAVY = 900,
	/**
	 * the ultraheavy weight (= 1000) Since: 1.24
	 */
	ULTRAHEAVY = 1000,
}

/**
 * `PangoWrapMode` describes how to wrap the lines of a `PangoLayout`
 * to the desired width.
 *
 * For @PANGO_WRAP_WORD, Pango uses break opportunities that are determined
 * by the Unicode line breaking algorithm. For @PANGO_WRAP_CHAR, Pango allows
 * breaking at grapheme boundaries that are determined by the Unicode text
 * segmentation algorithm.
 */
public enum PangoWrapMode
{
	/**
	 * wrap lines at word boundaries.
	 */
	WORD = 0,
	/**
	 * wrap lines at character boundaries.
	 */
	CHAR = 1,
	/**
	 * wrap lines at word boundaries, but fall back to
	 * character boundaries if there is not enough space for a full word.
	 */
	WORD_CHAR = 2,
}

struct PangoFcFontMap
{
	PangoFontMap parentInstance;
	void* priv;
}

struct PangoCairoFont;


/**
 * The `PangoAnalysis` structure stores information about
 * the properties of a segment of text.
 */
struct PangoAnalysis
{
	/**
	 * unused, reserved
	 */
	void* shapeEngine;
	/**
	 * unused, reserved
	 */
	void* langEngine;
	/**
	 * the font for this segment.
	 */
	PangoFont* font;
	/**
	 * the bidirectional level for this segment.
	 */
	ubyte level;
	/**
	 * the glyph orientation for this segment (A `PangoGravity`).
	 */
	ubyte gravity;
	/**
	 * boolean flags for this segment (Since: 1.16).
	 */
	ubyte flags;
	/**
	 * the detected script for this segment (A `PangoScript`) (Since: 1.18).
	 */
	ubyte script;
	/**
	 * the detected language for this segment.
	 */
	PangoLanguage* language;
	/**
	 * extra attributes for this segment.
	 */
	GSList* extraAttrs;
}

/**
 * The `PangoAttrClass` structure stores the type and operations for
 * a particular type of attribute.
 *
 * The functions in this structure should not be called directly. Instead,
 * one should use the wrapper functions provided for `PangoAttribute`.
 */
struct PangoAttrClass
{
	/**
	 * the type ID for this attribute
	 */
	PangoAttrType type;
	/** */
	extern(C) PangoAttribute* function(PangoAttribute* attr) copy;
	/** */
	extern(C) void function(PangoAttribute* attr) destroy;
	/** */
	extern(C) int function(PangoAttribute* attr1, PangoAttribute* attr2) equal;
}

/**
 * The `PangoAttrColor` structure is used to represent attributes that
 * are colors.
 */
struct PangoAttrColor
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * the `PangoColor` which is the value of the attribute
	 */
	PangoColor color;
}

/**
 * The `PangoAttrFloat` structure is used to represent attributes with
 * a float or double value.
 */
struct PangoAttrFloat
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * the value of the attribute
	 */
	double value;
}

/**
 * The `PangoAttrFontDesc` structure is used to store an attribute that
 * sets all aspects of the font description at once.
 */
struct PangoAttrFontDesc
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * the font description which is the value of this attribute
	 */
	PangoFontDescription* desc;
}

/**
 * The `PangoAttrFontFeatures` structure is used to represent OpenType
 * font features as an attribute.
 *
 * Since: 1.38
 */
struct PangoAttrFontFeatures
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * the features, as a string in CSS syntax
	 */
	char* features;
}

/**
 * The `PangoAttrInt` structure is used to represent attributes with
 * an integer or enumeration value.
 */
struct PangoAttrInt
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * the value of the attribute
	 */
	int value;
}

struct PangoAttrIterator;

/**
 * The `PangoAttrLanguage` structure is used to represent attributes that
 * are languages.
 */
struct PangoAttrLanguage
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * the `PangoLanguage` which is the value of the attribute
	 */
	PangoLanguage* value;
}

struct PangoAttrList;

/**
 * The `PangoAttrShape` structure is used to represent attributes which
 * impose shape restrictions.
 */
struct PangoAttrShape
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * the ink rectangle to restrict to
	 */
	PangoRectangle inkRect;
	/**
	 * the logical rectangle to restrict to
	 */
	PangoRectangle logicalRect;
	/**
	 * user data set (see [func@Pango.AttrShape.new_with_data])
	 */
	void* data;
	/**
	 * copy function for the user data
	 */
	PangoAttrDataCopyFunc copyFunc;
	/**
	 * destroy function for the user data
	 */
	GDestroyNotify destroyFunc;
}

/**
 * The `PangoAttrSize` structure is used to represent attributes which
 * set font size.
 */
struct PangoAttrSize
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * size of font, in units of 1/%PANGO_SCALE of a point (for
	 * %PANGO_ATTR_SIZE) or of a device unit (for %PANGO_ATTR_ABSOLUTE_SIZE)
	 */
	int size;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "absolute", 1,
		uint, "", 31
	));
}

/**
 * The `PangoAttrString` structure is used to represent attributes with
 * a string value.
 */
struct PangoAttrString
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * the string which is the value of the attribute
	 */
	char* value;
}

struct PangoAttribute
{
	/**
	 * the class structure holding information about the type of the attribute
	 */
	PangoAttrClass* klass;
	/**
	 * the start index of the range (in bytes).
	 */
	uint startIndex;
	/**
	 * end index of the range (in bytes). The character at this index
	 * is not included in the range.
	 */
	uint endIndex;
}

struct PangoColor
{
	/**
	 * value of red component
	 */
	ushort red;
	/**
	 * value of green component
	 */
	ushort green;
	/**
	 * value of blue component
	 */
	ushort blue;
}

struct PangoContext;

struct PangoContextClass;

struct PangoCoverage;

struct PangoFont
{
	GObject parentInstance;
}

struct PangoFontClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     font = a `PangoFont`
	 * Returns: a newly-allocated `PangoFontDescription` object.
	 */
	extern(C) PangoFontDescription* function(PangoFont* font) describe;
	/**
	 *
	 * Params:
	 *     font = a `PangoFont`
	 *     language = the language tag
	 * Returns: a newly-allocated `PangoCoverage`
	 *     object.
	 */
	extern(C) PangoCoverage* function(PangoFont* font, PangoLanguage* language) getCoverage;
	/** */
	extern(C) void function(PangoFont* font, PangoGlyph glyph, PangoRectangle* inkRect, PangoRectangle* logicalRect) getGlyphExtents;
	/**
	 *
	 * Params:
	 *     font = a `PangoFont`
	 *     language = language tag used to determine which script
	 *         to get the metrics for, or %NULL to indicate to get the metrics for
	 *         the entire font.
	 * Returns: a `PangoFontMetrics` object. The caller must call
	 *     [method@Pango.FontMetrics.unref] when finished using the object.
	 */
	extern(C) PangoFontMetrics* function(PangoFont* font, PangoLanguage* language) getMetrics;
	/**
	 *
	 * Params:
	 *     font = a `PangoFont`
	 * Returns: the `PangoFontMap`
	 *     for the font
	 */
	extern(C) PangoFontMap* function(PangoFont* font) getFontMap;
	/** */
	extern(C) PangoFontDescription* function(PangoFont* font) describeAbsolute;
	/** */
	extern(C) void function(PangoFont* font, hb_feature_t* features, uint len, uint* numFeatures) getFeatures;
	/** */
	extern(C) hb_font_t* function(PangoFont* font) createHbFont;
}

struct PangoFontDescription;

struct PangoFontFace
{
	GObject parentInstance;
}

struct PangoFontFaceClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     face = a `PangoFontFace`.
	 * Returns: the face name for the face. This string is
	 *     owned by the face object and must not be modified or freed.
	 */
	extern(C) const(char)* function(PangoFontFace* face) getFaceName;
	/**
	 *
	 * Params:
	 *     face = a `PangoFontFace`
	 * Returns: a newly-created `PangoFontDescription` structure
	 *     holding the description of the face. Use [method@Pango.FontDescription.free]
	 *     to free the result.
	 */
	extern(C) PangoFontDescription* function(PangoFontFace* face) describe;
	/** */
	extern(C) void function(PangoFontFace* face, int** sizes, int* nSizes) listSizes;
	/**
	 *
	 * Params:
	 *     face = a `PangoFontFace`
	 * Returns: whether @face is synthesized
	 */
	extern(C) int function(PangoFontFace* face) isSynthesized;
	/**
	 *
	 * Params:
	 *     face = a `PangoFontFace`
	 * Returns: the `PangoFontFamily`
	 */
	extern(C) PangoFontFamily* function(PangoFontFace* face) getFamily;
	/** */
	extern(C) void function() PangoReserved3;
	/** */
	extern(C) void function() PangoReserved4;
}

struct PangoFontFamily
{
	GObject parentInstance;
}

struct PangoFontFamilyClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(PangoFontFamily* family, PangoFontFace*** faces, int* nFaces) listFaces;
	/**
	 *
	 * Params:
	 *     family = a `PangoFontFamily`
	 * Returns: the name of the family. This string is owned
	 *     by the family object and must not be modified or freed.
	 */
	extern(C) const(char)* function(PangoFontFamily* family) getName;
	/**
	 *
	 * Params:
	 *     family = a `PangoFontFamily`
	 * Returns: %TRUE if the family is monospace.
	 */
	extern(C) int function(PangoFontFamily* family) isMonospace;
	/**
	 *
	 * Params:
	 *     family = a `PangoFontFamily`
	 * Returns: %TRUE if the family is variable
	 */
	extern(C) int function(PangoFontFamily* family) isVariable;
	/**
	 *
	 * Params:
	 *     family = a `PangoFontFamily`
	 *     name = the name of a face. If the name is %NULL,
	 *         the family's default face (fontconfig calls it "Regular")
	 *         will be returned.
	 * Returns: the `PangoFontFace`,
	 *     or %NULL if no face with the given name exists.
	 */
	extern(C) PangoFontFace* function(PangoFontFamily* family, const(char)* name) getFace;
	/** */
	extern(C) void function() PangoReserved2;
}

struct PangoFontMap
{
	GObject parentInstance;
}

/**
 * The `PangoFontMapClass` structure holds the virtual functions for
 * a particular `PangoFontMap` implementation.
 */
struct PangoFontMapClass
{
	/**
	 * parent `GObjectClass`
	 */
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     fontmap = a `PangoFontMap`
	 *     context = the `PangoContext` the font will be used with
	 *     desc = a `PangoFontDescription` describing the font to load
	 * Returns: the newly allocated `PangoFont`
	 *     loaded, or %NULL if no font matched.
	 */
	extern(C) PangoFont* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc) loadFont;
	/** */
	extern(C) void function(PangoFontMap* fontmap, PangoFontFamily*** families, int* nFamilies) listFamilies;
	/**
	 *
	 * Params:
	 *     fontmap = a `PangoFontMap`
	 *     context = the `PangoContext` the font will be used with
	 *     desc = a `PangoFontDescription` describing the font to load
	 *     language = a `PangoLanguage` the fonts will be used for
	 * Returns: the newly allocated
	 *     `PangoFontset` loaded, or %NULL if no font matched.
	 */
	extern(C) PangoFontset* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) loadFontset;
	/**
	 * the type of rendering-system-dependent engines that
	 * can handle fonts of this fonts loaded with this fontmap.
	 */
	const(char)* shapeEngineType;
	/**
	 *
	 * Params:
	 *     fontmap = a `PangoFontMap`
	 * Returns: The current serial number of @fontmap.
	 */
	extern(C) uint function(PangoFontMap* fontmap) getSerial;
	/** */
	extern(C) void function(PangoFontMap* fontmap) changed;
	/**
	 *
	 * Params:
	 *     fontmap = a `PangoFontMap`
	 *     name = a family name
	 * Returns: the `PangoFontFamily`
	 */
	extern(C) PangoFontFamily* function(PangoFontMap* fontmap, const(char)* name) getFamily;
	/** */
	extern(C) PangoFontFace* function(PangoFontMap* fontmap, PangoFont* font) getFace;
}

struct PangoFontMetrics
{
	uint refCount;
	int ascent;
	int descent;
	int height;
	int approximateCharWidth;
	int approximateDigitWidth;
	int underlinePosition;
	int underlineThickness;
	int strikethroughPosition;
	int strikethroughThickness;
}

struct PangoFontset
{
	GObject parentInstance;
}

/**
 * The `PangoFontsetClass` structure holds the virtual functions for
 * a particular `PangoFontset` implementation.
 */
struct PangoFontsetClass
{
	/**
	 * parent `GObjectClass`
	 */
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     fontset = a `PangoFontset`
	 *     wc = a Unicode character
	 * Returns: a `PangoFont`
	 */
	extern(C) PangoFont* function(PangoFontset* fontset, uint wc) getFont;
	/**
	 *
	 * Params:
	 *     fontset = a `PangoFontset`
	 * Returns: a `PangoFontMetrics` object
	 */
	extern(C) PangoFontMetrics* function(PangoFontset* fontset) getMetrics;
	/** */
	extern(C) PangoLanguage* function(PangoFontset* fontset) getLanguage;
	/** */
	extern(C) void function(PangoFontset* fontset, PangoFontsetForeachFunc func, void* data) foreach_;
	/** */
	extern(C) void function() PangoReserved1;
	/** */
	extern(C) void function() PangoReserved2;
	/** */
	extern(C) void function() PangoReserved3;
	/** */
	extern(C) void function() PangoReserved4;
}

struct PangoFontsetSimple;

struct PangoFontsetSimpleClass;

/**
 * The `PangoGlyphGeometry` structure contains width and positioning
 * information for a single glyph.
 *
 * Note that @width is not guaranteed to be the same as the glyph
 * extents. Kerning and other positioning applied during shaping will
 * affect both the @width and the @x_offset for the glyphs in the
 * glyph string that results from shaping.
 *
 * The information in this struct is intended for rendering the glyphs,
 * as follows:
 *
 * 1. Assume the current point is (x, y)
 * 2. Render the current glyph at (x + x_offset, y + y_offset),
 * 3. Advance the current point to (x + width, y)
 * 4. Render the next glyph
 */
struct PangoGlyphGeometry
{
	/**
	 * the logical width to use for the the character.
	 */
	PangoGlyphUnit width;
	/**
	 * horizontal offset from nominal character position.
	 */
	PangoGlyphUnit xOffset;
	/**
	 * vertical offset from nominal character position.
	 */
	PangoGlyphUnit yOffset;
}

/**
 * A `PangoGlyphInfo` structure represents a single glyph with
 * positioning information and visual attributes.
 */
struct PangoGlyphInfo
{
	/**
	 * the glyph itself.
	 */
	PangoGlyph glyph;
	/**
	 * the positional information about the glyph.
	 */
	PangoGlyphGeometry geometry;
	/**
	 * the visual attributes of the glyph.
	 */
	PangoGlyphVisAttr attr;
}

struct PangoGlyphItem
{
	/**
	 * corresponding `PangoItem`
	 */
	PangoItem* item;
	/**
	 * corresponding `PangoGlyphString`
	 */
	PangoGlyphString* glyphs;
	/**
	 * shift of the baseline, relative to the baseline
	 * of the containing line. Positive values shift upwards
	 */
	int yOffset;
	/**
	 * horizontal displacement to apply before the
	 * glyph item. Positive values shift right
	 */
	int startXOffset;
	/**
	 * horizontal displacement to apply after th
	 * glyph item. Positive values shift right
	 */
	int endXOffset;
}

struct PangoGlyphItemIter
{
	PangoGlyphItem* glyphItem;
	const(char)* text;
	int startGlyph;
	int startIndex;
	int startChar;
	int endGlyph;
	int endIndex;
	int endChar;
}

struct PangoGlyphString
{
	/**
	 * number of glyphs in this glyph string
	 */
	int numGlyphs;
	/**
	 * array of glyph information
	 */
	PangoGlyphInfo* glyphs;
	/**
	 * logical cluster info, indexed by the byte index
	 * within the text corresponding to the glyph string
	 */
	int* logClusters;
	int space;
}

/**
 * A `PangoGlyphVisAttr` structure communicates information between
 * the shaping and rendering phases.
 *
 * Currently, it contains cluster start and color information.
 * More attributes may be added in the future.
 *
 * Clusters are stored in visual order, within the cluster, glyphs
 * are always ordered in logical order, since visual order is meaningless;
 * that is, in Arabic text, accent glyphs follow the glyphs for the
 * base character.
 */
struct PangoGlyphVisAttr
{
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "isClusterStart", 1,
		uint, "isColor", 1,
		uint, "", 30
	));
}

struct PangoItem
{
	/**
	 * byte offset of the start of this item in text.
	 */
	int offset;
	/**
	 * length of this item in bytes.
	 */
	int length;
	/**
	 * number of Unicode characters in the item.
	 */
	int numChars;
	/**
	 * analysis results for the item.
	 */
	PangoAnalysis analysis;
}

struct PangoLanguage;

struct PangoLayout;

struct PangoLayoutClass;

struct PangoLayoutIter;

struct PangoLayoutLine
{
	/**
	 * the layout this line belongs to, might be %NULL
	 */
	PangoLayout* layout;
	/**
	 * start of line as byte index into layout->text
	 */
	int startIndex;
	/**
	 * length of line in bytes
	 */
	int length;
	/**
	 * list of runs in the
	 * line, from left to right
	 */
	GSList* runs;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "isParagraphStart", 1,
		uint, "resolvedDir", 3,
		uint, "", 28
	));
}

/**
 * The `PangoLogAttr` structure stores information about the attributes of a
 * single character.
 */
struct PangoLogAttr
{
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "isLineBreak", 1,
		uint, "isMandatoryBreak", 1,
		uint, "isCharBreak", 1,
		uint, "isWhite", 1,
		uint, "isCursorPosition", 1,
		uint, "isWordStart", 1,
		uint, "isWordEnd", 1,
		uint, "isSentenceBoundary", 1,
		uint, "isSentenceStart", 1,
		uint, "isSentenceEnd", 1,
		uint, "backspaceDeletesCharacter", 1,
		uint, "isExpandableSpace", 1,
		uint, "isWordBoundary", 1,
		uint, "breakInsertsHyphen", 1,
		uint, "breakRemovesPreceding", 1,
		uint, "reserved", 17
	));
}

struct PangoMatrix
{
	/**
	 * 1st component of the transformation matrix
	 */
	double xx;
	/**
	 * 2nd component of the transformation matrix
	 */
	double xy;
	/**
	 * 3rd component of the transformation matrix
	 */
	double yx;
	/**
	 * 4th component of the transformation matrix
	 */
	double yy;
	/**
	 * x translation
	 */
	double x0;
	/**
	 * y translation
	 */
	double y0;
}

/**
 * The `PangoRectangle` structure represents a rectangle.
 *
 * `PangoRectangle` is frequently used to represent the logical or ink
 * extents of a single glyph or section of text. (See, for instance,
 * [method@Pango.Font.get_glyph_extents].)
 */
struct PangoRectangle
{
	/**
	 * X coordinate of the left side of the rectangle.
	 */
	int x;
	/**
	 * Y coordinate of the the top side of the rectangle.
	 */
	int y;
	/**
	 * width of the rectangle.
	 */
	int width;
	/**
	 * height of the rectangle.
	 */
	int height;
}

struct PangoRenderer
{
	GObject parentInstance;
	PangoUnderline underline;
	bool strikethrough;
	int activeCount;
	/**
	 * the current transformation matrix for
	 * the Renderer; may be %NULL, which should be treated the
	 * same as the identity matrix.
	 */
	PangoMatrix* matrix;
	PangoRendererPrivate* priv;
}

/**
 * Class structure for `PangoRenderer`.
 *
 * The following vfuncs take user space coordinates in Pango units
 * and have default implementations:
 * - draw_glyphs
 * - draw_rectangle
 * - draw_error_underline
 * - draw_shape
 * - draw_glyph_item
 *
 * The default draw_shape implementation draws nothing.
 *
 * The following vfuncs take device space coordinates as doubles
 * and must be implemented:
 * - draw_trapezoid
 * - draw_glyph
 *
 * Since: 1.8
 */
struct PangoRendererClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(PangoRenderer* renderer, PangoFont* font, PangoGlyphString* glyphs, int x, int y) drawGlyphs;
	/** */
	extern(C) void function(PangoRenderer* renderer, PangoRenderPart part, int x, int y, int width, int height) drawRectangle;
	/** */
	extern(C) void function(PangoRenderer* renderer, int x, int y, int width, int height) drawErrorUnderline;
	/** */
	extern(C) void function(PangoRenderer* renderer, PangoAttrShape* attr, int x, int y) drawShape;
	/** */
	extern(C) void function(PangoRenderer* renderer, PangoRenderPart part, double y1, double x11, double x21, double y2, double x12, double x22) drawTrapezoid;
	/** */
	extern(C) void function(PangoRenderer* renderer, PangoFont* font, PangoGlyph glyph, double x, double y) drawGlyph;
	/** */
	extern(C) void function(PangoRenderer* renderer, PangoRenderPart part) partChanged;
	/** */
	extern(C) void function(PangoRenderer* renderer) begin;
	/** */
	extern(C) void function(PangoRenderer* renderer) end;
	/** */
	extern(C) void function(PangoRenderer* renderer, PangoLayoutRun* run) prepareRun;
	/** */
	extern(C) void function(PangoRenderer* renderer, const(char)* text, PangoGlyphItem* glyphItem, int x, int y) drawGlyphItem;
	/** */
	extern(C) void function() PangoReserved2;
	/** */
	extern(C) void function() PangoReserved3;
	/** */
	extern(C) void function() PangoReserved4;
}

struct PangoRendererPrivate;

struct PangoScriptIter;

struct PangoTabArray;

struct PangoCairoFontMap;

/**
 * Type of a function that can duplicate user data for an attribute.
 *
 * Params:
 *     userData = user data to copy
 *
 * Returns: new copy of @user_data.
 */
public alias extern(C) void* function(void* userData) PangoAttrDataCopyFunc;

/**
 * Type of a function filtering a list of attributes.
 *
 * Params:
 *     attribute = a Pango attribute
 *     userData = user data passed to the function
 *
 * Returns: %TRUE if the attribute should be selected for
 *     filtering, %FALSE otherwise.
 */
public alias extern(C) int function(PangoAttribute* attribute, void* userData) PangoAttrFilterFunc;

/**
 * Callback used when enumerating fonts in a fontset.
 *
 * See [method@Pango.Fontset.foreach].
 *
 * Params:
 *     fontset = a `PangoFontset`
 *     font = a font from @fontset
 *     userData = callback data
 *
 * Returns: if %TRUE, stop iteration and return immediately.
 *
 * Since: 1.4
 */
public alias extern(C) int function(PangoFontset* fontset, PangoFont* font, void* userData) PangoFontsetForeachFunc;

/**
 * Function type for rendering attributes of type %PANGO_ATTR_SHAPE
 * with Pango's Cairo renderer.
 *
 * Params:
 *     cr = a Cairo context with current point set to where the shape should
 *         be rendered
 *     attr = the %PANGO_ATTR_SHAPE to render
 *     doPath = whether only the shape path should be appended to current
 *         path of @cr and no filling/stroking done.  This will be set
 *         to %TRUE when called from pango_cairo_layout_path() and
 *         pango_cairo_layout_line_path() rendering functions.
 *     data = user data passed to pango_cairo_context_set_shape_renderer()
 */
public alias extern(C) void function(cairo_t* cr, PangoAttrShape* attr, int doPath, void* data) PangoCairoShapeRendererFunc;

enum PANGO_SCALE_XX_SMALL = 0.5787037037037;  /// The scale factor for three shrinking steps (1 / (1.2 * 1.2 * 1.2)).
enum PANGO_SCALE_X_SMALL  = 0.6444444444444;  /// The scale factor for two shrinking steps (1 / (1.2 * 1.2)).
enum PANGO_SCALE_SMALL    = 0.8333333333333;  /// The scale factor for one shrinking step (1 / 1.2).
enum PANGO_SCALE_MEDIUM   = 1.0;              /// The scale factor for normal size (1.0).
enum PANGO_SCALE_LARGE    = 1.2;              /// The scale factor for one magnification step (1.2)
enum PANGO_SCALE_X_LARGE  = 1.4399999999999;  /// The scale factor for two magnification steps (1.2 * 1.2).
enum PANGO_SCALE_XX_LARGE = 1.728;            /// The scale factor for three magnification steps (1.2 * 1.2 * 1.2).


/**
 * Whether the segment should be shifted to center around the baseline.
 *
 * This is mainly used in vertical writing directions.
 */
enum ANALYSIS_FLAG_CENTERED_BASELINE = 1;
alias PANGO_ANALYSIS_FLAG_CENTERED_BASELINE = ANALYSIS_FLAG_CENTERED_BASELINE;

/**
 * Whether this run holds ellipsized text.
 */
enum ANALYSIS_FLAG_IS_ELLIPSIS = 2;
alias PANGO_ANALYSIS_FLAG_IS_ELLIPSIS = ANALYSIS_FLAG_IS_ELLIPSIS;

/**
 * Whether to add a hyphen at the end of the run during shaping.
 */
enum ANALYSIS_FLAG_NEED_HYPHEN = 4;
alias PANGO_ANALYSIS_FLAG_NEED_HYPHEN = ANALYSIS_FLAG_NEED_HYPHEN;

/**
 * Value for @start_index in `PangoAttribute` that indicates
 * the beginning of the text.
 */
enum ATTR_INDEX_FROM_TEXT_BEGINNING = 0;
alias PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING = ATTR_INDEX_FROM_TEXT_BEGINNING;

/**
 * Value for @end_index in `PangoAttribute` that indicates
 * the end of the text.
 */
enum ATTR_INDEX_TO_TEXT_END = 4294967295;
alias PANGO_ATTR_INDEX_TO_TEXT_END = ATTR_INDEX_TO_TEXT_END;

/**
 * A `PangoGlyph` value that indicates a zero-width empty glpyh.
 *
 * This is useful for example in shaper modules, to use as the glyph for
 * various zero-width Unicode characters (those passing [func@is_zero_width]).
 */
enum GLYPH_EMPTY = 268435455;
alias PANGO_GLYPH_EMPTY = GLYPH_EMPTY;

/**
 * A `PangoGlyph` value for invalid input.
 *
 * `PangoLayout` produces one such glyph per invalid input UTF-8 byte and such
 * a glyph is rendered as a crossed box.
 *
 * Note that this value is defined such that it has the %PANGO_GLYPH_UNKNOWN_FLAG
 * set.
 */
enum GLYPH_INVALID_INPUT = 4294967295;
alias PANGO_GLYPH_INVALID_INPUT = GLYPH_INVALID_INPUT;

/**
 * Flag used in `PangoGlyph` to turn a `gunichar` value of a valid Unicode
 * character into an unknown-character glyph for that `gunichar`.
 *
 * Such unknown-character glyphs may be rendered as a 'hex box'.
 */
enum GLYPH_UNKNOWN_FLAG = 268435456;
alias PANGO_GLYPH_UNKNOWN_FLAG = GLYPH_UNKNOWN_FLAG;

/**
 * The scale between dimensions used for Pango distances and device units.
 *
 * The definition of device units is dependent on the output device; it will
 * typically be pixels for a screen, and points for a printer. %PANGO_SCALE is
 * currently 1024, but this may be changed in the future.
 *
 * When setting font sizes, device units are always considered to be
 * points (as in "12 point font"), rather than pixels.
 */
enum SCALE = 1024;
alias PANGO_SCALE = SCALE;

/**
 * The major component of the version of Pango available at compile-time.
 */
enum VERSION_MAJOR = 1;
alias PANGO_VERSION_MAJOR = VERSION_MAJOR;

/**
 * The micro component of the version of Pango available at compile-time.
 */
enum VERSION_MICRO = 7;
alias PANGO_VERSION_MICRO = VERSION_MICRO;

/**
 * The minor component of the version of Pango available at compile-time.
 */
enum VERSION_MINOR = 50;
alias PANGO_VERSION_MINOR = VERSION_MINOR;

/**
 * A string literal containing the version of Pango available at compile-time.
 */
enum VERSION_STRING = "1.50.7";
alias PANGO_VERSION_STRING = VERSION_STRING;
