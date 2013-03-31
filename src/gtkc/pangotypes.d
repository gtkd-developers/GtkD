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

///* The pango Basic Types */
public alias void FcPattern;
public alias void FcCharSet;
public alias void FT_Face;


const int PANGO_SCALE = 1024;
const double PANGO_SCALE_XX_SMALL = 0.5787037037037;	/// The scale factor for three shrinking steps (1 / (1.2 * 1.2 * 1.2)).
const double PANGO_SCALE_X_SMALL  = 0.6444444444444;	/// The scale factor for two shrinking steps (1 / (1.2 * 1.2)).
const double PANGO_SCALE_SMALL    = 0.8333333333333;	/// The scale factor for one shrinking step (1 / 1.2).
const double PANGO_SCALE_MEDIUM   = 1.0;	/// The scale factor for normal size (1.0).
const double PANGO_SCALE_LARGE    = 1.2;	/// The scale factor for one magnification step (1.2)
const double PANGO_SCALE_X_LARGE  = 1.4399999999999;	/// The scale factor for two magnification steps (1.2 * 1.2).
const double PANGO_SCALE_XX_LARGE = 1.728;	/// The scale factor for three magnification steps (1.2 * 1.2 * 1.2).


/**
 * typedef guint32 PangoGlyph;
 * A PangoGlyph represents a single glyph in the output form of a string.
 */
public alias uint PangoGlyph;

/**
 * typedef gint32 PangoGlyphUnit;
 * The PangoGlyphUnit type is used to store dimensions within
 * Pango. Dimensions are stored in 1/PANGO_SCALE of a device unit.
 * (A device unit might be a pixel for screen display, or
 * a point on a printer.) PANGO_SCALE is currently 1024, and
 * may change in the future (unlikely though), but you should not
 * depend on its exact value. The PANGO_PIXELS() macro can be used
 * to convert from glyph units into device units with correct rounding.
 */
public alias int PangoGlyphUnit;

/**
 * typedef PangoGlyphItem PangoLayoutRun;
 * The PangoLayoutRun structure represents a single run within
 * a PangoLayoutLine; it is simply an alternate name for
 * PangoGlyphItem.
 * See the PangoGlyphItem docs for details on the fields.
 */
public alias PangoGlyphItem PangoLayoutRun;
/**
 * The PangoDirection type represents a direction in the
 * Unicode bidirectional algorithm; not every value in this
 * enumeration makes sense for every usage of PangoDirection;
 * for example, the return value of pango_unichar_direction()
 * and pango_find_base_dir() cannot be PANGO_DIRECTION_WEAK_LTR
 * or PANGO_DIRECTION_WEAK_RTL, since every character is either
 * neutral or has a strong direction; on the other hand
 * PANGO_DIRECTION_NEUTRAL doesn't make sense to pass
 * to pango_itemize_with_base_dir().
 * The PANGO_DIRECTION_TTB_LTR, PANGO_DIRECTION_TTB_RTL
 * values come from an earlier interpretation of this
 * enumeration as the writing direction of a block of
 * text and are no longer used; See PangoGravity for how
 * vertical text is handled in Pango.
 * PANGO_DIRECTION_LTR
 * A strong left-to-right direction
 * PANGO_DIRECTION_RTL
 * A strong right-to-left direction
 * PANGO_DIRECTION_TTB_LTR
 * Deprecated value; treated the
 *  same as PANGO_DIRECTION_RTL.
 * PANGO_DIRECTION_TTB_RTL
 * Deprecated value; treated the
 *  same as PANGO_DIRECTION_LTR
 * PANGO_DIRECTION_WEAK_LTR
 * A weak left-to-right direction
 * PANGO_DIRECTION_WEAK_RTL
 * A weak right-to-left direction
 * PANGO_DIRECTION_NEUTRAL
 * No direction specified
 */
public enum PangoDirection
{
	LTR,
	RTL,
	TTB_LTR,
	TTB_RTL,
	WEAK_LTR,
	WEAK_RTL,
	NEUTRAL
}
/**
 * The PangoBidiType type represents the bidirectional character
 * type of a Unicode character as specified by the
 * Unicode bidirectional algorithm.
 * PANGO_BIDI_TYPE_L
 * Left-to-Right
 * PANGO_BIDI_TYPE_LRE
 * Left-to-Right Embedding
 * PANGO_BIDI_TYPE_LRO
 * Left-to-Right Override
 * PANGO_BIDI_TYPE_R
 * Right-to-Left
 * PANGO_BIDI_TYPE_AL
 * Right-to-Left Arabic
 * PANGO_BIDI_TYPE_RLE
 * Right-to-Left Embedding
 * PANGO_BIDI_TYPE_RLO
 * Right-to-Left Override
 * PANGO_BIDI_TYPE_PDF
 * Pop Directional Format
 * PANGO_BIDI_TYPE_EN
 * European Number
 * PANGO_BIDI_TYPE_ES
 * European Number Separator
 * PANGO_BIDI_TYPE_ET
 * European Number Terminator
 * PANGO_BIDI_TYPE_AN
 * Arabic Number
 * PANGO_BIDI_TYPE_CS
 * Common Number Separator
 * PANGO_BIDI_TYPE_NSM
 * Nonspacing Mark
 * PANGO_BIDI_TYPE_BN
 * Boundary Neutral
 * PANGO_BIDI_TYPE_B
 * Paragraph Separator
 * PANGO_BIDI_TYPE_S
 * Segment Separator
 * PANGO_BIDI_TYPE_WS
 * Whitespace
 * PANGO_BIDI_TYPE_ON
 * Other Neutrals
 * Since 1.22
 */
public enum PangoBidiType
{
	TYPE_L,
	TYPE_LRE,
	TYPE_LRO,
	TYPE_R,
	TYPE_AL,
	TYPE_RLE,
	TYPE_RLO,
	/+* Weak types +/
	TYPE_PDF,
	TYPE_EN,
	TYPE_ES,
	TYPE_ET,
	TYPE_AN,
	TYPE_CS,
	TYPE_NSM,
	TYPE_BN,
	/+* Neutral types +/
	TYPE_B,
	TYPE_S,
	TYPE_WS,
	TYPE_ON
}
/**
 * An enumeration specifying the various slant styles possible for a font.
 * PANGO_STYLE_NORMAL
 * the font is upright.
 * PANGO_STYLE_OBLIQUE
 * the font is slanted, but in a roman style.
 * PANGO_STYLE_ITALIC
 * the font is slanted in an italic style.
 */
public enum PangoStyle
{
	NORMAL,
	OBLIQUE,
	ITALIC
}
/**
 * An enumeration specifying the weight (boldness) of a font. This is a numerical
 * value ranging from 100 to 900, but there are some predefined values:
 * PANGO_WEIGHT_THIN
 * the thin weight (= 100; Since: 1.24)
 * PANGO_WEIGHT_ULTRALIGHT
 * the ultralight weight (= 200)
 * PANGO_WEIGHT_LIGHT
 * the light weight (= 300)
 * PANGO_WEIGHT_BOOK
 * the book weight (= 380; Since: 1.24)
 * PANGO_WEIGHT_NORMAL
 * the default weight (= 400)
 * PANGO_WEIGHT_MEDIUM
 * the normal weight (= 500; Since: 1.24)
 * PANGO_WEIGHT_SEMIBOLD
 * the semibold weight (= 600)
 * PANGO_WEIGHT_BOLD
 * the bold weight (= 700)
 * PANGO_WEIGHT_ULTRABOLD
 * the ultrabold weight (= 800)
 * PANGO_WEIGHT_HEAVY
 * the heavy weight (= 900)
 * PANGO_WEIGHT_ULTRAHEAVY
 * the ultraheavy weight (= 1000; Since: 1.24)
 */
public enum PangoWeight
{
	THIN = 100,
	ULTRALIGHT = 200,
	LIGHT = 300,
	BOOK = 380,
	NORMAL = 400,
	MEDIUM = 500,
	SEMIBOLD = 600,
	BOLD = 700,
	ULTRABOLD = 800,
	HEAVY = 900,
	ULTRAHEAVY = 1000
}
/**
 * An enumeration specifying capitalization variant of the font.
 * PANGO_VARIANT_NORMAL
 * A normal font.
 * PANGO_VARIANT_SMALL_CAPS
 * A font with the lower case characters
 *  replaced by smaller variants of the capital characters.
 */
public enum PangoVariant
{
	NORMAL,
	SMALL_CAPS
}
/**
 * An enumeration specifying the width of the font relative to other designs
 * within a family.
 * PANGO_STRETCH_ULTRA_CONDENSED
 * ultra condensed width
 * PANGO_STRETCH_EXTRA_CONDENSED
 * extra condensed width
 * PANGO_STRETCH_CONDENSED
 * condensed width
 * PANGO_STRETCH_SEMI_CONDENSED
 * semi condensed width
 * PANGO_STRETCH_NORMAL
 * the normal width
 * PANGO_STRETCH_SEMI_EXPANDED
 * semi expanded width
 * PANGO_STRETCH_EXPANDED
 * expanded width
 * PANGO_STRETCH_EXTRA_EXPANDED
 * extra expanded width
 * PANGO_STRETCH_ULTRA_EXPANDED
 * ultra expanded width
 */
