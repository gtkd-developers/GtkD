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


module glib.Hostname;

private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct Hostname
{

	/**
	 * Tests if @hostname contains segments with an ASCII-compatible
	 * encoding of an Internationalized Domain Name. If this returns
	 * %TRUE, you should decode the hostname with g_hostname_to_unicode()
	 * before displaying it to the user.
	 *
	 * Note that a hostname might contain a mix of encoded and unencoded
	 * segments, and so it is possible for g_hostname_is_non_ascii() and
	 * g_hostname_is_ascii_encoded() to both return %TRUE for a name.
	 *
	 * Params:
	 *     hostname = a hostname
	 *
	 * Returns: %TRUE if @hostname contains any ASCII-encoded
	 *     segments.
	 *
	 * Since: 2.22
	 */
	public static bool isAsciiEncoded(string hostname)
	{
		return g_hostname_is_ascii_encoded(Str.toStringz(hostname)) != 0;
	}

	/**
	 * Tests if @hostname is the string form of an IPv4 or IPv6 address.
	 * (Eg, "192.168.0.1".)
	 *
	 * Since 2.66, IPv6 addresses with a zone-id are accepted (RFC6874).
	 *
	 * Params:
	 *     hostname = a hostname (or IP address in string form)
	 *
	 * Returns: %TRUE if @hostname is an IP address
	 *
	 * Since: 2.22
	 */
	public static bool isIpAddress(string hostname)
	{
		return g_hostname_is_ip_address(Str.toStringz(hostname)) != 0;
	}

	/**
	 * Tests if @hostname contains Unicode characters. If this returns
	 * %TRUE, you need to encode the hostname with g_hostname_to_ascii()
	 * before using it in non-IDN-aware contexts.
	 *
	 * Note that a hostname might contain a mix of encoded and unencoded
	 * segments, and so it is possible for g_hostname_is_non_ascii() and
	 * g_hostname_is_ascii_encoded() to both return %TRUE for a name.
	 *
	 * Params:
	 *     hostname = a hostname
	 *
	 * Returns: %TRUE if @hostname contains any non-ASCII characters
	 *
	 * Since: 2.22
	 */
	public static bool isNonAscii(string hostname)
	{
		return g_hostname_is_non_ascii(Str.toStringz(hostname)) != 0;
	}

	/**
	 * Converts @hostname to its canonical ASCII form; an ASCII-only
	 * string containing no uppercase letters and not ending with a
	 * trailing dot.
	 *
	 * Params:
	 *     hostname = a valid UTF-8 or ASCII hostname
	 *
	 * Returns: an ASCII hostname, which must be freed,
	 *     or %NULL if @hostname is in some way invalid.
	 *
	 * Since: 2.22
	 */
	public static string toAscii(string hostname)
	{
		auto retStr = g_hostname_to_ascii(Str.toStringz(hostname));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts @hostname to its canonical presentation form; a UTF-8
	 * string in Unicode normalization form C, containing no uppercase
	 * letters, no forbidden characters, and no ASCII-encoded segments,
	 * and not ending with a trailing dot.
	 *
	 * Of course if @hostname is not an internationalized hostname, then
	 * the canonical presentation form will be entirely ASCII.
	 *
	 * Params:
	 *     hostname = a valid UTF-8 or ASCII hostname
	 *
	 * Returns: a UTF-8 hostname, which must be freed,
	 *     or %NULL if @hostname is in some way invalid.
	 *
	 * Since: 2.22
	 */
	public static string toUnicode(string hostname)
	{
		auto retStr = g_hostname_to_unicode(Str.toStringz(hostname));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
