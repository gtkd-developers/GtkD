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


module gio.ContentType;

private import gio.FileIF;
private import gio.IconIF;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/** */
public struct ContentType
{

	/**
	 * Checks if a content type can be executable. Note that for instance
	 * things like text files can be executables (i.e. scripts and batch files).
	 *
	 * Params:
	 *     type = a content type string
	 *
	 * Returns: %TRUE if the file type corresponds to a type that
	 *     can be executable, %FALSE otherwise.
	 */
	public static bool canBeExecutable(string type)
	{
		return g_content_type_can_be_executable(Str.toStringz(type)) != 0;
	}

	/**
	 * Compares two content types for equality.
	 *
	 * Params:
	 *     type1 = a content type string
	 *     type2 = a content type string
	 *
	 * Returns: %TRUE if the two strings are identical or equivalent,
	 *     %FALSE otherwise.
	 */
	public static bool equals(string type1, string type2)
	{
		return g_content_type_equals(Str.toStringz(type1), Str.toStringz(type2)) != 0;
	}

	/**
	 * Tries to find a content type based on the mime type name.
	 *
	 * Params:
	 *     mimeType = a mime type string
	 *
	 * Returns: Newly allocated string with content type or
	 *     %NULL. Free with g_free()
	 *
	 * Since: 2.18
	 */
	public static string fromMimeType(string mimeType)
	{
		auto retStr = g_content_type_from_mime_type(Str.toStringz(mimeType));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the human readable description of the content type.
	 *
	 * Params:
	 *     type = a content type string
	 *
	 * Returns: a short description of the content type @type. Free the
	 *     returned string with g_free()
	 */
	public static string getDescription(string type)
	{
		auto retStr = g_content_type_get_description(Str.toStringz(type));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the generic icon name for a content type.
	 *
	 * See the
	 * [shared-mime-info](http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec)
	 * specification for more on the generic icon name.
	 *
	 * Params:
	 *     type = a content type string
	 *
	 * Returns: the registered generic icon name for the given @type,
	 *     or %NULL if unknown. Free with g_free()
	 *
	 * Since: 2.34
	 */
	public static string getGenericIconName(string type)
	{
		auto retStr = g_content_type_get_generic_icon_name(Str.toStringz(type));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the icon for a content type.
	 *
	 * Params:
	 *     type = a content type string
	 *
	 * Returns: #GIcon corresponding to the content type. Free the returned
	 *     object with g_object_unref()
	 */
	public static IconIF getIcon(string type)
	{
		auto __p = g_content_type_get_icon(Str.toStringz(type));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p, true);
	}

	/**
	 * Gets the mime type for the content type, if one is registered.
	 *
	 * Params:
	 *     type = a content type string
	 *
	 * Returns: the registered mime type for the
	 *     given @type, or %NULL if unknown; free with g_free().
	 */
	public static string getMimeType(string type)
	{
		auto retStr = g_content_type_get_mime_type(Str.toStringz(type));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the symbolic icon for a content type.
	 *
	 * Params:
	 *     type = a content type string
	 *
	 * Returns: symbolic #GIcon corresponding to the content type.
	 *     Free the returned object with g_object_unref()
	 *
	 * Since: 2.34
	 */
	public static IconIF getSymbolicIcon(string type)
	{
		auto __p = g_content_type_get_symbolic_icon(Str.toStringz(type));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IconIF)(cast(GIcon*) __p, true);
	}

	/**
	 * Guesses the content type based on example data. If the function is
	 * uncertain, @result_uncertain will be set to %TRUE. Either @filename
	 * or @data may be %NULL, in which case the guess will be based solely
	 * on the other argument.
	 *
	 * Params:
	 *     filename = a path, or %NULL
	 *     data = a stream of data, or %NULL
	 *     resultUncertain = return location for the certainty
	 *         of the result, or %NULL
	 *
	 * Returns: a string indicating a guessed content type for the
	 *     given data. Free with g_free()
	 */
	public static string typeGuess(string filename, char[] data, out bool resultUncertain)
	{
		int outresultUncertain;

		auto retStr = g_content_type_guess(Str.toStringz(filename), data.ptr, cast(size_t)data.length, &outresultUncertain);

		resultUncertain = (outresultUncertain == 1);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Tries to guess the type of the tree with root @root, by
	 * looking at the files it contains. The result is an array
	 * of content types, with the best guess coming first.
	 *
	 * The types returned all have the form x-content/foo, e.g.
	 * x-content/audio-cdda (for audio CDs) or x-content/image-dcf
	 * (for a camera memory card). See the
	 * [shared-mime-info](http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec)
	 * specification for more on x-content types.
	 *
	 * This function is useful in the implementation of
	 * g_mount_guess_content_type().
	 *
	 * Params:
	 *     root = the root of the tree to guess a type for
	 *
	 * Returns: an %NULL-terminated
	 *     array of zero or more content types. Free with g_strfreev()
	 *
	 * Since: 2.18
	 */
	public static string[] guessForTree(FileIF root)
	{
		auto retStr = g_content_type_guess_for_tree((root is null) ? null : root.getFileStruct());

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Determines if @type is a subset of @supertype.
	 *
	 * Params:
	 *     type = a content type string
	 *     supertype = a content type string
	 *
	 * Returns: %TRUE if @type is a kind of @supertype,
	 *     %FALSE otherwise.
	 */
	public static bool isA(string type, string supertype)
	{
		return g_content_type_is_a(Str.toStringz(type), Str.toStringz(supertype)) != 0;
	}

	/**
	 * Checks if the content type is the generic "unknown" type.
	 * On UNIX this is the "application/octet-stream" mimetype,
	 * while on win32 it is "*" and on OSX it is a dynamic type
	 * or octet-stream.
	 *
	 * Params:
	 *     type = a content type string
	 *
	 * Returns: %TRUE if the type is the unknown type.
	 */
	public static bool isUnknown(string type)
	{
		return g_content_type_is_unknown(Str.toStringz(type)) != 0;
	}

	/**
	 * Gets a list of strings containing all the registered content types
	 * known to the system. The list and its data should be freed using
	 * `g_list_free_full (list, g_free)`.
	 *
	 * Returns: list of the registered
	 *     content types
	 */
	public static ListG contentTypesGetRegistered()
	{
		auto __p = g_content_types_get_registered();

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Determines if @type is a subset of @mime_type.
	 * Convenience wrapper around g_content_type_is_a().
	 *
	 * Params:
	 *     type = a content type string
	 *     mimeType = a mime type string
	 *
	 * Returns: %TRUE if @type is a kind of @mime_type,
	 *     %FALSE otherwise.
	 *
	 * Since: 2.52
	 */
	public static bool isMimeType(string type, string mimeType)
	{
		return g_content_type_is_mime_type(Str.toStringz(type), Str.toStringz(mimeType)) != 0;
	}

	/**
	 * Get the list of directories which MIME data is loaded from. See
	 * g_content_type_set_mime_dirs() for details.
	 *
	 * Returns: %NULL-terminated list of
	 *     directories to load MIME data from, including any `mime/` subdirectory,
	 *     and with the first directory to try listed first
	 *
	 * Since: 2.60
	 */
	public static string[] getMimeDirs()
	{
		return Str.toStringArray(g_content_type_get_mime_dirs());
	}

	/**
	 * Set the list of directories used by GIO to load the MIME database.
	 * If @dirs is %NULL, the directories used are the default:
	 *
	 * - the `mime` subdirectory of the directory in `$XDG_DATA_HOME`
	 * - the `mime` subdirectory of every directory in `$XDG_DATA_DIRS`
	 *
	 * This function is intended to be used when writing tests that depend on
	 * information stored in the MIME database, in order to control the data.
	 *
	 * Typically, in case your tests use %G_TEST_OPTION_ISOLATE_DIRS, but they
	 * depend on the system’s MIME database, you should call this function
	 * with @dirs set to %NULL before calling g_test_init(), for instance:
	 *
	 * |[<!-- language="C" -->
	 * // Load MIME data from the system
	 * g_content_type_set_mime_dirs (NULL);
	 * // Isolate the environment
	 * g_test_init (&argc, &argv, G_TEST_OPTION_ISOLATE_DIRS, NULL);
	 *
	 * …
	 *
	 * return g_test_run ();
	 * ]|
	 *
	 * Params:
	 *     dirs = %NULL-terminated list of
	 *         directories to load MIME data from, including any `mime/` subdirectory,
	 *         and with the first directory to try listed first
	 *
	 * Since: 2.60
	 */
	public static void setMimeDirs(string[] dirs)
	{
		g_content_type_set_mime_dirs(Str.toStringzArray(dirs));
	}
}
