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


module gtkc.pangotypes;

public import gtkc.cairotypes;
public import gtkc.glibtypes;
public import gtkc.gobjecttypes;

alias void* FTLibrary;

/**
 * A #PangoGlyph represents a single glyph in the output form of a string.
 */
public alias uint PangoGlyph;

/**
 * The #PangoGlyphUnit type is used to store dimensions within
 * Pango. Dimensions are stored in 1/%PANGO_SCALE of a device unit.
 * (A device unit might be a pixel for screen display, or
 * a point on a printer.) %PANGO_SCALE is currently 1024, and
 * may change in the future (unlikely though), but you should not
 * depend on its exact value. The PANGO_PIXELS() macro can be used
 * to convert from glyph units into device units with correct rounding.
 */
public alias int PangoGlyphUnit;

/**
 * The #PangoLayoutRun structure represents a single run within
 * a #PangoLayoutLine; it is simply an alternate name for
 * #PangoGlyphItem.
 * See the #PangoGlyphItem docs for details on the fields.
 */
public alias PangoGlyphItem PangoLayoutRun;

/**
 * A #PangoAlignment describes how to align the lines of a #PangoLayout within the
 * available space. If the #PangoLayout is set to justify
 * using pango_layout_set_justify(), this only has effect for partial lines.
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
 * The #PangoAttrType
 * distinguishes between different types of attributes. Along with the
 * predefined values, it is possible to allocate additional values
 * for custom attributes using pango_attr_type_register(). The predefined
 * values are given below. The type of structure used to store the
 * attribute is listed in parentheses after the description.
 */
public enum PangoAttrType
{
	/**
	 * does not happen
	 */
	INVALID = 0,
	/**
	 * language (#PangoAttrLanguage)
	 */
	LANGUAGE = 1,
	/**
	 * font family name list (#PangoAttrString)
	 */
	FAMILY = 2,
	/**
	 * font slant style (#PangoAttrInt)
	 */
	STYLE = 3,
	/**
	 * font weight (#PangoAttrInt)
	 */
	WEIGHT = 4,
	/**
	 * font variant (normal or small caps) (#PangoAttrInt)
	 */
	VARIANT = 5,
	/**
	 * font stretch (#PangoAttrInt)
	 */
	STRETCH = 6,
	/**
	 * font size in points scaled by %PANGO_SCALE (#PangoAttrInt)
	 */
	SIZE = 7,
	/**
	 * font description (#PangoAttrFontDesc)
	 */
	FONT_DESC = 8,
	/**
	 * foreground color (#PangoAttrColor)
	 */
	FOREGROUND = 9,
	/**
	 * background color (#PangoAttrColor)
	 */
	BACKGROUND = 10,
	/**
	 * whether the text has an underline (#PangoAttrInt)
	 */
	UNDERLINE = 11,
	/**
	 * whether the text is struck-through (#PangoAttrInt)
	 */
	STRIKETHROUGH = 12,
	/**
	 * baseline displacement (#PangoAttrInt)
	 */
	RISE = 13,
	/**
	 * shape (#PangoAttrShape)
	 */
	SHAPE = 14,
	/**
	 * font size scale factor (#PangoAttrFloat)
	 */
	SCALE = 15,
	/**
	 * whether fallback is enabled (#PangoAttrInt)
	 */
	FALLBACK = 16,
	/**
	 * letter spacing (#PangoAttrInt)
	 */
	LETTER_SPACING = 17,
	/**
	 * underline color (#PangoAttrColor)
	 */
	UNDERLINE_COLOR = 18,
	/**
	 * strikethrough color (#PangoAttrColor)
	 */
	STRIKETHROUGH_COLOR = 19,
	/**
	 * font size in pixels scaled by %PANGO_SCALE (#PangoAttrInt)
	 */
	ABSOLUTE_SIZE = 20,
	/**
	 * base text gravity (#PangoAttrInt)
	 */
	GRAVITY = 21,
	/**
	 * gravity hint (#PangoAttrInt)
	 */
	GRAVITY_HINT = 22,
	/**
	 * OpenType font features (#PangoAttrString). Since 1.38
	 */
	FONT_FEATURES = 23,
	/**
	 * foreground alpha (#PangoAttrInt). Since 1.38
	 */
	FOREGROUND_ALPHA = 24,
	/**
	 * background alpha (#PangoAttrInt). Since 1.38
	 */
	BACKGROUND_ALPHA = 25,
}

