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
 * inFile  = glib-Character-Set-Conversion.html
 * outPack = glib
 * outFile = CharacterSet
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = CharacterSet
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
 * 	- g_convert_with_iconv
 * 	- g_iconv_open
 * 	- g_iconv
 * 	- g_iconv_close
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module glib.CharacterSet;

public  import gtkc.glibtypes;

private import gtkc.glib;


private import glib.Str;




/**
 * Description
 * File Name Encodings
 * 	Historically, Unix has not had a defined encoding for file
 * 	names: a file name is valid as long as it does not have path
 * 	separators in it ("/"). However, displaying file names may
 * 	require conversion: from the character set in which they were
 * 	created, to the character set in which the application
 * 	operates. Consider the Spanish file name
 * 	"Presentacin.sxi". If the
 * 	application which created it uses ISO-8859-1 for its encoding,
 * 	then the actual file name on disk would look like this:
 * Character: P r e s e n t a c i  n . s x i
 * Hex code: 50 72 65 73 65 6e 74 61 63 69 f3 6e 2e 73 78 69
 * 	However, if the application use UTF-8, the actual file name on
 * 	disk would look like this:
 * Character: P r e s e n t a c i  n . s x i
 * Hex code: 50 72 65 73 65 6e 74 61 63 69 c3 b3 6e 2e 73 78 69
 * 	Glib uses UTF-8 for its strings, and GUI toolkits like GTK+
 * 	that use Glib do the same thing. If you get a file name from
 * 	the file system, for example, from
 * 	readdir(3) or from g_dir_read_name(),
 * 	and you wish to display the file name to the user, you
 * 	will need to convert it into UTF-8. The
 * 	opposite case is when the user types the name of a file he
 * 	wishes to save: the toolkit will give you that string in
 * 	UTF-8 encoding, and you will need to convert it to the
 * 	character set used for file names before you can create the
 * 	file with open(2) or
 * 	fopen(3).
 * 	By default, Glib assumes that file names on disk are in UTF-8
 * 	encoding. This is a valid assumption for file systems which
 * 	were created relatively recently: most applications use UTF-8
 * 	encoding for their strings, and that is also what they use for
 * 	the file names they create. However, older file systems may
 * 	still contain file names created in "older" encodings, such as
 * 	ISO-8859-1. In this case, for compatibility reasons, you may
 * 	want to instruct Glib to use that particular encoding for file
 * 	names rather than UTF-8. You can do this by specifying the
 * 	encoding for file names in the G_FILENAME_ENCODING
 * 	environment variable. For example, if your installation uses
 * 	ISO-8859-1 for file names, you can put this in your
 * 	~/.profile:
 * export G_FILENAME_ENCODING=ISO-8859-1
 * 	Glib provides the functions g_filename_to_utf8()
 * 	and g_filename_from_utf8()
 * 	to perform the necessary conversions. These functions convert
 * 	file names from the encoding specified in
 * 	G_FILENAME_ENCODING to UTF-8 and vice-versa.
 * 	Figure2, Conversion between File Name Encodings illustrates how
 * 	these functions are used to convert between UTF-8 and the
 * 	encoding for file names in the file system.
 * Figure2.Conversion between File Name Encodings
 * Checklist for Application Writers
 * 	 This section is a practical summary of the detailed
 * 	 description above. You can use this as a checklist of
 * 	 things to do to make sure your applications process file
 * 	 name encodings correctly.
 * 	 If you get a file name from the file system from a
 * 	 function such as readdir(3) or
 * 	 gtk_file_chooser_get_filename(),
 * 	 you do not need to do any conversion to pass that
 * 	 file name to functions like open(2),
 * 	 rename(2), or
 * 	 fopen(3)  those are "raw"
 * 	 file names which the file system understands.
 * 	 If you need to display a file name, convert it to UTF-8
 * 	 first by using g_filename_to_utf8().
 * 	 If conversion fails, display a string like
 * 	 "Unknown file name". Do
 * 	 not convert this string back into the
 * 	 encoding used for file names if you wish to pass it to
 * 	 the file system; use the original file name instead.
 * 	 For example, the document window of a word processor
 * 	 could display "Unknown file name" in its title bar but
 * 	 still let the user save the file, as it would keep the
 * 	 raw file name internally. This can happen if the user
 * 	 has not set the G_FILENAME_ENCODING
 * 	 environment variable even though he has files whose
 * 	 names are not encoded in UTF-8.
 * 	 If your user interface lets the user type a file name
 * 	 for saving or renaming, convert it to the encoding used
 * 	 for file names in the file system by using g_filename_from_utf8().
 * 	 Pass the converted file name to functions like
 * 	 fopen(3). If conversion fails, ask
 * 	 the user to enter a different file name. This can
 * 	 happen if the user types Japanese characters when
 * 	 G_FILENAME_ENCODING is set to
 * 	 ISO-8859-1, for example.
 */
