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


module glib.Uuid;

private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct Uuid
{

	/**
	 * Parses the string @str and verify if it is a UUID.
	 *
	 * The function accepts the following syntax:
	 *
	 * - simple forms (e.g. `f81d4fae-7dec-11d0-a765-00a0c91e6bf6`)
	 *
	 * Note that hyphens are required within the UUID string itself,
	 * as per the aforementioned RFC.
	 *
	 * Params:
	 *     str = a string representing a UUID
	 *
	 * Returns: %TRUE if @str is a valid UUID, %FALSE otherwise.
	 *
	 * Since: 2.52
	 */
	public static bool stringIsValid(string str)
	{
		return g_uuid_string_is_valid(Str.toStringz(str)) != 0;
	}

	/**
	 * Generates a random UUID (RFC 4122 version 4) as a string. It has the same
	 * randomness guarantees as #GRand, so must not be used for cryptographic
	 * purposes such as key generation, nonces, salts or one-time pads.
	 *
	 * Returns: A string that should be freed with g_free().
	 *
	 * Since: 2.52
	 */
	public static string stringRandom()
	{
		auto retStr = g_uuid_string_random();

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