/**
 * The #PangoBidiType type represents the bidirectional character
 * type of a Unicode character as specified by the
 * <ulink url="http://www.unicode.org/reports/tr9/">Unicode bidirectional algorithm</ulink>.
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
}

/**
 * Used to indicate how well a font can represent a particular Unicode
 * character point for a particular script.
 */
public enum PangoCoverageLevel
{
	/**
	 * The character is not representable with the font.
	 */
	NONE = 0,
	/**
	 * The character is represented in a way that may be
	 * comprehensible but is not the correct graphical form.
	 * For instance, a Hangul character represented as a
	 * a sequence of Jamos, or a Latin transliteration of a Cyrillic word.
	 */
	FALLBACK = 1,
	/**
	 * The character is represented as basically the correct
	 * graphical form, but with a stylistic variant inappropriate for
	 * the current script.
	 */
	APPROXIMATE = 2,
	/**
	 * The character is represented as the correct graphical form.
	 */
	EXACT = 3,
}

/**
 * The #PangoDirection type represents a direction in the
 * Unicode bidirectional algorithm; not every value in this
 * enumeration makes sense for every usage of #PangoDirection;
 * for example, the return value of pango_unichar_direction()
 * and pango_find_base_dir() cannot be %PANGO_DIRECTION_WEAK_LTR
 * or %PANGO_DIRECTION_WEAK_RTL, since every character is either
 * neutral or has a strong direction; on the other hand
 * %PANGO_DIRECTION_NEUTRAL doesn't make sense to pass
 * to pango_itemize_with_base_dir().
 *
 * The %PANGO_DIRECTION_TTB_LTR, %PANGO_DIRECTION_TTB_RTL
 * values come from an earlier interpretation of this
 * enumeration as the writing direction of a block of
 * text and are no longer used; See #PangoGravity for how
 * vertical text is handled in Pango.
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
	 * same as %PANGO_DIRECTION_RTL.
	 */
	TTB_LTR = 2,
	/**
	 * Deprecated value; treated the
	 * same as %PANGO_DIRECTION_LTR
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
 * The #PangoEllipsizeMode type describes what sort of (if any)
 * ellipsization should be applied to a line of text. In
 * the ellipsization process characters are removed from the
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
 * The bits in a #PangoFontMask correspond to fields in a
 * #PangoFontDescription that have been set.
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
}

/**
 * The #PangoGravity type represents the orientation of glyphs in a segment
 * of text.  This is useful when rendering vertical text layouts.  In
 * those situations, the layout is rotated using a non-identity PangoMatrix,
 * and then glyph orientation is controlled using #PangoGravity.
 * Not every value in this enumeration makes sense for every usage of
 * #PangoGravity; for example, %PANGO_GRAVITY_AUTO only can be passed to
 * pango_context_set_base_gravity() and can only be returned by
 * pango_context_get_base_gravity().
 *
 * See also: #PangoGravityHint
 *
 * Since: 1.16
 */
public enum PangoGravity
{
	/**
	 * Glyphs stand upright (default)
	 */
	SOUTH = 0,
	/**
	 * Glyphs are rotated 90 degrees clockwise
	 */
	EAST = 1,
	/**
	 * Glyphs are upside-down
	 */
	NORTH = 2,
	/**
	 * Glyphs are rotated 90 degrees counter-clockwise
	 */
	WEST = 3,
	/**
	 * Gravity is resolved from the context matrix
	 */
	AUTO = 4,
}

