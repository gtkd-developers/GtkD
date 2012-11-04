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
 * inFile  = gdk3-Properties-and-Atoms.html
 * outPack = gdk
 * outFile = Atoms
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = 
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Display
 * 	- gdk.Window
 * structWrap:
 * 	- GdkDisplay* -> Display
 * 	- GdkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Atoms;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Display;
private import gdk.Window;




/**
 */

/**
 * Converts a text property in the given encoding to
 * a list of UTF-8 strings.
 * Since 2.2
 * Params:
 * display = a GdkDisplay
 * encoding = an atom representing the encoding of the text
 * format = the format of the property
 * text = the text to convert. [array length=length]
 * length = the length of text, in bytes
 * list = location to store the list
 * of strings or NULL. The list should be freed with
 * g_strfreev(). [out][array zero-terminated=1]
 * Returns: the number of strings in the resulting list
 */
public static int textPropertyToUtf8_ListForDisplay(Display display, GdkAtom encoding, int format, char* text, int length, out char** list)
{
	// gint gdk_text_property_to_utf8_list_for_display  (GdkDisplay *display,  GdkAtom encoding,  gint format,  const guchar *text,  gint length,  gchar ***list);
	return gdk_text_property_to_utf8_list_for_display((display is null) ? null : display.getDisplayStruct(), encoding, format, text, length, &list);
}

/**
 * Converts an UTF-8 string into the best possible representation
 * as a STRING. The representation of characters not in STRING
 * is not specified; it may be as pseudo-escape sequences
 * \x{ABCD}, or it may be in some other form of approximation.
 * Params:
 * str = a UTF-8 string
 * Returns: the newly-allocated string, or NULL if the conversion failed. (It should not fail for any properly formed UTF-8 string unless system limits like memory or file descriptors are exceeded.)
 */
public static string utf8_ToStringTarget(string str)
{
	// gchar * gdk_utf8_to_string_target (const gchar *str);
	return Str.toString(gdk_utf8_to_string_target(Str.toStringz(str)));
}

/**
 * Finds or creates an atom corresponding to a given string.
 * Params:
 * atomName = a string.
 * onlyIfExists = if TRUE, GDK is allowed to not create a new atom, but
 * just return GDK_NONE if the requested atom doesn't already
 * exists. Currently, the flag is ignored, since checking the
 * existance of an atom is as expensive as creating it.
 * Returns: the atom corresponding to atom_name. [transfer none]
 */
public static GdkAtom atomIntern(string atomName, int onlyIfExists)
{
	// GdkAtom gdk_atom_intern (const gchar *atom_name,  gboolean only_if_exists);
	return gdk_atom_intern(Str.toStringz(atomName), onlyIfExists);
}

/**
 * Finds or creates an atom corresponding to a given string.
 * Note that this function is identical to gdk_atom_intern() except
 * that if a new GdkAtom is created the string itself is used rather
 * than a copy. This saves memory, but can only be used if the string
 * will always exist. It can be used with statically
 * allocated strings in the main program, but not with statically
 * allocated memory in dynamically loaded modules, if you expect to
 * ever unload the module again (e.g. do not use this function in
 * GTK+ theme engines).
 * Since 2.10
 * Params:
 * atomName = a static string
 * Returns: the atom corresponding to atom_name. [transfer none]
 */
public static GdkAtom atomInternStaticString(string atomName)
{
	// GdkAtom gdk_atom_intern_static_string (const gchar *atom_name);
	return gdk_atom_intern_static_string(Str.toStringz(atomName));
}

/**
 * Determines the string corresponding to an atom.
 * Params:
 * atom = a GdkAtom.
 * Returns: a newly-allocated string containing the string corresponding to atom. When you are done with the return value, you should free it using g_free().
 */
public static string atomName(GdkAtom atom)
{
	// gchar * gdk_atom_name (GdkAtom atom);
	return Str.toString(gdk_atom_name(atom));
}

