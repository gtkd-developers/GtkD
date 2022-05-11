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


module glib.CharacterSet;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct CharacterSet
{

	/**
	 * Converts a string from one character set to another.
	 *
	 * Note that you should use g_iconv() for streaming conversions.
	 * Despite the fact that @bytes_read can return information about partial
	 * characters, the g_convert_... functions are not generally suitable
	 * for streaming. If the underlying converter maintains internal state,
	 * then this won't be preserved across successive calls to g_convert(),
	 * g_convert_with_iconv() or g_convert_with_fallback(). (An example of
	 * this is the GNU C converter for CP1255 which does not emit a base
	 * character until it knows that the next character is not a mark that
	 * could combine with the base character.)
	 *
	 * Using extensions such as "//TRANSLIT" may not work (or may not work
	 * well) on many platforms.  Consider using g_str_to_ascii() instead.
	 *
	 * Params:
	 *     str = the string to convert.
	 *     toCodeset = name of character set into which to convert @str
	 *     fromCodeset = character set of @str.
	 *     bytesRead = location to store the number of bytes in
	 *         the input string that were successfully converted, or %NULL.
	 *         Even if the conversion was successful, this may be
	 *         less than @len if there were partial characters
	 *         at the end of the input. If the error
	 *         %G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *         stored will be the byte offset after the last valid
	 *         input sequence.
	 *
	 * Returns: If the conversion was successful, a newly allocated buffer
	 *     containing the converted string, which must be freed with g_free().
	 *     Otherwise %NULL and @error will be set.
	 *
	 * Throws: GException on failure.
	 */
	public static string convert(string str, string toCodeset, string fromCodeset, out size_t bytesRead)
	{
		size_t bytesWritten;
		GError* err = null;

		auto retStr = g_convert(Str.toStringz(str), cast(ptrdiff_t)str.length, Str.toStringz(toCodeset), Str.toStringz(fromCodeset), &bytesRead, &bytesWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr, bytesWritten);
	}

	/** */
	public static GQuark convertErrorQuark()
	{
		return g_convert_error_quark();
	}

	/**
	 * Converts a string from one character set to another, possibly
	 * including fallback sequences for characters not representable
	 * in the output. Note that it is not guaranteed that the specification
	 * for the fallback sequences in @fallback will be honored. Some
	 * systems may do an approximate conversion from @from_codeset
	 * to @to_codeset in their iconv() functions,
	 * in which case GLib will simply return that approximate conversion.
	 *
	 * Note that you should use g_iconv() for streaming conversions.
	 * Despite the fact that @bytes_read can return information about partial
	 * characters, the g_convert_... functions are not generally suitable
	 * for streaming. If the underlying converter maintains internal state,
	 * then this won't be preserved across successive calls to g_convert(),
	 * g_convert_with_iconv() or g_convert_with_fallback(). (An example of
	 * this is the GNU C converter for CP1255 which does not emit a base
	 * character until it knows that the next character is not a mark that
	 * could combine with the base character.)
	 *
	 * Params:
	 *     str = the string to convert.
	 *     toCodeset = name of character set into which to convert @str
	 *     fromCodeset = character set of @str.
	 *     fallback = UTF-8 string to use in place of characters not
	 *         present in the target encoding. (The string must be
	 *         representable in the target encoding).
	 *         If %NULL, characters not in the target encoding will
	 *         be represented as Unicode escapes \uxxxx or \Uxxxxyyyy.
	 *     bytesRead = location to store the number of bytes in
	 *         the input string that were successfully converted, or %NULL.
	 *         Even if the conversion was successful, this may be
	 *         less than @len if there were partial characters
	 *         at the end of the input.
	 *
	 * Returns: If the conversion was successful, a newly allocated buffer
	 *     containing the converted string, which must be freed with g_free().
	 *     Otherwise %NULL and @error will be set.
	 *
	 * Throws: GException on failure.
	 */
	public static string convertWithFallback(string str, string toCodeset, string fromCodeset, string fallback, out size_t bytesRead)
	{
		size_t bytesWritten;
		GError* err = null;

		auto retStr = g_convert_with_fallback(Str.toStringz(str), cast(ptrdiff_t)str.length, Str.toStringz(toCodeset), Str.toStringz(fromCodeset), Str.toStringz(fallback), &bytesRead, &bytesWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr, bytesWritten);
	}

