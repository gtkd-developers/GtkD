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


module gdk.Atom;

private import gdk.Display;
private import gdk.Window;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.Str;
public  import gtkc.gdktypes;


/**
 * An opaque type representing a string as an index into a table
 * of strings on the X server.
 */

/**
 * Determines the string corresponding to an atom.
 *
 * Returns: a newly-allocated string containing the string
 *     corresponding to @atom. When you are done with the
 *     return value, you should free it using g_free().
 */
public string name(GdkAtom atom)
{
	auto retStr = gdk_atom_name(atom);

	scope(exit) Str.freeString(retStr);
	return Str.toString(retStr);
}

/**
 * Finds or creates an atom corresponding to a given string.
 *
 * Params:
 *     atomName = a string.
 *     onlyIfExists = if %TRUE, GDK is allowed to not create a new atom, but
 *         just return %GDK_NONE if the requested atom doesn’t already
 *         exists. Currently, the flag is ignored, since checking the
 *         existance of an atom is as expensive as creating it.
 *
 * Returns: the atom corresponding to @atom_name.
 */
public GdkAtom intern(string atomName, bool onlyIfExists)
{
	return gdk_atom_intern(Str.toStringz(atomName), onlyIfExists);
}

/**
 * Finds or creates an atom corresponding to a given string.
 *
 * Note that this function is identical to gdk_atom_intern() except
 * that if a new #GdkAtom is created the string itself is used rather
 * than a copy. This saves memory, but can only be used if the string
 * will always exist. It can be used with statically
 * allocated strings in the main program, but not with statically
 * allocated memory in dynamically loaded modules, if you expect to
 * ever unload the module again (e.g. do not use this function in
 * GTK+ theme engines).
 *
 * Params:
 *     atomName = a static string
 *
 * Returns: the atom corresponding to @atom_name
 *
 * Since: 2.10
 */
public GdkAtom internStaticString(string atomName)
{
	return gdk_atom_intern_static_string(Str.toStringz(atomName));
}

/**
 * Changes the contents of a property on a window.
 *
 * Params:
 *     window = a #GdkWindow
 *     property = the property to change
 *     type = the new type for the property. If @mode is
 *         %GDK_PROP_MODE_PREPEND or %GDK_PROP_MODE_APPEND, then this
 *         must match the existing type or an error will occur.
 *     format = the new format for the property. If @mode is
 *         %GDK_PROP_MODE_PREPEND or %GDK_PROP_MODE_APPEND, then this
 *         must match the existing format or an error will occur.
 *     mode = a value describing how the new data is to be combined
 *         with the current data.
 *     data = the data (a `guchar *`
 *         `gushort *`, or `gulong *`,
 *         depending on @format), cast to a `guchar *`.
 */
public void propertyChange(Window window, GdkAtom property, GdkAtom type, int format, GdkPropMode mode, char[] data)
{
	gdk_property_change((window is null) ? null : window.getWindowStruct(), property, type, format, mode, data.ptr, cast(int)data.length);
}

/**
 * Deletes a property from a window.
 *
 * Params:
 *     window = a #GdkWindow
 *     property = the property to delete
 */
public void propertyDelete(Window window, GdkAtom property)
{
	gdk_property_delete((window is null) ? null : window.getWindowStruct(), property);
}

/**
 * Retrieves a portion of the contents of a property. If the
 * property does not exist, then the function returns %FALSE,
 * and %GDK_NONE will be stored in @actual_property_type.
 *
 * The XGetWindowProperty() function that gdk_property_get()
 * uses has a very confusing and complicated set of semantics.
 * Unfortunately, gdk_property_get() makes the situation
 * worse instead of better (the semantics should be considered
 * undefined), and also prints warnings to stderr in cases where it
 * should return a useful error to the program. You are advised to use
 * XGetWindowProperty() directly until a replacement function for
 * gdk_property_get() is provided.
 *
 * Params:
 *     window = a #GdkWindow
 *     property = the property to retrieve
 *     type = the desired property type, or %GDK_NONE, if any type of data
 *         is acceptable. If this does not match the actual
 *         type, then @actual_format and @actual_length will
 *         be filled in, a warning will be printed to stderr
 *         and no data will be returned.
 *     offset = the offset into the property at which to begin
 *         retrieving data, in 4 byte units.
 *     length = the length of the data to retrieve in bytes.  Data is
 *         considered to be retrieved in 4 byte chunks, so @length
 *         will be rounded up to the next highest 4 byte boundary
 *         (so be careful not to pass a value that might overflow
 *         when rounded up).
 *     pdelete = if %TRUE, delete the property after retrieving the
 *         data.
 *     actualPropertyType = location to store the
 *         actual type of the property.
 *     actualFormat = location to store the actual return format of the
 *         data; either 8, 16 or 32 bits.
 *     data = location
 *         to store a pointer to the data. The retrieved data should be
 *         freed with g_free() when you are finished using it.
 *
 * Returns: %TRUE if data was successfully received and stored
 *     in @data, otherwise %FALSE.
 */
public bool propertyGet(Window window, GdkAtom property, GdkAtom type, gulong offset, gulong length, int pdelete, out GdkAtom actualPropertyType, out int actualFormat, out char[] data)
{
	int actualLength;
	char* outdata = null;

	auto p = gdk_property_get((window is null) ? null : window.getWindowStruct(), property, type, offset, length, pdelete, &actualPropertyType, &actualFormat, &actualLength, &outdata) != 0;

	data = outdata[0 .. actualLength];

	return p;
}

/**
 * Converts a text property in the given encoding to
 * a list of UTF-8 strings.
 *
 * Params:
 *     display = a #GdkDisplay
 *     encoding = an atom representing the encoding of the text
 *     format = the format of the property
 *     text = the text to convert
 *     list = location to store the list
 *         of strings or %NULL. The list should be freed with
 *         g_strfreev().
 *
 * Returns: the number of strings in the resulting list
 *
 * Since: 2.2
 */
public int textPropertyToUtf8ListForDisplay(Display display, GdkAtom encoding, int format, char[] text, out string[] list)
{
	char** outlist = null;

	auto p = gdk_text_property_to_utf8_list_for_display((display is null) ? null : display.getDisplayStruct(), encoding, format, text.ptr, cast(int)text.length, &outlist);

	list = Str.toStringArray(outlist);

	return p;
}

/**
 * Converts an UTF-8 string into the best possible representation
 * as a STRING. The representation of characters not in STRING
 * is not specified; it may be as pseudo-escape sequences
 * \x{ABCD}, or it may be in some other form of approximation.
 *
 * Params:
 *     str = a UTF-8 string
 *
 * Returns: the newly-allocated string, or %NULL if the
 *     conversion failed. (It should not fail for any properly
 *     formed UTF-8 string unless system limits like memory or
 *     file descriptors are exceeded.)
 */
public string utf8ToStringTarget(string str)
{
	auto retStr = gdk_utf8_to_string_target(Str.toStringz(str));

	scope(exit) Str.freeString(retStr);
	return Str.toString(retStr);
}