public class CharacterSet
{
	
	/**
	 */
	
	/**
	 * Converts a string from one character set to another.
	 * Note that you should use g_iconv() for streaming
	 * conversions[2].
	 * Params:
	 * str =  the string to convert
	 * len =  the length of the string, or -1 if the string is
	 *  nul-terminated[1].
	 * toCodeset =  name of character set into which to convert str
	 * fromCodeset =  character set of str.
	 * bytesRead =  location to store the number of bytes in the
	 *  input string that were successfully converted, or NULL.
	 *  Even if the conversion was successful, this may be
	 *  less than len if there were partial characters
	 *  at the end of the input. If the error
	 *  G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *  stored will the byte offset after the last valid
	 *  input sequence.
	 * bytesWritten =  the number of bytes stored in the output buffer (not
	 *  including the terminating nul).
	 * error =  location to store the error occuring, or NULL to ignore
	 *  errors. Any of the errors in GConvertError may occur.
	 * Returns: If the conversion was successful, a newly allocated nul-terminated string, which must be freed with g_free(). Otherwise NULL and error will be set.
	 */
	public static char[] convert(char[] str, int len, char[] toCodeset, char[] fromCodeset, uint* bytesRead, uint* bytesWritten, GError** error)
	{
		// gchar* g_convert (const gchar *str,  gssize len,  const gchar *to_codeset,  const gchar *from_codeset,  gsize *bytes_read,  gsize *bytes_written,  GError **error);
		return Str.toString(g_convert(Str.toStringz(str), len, Str.toStringz(toCodeset), Str.toStringz(fromCodeset), bytesRead, bytesWritten, error)).dup;
	}
	
	/**
	 * Converts a string from one character set to another, possibly
	 * including fallback sequences for characters not representable
	 * in the output. Note that it is not guaranteed that the specification
	 * for the fallback sequences in fallback will be honored. Some
	 * systems may do a approximate conversion from from_codeset
	 * to to_codeset in their iconv() functions,
	 * in which case GLib will simply return that approximate conversion.
	 * Note that you should use g_iconv() for streaming
	 * conversions[2].
	 * Params:
	 * str =  the string to convert
	 * len =  the length of the string, or -1 if the string is
	 *  nul-terminated[1].
	 * toCodeset =  name of character set into which to convert str
	 * fromCodeset =  character set of str.
	 * fallback =  UTF-8 string to use in place of character not
	 *  present in the target encoding. (The string must be
	 *  representable in the target encoding).
	 *  If NULL, characters not in the target encoding will
	 *  be represented as Unicode escapes \uxxxx or \Uxxxxyyyy.
	 * bytesRead =  location to store the number of bytes in the
	 *  input string that were successfully converted, or NULL.
	 *  Even if the conversion was successful, this may be
	 *  less than len if there were partial characters
	 *  at the end of the input.
	 * bytesWritten =  the number of bytes stored in the output buffer (not
	 *  including the terminating nul).
	 * error =  location to store the error occuring, or NULL to ignore
	 *  errors. Any of the errors in GConvertError may occur.
	 * Returns: If the conversion was successful, a newly allocated nul-terminated string, which must be freed with g_free(). Otherwise NULL and error will be set.
	 */
	public static char[] convertWithFallback(char[] str, int len, char[] toCodeset, char[] fromCodeset, char[] fallback, uint* bytesRead, uint* bytesWritten, GError** error)
	{
		// gchar* g_convert_with_fallback (const gchar *str,  gssize len,  const gchar *to_codeset,  const gchar *from_codeset,  gchar *fallback,  gsize *bytes_read,  gsize *bytes_written,  GError **error);
		return Str.toString(g_convert_with_fallback(Str.toStringz(str), len, Str.toStringz(toCodeset), Str.toStringz(fromCodeset), Str.toStringz(fallback), bytesRead, bytesWritten, error)).dup;
	}
	
