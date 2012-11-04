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

/*
 * Conversion parameters:
 * inFile  = glib-Unicode-Manipulation.html
 * outPack = glib
 * outFile = Unicode
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Unicode
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Unicode;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;




/**
 * Description
 * This section describes a number of functions for dealing with
 * Unicode characters and strings. There are analogues of the
 * traditional ctype.h character classification
 * and case conversion functions, UTF-8 analogues of some string utility
 * functions, functions to perform normalization, case conversion and
 * collation on UTF-8 strings and finally functions to convert between
 * the UTF-8, UTF-16 and UCS-4 encodings of Unicode.
 * The implementations of the Unicode functions in GLib are based
 * on the Unicode Character Data tables, which are available from
 * www.unicode.org.
 * GLib 2.8 supports Unicode 4.0, GLib 2.10 supports Unicode 4.1,
 * GLib 2.12 supports Unicode 5.0, GLib 2.16.3 supports Unicode 5.1,
 * GLib 2.30 supports Unicode 6.0.
 */
public class Unicode
{
	
	/**
	 */
	
	/**
	 * Checks whether ch is a valid Unicode character. Some possible
	 * integer values of ch will not be valid. 0 is considered a valid
	 * character, though it's normally a string terminator.
	 * Params:
	 * ch = a Unicode character
	 * Returns: TRUE if ch is a valid Unicode character
	 */
	public static int unicharValidate(gunichar ch)
	{
		// gboolean g_unichar_validate (gunichar ch);
		return g_unichar_validate(ch);
	}
	
	/**
	 * Determines whether a character is alphanumeric.
	 * Given some UTF-8 text, obtain a character value
	 * with g_utf8_get_char().
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is an alphanumeric character
	 */
	public static int unicharIsalnum(gunichar c)
	{
		// gboolean g_unichar_isalnum (gunichar c);
		return g_unichar_isalnum(c);
	}
	
	/**
	 * Determines whether a character is alphabetic (i.e. a letter).
	 * Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is an alphabetic character
	 */
	public static int unicharIsalpha(gunichar c)
	{
		// gboolean g_unichar_isalpha (gunichar c);
		return g_unichar_isalpha(c);
	}
	
	/**
	 * Determines whether a character is a control character.
	 * Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is a control character
	 */
	public static int unicharIscntrl(gunichar c)
	{
		// gboolean g_unichar_iscntrl (gunichar c);
		return g_unichar_iscntrl(c);
	}
	
	/**
	 * Determines if a given character is assigned in the Unicode
	 * standard.
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if the character has an assigned value
	 */
	public static int unicharIsdefined(gunichar c)
	{
		// gboolean g_unichar_isdefined (gunichar c);
		return g_unichar_isdefined(c);
	}
	
	/**
	 * Determines whether a character is numeric (i.e. a digit). This
	 * covers ASCII 0-9 and also digits in other languages/scripts. Given
	 * some UTF-8 text, obtain a character value with g_utf8_get_char().
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is a digit
	 */
	public static int unicharIsdigit(gunichar c)
	{
		// gboolean g_unichar_isdigit (gunichar c);
		return g_unichar_isdigit(c);
	}
	
	/**
	 * Determines whether a character is printable and not a space
	 * (returns FALSE for control characters, format characters, and
	 * spaces). g_unichar_isprint() is similar, but returns TRUE for
	 * spaces. Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is printable unless it's a space
	 */
	public static int unicharIsgraph(gunichar c)
	{
		// gboolean g_unichar_isgraph (gunichar c);
		return g_unichar_isgraph(c);
	}
	
	/**
	 * Determines whether a character is a lowercase letter.
	 * Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is a lowercase letter
	 */
	public static int unicharIslower(gunichar c)
	{
		// gboolean g_unichar_islower (gunichar c);
		return g_unichar_islower(c);
	}
	
	/**
	 * Determines whether a character is a mark (non-spacing mark,
	 * combining mark, or enclosing mark in Unicode speak).
	 * Given some UTF-8 text, obtain a character value
	 * with g_utf8_get_char().
	 * Note: in most cases where isalpha characters are allowed,
	 * ismark characters should be allowed to as they are essential
	 * for writing most European languages as well as many non-Latin
	 * scripts.
	 * Since 2.14
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is a mark character
	 */
	public static int unicharIsmark(gunichar c)
	{
		// gboolean g_unichar_ismark (gunichar c);
		return g_unichar_ismark(c);
	}
	
	/**
	 * Determines whether a character is printable.
	 * Unlike g_unichar_isgraph(), returns TRUE for spaces.
	 * Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is printable
	 */
	public static int unicharIsprint(gunichar c)
	{
		// gboolean g_unichar_isprint (gunichar c);
		return g_unichar_isprint(c);
	}
	
	/**
	 * Determines whether a character is punctuation or a symbol.
	 * Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is a punctuation or symbol character
	 */
	public static int unicharIspunct(gunichar c)
	{
		// gboolean g_unichar_ispunct (gunichar c);
		return g_unichar_ispunct(c);
	}
	
	/**
	 * Determines whether a character is a space, tab, or line separator
	 * (newline, carriage return, etc.). Given some UTF-8 text, obtain a
	 * character value with g_utf8_get_char().
	 * (Note: don't use this to do word breaking; you have to use
	 * Pango or equivalent to get word breaking right, the algorithm
	 * is fairly complex.)
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is a space character
	 */
	public static int unicharIsspace(gunichar c)
	{
		// gboolean g_unichar_isspace (gunichar c);
		return g_unichar_isspace(c);
	}
	