/**
 * The #PangoGravityHint defines how horizontal scripts should behave in a
 * vertical context.  That is, English excerpt in a vertical paragraph for
 * example.
 *
 * See #PangoGravity.
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
	 * respects the line progression.  This means, Latin and Arabic will take
	 * opposite gravities and both flow top-to-bottom for example.
	 */
	LINE = 2,
}

/**
 * #PangoRenderPart defines different items to render for such
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
}

/**
 * The #PangoScript enumeration identifies different writing
 * systems. The values correspond to the names as defined in the
 * Unicode standard.
 * Note that new types may be added in the future. Applications should be ready
 * to handle unknown values.  This enumeration is interchangeable with
 * #GUnicodeScript.  See <ulink
 * url="http://www.unicode.org/reports/tr24/">Unicode Standard Annex
 * #24: Script names</ulink>.
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
 * A #PangoTabAlign specifies where a tab stop appears relative to the text.
 */
public enum PangoTabAlign
{
	/**
	 * the tab stop appears to the left of the text.
	 */
	LEFT = 0,
}

/**
 * The #PangoUnderline enumeration is used to specify
 * whether text should be underlined, and if so, the type
 * of underlining.
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
	 * a single underline should be drawn at a position
	 * beneath the ink extents of the text being
	 * underlined. This should be used only for underlining
	 * single characters, such as for keyboard
	 * accelerators. %PANGO_UNDERLINE_SINGLE should
	 * be used for extended portions of text.
	 */
	LOW = 3,
	/**
	 * a wavy underline should be drawn below.
	 * This underline is typically used to indicate
	 * an error such as a possilble mispelling; in some
	 * cases a contrasting color may automatically
	 * be used. This type of underlining is available since Pango 1.4.
	 */
	ERROR = 4,
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
}

/**
 * An enumeration specifying the weight (boldness) of a font. This is a numerical
 * value ranging from 100 to 1000, but there are some predefined values:
 */
public enum PangoWeight
{
	/**
	 * the thin weight (= 100; Since: 1.24)
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
	 * the semilight weight (= 350; Since: 1.36.7)
	 */
	SEMILIGHT = 350,
	/**
	 * the book weight (= 380; Since: 1.24)
	 */
	BOOK = 380,
	/**
	 * the default weight (= 400)
	 */
	NORMAL = 400,
	/**
	 * the normal weight (= 500; Since: 1.24)
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
	 * the ultraheavy weight (= 1000; Since: 1.24)
	 */
	ULTRAHEAVY = 1000,
}

/**
 * A #PangoWrapMode describes how to wrap the lines of a #PangoLayout to the desired width.
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
	 * wrap lines at word boundaries, but fall back to character boundaries if there is not
	 * enough space for a full word.
	 */
	WORD_CHAR = 2,
}

struct PangoFcFontMap
{
	PangoFontMap parentInstance;
	void* priv;
}

struct PangoCairoFont;

struct PangoCairoFontMap;


/**
 * The #PangoAnalysis structure stores information about
 * the properties of a segment of text.
 */
struct PangoAnalysis
{
	/**
	 * the engine for doing rendering-system-dependent processing.
	 */
	PangoEngineShape* shapeEngine;
	/**
	 * the engine for doing rendering-system-independent processing.
	 */
	PangoEngineLang* langEngine;
	/**
	 * the font for this segment.
	 */
	PangoFont* font;
	/**
	 * the bidirectional level for this segment.
	 */
	ubyte level;
	/**
	 * the glyph orientation for this segment (A #PangoGravity).
	 */
	ubyte gravity;
	/**
	 * boolean flags for this segment (currently only one) (Since: 1.16).
	 */
	ubyte flags;
	/**
	 * the detected script for this segment (A #PangoScript) (Since: 1.18).
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
 * The #PangoAttrClass structure stores the type and operations for
 * a particular type of attribute. The functions in this structure should
 * not be called directly. Instead, one should use the wrapper functions
 * provided for #PangoAttribute.
 */
struct PangoAttrClass
{
	/**
	 * the type ID for this attribute
	 */
	PangoAttrType type;
	extern(C) PangoAttribute* function(PangoAttribute* attr) copy;
	extern(C) void function(PangoAttribute* attr) destroy;
	extern(C) int function(PangoAttribute* attr1, PangoAttribute* attr2) equal;
}

/**
 * The #PangoAttrColor structure is used to represent attributes that
 * are colors.
 */
struct PangoAttrColor
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * the #PangoColor which is the value of the attribute
	 */
	PangoColor color;
}