	/**
	 * Converts a string from one character set to another.
	 *
	 * Note that you should use g_iconv() for streaming conversions.
	 * Despite the fact that @bytes_read can return information about partial
	 * characters, the g_convert_... functions are not generally suitable
	 * for streaming. If the underlying converter maintains internal state,
	 * then this won't be preserved across successive calls to g_convert(),
	 * g_convert_with_iconv() or g_convert_with_fallback(). (An example of
	 * this is the GNU C converter for CP1255 which does not emit a base
	 * character until it knows that the next character is not a mark that
	 * could combine with the base character.)
	 *
	 * Characters which are valid in the input character set, but which have no
	 * representation in the output character set will result in a
	 * %G_CONVERT_ERROR_ILLEGAL_SEQUENCE error. This is in contrast to the iconv()
	 * specification, which leaves this behaviour implementation defined. Note that
	 * this is the same error code as is returned for an invalid byte sequence in
	 * the input character set. To get defined behaviour for conversion of
	 * unrepresentable characters, use g_convert_with_fallback().
	 *
	 * Params:
	 *     str = the string to convert.
	 *     converter = conversion descriptor from g_iconv_open()
	 *     bytesRead = location to store the number of bytes in
	 *         the input string that were successfully converted, or %NULL.
	 *         Even if the conversion was successful, this may be
	 *         less than @len if there were partial characters
	 *         at the end of the input. If the error
	 *         %G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *         stored will be the byte offset after the last valid
	 *         input sequence.
	 *
	 * Returns: If the conversion was successful, a newly allocated buffer
	 *     containing the converted string, which must be freed with
	 *     g_free(). Otherwise %NULL and @error will be set.
	 *
	 * Throws: GException on failure.
	 */
	public static string convertWithIconv(string str, GIConv converter, out size_t bytesRead)
	{
		size_t bytesWritten;
		GError* err = null;

		auto retStr = g_convert_with_iconv(Str.toStringz(str), cast(ptrdiff_t)str.length, converter, &bytesRead, &bytesWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr, bytesWritten);
	}