public enum PangoStretch
{
	ULTRA_CONDENSED,
	EXTRA_CONDENSED,
	CONDENSED,
	SEMI_CONDENSED,
	NORMAL,
	SEMI_EXPANDED,
	EXPANDED,
	EXTRA_EXPANDED,
	ULTRA_EXPANDED
}
/**
 * The bits in a PangoFontMask correspond to fields in a
 * PangoFontDescription that have been set.
 * PANGO_FONT_MASK_FAMILY
 * the font family is specified.
 * PANGO_FONT_MASK_STYLE
 * the font style is specified.
 * PANGO_FONT_MASK_VARIANT
 * the font variant is specified.
 * PANGO_FONT_MASK_WEIGHT
 * the font weight is specified.
 * PANGO_FONT_MASK_STRETCH
 * the font stretch is specified.
 * PANGO_FONT_MASK_SIZE
 * the font size is specified.
 * PANGO_FONT_MASK_GRAVITY
 * the font gravity is specified (Since: 1.16.)
 */
public enum PangoFontMask
{
	FAMILY = 1 << 0,
	STYLE = 1 << 1,
	VARIANT = 1 << 2,
	WEIGHT = 1 << 3,
	STRETCH = 1 << 4,
	SIZE = 1 << 5,
	GRAVITY = 1 << 6
}
/**
 * The PangoAttrType
 * distinguishes between different types of attributes. Along with the
 * predefined values, it is possible to allocate additional values
 * for custom attributes using pango_attr_type_register(). The predefined
 * values are given below. The type of structure used to store the
 * attribute is listed in parentheses after the description.
 * PANGO_ATTR_INVALID
 * does not happen
 * PANGO_ATTR_LANGUAGE
 * language (PangoAttrLanguage)
 * PANGO_ATTR_FAMILY
 * font family name list (PangoAttrString)
 * PANGO_ATTR_STYLE
 * font slant style (PangoAttrInt)
 * PANGO_ATTR_WEIGHT
 * font weight (PangoAttrInt)
 * PANGO_ATTR_VARIANT
 * font variant (normal or small caps) (PangoAttrInt)
 * PANGO_ATTR_STRETCH
 * font stretch (PangoAttrInt)
 * PANGO_ATTR_SIZE
 * font size in points scaled by PANGO_SCALE (PangoAttrInt)
 * PANGO_ATTR_FONT_DESC
 * font description (PangoAttrFontDesc)
 * PANGO_ATTR_FOREGROUND
 * foreground color (PangoAttrColor)
 * PANGO_ATTR_BACKGROUND
 * background color (PangoAttrColor)
 * PANGO_ATTR_UNDERLINE
 * whether the text has an underline (PangoAttrInt)
 * PANGO_ATTR_STRIKETHROUGH
 * whether the text is struck-through (PangoAttrInt)
 * PANGO_ATTR_RISE
 * baseline displacement (PangoAttrInt)
 * PANGO_ATTR_SHAPE
 * shape (PangoAttrShape)
 * PANGO_ATTR_SCALE
 * font size scale factor (PangoAttrFloat)
 * PANGO_ATTR_FALLBACK
 * whether fallback is enabled (PangoAttrInt)
 * PANGO_ATTR_LETTER_SPACING
 * letter spacing (PangoAttrInt)
 * PANGO_ATTR_UNDERLINE_COLOR
 * underline color (PangoAttrColor)
 * PANGO_ATTR_STRIKETHROUGH_COLOR
 * strikethrough color (PangoAttrColor)
 * PANGO_ATTR_ABSOLUTE_SIZE
 * font size in pixels scaled by PANGO_SCALE (PangoAttrInt)
 * PANGO_ATTR_GRAVITY
 * base text gravity (PangoAttrInt)
 * PANGO_ATTR_GRAVITY_HINT
 * gravity hint (PangoAttrInt)
 */
public enum PangoAttrType
{
	INVALID, /+* 0 is an invalid attribute type +/
	LANGUAGE, /+* PangoAttrLanguage +/
	FAMILY, /+* PangoAttrString +/
	STYLE, /+* PangoAttrInt +/
	WEIGHT, /+* PangoAttrInt +/
	VARIANT, /+* PangoAttrInt +/
	STRETCH, /+* PangoAttrInt +/
	SIZE, /+* PangoAttrSize +/
	FONT_DESC, /+* PangoAttrFontDesc +/
	FOREGROUND, /+* PangoAttrColor +/
	BACKGROUND, /+* PangoAttrColor +/
	UNDERLINE, /+* PangoAttrInt +/
	STRIKETHROUGH, /+* PangoAttrInt +/
	RISE, /+* PangoAttrInt +/
	SHAPE, /+* PangoAttrShape +/
	SCALE, /+* PangoAttrFloat +/
	FALLBACK, /+* PangoAttrInt +/
	LETTER_SPACING, /+* PangoAttrInt +/
	UNDERLINE_COLOR, /+* PangoAttrColor +/
	STRIKETHROUGH_COLOR,/+* PangoAttrColor +/
	ABSOLUTE_SIZE, /+* PangoAttrSize +/
	GRAVITY, /+* PangoAttrInt +/
	GRAVITY_HINT /+* PangoAttrInt +/
}
/**
 * the PangoUnderline enumeration is used to specify
 * whether text should be underlined, and if so, the type
 * of underlining.
 * PANGO_UNDERLINE_NONE
 * no underline should be drawn
 * PANGO_UNDERLINE_SINGLE
 * a single underline should be drawn
 * PANGO_UNDERLINE_DOUBLE
 * a double underline should be drawn
 * PANGO_UNDERLINE_LOW
 * a single underline should be drawn at a position
 *  beneath the ink extents of the text being
 *  underlined. This should be used only for underlining
 *  single characters, such as for keyboard
 *  accelerators. PANGO_UNDERLINE_SINGLE should
 *  be used for extended portions of text.
 * PANGO_UNDERLINE_ERROR
 * a wavy underline should be drawn below.
 *  This underline is typically used to indicate
 *  an error such as a possilble mispelling; in some
 *  cases a contrasting color may automatically
 *  be used. This type of underlining is available
 *  since Pango 1.4.
 */
public enum PangoUnderline
{
	NONE,
	SINGLE,
	DOUBLE,
	LOW,
	ERROR
}
/**
 * A PangoTabAlign specifies where a tab stop appears relative to the text.
 * PANGO_TAB_LEFT
 * the tab stop appears to the left of the text.
 */
public enum PangoTabAlign
{
	LEFT
	/+* These are not supported now, but may be inn the
	 * future.
	 *
	 * RIGHT,
	 * CENTER,
	 * NUMERIC
	+/
}
/**
 * A PangoWrapMode describes how to wrap the lines of a PangoLayout to the desired width.
 * PANGO_WRAP_WORD
 * wrap lines at word boundaries.
 * PANGO_WRAP_CHAR
 * wrap lines at character boundaries.
 * PANGO_WRAP_WORD_CHAR
 * wrap lines at word boundaries, but fall back to character boundaries if there is not
 * enough space for a full word.
 */
public enum PangoWrapMode
{
	WORD,
	CHAR,
	WORD_CHAR
}
/**
 * The PangoEllipsizeMode type describes what sort of (if any)
 * ellipsization should be applied to a line of text. In
 * the ellipsization process characters are removed from the
 * text in order to make it fit to a given width and replaced
 * with an ellipsis.
 * PANGO_ELLIPSIZE_NONE
 * No ellipsization
 * PANGO_ELLIPSIZE_START
 * Omit characters at the start of the text
 * PANGO_ELLIPSIZE_MIDDLE
 * Omit characters in the middle of the text
 * PANGO_ELLIPSIZE_END
 * Omit characters at the end of the text
 */
public enum PangoEllipsizeMode
{
	NONE,
	START,
	MIDDLE,
	END
}
/**
 * A PangoAlignment describes how to align the lines of a PangoLayout within the
 * available space. If the PangoLayout is set to justify
 * using pango_layout_set_justify(), this only has effect for partial lines.
 * PANGO_ALIGN_LEFT
 * Put all available space on the right
 * PANGO_ALIGN_CENTER
 * Center the line within the available space
 * PANGO_ALIGN_RIGHT
 * Put all available space on the left
 */
