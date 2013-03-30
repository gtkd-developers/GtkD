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
 * inFile  = glib-URI-Functions.html
 * outPack = glib
 * outFile = URI
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = URI
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_uri_
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

module glib.URI;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;




/**
 * Functions for manipulating Universal Resource Identifiers (URIs) as
 * defined by
 * RFC 3986. It is highly recommended that you have read and
 * understand RFC 3986 for understanding this API.
 */
public class URI
{
	
	/**
	 */
	
	/**
	 * Since 2.16
	 * Params:
	 * uri = a valid URI.
	 * Returns: The "Scheme" component of the URI, or NULL on error. The returned string should be freed when no longer needed.
	 */
	public static string parseScheme(string uri)
	{
		// char * g_uri_parse_scheme (const char *uri);
		return Str.toString(g_uri_parse_scheme(Str.toStringz(uri)));
	}
	
	/**
	 * Escapes a string for use in a URI.
	 * Normally all characters that are not "unreserved" (i.e. ASCII alphanumerical
	 * characters plus dash, dot, underscore and tilde) are escaped.
	 * But if you specify characters in reserved_chars_allowed they are not
	 * escaped. This is useful for the "reserved" characters in the URI
	 * specification, since those are allowed unescaped in some portions of
	 * a URI.
	 * Since 2.16
	 * Params:
	 * unescaped = the unescaped input string.
	 * reservedCharsAllowed = a string of reserved characters that are
	 * allowed to be used, or NULL.
	 * allowUtf8 = TRUE if the result can include UTF-8 characters.
	 * Returns: an escaped version of unescaped. The returned string should be freed when no longer needed.
	 */
	public static string escapeString(string unescaped, string reservedCharsAllowed, int allowUtf8)
	{
		// char * g_uri_escape_string (const char *unescaped,  const char *reserved_chars_allowed,  gboolean allow_utf8);
		return Str.toString(g_uri_escape_string(Str.toStringz(unescaped), Str.toStringz(reservedCharsAllowed), allowUtf8));
	}
	
	/**
	 * Unescapes a whole escaped string.
	 * If any of the characters in illegal_characters or the character zero appears
	 * as an escaped character in escaped_string then that is an error and NULL
	 * will be returned. This is useful it you want to avoid for instance having a
	 * slash being expanded in an escaped path element, which might confuse pathname
	 * handling.
	 * Since 2.16
	 * Params:
	 * escapedString = an escaped string to be unescaped.
	 * illegalCharacters = an optional string of illegal characters not to be allowed.
	 * Returns: an unescaped version of escaped_string. The returned string should be freed when no longer needed.
	 */
	public static string unescapeString(string escapedString, string illegalCharacters)
	{
		// char * g_uri_unescape_string (const char *escaped_string,  const char *illegal_characters);
		return Str.toString(g_uri_unescape_string(Str.toStringz(escapedString), Str.toStringz(illegalCharacters)));
	}
	
	/**
	 * Unescapes a segment of an escaped string.
	 * If any of the characters in illegal_characters or the character zero appears
	 * as an escaped character in escaped_string then that is an error and NULL
	 * will be returned. This is useful it you want to avoid for instance having a
	 * slash being expanded in an escaped path element, which might confuse pathname
	 * handling.
	 * Since 2.16
	 * Params:
	 * escapedString = A string, may be NULL. [allow-none]
	 * escapedStringEnd = Pointer to end of escaped_string, may be NULL. [allow-none]
	 * illegalCharacters = An optional string of illegal characters not to be allowed, may be NULL. [allow-none]
	 * Returns: an unescaped version of escaped_string or NULL on error. The returned string should be freed when no longer needed. As a special case if NULL is given for escaped_string, this function will return NULL.
	 */
	public static string unescapeSegment(string escapedString, string escapedStringEnd, string illegalCharacters)
	{
		// char * g_uri_unescape_segment (const char *escaped_string,  const char *escaped_string_end,  const char *illegal_characters);
		return Str.toString(g_uri_unescape_segment(Str.toStringz(escapedString), Str.toStringz(escapedStringEnd), Str.toStringz(illegalCharacters)));
	}
	
	/**
	 * Splits an URI list conforming to the text/uri-list
	 * mime type defined in RFC 2483 into individual URIs,
	 * discarding any comments. The URIs are not validated.
	 * Since 2.6
	 * Params:
	 * uriList = an URI list
	 * Returns: a newly allocated NULL-terminated list of strings holding the individual URIs. The array should be freed with g_strfreev(). [transfer full]
	 */
	public static string[] listExtractUris(string uriList)
	{
		// gchar ** g_uri_list_extract_uris (const gchar *uri_list);
		return Str.toStringArray(g_uri_list_extract_uris(Str.toStringz(uriList)));
	}
	
	/**
	 * Converts an escaped ASCII-encoded URI to a local filename in the
	 * encoding used for filenames.
	 * Params:
	 * uri = a uri describing a filename (escaped, encoded in ASCII).
	 * hostname = Location to store hostname for the URI, or NULL.
	 * If there is no hostname in the URI, NULL will be
	 * stored in this location. [out][allow-none]
	 * Returns: a newly-allocated string holding the resulting filename, or NULL on an error. [type filename]
	 * Throws: GException on failure.
	 */
	public static string gFilenameFromUri(string uri, out string hostname)
	{
		// gchar * g_filename_from_uri (const gchar *uri,  gchar **hostname,  GError **error);
		char* outhostname = null;
		GError* err = null;
		
		auto p = g_filename_from_uri(Str.toStringz(uri), &outhostname, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		hostname = Str.toString(outhostname);
		return Str.toString(p);
	}
	
	/**
	 * Converts an absolute filename to an escaped ASCII-encoded URI, with the path
	 * component following Section 3.3. of RFC 2396.
	 * Params:
	 * filename = an absolute filename specified in the GLib file name encoding,
	 * which is the on-disk file name bytes on Unix, and UTF-8 on
	 * Windows
	 * hostname = A UTF-8 encoded hostname, or NULL for none. [allow-none]
	 * Returns: a newly-allocated string holding the resulting URI, or NULL on an error.
	 * Throws: GException on failure.
	 */
	public static string gFilenameToUri(string filename, string hostname)
	{
		// gchar * g_filename_to_uri (const gchar *filename,  const gchar *hostname,  GError **error);
		GError* err = null;
		
		auto p = g_filename_to_uri(Str.toStringz(filename), Str.toStringz(hostname), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
}
