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
 * inFile  = gio-GContentType.html
 * outPack = gio
 * outFile = ContentType
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = ContentType
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_content_type_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gio.File
 * 	- gio.Icon
 * 	- gio.IconIF
 * structWrap:
 * 	- GFile* -> File
 * 	- GIcon* -> IconIF
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ContentType;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ListG;
private import gio.File;
private import gio.Icon;
private import gio.IconIF;




/**
 * A content type is a platform specific string that defines the type
 * of a file. On UNIX it is a mime type like "text/plain" or "image/png".
 * On Win32 it is an extension string like ".doc", ".txt" or a perceived
 * string like "audio". Such strings can be looked up in the registry at
 * HKEY_CLASSES_ROOT.
 */
public class ContentType
{
	
	/**
	 */
	
	/**
	 * Compares two content types for equality.
	 * Params:
	 * type1 = a content type string
	 * type2 = a content type string
	 * Returns: TRUE if the two strings are identical or equivalent, FALSE otherwise.
	 */
	public static int equals(string type1, string type2)
	{
		// gboolean g_content_type_equals (const gchar *type1,  const gchar *type2);
		return g_content_type_equals(Str.toStringz(type1), Str.toStringz(type2));
	}
	
	/**
	 * Determines if type is a subset of supertype.
	 * Params:
	 * type = a content type string
	 * supertype = a content type string
	 * Returns: TRUE if type is a kind of supertype, FALSE otherwise.
	 */
	public static int isA(string type, string supertype)
	{
		// gboolean g_content_type_is_a (const gchar *type,  const gchar *supertype);
		return g_content_type_is_a(Str.toStringz(type), Str.toStringz(supertype));
	}
	
	/**
	 * Checks if the content type is the generic "unknown" type.
	 * On UNIX this is the "application/octet-stream" mimetype,
	 * while on win32 it is "*".
	 * Params:
	 * type = a content type string
	 * Returns: TRUE if the type is the unknown type.
	 */
	public static int isUnknown(string type)
	{
		// gboolean g_content_type_is_unknown (const gchar *type);
		return g_content_type_is_unknown(Str.toStringz(type));
	}
	
	/**
	 * Gets the human readable description of the content type.
	 * Params:
	 * type = a content type string
	 * Returns: a short description of the content type type. Free the returned string with g_free()
	 */
	public static string getDescription(string type)
	{
		// gchar * g_content_type_get_description (const gchar *type);
		return Str.toString(g_content_type_get_description(Str.toStringz(type)));
	}
	
	/**
	 * Gets the mime type for the content type, if one is registered.
	 * Params:
	 * type = a content type string
	 * Returns: the registered mime type for the given type, or NULL if unknown. [allow-none]
	 */
	public static string getMimeType(string type)
	{
		// gchar * g_content_type_get_mime_type (const gchar *type);
		return Str.toString(g_content_type_get_mime_type(Str.toStringz(type)));
	}
	
	/**
	 * Gets the icon for a content type.
	 * Params:
	 * type = a content type string
	 * Returns: GIcon corresponding to the content type. Free the returned object with g_object_unref(). [transfer full]
	 */
	public static IconIF getIcon(string type)
	{
		// GIcon * g_content_type_get_icon (const gchar *type);
		auto p = g_content_type_get_icon(Str.toStringz(type));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Gets the symbolic icon for a content type.
	 * Since 2.34
	 * Params:
	 * type = a content type string
	 * Returns: symbolic GIcon corresponding to the content type. Free the returned object with g_object_unref(). [transfer full]
	 */
	public static IconIF getSymbolicIcon(string type)
	{
		// GIcon * g_content_type_get_symbolic_icon (const gchar *type);
		auto p = g_content_type_get_symbolic_icon(Str.toStringz(type));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Icon)(cast(GIcon*) p);
	}
	
	/**
	 * Gets the generic icon name for a content type.
	 * See the shared-mime-info
	 * specification for more on the generic icon name.
	 * Since 2.34
	 * Params:
	 * type = a content type string
	 * Returns: the registered generic icon name for the given type, or NULL if unknown. Free with g_free(). [allow-none]
	 */
	public static string getGenericIconName(string type)
	{
		// gchar * g_content_type_get_generic_icon_name  (const gchar *type);
		return Str.toString(g_content_type_get_generic_icon_name(Str.toStringz(type)));
	}
	
	/**
	 * Checks if a content type can be executable. Note that for instance
	 * things like text files can be executables (i.e. scripts and batch files).
	 * Params:
	 * type = a content type string
	 * Returns: TRUE if the file type corresponds to a type that can be executable, FALSE otherwise.
	 */
	public static int canBeExecutable(string type)
	{
		// gboolean g_content_type_can_be_executable (const gchar *type);
		return g_content_type_can_be_executable(Str.toStringz(type));
	}
	
	/**
	 * Tries to find a content type based on the mime type name.
	 * Since 2.18
	 * Params:
	 * mimeType = a mime type string
	 * Returns: Newly allocated string with content type or NULL. Free with g_free(). [allow-none]
	 */
	public static string fromMimeType(string mimeType)
	{
		// gchar * g_content_type_from_mime_type (const gchar *mime_type);
		return Str.toString(g_content_type_from_mime_type(Str.toStringz(mimeType)));
	}
	
	/**
	 * Guesses the content type based on example data. If the function is
	 * uncertain, result_uncertain will be set to TRUE. Either filename
	 * or data may be NULL, in which case the guess will be based solely
	 * on the other argument.
	 * Params:
	 * filename = a string, or NULL. [allow-none]
	 * data = a stream of data, or NULL. [allow-none][array length=data_size]
	 * resultUncertain = return location for the certainty
	 * of the result, or NULL. [allow-none][out]
	 * Returns: a string indicating a guessed content type for the given data. Free with g_free()
	 */
	public static string guess(string filename, char[] data, out int resultUncertain)
	{
		// gchar * g_content_type_guess (const gchar *filename,  const guchar *data,  gsize data_size,  gboolean *result_uncertain);
		return Str.toString(g_content_type_guess(Str.toStringz(filename), data.ptr, cast(int) data.length, &resultUncertain));
	}
	
	/**
	 * Tries to guess the type of the tree with root root, by
	 * looking at the files it contains. The result is an array
	 * of content types, with the best guess coming first.
	 * The types returned all have the form x-content/foo, e.g.
	 * x-content/audio-cdda (for audio CDs) or x-content/image-dcf
	 * (for a camera memory card). See the shared-mime-info
	 * specification for more on x-content types.
	 * This function is useful in the implementation of
	 * g_mount_guess_content_type().
	 * Since 2.18
	 * Params:
	 * root = the root of the tree to guess a type for
	 * Returns: an NULL-terminated array of zero or more content types. Free with g_strfreev(). [transfer full][array zero-terminated=1]
	 */
	public static string[] guessForTree(File root)
	{
		// gchar ** g_content_type_guess_for_tree (GFile *root);
		return Str.toStringArray(g_content_type_guess_for_tree((root is null) ? null : root.getFileStruct()));
	}
	
	/**
	 * Gets a list of strings containing all the registered content types
	 * known to the system. The list and its data should be freed using
	 * g_list_free_full (list, g_free);
	 * Returns: GList of the registered content types. [element-type utf8][transfer full]
	 */
	public static ListG gContentTypesGetRegistered()
	{
		// GList * g_content_types_get_registered (void);
		auto p = g_content_types_get_registered();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
}
