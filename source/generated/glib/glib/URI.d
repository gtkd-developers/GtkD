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
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct URI
{

	/**
	 * Converts an escaped ASCII-encoded URI to a local filename in the
	 * encoding used for filenames.
	 *
	 * Params:
	 *     uri = a uri describing a filename (escaped, encoded in ASCII).
	 *     hostname = Location to store hostname for the URI.
	 *         If there is no hostname in the URI, %NULL will be
	 *         stored in this location.
	 *
	 * Returns: a newly-allocated string holding
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
	 *     filename = an absolute filename specified in the GLib file
	 *         name encoding, which is the on-disk file name bytes on Unix, and UTF-8
	 *         on Windows
	 *     hostname = A UTF-8 encoded hostname, or %NULL for none.
	 *
	 * Returns: a newly-allocated string holding the resulting
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
}
