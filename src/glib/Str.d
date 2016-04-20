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


module glib.Str;

private import core.stdc.stdio;
private import core.stdc.string;
private import glib.Str;
private import gtkc.glib;
public  import gtkc.glibtypes;
public  import gtkc.gobjecttypes;


/** */
public struct Str
{
	/*
	 * Convert C-style 0 terminated string s to char[] string.
	 * copied from phobos
	 */
	public static string toString(const(char)* s, size_t len = 0)
	{
		if ( s is null )
			return cast(string)null;
		
		if ( len == 0 )
			len = strlen(s);
		
		return s[0 .. len].idup;
	}
	
	/*
	 * Convert array of chars s[] to a C-style 0 terminated string.
	 * copied from phobos
	 */
	public static char* toStringz(string s)
	{
		if ( s is null ) return null;
		char[] copy;
		
		if (s.length == 0)
		{
			copy = "\0".dup;
		}
		else
		{
			// Need to make a copy
			copy = new char[s.length + 1];
			copy[0..s.length] = s[];
			copy[s.length] = 0;
		}
		
		return copy.ptr;
	}
	
	/** */
	public static char** toStringzArray(string[] args)
	{
		if ( args is null )
		{
			return null;
		}
		char** argv = (new char*[args.length]).ptr;
		int argc = 0;
		foreach (string p; args)
		{
			argv[argc++] = cast(char*)(p.dup~'\0');
		}
		argv[argc] = null;
		
		return argv;
	}
	
	/** */
	public static char*** toStringzArray(string[][] args)
	{
		if ( args is null )
		{
			return null;
		}
		char**[] argv = new char**[args.length];
		int argc = 0;
		foreach( string[] p; args )
		{
			argv[argc++] = toStringzArray(p);
		}
		argv[argc] = null;
		
		return argv.ptr;
	}
	
	/** */
	public static string[] toStringArray(const(char*)* args)
	{
		if ( args is null )
		{
			return null;
		}
		string[] argv;
		
		while ( *args !is null )
		{
			argv ~= toString(*args);
			args++;
		}
		
		return argv;
	}
	
	/** */
	public static string[] toStringArray(const(char*)* args, size_t len)
	{
		string[] argv = new string[len];
		
		for ( int i; i < len; i++ )
		{
			argv[i] = toString(args[i]);
		}
		
		return argv;
	}
	
	/** */
	public static string[][] toStringArray(char*** args)
	{
		string[][] argv;
		
		if ( args is null )
		{
			return null;
		}
		
		while ( *args !is null )
		{
			argv ~= toStringArray(*args);
			args++;
		}
		
		return argv;
	}
	
	/** */
	public static void freeString(char* str)
	{
		g_free(str);
	}
	
	/** */
	public static void freeStringArray(char** str)
	{
		g_strfreev(str);
	}
	
	/** */
	public static void freeStringArray(char*** str)
	{
		while ( *str !is null )
		{
			g_strfreev(*str);
			str++;
		}
		
		g_free(str);
	}

	/**
	 */

	/**
	 * Determines the numeric value of a character as a decimal digit.
	 * Differs from g_unichar_digit_value() because it takes a char, so
	 * there's no worry about sign extension if characters are signed.
	 *
	 * Params:
	 *     c = an ASCII character
	 *
	 * Return: If @c is a decimal digit (according to g_ascii_isdigit()),
	 *     its numeric value. Otherwise, -1.
	 */
	public static int asciiDigitValue(char c)
	{
		return g_ascii_digit_value(c);
	}