/**
 * The #PangoAttrFloat structure is used to represent attributes with
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
 * The #PangoAttrFontDesc structure is used to store an attribute that
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
 * The #PangoAttrFontFeatures structure is used to represent OpenType
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
	 * the featues, as a string in CSS syntax
	 */
	char* features;
}

/**
 * The #PangoAttrInt structure is used to represent attributes with
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
 * The #PangoAttrLanguage structure is used to represent attributes that
 * are languages.
 */
struct PangoAttrLanguage
{
	/**
	 * the common portion of the attribute
	 */
	PangoAttribute attr;
	/**
	 * the #PangoLanguage which is the value of the attribute
	 */
	PangoLanguage* value;
}

struct PangoAttrList;

/**
 * The #PangoAttrShape structure is used to represent attributes which
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
	 * user data set (see pango_attr_shape_new_with_data())
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
 * The #PangoAttrSize structure is used to represent attributes which
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
	 * %PANGO_ATTR_SIZE) or of a device uni (for %PANGO_ATTR_ABSOLUTE_SIZE)
	 */
	int size;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "absolute", 1,
		uint, "", 31
	));
}

/**
 * The #PangoAttrString structure is used to represent attributes with
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

struct PangoEngine
{
	GObject parentInstance;
}

/**
 * Class structure for #PangoEngine
 */
struct PangoEngineClass
{
	GObjectClass parentClass;
}

/**
 * The #PangoEngineInfo structure contains information about a particular
 * engine. It contains the following fields:
 */
struct PangoEngineInfo
{
	/**
	 * a unique string ID for the engine.
	 */
	const(char)* id;
	/**
	 * a string identifying the engine type.
	 */
	const(char)* engineType;
	/**
	 * a string identifying the render type.
	 */
	const(char)* renderType;
	/**
	 * array of scripts this engine supports.
	 */
	PangoEngineScriptInfo* scripts;
	/**
	 * number of items in @scripts.
	 */
	int nScripts;
}

struct PangoEngineLang
{
	PangoEngine parentInstance;
}

/**
 * Class structure for #PangoEngineLang
 */
struct PangoEngineLangClass
{
	PangoEngineClass parentClass;
	extern(C) void function(PangoEngineLang* engine, const(char)* text, int len, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen) scriptBreak;
}

/**
 * The #PangoEngineScriptInfo structure contains
 * information about how the shaper covers a particular script.
 */
struct PangoEngineScriptInfo
{
	/**
	 * a #PangoScript. The value %PANGO_SCRIPT_COMMON has
	 * the special meaning here of "all scripts"
	 */
	PangoScript script;
	/**
	 * a semicolon separated list of languages that this
	 * engine handles for this script. This may be empty,
	 * in which case the engine is saying that it is a
	 * fallback choice for all languages for this range,
	 * but should not be used if another engine
	 * indicates that it is specific for the language for
	 * a given code point. An entry in this list of "*"
	 * indicates that this engine is specific to all
	 * languages for this range.
	 */
	const(char)* langs;
}

struct PangoEngineShape
{
	PangoEngine parentInstance;
}

/**
 * Class structure for #PangoEngineShape
 */