	/**
	 * Determines if a character is titlecase. Some characters in
	 * Unicode which are composites, such as the DZ digraph
	 * have three case variants instead of just two. The titlecase
	 * form is used at the beginning of a word where only the
	 * first letter is capitalized. The titlecase form of the DZ
	 * digraph is U+01F2 LATIN CAPITAL LETTTER D WITH SMALL LETTER Z.
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if the character is titlecase
	 */
	public static int unicharIstitle(gunichar c)
	{
		// gboolean g_unichar_istitle (gunichar c);
		return g_unichar_istitle(c);
	}
	
	/**
	 * Determines if a character is uppercase.
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if c is an uppercase character
	 */
	public static int unicharIsupper(gunichar c)
	{
		// gboolean g_unichar_isupper (gunichar c);
		return g_unichar_isupper(c);
	}
	
	/**
	 * Determines if a character is a hexidecimal digit.
	 * Params:
	 * c = a Unicode character.
	 * Returns: TRUE if the character is a hexadecimal digit
	 */
	public static int unicharIsxdigit(gunichar c)
	{
		// gboolean g_unichar_isxdigit (gunichar c);
		return g_unichar_isxdigit(c);
	}
	
	/**
	 * Determines if a character is typically rendered in a double-width
	 * cell.
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if the character is wide
	 */
	public static int unicharIswide(gunichar c)
	{
		// gboolean g_unichar_iswide (gunichar c);
		return g_unichar_iswide(c);
	}
	
	/**
	 * Determines if a character is typically rendered in a double-width
	 * cell under legacy East Asian locales. If a character is wide according to
	 * g_unichar_iswide(), then it is also reported wide with this function, but
	 * the converse is not necessarily true. See the
	 * Unicode Standard
	 * Annex #11 for details.
	 * If a character passes the g_unichar_iswide() test then it will also pass
	 * this test, but not the other way around. Note that some characters may
	 * pas both this test and g_unichar_iszerowidth().
	 * Since 2.12
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if the character is wide in legacy East Asian locales
	 */
	public static int unicharIswideCjk(gunichar c)
	{
		// gboolean g_unichar_iswide_cjk (gunichar c);
		return g_unichar_iswide_cjk(c);
	}
	
	/**
	 * Determines if a given character typically takes zero width when rendered.
	 * The return value is TRUE for all non-spacing and enclosing marks
	 * (e.g., combining accents), format characters, zero-width
	 * space, but not U+00AD SOFT HYPHEN.
	 * A typical use of this function is with one of g_unichar_iswide() or
	 * g_unichar_iswide_cjk() to determine the number of cells a string occupies
	 * when displayed on a grid display (terminals). However, note that not all
	 * terminals support zero-width rendering of zero-width marks.
	 * Since 2.14
	 * Params:
	 * c = a Unicode character
	 * Returns: TRUE if the character has zero width
	 */
	public static int unicharIszerowidth(gunichar c)
	{
		// gboolean g_unichar_iszerowidth (gunichar c);
		return g_unichar_iszerowidth(c);
	}
	
	/**
	 * Converts a character to uppercase.
	 * Params:
	 * c = a Unicode character
	 * Returns: the result of converting c to uppercase. If c is not an lowercase or titlecase character, or has no upper case equivalent c is returned unchanged.
	 */
	public static gunichar unicharToupper(gunichar c)
	{
		// gunichar g_unichar_toupper (gunichar c);
		return g_unichar_toupper(c);
	}
	
	/**
	 * Converts a character to lower case.
	 * Params:
	 * c = a Unicode character.
	 * Returns: the result of converting c to lower case. If c is not an upperlower or titlecase character, or has no lowercase equivalent c is returned unchanged.
	 */
	public static gunichar unicharTolower(gunichar c)
	{
		// gunichar g_unichar_tolower (gunichar c);
		return g_unichar_tolower(c);
	}
	
	/**
	 * Converts a character to the titlecase.
	 * Params:
	 * c = a Unicode character
	 * Returns: the result of converting c to titlecase. If c is not an uppercase or lowercase character, c is returned unchanged.
	 */
	public static gunichar unicharTotitle(gunichar c)
	{
		// gunichar g_unichar_totitle (gunichar c);
		return g_unichar_totitle(c);
	}
	
	/**
	 * Determines the numeric value of a character as a decimal
	 * digit.
	 * Params:
	 * c = a Unicode character
	 * Returns: If c is a decimal digit (according to g_unichar_isdigit()), its numeric value. Otherwise, -1.
	 */
	public static int unicharDigitValue(gunichar c)
	{
		// gint g_unichar_digit_value (gunichar c);
		return g_unichar_digit_value(c);
	}
	
	/**
	 * Determines the numeric value of a character as a hexidecimal
	 * digit.
	 * Params:
	 * c = a Unicode character
	 * Returns: If c is a hex digit (according to g_unichar_isxdigit()), its numeric value. Otherwise, -1.
	 */
	public static int unicharXdigitValue(gunichar c)
	{
		// gint g_unichar_xdigit_value (gunichar c);
		return g_unichar_xdigit_value(c);
	}
	
	/**
	 * Performs a single composition step of the
	 * Unicode canonical composition algorithm.
	 * This function includes algorithmic Hangul Jamo composition,
	 * but it is not exactly the inverse of g_unichar_decompose().
	 * No composition can have either of a or b equal to zero.
	 * To be precise, this function composes if and only if
	 * there exists a Primary Composite P which is canonically
	 * equivalent to the sequence <a,b>. See the Unicode
	 * Standard for the definition of Primary Composite.
	 * If a and b do not compose a new character, ch is set to zero.
	 * See UAX#15
	 * for details.
	 * Since 2.30
	 * Params:
	 * a = a Unicode character
	 * b = a Unicode character
	 * ch = return location for the composed character
	 * Returns: TRUE if the characters could be composed
	 */
	public static int unicharCompose(gunichar a, gunichar b, out gunichar ch)
	{
		// gboolean g_unichar_compose (gunichar a,  gunichar b,  gunichar *ch);
		return g_unichar_compose(a, b, &ch);
	}
	
