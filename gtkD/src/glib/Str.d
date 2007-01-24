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

/*
 * Conversion parameters:
 * inFile  = glib-String-Utility-Functions.html
 * outPack = glib
 * outFile = Str
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Str
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- std.stdio
 * 	- glib.StringG
 * 	- std.c.string
 * structWrap:
 * 	- GString* -> StringG
 * local aliases:
 */

module glib.Str;

private import glib.glibtypes;

private import lib.glib;

private import std.stdio;
private import glib.StringG;
private import std.c.string;

/**
 * Description
 * This section describes a number of utility functions for creating,
 * duplicating, and manipulating strings.
 * Note that the functions g_printf(), g_fprintf(), g_sprintf(), g_snprintf(),
 * g_vprintf(), g_vfprintf(), g_vsprintf() and g_vsnprintf() are declared in
 * the header gprintf.h which is not
 * included in glib.h (otherwise using
 * glib.h would drag in stdio.h), so
 * you'll have to explicitly include <glib/gprintf.h>
 * in order to use the GLib printf() functions.
 * While you may use the printf() functions to format UTF-8 strings, notice that
 * the precision of a %Ns parameter is interpreted as the
 * number of bytes, not characters to print.
 * On top of that, the GNU libc implementation of the printf() functions has the "feature"
 * that it checks that the string given for the %Ns parameter
 * consists of a whole number of characters in the current encoding. So, unless you
 * are sure you are always going to be in an UTF-8 locale or your know your text is restricted
 * to ASCII, avoid using %Ns.
 * If your intention is to format strings for a certain number of columns, then
 * %Ns is not a correct solution anyway, since it fails to take
 * wide characters (see g_unichar_iswide()) into account.
 */
public class Str
{
	
	const static char[10] digits    = "0123456789";			/// 0..9
	
	/*************************************************
	 * Convert C-style 0 terminated string s to char[] string.
	 * copied from phobos
	 */
	public static char[] toString(char *s)
	{
		return s ? s[0 .. strlen(s)] : cast(char[])null;
	}
	
	/*********************************
	 * Convert array of chars s[] to a C-style 0 terminated string.
	 * copied from phobos
	 */
	public static char* toStringz(char[] s)
	in
	{
	}
	out (result)
	{
		//	if (result)
		//	{
			//		// TODO this one fails in some case???
			//		assert(strlen(result) == s.length);
			//		assert(memcmp(result, s, s.length) == 0);
		//	}
	}
	body
	{
		char[] copy;
		
		if (s.length == 0)
		{
			copy = "";
		}
		else
		{
			// Need to make a copy
			copy = new char[s.length + 1];
			copy[0..s.length] = s;
			copy[s.length] = 0;
		}
		
		return copy.ptr;
	}
	
	public static char** toStringzArray(char[][] args)
	{
		if ( args is null )
		{
			return null;
		}
		char** argv = (new char*[args.length]).ptr;
		int argc = 0;
		foreach (char[] p; args)
		{
			argv[argc++] = cast(char*)(p~'\0');
		}
		argv[argc] = null;
		
		return argv;
	}
	
	public static char[][] toStringArray(char** args)
	{
		if ( args is null )
		{
			return null;
		}
		char[][] argv;
		
		char* arg = args[0];
		int i=0;
		while( (arg) != null && i<10)
		{
			argv ~= toString(arg);
			++i;
			arg = args[i];
		}
		
		return argv;
	}
	
	public static char[] toString(bool b)
	{
		return b ? "true" : "false";
	}
	
	public static char[] toString(char c)
	{
		char[] result = new char[2];
		result[0] = c;
		result[1] = 0;
		return result[0 .. 1];
	}
	
	public static char[] toString(ubyte ub)  { return toString(cast(uint) ub); } /// ditto
	public static char[] toString(ushort us) { return toString(cast(uint) us); } /// ditto
	
