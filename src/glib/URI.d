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




/**
 * Description
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
	 * uri =  a valid URI.
	 * Returns: The "Scheme" component of the URI, or NULL on error. The returned string should be freed when no longer needed.
	 */
	public static string parseScheme(string uri)
	{
		// char* g_uri_parse_scheme (const char *uri);
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
	 * unescaped =  the unescaped input string.
	 * reservedCharsAllowed =  a string of reserved characters that are
	 *  allowed to be used.
	 * allowUtf8 =  TRUE if the result can include UTF-8 characters.
	 * Returns: an escaped version of unescaped. The returned string should be freed when no longer needed.
	 */
	public static string escapeString(string unescaped, string reservedCharsAllowed, int allowUtf8)
	{
		// char* g_uri_escape_string (const char *unescaped,  const char *reserved_chars_allowed,  gboolean allow_utf8);
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
	 * escapedString =  an escaped string to be unescaped.
	 * illegalCharacters =  an optional string of illegal characters not to be allowed.
	 * Returns: an unescaped version of escaped_string. The returned string should be freed when no longer needed.
	 */
	public static string unescapeString(string escapedString, string illegalCharacters)
	{
		// char* g_uri_unescape_string (const char *escaped_string,  const char *illegal_characters);
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
	 * escapedString =  a string.
	 * escapedStringEnd =  a string.
	 * illegalCharacters =  an optional string of illegal characters not to be allowed.
	 * Returns: an unescaped version of escaped_string or NULL on error.The returned string should be freed when no longer needed.
	 */
	public static string unescapeSegment(string escapedString, string escapedStringEnd, string illegalCharacters)
	{
		// char* g_uri_unescape_segment (const char *escaped_string,  const char *escaped_string_end,  const char *illegal_characters);
		return Str.toString(g_uri_unescape_segment(Str.toStringz(escapedString), Str.toStringz(escapedStringEnd), Str.toStringz(illegalCharacters)));
	}
}