struct PangoEngineShapeClass
{
	PangoEngineClass parentClass;
	extern(C) void function(PangoEngineShape* engine, PangoFont* font, const(char)* itemText, uint itemLength, PangoAnalysis* analysis, PangoGlyphString* glyphs, const(char)* paragraphText, uint paragraphLength) scriptShape;
	extern(C) PangoCoverageLevel function(PangoEngineShape* engine, PangoFont* font, PangoLanguage* language, dchar wc) covers;
}

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
	 *     font = a #PangoFont
	 * Return: a newly-allocated #PangoFontDescription object.
	 */
	extern(C) PangoFontDescription* function(PangoFont* font) describe;
	/**
	 *
	 * Params:
	 *     font = a #PangoFont
	 * Return: a newly-allocated #PangoCoverage
	 *     object.
	 */
	extern(C) PangoCoverage* function(PangoFont* font, PangoLanguage* lang) getCoverage;
	/**
	 *
	 * Params:
	 *     font = a #PangoFont
	 *     ch = a Unicode character.
	 * Return: the best matching shaper.
	 */
	extern(C) PangoEngineShape* function(PangoFont* font, PangoLanguage* lang, uint ch) findShaper;
	extern(C) void function(PangoFont* font, PangoGlyph glyph, PangoRectangle* inkRect, PangoRectangle* logicalRect) getGlyphExtents;
	/**
	 *
	 * Params:
	 *     font = a #PangoFont
	 *     language = language tag used to determine which script to get the metrics
	 *         for, or %NULL to indicate to get the metrics for the entire font.
	 * Return: a #PangoFontMetrics object. The caller must call pango_font_metrics_unref()
	 *     when finished using the object.
	 */
	extern(C) PangoFontMetrics* function(PangoFont* font, PangoLanguage* language) getMetrics;
	/**
	 *
	 * Params:
	 *     font = a #PangoFont, or %NULL
	 * Return: the #PangoFontMap for the
	 *     font, or %NULL if @font is %NULL.
	 */
	extern(C) PangoFontMap* function(PangoFont* font) getFontMap;
	extern(C) PangoFontDescription* function(PangoFont* font) describeAbsolute;
	extern(C) void function() PangoReserved1;
	extern(C) void function() PangoReserved2;
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
	 *     face = a #PangoFontFace.
	 * Return: the face name for the face. This string is
	 *     owned by the face object and must not be modified or freed.
	 */
	extern(C) const(char)* function(PangoFontFace* face) getFaceName;
	/**
	 *
	 * Params:
	 *     face = a #PangoFontFace
	 * Return: a newly-created #PangoFontDescription structure
	 *     holding the description of the face. Use pango_font_description_free()
	 *     to free the result.
	 */
	extern(C) PangoFontDescription* function(PangoFontFace* face) describe;
	extern(C) void function(PangoFontFace* face, int** sizes, int* nSizes) listSizes;
	/**
	 *
	 * Params:
	 *     face = a #PangoFontFace
	 * Return: whether @face is synthesized.
	 */
	extern(C) int function(PangoFontFace* face) isSynthesized;
	extern(C) void function() PangoReserved3;
	extern(C) void function() PangoReserved4;
}

struct PangoFontFamily
{
	GObject parentInstance;
}

struct PangoFontFamilyClass
{
	GObjectClass parentClass;
	extern(C) void function(PangoFontFamily* family, PangoFontFace*** faces, int* nFaces) listFaces;
	/**
	 *
	 * Params:
	 *     family = a #PangoFontFamily
	 * Return: the name of the family. This string is owned
	 *     by the family object and must not be modified or freed.
	 */
	extern(C) const(char)* function(PangoFontFamily* family) getName;
	/**
	 *
	 * Params:
	 *     family = a #PangoFontFamily
	 * Return: %TRUE if the family is monospace.
	 */
	extern(C) int function(PangoFontFamily* family) isMonospace;
	extern(C) void function() PangoReserved2;
	extern(C) void function() PangoReserved3;
	extern(C) void function() PangoReserved4;
}

struct PangoFontMap
{
	GObject parentInstance;
}

/**
 * The #PangoFontMapClass structure holds the virtual functions for
 * a particular #PangoFontMap implementation.
 */