	public static char[] toString(uint u)
	{   char[uint.sizeof * 3] buffer = void;
	int ndigits;
	char c;
	char[] result;
	
	ndigits = 0;
	if (u < 10)
	// Avoid storage allocation for simple stuff
	result = digits[u .. u + 1];
	else
	{
		while (u)
		{
			c = (u % 10) + '0';
			u /= 10;
			ndigits++;
			buffer[buffer.length - ndigits] = c;
		}
		result = new char[ndigits];
		result[] = buffer[buffer.length - ndigits .. buffer.length];
	}
	return result;
}

public static char[] toString(ulong u)
{   char[ulong.sizeof * 3] buffer;
int ndigits;
char c;
char[] result;

if (u < 0x1_0000_0000)
return toString(cast(uint)u);
ndigits = 0;
while (u)
{
	c = (u % 10) + '0';
	u /= 10;
	ndigits++;
	buffer[buffer.length - ndigits] = c;
}
result = new char[ndigits];
result[] = buffer[buffer.length - ndigits .. buffer.length];
return result;
}

public static char[] toString(byte b)  { return toString(cast(int) b); } /// ditto
public static char[] toString(short s) { return toString(cast(int) s); } /// ditto

public static char[] toString(int i)
{   char[1 + int.sizeof * 3] buffer;
char c;
char[] result;

if (i >= 0)
return toString(cast(uint)i);

uint u = -i;
int ndigits = 1;
while (u)
{
	c = (u % 10) + '0';
	u /= 10;
	buffer[buffer.length - ndigits] = c;
	ndigits++;
}
buffer[buffer.length - ndigits] = '-';
result = new char[ndigits];
result[] = buffer[buffer.length - ndigits .. buffer.length];
return result;
}

/**
 */

/**
 * Duplicates a string.
 * If str is NULL it returns NULL.
 * The returned string should be freed when no longer needed.
 * str:
 * the string to duplicate.
 * Returns:
 * a newly-allocated copy of str.
 */
public static char[] strdup(char[] str)
{
	// gchar* g_strdup (const gchar *str);
	return Str.toString(g_strdup(Str.toStringz(str)) );
}

/**
 * Duplicates the first n bytes of a string, returning a newly-allocated
 * buffer n + 1 bytes long which will always be nul-terminated.
 * If str is less than n bytes long the buffer is padded with nuls.
 * If str is NULL it returns NULL.
 * The returned value should be freed when no longer needed.
 * Note
 * To copy a number of characters from a UTF-8 encoded string, use
 * g_utf8_strncpy() instead.
 * str:
 *  the string to duplicate
 * n:
 *  the maximum number of bytes to copy from str
 * Returns:
 *  a newly-allocated buffer containing the first n bytes
 *  of str, nul-terminated
 */
public static char[] strndup(char[] str, uint n)
{
	// gchar* g_strndup (const gchar *str,  gsize n);
	return Str.toString(g_strndup(Str.toStringz(str), n) );
}

/**
 * Copies NULL-terminated array of strings. The copy is a deep copy;
 * the new array should be freed by first freeing each string, then
 * the array itself. g_strfreev() does this for you. If called
 * on a NULL value, g_strdupv() simply returns NULL.
 * str_array:
 *  NULL-terminated array of strings.
 * Returns:
 *  a new NULL-terminated array of strings.
 */
public static char** strdupv(char** strArray)
{
	// gchar** g_strdupv (gchar **str_array);
	return g_strdupv(strArray);
}

/**
 * Creates a new string length bytes long filled with fill_char.
 * The returned string should be freed when no longer needed.
 * length:
 *  the length of the new string
 * fill_char:
 *  the byte to fill the string with
 * Returns:
 *  a newly-allocated string filled the fill_char
 */
public static char[] strnfill(uint length, char fillChar)
{
	// gchar* g_strnfill (gsize length,  gchar fill_char);
	return Str.toString(g_strnfill(length, fillChar) );
}

/**
 * Copies a nul-terminated string into the dest buffer, include the
 * trailing nul, and return a pointer to the trailing nul byte.
 * This is useful for concatenating multiple strings together
 * without having to repeatedly scan for the end.
 * dest:
 *  destination buffer.
 * src:
 *  source string.
 * Returns:
 *  a pointer to trailing nul byte.
 */
public static char[] stpcpy(char[] dest, char[] src)
{
	// gchar* g_stpcpy (gchar *dest,  const char *src);
	return Str.toString(g_stpcpy(Str.toStringz(dest), Str.toStringz(src)) );
}

/**
 * Searches the string haystack for the first occurrence
 * of the string needle, limiting the length of the search
 * to haystack_len.
 * haystack:
 *  a string.
 * haystack_len:
 *  the maximum length of haystack.
 * needle:
 *  the string to search for.
 * Returns:
 *  a pointer to the found occurrence, or
 *  NULL if not found.
 */
public static char[] strstrLen(char[] haystack, int haystackLen, char[] needle)
{
	// gchar* g_strstr_len (const gchar *haystack,  gssize haystack_len,  const gchar *needle);
	return Str.toString(g_strstr_len(Str.toStringz(haystack), haystackLen, Str.toStringz(needle)) );
}

/**
 * Searches the string haystack for the last occurrence
 * of the string needle.
 * haystack:
 *  a nul-terminated string.
 * needle:
 *  the nul-terminated string to search for.
 * Returns:
 *  a pointer to the found occurrence, or
 *  NULL if not found.
 */
public static char[] strrstr(char[] haystack, char[] needle)
{
	// gchar* g_strrstr (const gchar *haystack,  const gchar *needle);
	return Str.toString(g_strrstr(Str.toStringz(haystack), Str.toStringz(needle)) );
}

/**
 * Searches the string haystack for the last occurrence
 * of the string needle, limiting the length of the search
 * to haystack_len.
 * haystack:
 *  a nul-terminated string.
 * haystack_len:
 *  the maximum length of haystack.
 * needle:
 *  the nul-terminated string to search for.
 * Returns:
 *  a pointer to the found occurrence, or
 *  NULL if not found.
 */
public static char[] strrstrLen(char[] haystack, int haystackLen, char[] needle)
{
	// gchar* g_strrstr_len (const gchar *haystack,  gssize haystack_len,  const gchar *needle);
	return Str.toString(g_strrstr_len(Str.toStringz(haystack), haystackLen, Str.toStringz(needle)) );
}

/**
 * Looks whether the string str begins with prefix.
 * str:
 *  a nul-terminated string.
 * prefix:
 *  the nul-terminated prefix to look for.
 * Returns:
 *  TRUE if str begins with prefix, FALSE otherwise.
 * Since 2.2
 */
public static int strHasPrefix(char[] str, char[] prefix)
{
	// gboolean g_str_has_prefix (const gchar *str,  const gchar *prefix);
	return g_str_has_prefix(Str.toStringz(str), Str.toStringz(prefix));
}

/**
 * Looks whether the string str ends with suffix.
 * str:
 *  a nul-terminated string.
 * suffix:
 *  the nul-terminated suffix to look for.
 * Returns:
 *  TRUE if str end with suffix, FALSE otherwise.
 * Since 2.2
 */
public static int strHasSuffix(char[] str, char[] suffix)
{
	// gboolean g_str_has_suffix (const gchar *str,  const gchar *suffix);
	return g_str_has_suffix(Str.toStringz(str), Str.toStringz(suffix));
}

/**
 * Portability wrapper that calls strlcpy() on systems which have it, and emulates
 * strlcpy() otherwise. Copies src to dest; dest is guaranteed to be
 * nul-terminated; src must be nul-terminated; dest_size is the buffer size, not
 * the number of chars to copy. Caveat: strlcpy() is supposedly more secure than
 * strcpy() or strncpy(), but if you really want to avoid screwups, g_strdup() is
 * an even better idea.
 * dest:
 * destination buffer
 * src:
 * source buffer
 * dest_size:
 * length of dest in bytes
 * Returns:
 * length of src
 */
public static uint strlcpy(char[] dest, char[] src, uint destSize)
{
	// gsize g_strlcpy (gchar *dest,  const gchar *src,  gsize dest_size);
	return g_strlcpy(Str.toStringz(dest), Str.toStringz(src), destSize);
}

/**
 * Portability wrapper that calls strlcat() on systems which have it, and emulates it otherwise.
 * Appends nul-terminated src string to dest, guaranteeing
 * nul-termination for dest. The total size of dest won't exceed
 * dest_size. Caveat: this is supposedly a more secure alternative to strcat() or
 * strncat(), but for real security g_strconcat() is harder to mess up.
 * dest:
 * destination buffer, already containing one nul-terminated string
 * src:
 * source buffer
 * dest_size:
 * length of dest buffer in bytes (not length of existing string inside dest)
 * Returns:
 * length of src plus initial length of string in dest
 */
public static uint strlcat(char[] dest, char[] src, uint destSize)
{
	// gsize g_strlcat (gchar *dest,  const gchar *src,  gsize dest_size);
	return g_strlcat(Str.toStringz(dest), Str.toStringz(src), destSize);
}

/**
 * Similar to the standard C sprintf() function
 * but safer, since it calculates the maximum space required and allocates
 * memory to hold the result.
 * The returned string should be freed when no longer needed.
 * format:
 * a standard printf() format string, but notice
 *  string precision pitfalls.
 * ...:
 * the parameters to insert into the format string.
 * Returns:
 * a newly-allocated string holding the result.
 */
public static char[] strdupPrintf(char[] format, ... )
{
	// gchar* g_strdup_printf (const gchar *format,  ...);
	return Str.toString(g_strdup_printf(Str.toStringz(format)) );
}

/**
 * Similar to the standard C vsprintf() function
 * but safer, since it calculates the maximum space required and allocates
 * memory to hold the result.
 * The returned string should be freed when no longer needed.
 * See also g_vasprintf(), which offers the same functionality, but additionally
 * returns the length of the allocated string.
 * format:
 * a standard printf() format string, but notice
 *  string precision pitfalls.
 * args:
 * the list of parameters to insert into the format string.
 * Returns:
 * a newly-allocated string holding the result.
 */
public static char[] strdupVprintf(char[] format, void* args)
{
	// gchar* g_strdup_vprintf (const gchar *format,  va_list args);
	return Str.toString(g_strdup_vprintf(Str.toStringz(format), args) );
}

/**
 * An implementation of the standard printf() function which supports
 * positional parameters, as specified in the Single Unix Specification.
 * format:
 *  a standard printf() format string, but notice
 *  string precision pitfalls.
 * ...:
 *  the arguments to insert in the output.
 * Returns:
 *  the number of characters printed.
 * Since 2.2
 */
public static int printf(char[] format, ... )
{
	// gint g_printf (gchar const *format,  ...);
	return g_printf(Str.toStringz(format));
}

/**
 * An implementation of the standard vprintf() function which supports
 * positional parameters, as specified in the Single Unix Specification.
 * format:
 *  a standard printf() format string, but notice
 *  string precision pitfalls.
 * args:
 *  the list of arguments to insert in the output.
 * Returns:
 *  the number of characters printed.
 * Since 2.2
 */
public static int vprintf(char[] format, void* args)
{
	// gint g_vprintf (gchar const *format,  va_list args);
	return g_vprintf(Str.toStringz(format), args);
}

/**
 * An implementation of the standard fprintf() function which supports
 * positional parameters, as specified in the Single Unix Specification.
 * file:
 *  the stream to write to.
 * format:
 *  a standard printf() format string, but notice
 *  string precision pitfalls.
 * ...:
 *  the arguments to insert in the output.
 * Returns:
 *  the number of characters printed.
 * Since 2.2
 */
public static int fprintf(FILE* file, char[] format, ... )
{
	// gint g_fprintf (FILE *file,  gchar const *format,  ...);
	return g_fprintf(file, Str.toStringz(format));
}

/**
 * An implementation of the standard fprintf() function which supports
 * positional parameters, as specified in the Single Unix Specification.
 * file:
 *  the stream to write to.
 * format:
 *  a standard printf() format string, but notice
 *  string precision pitfalls.
 * args:
 *  the list of arguments to insert in the output.
 * Returns:
 *  the number of characters printed.
 * Since 2.2
 */
public static int vfprintf(FILE* file, char[] format, void* args)
{
	// gint g_vfprintf (FILE *file,  gchar const *format,  va_list args);
	return g_vfprintf(file, Str.toStringz(format), args);
}

/**
 * An implementation of the standard sprintf() function which supports
 * positional parameters, as specified in the Single Unix Specification.
 * string:
 *  the buffer to hold the output.
 * format:
 *  a standard printf() format string, but notice
 *  string precision pitfalls.
 * ...:
 *  the arguments to insert in the output.
 * Returns:
 *  the number of characters printed.
 * Since 2.2
 */
public static int sprintf(char[] string, char[] format, ... )
{
	// gint g_sprintf (gchar *string,  gchar const *format,  ...);
	return g_sprintf(Str.toStringz(string), Str.toStringz(format));
}

/**
 * An implementation of the standard vsprintf() function which supports
 * positional parameters, as specified in the Single Unix Specification.
 * string:
 *  the buffer to hold the output.
 * format:
 *  a standard printf() format string, but notice
 *  string precision pitfalls.
 * args:
 *  the list of arguments to insert in the output.
 * Returns:
 *  the number of characters printed.
 * Since 2.2
 */
public static int vsprintf(char[] string, char[] format, void* args)
{
	// gint g_vsprintf (gchar *string,  gchar const *format,  va_list args);
	return g_vsprintf(Str.toStringz(string), Str.toStringz(format), args);
}

/**
 * A safer form of the standard sprintf() function. The output is guaranteed
 * to not exceed n characters (including the terminating nul character), so
 * it is easy to ensure that a buffer overflow cannot occur.
 * See also g_strdup_printf().
 * In versions of GLib prior to 1.2.3, this function may return -1 if the
 * output was truncated, and the truncated string may not be nul-terminated.
 * In versions prior to 1.3.12, this function returns the length of the output
 * string.
 * The return value of g_snprintf() conforms to the snprintf()
 * function as standardized in ISO C99. Note that this is different from
 * traditional snprintf(), which returns the length of the output string.
 * The format string may contain positional parameters, as specified in
 * the Single Unix Specification.
 * string:
 *  the buffer to hold the output.
 * n:
 *  the maximum number of characters to produce (including the
 *  terminating nul character).
 * format:
 *  a standard printf() format string, but notice
 *  string precision pitfalls.
 * ...:
 *  the arguments to insert in the output.
 * Returns:
 *  the number of characters which would be produced if the buffer
 *  was large enough.
 */
public static int snprintf(char[] string, uint n, char[] format, ... )
{
	// gint g_snprintf (gchar *string,  gulong n,  gchar const *format,  ...);
	return g_snprintf(Str.toStringz(string), n, Str.toStringz(format));
}

/**
 * A safer form of the standard vsprintf() function. The output is guaranteed
 * to not exceed n characters (including the terminating nul character), so
 * it is easy to ensure that a buffer overflow cannot occur.
 * See also g_strdup_vprintf().
 * In versions of GLib prior to 1.2.3, this function may return -1 if the
 * output was truncated, and the truncated string may not be nul-terminated.
 * In versions prior to 1.3.12, this function returns the length of the output
 * string.
 * The return value of g_vsnprintf() conforms to the vsnprintf() function
 * as standardized in ISO C99. Note that this is different from traditional
 * vsnprintf(), which returns the length of the output string.
 * The format string may contain positional parameters, as specified in
 * the Single Unix Specification.
 * string:
 *  the buffer to hold the output.
 * n:
 *  the maximum number of characters to produce (including the
 *  terminating nul character).
 * format:
 *  a standard printf() format string, but notice
 *  string precision pitfalls.
 * args:
 *  the list of arguments to insert in the output.
 * Returns:
 *  the number of characters which would be produced if the buffer
 *  was large enough.
 */
public static int vsnprintf(char[] string, uint n, char[] format, void* args)
{
	// gint g_vsnprintf (gchar *string,  gulong n,  gchar const *format,  va_list args);
	return g_vsnprintf(Str.toStringz(string), n, Str.toStringz(format), args);
}

/**
 * An implementation of the GNU vasprintf() function which supports
 * positional parameters, as specified in the Single Unix Specification.
 * This function is similar to g_vsprintf(), except that it allocates a
 * string to hold the output, instead of putting the output in a buffer
 * you allocate in advance.
 * string:
 *  the return location for the newly-allocated string.
 * format:
 *  a standard printf() format string, but notice
 *  string precision pitfalls.
 * args:
 *  the list of arguments to insert in the output.
 * Returns:
 *  the number of characters printed.
 * Since 2.4
 */
public static int vasprintf(char** string, char[] format, void* args)
{
	// gint g_vasprintf (gchar **string,  gchar const *format,  va_list args);
	return g_vasprintf(string, Str.toStringz(format), args);
}

/**
 * Calculates the maximum space needed to store the output of the sprintf() function.
 * format:
 * the format string. See the printf() documentation.
 * args:
 * the parameters to be inserted into the format string.
 * Returns:
 * the maximum space needed to store the formatted string.
 */
public static uint printfStringUpperBound(char[] format, void* args)
{
	// gsize g_printf_string_upper_bound (const gchar *format,  va_list args);
	return g_printf_string_upper_bound(Str.toStringz(format), args);
}

/**
 * Determines whether a character is alphanumeric.
 * Unlike the standard C library isalnum() function, this only
 * recognizes standard ASCII letters and ignores the locale, returning
 * FALSE for all non-ASCII characters. Also unlike the standard
 * library function, this takes a char, not an int,
 * so don't call it on EOF but no need to cast to guchar before passing a
 * possibly non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII alphanumeric character
 */
public static int asciiIsalnum(char c)
{
	// gboolean g_ascii_isalnum (gchar c);
	return g_ascii_isalnum(c);
}

/**
 * Determines whether a character is alphabetic (i.e. a letter).
 * Unlike the standard C library isalpha() function, this only
 * recognizes standard ASCII letters and ignores the locale, returning
 * FALSE for all non-ASCII characters. Also unlike the standard
 * library function, this takes a char, not an int,
 * so don't call it on EOF but no need to cast to guchar before passing a
 * possibly non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII alphabetic character
 */
public static int asciiIsalpha(char c)
{
	// gboolean g_ascii_isalpha (gchar c);
	return g_ascii_isalpha(c);
}

/**
 * Determines whether a character is a control character.
 * Unlike the standard C library iscntrl() function, this only
 * recognizes standard ASCII control characters and ignores the locale,
 * returning FALSE for all non-ASCII characters. Also unlike the standard
 * library function, this takes a char, not an int,
 * so don't call it on EOF but no need to cast to guchar before passing a
 * possibly non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII control character.
 */
public static int asciiIscntrl(char c)
{
	// gboolean g_ascii_iscntrl (gchar c);
	return g_ascii_iscntrl(c);
}

/**
 * Determines whether a character is digit (0-9).
 * Unlike the standard C library isdigit() function,
 * this takes a char, not an int, so don't call it
 * on EOF but no need to cast to guchar before passing a possibly
 * non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII digit.
 */
public static int asciiIsdigit(char c)
{
	// gboolean g_ascii_isdigit (gchar c);
	return g_ascii_isdigit(c);
}

/**
 * Determines whether a character is a printing character and not a space.
 * Unlike the standard C library isgraph() function,
 * this only recognizes standard ASCII characters and ignores the locale,
 * returning FALSE for all non-ASCII characters. Also unlike the standard
 * library function, this takes a char, not an int,
 * so don't call it on EOF but no need to cast to guchar before passing a
 * possibly non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII printing character other than space.
 */
public static int asciiIsgraph(char c)
{
	// gboolean g_ascii_isgraph (gchar c);
	return g_ascii_isgraph(c);
}

/**
 * Determines whether a character is an ASCII lower case letter.
 * Unlike the standard C library islower() function,
 * this only recognizes standard ASCII letters and ignores the locale,
 * returning FALSE for all non-ASCII characters. Also unlike the standard
 * library function, this takes a char, not an int,
 * so don't call it on EOF but no need to worry about casting to guchar
 * before passing a possibly non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII lower case letter
 */
public static int asciiIslower(char c)
{
	// gboolean g_ascii_islower (gchar c);
	return g_ascii_islower(c);
}

/**
 * Determines whether a character is a printing character.
 * Unlike the standard C library isprint() function,
 * this only recognizes standard ASCII characters and ignores the locale,
 * returning FALSE for all non-ASCII characters. Also unlike the standard
 * library function, this takes a char, not an int,
 * so don't call it on EOF but no need to cast to guchar before passing a
 * possibly non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII printing character.
 */
public static int asciiIsprint(char c)
{
	// gboolean g_ascii_isprint (gchar c);
	return g_ascii_isprint(c);
}

/**
 * Determines whether a character is a punctuation character.
 * Unlike the standard C library ispunct() function,
 * this only recognizes standard ASCII letters and ignores the locale,
 * returning FALSE for all non-ASCII characters. Also unlike the standard
 * library function, this takes a char, not an int,
 * so don't call it on EOF but no need to cast to guchar before passing a
 * possibly non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII punctuation character.
 */
public static int asciiIspunct(char c)
{
	// gboolean g_ascii_ispunct (gchar c);
	return g_ascii_ispunct(c);
}

/**
 * Determines whether a character is a white-space character.
 * Unlike the standard C library isspace() function,
 * this only recognizes standard ASCII white-space and ignores the locale,
 * returning FALSE for all non-ASCII characters. Also unlike the standard
 * library function, this takes a char, not an int,
 * so don't call it on EOF but no need to cast to guchar before passing a
 * possibly non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII white-space character
 */
public static int asciiIsspace(char c)
{
	// gboolean g_ascii_isspace (gchar c);
	return g_ascii_isspace(c);
}

/**
 * Determines whether a character is an ASCII upper case letter.
 * Unlike the standard C library isupper() function,
 * this only recognizes standard ASCII letters and ignores the locale,
 * returning FALSE for all non-ASCII characters. Also unlike the standard
 * library function, this takes a char, not an int,
 * so don't call it on EOF but no need to worry about casting to guchar
 * before passing a possibly non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII upper case letter
 */
public static int asciiIsupper(char c)
{
	// gboolean g_ascii_isupper (gchar c);
	return g_ascii_isupper(c);
}

/**
 * Determines whether a character is a hexadecimal-digit character.
 * Unlike the standard C library isxdigit() function,
 * this takes a char, not an int, so
 * don't call it on EOF but no need to cast to guchar before passing a
 * possibly non-ASCII character in.
 * c:
 * any character
 * Returns:
 * TRUE if c is an ASCII hexadecimal-digit character.
 */
public static int asciiIsxdigit(char c)
{
	// gboolean g_ascii_isxdigit (gchar c);
	return g_ascii_isxdigit(c);
}

/**
 * Determines the numeric value of a character as a decimal
 * digit. Differs from g_unichar_digit_value() because it takes
 * a char, so there's no worry about sign extension if characters
 * are signed.
 * c:
 *  an ASCII character.
 * Returns:
 *  If c is a decimal digit (according to
 * g_ascii_isdigit()), its numeric value. Otherwise, -1.
 */
public static int asciiDigitValue(char c)
{
	// gint g_ascii_digit_value (gchar c);
	return g_ascii_digit_value(c);
}

/**
 * Determines the numeric value of a character as a hexidecimal
 * digit. Differs from g_unichar_xdigit_value() because it takes
 * a char, so there's no worry about sign extension if characters
 * are signed.
 * c:
 *  an ASCII character.
 * Returns:
 *  If c is a hex digit (according to
 * g_ascii_isxdigit()), its numeric value. Otherwise, -1.
 */
public static int asciiXdigitValue(char c)
{
	// gint g_ascii_xdigit_value (gchar c);
	return g_ascii_xdigit_value(c);
}

/**
 * Compare two strings, ignoring the case of ASCII characters.
 * Unlike the BSD strcasecmp() function, this only recognizes standard
 * ASCII letters and ignores the locale, treating all non-ASCII
 * bytes as if they are not letters.
 * This function should be used only on strings that are known to be
 * in encodings where the bytes corresponding to ASCII letters always
 * represent themselves. This includes UTF-8 and the ISO-8859-*
 * charsets, but not for instance double-byte encodings like the
 * Windows Codepage 932, where the trailing bytes of double-byte
 * characters include all ASCII letters. If you compare two CP932
 * strings using this function, you will get false matches.
 * s1:
 *  string to compare with s2.
 * s2:
 *  string to compare with s1.
 * Returns:
 *  0 if the strings match, a negative value if s1 < s2,
 *  or a positive value if s1 > s2.
 */
public static int asciiStrcasecmp(char[] s1, char[] s2)
{
	// gint g_ascii_strcasecmp (const gchar *s1,  const gchar *s2);
	return g_ascii_strcasecmp(Str.toStringz(s1), Str.toStringz(s2));
}

/**
 * Compare s1 and s2, ignoring the case of ASCII characters and any
 * characters after the first n in each string.
 * Unlike the BSD strcasecmp() function, this only recognizes standard
 * ASCII letters and ignores the locale, treating all non-ASCII
 * characters as if they are not letters.
 * The same warning as in g_ascii_strcasecmp() applies: Use this
 * function only on strings known to be in encodings where bytes
 * corresponding to ASCII letters always represent themselves.
 * s1:
 *  string to compare with s2.
 * s2:
 *  string to compare with s1.
 * n:
 *  number of characters to compare.
 * Returns:
 *  0 if the strings match, a negative value if s1 < s2,
 *  or a positive value if s1 > s2.
 */
public static int asciiStrncasecmp(char[] s1, char[] s2, uint n)
{
	// gint g_ascii_strncasecmp (const gchar *s1,  const gchar *s2,  gsize n);
	return g_ascii_strncasecmp(Str.toStringz(s1), Str.toStringz(s2), n);
}

/**
 * Converts all lower case ASCII letters to upper case ASCII letters.
 * str:
 *  a string.
 * len:
 *  length of str in bytes, or -1 if str is nul-terminated.
 * Returns:
 *  a newly allocated string, with all the lower case
 *  characters in str converted to upper case, with
 *  semantics that exactly match g_ascii_toupper(). (Note
 *  that this is unlike the old g_strup(), which modified
 *  the string in place.)
 */
public static char[] asciiStrup(char[] str, int len)
{
	// gchar* g_ascii_strup (const gchar *str,  gssize len);
	return Str.toString(g_ascii_strup(Str.toStringz(str), len) );
}

/**
 * Converts all upper case ASCII letters to lower case ASCII letters.
 * str:
 *  a string.
 * len:
 *  length of str in bytes, or -1 if str is nul-terminated.
 * Returns:
 *  a newly-allocated string, with all the upper case
 *  characters in str converted to lower case, with
 *  semantics that exactly match g_ascii_tolower(). (Note
 *  that this is unlike the old g_strdown(), which modified
 *  the string in place.)
 */
public static char[] asciiStrdown(char[] str, int len)
{
	// gchar* g_ascii_strdown (const gchar *str,  gssize len);
	return Str.toString(g_ascii_strdown(Str.toStringz(str), len) );
}

/**
 * Convert a character to ASCII lower case.
 * Unlike the standard C library tolower() function, this only
 * recognizes standard ASCII letters and ignores the locale, returning
 * all non-ASCII characters unchanged, even if they are lower case
 * letters in a particular character set. Also unlike the standard
 * library function, this takes and returns a char, not an int, so
 * don't call it on EOF but no need to worry about casting to guchar
 * before passing a possibly non-ASCII character in.
 * c:
 *  any character.
 * Returns:
 *  the result of converting c to lower case.
 *  If c is not an ASCII upper case letter,
 *  c is returned unchanged.
 */
public static char asciiTolower(char c)
{
	// gchar g_ascii_tolower (gchar c);
	return g_ascii_tolower(c);
}

/**
 * Convert a character to ASCII upper case.
 * Unlike the standard C library toupper() function, this only
 * recognizes standard ASCII letters and ignores the locale, returning
 * all non-ASCII characters unchanged, even if they are upper case
 * letters in a particular character set. Also unlike the standard
 * library function, this takes and returns a char, not an int, so
 * don't call it on EOF but no need to worry about casting to guchar
 * before passing a possibly non-ASCII character in.
 * c:
 *  any character.
 * Returns:
 *  the result of converting c to upper case.
 *  If c is not an ASCII lower case letter,
 *  c is returned unchanged.
 */
public static char asciiToupper(char c)
{
	// gchar g_ascii_toupper (gchar c);
	return g_ascii_toupper(c);
}

/**
 * Converts all lower case ASCII letters to upper case ASCII letters.
 * string:
 *  a GString
 * Returns:
 *  passed-in string pointer, with all the lower case
 *  characters converted to upper case in place, with
 *  semantics that exactly match g_ascii_toupper.
 */
public static StringG stringAsciiUp(StringG string)
{
	// GString* g_string_ascii_up (GString *string);
	return new StringG( g_string_ascii_up((string is null) ? null : string.getStringGStruct()) );
}

/**
 * Converts all upper case ASCII letters to lower case ASCII letters.
 * string:
 *  a GString
 * Returns:
 *  passed-in string pointer, with all the upper case
 *  characters converted to lower case in place, with
 *  semantics that exactly match g_ascii_tolower.
 */
public static StringG stringAsciiDown(StringG string)
{
	// GString* g_string_ascii_down (GString *string);
	return new StringG( g_string_ascii_down((string is null) ? null : string.getStringGStruct()) );
}

/**
 * Warning
 * g_strup has been deprecated since version 2.2 and should not be used in newly-written code. This function is totally broken for the reasons discussed
 * in the g_strncasecmp() docs - use g_ascii_strup() or g_utf8_strup() instead.
 * Converts a string to upper case.
 * string:
 *  the string to convert.
 * Returns:
 *  the string
 */
public static char[] strup(char[] string)
{
	// gchar* g_strup (gchar *string);
	return Str.toString(g_strup(Str.toStringz(string)) );
}

/**
 * Warning
 * g_strdown has been deprecated since version 2.2 and should not be used in newly-written code. This function is totally broken for the reasons discussed
 * in the g_strncasecmp() docs - use g_ascii_strdown() or g_utf8_strdown()
 * instead.
 * Converts a string to lower case.
 * string:
 *  the string to convert.
 * Returns:
 *  the string
 */
public static char[] strdown(char[] string)
{
	// gchar* g_strdown (gchar *string);
	return Str.toString(g_strdown(Str.toStringz(string)) );
}

/**
 * Warning
 * g_strcasecmp has been deprecated since version 2.2 and should not be used in newly-written code. See g_strncasecmp() for a discussion of why this function
 *  is deprecated and how to replace it.
 * A case-insensitive string comparison, corresponding to the standard
 * strcasecmp() function on platforms which support it.
 * s1:
 *  a string.
 * s2:
 *  a string to compare with s1.
 * Returns:
 *  0 if the strings match, a negative value if s1 < s2,
 *  or a positive value if s1 > s2.
 */
public static int strcasecmp(char[] s1, char[] s2)
{
	// gint g_strcasecmp (const gchar *s1,  const gchar *s2);
	return g_strcasecmp(Str.toStringz(s1), Str.toStringz(s2));
}

/**
 * Warning
 * g_strncasecmp has been deprecated since version 2.2 and should not be used in newly-written code. The problem with g_strncasecmp() is that it does the
 * comparison by calling toupper()/tolower(). These functions are
 * locale-specific and operate on single bytes. However, it is impossible
 * to handle things correctly from an I18N standpoint by operating on
 * bytes, since characters may be multibyte. Thus g_strncasecmp() is
 * broken if your string is guaranteed to be ASCII, since it's
 * locale-sensitive, and it's broken if your string is localized, since
 * it doesn't work on many encodings at all, including UTF-8, EUC-JP,
 * etc.
 * There are therefore two replacement functions: g_ascii_strncasecmp(),
 * which only works on ASCII and is not locale-sensitive, and
 * g_utf8_casefold(), which is good for case-insensitive sorting of UTF-8.
 * A case-insensitive string comparison, corresponding to the standard
 * strncasecmp() function on platforms which support it.
 * It is similar to g_strcasecmp() except it only compares the first n
 * characters of the strings.
 * s1:
 *  a string.
 * s2:
 *  a string to compare with s1.
 * n:
 *  the maximum number of characters to compare.
 * Returns:
 *  0 if the strings match, a negative value if s1 < s2,
 *  or a positive value if s1 > s2.
 */
public static int strncasecmp(char[] s1, char[] s2, uint n)
{
	// gint g_strncasecmp (const gchar *s1,  const gchar *s2,  guint n);
	return g_strncasecmp(Str.toStringz(s1), Str.toStringz(s2), n);
}

/**
 * Reverses all of the bytes in a string.
 * For example, g_strreverse ("abcdef") will result in "fedcba".
 * Note that g_strreverse() doesn't work on UTF-8 strings containing multibyte characters.
 * For that purpose, use g_utf8_strreverse().
 * string:
 * the string to reverse.
 * Returns:
 * the same pointer passed in as string.
 */
public static char[] strreverse(char[] string)
{
	// gchar* g_strreverse (gchar *string);
	return Str.toString(g_strreverse(Str.toStringz(string)) );
}

/**
 * Converts a string to a gint64 value.
 * This function behaves like the standard strtoll() function
 * does in the C locale. It does this without actually
 * changing the current locale, since that would not be
 * thread-safe.
 * This function is typically used when reading configuration
 * files or other non-user input that should be locale independent.
 * To handle input from the user you should normally use the
 * locale-sensitive system strtoll() function.
 * If the correct value would cause overflow, G_MAXINT64 or G_MININT64
 * is returned, and ERANGE is stored in errno. If the base is
 * outside the valid range, zero is returned, and EINVAL is stored
 * in errno. If the string conversion fails, zero is returned, and
 * endptr returns nptr (if endptr is non-NULL).
 * nptr:
 *  the string to convert to a numeric value.
 * endptr:
 *  if non-NULL, it returns the character after
 *  the last character used in the conversion.
 * base:
 *  to be used for the conversion, 2..36 or 0
 * Returns:
 *  the gint64 value or zero on error.
 * Since 2.12
 */
public static long asciiStrtoll(char[] nptr, char** endptr, uint base)
{
	// gint64 g_ascii_strtoll (const gchar *nptr,  gchar **endptr,  guint base);
	return g_ascii_strtoll(Str.toStringz(nptr), endptr, base);
}

/**
 * Converts a string to a guint64 value.
 * This function behaves like the standard strtoull() function
 * does in the C locale. It does this without actually
 * changing the current locale, since that would not be
 * thread-safe.
 * This function is typically used when reading configuration
 * files or other non-user input that should be locale independent.
 * To handle input from the user you should normally use the
 * locale-sensitive system strtoull() function.
 * If the correct value would cause overflow, G_MAXUINT64
 * is returned, and ERANGE is stored in errno. If the base is
 * outside the valid range, zero is returned, and EINVAL is stored
 * in errno. If the string conversion fails, zero is returned, and
 * endptr returns nptr (if endptr is non-NULL).
 * nptr:
 *  the string to convert to a numeric value.
 * endptr:
 *  if non-NULL, it returns the character after
 *  the last character used in the conversion.
 * base:
 *  to be used for the conversion, 2..36 or 0
 * Returns:
 *  the guint64 value or zero on error.
 * Since 2.2
 */
public static ulong asciiStrtoull(char[] nptr, char** endptr, uint base)
{
	// guint64 g_ascii_strtoull (const gchar *nptr,  gchar **endptr,  guint base);
	return g_ascii_strtoull(Str.toStringz(nptr), endptr, base);
}


/**
 * Converts a string to a gdouble value.
 * This function behaves like the standard strtod() function
 * does in the C locale. It does this without actually
 * changing the current locale, since that would not be
 * thread-safe.
 * This function is typically used when reading configuration
 * files or other non-user input that should be locale independent.
 * To handle input from the user you should normally use the
 * locale-sensitive system strtod() function.
 * To convert from a gdouble to a string in a locale-insensitive
 * way, use g_ascii_dtostr().
 * If the correct value would cause overflow, plus or minus HUGE_VAL
 * is returned (according to the sign of the value), and ERANGE is
 * stored in errno. If the correct value would cause underflow,
 * zero is returned and ERANGE is stored in errno.
 * This function resets errno before calling strtod() so that
 * you can reliably detect overflow and underflow.
 * nptr:
 *  the string to convert to a numeric value.
 * endptr:
 *  if non-NULL, it returns the character after
 *  the last character used in the conversion.
 * Returns:
 *  the gdouble value.
 */
public static double asciiStrtod(char[] nptr, char** endptr)
{
	// gdouble g_ascii_strtod (const gchar *nptr,  gchar **endptr);
	return g_ascii_strtod(Str.toStringz(nptr), endptr);
}

/**
 * Converts a gdouble to a string, using the '.' as
 * decimal point.
 * This functions generates enough precision that converting
 * the string back using g_ascii_strtod() gives the same machine-number
 * (on machines with IEEE compatible 64bit doubles). It is
 * guaranteed that the size of the resulting string will never
 * be larger than G_ASCII_DTOSTR_BUF_SIZE bytes.
 * buffer:
 *  A buffer to place the resulting string in
 * buf_len:
 *  The length of the buffer.
 * d:
 *  The gdouble to convert
 * Returns:
 *  The pointer to the buffer with the converted string.
 */
public static char[] asciiDtostr(char[] buffer, int bufLen, double d)
{
	// gchar* g_ascii_dtostr (gchar *buffer,  gint buf_len,  gdouble d);
	return Str.toString(g_ascii_dtostr(Str.toStringz(buffer), bufLen, d) );
}

/**
 * Converts a gdouble to a string, using the '.' as
 * decimal point. To format the number you pass in
 * a printf()-style format string. Allowed conversion
 * specifiers are 'e', 'E', 'f', 'F', 'g' and 'G'.
 * If you just want to want to serialize the value into a
 * string, use g_ascii_dtostr().
 * buffer:
 *  A buffer to place the resulting string in
 * buf_len:
 *  The length of the buffer.
 * format:
 *  The printf()-style format to use for the
 *  code to use for converting.
 * d:
 *  The gdouble to convert
 * Returns:
 *  The pointer to the buffer with the converted string.
 */
public static char[] asciiFormatd(char[] buffer, int bufLen, char[] format, double d)
{
	// gchar* g_ascii_formatd (gchar *buffer,  gint buf_len,  const gchar *format,  gdouble d);
	return Str.toString(g_ascii_formatd(Str.toStringz(buffer), bufLen, Str.toStringz(format), d) );
}

/**
 * Converts a string to a gdouble value.
 * It calls the standard strtod() function to handle the conversion, but
 * if the string is not completely converted it attempts the conversion
 * again with g_ascii_strtod(), and returns the best match.
 * This function should seldomly be used. The normal situation when reading
 * numbers not for human consumption is to use g_ascii_strtod(). Only when
 * you know that you must expect both locale formatted and C formatted numbers
 * should you use this. Make sure that you don't pass strings such as comma
 * separated lists of values, since the commas may be interpreted as a decimal
 * point in some locales, causing unexpected results.
 * nptr:
 *  the string to convert to a numeric value.
 * endptr:
 *  if non-NULL, it returns the character after
 *  the last character used in the conversion.
 * Returns:
 *  the gdouble value.
 */
public static double strtod(char[] nptr, char** endptr)
{
	// gdouble g_strtod (const gchar *nptr,  gchar **endptr);
	return g_strtod(Str.toStringz(nptr), endptr);
}

/**
 * Removes leading whitespace from a string, by moving the rest of the
 * characters forward.
 * This function doesn't allocate or reallocate any memory; it modifies string
 * in place. The pointer to string is returned to allow the nesting of functions.
 * Also see g_strchomp() and g_strstrip().
 * string:
 * a string to remove the leading whitespace from.
 * Returns:
 * string.
 */
public static char[] strchug(char[] string)
{
	// gchar* g_strchug (gchar *string);
	return Str.toString(g_strchug(Str.toStringz(string)) );
}

/**
 * Removes trailing whitespace from a string.
 * This function doesn't allocate or reallocate any memory; it modifies string in
 * place. The pointer to string is returned to allow the nesting of functions.
 * Also see g_strchug() and g_strstrip().
 * string:
 * a string to remove the trailing whitespace from.
 * Returns:
 * string.
 */
public static char[] strchomp(char[] string)
{
	// gchar* g_strchomp (gchar *string);
	return Str.toString(g_strchomp(Str.toStringz(string)) );
}


/**
 * Converts any delimiter characters in string to new_delimiter.
 * Any characters in string which are found in delimiters are changed
 * to the new_delimiter character. Modifies string in place, and returns
 * string itself, not a copy. The return value is to allow nesting such as
 * g_ascii_strup (g_strdelimit (str, "abc", '?')).
 * string:
 * the string to convert.
 * delimiters:
 * a string containing the current delimiters, or NULL to use the
 * standard delimiters defined in G_STR_DELIMITERS.
 * new_delimiter:
 * the new delimiter character.
 * Returns:
 * string.
 */
public static char[] strdelimit(char[] string, char[] delimiters, char newDelimiter)
{
	// gchar* g_strdelimit (gchar *string,  const gchar *delimiters,  gchar new_delimiter);
	return Str.toString(g_strdelimit(Str.toStringz(string), Str.toStringz(delimiters), newDelimiter) );
}


/**
 * Escapes the special characters '\b', '\f', '\n', '\r', '\t', '\' and
 * '"' in the string source by inserting a '\' before
 * them. Additionally all characters in the range 0x01-0x1F (everything
 * below SPACE) and in the range 0x7F-0xFF (all non-ASCII chars) are
 * replaced with a '\' followed by their octal representation. Characters
 * supplied in exceptions are not escaped.
 * g_strcompress() does the reverse conversion.
 * source:
 * a string to escape.
 * exceptions:
 * a string of characters not to escape in source.
 * Returns:
 * a newly-allocated copy of source with certain
 * characters escaped. See above.
 */
public static char[] strescape(char[] source, char[] exceptions)
{
	// gchar* g_strescape (const gchar *source,  const gchar *exceptions);
	return Str.toString(g_strescape(Str.toStringz(source), Str.toStringz(exceptions)) );
}

/**
 * Replaces all escaped characters with their one byte equivalent. It
 * does the reverse conversion of g_strescape().
 * source:
 * a string to compress.
 * Returns:
 * a newly-allocated copy of source with all escaped
 * character compressed.
 */
public static char[] strcompress(char[] source)
{
	// gchar* g_strcompress (const gchar *source);
	return Str.toString(g_strcompress(Str.toStringz(source)) );
}

/**
 * For each character in string, if the character is not in valid_chars,
 * replaces the character with substitutor. Modifies string in place,
 * and return string itself, not a copy. The return value is to allow
 * nesting such as g_ascii_strup (g_strcanon (str, "abc", '?')).
 * string:
 * a nul-terminated array of bytes.
 * valid_chars:
 * bytes permitted in string.
 * substitutor:
 * replacement character for disallowed bytes.
 * Returns:
 * string.
 */
public static char[] strcanon(char[] string, char[] validChars, char substitutor)
{
	// gchar* g_strcanon (gchar *string,  const gchar *valid_chars,  gchar substitutor);
	return Str.toString(g_strcanon(Str.toStringz(string), Str.toStringz(validChars), substitutor) );
}

/**
 * Splits a string into a maximum of max_tokens pieces, using the given
 * delimiter. If max_tokens is reached, the remainder of string is appended
 * to the last token.
 * As a special case, the result of splitting the empty string "" is an empty
 * vector, not a vector containing a single string. The reason for this
 * special case is that being able to represent a empty vector is typically
 * more useful than consistent handling of empty elements. If you do need
 * to represent empty elements, you'll need to check for the empty string
 * before calling g_strsplit().
 * string:
 *  a string to split.
 * delimiter:
 *  a string which specifies the places at which to split the string.
 *  The delimiter is not included in any of the resulting strings, unless
 *  max_tokens is reached.
 * max_tokens:
 *  the maximum number of pieces to split string into. If this is
 *  less than 1, the string is split completely.
 * Returns:
 *  a newly-allocated NULL-terminated array of strings. Use
 *  g_strfreev() to free it.
 */
public static char** strsplit(char[] string, char[] delimiter, int maxTokens)
{
	// gchar** g_strsplit (const gchar *string,  const gchar *delimiter,  gint max_tokens);
	return g_strsplit(Str.toStringz(string), Str.toStringz(delimiter), maxTokens);
}

/**
 * Splits string into a number of tokens not containing any of the characters
 * in delimiter. A token is the (possibly empty) longest string that does not
 * contain any of the characters in delimiters. If max_tokens is reached, the
 * remainder is appended to the last token.
 * For example the result of g_strsplit_set ("abc:def/ghi", ":/", -1) is a
 * NULL-terminated vector containing the three strings "abc", "def",
 * and "ghi".
 * The result if g_strsplit_set (":def/ghi:", ":/", -1) is a NULL-terminated
 * vector containing the four strings "", "def", "ghi", and "".
 * As a special case, the result of splitting the empty string "" is an empty
 * vector, not a vector containing a single string. The reason for this
 * special case is that being able to represent a empty vector is typically
 * more useful than consistent handling of empty elements. If you do need
 * to represent empty elements, you'll need to check for the empty string
 * before calling g_strsplit_set().
 * Note that this function works on bytes not characters, so it can't be used
 * to delimit UTF-8 strings for anything but ASCII characters.
 * string:
 *  The string to be tokenized
 * delimiters:
 *  A nul-terminated string containing bytes that are used
 *  to split the string.
 * max_tokens:
 *  The maximum number of tokens to split string into.
 *  If this is less than 1, the string is split completely
 * Returns:
 *  a newly-allocated NULL-terminated array of strings. Use
 *  g_strfreev() to free it.
 * Since 2.4
 */
public static char** strsplitSet(char[] string, char[] delimiters, int maxTokens)
{
	// gchar** g_strsplit_set (const gchar *string,  const gchar *delimiters,  gint max_tokens);
	return g_strsplit_set(Str.toStringz(string), Str.toStringz(delimiters), maxTokens);
}

/**
 * Frees a NULL-terminated array of strings, and the array itself.
 * If called on a NULL value, g_strfreev() simply returns.
 * str_array:
 *  a NULL-terminated array of strings to free.
 */
public static void strfreev(char** strArray)
{
	// void g_strfreev (gchar **str_array);
	g_strfreev(strArray);
}

/**
 * Concatenates all of the given strings into one long string. The returned string
 * should be freed when no longer needed.
 * Warning
 * The variable argument list must end with NULL.
 * If you forget the NULL, g_strconcat() will start appending
 * random memory junk to your string.
 * string1:
 * The first string to add, which must not be NULL.
 * ...:
 * a NULL-terminated list of strings to append to the string.
 * Returns:
 * a newly-allocated string containing all the string arguments.
 */
public static char[] strconcat(char[] string1, ... )
{
	// gchar* g_strconcat (const gchar *string1,  ...);
	return Str.toString(g_strconcat(Str.toStringz(string1)) );
}

/**
 * Joins a number of strings together to form one long string, with the optional
 * separator inserted between each of them.
 * separator:
 * a string to insert between each of the strings, or NULL.
 * ...:
 * a NULL-terminated list of strings to join.
 * Returns:
 * a newly-allocated string containing all of the strings joined
 * together, with separator between them.
 */
public static char[] strjoin(char[] separator, ... )
{
	// gchar* g_strjoin (const gchar *separator,  ...);
	return Str.toString(g_strjoin(Str.toStringz(separator)) );
}

/**
 * Joins a number of strings together to form one long string, with the optional
 * separator inserted between each of them.
 * separator:
 * a string to insert between each of the strings, or NULL.
 * str_array:
 * a NULL-terminated array of strings to join.
 * Returns:
 * a newly-allocated string containing all of the strings joined
 * together, with separator between them.
 */
public static char[] strjoinv(char[] separator, char** strArray)
{
	// gchar* g_strjoinv (const gchar *separator,  gchar **str_array);
	return Str.toString(g_strjoinv(Str.toStringz(separator), strArray) );
}

/**
 * Returns the length of the given NULL-terminated
 * string array str_array.
 * str_array:
 *  a NULL-terminated array of strings.
 * Returns:
 *  length of str_array.
 * Since 2.6
 */
public static uint strvLength(char** strArray)
{
	// guint g_strv_length (gchar **str_array);
	return g_strv_length(strArray);
}

/**
 * Returns a string corresponding to the given error code, e.g. "no such process".
 * This function is included since not all platforms support the
 * strerror() function.
 * errnum:
 * the system error number. See the standard C errno
 * documentation.
 * Returns:
 * a string describing the error code.
 * If the error code is unknown, it returns "unknown error (<code>)".
 * The string can only be used until the next call to g_strerror().
 */
public static char[] strerror(int errnum)
{
	// const gchar* g_strerror (gint errnum);
	return Str.toString(g_strerror(errnum) );
}

/**
 * Returns a string describing the given signal, e.g. "Segmentation fault".
 * This function is included since not all platforms support the
 * strsignal() function.
 * signum:
 * the signal number. See the signal
 * documentation.
 * Returns:
 * a string describing the signal.
 * If the signal is unknown, it returns "unknown signal (<signum>)".
 * The string can only be used until the next call to g_strsignal().
 */
public static char[] strsignal(int signum)
{
	// const gchar* g_strsignal (gint signum);
	return Str.toString(g_strsignal(signum) );
}
}