	/**
	 * Performs a single decomposition step of the
	 * Unicode canonical decomposition algorithm.
	 * This function does not include compatibility
	 * decompositions. It does, however, include algorithmic
	 * Hangul Jamo decomposition, as well as 'singleton'
	 * decompositions which replace a character by a single
	 * other character. In the case of singletons *b will
	 * be set to zero.
	 * If ch is not decomposable, *a is set to ch and *b
	 * is set to zero.
	 * Note that the way Unicode decomposition pairs are
	 * defined, it is guaranteed that b would not decompose
	 * further, but a may itself decompose. To get the full
	 * canonical decomposition for ch, one would need to
	 * recursively call this function on a. Or use
	 * g_unichar_fully_decompose().
	 * See UAX#15
	 * for details.
	 * Since 2.30
	 * Params:
	 * ch = a Unicode character
	 * a = return location for the first component of ch
	 * b = return location for the second component of ch
	 * Returns: TRUE if the character could be decomposed
	 */
	public static int unicharDecompose(gunichar ch, out gunichar a, out gunichar b)
	{
		// gboolean g_unichar_decompose (gunichar ch,  gunichar *a,  gunichar *b);
		return g_unichar_decompose(ch, &a, &b);
	}
	
	/**
	 * Computes the canonical or compatibility decomposition of a
	 * Unicode character. For compatibility decomposition,
	 * pass TRUE for compat; for canonical decomposition
	 * pass FALSE for compat.
	 * The decomposed sequence is placed in result. Only up to
	 * result_len characters are written into result. The length
	 * of the full decomposition (irrespective of result_len) is
	 * returned by the function. For canonical decomposition,
	 * currently all decompositions are of length at most 4, but
	 * this may change in the future (very unlikely though).
	 * At any rate, Unicode does guarantee that a buffer of length
	 * 18 is always enough for both compatibility and canonical
	 * decompositions, so that is the size recommended. This is provided
	 * as G_UNICHAR_MAX_DECOMPOSITION_LENGTH.
	 * See UAX#15
	 * for details.
	 * Since 2.30
	 * Params:
	 * ch = a Unicode character.
	 * compat = whether perform canonical or compatibility decomposition
	 * result = location to store decomposed result, or NULL. [allow-none]
	 * Returns: the length of the full decomposition.
	 */
	public static gsize unicharFullyDecompose(gunichar ch, int compat, gunichar[] result)
	{
		// gsize g_unichar_fully_decompose (gunichar ch,  gboolean compat,  gunichar *result,  gsize result_len);
		return g_unichar_fully_decompose(ch, compat, result.ptr, cast(int) result.length);
	}
	
	/**
	 * Classifies a Unicode character by type.
	 * Params:
	 * c = a Unicode character
	 * Returns: the type of the character.
	 */
	public static GUnicodeType unicharType(gunichar c)
	{
		// GUnicodeType g_unichar_type (gunichar c);
		return g_unichar_type(c);
	}
	
	/**
	 * Determines the break type of c. c should be a Unicode character
	 * (to derive a character from UTF-8 encoded text, use
	 * g_utf8_get_char()). The break type is used to find word and line
	 * breaks ("text boundaries"), Pango implements the Unicode boundary
	 * resolution algorithms and normally you would use a function such
	 * as pango_break() instead of caring about break types yourself.
	 * Params:
	 * c = a Unicode character
	 * Returns: the break type of c
	 */
	public static GUnicodeBreakType unicharBreakType(gunichar c)
	{
		// GUnicodeBreakType g_unichar_break_type (gunichar c);
		return g_unichar_break_type(c);
	}
	
	/**
	 * Determines the canonical combining class of a Unicode character.
	 * Since 2.14
	 * Params:
	 * uc = a Unicode character
	 * Returns: the combining class of the character
	 */
	public static int unicharCombiningClass(gunichar uc)
	{
		// gint g_unichar_combining_class (gunichar uc);
		return g_unichar_combining_class(uc);
	}
	
	/**
	 * Computes the canonical ordering of a string in-place.
	 * This rearranges decomposed characters in the string
	 * according to their combining classes. See the Unicode
	 * manual for more information.
	 * Params:
	 * string = a UCS-4 encoded string.
	 */
	public static void unicodeCanonicalOrdering(gunichar[] string)
	{
		// void g_unicode_canonical_ordering (gunichar *string,  gsize len);
		g_unicode_canonical_ordering(string.ptr, cast(int) string.length);
	}
	