struct PangoFontMapClass
{
	/**
	 * parent #GObjectClass.
	 */
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     fontmap = a #PangoFontMap
	 *     context = the #PangoContext the font will be used with
	 *     desc = a #PangoFontDescription describing the font to load
	 * Return: the newly allocated #PangoFont
	 *     loaded, or %NULL if no font matched.
	 */
	extern(C) PangoFont* function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc) loadFont;
	extern(C) void function(PangoFontMap* fontmap, PangoFontFamily*** families, int* nFamilies) listFamilies;
	/**
	 *
	 * Params:
	 *     fontmap = a #PangoFontMap
	 *     context = the #PangoContext the font will be used with
	 *     desc = a #PangoFontDescription describing the font to load
	 *     language = a #PangoLanguage the fonts will be used for
	 * Return: the newly allocated
	 *     #PangoFontset loaded, or %NULL if no font matched.
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
	 *     fontmap = a #PangoFontMap
	 * Return: The current serial number of @fontmap.
	 */
	extern(C) uint function(PangoFontMap* fontmap) getSerial;
	extern(C) void function(PangoFontMap* fontmap) changed;
	extern(C) void function() PangoReserved1;
	extern(C) void function() PangoReserved2;
}

struct PangoFontMetrics
{
	uint refCount;
	int ascent;
	int descent;
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
 * The #PangoFontsetClass structure holds the virtual functions for
 * a particular #PangoFontset implementation.
 */
struct PangoFontsetClass
{
	/**
	 * parent #GObjectClass.
	 */
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     fontset = a #PangoFontset
	 *     wc = a Unicode character
	 * Return: a #PangoFont. The caller must call
	 *     g_object_unref when finished with the font.
	 */
	extern(C) PangoFont* function(PangoFontset* fontset, uint wc) getFont;
	/**
	 *
	 * Params:
	 *     fontset = a #PangoFontset
	 * Return: a #PangoFontMetrics object. The caller must call pango_font_metrics_unref()
	 *     when finished using the object.
	 */
	extern(C) PangoFontMetrics* function(PangoFontset* fontset) getMetrics;
	extern(C) PangoLanguage* function(PangoFontset* fontset) getLanguage;
	extern(C) void function(PangoFontset* fontset, PangoFontsetForeachFunc func, void* data) foreac;
	extern(C) void function() PangoReserved1;
	extern(C) void function() PangoReserved2;
	extern(C) void function() PangoReserved3;
	extern(C) void function() PangoReserved4;
}

struct PangoFontsetSimple;

struct PangoFontsetSimpleClass;

/**
 * The #PangoGlyphGeometry structure contains width and positioning
 * information for a single glyph.
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
 * The #PangoGlyphInfo structure represents a single glyph together with
 * positioning information and visual attributes.
 * It contains the following fields.
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
	 * corresponding #PangoItem.
	 */
	PangoItem* item;
	/**
	 * corresponding #PangoGlyphString.
	 */
	PangoGlyphString* glyphs;
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
	 * number of the glyphs in this glyph string.
	 */
	int numGlyphs;
	/**
	 * array of glyph information
	 * for the glyph string.
	 */
	PangoGlyphInfo* glyphs;
	/**
	 * logical cluster info, indexed by the byte index
	 * within the text corresponding to the glyph string.
	 */
	int* logClusters;
	int space;
}

/**
 * The PangoGlyphVisAttr is used to communicate information between
 * the shaping phase and the rendering phase.  More attributes may be
 * added in the future.
 */
struct PangoGlyphVisAttr
{
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "isClusterStart", 1,
		uint, "", 31
	));
}

/**
 * The #PangoIncludedModule structure for a statically linked module
 * contains the functions that would otherwise be loaded from a dynamically
 * loaded module.
 */
struct PangoIncludedModule
{
	extern(C) void function(PangoEngineInfo** engines, int* nEngines) list;
	extern(C) void function(GTypeModule* modul) init;
	extern(C) void function() exit;
	extern(C) PangoEngine* function(const(char)* id) create;
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
 * The #PangoLogAttr structure stores information
 * about the attributes of a single character.
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
		uint, "", 19
	));
}

struct PangoMap;