	/**
	 * Returns the display basename for the particular filename, guaranteed
	 * to be valid UTF-8. The display name might not be identical to the filename,
	 * for instance there might be problems converting it to UTF-8, and some files
	 * can be translated in the display.
	 *
	 * If GLib cannot make sense of the encoding of @filename, as a last resort it
	 * replaces unknown characters with U+FFFD, the Unicode replacement character.
	 * You can search the result for the UTF-8 encoding of this character (which is
	 * "\357\277\275" in octal notation) to find out if @filename was in an invalid
	 * encoding.
	 *
	 * You must pass the whole absolute pathname to this functions so that
	 * translation of well known locations can be done.
	 *
	 * This function is preferred over g_filename_display_name() if you know the
	 * whole path, as it allows translation.
	 *
	 * Params:
	 *     filename = an absolute pathname in the
	 *         GLib file name encoding
	 *
	 * Returns: a newly allocated string containing
	 *     a rendition of the basename of the filename in valid UTF-8
	 *
	 * Since: 2.6
	 */
	public static string filenameDisplayBasename(string filename)
	{
		auto retStr = g_filename_display_basename(Str.toStringz(filename));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts a filename into a valid UTF-8 string. The conversion is
	 * not necessarily reversible, so you should keep the original around
	 * and use the return value of this function only for display purposes.
	 * Unlike g_filename_to_utf8(), the result is guaranteed to be non-%NULL
	 * even if the filename actually isn't in the GLib file name encoding.
	 *
	 * If GLib cannot make sense of the encoding of @filename, as a last resort it
	 * replaces unknown characters with U+FFFD, the Unicode replacement character.
	 * You can search the result for the UTF-8 encoding of this character (which is
	 * "\357\277\275" in octal notation) to find out if @filename was in an invalid
	 * encoding.
	 *
	 * If you know the whole pathname of the file you should use
	 * g_filename_display_basename(), since that allows location-based
	 * translation of filenames.
	 *
	 * Params:
	 *     filename = a pathname hopefully in the
	 *         GLib file name encoding
	 *
	 * Returns: a newly allocated string containing
	 *     a rendition of the filename in valid UTF-8
	 *
	 * Since: 2.6
	 */
	public static string filenameDisplayName(string filename)
	{
		auto retStr = g_filename_display_name(Str.toStringz(filename));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts a string from UTF-8 to the encoding GLib uses for
	 * filenames. Note that on Windows GLib uses UTF-8 for filenames;
	 * on other platforms, this function indirectly depends on the
	 * [current locale][setlocale].
	 *
	 * The input string shall not contain nul characters even if the @len
	 * argument is positive. A nul character found inside the string will result
	 * in error %G_CONVERT_ERROR_ILLEGAL_SEQUENCE. If the filename encoding is
	 * not UTF-8 and the conversion output contains a nul character, the error
	 * %G_CONVERT_ERROR_EMBEDDED_NUL is set and the function returns %NULL.
	 *
	 * Params:
	 *     utf8string = a UTF-8 encoded string.
	 *     len = the length of the string, or -1 if the string is
	 *         nul-terminated.
	 *     bytesRead = location to store the number of bytes in
	 *         the input string that were successfully converted, or %NULL.
	 *         Even if the conversion was successful, this may be
	 *         less than @len if there were partial characters
	 *         at the end of the input. If the error
	 *         %G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *         stored will be the byte offset after the last valid
	 *         input sequence.
	 *     bytesWritten = the number of bytes stored in
	 *         the output buffer (not including the terminating nul).
	 *
	 * Returns: The converted string, or %NULL on an error.
	 *
	 * Throws: GException on failure.
	 */
	public static string filenameFromUtf8(string utf8string, ptrdiff_t len, out size_t bytesRead, out size_t bytesWritten)
	{
		GError* err = null;

		auto retStr = g_filename_from_utf8(Str.toStringz(utf8string), len, &bytesRead, &bytesWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts a string which is in the encoding used by GLib for
	 * filenames into a UTF-8 string. Note that on Windows GLib uses UTF-8
	 * for filenames; on other platforms, this function indirectly depends on
	 * the [current locale][setlocale].
	 *
	 * The input string shall not contain nul characters even if the @len
	 * argument is positive. A nul character found inside the string will result
	 * in error %G_CONVERT_ERROR_ILLEGAL_SEQUENCE.
	 * If the source encoding is not UTF-8 and the conversion output contains a
	 * nul character, the error %G_CONVERT_ERROR_EMBEDDED_NUL is set and the
	 * function returns %NULL. Use g_convert() to produce output that
	 * may contain embedded nul characters.
	 *
	 * Params:
	 *     opsysstring = a string in the encoding for filenames
	 *     len = the length of the string, or -1 if the string is
	 *         nul-terminated (Note that some encodings may allow nul
	 *         bytes to occur inside strings. In that case, using -1
	 *         for the @len parameter is unsafe)
	 *     bytesRead = location to store the number of bytes in the
	 *         input string that were successfully converted, or %NULL.
	 *         Even if the conversion was successful, this may be
	 *         less than @len if there were partial characters
	 *         at the end of the input. If the error
	 *         %G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *         stored will be the byte offset after the last valid
	 *         input sequence.
	 *     bytesWritten = the number of bytes stored in the output
	 *         buffer (not including the terminating nul).
	 *
	 * Returns: The converted string, or %NULL on an error.
	 *
	 * Throws: GException on failure.
	 */
	public static string filenameToUtf8(string opsysstring, ptrdiff_t len, out size_t bytesRead, out size_t bytesWritten)
	{
		GError* err = null;

		auto retStr = g_filename_to_utf8(Str.toStringz(opsysstring), len, &bytesRead, &bytesWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Obtains the character set for the [current locale][setlocale]; you
	 * might use this character set as an argument to g_convert(), to convert
	 * from the current locale's encoding to some other encoding. (Frequently
	 * g_locale_to_utf8() and g_locale_from_utf8() are nice shortcuts, though.)
	 *
	 * On Windows the character set returned by this function is the
	 * so-called system default ANSI code-page. That is the character set
	 * used by the "narrow" versions of C library and Win32 functions that
	 * handle file names. It might be different from the character set
	 * used by the C library's current locale.
	 *
	 * On Linux, the character set is found by consulting nl_langinfo() if
	 * available. If not, the environment variables `LC_ALL`, `LC_CTYPE`, `LANG`
	 * and `CHARSET` are queried in order.
	 *
	 * The return value is %TRUE if the locale's encoding is UTF-8, in that
	 * case you can perhaps avoid calling g_convert().
	 *
	 * The string returned in @charset is not allocated, and should not be
	 * freed.
	 *
	 * Params:
	 *     charset = return location for character set
	 *         name, or %NULL.
	 *
	 * Returns: %TRUE if the returned charset is UTF-8
	 */
	public static bool getCharset(out string charset)
	{
		char* outcharset = null;

		auto __p = g_get_charset(&outcharset) != 0;

		charset = Str.toString(outcharset);

		return __p;
	}

	/**
	 * Gets the character set for the current locale.
	 *
	 * Returns: a newly allocated string containing the name
	 *     of the character set. This string must be freed with g_free().
	 */
	public static string getCodeset()
	{
		auto retStr = g_get_codeset();

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Determines the preferred character sets used for filenames.
	 * The first character set from the @charsets is the filename encoding, the
	 * subsequent character sets are used when trying to generate a displayable
	 * representation of a filename, see g_filename_display_name().
	 *
	 * On Unix, the character sets are determined by consulting the
	 * environment variables `G_FILENAME_ENCODING` and `G_BROKEN_FILENAMES`.
	 * On Windows, the character set used in the GLib API is always UTF-8
	 * and said environment variables have no effect.
	 *
	 * `G_FILENAME_ENCODING` may be set to a comma-separated list of
	 * character set names. The special token "\@locale" is taken
	 * to  mean the character set for the [current locale][setlocale].
	 * If `G_FILENAME_ENCODING` is not set, but `G_BROKEN_FILENAMES` is,
	 * the character set of the current locale is taken as the filename
	 * encoding. If neither environment variable  is set, UTF-8 is taken
	 * as the filename encoding, but the character set of the current locale
	 * is also put in the list of encodings.
	 *
	 * The returned @charsets belong to GLib and must not be freed.
	 *
	 * Note that on Unix, regardless of the locale character set or
	 * `G_FILENAME_ENCODING` value, the actual file names present
	 * on a system might be in any random encoding or just gibberish.
	 *
	 * Params:
	 *     filenameCharsets = return location for the %NULL-terminated list of encoding names
	 *
	 * Returns: %TRUE if the filename encoding is UTF-8.
	 *
	 * Since: 2.6
	 */
	public static bool getFilenameCharsets(out string[] filenameCharsets)
	{
		char** outfilenameCharsets = null;

		auto __p = g_get_filename_charsets(&outfilenameCharsets) != 0;

		filenameCharsets = Str.toStringArray(outfilenameCharsets);

		return __p;
	}

	/**
	 * Converts a string from UTF-8 to the encoding used for strings by
	 * the C runtime (usually the same as that used by the operating
	 * system) in the [current locale][setlocale]. On Windows this means
	 * the system codepage.
	 *
	 * The input string shall not contain nul characters even if the @len
	 * argument is positive. A nul character found inside the string will result
	 * in error %G_CONVERT_ERROR_ILLEGAL_SEQUENCE. Use g_convert() to convert
	 * input that may contain embedded nul characters.
	 *
	 * Params:
	 *     utf8string = a UTF-8 encoded string
	 *     len = the length of the string, or -1 if the string is
	 *         nul-terminated.
	 *     bytesRead = location to store the number of bytes in the
	 *         input string that were successfully converted, or %NULL.
	 *         Even if the conversion was successful, this may be
	 *         less than @len if there were partial characters
	 *         at the end of the input. If the error
	 *         %G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *         stored will be the byte offset after the last valid
	 *         input sequence.
	 *
	 * Returns: A newly-allocated buffer containing the converted string,
	 *     or %NULL on an error, and error will be set.
	 *
	 * Throws: GException on failure.
	 */
	public static string localeFromUtf8(string utf8string, ptrdiff_t len, out size_t bytesRead)
	{
		size_t bytesWritten;
		GError* err = null;

		auto retStr = g_locale_from_utf8(Str.toStringz(utf8string), len, &bytesRead, &bytesWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr, bytesWritten);
	}

	/**
	 * Converts a string which is in the encoding used for strings by
	 * the C runtime (usually the same as that used by the operating
	 * system) in the [current locale][setlocale] into a UTF-8 string.
	 *
	 * If the source encoding is not UTF-8 and the conversion output contains a
	 * nul character, the error %G_CONVERT_ERROR_EMBEDDED_NUL is set and the
	 * function returns %NULL.
	 * If the source encoding is UTF-8, an embedded nul character is treated with
	 * the %G_CONVERT_ERROR_ILLEGAL_SEQUENCE error for backward compatibility with
	 * earlier versions of this library. Use g_convert() to produce output that
	 * may contain embedded nul characters.
	 *
	 * Params:
	 *     opsysstring = a string in the
	 *         encoding of the current locale. On Windows
	 *         this means the system codepage.
	 *     bytesRead = location to store the number of bytes in the
	 *         input string that were successfully converted, or %NULL.
	 *         Even if the conversion was successful, this may be
	 *         less than @len if there were partial characters
	 *         at the end of the input. If the error
	 *         %G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *         stored will be the byte offset after the last valid
	 *         input sequence.
	 *     bytesWritten = the number of bytes stored in the output
	 *         buffer (not including the terminating nul).
	 *
	 * Returns: The converted string, or %NULL on an error.
	 *
	 * Throws: GException on failure.
	 */
	public static string localeToUtf8(string opsysstring, out size_t bytesRead, out size_t bytesWritten)
	{
		GError* err = null;

		auto retStr = g_locale_to_utf8(Str.toStringz(opsysstring), cast(ptrdiff_t)opsysstring.length, &bytesRead, &bytesWritten, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Computes a list of applicable locale names with a locale category name,
	 * which can be used to construct the fallback locale-dependent filenames
	 * or search paths. The returned list is sorted from most desirable to
	 * least desirable and always contains the default locale "C".
	 *
	 * This function consults the environment variables `LANGUAGE`, `LC_ALL`,
	 * @category_name, and `LANG` to find the list of locales specified by the
	 * user.
	 *
	 * g_get_language_names() returns g_get_language_names_with_category("LC_MESSAGES").
	 *
	 * Params:
	 *     categoryName = a locale category name
	 *
	 * Returns: a %NULL-terminated array of strings owned by
	 *     the thread g_get_language_names_with_category was called from.
	 *     It must not be modified or freed. It must be copied if planned to be used in another thread.
	 *
	 * Since: 2.58
	 */
	public static string[] getLanguageNamesWithCategory(string categoryName)
	{
		return Str.toStringArray(g_get_language_names_with_category(Str.toStringz(categoryName)));
	}

	/**
	 * Obtains the character set used by the console attached to the process,
	 * which is suitable for printing output to the terminal.
	 *
	 * Usually this matches the result returned by g_get_charset(), but in
	 * environments where the locale's character set does not match the encoding
	 * of the console this function tries to guess a more suitable value instead.
	 *
	 * On Windows the character set returned by this function is the
	 * output code page used by the console associated with the calling process.
	 * If the codepage can't be determined (for example because there is no
	 * console attached) UTF-8 is assumed.
	 *
	 * The return value is %TRUE if the locale's encoding is UTF-8, in that
	 * case you can perhaps avoid calling g_convert().
	 *
	 * The string returned in @charset is not allocated, and should not be
	 * freed.
	 *
	 * Params:
	 *     charset = return location for character set
	 *         name, or %NULL.
	 *
	 * Returns: %TRUE if the returned charset is UTF-8
	 *
	 * Since: 2.62
	 */
	public static bool getConsoleCharset(out string charset)
	{
		char* outcharset = null;

		auto __p = g_get_console_charset(&outcharset) != 0;

		charset = Str.toString(outcharset);

		return __p;
	}
}