/**
 * Retrieves a portion of the contents of a property. If the
 * property does not exist, then the function returns FALSE,
 * and GDK_NONE will be stored in actual_property_type.
 * Note
 * The XGetWindowProperty() function that gdk_property_get()
 * uses has a very confusing and complicated set of semantics.
 * Unfortunately, gdk_property_get() makes the situation
 * worse instead of better (the semantics should be considered
 * undefined), and also prints warnings to stderr in cases where it
 * should return a useful error to the program. You are advised to use
 * XGetWindowProperty() directly until a replacement function for
 * gdk_property_get()
 * is provided.
 * Params:
 * window = a GdkWindow
 * property = the property to retrieve
 * type = the desired property type, or GDK_NONE, if any type of data
 * is acceptable. If this does not match the actual
 * type, then actual_format and actual_length will
 * be filled in, a warning will be printed to stderr
 * and no data will be returned.
 * offset = the offset into the property at which to begin
 * retrieving data, in 4 byte units.
 * length = the length of the data to retrieve in bytes. Data is
 * considered to be retrieved in 4 byte chunks, so length
 * will be rounded up to the next highest 4 byte boundary
 * (so be careful not to pass a value that might overflow
 * when rounded up).
 * pdelete = if TRUE, delete the property after retrieving the
 * data.
 * actualPropertyType = location to store the
 * actual type of the property. [out][transfer none]
 * actualFormat = location to store the actual return format of the
 * data; either 8, 16 or 32 bits. [out]
 * data = location
 * to store a pointer to the data. The retrieved data should be
 * freed with g_free() when you are finished using it. [out][array length=actual_length][transfer full]
 * Returns: TRUE if data was successfully received and stored in data, otherwise FALSE.
 */
public static int propertyGet(Window window, GdkAtom property, GdkAtom type, gulong offset, gulong length, int pdelete, out GdkAtom actualPropertyType, out int actualFormat, out char[] data)
{
	// gboolean gdk_property_get (GdkWindow *window,  GdkAtom property,  GdkAtom type,  gulong offset,  gulong length,  gint pdelete,  GdkAtom *actual_property_type,  gint *actual_format,  gint *actual_length,  guchar **data);
	guchar* outdata = null;
	int actualLength;
	
	auto p = gdk_property_get((window is null) ? null : window.getWindowStruct(), property, type, offset, length, pdelete, &actualPropertyType, &actualFormat, &actualLength, &outdata);
	
	data = outdata[0 .. actualLength];
	return p;
}

/**
 * Changes the contents of a property on a window.
 * Params:
 * window = a GdkWindow
 * property = the property to change
 * type = the new type for the property. If mode is
 * GDK_PROP_MODE_PREPEND or GDK_PROP_MODE_APPEND, then this
 * must match the existing type or an error will occur.
 * format = the new format for the property. If mode is
 * GDK_PROP_MODE_PREPEND or GDK_PROP_MODE_APPEND, then this
 * must match the existing format or an error will occur.
 * mode = a value describing how the new data is to be combined
 * with the current data.
 * data = the data (a guchar *
 * gushort *, or gulong *,
 * depending on format), cast to a guchar *.
 */
public static void propertyChange(Window window, GdkAtom property, GdkAtom type, int format, GdkPropMode mode, char[] data)
{
	// void gdk_property_change (GdkWindow *window,  GdkAtom property,  GdkAtom type,  gint format,  GdkPropMode mode,  const guchar *data,  gint nelements);
	gdk_property_change((window is null) ? null : window.getWindowStruct(), property, type, format, mode, data.ptr, cast(int) data.length);
}

/**
 * Deletes a property from a window.
 * Params:
 * window = a GdkWindow
 * property = the property to delete
 */
public static void propertyDelete(Window window, GdkAtom property)
{
	// void gdk_property_delete (GdkWindow *window,  GdkAtom property);
	gdk_property_delete((window is null) ? null : window.getWindowStruct(), property);
}