struct PangoMapEntry;

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
 * The #PangoRectangle structure represents a rectangle. It is frequently
 * used to represent the logical or ink extents of a single glyph or section
 * of text. (See, for instance, pango_font_get_glyph_extents())
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
 * Class structure for #PangoRenderer.
 *
 * Since: 1.8
 */
struct PangoRendererClass
{
	GObjectClass parentClass;
	extern(C) void function(PangoRenderer* renderer, PangoFont* font, PangoGlyphString* glyphs, int x, int y) drawGlyphs;
	extern(C) void function(PangoRenderer* renderer, PangoRenderPart part, int x, int y, int width, int height) drawRectangle;
	extern(C) void function(PangoRenderer* renderer, int x, int y, int width, int height) drawErrorUnderline;
	extern(C) void function(PangoRenderer* renderer, PangoAttrShape* attr, int x, int y) drawShape;
	extern(C) void function(PangoRenderer* renderer, PangoRenderPart part, double y1, double x11, double x21, double y2, double x12, double x22) drawTrapezoid;
	extern(C) void function(PangoRenderer* renderer, PangoFont* font, PangoGlyph glyph, double x, double y) drawGlyph;
	extern(C) void function(PangoRenderer* renderer, PangoRenderPart part) partChanged;
	extern(C) void function(PangoRenderer* renderer) begin;
	extern(C) void function(PangoRenderer* renderer) end;
	extern(C) void function(PangoRenderer* renderer, PangoLayoutRun* run) prepareRun;
	extern(C) void function(PangoRenderer* renderer, const(char)* text, PangoGlyphItem* glyphItem, int x, int y) drawGlyphItem;
	extern(C) void function() PangoReserved2;
	extern(C) void function() PangoReserved3;
	extern(C) void function() PangoReserved4;
}

struct PangoRendererPrivate;

struct PangoScriptForLang
{
	char[7] lang;
	PangoScript[3] scripts;
}

struct PangoScriptIter;

struct PangoTabArray;

struct PangoCairoFcFontMap
{
	PangoFcFontMap parentInstance;
	uint serial;
	double dpi;
	FTLibrary library;
}

/**
 * Type of a function that can duplicate user data for an attribute.
 *
 * Params:
 *     userData = user data to copy
 *
 * Return: new copy of @user_data.
 */
public alias extern(C) void* function(void* userData) PangoAttrDataCopyFunc;

/**
 * Type of a function filtering a list of attributes.
 *
 * Params:
 *     attribute = a Pango attribute
 *     userData = user data passed to the function
 *
 * Return: %TRUE if the attribute should be selected for
 *     filtering, %FALSE otherwise.
 */
public alias extern(C) int function(PangoAttribute* attribute, void* userData) PangoAttrFilterFunc;

/**
 * A callback function used by pango_fontset_foreach() when enumerating
 * the fonts in a fontset.
 *
 * Params:
 *     fontset = a #PangoFontset
 *     font = a font from @fontset
 *     userData = callback data
 *
 * Return: if %TRUE, stop iteration and return immediately.
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

const int PANGO_SCALE = 1024;
const double PANGO_SCALE_XX_SMALL = 0.5787037037037;	/// The scale factor for three shrinking steps (1 / (1.2 * 1.2 * 1.2)).
const double PANGO_SCALE_X_SMALL  = 0.6444444444444;	/// The scale factor for two shrinking steps (1 / (1.2 * 1.2)).
const double PANGO_SCALE_SMALL    = 0.8333333333333;	/// The scale factor for one shrinking step (1 / 1.2).
const double PANGO_SCALE_MEDIUM   = 1.0;	/// The scale factor for normal size (1.0).
const double PANGO_SCALE_LARGE    = 1.2;	/// The scale factor for one magnification step (1.2)
const double PANGO_SCALE_X_LARGE  = 1.4399999999999;	/// The scale factor for two magnification steps (1.2 * 1.2).
const double PANGO_SCALE_XX_LARGE = 1.728;	/// The scale factor for three magnification steps (1.2 * 1.2 * 1.2).