public enum PangoAlignment
{
	LEFT,
	CENTER,
	RIGHT
}
/**
 * The PangoScript enumeration identifies different writing
 * systems. The values correspond to the names as defined in the
 * Unicode standard.
 * Note that new types may be added in the future. Applications should be ready
 * to handle unknown values. This enumeration is interchangeable with
 * GUnicodeScript. See Unicode Standard Annex
 * #24: Script names.
 * PANGO_SCRIPT_INVALID_CODE
 * a value never returned from pango_script_for_unichar()
 * PANGO_SCRIPT_COMMON
 * a character used by multiple different scripts
 * PANGO_SCRIPT_INHERITED
 * a mark glyph that takes its script from the
 *  base glyph to which it is attached
 * PANGO_SCRIPT_ARABIC
 * 	Arabic
 * PANGO_SCRIPT_ARMENIAN
 * Armenian
 * PANGO_SCRIPT_BENGALI
 * 	Bengali
 * PANGO_SCRIPT_BOPOMOFO
 * Bopomofo
 * PANGO_SCRIPT_CHEROKEE
 * 	Cherokee
 * PANGO_SCRIPT_COPTIC
 * 	Coptic
 * PANGO_SCRIPT_CYRILLIC
 * 	Cyrillic
 * PANGO_SCRIPT_DESERET
 * 	Deseret
 * PANGO_SCRIPT_DEVANAGARI
 * 	Devanagari
 * PANGO_SCRIPT_ETHIOPIC
 * 	Ethiopic
 * PANGO_SCRIPT_GEORGIAN
 * 	Georgian
 * PANGO_SCRIPT_GOTHIC
 * 	Gothic
 * PANGO_SCRIPT_GREEK
 * 	Greek
 * PANGO_SCRIPT_GUJARATI
 * 	Gujarati
 * PANGO_SCRIPT_GURMUKHI
 * 	Gurmukhi
 * PANGO_SCRIPT_HAN
 * 	Han
 * PANGO_SCRIPT_HANGUL
 * 	Hangul
 * PANGO_SCRIPT_HEBREW
 * 	Hebrew
 * PANGO_SCRIPT_HIRAGANA
 * 	Hiragana
 * PANGO_SCRIPT_KANNADA
 * 	Kannada
 * PANGO_SCRIPT_KATAKANA
 * 	Katakana
 * PANGO_SCRIPT_KHMER
 * 	Khmer
 * PANGO_SCRIPT_LAO
 * 	Lao
 * PANGO_SCRIPT_LATIN
 * 	Latin
 * PANGO_SCRIPT_MALAYALAM
 * 	Malayalam
 * PANGO_SCRIPT_MONGOLIAN
 * 	Mongolian
 * PANGO_SCRIPT_MYANMAR
 * 	Myanmar
 * PANGO_SCRIPT_OGHAM
 * 	Ogham
 * PANGO_SCRIPT_OLD_ITALIC
 * 	Old Italic
 * PANGO_SCRIPT_ORIYA
 * 	Oriya
 * PANGO_SCRIPT_RUNIC
 * 	Runic
 * PANGO_SCRIPT_SINHALA
 * 	Sinhala
 * PANGO_SCRIPT_SYRIAC
 * 	Syriac
 * PANGO_SCRIPT_TAMIL
 * 	Tamil
 * PANGO_SCRIPT_TELUGU
 * 	Telugu
 * PANGO_SCRIPT_THAANA
 * 	Thaana
 * PANGO_SCRIPT_THAI
 * 	Thai
 * PANGO_SCRIPT_TIBETAN
 * 	Tibetan
 * PANGO_SCRIPT_CANADIAN_ABORIGINAL
 * 	Canadian Aboriginal
 * PANGO_SCRIPT_YI
 * 	Yi
 * PANGO_SCRIPT_TAGALOG
 * 	Tagalog
 * PANGO_SCRIPT_HANUNOO
 * 	Hanunoo
 * PANGO_SCRIPT_BUHID
 * 	Buhid
 * PANGO_SCRIPT_TAGBANWA
 * 	Tagbanwa
 * PANGO_SCRIPT_BRAILLE
 * 	Braille
 * PANGO_SCRIPT_CYPRIOT
 * 	Cypriot
 * PANGO_SCRIPT_LIMBU
 * 	Limbu
 * PANGO_SCRIPT_OSMANYA
 * 	Osmanya
 * PANGO_SCRIPT_SHAVIAN
 * 	Shavian
 * PANGO_SCRIPT_LINEAR_B
 * 	Linear B
 * PANGO_SCRIPT_TAI_LE
 * 	Tai Le
 * PANGO_SCRIPT_UGARITIC
 * 	Ugaritic
 * PANGO_SCRIPT_NEW_TAI_LUE
 * 	New Tai Lue. Since 1.10
 * PANGO_SCRIPT_BUGINESE
 * 	Buginese. Since 1.10
 * PANGO_SCRIPT_GLAGOLITIC
 * 	Glagolitic. Since 1.10
 * PANGO_SCRIPT_TIFINAGH
 * 	Tifinagh. Since 1.10
 * PANGO_SCRIPT_SYLOTI_NAGRI
 * 	Syloti Nagri. Since 1.10
 * PANGO_SCRIPT_OLD_PERSIAN
 * 	Old Persian. Since 1.10
 * PANGO_SCRIPT_KHAROSHTHI
 * 	Kharoshthi. Since 1.10
 * PANGO_SCRIPT_UNKNOWN
 * 		an unassigned code point. Since 1.14
 * PANGO_SCRIPT_BALINESE
 * 		Balinese. Since 1.14
 * PANGO_SCRIPT_CUNEIFORM
 * 	Cuneiform. Since 1.14
 * PANGO_SCRIPT_PHOENICIAN
 * 	Phoenician. Since 1.14
 * PANGO_SCRIPT_PHAGS_PA
 * 		Phags-pa. Since 1.14
 * PANGO_SCRIPT_NKO
 * 		N'Ko. Since 1.14
 * PANGO_SCRIPT_KAYAH_LI
 *  Kayah Li. Since 1.20.1
 * PANGO_SCRIPT_LEPCHA
 *  Lepcha. Since 1.20.1
 * PANGO_SCRIPT_REJANG
 *  Rejang. Since 1.20.1
 * PANGO_SCRIPT_SUNDANESE
 *  Sundanese. Since 1.20.1
 * PANGO_SCRIPT_SAURASHTRA
 * Saurashtra. Since 1.20.1
 * PANGO_SCRIPT_CHAM
 *  Cham. Since 1.20.1
 * PANGO_SCRIPT_OL_CHIKI
 *  Ol Chiki. Since 1.20.1
 * PANGO_SCRIPT_VAI
 *  Vai. Since 1.20.1
 * PANGO_SCRIPT_CARIAN
 *  Carian. Since 1.20.1
 * PANGO_SCRIPT_LYCIAN
 *  Lycian. Since 1.20.1
 * PANGO_SCRIPT_LYDIAN
 *  Lydian. Since 1.20.1
 * PANGO_SCRIPT_BATAK
 *  Batak. Since 1.32
 * PANGO_SCRIPT_BRAHMI
 *  Brahmi. Since 1.32
 * PANGO_SCRIPT_MANDAIC
 *  Mandaic. Since 1.32
 * PANGO_SCRIPT_CHAKMA
 *  Chakma. Since: 1.32
 * PANGO_SCRIPT_MEROITIC_CURSIVE
 *  Meroitic Cursive. Since: 1.32
 * PANGO_SCRIPT_MEROITIC_HIEROGLYPHS
 * Meroitic Hieroglyphs. Since: 1.32
 * PANGO_SCRIPT_MIAO
 *  Miao. Since: 1.32
 * PANGO_SCRIPT_SHARADA
 *  Sharada. Since: 1.32
 * PANGO_SCRIPT_SORA_SOMPENG
 *  Sora Sompeng. Since: 1.32
 * PANGO_SCRIPT_TAKRI
 *  Takri. Since: 1.32
 */
public enum PangoScript
{
	INVALID_CODE = -1,
	COMMON = 0, /+* Zyyy +/
	INHERITED, /+* Qaai +/
	ARABIC, /+* Arab +/
	ARMENIAN, /+* Armn +/
	BENGALI, /+* Beng +/
	BOPOMOFO, /+* Bopo +/
	CHEROKEE, /+* Cher +/
	COPTIC, /+* Qaac +/
	CYRILLIC, /+* Cyrl (Cyrs) +/
	DESERET, /+* Dsrt +/
	DEVANAGARI, /+* Deva +/
	ETHIOPIC, /+* Ethi +/
	GEORGIAN, /+* Geor (Geon, Geoa) +/
	GOTHIC, /+* Goth +/
	GREEK, /+* Grek +/
	GUJARATI, /+* Gujr +/
	GURMUKHI, /+* Guru +/
	HAN, /+* Hani +/
	HANGUL, /+* Hang +/
	HEBREW, /+* Hebr +/
	HIRAGANA, /+* Hira +/
	KANNADA, /+* Knda +/
	KATAKANA, /+* Kana +/
	KHMER, /+* Khmr +/
	LAO, /+* Laoo +/
	LATIN, /+* Latn (Latf, Latg) +/
	MALAYALAM, /+* Mlym +/
	MONGOLIAN, /+* Mong +/
	MYANMAR, /+* Mymr +/
	OGHAM, /+* Ogam +/
	OLD_ITALIC, /+* Ital +/
	ORIYA, /+* Orya +/
	RUNIC, /+* Runr +/
	SINHALA, /+* Sinh +/
	SYRIAC, /+* Syrc (Syrj, Syrn, Syre) +/
	TAMIL, /+* Taml +/
	TELUGU, /+* Telu +/
	THAANA, /+* Thaa +/
	THAI, /+* Thai +/
	TIBETAN, /+* Tibt +/
	CANADIAN_ABORIGINAL, /+* Cans +/
	YI, /+* Yiii +/
	TAGALOG, /+* Tglg +/
	HANUNOO, /+* Hano +/
	BUHID, /+* Buhd +/
	TAGBANWA, /+* Tagb +/
	/+* Unicode-4.0 additions +/
	BRAILLE, /+* Brai +/
	CYPRIOT, /+* Cprt +/
	LIMBU, /+* Limb +/
	OSMANYA, /+* Osma +/
	SHAVIAN, /+* Shaw +/
	LINEAR_B, /+* Linb +/
	TAI_LE, /+* Tale +/
	UGARITIC, /+* Ugar +/
	/+* Unicode-4.1 additions +/
	NEW_TAI_LUE, /+* Talu +/
	BUGINESE, /+* Bugi +/
	GLAGOLITIC, /+* Glag +/
	TIFINAGH, /+* Tfng +/
	SYLOTI_NAGRI, /+* Sylo +/
	OLD_PERSIAN, /+* Xpeo +/
	KHAROSHTHI, /+* Khar +/
	/+* Unicode-5.0 additions +/
	UNKNOWN, /+* Zzzz +/
	BALINESE, /+* Bali +/
	CUNEIFORM, /+* Xsux +/
	PHOENICIAN, /+* Phnx +/
	PHAGS_PA, /+* Phag +/
	NKO, /+* Nkoo +/
	/+* Unicode-5.1 additions +/
	KAYAH_LI, /+* Kali +/
	LEPCHA, /+* Lepc +/
	REJANG, /+* Rjng +/
	SUNDANESE, /+* Sund +/
	SAURASHTRA, /+* Saur +/
	CHAM, /+* Cham +/
	OL_CHIKI, /+* Olck +/
	VAI, /+* Vaii +/
	CARIAN, /+* Cari +/
	LYCIAN, /+* Lyci +/
	LYDIAN, /+* Lydi +/
	/+* Unicode-6.0 additions +/
	BATAK, /+* Batk +/
	BRAHMI, /+* Brah +/
	MANDAIC, /+* Mand +/
	/+* Unicode-6.1 additions +/
	CHAKMA, /+* Cakm +/
	MEROITIC_CURSIVE, /+* Merc +/
	MEROITIC_HIEROGLYPHS,/+* Mero +/
	MIAO, /+* Plrd +/
	SHARADA, /+* Shrd +/
	SORA_SOMPENG, /+* Sora +/
	TAKRI /+* Takr +/
}
/**
 * The PangoGravity type represents the orientation of glyphs in a segment
 * of text. This is useful when rendering vertical text layouts. In
 * those situations, the layout is rotated using a non-identity PangoMatrix,
 * and then glyph orientation is controlled using PangoGravity.
 * Not every value in this enumeration makes sense for every usage of
 * PangoGravity; for example, PANGO_GRAVITY_AUTO only can be passed to
 * pango_context_set_base_gravity() and can only be returned by
 * pango_context_get_base_gravity().
 * See also: PangoGravityHint
 * PANGO_GRAVITY_SOUTH
 * Glyphs stand upright (default)
 * PANGO_GRAVITY_EAST
 * Glyphs are rotated 90 degrees clockwise
 * PANGO_GRAVITY_NORTH
 * Glyphs are upside-down
 * PANGO_GRAVITY_WEST
 * Glyphs are rotated 90 degrees counter-clockwise
 * PANGO_GRAVITY_AUTO
 * Gravity is resolved from the context matrix
 * Since 1.16
 */