	/**
	 * Converts a string which is in the encoding used for strings by
	 * the C runtime (usually the same as that used by the operating
	 * system) in the current locale into a
	 * UTF-8 string.
	 * Params:
	 * opsysstring =  a string in the encoding of the current locale. On Windows
	 *  this means the system codepage.
	 * len =  the length of the string, or -1 if the string is
	 *  nul-terminated[1].
	 * bytesRead =  location to store the number of bytes in the
	 *  input string that were successfully converted, or NULL.
	 *  Even if the conversion was successful, this may be
	 *  less than len if there were partial characters
	 *  at the end of the input. If the error
	 *  G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *  stored will the byte offset after the last valid
	 *  input sequence.
	 * bytesWritten =  the number of bytes stored in the output buffer (not
	 *  including the terminating nul).
	 * error =  location to store the error occuring, or NULL to ignore
	 *  errors. Any of the errors in GConvertError may occur.
	 * Returns: The converted string, or NULL on an error.
	 */
	public static char[] localeToUtf8(char[] opsysstring, int len, uint* bytesRead, uint* bytesWritten, GError** error)
	{
		// gchar* g_locale_to_utf8 (const gchar *opsysstring,  gssize len,  gsize *bytes_read,  gsize *bytes_written,  GError **error);
		return Str.toString(g_locale_to_utf8(Str.toStringz(opsysstring), len, bytesRead, bytesWritten, error)).dup;
	}
	
	/**
	 * Converts a string which is in the encoding used by GLib for
	 * filenames into a UTF-8 string. Note that on Windows GLib uses UTF-8
	 * for filenames; on other platforms, this function indirectly depends on
	 * the current locale.
	 * Params:
	 * opsysstring =  a string in the encoding for filenames
	 * len =  the length of the string, or -1 if the string is
	 *  nul-terminated[1].
	 * bytesRead =  location to store the number of bytes in the
	 *  input string that were successfully converted, or NULL.
	 *  Even if the conversion was successful, this may be
	 *  less than len if there were partial characters
	 *  at the end of the input. If the error
	 *  G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *  stored will the byte offset after the last valid
	 *  input sequence.
	 * bytesWritten =  the number of bytes stored in the output buffer (not
	 *  including the terminating nul).
	 * error =  location to store the error occuring, or NULL to ignore
	 *  errors. Any of the errors in GConvertError may occur.
	 * Returns: The converted string, or NULL on an error.
	 */
	public static char[] filenameToUtf8(char[] opsysstring, int len, uint* bytesRead, uint* bytesWritten, GError** error)
	{
		// gchar* g_filename_to_utf8 (const gchar *opsysstring,  gssize len,  gsize *bytes_read,  gsize *bytes_written,  GError **error);
		return Str.toString(g_filename_to_utf8(Str.toStringz(opsysstring), len, bytesRead, bytesWritten, error)).dup;
	}
	
	/**
	 * Converts a string from UTF-8 to the encoding GLib uses for
	 * filenames. Note that on Windows GLib uses UTF-8 for filenames;
	 * on other platforms, this function indirectly depends on the
	 * current locale.
	 * Params:
	 * utf8string =  a UTF-8 encoded string.
	 * len =  the length of the string, or -1 if the string is
	 *  nul-terminated.
	 * bytesRead =  location to store the number of bytes in the
	 *  input string that were successfully converted, or NULL.
	 *  Even if the conversion was successful, this may be
	 *  less than len if there were partial characters
	 *  at the end of the input. If the error
	 *  G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *  stored will the byte offset after the last valid
	 *  input sequence.
	 * bytesWritten =  the number of bytes stored in the output buffer (not
	 *  including the terminating nul).
	 * error =  location to store the error occuring, or NULL to ignore
	 *  errors. Any of the errors in GConvertError may occur.
	 * Returns: The converted string, or NULL on an error.
	 */
	public static char[] filenameFromUtf8(char[] utf8string, int len, uint* bytesRead, uint* bytesWritten, GError** error)
	{
		// gchar* g_filename_from_utf8 (const gchar *utf8string,  gssize len,  gsize *bytes_read,  gsize *bytes_written,  GError **error);
		return Str.toString(g_filename_from_utf8(Str.toStringz(utf8string), len, bytesRead, bytesWritten, error)).dup;
	}
	