	/**
	 * Converts a #gdouble to a string, using the '.' as
	 * decimal point.
	 *
	 * This function generates enough precision that converting
	 * the string back using g_ascii_strtod() gives the same machine-number
	 * (on machines with IEEE compatible 64bit doubles). It is
	 * guaranteed that the size of the resulting string will never
	 * be larger than @G_ASCII_DTOSTR_BUF_SIZE bytes, including the terminating
	 * nul character, which is always added.
	 *
	 * Params:
	 *     buffer = A buffer to place the resulting string in
	 *     bufLen = The length of the buffer.
	 *     d = The #gdouble to convert
	 *
	 * Return: The pointer to the buffer with the converted string.
	 */
	public static string asciiDtostr(string buffer, int bufLen, double d)
	{
		auto retStr = g_ascii_dtostr(Str.toStringz(buffer), bufLen, d);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts a #gdouble to a string, using the '.' as
	 * decimal point. To format the number you pass in
	 * a printf()-style format string. Allowed conversion
	 * specifiers are 'e', 'E', 'f', 'F', 'g' and 'G'.
	 *
	 * The returned buffer is guaranteed to be nul-terminated.
	 *
	 * If you just want to want to serialize the value into a
	 * string, use g_ascii_dtostr().
	 *
	 * Params:
	 *     buffer = A buffer to place the resulting string in
	 *     bufLen = The length of the buffer.
	 *     format = The printf()-style format to use for the
	 *         code to use for converting.
	 *     d = The #gdouble to convert
	 *
	 * Return: The pointer to the buffer with the converted string.
	 */
	public static string asciiFormatd(string buffer, int bufLen, string format, double d)
	{
		auto retStr = g_ascii_formatd(Str.toStringz(buffer), bufLen, Str.toStringz(format), d);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Compare two strings, ignoring the case of ASCII characters.
	 *
	 * Unlike the BSD strcasecmp() function, this only recognizes standard
	 * ASCII letters and ignores the locale, treating all non-ASCII
	 * bytes as if they are not letters.
	 *
	 * This function should be used only on strings that are known to be
	 * in encodings where the bytes corresponding to ASCII letters always
	 * represent themselves. This includes UTF-8 and the ISO-8859-*
	 * charsets, but not for instance double-byte encodings like the
	 * Windows Codepage 932, where the trailing bytes of double-byte
	 * characters include all ASCII letters. If you compare two CP932
	 * strings using this function, you will get false matches.
	 *
	 * Both @s1 and @s2 must be non-%NULL.
	 *
	 * Params:
	 *     s1 = string to compare with @s2
	 *     s2 = string to compare with @s1
	 *
	 * Return: 0 if the strings match, a negative value if @s1 < @s2,
	 *     or a positive value if @s1 > @s2.
	 */
	public static int asciiStrcasecmp(string s1, string s2)
	{
		return g_ascii_strcasecmp(Str.toStringz(s1), Str.toStringz(s2));
	}

	/**
	 * Converts all upper case ASCII letters to lower case ASCII letters.
	 *
	 * Params:
	 *     str = a string
	 *     len = length of @str in bytes, or -1 if @str is nul-terminated
	 *
	 * Return: a newly-allocated string, with all the upper case
	 *     characters in @str converted to lower case, with semantics that
	 *     exactly match g_ascii_tolower(). (Note that this is unlike the
	 *     old g_strdown(), which modified the string in place.)
	 */
	public static string asciiStrdown(string str, ptrdiff_t len)
	{
		auto retStr = g_ascii_strdown(Str.toStringz(str), len);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Compare @s1 and @s2, ignoring the case of ASCII characters and any
	 * characters after the first @n in each string.
	 *
	 * Unlike the BSD strcasecmp() function, this only recognizes standard
	 * ASCII letters and ignores the locale, treating all non-ASCII
	 * characters as if they are not letters.
	 *
	 * The same warning as in g_ascii_strcasecmp() applies: Use this
	 * function only on strings known to be in encodings where bytes
	 * corresponding to ASCII letters always represent themselves.
	 *
	 * Params:
	 *     s1 = string to compare with @s2
	 *     s2 = string to compare with @s1
	 *     n = number of characters to compare
	 *
	 * Return: 0 if the strings match, a negative value if @s1 < @s2,
	 *     or a positive value if @s1 > @s2.
	 */
	public static int asciiStrncasecmp(string s1, string s2, size_t n)
	{
		return g_ascii_strncasecmp(Str.toStringz(s1), Str.toStringz(s2), n);
	}

	/**
	 * Converts a string to a #gdouble value.
	 *
	 * This function behaves like the standard strtod() function
	 * does in the C locale. It does this without actually changing
	 * the current locale, since that would not be thread-safe.
	 * A limitation of the implementation is that this function
	 * will still accept localized versions of infinities and NANs.
	 *
	 * This function is typically used when reading configuration
	 * files or other non-user input that should be locale independent.
	 * To handle input from the user you should normally use the
	 * locale-sensitive system strtod() function.
	 *
	 * To convert from a #gdouble to a string in a locale-insensitive
	 * way, use g_ascii_dtostr().
	 *
	 * If the correct value would cause overflow, plus or minus %HUGE_VAL
	 * is returned (according to the sign of the value), and %ERANGE is
	 * stored in %errno. If the correct value would cause underflow,
	 * zero is returned and %ERANGE is stored in %errno.
	 *
	 * This function resets %errno before calling strtod() so that
	 * you can reliably detect overflow and underflow.
	 *
	 * Params:
	 *     nptr = the string to convert to a numeric value.
	 *     endptr = if non-%NULL, it returns the
	 *         character after the last character used in the conversion.
	 *
	 * Return: the #gdouble value.
	 */
	public static double asciiStrtod(string nptr, out string endptr)
	{
		char* outendptr = null;
		
		auto p = g_ascii_strtod(Str.toStringz(nptr), &outendptr);
		
		endptr = Str.toString(outendptr);
		
		return p;
	}

	/**
	 * Converts a string to a #gint64 value.
	 * This function behaves like the standard strtoll() function
	 * does in the C locale. It does this without actually
	 * changing the current locale, since that would not be
	 * thread-safe.
	 *
	 * This function is typically used when reading configuration
	 * files or other non-user input that should be locale independent.
	 * To handle input from the user you should normally use the
	 * locale-sensitive system strtoll() function.
	 *
	 * If the correct value would cause overflow, %G_MAXINT64 or %G_MININT64
	 * is returned, and `ERANGE` is stored in `errno`.
	 * If the base is outside the valid range, zero is returned, and
	 * `EINVAL` is stored in `errno`. If the
	 * string conversion fails, zero is returned, and @endptr returns @nptr
	 * (if @endptr is non-%NULL).
	 *
	 * Params:
	 *     nptr = the string to convert to a numeric value.
	 *     endptr = if non-%NULL, it returns the
	 *         character after the last character used in the conversion.
	 *     base = to be used for the conversion, 2..36 or 0
	 *
	 * Return: the #gint64 value or zero on error.
	 *
	 * Since: 2.12
	 */
	public static long asciiStrtoll(string nptr, out string endptr, uint base)
	{
		char* outendptr = null;
		
		auto p = g_ascii_strtoll(Str.toStringz(nptr), &outendptr, base);
		
		endptr = Str.toString(outendptr);
		
		return p;
	}

	/**
	 * Converts a string to a #guint64 value.
	 * This function behaves like the standard strtoull() function
	 * does in the C locale. It does this without actually
	 * changing the current locale, since that would not be
	 * thread-safe.
	 *
	 * This function is typically used when reading configuration
	 * files or other non-user input that should be locale independent.
	 * To handle input from the user you should normally use the
	 * locale-sensitive system strtoull() function.
	 *
	 * If the correct value would cause overflow, %G_MAXUINT64
	 * is returned, and `ERANGE` is stored in `errno`.
	 * If the base is outside the valid range, zero is returned, and
	 * `EINVAL` is stored in `errno`.
	 * If the string conversion fails, zero is returned, and @endptr returns
	 * @nptr (if @endptr is non-%NULL).
	 *
	 * Params:
	 *     nptr = the string to convert to a numeric value.
	 *     endptr = if non-%NULL, it returns the
	 *         character after the last character used in the conversion.
	 *     base = to be used for the conversion, 2..36 or 0
	 *
	 * Return: the #guint64 value or zero on error.
	 *
	 * Since: 2.2
	 */
	public static ulong asciiStrtoull(string nptr, out string endptr, uint base)
	{
		char* outendptr = null;
		
		auto p = g_ascii_strtoull(Str.toStringz(nptr), &outendptr, base);
		
		endptr = Str.toString(outendptr);
		
		return p;
	}

	/**
	 * Converts all lower case ASCII letters to upper case ASCII letters.
	 *
	 * Params:
	 *     str = a string
	 *     len = length of @str in bytes, or -1 if @str is nul-terminated
	 *
	 * Return: a newly allocated string, with all the lower case
	 *     characters in @str converted to upper case, with semantics that
	 *     exactly match g_ascii_toupper(). (Note that this is unlike the
	 *     old g_strup(), which modified the string in place.)
	 */
	public static string asciiStrup(string str, ptrdiff_t len)
	{
		auto retStr = g_ascii_strup(Str.toStringz(str), len);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Convert a character to ASCII lower case.
	 *
	 * Unlike the standard C library tolower() function, this only
	 * recognizes standard ASCII letters and ignores the locale, returning
	 * all non-ASCII characters unchanged, even if they are lower case
	 * letters in a particular character set. Also unlike the standard
	 * library function, this takes and returns a char, not an int, so
	 * don't call it on %EOF but no need to worry about casting to #guchar
	 * before passing a possibly non-ASCII character in.
	 *
	 * Params:
	 *     c = any character
	 *
	 * Return: the result of converting @c to lower case. If @c is
	 *     not an ASCII upper case letter, @c is returned unchanged.
	 */
	public static char asciiTolower(char c)
	{
		return g_ascii_tolower(c);
	}

	/**
	 * Convert a character to ASCII upper case.
	 *
	 * Unlike the standard C library toupper() function, this only
	 * recognizes standard ASCII letters and ignores the locale, returning
	 * all non-ASCII characters unchanged, even if they are upper case
	 * letters in a particular character set. Also unlike the standard
	 * library function, this takes and returns a char, not an int, so
	 * don't call it on %EOF but no need to worry about casting to #guchar
	 * before passing a possibly non-ASCII character in.
	 *
	 * Params:
	 *     c = any character
	 *
	 * Return: the result of converting @c to upper case. If @c is not
	 *     an ASCII lower case letter, @c is returned unchanged.
	 */
	public static char asciiToupper(char c)
	{
		return g_ascii_toupper(c);
	}

	/**
	 * Determines the numeric value of a character as a hexidecimal
	 * digit. Differs from g_unichar_xdigit_value() because it takes
	 * a char, so there's no worry about sign extension if characters
	 * are signed.
	 *
	 * Params:
	 *     c = an ASCII character.
	 *
	 * Return: If @c is a hex digit (according to g_ascii_isxdigit()),
	 *     its numeric value. Otherwise, -1.
	 */
	public static int asciiXdigitValue(char c)
	{
		return g_ascii_xdigit_value(c);
	}

	/**
	 * Calculates the maximum space needed to store the output
	 * of the sprintf() function.
	 *
	 * Params:
	 *     format = the format string. See the printf() documentation
	 *     args = the parameters to be inserted into the format string
	 *
	 * Return: the maximum space needed to store the formatted string
	 */
	public static size_t printfStringUpperBound(string format, void* args)
	{
		return g_printf_string_upper_bound(Str.toStringz(format), args);
	}

	/**
	 * Copies a nul-terminated string into the dest buffer, include the
	 * trailing nul, and return a pointer to the trailing nul byte.
	 * This is useful for concatenating multiple strings together
	 * without having to repeatedly scan for the end.
	 *
	 * Params:
	 *     dest = destination buffer.
	 *     src = source string.
	 *
	 * Return: a pointer to trailing nul byte.
	 */
	public static string stpcpy(string dest, string src)
	{
		auto retStr = g_stpcpy(Str.toStringz(dest), Str.toStringz(src));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Looks whether the string @str begins with @prefix.
	 *
	 * Params:
	 *     str = a nul-terminated string
	 *     prefix = the nul-terminated prefix to look for
	 *
	 * Return: %TRUE if @str begins with @prefix, %FALSE otherwise.
	 *
	 * Since: 2.2
	 */
	public static bool hasPrefix(string str, string prefix)
	{
		return g_str_has_prefix(Str.toStringz(str), Str.toStringz(prefix)) != 0;
	}

	/**
	 * Looks whether the string @str ends with @suffix.
	 *
	 * Params:
	 *     str = a nul-terminated string
	 *     suffix = the nul-terminated suffix to look for
	 *
	 * Return: %TRUE if @str end with @suffix, %FALSE otherwise.
	 *
	 * Since: 2.2
	 */
	public static bool hasSuffix(string str, string suffix)
	{
		return g_str_has_suffix(Str.toStringz(str), Str.toStringz(suffix)) != 0;
	}

	/**
	 * Determines if a string is pure ASCII. A string is pure ASCII if it
	 * contains no bytes with the high bit set.
	 *
	 * Params:
	 *     str = a string
	 *
	 * Return: %TRUE if @str is ASCII
	 *
	 * Since: 2.40
	 */
	public static bool isAscii(string str)
	{
		return g_str_is_ascii(Str.toStringz(str)) != 0;
	}

	/**
	 * Checks if a search conducted for @search_term should match
	 * @potential_hit.
	 *
	 * This function calls g_str_tokenize_and_fold() on both
	 * @search_term and @potential_hit.  ASCII alternates are never taken
	 * for @search_term but will be taken for @potential_hit according to
	 * the value of @accept_alternates.
	 *
	 * A hit occurs when each folded token in @search_term is a prefix of a
	 * folded token from @potential_hit.
	 *
	 * Depending on how you're performing the search, it will typically be
	 * faster to call g_str_tokenize_and_fold() on each string in
	 * your corpus and build an index on the returned folded tokens, then
	 * call g_str_tokenize_and_fold() on the search term and
	 * perform lookups into that index.
	 *
	 * As some examples, searching for "fred" would match the potential hit
	 * "Smith, Fred" and also "Frédéric".  Searching for "Fréd" would match
	 * "Frédéric" but not "Frederic" (due to the one-directional nature of
	 * accent matching).  Searching "fo" would match "Foo" and "Bar Foo
	 * Baz", but not "SFO" (because no word as "fo" as a prefix).
	 *
	 * Params:
	 *     searchTerm = the search term from the user
	 *     potentialHit = the text that may be a hit
	 *     acceptAlternates = %TRUE to accept ASCII alternates
	 *
	 * Return: %TRUE if @potential_hit is a hit
	 *
	 * Since: 2.40
	 */
	public static bool matchString(string searchTerm, string potentialHit, bool acceptAlternates)
	{
		return g_str_match_string(Str.toStringz(searchTerm), Str.toStringz(potentialHit), acceptAlternates) != 0;
	}

	/**
	 * Transliterate @str to plain ASCII.
	 *
	 * For best results, @str should be in composed normalised form.
	 *
	 * This function performs a reasonably good set of character
	 * replacements.  The particular set of replacements that is done may
	 * change by version or even by runtime environment.
	 *
	 * If the source language of @str is known, it can used to improve the
	 * accuracy of the translation by passing it as @from_locale.  It should
	 * be a valid POSIX locale string (of the form
	 * "language[_territory][.codeset][@modifier]").
	 *
	 * If @from_locale is %NULL then the current locale is used.
	 *
	 * If you want to do translation for no specific locale, and you want it
	 * to be done independently of the currently locale, specify "C" for
	 * @from_locale.
	 *
	 * Params:
	 *     str = a string, in UTF-8
	 *     fromLocale = the source locale, if known
	 *
	 * Return: a string in plain ASCII
	 *
	 * Since: 2.40
	 */
	public static string toAscii(string str, string fromLocale)
	{
		auto retStr = g_str_to_ascii(Str.toStringz(str), Str.toStringz(fromLocale));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Tokenises @string and performs folding on each token.
	 *
	 * A token is a non-empty sequence of alphanumeric characters in the
	 * source string, separated by non-alphanumeric characters.  An
	 * "alphanumeric" character for this purpose is one that matches
	 * g_unichar_isalnum() or g_unichar_ismark().
	 *
	 * Each token is then (Unicode) normalised and case-folded.  If
	 * @ascii_alternates is non-%NULL and some of the returned tokens
	 * contain non-ASCII characters, ASCII alternatives will be generated.
	 *
	 * The number of ASCII alternatives that are generated and the method
	 * for doing so is unspecified, but @translit_locale (if specified) may
	 * improve the transliteration if the language of the source string is
	 * known.
	 *
	 * Params:
	 *     str = a string
	 *     translitLocale = the language code (like 'de' or
	 *         'en_GB') from which @string originates
	 *     asciiAlternates = a
	 *         return location for ASCII alternates
	 *
	 * Return: the folded tokens
	 *
	 * Since: 2.40
	 */
	public static string[] tokenizeAndFold(string str, string translitLocale, out string[] asciiAlternates)
	{
		char** outasciiAlternates = null;
		
		auto retStr = g_str_tokenize_and_fold(Str.toStringz(str), Str.toStringz(translitLocale), &outasciiAlternates);
		
		asciiAlternates = Str.toStringArray(outasciiAlternates);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * For each character in @string, if the character is not in @valid_chars,
	 * replaces the character with @substitutor. Modifies @string in place,
	 * and return @string itself, not a copy. The return value is to allow
	 * nesting such as
	 * |[<!-- language="C" -->
	 * g_ascii_strup (g_strcanon (str, "abc", '?'))
	 * ]|
	 *
	 * Params:
	 *     str = a nul-terminated array of bytes
	 *     validChars = bytes permitted in @string
	 *     substitutor = replacement character for disallowed bytes
	 *
	 * Return: @string
	 */
	public static string strcanon(string str, string validChars, char substitutor)
	{
		auto retStr = g_strcanon(Str.toStringz(str), Str.toStringz(validChars), substitutor);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * A case-insensitive string comparison, corresponding to the standard
	 * strcasecmp() function on platforms which support it.
	 *
	 * Deprecated: See g_strncasecmp() for a discussion of why this
	 * function is deprecated and how to replace it.
	 *
	 * Params:
	 *     s1 = a string
	 *     s2 = a string to compare with @s1
	 *
	 * Return: 0 if the strings match, a negative value if @s1 < @s2,
	 *     or a positive value if @s1 > @s2.
	 */
	public static int strcasecmp(string s1, string s2)
	{
		return g_strcasecmp(Str.toStringz(s1), Str.toStringz(s2));
	}

	/**
	 * Removes trailing whitespace from a string.
	 *
	 * This function doesn't allocate or reallocate any memory;
	 * it modifies @string in place. Therefore, it cannot be used
	 * on statically allocated strings.
	 *
	 * The pointer to @string is returned to allow the nesting of functions.
	 *
	 * Also see g_strchug() and g_strstrip().
	 *
	 * Params:
	 *     str = a string to remove the trailing whitespace from
	 *
	 * Return: @string
	 */
	public static string strchomp(string str)
	{
		auto retStr = g_strchomp(Str.toStringz(str));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Removes leading whitespace from a string, by moving the rest
	 * of the characters forward.
	 *
	 * This function doesn't allocate or reallocate any memory;
	 * it modifies @string in place. Therefore, it cannot be used on
	 * statically allocated strings.
	 *
	 * The pointer to @string is returned to allow the nesting of functions.
	 *
	 * Also see g_strchomp() and g_strstrip().
	 *
	 * Params:
	 *     str = a string to remove the leading whitespace from
	 *
	 * Return: @string
	 */
	public static string strchug(string str)
	{
		auto retStr = g_strchug(Str.toStringz(str));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Compares @str1 and @str2 like strcmp(). Handles %NULL
	 * gracefully by sorting it before non-%NULL strings.
	 * Comparing two %NULL pointers returns 0.
	 *
	 * Params:
	 *     str1 = a C string or %NULL
	 *     str2 = another C string or %NULL
	 *
	 * Return: an integer less than, equal to, or greater than zero, if @str1 is <, == or > than @str2.
	 *
	 * Since: 2.16
	 */
	public static int strcmp0(string str1, string str2)
	{
		return g_strcmp0(Str.toStringz(str1), Str.toStringz(str2));
	}

	/**
	 * Replaces all escaped characters with their one byte equivalent.
	 *
	 * This function does the reverse conversion of g_strescape().
	 *
	 * Params:
	 *     source = a string to compress
	 *
	 * Return: a newly-allocated copy of @source with all escaped
	 *     character compressed
	 */
	public static string strcompress(string source)
	{
		auto retStr = g_strcompress(Str.toStringz(source));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts any delimiter characters in @string to @new_delimiter.
	 * Any characters in @string which are found in @delimiters are
	 * changed to the @new_delimiter character. Modifies @string in place,
	 * and returns @string itself, not a copy. The return value is to
	 * allow nesting such as
	 * |[<!-- language="C" -->
	 * g_ascii_strup (g_strdelimit (str, "abc", '?'))
	 * ]|
	 *
	 * Params:
	 *     str = the string to convert
	 *     delimiters = a string containing the current delimiters,
	 *         or %NULL to use the standard delimiters defined in #G_STR_DELIMITERS
	 *     newDelimiter = the new delimiter character
	 *
	 * Return: @string
	 */
	public static string strdelimit(string str, string delimiters, char newDelimiter)
	{
		auto retStr = g_strdelimit(Str.toStringz(str), Str.toStringz(delimiters), newDelimiter);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts a string to lower case.
	 *
	 * Deprecated: This function is totally broken for the reasons discussed
	 * in the g_strncasecmp() docs - use g_ascii_strdown() or g_utf8_strdown()
	 * instead.
	 *
	 * Params:
	 *     str = the string to convert.
	 *
	 * Return: the string
	 */
	public static string strdown(string str)
	{
		auto retStr = g_strdown(Str.toStringz(str));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Duplicates a string. If @str is %NULL it returns %NULL.
	 * The returned string should be freed with g_free()
	 * when no longer needed.
	 *
	 * Params:
	 *     str = the string to duplicate
	 *
	 * Return: a newly-allocated copy of @str
	 */
	public static string strdup(string str)
	{
		auto retStr = g_strdup(Str.toStringz(str));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Similar to the standard C vsprintf() function but safer, since it
	 * calculates the maximum space required and allocates memory to hold
	 * the result. The returned string should be freed with g_free() when
	 * no longer needed.
	 *
	 * See also g_vasprintf(), which offers the same functionality, but
	 * additionally returns the length of the allocated string.
	 *
	 * Params:
	 *     format = a standard printf() format string, but notice
	 *         [string precision pitfalls][string-precision]
	 *     args = the list of parameters to insert into the format string
	 *
	 * Return: a newly-allocated string holding the result
	 */
	public static string strdupVprintf(string format, void* args)
	{
		auto retStr = g_strdup_vprintf(Str.toStringz(format), args);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Copies %NULL-terminated array of strings. The copy is a deep copy;
	 * the new array should be freed by first freeing each string, then
	 * the array itself. g_strfreev() does this for you. If called
	 * on a %NULL value, g_strdupv() simply returns %NULL.
	 *
	 * Params:
	 *     strArray = a %NULL-terminated array of strings
	 *
	 * Return: a new %NULL-terminated array of strings.
	 */
	public static string[] strdupv(string[] strArray)
	{
		return Str.toStringArray(g_strdupv(Str.toStringzArray(strArray)));
	}

	/**
	 * Returns a string corresponding to the given error code, e.g. "no
	 * such process". Unlike strerror(), this always returns a string in
	 * UTF-8 encoding, and the pointer is guaranteed to remain valid for
	 * the lifetime of the process.
	 *
	 * Note that the string may be translated according to the current locale.
	 *
	 * The value of %errno will not be changed by this function.
	 *
	 * Params:
	 *     errnum = the system error number. See the standard C %errno
	 *         documentation
	 *
	 * Return: a UTF-8 string describing the error code. If the error code
	 *     is unknown, it returns a string like "unknown error (<code>)".
	 */
	public static string strerror(int errnum)
	{
		return Str.toString(g_strerror(errnum));
	}

	/**
	 * Escapes the special characters '\b', '\f', '\n', '\r', '\t', '\v', '\'
	 * and '&quot;' in the string @source by inserting a '\' before
	 * them. Additionally all characters in the range 0x01-0x1F (everything
	 * below SPACE) and in the range 0x7F-0xFF (all non-ASCII chars) are
	 * replaced with a '\' followed by their octal representation.
	 * Characters supplied in @exceptions are not escaped.
	 *
	 * g_strcompress() does the reverse conversion.
	 *
	 * Params:
	 *     source = a string to escape
	 *     exceptions = a string of characters not to escape in @source
	 *
	 * Return: a newly-allocated copy of @source with certain
	 *     characters escaped. See above.
	 */
	public static string strescape(string source, string exceptions)
	{
		auto retStr = g_strescape(Str.toStringz(source), Str.toStringz(exceptions));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Frees a %NULL-terminated array of strings, as well as each
	 * string it contains.
	 *
	 * If @str_array is %NULL, this function simply returns.
	 *
	 * Params:
	 *     strArray = a %NULL-terminated array of strings to free
	 */
	public static void strfreev(string[] strArray)
	{
		g_strfreev(Str.toStringzArray(strArray));
	}

	/**
	 * Joins a number of strings together to form one long string, with the
	 * optional @separator inserted between each of them. The returned string
	 * should be freed with g_free().
	 *
	 * Params:
	 *     separator = a string to insert between each of the
	 *         strings, or %NULL
	 *     strArray = a %NULL-terminated array of strings to join
	 *
	 * Return: a newly-allocated string containing all of the strings joined
	 *     together, with @separator between them
	 */
	public static string strjoinv(string separator, string[] strArray)
	{
		auto retStr = g_strjoinv(Str.toStringz(separator), Str.toStringzArray(strArray));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Portability wrapper that calls strlcat() on systems which have it,
	 * and emulates it otherwise. Appends nul-terminated @src string to @dest,
	 * guaranteeing nul-termination for @dest. The total size of @dest won't
	 * exceed @dest_size.
	 *
	 * At most @dest_size - 1 characters will be copied. Unlike strncat(),
	 * @dest_size is the full size of dest, not the space left over. This
	 * function does not allocate memory. It always nul-terminates (unless
	 * @dest_size == 0 or there were no nul characters in the @dest_size
	 * characters of dest to start with).
	 *
	 * Caveat: this is supposedly a more secure alternative to strcat() or
	 * strncat(), but for real security g_strconcat() is harder to mess up.
	 *
	 * Params:
	 *     dest = destination buffer, already containing one nul-terminated string
	 *     src = source buffer
	 *     destSize = length of @dest buffer in bytes (not length of existing string
	 *         inside @dest)
	 *
	 * Return: size of attempted result, which is MIN (dest_size, strlen
	 *     (original dest)) + strlen (src), so if retval >= dest_size,
	 *     truncation occurred.
	 */
	public static size_t strlcat(string dest, string src, size_t destSize)
	{
		return g_strlcat(Str.toStringz(dest), Str.toStringz(src), destSize);
	}

	/**
	 * Portability wrapper that calls strlcpy() on systems which have it,
	 * and emulates strlcpy() otherwise. Copies @src to @dest; @dest is
	 * guaranteed to be nul-terminated; @src must be nul-terminated;
	 * @dest_size is the buffer size, not the number of bytes to copy.
	 *
	 * At most @dest_size - 1 characters will be copied. Always nul-terminates
	 * (unless @dest_size is 0). This function does not allocate memory. Unlike
	 * strncpy(), this function doesn't pad @dest (so it's often faster). It
	 * returns the size of the attempted result, strlen (src), so if
	 * @retval >= @dest_size, truncation occurred.
	 *
	 * Caveat: strlcpy() is supposedly more secure than strcpy() or strncpy(),
	 * but if you really want to avoid screwups, g_strdup() is an even better
	 * idea.
	 *
	 * Params:
	 *     dest = destination buffer
	 *     src = source buffer
	 *     destSize = length of @dest in bytes
	 *
	 * Return: length of @src
	 */
	public static size_t strlcpy(string dest, string src, size_t destSize)
	{
		return g_strlcpy(Str.toStringz(dest), Str.toStringz(src), destSize);
	}

	/**
	 * A case-insensitive string comparison, corresponding to the standard
	 * strncasecmp() function on platforms which support it. It is similar
	 * to g_strcasecmp() except it only compares the first @n characters of
	 * the strings.
	 *
	 * Deprecated: The problem with g_strncasecmp() is that it does
	 * the comparison by calling toupper()/tolower(). These functions
	 * are locale-specific and operate on single bytes. However, it is
	 * impossible to handle things correctly from an internationalization
	 * standpoint by operating on bytes, since characters may be multibyte.
	 * Thus g_strncasecmp() is broken if your string is guaranteed to be
	 * ASCII, since it is locale-sensitive, and it's broken if your string
	 * is localized, since it doesn't work on many encodings at all,
	 * including UTF-8, EUC-JP, etc.
	 *
	 * There are therefore two replacement techniques: g_ascii_strncasecmp(),
	 * which only works on ASCII and is not locale-sensitive, and
	 * g_utf8_casefold() followed by strcmp() on the resulting strings,
	 * which is good for case-insensitive sorting of UTF-8.
	 *
	 * Params:
	 *     s1 = a string
	 *     s2 = a string to compare with @s1
	 *     n = the maximum number of characters to compare
	 *
	 * Return: 0 if the strings match, a negative value if @s1 < @s2,
	 *     or a positive value if @s1 > @s2.
	 */
	public static int strncasecmp(string s1, string s2, uint n)
	{
		return g_strncasecmp(Str.toStringz(s1), Str.toStringz(s2), n);
	}

	/**
	 * Duplicates the first @n bytes of a string, returning a newly-allocated
	 * buffer @n + 1 bytes long which will always be nul-terminated. If @str
	 * is less than @n bytes long the buffer is padded with nuls. If @str is
	 * %NULL it returns %NULL. The returned value should be freed when no longer
	 * needed.
	 *
	 * To copy a number of characters from a UTF-8 encoded string,
	 * use g_utf8_strncpy() instead.
	 *
	 * Params:
	 *     str = the string to duplicate
	 *     n = the maximum number of bytes to copy from @str
	 *
	 * Return: a newly-allocated buffer containing the first @n bytes
	 *     of @str, nul-terminated
	 */
	public static string strndup(string str, size_t n)
	{
		auto retStr = g_strndup(Str.toStringz(str), n);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Creates a new string @length bytes long filled with @fill_char.
	 * The returned string should be freed when no longer needed.
	 *
	 * Params:
	 *     length = the length of the new string
	 *     fillChar = the byte to fill the string with
	 *
	 * Return: a newly-allocated string filled the @fill_char
	 */
	public static string strnfill(size_t length, char fillChar)
	{
		auto retStr = g_strnfill(length, fillChar);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Reverses all of the bytes in a string. For example,
	 * `g_strreverse ("abcdef")` will result in "fedcba".
	 *
	 * Note that g_strreverse() doesn't work on UTF-8 strings
	 * containing multibyte characters. For that purpose, use
	 * g_utf8_strreverse().
	 *
	 * Params:
	 *     str = the string to reverse
	 *
	 * Return: the same pointer passed in as @string
	 */
	public static string strreverse(string str)
	{
		auto retStr = g_strreverse(Str.toStringz(str));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Searches the string @haystack for the last occurrence
	 * of the string @needle.
	 *
	 * Params:
	 *     haystack = a nul-terminated string
	 *     needle = the nul-terminated string to search for
	 *
	 * Return: a pointer to the found occurrence, or
	 *     %NULL if not found.
	 */
	public static string strrstr(string haystack, string needle)
	{
		auto retStr = g_strrstr(Str.toStringz(haystack), Str.toStringz(needle));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Searches the string @haystack for the last occurrence
	 * of the string @needle, limiting the length of the search
	 * to @haystack_len.
	 *
	 * Params:
	 *     haystack = a nul-terminated string
	 *     haystackLen = the maximum length of @haystack
	 *     needle = the nul-terminated string to search for
	 *
	 * Return: a pointer to the found occurrence, or
	 *     %NULL if not found.
	 */
	public static string strrstrLen(string haystack, ptrdiff_t haystackLen, string needle)
	{
		auto retStr = g_strrstr_len(Str.toStringz(haystack), haystackLen, Str.toStringz(needle));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns a string describing the given signal, e.g. "Segmentation fault".
	 * You should use this function in preference to strsignal(), because it
	 * returns a string in UTF-8 encoding, and since not all platforms support
	 * the strsignal() function.
	 *
	 * Params:
	 *     signum = the signal number. See the `signal` documentation
	 *
	 * Return: a UTF-8 string describing the signal. If the signal is unknown,
	 *     it returns "unknown signal (<signum>)".
	 */
	public static string strsignal(int signum)
	{
		return Str.toString(g_strsignal(signum));
	}

	/**
	 * Splits a string into a maximum of @max_tokens pieces, using the given
	 * @delimiter. If @max_tokens is reached, the remainder of @string is
	 * appended to the last token.
	 *
	 * As an example, the result of g_strsplit (":a:bc::d:", ":", -1) is a
	 * %NULL-terminated vector containing the six strings "", "a", "bc", "", "d"
	 * and "".
	 *
	 * As a special case, the result of splitting the empty string "" is an empty
	 * vector, not a vector containing a single string. The reason for this
	 * special case is that being able to represent a empty vector is typically
	 * more useful than consistent handling of empty elements. If you do need
	 * to represent empty elements, you'll need to check for the empty string
	 * before calling g_strsplit().
	 *
	 * Params:
	 *     str = a string to split
	 *     delimiter = a string which specifies the places at which to split
	 *         the string. The delimiter is not included in any of the resulting
	 *         strings, unless @max_tokens is reached.
	 *     maxTokens = the maximum number of pieces to split @string into.
	 *         If this is less than 1, the string is split completely.
	 *
	 * Return: a newly-allocated %NULL-terminated array of strings. Use
	 *     g_strfreev() to free it.
	 */
	public static string[] strsplit(string str, string delimiter, int maxTokens)
	{
		return Str.toStringArray(g_strsplit(Str.toStringz(str), Str.toStringz(delimiter), maxTokens));
	}

	/**
	 * Splits @string into a number of tokens not containing any of the characters
	 * in @delimiter. A token is the (possibly empty) longest string that does not
	 * contain any of the characters in @delimiters. If @max_tokens is reached, the
	 * remainder is appended to the last token.
	 *
	 * For example the result of g_strsplit_set ("abc:def/ghi", ":/", -1) is a
	 * %NULL-terminated vector containing the three strings "abc", "def",
	 * and "ghi".
	 *
	 * The result of g_strsplit_set (":def/ghi:", ":/", -1) is a %NULL-terminated
	 * vector containing the four strings "", "def", "ghi", and "".
	 *
	 * As a special case, the result of splitting the empty string "" is an empty
	 * vector, not a vector containing a single string. The reason for this
	 * special case is that being able to represent a empty vector is typically
	 * more useful than consistent handling of empty elements. If you do need
	 * to represent empty elements, you'll need to check for the empty string
	 * before calling g_strsplit_set().
	 *
	 * Note that this function works on bytes not characters, so it can't be used
	 * to delimit UTF-8 strings for anything but ASCII characters.
	 *
	 * Params:
	 *     str = The string to be tokenized
	 *     delimiters = A nul-terminated string containing bytes that are used
	 *         to split the string.
	 *     maxTokens = The maximum number of tokens to split @string into.
	 *         If this is less than 1, the string is split completely
	 *
	 * Return: a newly-allocated %NULL-terminated array of strings. Use
	 *     g_strfreev() to free it.
	 *
	 * Since: 2.4
	 */
	public static string[] strsplitSet(string str, string delimiters, int maxTokens)
	{
		return Str.toStringArray(g_strsplit_set(Str.toStringz(str), Str.toStringz(delimiters), maxTokens));
	}

	/**
	 * Searches the string @haystack for the first occurrence
	 * of the string @needle, limiting the length of the search
	 * to @haystack_len.
	 *
	 * Params:
	 *     haystack = a string
	 *     haystackLen = the maximum length of @haystack. Note that -1 is
	 *         a valid length, if @haystack is nul-terminated, meaning it will
	 *         search through the whole string.
	 *     needle = the string to search for
	 *
	 * Return: a pointer to the found occurrence, or
	 *     %NULL if not found.
	 */
	public static string strstrLen(string haystack, ptrdiff_t haystackLen, string needle)
	{
		auto retStr = g_strstr_len(Str.toStringz(haystack), haystackLen, Str.toStringz(needle));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts a string to a #gdouble value.
	 * It calls the standard strtod() function to handle the conversion, but
	 * if the string is not completely converted it attempts the conversion
	 * again with g_ascii_strtod(), and returns the best match.
	 *
	 * This function should seldom be used. The normal situation when reading
	 * numbers not for human consumption is to use g_ascii_strtod(). Only when
	 * you know that you must expect both locale formatted and C formatted numbers
	 * should you use this. Make sure that you don't pass strings such as comma
	 * separated lists of values, since the commas may be interpreted as a decimal
	 * point in some locales, causing unexpected results.
	 *
	 * Params:
	 *     nptr = the string to convert to a numeric value.
	 *     endptr = if non-%NULL, it returns the
	 *         character after the last character used in the conversion.
	 *
	 * Return: the #gdouble value.
	 */
	public static double strtod(string nptr, out string endptr)
	{
		char* outendptr = null;
		
		auto p = g_strtod(Str.toStringz(nptr), &outendptr);
		
		endptr = Str.toString(outendptr);
		
		return p;
	}

	/**
	 * Converts a string to upper case.
	 *
	 * Deprecated: This function is totally broken for the reasons
	 * discussed in the g_strncasecmp() docs - use g_ascii_strup()
	 * or g_utf8_strup() instead.
	 *
	 * Params:
	 *     str = the string to convert
	 *
	 * Return: the string
	 */
	public static string strup(string str)
	{
		auto retStr = g_strup(Str.toStringz(str));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public static GType strvGetType()
	{
		return g_strv_get_type();
	}

	/**
	 * Returns the length of the given %NULL-terminated
	 * string array @str_array.
	 *
	 * Params:
	 *     strArray = a %NULL-terminated array of strings
	 *
	 * Return: length of @str_array.
	 *
	 * Since: 2.6
	 */
	public static uint strvLength(string[] strArray)
	{
		return g_strv_length(Str.toStringzArray(strArray));
	}

	/**
	 * Checks if @strv contains @str. @strv must not be %NULL.
	 *
	 * Params:
	 *     strv = a %NULL-terminated array of strings
	 *     str = a string
	 *
	 * Return: %TRUE if @str is an element of @strv, according to g_str_equal().
	 *
	 * Since: 2.44
	 */
	public static bool strvContains(string strv, string str)
	{
		return g_strv_contains(Str.toStringz(strv), Str.toStringz(str)) != 0;
	}

	/**
	 * An implementation of the GNU vasprintf() function which supports
	 * positional parameters, as specified in the Single Unix Specification.
	 * This function is similar to g_vsprintf(), except that it allocates a
	 * string to hold the output, instead of putting the output in a buffer
	 * you allocate in advance.
	 *
	 * Params:
	 *     str = the return location for the newly-allocated string.
	 *     format = a standard printf() format string, but notice
	 *         [string precision pitfalls][string-precision]
	 *     args = the list of arguments to insert in the output.
	 *
	 * Return: the number of bytes printed.
	 *
	 * Since: 2.4
	 */
	public static int vasprintf(string[] str, string format, void* args)
	{
		return g_vasprintf(Str.toStringzArray(str), Str.toStringz(format), args);
	}

	/**
	 * An implementation of the standard fprintf() function which supports
	 * positional parameters, as specified in the Single Unix Specification.
	 *
	 * Params:
	 *     file = the stream to write to.
	 *     format = a standard printf() format string, but notice
	 *         [string precision pitfalls][string-precision]
	 *     args = the list of arguments to insert in the output.
	 *
	 * Return: the number of bytes printed.
	 *
	 * Since: 2.2
	 */
	public static int vfprintf(FILE* file, string format, void* args)
	{
		return g_vfprintf(file, Str.toStringz(format), args);
	}

	/**
	 * An implementation of the standard vprintf() function which supports
	 * positional parameters, as specified in the Single Unix Specification.
	 *
	 * Params:
	 *     format = a standard printf() format string, but notice
	 *         [string precision pitfalls][string-precision]
	 *     args = the list of arguments to insert in the output.
	 *
	 * Return: the number of bytes printed.
	 *
	 * Since: 2.2
	 */
	public static int vprintf(string format, void* args)
	{
		return g_vprintf(Str.toStringz(format), args);
	}

	/**
	 * A safer form of the standard vsprintf() function. The output is guaranteed
	 * to not exceed @n characters (including the terminating nul character), so
	 * it is easy to ensure that a buffer overflow cannot occur.
	 *
	 * See also g_strdup_vprintf().
	 *
	 * In versions of GLib prior to 1.2.3, this function may return -1 if the
	 * output was truncated, and the truncated string may not be nul-terminated.
	 * In versions prior to 1.3.12, this function returns the length of the output
	 * string.
	 *
	 * The return value of g_vsnprintf() conforms to the vsnprintf() function
	 * as standardized in ISO C99. Note that this is different from traditional
	 * vsnprintf(), which returns the length of the output string.
	 *
	 * The format string may contain positional parameters, as specified in
	 * the Single Unix Specification.
	 *
	 * Params:
	 *     str = the buffer to hold the output.
	 *     n = the maximum number of bytes to produce (including the
	 *         terminating nul character).
	 *     format = a standard printf() format string, but notice
	 *         string precision pitfalls][string-precision]
	 *     args = the list of arguments to insert in the output.
	 *
	 * Return: the number of bytes which would be produced if the buffer
	 *     was large enough.
	 */
	public static int vsnprintf(string str, gulong n, string format, void* args)
	{
		return g_vsnprintf(Str.toStringz(str), n, Str.toStringz(format), args);
	}

	/**
	 * An implementation of the standard vsprintf() function which supports
	 * positional parameters, as specified in the Single Unix Specification.
	 *
	 * Params:
	 *     str = the buffer to hold the output.
	 *     format = a standard printf() format string, but notice
	 *         [string precision pitfalls][string-precision]
	 *     args = the list of arguments to insert in the output.
	 *
	 * Return: the number of bytes printed.
	 *
	 * Since: 2.2
	 */
	public static int vsprintf(string str, string format, void* args)
	{
		return g_vsprintf(Str.toStringz(str), Str.toStringz(format), args);
	}
}