public enum PangoGravity
{
	SOUTH,
	EAST,
	NORTH,
	WEST,
	AUTO
}
/**
 * The PangoGravityHint defines how horizontal scripts should behave in a
 * vertical context. That is, English excerpt in a vertical paragraph for
 * example.
 * See PangoGravity.
 * PANGO_GRAVITY_HINT_NATURAL
 * scripts will take their natural gravity based
 * on the base gravity and the script. This is the default.
 * PANGO_GRAVITY_HINT_STRONG
 * always use the base gravity set, regardless of
 * the script.
 * PANGO_GRAVITY_HINT_LINE
 * for scripts not in their natural direction (eg.
 * Latin in East gravity), choose per-script gravity such that every script
 * respects the line progression. This means, Latin and Arabic will take
 * opposite gravities and both flow top-to-bottom for example.
 * Since 1.16
 */
public enum PangoGravityHint
{
	NATURAL,
	STRONG,
	LINE
}
/**
 * PangoRenderPart defines different items to render for such
 * purposes as setting colors.
 * PANGO_RENDER_PART_FOREGROUND
 * the text itself
 * PANGO_RENDER_PART_BACKGROUND
 * the area behind the text
 * PANGO_RENDER_PART_UNDERLINE
 * underlines
 * PANGO_RENDER_PART_STRIKETHROUGH
 * strikethrough lines
 * Since 1.8
 */
public enum PangoRenderPart
{
	FOREGROUND,
	BACKGROUND,
	UNDERLINE,
	STRIKETHROUGH
}
/**
 * Used to indicate how well a font can represent a particular Unicode
 * character point for a particular script.
 * PANGO_COVERAGE_NONE
 * The character is not representable with the font.
 * PANGO_COVERAGE_FALLBACK
 * The character is represented in a way that may be
 *  comprehensible but is not the correct graphical form.
 *  For instance, a Hangul character represented as a
 *  a sequence of Jamos, or a Latin transliteration of
 *  a Cyrillic word.
 * PANGO_COVERAGE_APPROXIMATE
 * The character is represented as basically the correct
 *  graphical form, but with a stylistic variant inappropriate for
 *  the current script.
 * PANGO_COVERAGE_EXACT
 * The character is represented as the correct graphical form.
 */
public enum PangoCoverageLevel
{
	NONE,
	FALLBACK,
	APPROXIMATE,
	EXACT
}

/**
 * Main Gtk struct.
 * The PangoContext structure stores global information
 * used to control the itemization process.
 */
public struct PangoContext{}


/**
 * The PangoItem structure stores information about
 * a segment of text. It contains the following fields:
 */
public struct PangoItem
{
	int offset;
	int length;
	int numChars;
	PangoAnalysis analysis;
}


/**
 * The PangoAnalysis structure stores information about
 * the properties of a segment of text. It has the following
 * fields:
 * PangoEngineShape *shape_engine;
 * the engine for doing rendering-system-dependent processing.
 * PangoEngineLang *lang_engine;
 * the engine for doing rendering-system-independent processing.
 * PangoFont *font;
 * the font for this segment.
 * guint8 level;
 * the bidirectional level for this segment.
 * guint8 gravity;
 * the glyph orientation for this segment (A PangoGravity).
 * guint8 flags;
 * boolean flags for this segment (currently only one) (Since: 1.16).
 * guint8 script;
 * the detected script for this segment (A PangoScript) (Since: 1.18).
 * PangoLanguage *language;
 * the detected language for this segment.
 * GSList *extra_attrs;
 * extra attributes for this segment.
 */
public struct PangoAnalysis
{
	PangoEngineShape *shapeEngine;
	PangoEngineLang *langEngine;
	PangoFont *font;
	ubyte level;
	ubyte gravity; /+* PangoGravity +/
	ubyte flags;
	ubyte script; /+* PangoScript +/
	PangoLanguage *language;
	GSList *extraAttrs;
}


/**
 * The PangoLogAttr structure stores information
 * about the attributes of a single character.
 * guint is_line_break : 1;
 * if set, can break line in front of character
 * guint is_mandatory_break : 1;
 * if set, must break line in front of character
 * guint is_char_break : 1;
 * if set, can break here when doing character wrapping
 * guint is_white : 1;
 * is whitespace character
 * guint is_cursor_position : 1;
 * if set, cursor can appear in front of character.
 * i.e. this is a grapheme boundary, or the first character
 * in the text.
 * This flag implements Unicode's
 * Grapheme
 * Cluster Boundaries semantics.
 * guint is_word_start : 1;
 * is first character in a word
 * guint is_word_end : 1;
 * is first non-word char after a word
 * Note that in degenerate cases, you could have both is_word_start
 * and is_word_end set for some character.
 * guint is_sentence_boundary : 1;
 * is a sentence boundary.
 * There are two ways to divide sentences. The first assigns all
 * inter-sentence whitespace/control/format chars to some sentence,
 * so all chars are in some sentence; is_sentence_boundary denotes
 * the boundaries there. The second way doesn't assign
 * between-sentence spaces, etc. to any sentence, so
 * is_sentence_start/is_sentence_end mark the boundaries
 * of those sentences.
 * guint is_sentence_start : 1;
 * is first character in a sentence
 * guint is_sentence_end : 1;
 * is first char after a sentence.
 * Note that in degenerate cases, you could have both is_sentence_start
 * and is_sentence_end set for some character. (e.g. no space after a
 * period, so the next sentence starts right away)
 * guint backspace_deletes_character : 1;
 * if set, backspace deletes one character
 * rather than the entire grapheme cluster. This
 * field is only meaningful on grapheme
 * boundaries (where is_cursor_position is
 * set). In some languages, the full grapheme
 * (e.g. letter + diacritics) is considered a
 * unit, while in others, each decomposed
 * character in the grapheme is a unit. In the
 * default implementation of pango_break(), this
 * bit is set on all grapheme boundaries except
 * those following Latin, Cyrillic or Greek base
 * characters.
 * guint is_expandable_space : 1;
 * is a whitespace character that can possibly be
 * expanded for justification purposes. (Since: 1.18)
 * guint is_word_boundary : 1;
 * is a word boundary.
 * More specifically, means that this is not a position in the middle
 * of a word. For example, both sides of a punctuation mark are
 * considered word boundaries. This flag is particularly useful when
 * selecting text word-by-word.
 * This flag implements Unicode's
 * Word
 * Boundaries semantics.
 * (Since: 1.22)
 */
public struct PangoLogAttr
{
	uint bitfield0;
	//uint isLineBreak : 1; /+* Can break line inn front of character +/
	//uint isMandatoryBreak : 1; /+* Must break line inn front of character +/
	//uint isCharBreak : 1; /+* Can break here when doing char wrap +/
	//uint isWhite : 1; /+* Whitespace character +/
	/+* Cursor can appear inn front of character (i.e. this is a grapheme
	 * boundary, or the first character inn the text).
	+/
	//uint isCursorPosition : 1;
	/+* Note that inn degenerate cases, you could have both start/end set on
	 * some text, most likely for sentences (e.g. no space after a period, so
	 * the next sentence starts right away).
	+/
	//uint isWordStart : 1; /+* first character inn a word +/
	//uint isWordEnd : 1; /+* is first non-word char after a word +/
	/+* There are two ways to divide sentences. The first assigns all
	 * intersentence whitespace/control/format chars to some sentence,
	 * so all chars are inn some sentence; isSentenceBoundary denotes
	 * the boundaries there. The second way doesn't assign
	 * between-sentence spaces, etc. to any sentence, so
	 * isSentenceStart/isSentenceEnd mark the boundaries of those
	 * sentences.
	+/
	//uint isSentenceBoundary : 1;
	//uint isSentenceStart : 1; /+* first character inn a sentence +/
	//uint isSentenceEnd : 1; /+* first non-sentence char after a sentence +/
	/+* If set, backspace deletes one character rather than
	 * the entire grapheme cluster.
	+/
	//uint backspaceDeletesCharacter : 1;
	/+* Only few space variants (U+0020 and U+00A0) have variable
	 * width during justification.
	+/
	//uint isExpandableSpace : 1;
	/+* Word boundary as defined by UAX#29 +/
	//uint isWordBoundary : 1; /+* is NOT inn the middle of a word +/
}