	/**
	 * Converts an escaped ASCII-encoded URI to a local filename in the
	 * encoding used for filenames.
	 * Params:
	 * uri =  a uri describing a filename (escaped, encoded in ASCII).
	 * hostname =  Location to store hostname for the URI, or NULL.
	 *  If there is no hostname in the URI, NULL will be
	 *  stored in this location.
	 * error =  location to store the error occuring, or NULL to ignore
	 *  errors. Any of the errors in GConvertError may occur.
	 * Returns: a newly-allocated string holding the resulting filename, or NULL on an error.
	 */
	public static char[] filenameFromUri(char[] uri, char** hostname, GError** error)
	{
		// gchar* g_filename_from_uri (const gchar *uri,  gchar **hostname,  GError **error);
		return Str.toString(g_filename_from_uri(Str.toStringz(uri), hostname, error)).dup;
	}
	
	/**
	 * Converts an absolute filename to an escaped ASCII-encoded URI, with the path
	 * component following Section 3.3. of RFC 2396.
	 * Params:
	 * filename =  an absolute filename specified in the GLib file name encoding,
	 *  which is the on-disk file name bytes on Unix, and UTF-8 on
	 *  Windows
	 * hostname =  A UTF-8 encoded hostname, or NULL for none.
	 * error =  location to store the error occuring, or NULL to ignore
	 *  errors. Any of the errors in GConvertError may occur.
	 * Returns: a newly-allocated string holding the resulting URI, or NULL on an error.
	 */
	public static char[] filenameToUri(char[] filename, char[] hostname, GError** error)
	{
		// gchar* g_filename_to_uri (const gchar *filename,  const gchar *hostname,  GError **error);
		return Str.toString(g_filename_to_uri(Str.toStringz(filename), Str.toStringz(hostname), error)).dup;
	}
	
	/**
	 * Determines the preferred character sets used for filenames.
	 * The first character set from the charsets is the filename encoding, the
	 * subsequent character sets are used when trying to generate a displayable
	 * representation of a filename, see g_filename_display_name().
	 * On Unix, the character sets are determined by consulting the
	 * environment variables G_FILENAME_ENCODING and
	 * G_BROKEN_FILENAMES. On Windows, the character set
	 * used in the GLib API is always UTF-8 and said environment variables
	 * have no effect.
	 * G_FILENAME_ENCODING may be set to a comma-separated list
	 * of character set names. The special token "@locale" is taken to
	 * mean the character set for the current
	 * locale. If G_FILENAME_ENCODING is not set, but
	 * G_BROKEN_FILENAMES is, the character set of the current
	 * locale is taken as the filename encoding. If neither environment variable
	 * is set, UTF-8 is taken as the filename encoding, but the character
	 * set of the current locale is also put in the list of encodings.
	 * The returned charsets belong to GLib and must not be freed.
	 * Note that on Unix, regardless of the locale character set or
	 * G_FILENAME_ENCODING value, the actual file names present
	 * on a system might be in any random encoding or just gibberish.
	 * Since 2.6
	 * Params:
	 * charsets =  return location for the NULL-terminated list of encoding names
	 * Returns: TRUE if the filename encoding is UTF-8.
	 */
	public static int getFilenameCharsets(char*** charsets)
	{
		// gboolean g_get_filename_charsets (G_CONST_RETURN gchar ***charsets);
		return g_get_filename_charsets(charsets);
	}
	
	/**
	 * Converts a filename into a valid UTF-8 string. The conversion is
	 * not necessarily reversible, so you should keep the original around
	 * and use the return value of this function only for display purposes.
	 * Unlike g_filename_to_utf8(), the result is guaranteed to be non-NULL
	 * even if the filename actually isn't in the GLib file name encoding.
	 * If GLib can not make sense of the encoding of filename, as a last resort it
	 * replaces unknown characters with U+FFFD, the Unicode replacement character.
	 * You can search the result for the UTF-8 encoding of this character (which is
	 * "\357\277\275" in octal notation) to find out if filename was in an invalid
	 * encoding.
	 * If you know the whole pathname of the file you should use
	 * g_filename_display_basename(), since that allows location-based
	 * translation of filenames.
	 * Since 2.6
	 * Params:
	 * filename =  a pathname hopefully in the GLib file name encoding
	 * Returns: a newly allocated string containing a rendition of the filename in valid UTF-8
	 */
	public static char[] filenameDisplayName(char[] filename)
	{
		// gchar* g_filename_display_name (const gchar *filename);
		return Str.toString(g_filename_display_name(Str.toStringz(filename))).dup;
	}
	
