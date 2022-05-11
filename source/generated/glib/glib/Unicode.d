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


module glib.Unicode;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct Unicode
{

	/**
	 * Convert a string from UCS-4 to UTF-16. A 0 character will be
	 * added to the result after the converted text.
	 *
	 * Params:
	 *     str = a UCS-4 encoded string
	 *     len = the maximum length (number of characters) of @str to use.
	 *         If @len < 0, then the string is nul-terminated.
	 *     itemsRead = location to store number of
	 *         bytes read, or %NULL. If an error occurs then the index of the invalid
	 *         input is stored here.
	 *     itemsWritten = location to store number
	 *         of #gunichar2  written, or %NULL. The value stored here does not include
	 *         the trailing 0.
	 *
	 * Returns: a pointer to a newly allocated UTF-16 string.
	 *     This value must be freed with g_free(). If an error occurs,
	 *     %NULL will be returned and @error set.
	 *
	 * Throws: GException on failure.
	 */
	public static wchar* ucs4ToUtf16(dchar* str, glong len, out glong itemsRead, out glong itemsWritten)
	{
		GError* err = null;

		auto __p = g_ucs4_to_utf16(str, len, &itemsRead, &itemsWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Convert a string from a 32-bit fixed width representation as UCS-4.
	 * to UTF-8. The result will be terminated with a 0 byte.
	 *
	 * Params:
	 *     str = a UCS-4 encoded string
	 *     len = the maximum length (number of characters) of @str to use.
	 *         If @len < 0, then the string is nul-terminated.
	 *     itemsRead = location to store number of
	 *         characters read, or %NULL.
	 *     itemsWritten = location to store number
	 *         of bytes written or %NULL. The value here stored does not include the
	 *         trailing 0 byte.
	 *
	 * Returns: a pointer to a newly allocated UTF-8 string.
	 *     This value must be freed with g_free(). If an error occurs,
	 *     %NULL will be returned and @error set. In that case, @items_read
	 *     will be set to the position of the first invalid input character.
	 *
	 * Throws: GException on failure.
	 */
	public static string ucs4ToUtf8(dchar* str, glong len, out glong itemsRead, out glong itemsWritten)
	{
		GError* err = null;

		auto retStr = g_ucs4_to_utf8(str, len, &itemsRead, &itemsWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Determines the break type of @c. @c should be a Unicode character
	 * (to derive a character from UTF-8 encoded text, use
	 * g_utf8_get_char()). The break type is used to find word and line
	 * breaks ("text boundaries"), Pango implements the Unicode boundary
	 * resolution algorithms and normally you would use a function such
	 * as pango_break() instead of caring about break types yourself.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: the break type of @c
	 */
	public static GUnicodeBreakType unicharBreakType(dchar c)
	{
		return g_unichar_break_type(c);
	}

	/**
	 * Determines the canonical combining class of a Unicode character.
	 *
	 * Params:
	 *     uc = a Unicode character
	 *
	 * Returns: the combining class of the character
	 *
	 * Since: 2.14
	 */
	public static int unicharCombiningClass(dchar uc)
	{
		return g_unichar_combining_class(uc);
	}

	/**
	 * Performs a single composition step of the
	 * Unicode canonical composition algorithm.
	 *
	 * This function includes algorithmic Hangul Jamo composition,
	 * but it is not exactly the inverse of g_unichar_decompose().
	 * No composition can have either of @a or @b equal to zero.
	 * To be precise, this function composes if and only if
	 * there exists a Primary Composite P which is canonically
	 * equivalent to the sequence <@a,@b>.  See the Unicode
	 * Standard for the definition of Primary Composite.
	 *
	 * If @a and @b do not compose a new character, @ch is set to zero.
	 *
	 * See
	 * [UAX#15](http://unicode.org/reports/tr15/)
	 * for details.
	 *
	 * Params:
	 *     a = a Unicode character
	 *     b = a Unicode character
	 *     ch = return location for the composed character
	 *
	 * Returns: %TRUE if the characters could be composed
	 *
	 * Since: 2.30
	 */
	public static bool unicharCompose(dchar a, dchar b, out dchar ch)
	{
		return g_unichar_compose(a, b, &ch) != 0;
	}

	/**
	 * Performs a single decomposition step of the
	 * Unicode canonical decomposition algorithm.
	 *
	 * This function does not include compatibility
	 * decompositions. It does, however, include algorithmic
	 * Hangul Jamo decomposition, as well as 'singleton'
	 * decompositions which replace a character by a single
	 * other character. In the case of singletons *@b will
	 * be set to zero.
	 *
	 * If @ch is not decomposable, *@a is set to @ch and *@b
	 * is set to zero.
	 *
	 * Note that the way Unicode decomposition pairs are
	 * defined, it is guaranteed that @b would not decompose
	 * further, but @a may itself decompose.  To get the full
	 * canonical decomposition for @ch, one would need to
	 * recursively call this function on @a.  Or use
	 * g_unichar_fully_decompose().
	 *
	 * See
	 * [UAX#15](http://unicode.org/reports/tr15/)
	 * for details.
	 *
	 * Params:
	 *     ch = a Unicode character
	 *     a = return location for the first component of @ch
	 *     b = return location for the second component of @ch
	 *
	 * Returns: %TRUE if the character could be decomposed
	 *
	 * Since: 2.30
	 */
	public static bool unicharDecompose(dchar ch, out dchar a, out dchar b)
	{
		return g_unichar_decompose(ch, &a, &b) != 0;
	}

	/**
	 * Determines the numeric value of a character as a decimal
	 * digit.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: If @c is a decimal digit (according to
	 *     g_unichar_isdigit()), its numeric value. Otherwise, -1.
	 */
	public static int unicharDigitValue(dchar c)
	{
		return g_unichar_digit_value(c);
	}

	/**
	 * Computes the canonical or compatibility decomposition of a
	 * Unicode character.  For compatibility decomposition,
	 * pass %TRUE for @compat; for canonical decomposition
	 * pass %FALSE for @compat.
	 *
	 * The decomposed sequence is placed in @result.  Only up to
	 * @result_len characters are written into @result.  The length
	 * of the full decomposition (irrespective of @result_len) is
	 * returned by the function.  For canonical decomposition,
	 * currently all decompositions are of length at most 4, but
	 * this may change in the future (very unlikely though).
	 * At any rate, Unicode does guarantee that a buffer of length
	 * 18 is always enough for both compatibility and canonical
	 * decompositions, so that is the size recommended. This is provided
	 * as %G_UNICHAR_MAX_DECOMPOSITION_LENGTH.
	 *
	 * See
	 * [UAX#15](http://unicode.org/reports/tr15/)
	 * for details.
	 *
	 * Params:
	 *     ch = a Unicode character.
	 *     compat = whether perform canonical or compatibility decomposition
	 *     result = location to store decomposed result, or %NULL
	 *     resultLen = length of @result
	 *
	 * Returns: the length of the full decomposition.
	 *
	 * Since: 2.30
	 */
	public static size_t unicharFullyDecompose(dchar ch, bool compat, out dchar result, size_t resultLen)
	{
		return g_unichar_fully_decompose(ch, compat, &result, resultLen);
	}

	/**
	 * In Unicode, some characters are "mirrored". This means that their
	 * images are mirrored horizontally in text that is laid out from right
	 * to left. For instance, "(" would become its mirror image, ")", in
	 * right-to-left text.
	 *
	 * If @ch has the Unicode mirrored property and there is another unicode
	 * character that typically has a glyph that is the mirror image of @ch's
	 * glyph and @mirrored_ch is set, it puts that character in the address
	 * pointed to by @mirrored_ch.  Otherwise the original character is put.
	 *
	 * Params:
	 *     ch = a Unicode character
	 *     mirroredCh = location to store the mirrored character
	 *
	 * Returns: %TRUE if @ch has a mirrored character, %FALSE otherwise
	 *
	 * Since: 2.4
	 */
	public static bool unicharGetMirrorChar(dchar ch, dchar* mirroredCh)
	{
		return g_unichar_get_mirror_char(ch, mirroredCh) != 0;
	}

	/**
	 * Looks up the #GUnicodeScript for a particular character (as defined
	 * by Unicode Standard Annex \#24). No check is made for @ch being a
	 * valid Unicode character; if you pass in invalid character, the
	 * result is undefined.
	 *
	 * This function is equivalent to pango_script_for_unichar() and the
	 * two are interchangeable.
	 *
	 * Params:
	 *     ch = a Unicode character
	 *
	 * Returns: the #GUnicodeScript for the character.
	 *
	 * Since: 2.14
	 */
	public static GUnicodeScript unicharGetScript(dchar ch)
	{
		return g_unichar_get_script(ch);
	}

	/**
	 * Determines whether a character is alphanumeric.
	 * Given some UTF-8 text, obtain a character value
	 * with g_utf8_get_char().
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is an alphanumeric character
	 */
	public static bool unicharIsalnum(dchar c)
	{
		return g_unichar_isalnum(c) != 0;
	}

	/**
	 * Determines whether a character is alphabetic (i.e. a letter).
	 * Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is an alphabetic character
	 */
	public static bool unicharIsalpha(dchar c)
	{
		return g_unichar_isalpha(c) != 0;
	}

	/**
	 * Determines whether a character is a control character.
	 * Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is a control character
	 */
	public static bool unicharIscntrl(dchar c)
	{
		return g_unichar_iscntrl(c) != 0;
	}

	/**
	 * Determines if a given character is assigned in the Unicode
	 * standard.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if the character has an assigned value
	 */
	public static bool unicharIsdefined(dchar c)
	{
		return g_unichar_isdefined(c) != 0;
	}

	/**
	 * Determines whether a character is numeric (i.e. a digit).  This
	 * covers ASCII 0-9 and also digits in other languages/scripts.  Given
	 * some UTF-8 text, obtain a character value with g_utf8_get_char().
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is a digit
	 */
	public static bool unicharIsdigit(dchar c)
	{
		return g_unichar_isdigit(c) != 0;
	}

	/**
	 * Determines whether a character is printable and not a space
	 * (returns %FALSE for control characters, format characters, and
	 * spaces). g_unichar_isprint() is similar, but returns %TRUE for
	 * spaces. Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is printable unless it's a space
	 */
	public static bool unicharIsgraph(dchar c)
	{
		return g_unichar_isgraph(c) != 0;
	}

	/**
	 * Determines whether a character is a lowercase letter.
	 * Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is a lowercase letter
	 */
	public static bool unicharIslower(dchar c)
	{
		return g_unichar_islower(c) != 0;
	}

	/**
	 * Determines whether a character is a mark (non-spacing mark,
	 * combining mark, or enclosing mark in Unicode speak).
	 * Given some UTF-8 text, obtain a character value
	 * with g_utf8_get_char().
	 *
	 * Note: in most cases where isalpha characters are allowed,
	 * ismark characters should be allowed to as they are essential
	 * for writing most European languages as well as many non-Latin
	 * scripts.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is a mark character
	 *
	 * Since: 2.14
	 */
	public static bool unicharIsmark(dchar c)
	{
		return g_unichar_ismark(c) != 0;
	}

	/**
	 * Determines whether a character is printable.
	 * Unlike g_unichar_isgraph(), returns %TRUE for spaces.
	 * Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is printable
	 */
	public static bool unicharIsprint(dchar c)
	{
		return g_unichar_isprint(c) != 0;
	}

	/**
	 * Determines whether a character is punctuation or a symbol.
	 * Given some UTF-8 text, obtain a character value with
	 * g_utf8_get_char().
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is a punctuation or symbol character
	 */
	public static bool unicharIspunct(dchar c)
	{
		return g_unichar_ispunct(c) != 0;
	}

	/**
	 * Determines whether a character is a space, tab, or line separator
	 * (newline, carriage return, etc.).  Given some UTF-8 text, obtain a
	 * character value with g_utf8_get_char().
	 *
	 * (Note: don't use this to do word breaking; you have to use
	 * Pango or equivalent to get word breaking right, the algorithm
	 * is fairly complex.)
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is a space character
	 */
	public static bool unicharIsspace(dchar c)
	{
		return g_unichar_isspace(c) != 0;
	}

	/**
	 * Determines if a character is titlecase. Some characters in
	 * Unicode which are composites, such as the DZ digraph
	 * have three case variants instead of just two. The titlecase
	 * form is used at the beginning of a word where only the
	 * first letter is capitalized. The titlecase form of the DZ
	 * digraph is U+01F2 LATIN CAPITAL LETTTER D WITH SMALL LETTER Z.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if the character is titlecase
	 */
	public static bool unicharIstitle(dchar c)
	{
		return g_unichar_istitle(c) != 0;
	}

	/**
	 * Determines if a character is uppercase.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if @c is an uppercase character
	 */
	public static bool unicharIsupper(dchar c)
	{
		return g_unichar_isupper(c) != 0;
	}

	/**
	 * Determines if a character is typically rendered in a double-width
	 * cell.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if the character is wide
	 */
	public static bool unicharIswide(dchar c)
	{
		return g_unichar_iswide(c) != 0;
	}

	/**
	 * Determines if a character is typically rendered in a double-width
	 * cell under legacy East Asian locales.  If a character is wide according to
	 * g_unichar_iswide(), then it is also reported wide with this function, but
	 * the converse is not necessarily true. See the
	 * [Unicode Standard Annex #11](http://www.unicode.org/reports/tr11/)
	 * for details.
	 *
	 * If a character passes the g_unichar_iswide() test then it will also pass
	 * this test, but not the other way around.  Note that some characters may
	 * pass both this test and g_unichar_iszerowidth().
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if the character is wide in legacy East Asian locales
	 *
	 * Since: 2.12
	 */
	public static bool unicharIswideCjk(dchar c)
	{
		return g_unichar_iswide_cjk(c) != 0;
	}

	/**
	 * Determines if a character is a hexadecimal digit.
	 *
	 * Params:
	 *     c = a Unicode character.
	 *
	 * Returns: %TRUE if the character is a hexadecimal digit
	 */
	public static bool unicharIsxdigit(dchar c)
	{
		return g_unichar_isxdigit(c) != 0;
	}

	/**
	 * Determines if a given character typically takes zero width when rendered.
	 * The return value is %TRUE for all non-spacing and enclosing marks
	 * (e.g., combining accents), format characters, zero-width
	 * space, but not U+00AD SOFT HYPHEN.
	 *
	 * A typical use of this function is with one of g_unichar_iswide() or
	 * g_unichar_iswide_cjk() to determine the number of cells a string occupies
	 * when displayed on a grid display (terminals).  However, note that not all
	 * terminals support zero-width rendering of zero-width marks.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: %TRUE if the character has zero width
	 *
	 * Since: 2.14
	 */
	public static bool unicharIszerowidth(dchar c)
	{
		return g_unichar_iszerowidth(c) != 0;
	}

	/**
	 * Converts a single character to UTF-8.
	 *
	 * Params:
	 *     c = a Unicode character code
	 *     outbuf = output buffer, must have at
	 *         least 6 bytes of space. If %NULL, the length will be computed and
	 *         returned and nothing will be written to @outbuf.
	 *
	 * Returns: number of bytes written
	 */
	public static int unicharToUtf8(dchar c, out char[] outbuf)
	{
		return g_unichar_to_utf8(c, outbuf.ptr);
	}

	/**
	 * Converts a character to lower case.
	 *
	 * Params:
	 *     c = a Unicode character.
	 *
	 * Returns: the result of converting @c to lower case.
	 *     If @c is not an upperlower or titlecase character,
	 *     or has no lowercase equivalent @c is returned unchanged.
	 */
	public static dchar unicharTolower(dchar c)
	{
		return g_unichar_tolower(c);
	}

	/**
	 * Converts a character to the titlecase.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: the result of converting @c to titlecase.
	 *     If @c is not an uppercase or lowercase character,
	 *     @c is returned unchanged.
	 */
	public static dchar unicharTotitle(dchar c)
	{
		return g_unichar_totitle(c);
	}

	/**
	 * Converts a character to uppercase.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: the result of converting @c to uppercase.
	 *     If @c is not a lowercase or titlecase character,
	 *     or has no upper case equivalent @c is returned unchanged.
	 */
	public static dchar unicharToupper(dchar c)
	{
		return g_unichar_toupper(c);
	}

	/**
	 * Classifies a Unicode character by type.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: the type of the character.
	 */
	public static GUnicodeType unicharType(dchar c)
	{
		return g_unichar_type(c);
	}

	/**
	 * Checks whether @ch is a valid Unicode character. Some possible
	 * integer values of @ch will not be valid. 0 is considered a valid
	 * character, though it's normally a string terminator.
	 *
	 * Params:
	 *     ch = a Unicode character
	 *
	 * Returns: %TRUE if @ch is a valid Unicode character
	 */
	public static bool unicharValidate(dchar ch)
	{
		return g_unichar_validate(ch) != 0;
	}

	/**
	 * Determines the numeric value of a character as a hexadecimal
	 * digit.
	 *
	 * Params:
	 *     c = a Unicode character
	 *
	 * Returns: If @c is a hex digit (according to
	 *     g_unichar_isxdigit()), its numeric value. Otherwise, -1.
	 */
	public static int unicharXdigitValue(dchar c)
	{
		return g_unichar_xdigit_value(c);
	}

	/**
	 * Computes the canonical decomposition of a Unicode character.
	 *
	 * Deprecated: Use the more flexible g_unichar_fully_decompose()
	 * instead.
	 *
	 * Params:
	 *     ch = a Unicode character.
	 *     resultLen = location to store the length of the return value.
	 *
	 * Returns: a newly allocated string of Unicode characters.
	 *     @result_len is set to the resulting length of the string.
	 */
	public static dchar* unicodeCanonicalDecomposition(dchar ch, size_t* resultLen)
	{
		return g_unicode_canonical_decomposition(ch, resultLen);
	}

	/**
	 * Computes the canonical ordering of a string in-place.
	 * This rearranges decomposed characters in the string
	 * according to their combining classes.  See the Unicode
	 * manual for more information.
	 *
	 * Params:
	 *     string_ = a UCS-4 encoded string.
	 *     len = the maximum length of @string to use.
	 */
	public static void unicodeCanonicalOrdering(dchar* string_, size_t len)
	{
		g_unicode_canonical_ordering(string_, len);
	}

	/**
	 * Looks up the Unicode script for @iso15924.  ISO 15924 assigns four-letter
	 * codes to scripts.  For example, the code for Arabic is 'Arab'.
	 * This function accepts four letter codes encoded as a @guint32 in a
	 * big-endian fashion.  That is, the code expected for Arabic is
	 * 0x41726162 (0x41 is ASCII code for 'A', 0x72 is ASCII code for 'r', etc).
	 *
	 * See
	 * [Codes for the representation of names of scripts](http://unicode.org/iso15924/codelists.html)
	 * for details.
	 *
	 * Params:
	 *     iso15924 = a Unicode script
	 *
	 * Returns: the Unicode script for @iso15924, or
	 *     of %G_UNICODE_SCRIPT_INVALID_CODE if @iso15924 is zero and
	 *     %G_UNICODE_SCRIPT_UNKNOWN if @iso15924 is unknown.
	 *
	 * Since: 2.30
	 */
	public static GUnicodeScript unicodeScriptFromIso15924(uint iso15924)
	{
		return g_unicode_script_from_iso15924(iso15924);
	}

	/**
	 * Looks up the ISO 15924 code for @script.  ISO 15924 assigns four-letter
	 * codes to scripts.  For example, the code for Arabic is 'Arab'.  The
	 * four letter codes are encoded as a @guint32 by this function in a
	 * big-endian fashion.  That is, the code returned for Arabic is
	 * 0x41726162 (0x41 is ASCII code for 'A', 0x72 is ASCII code for 'r', etc).
	 *
	 * See
	 * [Codes for the representation of names of scripts](http://unicode.org/iso15924/codelists.html)
	 * for details.
	 *
	 * Params:
	 *     script = a Unicode script
	 *
	 * Returns: the ISO 15924 code for @script, encoded as an integer,
	 *     of zero if @script is %G_UNICODE_SCRIPT_INVALID_CODE or
	 *     ISO 15924 code 'Zzzz' (script code for UNKNOWN) if @script is not understood.
	 *
	 * Since: 2.30
	 */
	public static uint unicodeScriptToIso15924(GUnicodeScript script)
	{
		return g_unicode_script_to_iso15924(script);
	}

	/**
	 * Convert a string from UTF-16 to UCS-4. The result will be
	 * nul-terminated.
	 *
	 * Params:
	 *     str = a UTF-16 encoded string
	 *     len = the maximum length (number of #gunichar2) of @str to use.
	 *         If @len < 0, then the string is nul-terminated.
	 *     itemsRead = location to store number of
	 *         words read, or %NULL. If %NULL, then %G_CONVERT_ERROR_PARTIAL_INPUT will
	 *         be returned in case @str contains a trailing partial character. If
	 *         an error occurs then the index of the invalid input is stored here.
	 *     itemsWritten = location to store number
	 *         of characters written, or %NULL. The value stored here does not include
	 *         the trailing 0 character.
	 *
	 * Returns: a pointer to a newly allocated UCS-4 string.
	 *     This value must be freed with g_free(). If an error occurs,
	 *     %NULL will be returned and @error set.
	 *
	 * Throws: GException on failure.
	 */
	public static dchar* utf16ToUcs4(wchar* str, glong len, out glong itemsRead, out glong itemsWritten)
	{
		GError* err = null;

		auto __p = g_utf16_to_ucs4(str, len, &itemsRead, &itemsWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Convert a string from UTF-16 to UTF-8. The result will be
	 * terminated with a 0 byte.
	 *
	 * Note that the input is expected to be already in native endianness,
	 * an initial byte-order-mark character is not handled specially.
	 * g_convert() can be used to convert a byte buffer of UTF-16 data of
	 * ambiguous endianness.
	 *
	 * Further note that this function does not validate the result
	 * string; it may e.g. include embedded NUL characters. The only
	 * validation done by this function is to ensure that the input can
	 * be correctly interpreted as UTF-16, i.e. it doesn't contain
	 * unpaired surrogates or partial character sequences.
	 *
	 * Params:
	 *     str = a UTF-16 encoded string
	 *     len = the maximum length (number of #gunichar2) of @str to use.
	 *         If @len < 0, then the string is nul-terminated.
	 *     itemsRead = location to store number of
	 *         words read, or %NULL. If %NULL, then %G_CONVERT_ERROR_PARTIAL_INPUT will
	 *         be returned in case @str contains a trailing partial character. If
	 *         an error occurs then the index of the invalid input is stored here.
	 *         It’s guaranteed to be non-negative.
	 *     itemsWritten = location to store number
	 *         of bytes written, or %NULL. The value stored here does not include the
	 *         trailing 0 byte. It’s guaranteed to be non-negative.
	 *
	 * Returns: a pointer to a newly allocated UTF-8 string.
	 *     This value must be freed with g_free(). If an error occurs,
	 *     %NULL will be returned and @error set.
	 *
	 * Throws: GException on failure.
	 */
	public static string utf16ToUtf8(wchar* str, glong len, out glong itemsRead, out glong itemsWritten)
	{
		GError* err = null;

		auto retStr = g_utf16_to_utf8(str, len, &itemsRead, &itemsWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts a string into a form that is independent of case. The
	 * result will not correspond to any particular case, but can be
	 * compared for equality or ordered with the results of calling
	 * g_utf8_casefold() on other strings.
	 *
	 * Note that calling g_utf8_casefold() followed by g_utf8_collate() is
	 * only an approximation to the correct linguistic case insensitive
	 * ordering, though it is a fairly good one. Getting this exactly
	 * right would require a more sophisticated collation function that
	 * takes case sensitivity into account. GLib does not currently
	 * provide such a function.
	 *
	 * Params:
	 *     str = a UTF-8 encoded string
	 *     len = length of @str, in bytes, or -1 if @str is nul-terminated.
	 *
	 * Returns: a newly allocated string, that is a
	 *     case independent form of @str.
	 */
	public static string utf8Casefold(string str, ptrdiff_t len)
	{
		auto retStr = g_utf8_casefold(Str.toStringz(str), len);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Compares two strings for ordering using the linguistically
	 * correct rules for the [current locale][setlocale].
	 * When sorting a large number of strings, it will be significantly
	 * faster to obtain collation keys with g_utf8_collate_key() and
	 * compare the keys with strcmp() when sorting instead of sorting
	 * the original strings.
	 *
	 * If the two strings are not comparable due to being in different collation
	 * sequences, the result is undefined. This can happen if the strings are in
	 * different language scripts, for example.
	 *
	 * Params:
	 *     str1 = a UTF-8 encoded string
	 *     str2 = a UTF-8 encoded string
	 *
	 * Returns: < 0 if @str1 compares before @str2,
	 *     0 if they compare equal, > 0 if @str1 compares after @str2.
	 */
	public static int utf8Collate(string str1, string str2)
	{
		return g_utf8_collate(Str.toStringz(str1), Str.toStringz(str2));
	}

	/**
	 * Converts a string into a collation key that can be compared
	 * with other collation keys produced by the same function using
	 * strcmp().
	 *
	 * The results of comparing the collation keys of two strings
	 * with strcmp() will always be the same as comparing the two
	 * original keys with g_utf8_collate().
	 *
	 * Note that this function depends on the [current locale][setlocale].
	 *
	 * Params:
	 *     str = a UTF-8 encoded string.
	 *     len = length of @str, in bytes, or -1 if @str is nul-terminated.
	 *
	 * Returns: a newly allocated string. This string should
	 *     be freed with g_free() when you are done with it.
	 */
	public static string utf8CollateKey(string str, ptrdiff_t len)
	{
		auto retStr = g_utf8_collate_key(Str.toStringz(str), len);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts a string into a collation key that can be compared
	 * with other collation keys produced by the same function using strcmp().
	 *
	 * In order to sort filenames correctly, this function treats the dot '.'
	 * as a special case. Most dictionary orderings seem to consider it
	 * insignificant, thus producing the ordering "event.c" "eventgenerator.c"
	 * "event.h" instead of "event.c" "event.h" "eventgenerator.c". Also, we
	 * would like to treat numbers intelligently so that "file1" "file10" "file5"
	 * is sorted as "file1" "file5" "file10".
	 *
	 * Note that this function depends on the [current locale][setlocale].
	 *
	 * Params:
	 *     str = a UTF-8 encoded string.
	 *     len = length of @str, in bytes, or -1 if @str is nul-terminated.
	 *
	 * Returns: a newly allocated string. This string should
	 *     be freed with g_free() when you are done with it.
	 *
	 * Since: 2.8
	 */
	public static string utf8CollateKeyForFilename(string str, ptrdiff_t len)
	{
		auto retStr = g_utf8_collate_key_for_filename(Str.toStringz(str), len);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Finds the start of the next UTF-8 character in the string after @p.
	 *
	 * @p does not have to be at the beginning of a UTF-8 character. No check
	 * is made to see if the character found is actually valid other than
	 * it starts with an appropriate byte.
	 *
	 * If @end is %NULL, the return value will never be %NULL: if the end of the
	 * string is reached, a pointer to the terminating nul byte is returned. If
	 * @end is non-%NULL, the return value will be %NULL if the end of the string
	 * is reached.
	 *
	 * Params:
	 *     p = a pointer to a position within a UTF-8 encoded string
	 *     end = a pointer to the byte following the end of the string,
	 *         or %NULL to indicate that the string is nul-terminated
	 *
	 * Returns: a pointer to the found character or %NULL if @end is
	 *     set and is reached
	 */
	public static string utf8FindNextChar(string p, string end)
	{
		return Str.toString(g_utf8_find_next_char(Str.toStringz(p), Str.toStringz(end)));
	}

	/**
	 * Given a position @p with a UTF-8 encoded string @str, find the start
	 * of the previous UTF-8 character starting before @p. Returns %NULL if no
	 * UTF-8 characters are present in @str before @p.
	 *
	 * @p does not have to be at the beginning of a UTF-8 character. No check
	 * is made to see if the character found is actually valid other than
	 * it starts with an appropriate byte.
	 *
	 * Params:
	 *     str = pointer to the beginning of a UTF-8 encoded string
	 *     p = pointer to some position within @str
	 *
	 * Returns: a pointer to the found character or %NULL.
	 */
	public static string utf8FindPrevChar(string str, string p)
	{
		return Str.toString(g_utf8_find_prev_char(Str.toStringz(str), Str.toStringz(p)));
	}

	/**
	 * Converts a sequence of bytes encoded as UTF-8 to a Unicode character.
	 *
	 * If @p does not point to a valid UTF-8 encoded character, results
	 * are undefined. If you are not sure that the bytes are complete
	 * valid Unicode characters, you should use g_utf8_get_char_validated()
	 * instead.
	 *
	 * Params:
	 *     p = a pointer to Unicode character encoded as UTF-8
	 *
	 * Returns: the resulting character
	 */
	public static dchar utf8GetChar(string p)
	{
		return g_utf8_get_char(Str.toStringz(p));
	}

	/**
	 * Convert a sequence of bytes encoded as UTF-8 to a Unicode character.
	 * This function checks for incomplete characters, for invalid characters
	 * such as characters that are out of the range of Unicode, and for
	 * overlong encodings of valid characters.
	 *
	 * Note that g_utf8_get_char_validated() returns (gunichar)-2 if
	 * @max_len is positive and any of the bytes in the first UTF-8 character
	 * sequence are nul.
	 *
	 * Params:
	 *     p = a pointer to Unicode character encoded as UTF-8
	 *     maxLen = the maximum number of bytes to read, or -1 if @p is nul-terminated
	 *
	 * Returns: the resulting character. If @p points to a partial
	 *     sequence at the end of a string that could begin a valid
	 *     character (or if @max_len is zero), returns (gunichar)-2;
	 *     otherwise, if @p does not point to a valid UTF-8 encoded
	 *     Unicode character, returns (gunichar)-1.
	 */
	public static dchar utf8GetCharValidated(string p, ptrdiff_t maxLen)
	{
		return g_utf8_get_char_validated(Str.toStringz(p), maxLen);
	}

	/**
	 * Converts a string into canonical form, standardizing
	 * such issues as whether a character with an accent
	 * is represented as a base character and combining
	 * accent or as a single precomposed character. The
	 * string has to be valid UTF-8, otherwise %NULL is
	 * returned. You should generally call g_utf8_normalize()
	 * before comparing two Unicode strings.
	 *
	 * The normalization mode %G_NORMALIZE_DEFAULT only
	 * standardizes differences that do not affect the
	 * text content, such as the above-mentioned accent
	 * representation. %G_NORMALIZE_ALL also standardizes
	 * the "compatibility" characters in Unicode, such
	 * as SUPERSCRIPT THREE to the standard forms
	 * (in this case DIGIT THREE). Formatting information
	 * may be lost but for most text operations such
	 * characters should be considered the same.
	 *
	 * %G_NORMALIZE_DEFAULT_COMPOSE and %G_NORMALIZE_ALL_COMPOSE
	 * are like %G_NORMALIZE_DEFAULT and %G_NORMALIZE_ALL,
	 * but returned a result with composed forms rather
	 * than a maximally decomposed form. This is often
	 * useful if you intend to convert the string to
	 * a legacy encoding or pass it to a system with
	 * less capable Unicode handling.
	 *
	 * Params:
	 *     str = a UTF-8 encoded string.
	 *     len = length of @str, in bytes, or -1 if @str is nul-terminated.
	 *     mode = the type of normalization to perform.
	 *
	 * Returns: a newly allocated string, that
	 *     is the normalized form of @str, or %NULL if @str
	 *     is not valid UTF-8.
	 */
	public static string utf8Normalize(string str, ptrdiff_t len, GNormalizeMode mode)
	{
		auto retStr = g_utf8_normalize(Str.toStringz(str), len, mode);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts from an integer character offset to a pointer to a position
	 * within the string.
	 *
	 * Since 2.10, this function allows to pass a negative @offset to
	 * step backwards. It is usually worth stepping backwards from the end
	 * instead of forwards if @offset is in the last fourth of the string,
	 * since moving forward is about 3 times faster than moving backward.
	 *
	 * Note that this function doesn't abort when reaching the end of @str.
	 * Therefore you should be sure that @offset is within string boundaries
	 * before calling that function. Call g_utf8_strlen() when unsure.
	 * This limitation exists as this function is called frequently during
	 * text rendering and therefore has to be as fast as possible.
	 *
	 * Params:
	 *     str = a UTF-8 encoded string
	 *     offset = a character offset within @str
	 *
	 * Returns: the resulting pointer
	 */
	public static string utf8OffsetToPointer(string str, glong offset)
	{
		return Str.toString(g_utf8_offset_to_pointer(Str.toStringz(str), offset));
	}

	/**
	 * Converts from a pointer to position within a string to an integer
	 * character offset.
	 *
	 * Since 2.10, this function allows @pos to be before @str, and returns
	 * a negative offset in this case.
	 *
	 * Params:
	 *     str = a UTF-8 encoded string
	 *     pos = a pointer to a position within @str
	 *
	 * Returns: the resulting character offset
	 */
	public static glong utf8PointerToOffset(string str, string pos)
	{
		return g_utf8_pointer_to_offset(Str.toStringz(str), Str.toStringz(pos));
	}

	/**
	 * Finds the previous UTF-8 character in the string before @p.
	 *
	 * @p does not have to be at the beginning of a UTF-8 character. No check
	 * is made to see if the character found is actually valid other than
	 * it starts with an appropriate byte. If @p might be the first
	 * character of the string, you must use g_utf8_find_prev_char() instead.
	 *
	 * Params:
	 *     p = a pointer to a position within a UTF-8 encoded string
	 *
	 * Returns: a pointer to the found character
	 */
	public static string utf8PrevChar(string p)
	{
		return Str.toString(g_utf8_prev_char(Str.toStringz(p)));
	}

	/**
	 * Finds the leftmost occurrence of the given Unicode character
	 * in a UTF-8 encoded string, while limiting the search to @len bytes.
	 * If @len is -1, allow unbounded search.
	 *
	 * Params:
	 *     p = a nul-terminated UTF-8 encoded string
	 *     len = the maximum length of @p
	 *     c = a Unicode character
	 *
	 * Returns: %NULL if the string does not contain the character,
	 *     otherwise, a pointer to the start of the leftmost occurrence
	 *     of the character in the string.
	 */
	public static string utf8Strchr(string p, ptrdiff_t len, dchar c)
	{
		return Str.toString(g_utf8_strchr(Str.toStringz(p), len, c));
	}

	/**
	 * Converts all Unicode characters in the string that have a case
	 * to lowercase. The exact manner that this is done depends
	 * on the current locale, and may result in the number of
	 * characters in the string changing.
	 *
	 * Params:
	 *     str = a UTF-8 encoded string
	 *     len = length of @str, in bytes, or -1 if @str is nul-terminated.
	 *
	 * Returns: a newly allocated string, with all characters
	 *     converted to lowercase.
	 */
	public static string utf8Strdown(string str, ptrdiff_t len)
	{
		auto retStr = g_utf8_strdown(Str.toStringz(str), len);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Computes the length of the string in characters, not including
	 * the terminating nul character. If the @max'th byte falls in the
	 * middle of a character, the last (partial) character is not counted.
	 *
	 * Params:
	 *     p = pointer to the start of a UTF-8 encoded string
	 *     max = the maximum number of bytes to examine. If @max
	 *         is less than 0, then the string is assumed to be
	 *         nul-terminated. If @max is 0, @p will not be examined and
	 *         may be %NULL. If @max is greater than 0, up to @max
	 *         bytes are examined
	 *
	 * Returns: the length of the string in characters
	 */
	public static glong utf8Strlen(string p, ptrdiff_t max)
	{
		return g_utf8_strlen(Str.toStringz(p), max);
	}

	/**
	 * Like the standard C strncpy() function, but copies a given number
	 * of characters instead of a given number of bytes. The @src string
	 * must be valid UTF-8 encoded text. (Use g_utf8_validate() on all
	 * text before trying to use UTF-8 utility functions with it.)
	 *
	 * Note you must ensure @dest is at least 4 * @n to fit the
	 * largest possible UTF-8 characters
	 *
	 * Params:
	 *     dest = buffer to fill with characters from @src
	 *     src = UTF-8 encoded string
	 *     n = character count
	 *
	 * Returns: @dest
	 */
	public static string utf8Strncpy(string dest, string src, size_t n)
	{
		return Str.toString(g_utf8_strncpy(Str.toStringz(dest), Str.toStringz(src), n));
	}

	/**
	 * Find the rightmost occurrence of the given Unicode character
	 * in a UTF-8 encoded string, while limiting the search to @len bytes.
	 * If @len is -1, allow unbounded search.
	 *
	 * Params:
	 *     p = a nul-terminated UTF-8 encoded string
	 *     len = the maximum length of @p
	 *     c = a Unicode character
	 *
	 * Returns: %NULL if the string does not contain the character,
	 *     otherwise, a pointer to the start of the rightmost occurrence
	 *     of the character in the string.
	 */
	public static string utf8Strrchr(string p, ptrdiff_t len, dchar c)
	{
		return Str.toString(g_utf8_strrchr(Str.toStringz(p), len, c));
	}

	/**
	 * Reverses a UTF-8 string. @str must be valid UTF-8 encoded text.
	 * (Use g_utf8_validate() on all text before trying to use UTF-8
	 * utility functions with it.)
	 *
	 * This function is intended for programmatic uses of reversed strings.
	 * It pays no attention to decomposed characters, combining marks, byte
	 * order marks, directional indicators (LRM, LRO, etc) and similar
	 * characters which might need special handling when reversing a string
	 * for display purposes.
	 *
	 * Note that unlike g_strreverse(), this function returns
	 * newly-allocated memory, which should be freed with g_free() when
	 * no longer needed.
	 *
	 * Params:
	 *     str = a UTF-8 encoded string
	 *     len = the maximum length of @str to use, in bytes. If @len < 0,
	 *         then the string is nul-terminated.
	 *
	 * Returns: a newly-allocated string which is the reverse of @str
	 *
	 * Since: 2.2
	 */
	public static string utf8Strreverse(string str, ptrdiff_t len)
	{
		auto retStr = g_utf8_strreverse(Str.toStringz(str), len);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts all Unicode characters in the string that have a case
	 * to uppercase. The exact manner that this is done depends
	 * on the current locale, and may result in the number of
	 * characters in the string increasing. (For instance, the
	 * German ess-zet will be changed to SS.)
	 *
	 * Params:
	 *     str = a UTF-8 encoded string
	 *     len = length of @str, in bytes, or -1 if @str is nul-terminated.
	 *
	 * Returns: a newly allocated string, with all characters
	 *     converted to uppercase.
	 */
	public static string utf8Strup(string str, ptrdiff_t len)
	{
		auto retStr = g_utf8_strup(Str.toStringz(str), len);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Copies a substring out of a UTF-8 encoded string.
	 * The substring will contain @end_pos - @start_pos characters.
	 *
	 * Since GLib 2.72, `-1` can be passed to @end_pos to indicate the
	 * end of the string.
	 *
	 * Params:
	 *     str = a UTF-8 encoded string
	 *     startPos = a character offset within @str
	 *     endPos = another character offset within @str,
	 *         or `-1` to indicate the end of the string
	 *
	 * Returns: a newly allocated copy of the requested
	 *     substring. Free with g_free() when no longer needed.
	 *
	 * Since: 2.30
	 */
	public static string utf8Substring(string str, glong startPos, glong endPos)
	{
		auto retStr = g_utf8_substring(Str.toStringz(str), startPos, endPos);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Convert a string from UTF-8 to a 32-bit fixed width
	 * representation as UCS-4. A trailing 0 character will be added to the
	 * string after the converted text.
	 *
	 * Params:
	 *     str = a UTF-8 encoded string
	 *     len = the maximum length of @str to use, in bytes. If @len < 0,
	 *         then the string is nul-terminated.
	 *     itemsRead = location to store number of
	 *         bytes read, or %NULL.
	 *         If %NULL, then %G_CONVERT_ERROR_PARTIAL_INPUT will be
	 *         returned in case @str contains a trailing partial
	 *         character. If an error occurs then the index of the
	 *         invalid input is stored here.
	 *     itemsWritten = location to store number
	 *         of characters written or %NULL. The value here stored does not include
	 *         the trailing 0 character.
	 *
	 * Returns: a pointer to a newly allocated UCS-4 string.
	 *     This value must be freed with g_free(). If an error occurs,
	 *     %NULL will be returned and @error set.
	 *
	 * Throws: GException on failure.
	 */
	public static dchar* utf8ToUcs4(string str, glong len, out glong itemsRead, out glong itemsWritten)
	{
		GError* err = null;

		auto __p = g_utf8_to_ucs4(Str.toStringz(str), len, &itemsRead, &itemsWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Convert a string from UTF-8 to a 32-bit fixed width
	 * representation as UCS-4, assuming valid UTF-8 input.
	 * This function is roughly twice as fast as g_utf8_to_ucs4()
	 * but does no error checking on the input. A trailing 0 character
	 * will be added to the string after the converted text.
	 *
	 * Params:
	 *     str = a UTF-8 encoded string
	 *     len = the maximum length of @str to use, in bytes. If @len < 0,
	 *         then the string is nul-terminated.
	 *     itemsWritten = location to store the
	 *         number of characters in the result, or %NULL.
	 *
	 * Returns: a pointer to a newly allocated UCS-4 string.
	 *     This value must be freed with g_free().
	 */
	public static dchar* utf8ToUcs4Fast(string str, glong len, out glong itemsWritten)
	{
		return g_utf8_to_ucs4_fast(Str.toStringz(str), len, &itemsWritten);
	}

	/**
	 * Convert a string from UTF-8 to UTF-16. A 0 character will be
	 * added to the result after the converted text.
	 *
	 * Params:
	 *     str = a UTF-8 encoded string
	 *     len = the maximum length (number of bytes) of @str to use.
	 *         If @len < 0, then the string is nul-terminated.
	 *     itemsRead = location to store number of
	 *         bytes read, or %NULL. If %NULL, then %G_CONVERT_ERROR_PARTIAL_INPUT will
	 *         be returned in case @str contains a trailing partial character. If
	 *         an error occurs then the index of the invalid input is stored here.
	 *     itemsWritten = location to store number
	 *         of #gunichar2 written, or %NULL. The value stored here does not include
	 *         the trailing 0.
	 *
	 * Returns: a pointer to a newly allocated UTF-16 string.
	 *     This value must be freed with g_free(). If an error occurs,
	 *     %NULL will be returned and @error set.
	 *
	 * Throws: GException on failure.
	 */
	public static wchar* utf8ToUtf16(string str, glong len, out glong itemsRead, out glong itemsWritten)
	{
		GError* err = null;

		auto __p = g_utf8_to_utf16(Str.toStringz(str), len, &itemsRead, &itemsWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Validates UTF-8 encoded text. @str is the text to validate;
	 * if @str is nul-terminated, then @max_len can be -1, otherwise
	 * @max_len should be the number of bytes to validate.
	 * If @end is non-%NULL, then the end of the valid range
	 * will be stored there (i.e. the start of the first invalid
	 * character if some bytes were invalid, or the end of the text
	 * being validated otherwise).
	 *
	 * Note that g_utf8_validate() returns %FALSE if @max_len is
	 * positive and any of the @max_len bytes are nul.
	 *
	 * Returns %TRUE if all of @str was valid. Many GLib and GTK+
	 * routines require valid UTF-8 as input; so data read from a file
	 * or the network should be checked with g_utf8_validate() before
	 * doing anything else with it.
	 *
	 * Params:
	 *     str = a pointer to character data
	 *     end = return location for end of valid data
	 *
	 * Returns: %TRUE if the text was valid UTF-8
	 */
	public static bool utf8Validate(string str, out string end)
	{
		char* outend = null;

		auto __p = g_utf8_validate(Str.toStringz(str), cast(ptrdiff_t)str.length, &outend) != 0;

		end = Str.toString(outend);

		return __p;
	}

	/**
	 * If the provided string is valid UTF-8, return a copy of it. If not,
	 * return a copy in which bytes that could not be interpreted as valid Unicode
	 * are replaced with the Unicode replacement character (U+FFFD).
	 *
	 * For example, this is an appropriate function to use if you have received
	 * a string that was incorrectly declared to be UTF-8, and you need a valid
	 * UTF-8 version of it that can be logged or displayed to the user, with the
	 * assumption that it is close enough to ASCII or UTF-8 to be mostly
	 * readable as-is.
	 *
	 * Params:
	 *     str = string to coerce into UTF-8
	 *     len = the maximum length of @str to use, in bytes. If @len < 0,
	 *         then the string is nul-terminated.
	 *
	 * Returns: a valid UTF-8 string whose content resembles @str
	 *
	 * Since: 2.52
	 */
	public static string utf8MakeValid(string str, ptrdiff_t len)
	{
		auto retStr = g_utf8_make_valid(Str.toStringz(str), len);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Validates UTF-8 encoded text.
	 *
	 * As with g_utf8_validate(), but @max_len must be set, and hence this function
	 * will always return %FALSE if any of the bytes of @str are nul.
	 *
	 * Params:
	 *     str = a pointer to character data
	 *     end = return location for end of valid data
	 *
	 * Returns: %TRUE if the text was valid UTF-8
	 *
	 * Since: 2.60
	 */
	public static bool utf8ValidateLen(string str, out string end)
	{
		char* outend = null;

		auto __p = g_utf8_validate_len(Str.toStringz(str), cast(size_t)str.length, &outend) != 0;

		end = Str.toString(outend);

		return __p;
	}
}