/**
 * The PangoRectangle structure represents a rectangle. It is frequently
 * used to represent the logical or ink extents of a single glyph or section
 * of text. (See, for instance, pango_font_get_glyph_extents())
 * int x;
 * X coordinate of the left side of the rectangle.
 * int y;
 * Y coordinate of the the top side of the rectangle.
 * int width;
 * width of the rectangle.
 * int height;
 * height of the rectangle.
 */
public struct PangoRectangle
{
	int x;
	int y;
	int width;
	int height;
}


/**
 * Main Gtk struct.
 * A structure specifying a transformation between user-space
 * coordinates and device coordinates. The transformation
 * is given by
 * x_device = x_user * matrix->xx + y_user * matrix->xy + matrix->x0;
 * y_device = x_user * matrix->yx + y_user * matrix->yy + matrix->y0;
 * double xx;
 * 1st component of the transformation matrix
 * double xy;
 * 2nd component of the transformation matrix
 * double yx;
 * 3rd component of the transformation matrix
 * double yy;
 * 4th component of the transformation matrix
 * double x0;
 * x translation
 * double y0;
 * y translation
 * Since 1.6
 */
public struct PangoMatrix
{
	double xx;
	double xy;
	double yx;
	double yy;
	double x0;
	double y0;
}


/**
 * The PangoGlyphInfo structure represents a single glyph together with
 * positioning information and visual attributes.
 * It contains the following fields.
 * PangoGlyph glyph;
 * the glyph itself.
 * PangoGlyphGeometry geometry;
 * the positional information about the glyph.
 * PangoGlyphVisAttr attr;
 * the visual attributes of the glyph.
 */
public struct PangoGlyphInfo
{
	PangoGlyph glyph;
	PangoGlyphGeometry geometry;
	PangoGlyphVisAttr attr;
}


/**
 * The PangoGlyphGeometry structure contains width and positioning
 * information for a single glyph.
 * PangoGlyphUnit width;
 * the logical width to use for the the character.
 * PangoGlyphUnit x_offset;
 * horizontal offset from nominal character position.
 * PangoGlyphUnit y_offset;
 * vertical offset from nominal character position.
 */
public struct PangoGlyphGeometry
{
	PangoGlyphUnit width;
	PangoGlyphUnit xOffset;
	PangoGlyphUnit yOffset;
}


/**
 * The PangoGlyphVisAttr is used to communicate information between
 * the shaping phase and the rendering phase. More attributes may be
 * added in the future.
 * guint is_cluster_start : 1;
 * set for the first logical glyph in each cluster. (Clusters
 * are stored in visual order, within the cluster, glyphs
 * are always ordered in logical order, since visual
 * order is meaningless; that is, in Arabic text, accent glyphs
 * follow the glyphs for the base character.)
 */
public struct PangoGlyphVisAttr
{
	uint bitfield0;
	//uint isClusterStart : 1;
}


/**
 * The PangoGlyphString structure is used to store strings
 * of glyphs with geometry and visual attribute information.
 * The storage for the glyph information is owned
 * by the structure which simplifies memory management.
 */
public struct PangoGlyphString
{
	int numGlyphs;
	PangoGlyphInfo *glyphs;
	/+* This is a memory inefficient way of representing the information
	 * here - each value gives the byte index within the text
	 * corresponding to the glyph string of the start of the cluster to
	 * which the glyph belongs.
	+/
	int *logClusters;
}


/**
 * A PangoGlyphItem is a pair of a PangoItem and the glyphs
 * resulting from shaping the text corresponding to an item.
 * As an example of the usage of PangoGlyphItem, the results
 * of shaping text with PangoLayout is a list of PangoLayoutLine,
 * each of which contains a list of PangoGlyphItem.
 */
public struct PangoGlyphItem
{
	PangoItem *item;
	PangoGlyphString *glyphs;
}


/**
 * A PangoGlyphItemIter is an iterator over the clusters in a
 * PangoGlyphItem. The forward direction of the
 * iterator is the logical direction of text. That is, with increasing
 * start_index and start_char values. If glyph_item is right-to-left
 * (that is, if glyph_item->item->analysis.level is odd),
 * then start_glyph decreases as the iterator moves forward. Moreover,
 * in right-to-left cases, start_glyph is greater than end_glyph.
 * An iterator should be initialized using either of
 * pango_glyph_item_iter_init_start() and
 * pango_glyph_item_iter_init_end(), for forward and backward iteration
 * respectively, and walked over using any desired mixture of
 * pango_glyph_item_iter_next_cluster() and
 * pango_glyph_item_iter_prev_cluster(). A common idiom for doing a
 * forward iteration over the clusters is:
 * PangoGlyphItemIter cluster_iter;
 * gboolean have_cluster;
 * for (have_cluster = pango_glyph_item_iter_init_start (cluster_iter,
 */
public struct PangoGlyphItemIter
{
	PangoGlyphItem *glyphItem;
	char *text;
	int startGlyph;
	int startIndex;
	int startChar;
	int endGlyph;
	int endIndex;
	int endChar;
}


/**
 * The PangoFontDescription structure represents the description
 * of an ideal font. These structures are used both to list
 * what fonts are available on the system and also for specifying
 * the characteristics of a font to load.
 */
public struct PangoFontDescription{}


/**
 * A PangoFontMetrics structure holds the overall metric information
 * for a font (possibly restricted to a script). The fields of this
 * structure are private to implementations of a font backend. See
 * the documentation of the corresponding getters for documentation
 * of their meaning.
 */
public struct PangoFontMetrics
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


/**
 * Main Gtk struct.
 * The PangoFont structure is used to represent
 * a font in a rendering-system-independent matter.
 * To create an implementation of a PangoFont,
 * the rendering-system specific code should allocate
 * a larger structure that contains a nested
 * PangoFont, fill in the klass member of
 * the nested PangoFont with a pointer to
 * a appropriate PangoFontClass, then call
 * pango_font_init() on the structure.
 * The PangoFont structure contains one member
 * which the implementation fills in.
 */
public struct PangoFont{}


/**
 * The PangoFontFamily structure is used to represent a family of related
 * font faces. The faces in a family share a common design, but differ in
 * slant, weight, width and other aspects.
 */
public struct PangoFontFamily{}


/**
 * The PangoFontFace structure is used to represent a group of fonts with
 * the same family, slant, weight, width, but varying sizes.
 */
public struct PangoFontFace{}


/**
 * The PangoFontMap represents the set of fonts available for a
 * particular rendering system. This is a virtual object with
 * implementations being specific to particular rendering systems. To
 * create an implementation of a PangoFontMap, the rendering-system
 * specific code should allocate a larger structure that contains a nested
 * PangoFontMap, fill in the klass member of the nested PangoFontMap with a
 * pointer to a appropriate PangoFontMapClass, then call
 * pango_font_map_init() on the structure.
 * The PangoFontMap structure contains one member which the implementation
 * fills in.
 */
public struct PangoFontMap{}


/**
 * The PangoFontMapClass structure holds the virtual functions for
 * a particular PangoFontMap implementation.
 * GObjectClass parent_class;
 * parent GObjectClass.
 * load_font ()
 * a function to load a font with a given description. See
 * pango_font_map_load_font().
 * list_families ()
 * A function to list available font families. See
 * pango_font_map_list_families().
 * load_fontset ()
 * a function to load a fontset with a given description
 * suitable for a particular language. See
 * pango_font_map_load_fontset().
 * const char *shape_engine_type;
 * the type of rendering-system-dependent engines that
 * can handle fonts of this fonts loaded with this fontmap.
 * get_serial ()
 * a function to get the serial number of the fontmap.
 * See pango_font_map_get_serial().
 * changed ()
 */
public struct PangoFontMapClass
{
	GObjectClass parentClass;
	extern(C) PangoFont * function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc) loadFont;
	extern(C) void function(PangoFontMap* fontmap, PangoFontFamily*** families, int* nFamilies) listFamilies;
	extern(C) PangoFontset * function(PangoFontMap* fontmap, PangoContext* context, PangoFontDescription* desc, PangoLanguage* language) loadFontset;
	char *shapeEngineType;
	extern(C) uint function(PangoFontMap* fontmap) getSerial;
	extern(C) void function(PangoFontMap* fontmap) changed;
}


/**
 * A PangoFontset represents a set of PangoFont to use
 * when rendering text. It is the result of resolving a
 * PangoFontDescription against a particular PangoContext.
 * It has operations for finding the component font for
 * a particular Unicode character, and for finding a composite
 * set of metrics for the entire fontset.
 */
public struct PangoFontset{}


/**
 * The PangoFontsetClass structure holds the virtual functions for
 * a particular PangoFontset implementation.
 * GObjectClass parent_class;
 * parent GObjectClass.
 * get_font ()
 * a function to get the font in the fontset that contains the
 * best glyph for the given Unicode character; see pango_fontset_get_font().
 * get_metrics ()
 * a function to get overall metric information for the fonts
 * in the fontset; see pango_fontset_get_metrics().
 * get_language ()
 * a function to get the language of the fontset.
 * foreach ()
 * a function to loop over the fonts in the fontset. See
 * pango_fontset_foreach().
 */