	/**
	 * Returns the display basename for the particular filename, guaranteed
	 * to be valid UTF-8. The display name might not be identical to the filename,
	 * for instance there might be problems converting it to UTF-8, and some files
	 * can be translated in the display.
	 * If GLib can not make sense of the encoding of filename, as a last resort it
	 * replaces unknown characters with U+FFFD, the Unicode replacement character.
	 * You can search the result for the UTF-8 encoding of this character (which is
	 * "\357\277\275" in octal notation) to find out if filename was in an invalid
	 * encoding.
	 * You must pass the whole absolute pathname to this functions so that
	 * translation of well known locations can be done.
	 * This function is preferred over g_filename_display_name() if you know the
	 * whole path, as it allows translation.
	 * Since 2.6
	 * Params:
	 * filename =  an absolute pathname in the GLib file name encoding
	 * Returns: a newly allocated string containing a rendition of the basename of the filename in valid UTF-8
	 */
	public static char[] filenameDisplayBasename(char[] filename)
	{
		// gchar* g_filename_display_basename (const gchar *filename);
		return Str.toString(g_filename_display_basename(Str.toStringz(filename))).dup;
	}
	
	/**
	 * Splits an URI list conforming to the text/uri-list
	 * mime type defined in RFC 2483 into individual URIs,
	 * discarding any comments. The URIs are not validated.
	 * Since 2.6
	 * Params:
	 * uriList =  an URI list
	 * Returns: a newly allocated NULL-terminated list of strings holding the individual URIs. The array should be freed with g_strfreev().
	 */
	public static char** uriListExtractUris(char[] uriList)
	{
		// gchar** g_uri_list_extract_uris (const gchar *uri_list);
		return g_uri_list_extract_uris(Str.toStringz(uriList));
	}
	
	/**
	 * Converts a string from UTF-8 to the encoding used for strings by
	 * the C runtime (usually the same as that used by the operating
	 * system) in the current locale.
	 * Params:
	 * utf8string =  a UTF-8 encoded string
	 * len =  the length of the string, or -1 if the string is
	 *  nul-terminated[1].
	 * bytesRead =  location to store the number of bytes in the
	 *  input string that were successfully converted, or NULL.
	 *  Even if the conversion was successful, this may be
	 *  less than len if there were partial characters
	 *  at the end of the input. If the error
	 *  G_CONVERT_ERROR_ILLEGAL_SEQUENCE occurs, the value
	 *  stored will the byte offset after the last valid
	 *  input sequence.
	 * bytesWritten =  the number of bytes stored in the output buffer (not
	 *  including the terminating nul).
	 * error =  location to store the error occuring, or NULL to ignore
	 *  errors. Any of the errors in GConvertError may occur.
	 * Returns: The converted string, or NULL on an error.
	 */
	public static char[] localeFromUtf8(char[] utf8string, int len, uint* bytesRead, uint* bytesWritten, GError** error)
	{
		// gchar* g_locale_from_utf8 (const gchar *utf8string,  gssize len,  gsize *bytes_read,  gsize *bytes_written,  GError **error);
		return Str.toString(g_locale_from_utf8(Str.toStringz(utf8string), len, bytesRead, bytesWritten, error)).dup;
	}
	
	/**
	 * Obtains the character set for the current
	 * locale; you might use this character set as an argument to
	 * g_convert(), to convert from the current locale's encoding to some
	 * other encoding. (Frequently g_locale_to_utf8() and g_locale_from_utf8()
	 * are nice shortcuts, though.)
	 * The return value is TRUE if the locale's encoding is UTF-8, in that
	 * case you can perhaps avoid calling g_convert().
	 * The string returned in charset is not allocated, and should not be
	 * freed.
	 * Params:
	 * charset =  return location for character set name
	 * Returns: TRUE if the returned charset is UTF-8
	 */
	public static int getCharset(char** charset)
	{
		// gboolean g_get_charset (G_CONST_RETURN char **charset);
		return g_get_charset(charset);
	}
}
