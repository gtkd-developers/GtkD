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


module glib.URI;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gtkc.glib;
public  import gtkc.glibtypes;


/** */
public struct URI
{

	/**
	 * Converts an escaped ASCII-encoded URI to a local filename in the
	 * encoding used for filenames.
	 *
	 * Params:
	 *     uri = a uri describing a filename (escaped, encoded in ASCII).
	 *     hostname = Location to store hostname for the
	 *         URI.
	 *         If there is no hostname in the URI, %NULL will be
	 *         stored in this location.
	 *
	 * Return: a newly-allocated string holding
	 *     the resulting filename, or %NULL on an error.
	 *
	 * Throws: GException on failure.
	 */
	public static string filenameFromUri(string uri, out string hostname)
	{
		char* outhostname = null;
		GError* err = null;
		
		auto retStr = g_filename_from_uri(Str.toStringz(uri), &outhostname, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		hostname = Str.toString(outhostname);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts an absolute filename to an escaped ASCII-encoded URI, with the path
	 * component following Section 3.3. of RFC 2396.
	 *
	 * Params:
	 *     filename = an absolute filename specified in the GLib file name encoding,
	 *         which is the on-disk file name bytes on Unix, and UTF-8 on
	 *         Windows
	 *     hostname = A UTF-8 encoded hostname, or %NULL for none.
	 *
	 * Return: a newly-allocated string holding the resulting
	 *     URI, or %NULL on an error.
	 *
	 * Throws: GException on failure.
	 */
	public static string filenameToUri(string filename, string hostname)
	{
		GError* err = null;
		
		auto retStr = g_filename_to_uri(Str.toStringz(filename), Str.toStringz(hostname), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Escapes a string for use in a URI.
	 *
	 * Normally all characters that are not "unreserved" (i.e. ASCII alphanumerical
	 * characters plus dash, dot, underscore and tilde) are escaped.
	 * But if you specify characters in @reserved_chars_allowed they are not
	 * escaped. This is useful for the "reserved" characters in the URI
	 * specification, since those are allowed unescaped in some portions of
	 * a URI.
	 *
	 * Params:
	 *     unescaped = the unescaped input string.
	 *     reservedCharsAllowed = a string of reserved characters that
	 *         are allowed to be used, or %NULL.
	 *     allowUtf8 = %TRUE if the result can include UTF-8 characters.
	 *
	 * Return: an escaped version of @unescaped. The returned string should be
	 *     freed when no longer needed.
	 *
	 * Since: 2.16
	 */
	public static string uriEscapeString(string unescaped, string reservedCharsAllowed, bool allowUtf8)
	{
		auto retStr = g_uri_escape_string(Str.toStringz(unescaped), Str.toStringz(reservedCharsAllowed), allowUtf8);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Splits an URI list conforming to the text/uri-list
	 * mime type defined in RFC 2483 into individual URIs,
	 * discarding any comments. The URIs are not validated.
	 *
	 * Params:
	 *     uriList = an URI list
	 *
	 * Return: a newly allocated %NULL-terminated list
	 *     of strings holding the individual URIs. The array should be freed
	 *     with g_strfreev().
	 *
	 * Since: 2.6
	 */
	public static string[] uriListExtractUris(string uriList)
	{
		auto retStr = g_uri_list_extract_uris(Str.toStringz(uriList));
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Gets the scheme portion of a URI string. RFC 3986 decodes the scheme as:
	 * |[
	 * URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
	 * ]|
	 * Common schemes include "file", "http", "svn+ssh", etc.
	 *
	 * Params:
	 *     uri = a valid URI.
	 *
	 * Return: The "Scheme" component of the URI, or %NULL on error.
	 *     The returned string should be freed when no longer needed.
	 *
	 * Since: 2.16
	 */
	public static string uriParseScheme(string uri)
	{
		auto retStr = g_uri_parse_scheme(Str.toStringz(uri));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Unescapes a segment of an escaped string.
	 *
	 * If any of the characters in @illegal_characters or the character zero appears
	 * as an escaped character in @escaped_string then that is an error and %NULL
	 * will be returned. This is useful it you want to avoid for instance having a
	 * slash being expanded in an escaped path element, which might confuse pathname
	 * handling.
	 *
	 * Params:
	 *     escapedString = A string, may be %NULL
	 *     escapedStringEnd = Pointer to end of @escaped_string, may be %NULL
	 *     illegalCharacters = An optional string of illegal characters not to be allowed, may be %NULL
	 *
	 * Return: an unescaped version of @escaped_string or %NULL on error.
	 *     The returned string should be freed when no longer needed.  As a
	 *     special case if %NULL is given for @escaped_string, this function
	 *     will return %NULL.
	 *
	 * Since: 2.16
	 */
	public static string uriUnescapeSegment(string escapedString, string escapedStringEnd, string illegalCharacters)
	{
		auto retStr = g_uri_unescape_segment(Str.toStringz(escapedString), Str.toStringz(escapedStringEnd), Str.toStringz(illegalCharacters));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Unescapes a whole escaped string.
	 *
	 * If any of the characters in @illegal_characters or the character zero appears
	 * as an escaped character in @escaped_string then that is an error and %NULL
	 * will be returned. This is useful it you want to avoid for instance having a
	 * slash being expanded in an escaped path element, which might confuse pathname
	 * handling.
	 *
	 * Params:
	 *     escapedString = an escaped string to be unescaped.
	 *     illegalCharacters = a string of illegal characters not to be
	 *         allowed, or %NULL.
	 *
	 * Return: an unescaped version of @escaped_string. The returned string
	 *     should be freed when no longer needed.
	 *
	 * Since: 2.16
	 */
	public static string uriUnescapeString(string escapedString, string illegalCharacters)
	{
		auto retStr = g_uri_unescape_string(Str.toStringz(escapedString), Str.toStringz(illegalCharacters));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