public struct PangoFontsetClass
{
	GObjectClass parentClass;
	extern(C) PangoFont * function(PangoFontset* fontset, uint wc) getFont;
	extern(C) PangoFontMetrics * function(PangoFontset* fontset) getMetrics;
	extern(C) PangoLanguage * function(PangoFontset* fontset) getLanguage;
	extern(C) void function(PangoFontset* fontset, PangoFontsetForeachFunc func, void* data) foreac;
}


/**
 * PangoFontsetSimple is a implementation of the abstract
 * PangoFontset base class in terms of an array of fonts,
 * which the creator provides when constructing the
 * PangoFontsetSimple.
 */
public struct PangoFontsetSimple{}


/**
 * The PangoAttrClass structure stores the type and operations for
 * a particular type of attribute. The functions in this structure should
 * not be called directly. Instead, one should use the wrapper functions
 * provided for PangoAttribute.
 * PangoAttrType type;
 * the type ID for this attribute
 * copy ()
 * function to duplicate an attribute of this type (see pango_attribute_copy())
 * destroy ()
 * function to free an attribute of this type (see pango_attribute_destroy())
 * equal ()
 * function to check two attributes of this type for equality (see pango_attribute_equal())
 */
public struct PangoAttrClass
{
	PangoAttrType type;
	extern(C) PangoAttribute * function(PangoAttribute* attr) copy;
	extern(C) void function(PangoAttribute* attr) destroy;
	extern(C) int function(PangoAttribute* attr1, PangoAttribute* attr2) equal;
}


/**
 * Main Gtk struct.
 * The PangoAttribute structure represents the common portions of all
 * attributes. Particular types of attributes include this structure
 * as their initial portion. The common portion of the attribute holds
 * the range to which the value in the type-specific part of the attribute
 * applies and should be initialized using pango_attribute_init().
 * By default an attribute will have an all-inclusive range of [0,G_MAXUINT].
 * const PangoAttrClass *klass;
 * the class structure holding information about the type of the attribute
 * guint start_index;
 * the start index of the range (in bytes).
 * guint end_index;
 * end index of the range (in bytes). The character at this index
 * is not included in the range.
 */
public struct PangoAttribute
{
	PangoAttrClass *klass;
	uint startIndex; /+* inn bytes +/
	uint endIndex; /+* inn bytes. The character at this index is not included +/
}


/**
 * The PangoAttrString structure is used to represent attributes with
 * a string value.
 * PangoAttribute attr;
 * the common portion of the attribute
 * char *value;
 * the string which is the value of the attribute
 */
public struct PangoAttrString
{
	PangoAttribute attr;
	char *value;
}


/**
 * The PangoAttrLanguage structure is used to represent attributes that
 * are languages.
 * PangoAttribute attr;
 * the common portion of the attribute
 * PangoLanguage *value;
 * the PangoLanguage which is the value of the attribute
 */
public struct PangoAttrLanguage
{
	PangoAttribute attr;
	PangoLanguage *value;
}


/**
 * The PangoAttrColor structure is used to represent attributes that
 * are colors.
 * PangoAttribute attr;
 * the common portion of the attribute
 * PangoColor color;
 * the PangoColor which is the value of the attribute
 */
public struct PangoAttrColor
{
	PangoAttribute attr;
	PangoColor color;
}


/**
 * The PangoAttrInt structure is used to represent attributes with
 * an integer or enumeration value.
 * PangoAttribute attr;
 * the common portion of the attribute
 * int value;
 * the value of the attribute
 */
public struct PangoAttrInt
{
	PangoAttribute attr;
	int value;
}


/**
 * The PangoAttrFloat structure is used to represent attributes with
 * a float or double value.
 * PangoAttribute attr;
 * the common portion of the attribute
 * double value;
 * the value of the attribute
 */
public struct PangoAttrFloat
{
	PangoAttribute attr;
	double value;
}


/**
 * The PangoAttrFontDesc structure is used to store an attribute that
 * sets all aspects of the font description at once.
 * PangoAttribute attr;
 * the common portion of the attribute
 * PangoFontDescription *desc;
 * the font description which is the value of this attribute
 */
public struct PangoAttrFontDesc
{
	PangoAttribute attr;
	PangoFontDescription *desc;
}


/**
 * The PangoAttrShape structure is used to represent attributes which
 * impose shape restrictions.
 * PangoAttribute attr;
 * the common portion of the attribute
 * PangoRectangle ink_rect;
 * the ink rectangle to restrict to
 * PangoRectangle logical_rect;
 * the logical rectangle to restrict to
 * gpointer data;
 * user data set (see pango_attr_shape_new_with_data())
 * PangoAttrDataCopyFunc copy_func;
 * copy function for the user data
 * GDestroyNotify destroy_func;
 * destroy function for the user data
 */
public struct PangoAttrShape
{
	PangoAttribute attr;
	PangoRectangle inkRect;
	PangoRectangle logicalRect;
	void* data;
	PangoAttrDataCopyFunc copyFunc;
	GDestroyNotify destroyFunc;
}


/**
 * The PangoAttrShape structure is used to represent attributes which
 * set font size.
 * PangoAttribute attr;
 * the common portion of the attribute
 * int size;
 * size of font, in units of 1/PANGO_SCALE of a point (for
 * PANGO_ATTR_SIZE) or of a device uni (for PANGO_ATTR_ABSOLUTE_SIZE)
 * guint absolute : 1;
 * whether the font size is in device units or points.
 * This field is only present for compatibility with Pango-1.8.0
 * (PANGO_ATTR_ABSOLUTE_SIZE was added in 1.8.1); and always will
 * be FALSE for PANGO_ATTR_SIZE and TRUE for PANGO_ATTR_ABSOLUTE_SIZE.
 */
public struct PangoAttrSize
{
	PangoAttribute attr;
	int size;
	uint bitfield0;
	//uint absolute : 1;
}


/**
 * The PangoColor structure is used to
 * represent a color in an uncalibrated RGB color-space.
 */
public struct PangoColor
{
	ushort red;
	ushort green;
	ushort blue;
}


/**
 * The PangoAttrList structure represents a list of attributes
 * that apply to a section of text. The attributes are, in general,
 * allowed to overlap in an arbitrary fashion, however, if the
 * attributes are manipulated only through pango_attr_list_change(),
 * the overlap between properties will meet stricter criteria.
 * Since the PangoAttrList structure is stored as a linear list,
 * it is not suitable for storing attributes for large amounts
 * of text. In general, you should not use a single PangoAttrList
 * for more than one paragraph of text.
 */
public struct PangoAttrList{}


/**
 * The PangoAttrIterator structure is used to represent an
 * iterator through a PangoAttrList. A new iterator is created
 * with pango_attr_list_get_iterator(). Once the iterator
 * is created, it can be advanced through the style changes
 * in the text using pango_attr_iterator_next(). At each
 * style change, the range of the current style segment and the
 * attributes currently in effect can be queried.
 */
public struct PangoAttrIterator{}


/**
 * Main Gtk struct.
 * A PangoTabArray struct contains an array
 * of tab stops. Each tab stop has an alignment and a position.
 */
public struct PangoTabArray{}


/**
 * Main Gtk struct.
 * The PangoLayout structure represents an entire paragraph
 * of text. It is initialized with a PangoContext, UTF-8 string
 * and set of attributes for that string. Once that is done, the
 * set of formatted lines can be extracted from the object,
 * the layout can be rendered, and conversion between logical
 * character positions within the layout's text, and the physical
 * position of the resulting glyphs can be made.
 * There are also a number of parameters to adjust the formatting
 * of a PangoLayout, which are illustrated in Figure 1, “Adjustable parameters for a PangoLayout”.
 * It is possible, as well, to ignore the 2-D setup, and simply
 * treat the results of a PangoLayout as a list of lines.
 * Figure 1. Adjustable parameters for a PangoLayout
 * The PangoLayout structure is opaque, and has no user-visible
 * fields.
 */
public struct PangoLayout{}


/**
 * A PangoLayoutIter structure can be used to
 * iterate over the visual extents of a PangoLayout.
 * The PangoLayoutIter structure is opaque, and
 * has no user-visible fields.
 */
public struct PangoLayoutIter{}


/**
 * The PangoLayoutLine structure represents one of the lines resulting
 * from laying out a paragraph via PangoLayout. PangoLayoutLine
 * structures are obtained by calling pango_layout_get_line() and
 * are only valid until the text, attributes, or settings of the
 * parent PangoLayout are modified.
 * Routines for rendering PangoLayout objects are provided in
 * code specific to each rendering system.
 */
public struct PangoLayoutLine
{
	PangoLayout *layout;
	int startIndex; /+* start of line as byte index into layout->text +/
	int length; /+* length of line inn bytes +/
	GSList *runs;
	uint bitfield0;
	//uint isParagraphStart : 1; /+* TRUE if this is the first line of the paragraph +/
	//uint resolvedDir : 3; /+* Resolved PangoDirection of line +/
}


/**
 * A PangoScriptIter is used to iterate through a string
 * and identify ranges in different scripts.
 */
public struct PangoScriptIter{}


/**
 * The PangoLanguage structure is used to
 * represent a language.
 * PangoLanguage pointers can be efficiently
 * copied and compared with each other.
 */
public struct PangoLanguage{}


/**
 * PangoCairoFont is an interface exported by fonts for
 * use with Cairo. The actual type of the font will depend
 * on the particular font technology Cairo was compiled to use.
 * Since 1.18
 */
public struct PangoCairoFont{}


