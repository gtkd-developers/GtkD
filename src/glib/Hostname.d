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
 * inFile  = glib-Hostname-Utilities.html
 * outPack = glib
 * outFile = Hostname
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Hostname
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_hostname_
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

module glib.Hostname;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * Functions for manipulating internet hostnames; in particular, for
 * converting between Unicode and ASCII-encoded forms of
 * Internationalized Domain Names (IDNs).
 *
 * The Internationalized Domain
 * Names for Applications (IDNA) standards allow for the use
 * of Unicode domain names in applications, while providing
 * backward-compatibility with the old ASCII-only DNS, by defining an
 * ASCII-Compatible Encoding of any given Unicode name, which can be
 * used with non-IDN-aware applications and protocols. (For example,
 * "Παν語.org" maps to "xn--4wa8awb4637h.org".)
 */
public class Hostname
{
	
	/**
	 */
	
	/**
	 * Converts hostname to its canonical ASCII form; an ASCII-only
	 * string containing no uppercase letters and not ending with a
	 * trailing dot.
	 * Since 2.22
	 * Params:
	 * hostname = a valid UTF-8 or ASCII hostname
	 * Returns: an ASCII hostname, which must be freed, or NULL if hostname is in some way invalid.
	 */
	public static string toAscii(string hostname)
	{
		// gchar * g_hostname_to_ascii (const gchar *hostname);
		return Str.toString(g_hostname_to_ascii(Str.toStringz(hostname)));
	}
	
	/**
	 * Converts hostname to its canonical presentation form; a UTF-8
	 * string in Unicode normalization form C, containing no uppercase
	 * letters, no forbidden characters, and no ASCII-encoded segments,
	 * and not ending with a trailing dot.
	 * Of course if hostname is not an internationalized hostname, then
	 * the canonical presentation form will be entirely ASCII.
	 * Since 2.22
	 * Params:
	 * hostname = a valid UTF-8 or ASCII hostname
	 * Returns: a UTF-8 hostname, which must be freed, or NULL if hostname is in some way invalid.
	 */
	public static string toUnicode(string hostname)
	{
		// gchar * g_hostname_to_unicode (const gchar *hostname);
		return Str.toString(g_hostname_to_unicode(Str.toStringz(hostname)));
	}
	
	/**
	 * Tests if hostname contains Unicode characters. If this returns
	 * TRUE, you need to encode the hostname with g_hostname_to_ascii()
	 * before using it in non-IDN-aware contexts.
	 * Note that a hostname might contain a mix of encoded and unencoded
	 * segments, and so it is possible for g_hostname_is_non_ascii() and
	 * g_hostname_is_ascii_encoded() to both return TRUE for a name.
	 * Since 2.22
	 * Params:
	 * hostname = a hostname
	 * Returns: TRUE if hostname contains any non-ASCII characters
	 */
	public static int isNonAscii(string hostname)
	{
		// gboolean g_hostname_is_non_ascii (const gchar *hostname);
		return g_hostname_is_non_ascii(Str.toStringz(hostname));
	}
	
	/**
	 * Tests if hostname contains segments with an ASCII-compatible
	 * encoding of an Internationalized Domain Name. If this returns
	 * TRUE, you should decode the hostname with g_hostname_to_unicode()
	 * before displaying it to the user.
	 * Note that a hostname might contain a mix of encoded and unencoded
	 * segments, and so it is possible for g_hostname_is_non_ascii() and
	 * g_hostname_is_ascii_encoded() to both return TRUE for a name.
	 * Since 2.22
	 * Params:
	 * hostname = a hostname
	 * Returns: TRUE if hostname contains any ASCII-encoded segments.
	 */
	public static int isAsciiEncoded(string hostname)
	{
		// gboolean g_hostname_is_ascii_encoded (const gchar *hostname);
		return g_hostname_is_ascii_encoded(Str.toStringz(hostname));
	}
	
	/**
	 * Tests if hostname is the string form of an IPv4 or IPv6 address.
	 * (Eg, "192.168.0.1".)
	 * Since 2.22
	 * Params:
	 * hostname = a hostname (or IP address in string form)
	 * Returns: TRUE if hostname is an IP address
	 */
	public static int isIpAddress(string hostname)
	{
		// gboolean g_hostname_is_ip_address (const gchar *hostname);
		return g_hostname_is_ip_address(Str.toStringz(hostname));
	}
}