	/**
	 * Warning
	 * g_unicode_canonical_decomposition has been deprecated since version 2.30 and should not be used in newly-written code. Use the more flexible g_unichar_fully_decompose()
	 *  instead.
	 * Computes the canonical decomposition of a Unicode character.
	 * Params:
	 * ch = a Unicode character.
	 * Returns: a newly allocated string of Unicode characters. result_len is set to the resulting length of the string.
	 */
	public static gunichar[] unicodeCanonicalDecomposition(gunichar ch)
	{
		// gunichar * g_unicode_canonical_decomposition (gunichar ch,  gsize *result_len);
		gsize resultLen;
		auto p = g_unicode_canonical_decomposition(ch, &resultLen);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. resultLen];
	}
	
	/**
	 * In Unicode, some characters are mirrored. This
	 * means that their images are mirrored horizontally in text that is laid
	 * out from right to left. For instance, "(" would become its mirror image,
	 * ")", in right-to-left text.
	 * If ch has the Unicode mirrored property and there is another unicode
	 * character that typically has a glyph that is the mirror image of ch's
	 * glyph and mirrored_ch is set, it puts that character in the address
	 * pointed to by mirrored_ch. Otherwise the original character is put.
	 * Since 2.4
	 * Params:
	 * ch = a Unicode character
	 * mirroredCh = location to store the mirrored character
	 * Returns: TRUE if ch has a mirrored character, FALSE otherwise
	 */
	public static int unicharGetMirrorChar(gunichar ch, out gunichar mirroredCh)
	{
		// gboolean g_unichar_get_mirror_char (gunichar ch,  gunichar *mirrored_ch);
		return g_unichar_get_mirror_char(ch, &mirroredCh);
	}
	
	/**
	 * Looks up the GUnicodeScript for a particular character (as defined
	 * by Unicode Standard Annex #24). No check is made for ch being a
	 * valid Unicode character; if you pass in invalid character, the
	 * result is undefined.
	 * This function is equivalent to pango_script_for_unichar() and the
	 * two are interchangeable.
	 * Since 2.14
	 * Params:
	 * ch = a Unicode character
	 * Returns: the GUnicodeScript for the character.
	 */
	public static GUnicodeScript unicharGetScript(gunichar ch)
	{
		// GUnicodeScript g_unichar_get_script (gunichar ch);
		return g_unichar_get_script(ch);
	}
	
	/**
	 * Looks up the Unicode script for iso15924. ISO 15924 assigns four-letter
	 * codes to scripts. For example, the code for Arabic is 'Arab'.
	 * This function accepts four letter codes encoded as a guint32 in a
	 * big-endian fashion. That is, the code expected for Arabic is
	 * 0x41726162 (0x41 is ASCII code for 'A', 0x72 is ASCII code for 'r', etc).
	 * See Codes for the
	 * representation of names of scripts for details.
	 * Since 2.30
	 * Params:
	 * iso15924 = a Unicode script
	 * Returns: the Unicode script for iso15924, or of G_UNICODE_SCRIPT_INVALID_CODE if iso15924 is zero and G_UNICODE_SCRIPT_UNKNOWN if iso15924 is unknown.
	 */
	public static GUnicodeScript unicodeScriptFromIso15924(uint iso15924)
	{
		// GUnicodeScript g_unicode_script_from_iso15924 (guint32 iso15924);
		return g_unicode_script_from_iso15924(iso15924);
	}
	
	/**
	 * Looks up the ISO 15924 code for script. ISO 15924 assigns four-letter
	 * codes to scripts. For example, the code for Arabic is 'Arab'. The
	 * four letter codes are encoded as a guint32 by this function in a
	 * big-endian fashion. That is, the code returned for Arabic is
	 * 0x41726162 (0x41 is ASCII code for 'A', 0x72 is ASCII code for 'r', etc).
	 * See Codes for the
	 * representation of names of scripts for details.
	 * Since 2.30
	 * Params:
	 * script = a Unicode script
	 * Returns: the ISO 15924 code for script, encoded as an integer, of zero if script is G_UNICODE_SCRIPT_INVALID_CODE or ISO 15924 code 'Zzzz' (script code for UNKNOWN) if script is not understood.
	 */
	public static uint unicodeScriptToIso15924(GUnicodeScript script)
	{
		// guint32 g_unicode_script_to_iso15924 (GUnicodeScript script);
		return g_unicode_script_to_iso15924(script);
	}
	
	/**
	 * Converts a sequence of bytes encoded as UTF-8 to a Unicode character.
	 * If p does not point to a valid UTF-8 encoded character, results are
	 * undefined. If you are not sure that the bytes are complete
	 * valid Unicode characters, you should use g_utf8_get_char_validated()
	 * instead.
	 * Params:
	 * p = a pointer to Unicode character encoded as UTF-8
	 * Returns: the resulting character
	 */
	public static gunichar utf8_GetChar(string p)
	{
		// gunichar g_utf8_get_char (const gchar *p);
		return g_utf8_get_char(Str.toStringz(p));
	}
	
	/**
	 * Convert a sequence of bytes encoded as UTF-8 to a Unicode character.
	 * This function checks for incomplete characters, for invalid characters
	 * such as characters that are out of the range of Unicode, and for
	 * overlong encodings of valid characters.
	 * Params:
	 * p = a pointer to Unicode character encoded as UTF-8
	 * Returns: the resulting character. If p points to a partial sequence at the end of a string that could begin a valid character (or if max_len is zero), returns (gunichar)-2; otherwise, if p does not point to a valid UTF-8 encoded Unicode character, returns (gunichar)-1.
	 */
	public static gunichar utf8_GetCharValidated(string p)
	{
		// gunichar g_utf8_get_char_validated (const gchar *p,  gssize max_len);
		return g_utf8_get_char_validated(cast(char*)p.ptr, cast(int) p.length);
	}
	
	/**
	 * Converts from an integer character offset to a pointer to a position
	 * within the string.
	 * Since 2.10, this function allows to pass a negative offset to
	 * step backwards. It is usually worth stepping backwards from the end
	 * instead of forwards if offset is in the last fourth of the string,
	 * since moving forward is about 3 times faster than moving backward.
	 * Note
	 * This function doesn't abort when reaching the end of str. Therefore
	 * you should be sure that offset is within string boundaries before
	 * calling that function. Call g_utf8_strlen() when unsure.
	 * This limitation exists as this function is called frequently during
	 * text rendering and therefore has to be as fast as possible.
	 * Params:
	 * str = a UTF-8 encoded string
	 * offset = a character offset within str
	 * Returns: the resulting pointer
	 */
	public static string utf8_OffsetToPointer(string str, glong offset)
	{
		// gchar * g_utf8_offset_to_pointer (const gchar *str,  glong offset);
		return Str.toString(g_utf8_offset_to_pointer(Str.toStringz(str), offset));
	}
	
	/**
	 * Converts from a pointer to position within a string to a integer
	 * character offset.
	 * Since 2.10, this function allows pos to be before str, and returns
	 * a negative offset in this case.
	 * Params:
	 * str = a UTF-8 encoded string
	 * pos = a pointer to a position within str
	 * Returns: the resulting character offset
	 */
	public static glong utf8_PointerToOffset(string str, string pos)
	{
		// glong g_utf8_pointer_to_offset (const gchar *str,  const gchar *pos);
		return g_utf8_pointer_to_offset(Str.toStringz(str), Str.toStringz(pos));
	}
	
	/**
	 * Finds the previous UTF-8 character in the string before p.
	 * p does not have to be at the beginning of a UTF-8 character. No check
	 * is made to see if the character found is actually valid other than
	 * it starts with an appropriate byte. If p might be the first
	 * character of the string, you must use g_utf8_find_prev_char() instead.
	 * Params:
	 * p = a pointer to a position within a UTF-8 encoded string
	 * Returns: a pointer to the found character.
	 */
	public static string utf8_PrevChar(string p)
	{
		// gchar * g_utf8_prev_char (const gchar *p);
		return Str.toString(g_utf8_prev_char(Str.toStringz(p)));
	}
	
	/**
	 * Finds the start of the next UTF-8 character in the string after p.
	 * p does not have to be at the beginning of a UTF-8 character. No check
	 * is made to see if the character found is actually valid other than
	 * it starts with an appropriate byte.
	 * Params:
	 * p = a pointer to a position within a UTF-8 encoded string
	 * end = a pointer to the byte following the end of the string,
	 * or NULL to indicate that the string is nul-terminated.
	 * Returns: a pointer to the found character or NULL
	 */
	public static string utf8_FindNextChar(string p, string end)
	{
		// gchar * g_utf8_find_next_char (const gchar *p,  const gchar *end);
		return Str.toString(g_utf8_find_next_char(Str.toStringz(p), Str.toStringz(end)));
	}
	
	/**
	 * Given a position p with a UTF-8 encoded string str, find the start
	 * of the previous UTF-8 character starting before p. Returns NULL if no
	 * UTF-8 characters are present in str before p.
	 * p does not have to be at the beginning of a UTF-8 character. No check
	 * is made to see if the character found is actually valid other than
	 * it starts with an appropriate byte.
	 * Params:
	 * str = pointer to the beginning of a UTF-8 encoded string
	 * p = pointer to some position within str
	 * Returns: a pointer to the found character or NULL.
	 */
	public static string utf8_FindPrevChar(string str, string p)
	{
		// gchar * g_utf8_find_prev_char (const gchar *str,  const gchar *p);
		return Str.toString(g_utf8_find_prev_char(Str.toStringz(str), Str.toStringz(p)));
	}
	
	/**
	 * Computes the length of the string in characters, not including
	 * the terminating nul character. If the max'th byte falls in the
	 * middle of a character, the last (partial) character is not counted.
	 * Params:
	 * p = pointer to the start of a UTF-8 encoded string
	 * Returns: the length of the string in characters
	 */
	public static glong utf8_Strlen(string p)
	{
		// glong g_utf8_strlen (const gchar *p,  gssize max);
		return g_utf8_strlen(cast(char*)p.ptr, cast(int) p.length);
	}
	
	/**
	 * Like the standard C strncpy() function, but
	 * copies a given number of characters instead of a given number of
	 * bytes. The src string must be valid UTF-8 encoded text.
	 * (Use g_utf8_validate() on all text before trying to use UTF-8
	 * utility functions with it.)
	 * Params:
	 * dest = buffer to fill with characters from src
	 * src = UTF-8 encoded string
	 * n = character count
	 * Returns: dest
	 */
	public static string utf8_Strncpy(string dest, string src, gsize n)
	{
		// gchar * g_utf8_strncpy (gchar *dest,  const gchar *src,  gsize n);
		return Str.toString(g_utf8_strncpy(Str.toStringz(dest), Str.toStringz(src), n));
	}
	
	/**
	 * Finds the leftmost occurrence of the given Unicode character
	 * in a UTF-8 encoded string, while limiting the search to len bytes.
	 * If len is -1, allow unbounded search.
	 * Params:
	 * p = a nul-terminated UTF-8 encoded string
	 * len = the maximum length of p
	 * c = a Unicode character
	 * Returns: NULL if the string does not contain the character, otherwise, a pointer to the start of the leftmost occurrence of the character in the string.
	 */
	public static string utf8_Strchr(string p, gssize len, gunichar c)
	{
		// gchar * g_utf8_strchr (const gchar *p,  gssize len,  gunichar c);
		return Str.toString(g_utf8_strchr(Str.toStringz(p), len, c));
	}
	
	/**
	 * Find the rightmost occurrence of the given Unicode character
	 * in a UTF-8 encoded string, while limiting the search to len bytes.
	 * If len is -1, allow unbounded search.
	 * Params:
	 * p = a nul-terminated UTF-8 encoded string
	 * len = the maximum length of p
	 * c = a Unicode character
	 * Returns: NULL if the string does not contain the character, otherwise, a pointer to the start of the rightmost occurrence of the character in the string.
	 */
	public static string utf8_Strrchr(string p, gssize len, gunichar c)
	{
		// gchar * g_utf8_strrchr (const gchar *p,  gssize len,  gunichar c);
		return Str.toString(g_utf8_strrchr(Str.toStringz(p), len, c));
	}
	
	/**
	 * Reverses a UTF-8 string. str must be valid UTF-8 encoded text.
	 * (Use g_utf8_validate() on all text before trying to use UTF-8
	 * utility functions with it.)
	 * This function is intended for programmatic uses of reversed strings.
	 * It pays no attention to decomposed characters, combining marks, byte
	 * order marks, directional indicators (LRM, LRO, etc) and similar
	 * characters which might need special handling when reversing a string
	 * for display purposes.
	 * Note that unlike g_strreverse(), this function returns
	 * newly-allocated memory, which should be freed with g_free() when
	 * no longer needed.
	 * Since 2.2
	 * Params:
	 * str = a UTF-8 encoded string
	 * Returns: a newly-allocated string which is the reverse of str.
	 */
	public static string utf8_Strreverse(string str)
	{
		// gchar * g_utf8_strreverse (const gchar *str,  gssize len);
		return Str.toString(g_utf8_strreverse(cast(char*)str.ptr, cast(int) str.length));
	}
	
	/**
	 * Copies a substring out of a UTF-8 encoded string.
	 * The substring will contain end_pos - start_pos
	 * characters.
	 * Since 2.30
	 * Params:
	 * str = a UTF-8 encoded string
	 * startPos = a character offset within str
	 * endPos = another character offset within str
	 * Returns: a newly allocated copy of the requested substring. Free with g_free() when no longer needed.
	 */
	public static string utf8_Substring(string str, glong startPos, glong endPos)
	{
		// gchar * g_utf8_substring (const gchar *str,  glong start_pos,  glong end_pos);
		return Str.toString(g_utf8_substring(Str.toStringz(str), startPos, endPos));
	}
	
	/**
	 * Validates UTF-8 encoded text. str is the text to validate;
	 * if str is nul-terminated, then max_len can be -1, otherwise
	 * max_len should be the number of bytes to validate.
	 * If end is non-NULL, then the end of the valid range
	 * will be stored there (i.e. the start of the first invalid
	 * character if some bytes were invalid, or the end of the text
	 * being validated otherwise).
	 * Note that g_utf8_validate() returns FALSE if max_len is
	 * positive and any of the max_len bytes are NUL.
	 * Returns TRUE if all of str was valid. Many GLib and GTK+
	 * routines require valid UTF-8 as input;
	 * so data read from a file or the network should be checked
	 * with g_utf8_validate() before doing anything else with it.
	 * Params:
	 * str = a pointer to character data. [array length=max_len][element-type guint8]
	 * end = return location for end of valid data. [allow-none][out][transfer none]
	 * Returns: TRUE if the text was valid UTF-8
	 */
	public static int utf8_Validate(string str, out string end)
	{
		// gboolean g_utf8_validate (const gchar *str,  gssize max_len,  const gchar **end);
		char* outend = null;
		
		auto p = g_utf8_validate(cast(char*)str.ptr, cast(int) str.length, &outend);
		
		end = Str.toString(outend);
		return p;
	}
	
	/**
	 * Converts all Unicode characters in the string that have a case
	 * to uppercase. The exact manner that this is done depends
	 * on the current locale, and may result in the number of
	 * characters in the string increasing. (For instance, the
	 * German ess-zet will be changed to SS.)
	 * Params:
	 * str = a UTF-8 encoded string
	 * Returns: a newly allocated string, with all characters converted to uppercase.
	 */
	public static string utf8_Strup(string str)
	{
		// gchar * g_utf8_strup (const gchar *str,  gssize len);
		return Str.toString(g_utf8_strup(cast(char*)str.ptr, cast(int) str.length));
	}
	
	/**
	 * Converts all Unicode characters in the string that have a case
	 * to lowercase. The exact manner that this is done depends
	 * on the current locale, and may result in the number of
	 * characters in the string changing.
	 * Params:
	 * str = a UTF-8 encoded string
	 * Returns: a newly allocated string, with all characters converted to lowercase.
	 */
	public static string utf8_Strdown(string str)
	{
		// gchar * g_utf8_strdown (const gchar *str,  gssize len);
		return Str.toString(g_utf8_strdown(cast(char*)str.ptr, cast(int) str.length));
	}
	
	/**
	 * Converts a string into a form that is independent of case. The
	 * result will not correspond to any particular case, but can be
	 * compared for equality or ordered with the results of calling
	 * g_utf8_casefold() on other strings.
	 * Note that calling g_utf8_casefold() followed by g_utf8_collate() is
	 * only an approximation to the correct linguistic case insensitive
	 * ordering, though it is a fairly good one. Getting this exactly
	 * right would require a more sophisticated collation function that
	 * takes case sensitivity into account. GLib does not currently
	 * provide such a function.
	 * Params:
	 * str = a UTF-8 encoded string
	 * Returns: a newly allocated string, that is a case independent form of str.
	 */
	public static string utf8_Casefold(string str)
	{
		// gchar * g_utf8_casefold (const gchar *str,  gssize len);
		return Str.toString(g_utf8_casefold(cast(char*)str.ptr, cast(int) str.length));
	}
	
	/**
	 * Converts a string into canonical form, standardizing
	 * such issues as whether a character with an accent
	 * is represented as a base character and combining
	 * accent or as a single precomposed character. The
	 * string has to be valid UTF-8, otherwise NULL is
	 * returned. You should generally call g_utf8_normalize()
	 * before comparing two Unicode strings.
	 * The normalization mode G_NORMALIZE_DEFAULT only
	 * standardizes differences that do not affect the
	 * text content, such as the above-mentioned accent
	 * representation. G_NORMALIZE_ALL also standardizes
	 * the "compatibility" characters in Unicode, such
	 * as SUPERSCRIPT THREE to the standard forms
	 * (in this case DIGIT THREE). Formatting information
	 * may be lost but for most text operations such
	 * characters should be considered the same.
	 * G_NORMALIZE_DEFAULT_COMPOSE and G_NORMALIZE_ALL_COMPOSE
	 * are like G_NORMALIZE_DEFAULT and G_NORMALIZE_ALL,
	 * but returned a result with composed forms rather
	 * than a maximally decomposed form. This is often
	 * useful if you intend to convert the string to
	 * a legacy encoding or pass it to a system with
	 * less capable Unicode handling.
	 * Params:
	 * str = a UTF-8 encoded string.
	 * mode = the type of normalization to perform.
	 * Returns: a newly allocated string, that is the normalized form of str, or NULL if str is not valid UTF-8.
	 */
	public static string utf8_Normalize(string str, GNormalizeMode mode)
	{
		// gchar * g_utf8_normalize (const gchar *str,  gssize len,  GNormalizeMode mode);
		return Str.toString(g_utf8_normalize(cast(char*)str.ptr, cast(int) str.length, mode));
	}
	
	/**
	 * Compares two strings for ordering using the linguistically
	 * correct rules for the current locale.
	 * When sorting a large number of strings, it will be significantly
	 * faster to obtain collation keys with g_utf8_collate_key() and
	 * compare the keys with strcmp() when sorting instead of sorting
	 * the original strings.
	 * Params:
	 * str1 = a UTF-8 encoded string
	 * str2 = a UTF-8 encoded string
	 * Returns: < 0 if str1 compares before str2, 0 if they compare equal, > 0 if str1 compares after str2.
	 */
	public static int utf8_Collate(string str1, string str2)
	{
		// gint g_utf8_collate (const gchar *str1,  const gchar *str2);
		return g_utf8_collate(Str.toStringz(str1), Str.toStringz(str2));
	}
	
	/**
	 * Converts a string into a collation key that can be compared
	 * with other collation keys produced by the same function using
	 * strcmp().
	 * The results of comparing the collation keys of two strings
	 * with strcmp() will always be the same as comparing the two
	 * original keys with g_utf8_collate().
	 * Note that this function depends on the
	 * current locale.
	 * Params:
	 * str = a UTF-8 encoded string.
	 * Returns: a newly allocated string. This string should be freed with g_free() when you are done with it.
	 */
	public static string utf8_CollateKey(string str)
	{
		// gchar * g_utf8_collate_key (const gchar *str,  gssize len);
		return Str.toString(g_utf8_collate_key(cast(char*)str.ptr, cast(int) str.length));
	}
	
	/**
	 * Converts a string into a collation key that can be compared
	 * with other collation keys produced by the same function using strcmp().
	 * In order to sort filenames correctly, this function treats the dot '.'
	 * as a special case. Most dictionary orderings seem to consider it
	 * insignificant, thus producing the ordering "event.c" "eventgenerator.c"
	 * "event.h" instead of "event.c" "event.h" "eventgenerator.c". Also, we
	 * would like to treat numbers intelligently so that "file1" "file10" "file5"
	 * is sorted as "file1" "file5" "file10".
	 * Note that this function depends on the
	 * current locale.
	 * Since 2.8
	 * Params:
	 * str = a UTF-8 encoded string.
	 * len = length of str, in bytes, or -1 if str is nul-terminated.
	 * Returns: a newly allocated string. This string should be freed with g_free() when you are done with it.
	 */
	public static string utf8_CollateKeyForFilename(string str)
	{
		// gchar * g_utf8_collate_key_for_filename (const gchar *str,  gssize len);
		return Str.toString(g_utf8_collate_key_for_filename(cast(char*)str.ptr, cast(int) str.length));
	}
	
	/**
	 * Convert a string from UTF-8 to UTF-16. A 0 character will be
	 * added to the result after the converted text.
	 * Params:
	 * str = a UTF-8 encoded string
	 * itemsRead = location to store number of bytes read, or NULL.
	 * If NULL, then G_CONVERT_ERROR_PARTIAL_INPUT will be
	 * returned in case str contains a trailing partial
	 * character. If an error occurs then the index of the
	 * invalid input is stored here. [allow-none]
	 * Returns: a pointer to a newly allocated UTF-16 string. This value must be freed with g_free(). If an error occurs, NULL will be returned and error set.
	 * Throws: GException on failure.
	 */
	public static gunichar2[] utf8_ToUtf16(string str, out glong itemsRead)
	{
		// gunichar2 * g_utf8_to_utf16 (const gchar *str,  glong len,  glong *items_read,  glong *items_written,  GError **error);
		glong itemsWritten;
		GError* err = null;
		
		auto p = g_utf8_to_utf16(cast(char*)str.ptr, cast(int) str.length, &itemsRead, &itemsWritten, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. itemsWritten];
	}
	
	/**
	 * Convert a string from UTF-8 to a 32-bit fixed width
	 * representation as UCS-4. A trailing 0 character will be added to the
	 * string after the converted text.
	 * Params:
	 * str = a UTF-8 encoded string
	 * itemsRead = location to store number of bytes read, or NULL.
	 * If NULL, then G_CONVERT_ERROR_PARTIAL_INPUT will be
	 * returned in case str contains a trailing partial
	 * character. If an error occurs then the index of the
	 * invalid input is stored here. [allow-none]
	 * Returns: a pointer to a newly allocated UCS-4 string. This value must be freed with g_free(). If an error occurs, NULL will be returned and error set.
	 * Throws: GException on failure.
	 */
	public static gunichar[] utf8_ToUcs4(string str, out glong itemsRead)
	{
		// gunichar * g_utf8_to_ucs4 (const gchar *str,  glong len,  glong *items_read,  glong *items_written,  GError **error);
		glong itemsWritten;
		GError* err = null;
		
		auto p = g_utf8_to_ucs4(cast(char*)str.ptr, cast(int) str.length, &itemsRead, &itemsWritten, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. itemsWritten];
	}
	
	/**
	 * Convert a string from UTF-8 to a 32-bit fixed width
	 * representation as UCS-4, assuming valid UTF-8 input.
	 * This function is roughly twice as fast as g_utf8_to_ucs4()
	 * but does no error checking on the input. A trailing 0 character
	 * will be added to the string after the converted text.
	 * Params:
	 * str = a UTF-8 encoded string
	 * Returns: a pointer to a newly allocated UCS-4 string. This value must be freed with g_free().
	 */
	public static gunichar[] utf8_ToUcs4_Fast(string str)
	{
		// gunichar * g_utf8_to_ucs4_fast (const gchar *str,  glong len,  glong *items_written);
		glong itemsWritten;
		auto p = g_utf8_to_ucs4_fast(cast(char*)str.ptr, cast(int) str.length, &itemsWritten);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. itemsWritten];
	}
	
	/**
	 * Convert a string from UTF-16 to UCS-4. The result will be
	 * nul-terminated.
	 * Params:
	 * str = a UTF-16 encoded string
	 * itemsRead = location to store number of words read, or NULL.
	 * If NULL, then G_CONVERT_ERROR_PARTIAL_INPUT will be
	 * returned in case str contains a trailing partial
	 * character. If an error occurs then the index of the
	 * invalid input is stored here. [allow-none]
	 * Returns: a pointer to a newly allocated UCS-4 string. This value must be freed with g_free(). If an error occurs, NULL will be returned and error set.
	 * Throws: GException on failure.
	 */
	public static gunichar[] utf16_ToUcs4(gunichar2[] str, out glong itemsRead)
	{
		// gunichar * g_utf16_to_ucs4 (const gunichar2 *str,  glong len,  glong *items_read,  glong *items_written,  GError **error);
		glong itemsWritten;
		GError* err = null;
		
		auto p = g_utf16_to_ucs4(str.ptr, cast(int) str.length, &itemsRead, &itemsWritten, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. itemsWritten];
	}
	
	/**
	 * Convert a string from UTF-16 to UTF-8. The result will be
	 * terminated with a 0 byte.
	 * Note that the input is expected to be already in native endianness,
	 * an initial byte-order-mark character is not handled specially.
	 * g_convert() can be used to convert a byte buffer of UTF-16 data of
	 * ambiguous endianess.
	 * Further note that this function does not validate the result
	 * string; it may e.g. include embedded NUL characters. The only
	 * validation done by this function is to ensure that the input can
	 * be correctly interpreted as UTF-16, i.e. it doesn't contain
	 * things unpaired surrogates.
	 * Params:
	 * str = a UTF-16 encoded string
	 * itemsRead = location to store number of words read, or NULL.
	 * If NULL, then G_CONVERT_ERROR_PARTIAL_INPUT will be
	 * returned in case str contains a trailing partial
	 * character. If an error occurs then the index of the
	 * invalid input is stored here. [allow-none]
	 * Returns: a pointer to a newly allocated UTF-8 string. This value must be freed with g_free(). If an error occurs, NULL will be returned and error set.
	 * Throws: GException on failure.
	 */
	public static string utf16_ToUtf8(gunichar2[] str, out glong itemsRead)
	{
		// gchar * g_utf16_to_utf8 (const gunichar2 *str,  glong len,  glong *items_read,  glong *items_written,  GError **error);
		glong itemsWritten;
		GError* err = null;
		
		auto p = g_utf16_to_utf8(str.ptr, cast(int) str.length, &itemsRead, &itemsWritten, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p, itemsWritten);
	}
	
	/**
	 * Convert a string from UCS-4 to UTF-16. A 0 character will be
	 * added to the result after the converted text.
	 * Params:
	 * str = a UCS-4 encoded string
	 * itemsRead = location to store number of bytes read, or NULL.
	 * If an error occurs then the index of the invalid input
	 * is stored here. [allow-none]
	 * Returns: a pointer to a newly allocated UTF-16 string. This value must be freed with g_free(). If an error occurs, NULL will be returned and error set.
	 * Throws: GException on failure.
	 */
	public static gunichar2[] ucs4_ToUtf16(gunichar[] str, out glong itemsRead)
	{
		// gunichar2 * g_ucs4_to_utf16 (const gunichar *str,  glong len,  glong *items_read,  glong *items_written,  GError **error);
		glong itemsWritten;
		GError* err = null;
		
		auto p = g_ucs4_to_utf16(str.ptr, cast(int) str.length, &itemsRead, &itemsWritten, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. itemsWritten];
	}
	
	/**
	 * Convert a string from a 32-bit fixed width representation as UCS-4.
	 * to UTF-8. The result will be terminated with a 0 byte.
	 * Params:
	 * str = a UCS-4 encoded string
	 * itemsRead = location to store number of characters read, or NULL. [allow-none]
	 * Returns: a pointer to a newly allocated UTF-8 string. This value must be freed with g_free(). If an error occurs, NULL will be returned and error set. In that case, items_read will be set to the position of the first invalid input character.
	 * Throws: GException on failure.
	 */
	public static string ucs4_ToUtf8(gunichar[] str, out glong itemsRead)
	{
		// gchar * g_ucs4_to_utf8 (const gunichar *str,  glong len,  glong *items_read,  glong *items_written,  GError **error);
		glong itemsWritten;
		GError* err = null;
		
		auto p = g_ucs4_to_utf8(str.ptr, cast(int) str.length, &itemsRead, &itemsWritten, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p, itemsWritten);
	}
	
	/**
	 * Converts a single character to UTF-8.
	 * Params:
	 * c = a Unicode character code
	 * outbuf = output buffer, must have at least 6 bytes of space.
	 * If NULL, the length will be computed and returned
	 * and nothing will be written to outbuf.
	 * Returns: number of bytes written
	 */
	public static int unicharToUtf8(gunichar c, string outbuf)
	{
		// gint g_unichar_to_utf8 (gunichar c,  gchar *outbuf);
		return g_unichar_to_utf8(c, Str.toStringz(outbuf));
	}
}