/**
 * PangoCairoFontMap is an interface exported by font maps for
 * use with Cairo. The actual type of the font map will depend
 * on the particular font technology Cairo was compiled to use.
 * Since 1.10
 */
public struct PangoCairoFontMap{}


/**
 * Main Gtk struct.
 * PangoRenderer is a base class for objects that are used to
 * render Pango objects such as PangoGlyphString and
 * PangoLayout.
 * PangoMatrix *matrix;
 * the current transformation matrix for the Renderer; may
 * be NULL, which should be treated the same as the identity matrix.
 * Since 1.8
 */
public struct PangoRenderer
{
	PangoMatrix *matrix; /+* May be NULL +/
}


/**
 * Class structure for PangoRenderer.
 * draw_glyphs ()
 * draws a PangoGlyphString
 * draw_rectangle ()
 * draws a rectangle
 * draw_error_underline ()
 * draws a squiggly line that approximately
 * covers the given rectangle in the style of an underline used to
 * indicate a spelling error.
 * draw_shape ()
 * draw content for a glyph shaped with PangoAttrShape.
 * x, y are the coordinates of the left edge of the baseline,
 * in user coordinates.
 * draw_trapezoid ()
 * draws a trapezoidal filled area
 * draw_glyph ()
 * draws a single glyph
 * part_changed ()
 * do renderer specific processing when rendering
 * attributes change
 * begin ()
 * Do renderer-specific initialization before drawing
 * end ()
 * Do renderer-specific cleanup after drawing
 * prepare_run ()
 * updates the renderer for a new run
 * draw_glyph_item ()
 * draws a PangoGlyphItem
 * Since 1.8
 */
public struct PangoRendererClass
{
	/+* All of the following have defaulx implementations
	 * and take as coordinates user coordinates inn Pango units
	+/
	extern(C) void function(PangoRenderer* renderer, PangoFont* font, PangoGlyphString* glyphs, int x, int y) drawGlyphs;
	extern(C) void function(PangoRenderer* renderer, PangoRenderPart part, int x, int y, int width, int height) drawRectangle;
	extern(C) void function(PangoRenderer* renderer, int x, int y, int width, int height) drawErrorUnderline;
	/+* Nothing is drawn for shaped glyphs unless this is implemented +/
	extern(C) void function(PangoRenderer* renderer, PangoAttrShape* attr, int x, int y) drawShape;
	/+* These two must be implemented and take coordinates inn
	 * device space as doubles.
	+/
	extern(C) void function(PangoRenderer* renderer, PangoRenderPart part, double y1_, double x11, double x21, double y2, double x12, double x22) drawTrapezoid;
	extern(C) void function(PangoRenderer* renderer, PangoFont* font, PangoGlyph glyph, double x, double y) drawGlyph;
	/+* Notification of change inn rendering attributes
	+/
	extern(C) void function(PangoRenderer* renderer, PangoRenderPart part) partChanged;
	/+* Paired around drawing operations
	+/
	extern(C) void function(PangoRenderer* renderer) begin;
	extern(C) void function(PangoRenderer* renderer) end;
	/+* Hooks into the details of layout rendering
	+/
	extern(C) void function(PangoRenderer* renderer, PangoLayoutRun* run) prepareRun;
	/+* All of the following have defaulx implementations
	 * and take as coordinates user coordinates inn Pango units
	+/
	extern(C) void function(PangoRenderer* renderer, char* text, PangoGlyphItem* glyphItem, int x, int y) drawGlyphItem;
}


/**
 * Main Gtk struct.
 * The PangoCoverage structure represents a map from Unicode characters
 * to PangoCoverageLevel. It is an opaque structure with no public fields.
 */
public struct PangoCoverage{}


/**
 * The PangoEngineInfo structure contains information about a particular
 * engine. It contains the following fields:
 * const gchar *id;
 * a unique string ID for the engine.
 * const gchar *engine_type;
 * a string identifying the engine type.
 * const gchar *render_type;
 * a string identifying the render type.
 * PangoEngineScriptInfo *scripts;
 * array of scripts this engine supports.
 * gint n_scripts;
 * number of items in scripts.
 */
public struct PangoEngineInfo
{
	char *id;
	char *engineType;
	char *renderType;
	PangoEngineScriptInfo *scripts;
	int nScripts;
}


/**
 * The PangoEngineScriptInfo structure contains
 * information about how the shaper covers a particular
 * script.
 * PangoScript script;
 * a PangoScript. The value PANGO_SCRIPT_COMMON has
 * the special meaning here of "all scripts"
 * const gchar *langs;
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
public struct PangoEngineScriptInfo
{
	PangoScript script;
	char *langs;
}


/**
 * Main Gtk struct.
 * PangoEngine is the base class for all types of language and
 * script specific engines. It has no functionality by itself.
 */
public struct PangoEngine{}


/**
 * Class structure for PangoEngine
 */
public struct PangoEngineClass{}


/**
 * Main Gtk struct.
 * The PangoEngineLang class is implemented by engines that
 * customize the rendering-system independent part of the
 * Pango pipeline for a particular script or language. For
 * instance, a custom PangoEngineLang could be provided for
 * Thai to implement the dictionary-based word boundary
 * lookups needed for that language.
 */
public struct PangoEngineLang{}


/**
 * Class structure for PangoEngineLang
 * script_break ()
 * Provides a custom implementation of pango_break().
 * If NULL, pango_default_break() is used instead. If not NULL, for
 * Pango versions before 1.16 (module interface version before 1.6.0),
 * this was called instead of pango_default_break(), but in newer versions,
 * pango_default_break() is always called and this is called after that to
 * allow tailoring the breaking results.
 */
public struct PangoEngineLangClass
{
	extern(C) void function(PangoEngineLang* engine, char* text, int len, PangoAnalysis* analysis, PangoLogAttr* attrs, int attrsLen) scriptBreak;
}


/**
 * Main Gtk struct.
 * The PangoEngineShape class is implemented by engines that
 * customize the rendering-system dependent part of the
 * Pango pipeline for a particular script or language.
 * A PangoEngineShape implementation is then specific to both
 * a particular rendering system or group of rendering systems
 * and to a particular script. For instance, there is one
 * PangoEngineShape implementation to handle shaping Arabic
 * for Fontconfig-based backends.
 */
public struct PangoEngineShape{}


/**
 * Class structure for PangoEngineShape
 * script_shape ()
 * Given a font, a piece of text, and a PangoAnalysis
 * structure, converts characters to glyphs and positions the
 * resulting glyphs. The results are stored in the PangoGlyphString
 * that is passed in. (The implementation should resize it
 * appropriately using pango_glyph_string_set_size()). All fields
 * of the log_clusters and glyphs array must be filled in, with
 * the exception that Pango will automatically generate
 * glyphs->glyphs[i].attr.is_cluster_start
 * using the log_clusters array. Each input character must occur in one
 * of the output logical clusters;
 * if no rendering is desired for a character, this may involve
 * inserting glyphs with the PangoGlyph ID PANGO_GLYPH_EMPTY, which
 * is guaranteed never to render. If the shaping fails for any reason,
 * the shaper should return with an empty (zero-size) glyph string.
 * If the shaper has not set the size on the glyph string yet, simply
 * returning signals the failure too.
 * covers ()
 * Returns the characters that this engine can cover
 * with a given font for a given language. If not overridden, the default
 * implementation simply returns the coverage information for the
 * font itself unmodified.
 */
public struct PangoEngineShapeClass
{
	extern(C) void function(PangoEngineShape* engine, PangoFont* font, char* itemText, uint itemLength, PangoAnalysis* analysis, PangoGlyphString* glyphs, char* paragraphText, uint paragraphLength) scriptShape;
	extern(C) PangoCoverageLevel function(PangoEngineShape* engine, PangoFont* font, PangoLanguage* language, gunichar wc) covers;
}


/*
 * Converts a dimension to device units by rounding.
 * d :
 * a dimension in Pango units.
 * Returns :
 * rounded dimension in device units.
 */
// TODO
// #define PANGO_PIXELS(d) (((int)(d) + 512) >> 10)

/*
 * Converts a dimension to device units by flooring.
 * d :
 * a dimension in Pango units.
 * Returns :
 * floored dimension in device units.
 * Since 1.14
 */
// TODO
// #define PANGO_PIXELS_FLOOR(d) (((int)(d)) >> 10)

/*
 * Converts a dimension to device units by ceiling.
 * d :
 * a dimension in Pango units.
 * Returns :
 * ceiled dimension in device units.
 * Since 1.14
 */
// TODO
// #define PANGO_PIXELS_CEIL(d) (((int)(d) + 1023) >> 10)

/*
 * Rounds a dimension to whole device units, but does not
 * convert it to device units.
 * d :
 * a dimension in Pango units.
 * Returns :
 * rounded dimension in Pango units.
 * Since 1.18
 */
// TODO
// #define PANGO_UNITS_ROUND(d)

/*
 * Extracts the ascent from a PangoRectangle
 * representing glyph extents. The ascent is the distance from the
 * baseline to the highest point of the character. This is positive if the
 * glyph ascends above the baseline.
 * rect :
 * a PangoRectangle
 */
// TODO
// #define PANGO_ASCENT(rect) (-(rect).y)

/*
 * Extracts the descent from a PangoRectangle
 * representing glyph extents. The descent is the distance from the
 * baseline to the lowest point of the character. This is positive if the
 * glyph descends below the baseline.
 * rect :
 * a PangoRectangle
 */
// TODO
// #define PANGO_DESCENT(rect) ((rect).y + (rect).height)

/*
 * Extracts the left bearing from a PangoRectangle
 * representing glyph extents. The left bearing is the distance from the
 * horizontal origin to the farthest left point of the character.
 * This is positive for characters drawn completely to the right of the
 * glyph origin.
 * rect :
 * a PangoRectangle
 */
// TODO
// #define PANGO_LBEARING(rect) ((rect).x)

/*
 * Extracts the right bearing from a PangoRectangle
 * representing glyph extents. The right bearing is the distance from the
 * horizontal origin to the farthest right point of the character.
 * This is positive except for characters drawn completely to the left of the
 * horizontal origin.
 * rect :
 * a PangoRectangle
 */
// TODO
// #define PANGO_RBEARING(rect) ((rect).x + (rect).width)

/*
 * Returns a PangoGlyph value that means no glyph was found for wc.
 * The way this unknown glyphs are rendered is backend specific. For example,
 * a box with the hexadecimal Unicode code-point of the character written in it
 * is what is done in the most common backends.
 * wc :
 * a Unicode character
 */
// TODO
// #define PANGO_GET_UNKNOWN_GLYPH(wc) ((PangoGlyph)(wc)|PANGO_GLYPH_UNKNOWN_FLAG)

/*
 * Casts a GObject to a PangoFont.
 * object :
 * a GObject.
 */
// TODO
// #define PANGO_FONT(object) (G_TYPE_CHECK_INSTANCE_CAST ((object), PANGO_TYPE_FONT, PangoFont))

/*
 * Returns TRUE if object is a PangoFont.
 * object :
 * a GObject.
 */
// TODO
// #define PANGO_IS_FONT(object) (G_TYPE_CHECK_INSTANCE_TYPE ((object), PANGO_TYPE_FONT))

/*
 * Casts a GObject to a PangoFontFamily.
 * object :
 * a GObject.
 */
// TODO
// #define PANGO_FONT_FAMILY(object) (G_TYPE_CHECK_INSTANCE_CAST ((object), PANGO_TYPE_FONT_FAMILY, PangoFontFamily))

/*
 * Returns TRUE if object is a PangoFontFamily.
 * object :
 * a GObject.
 */
// TODO
// #define PANGO_IS_FONT_FAMILY(object) (G_TYPE_CHECK_INSTANCE_TYPE ((object), PANGO_TYPE_FONT_FAMILY))

/*
 * Casts a GObject to a PangoFontFace.
 * object :
 * a GObject.
 */
// TODO
// #define PANGO_FONT_FACE(object) (G_TYPE_CHECK_INSTANCE_CAST ((object), PANGO_TYPE_FONT_FACE, PangoFontFace))

/*
 * Returns TRUE if object is a PangoFontFace.
 * object :
 * a GObject.
 */
// TODO
// #define PANGO_IS_FONT_FACE(object) (G_TYPE_CHECK_INSTANCE_TYPE ((object), PANGO_TYPE_FONT_FACE))

/*
 * Casts a GObject to a PangoFontMap.
 * object :
 * a GObject.
 */
// TODO
// #define PANGO_FONT_MAP(object) (G_TYPE_CHECK_INSTANCE_CAST ((object), PANGO_TYPE_FONT_MAP, PangoFontMap))

/*
 * Returns TRUE if object is a PangoFontMap.
 * object :
 * a GObject.
 */
// TODO
// #define PANGO_IS_FONT_MAP(object) (G_TYPE_CHECK_INSTANCE_TYPE ((object), PANGO_TYPE_FONT_MAP))

/*
 * Casts a GObject to a PangoFontMapClass.
 * klass :
 * a GObject.
 */
// TODO
// #define PANGO_FONT_MAP_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), PANGO_TYPE_FONT_MAP, PangoFontMapClass))

/*
 * Returns TRUE if klass is a subtype of PangoFontMapClass.
 * klass :
 * a GObject.
 */
// TODO
// #define PANGO_IS_FONT_MAP_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), PANGO_TYPE_FONT_MAP))

/*
 * Returns the type of a PangoFontMap.
 * obj :
 * a PangoFontMap.
 */
// TODO
// #define PANGO_FONT_MAP_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), PANGO_TYPE_FONT_MAP, PangoFontMapClass))

/*
 * Whether a PangoGravity represents a gravity that results in reversal of text direction.
 * gravity :
 * the PangoGravity to check
 * Returns :
 * TRUE if gravity is PANGO_GRAVITY_WEST or PANGO_GRAVITY_NORTH,
 * FALSE otherwise.
 * Since 1.32
 */
// TODO
// #define PANGO_GRAVITY_IS_IMPROPER(gravity)

/*
 * Whether a PangoGravity represents vertical writing directions.
 * gravity :
 * the PangoGravity to check
 * Returns :
 * TRUE if gravity is PANGO_GRAVITY_EAST or PANGO_GRAVITY_WEST,
 * FALSE otherwise.
 * Since 1.16
 */
// TODO
// #define PANGO_GRAVITY_IS_VERTICAL(gravity)

/*
 * Outputs the necessary code for GObject type registration for a
 * PangoEngineLang class defined in a module. Two static symbols
 * are defined.
 *  static GType prefix_type;
 *  static void prefix_register_type (GTypeModule module);
 * The prefix_register_type()
 * function should be called in your script_engine_init() function for
 * each type that your module implements, and then your script_engine_create()
 * function can create instances of the object as follows:
 * $(DDOC_COMMENT example)
 * name :
 * Name of the the type to register (for example:, ArabicEngineFc
 * prefix :
 * Prefix for symbols that will be defined (for example:, arabic_engine_fc
 * class_init :
 * Class initialization function for the new type, or NULL
 * instance_init :
 * Instance initialization function for the new type, or NULL
 */
// TODO
// #define PANGO_ENGINE_LANG_DEFINE_TYPE(name, prefix, class_init, instance_init)

/*
 * Outputs the necessary code for GObject type registration for a
 * PangoEngineShape class defined in a module. Two static symbols
 * are defined.
 *  static GType prefix_type;
 *  static void prefix_register_type (GTypeModule module);
 * The prefix_register_type()
 * function should be called in your script_engine_init() function for
 * each type that your module implements, and then your script_engine_create()
 * function can create instances of the object as follows:
 * $(DDOC_COMMENT example)
 * name :
 * Name of the the type to register (for example:, ArabicEngineFc
 * prefix :
 * Prefix for symbols that will be defined (for example:, arabic_engine_fc
 * class_init :
 * Class initialization function for the new type, or NULL
 * instance_init :
 * Instance initialization function for the new type, or NULL
 */
// TODO
// #define PANGO_ENGINE_SHAPE_DEFINE_TYPE(name, prefix, class_init, instance_init)

/*
 * This macro encodes the given Pango version into an integer. The numbers
 * returned by PANGO_VERSION and pango_version() are encoded using this macro.
 * Two encoded version numbers can be compared as integers.
 * major :
 * the major component of the version number
 * minor :
 * the minor component of the version number
 * micro :
 * the micro component of the version number
 */
// TODO
// #define PANGO_VERSION_ENCODE(major, minor, micro)

/*
 * Checks that the version of Pango available at compile-time is not older than
 * the provided version number.
 * major :
 * the major component of the version number
 * minor :
 * the minor component of the version number
 * micro :
 * the micro component of the version number
 */
// TODO
// #define PANGO_VERSION_CHECK(major,minor,micro)

/*
 * A callback function used by pango_fontset_foreach() when enumerating
 * the fonts in a fontset.
 * fontset :
 * a PangoFontset
 * font :
 * a font from fontset
 * user_data :
 * callback data
 * Returns :
 * if TRUE, stop iteration and return immediately.
 * Since 1.4
 */
// gboolean (*PangoFontsetForeachFunc) (PangoFontset *fontset,  PangoFont *font,  gpointer user_data);
public alias extern(C) int function(PangoFontset* fontset, PangoFont* font, void* userData) PangoFontsetForeachFunc;

/*
 * Type of a function that can duplicate user data for an attribute.
 * A copy function passed to attribute new functions that take
 * user data.
 * user_data :
 * user data to copy
 * Returns :
 * new copy of user_data.
 */
// gpointer (*PangoAttrDataCopyFunc) (gconstpointer user_data);
public alias extern(C) void* function(void* userData) PangoAttrDataCopyFunc;

/*
 * Type of a function filtering a list of attributes.
 * A predicate function used by pango_attr_list_filter()
 * to filter out a subset of attributes for a list.
 * attribute :
 * a Pango attribute
 * user_data :
 * user data passed to the function
 * Returns :
 * TRUE if the attribute should be kept, FALSE if it should be
 * filtered out.
 */
// gboolean (*PangoAttrFilterFunc) (PangoAttribute *attribute,  gpointer user_data);
public alias extern(C) int function(PangoAttribute* attribute, void* userData) PangoAttrFilterFunc;

/*
 * Function type for rendering attributes of type PANGO_ATTR_SHAPE
 * with Pango's Cairo renderer.
 * cr :
 * a Cairo context with current point set to where the shape should
 * be rendered
 * attr :
 * the PANGO_ATTR_SHAPE to render
 * do_path :
 * whether only the shape path should be appended to current
 * path of cr and no filling/stroking done. This will be set
 * to TRUE when called from pango_cairo_layout_path() and
 * pango_cairo_layout_line_path() rendering functions.
 * data :
 * user data passed to pango_cairo_context_set_shape_renderer()
 */
// void (*PangoCairoShapeRendererFunc) (cairo_t *cr,  PangoAttrShape *attr,  gboolean do_path,  gpointer data);
public alias extern(C) void function(cairo_t* cr, PangoAttrShape* attr, int doPath, void* data) PangoCairoShapeRendererFunc;
