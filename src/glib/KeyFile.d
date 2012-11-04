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
 * inFile  = glib-Key-value-file-parser.html
 * outPack = glib
 * outFile = KeyFile
 * strct   = GKeyFile
 * realStrct=
 * ctorStrct=
 * clss    = KeyFile
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_key_file_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Str
 * 	- gtkc.paths
 * 	- gtkc.Loader
 * structWrap:
 * 	- GKeyFile* -> KeyFile
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.KeyFile;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gtkc.paths;
private import gtkc.Loader;




/**
 * Description
 * GKeyFile lets you parse, edit or create files containing groups of
 * key-value pairs, which we call key files for
 * lack of a better name. Several freedesktop.org specifications use
 * key files now, e.g the
 * Desktop
 * Entry Specification and the
 * Icon
 * Theme Specification.
 * The syntax of key files is described in detail in the
 * Desktop
 * Entry Specification, here is a quick summary: Key files
 * consists of groups of key-value pairs, interspersed with comments.
 * $(DDOC_COMMENT example)
 * Lines beginning with a '#' and blank lines are considered comments.
 * Groups are started by a header line containing the group name enclosed
 * in '[' and ']', and ended implicitly by the start of the next group or
 * the end of the file. Each key-value pair must be contained in a group.
 * Key-value pairs generally have the form key=value,
 * with the exception of localized strings, which have the form
 * key[locale]=value, with a locale identifier of the
 * form lang_COUNTRYMODIFIER where
 * COUNTRY and MODIFIER are optional.
 * Space before and after the '=' character are ignored. Newline, tab,
 * carriage return and backslash characters in value are escaped as \n,
 * \t, \r, and \\, respectively. To preserve leading spaces in values,
 * these can also be escaped as \s.
 * Key files can store strings (possibly with localized variants), integers,
 * booleans and lists of these. Lists are separated by a separator character,
 * typically ';' or ','. To use the list separator character in a value in
 * a list, it has to be escaped by prefixing it with a backslash.
 * This syntax is obviously inspired by the .ini files commonly met
 * on Windows, but there are some important differences:
 * .ini files use the ';' character to begin comments,
 *  key files use the '#' character.
 * Key files do not allow for ungrouped keys meaning only
 *  comments can precede the first group.
 * Key files are always encoded in UTF-8.
 * Key and Group names are case-sensitive. For example, a
 *  group called [GROUP] is a different from
 *  [group].
 * .ini files don't have a strongly typed boolean entry type,
 *  they only have GetProfileInt(). In key files, only
 *  true and false (in lower case)
 *  are allowed.
 * Note that in contrast to the
 * Desktop
 * Entry Specification, groups in key files may contain the same
 * key multiple times; the last entry wins. Key files may also contain
 * multiple groups with the same name; they are merged together.
 * Another difference is that keys and group names in key files are not
 * restricted to ASCII characters.
 */
public class KeyFile
{
	
	/** the main Gtk struct */
	protected GKeyFile* gKeyFile;
	
	
	public GKeyFile* getKeyFileStruct()
	{
		return gKeyFile;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gKeyFile;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GKeyFile* gKeyFile)
	{
		this.gKeyFile = gKeyFile;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GLIB) && gKeyFile !is null )
		{
			g_key_file_unref(gKeyFile);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a new empty GKeyFile object. Use
	 * g_key_file_load_from_file(), g_key_file_load_from_data(),
	 * g_key_file_load_from_dirs() or g_key_file_load_from_data_dirs() to
	 * read an existing key file.
	 * Since 2.6
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GKeyFile * g_key_file_new (void);
		auto p = g_key_file_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_key_file_new()");
		}
		this(cast(GKeyFile*) p);
	}
	
	/**
	 * Clears all keys and groups from key_file, and decreases the
	 * reference count by 1. If the reference count reaches zero,
	 * frees the key file and all its allocated memory.
	 * Since 2.6
	 */
	public void free()
	{
		// void g_key_file_free (GKeyFile *key_file);
		g_key_file_free(gKeyFile);
	}
	
	/**
	 * Increases the reference count of key_file.
	 * Since 2.32
	 * Returns: the same key_file.
	 */
	public KeyFile doref()
	{
		// GKeyFile * g_key_file_ref (GKeyFile *key_file);
		auto p = g_key_file_ref(gKeyFile);
		
		if(p is null)
		{
			return null;
		}
		
		return new KeyFile(cast(GKeyFile*) p);
	}
	
	/**
	 * Decreases the reference count of key_file by 1. If the reference count
	 * reaches zero, frees the key file and all its allocated memory.
	 * Since 2.32
	 */
	public void unref()
	{
		// void g_key_file_unref (GKeyFile *key_file);
		g_key_file_unref(gKeyFile);
	}
	
	/**
	 * Sets the character which is used to separate
	 * values in lists. Typically ';' or ',' are used
	 * as separators. The default list separator is ';'.
	 * Since 2.6
	 * Params:
	 * separator = the separator
	 */
	public void setListSeparator(char separator)
	{
		// void g_key_file_set_list_separator (GKeyFile *key_file,  gchar separator);
		g_key_file_set_list_separator(gKeyFile, separator);
	}
	
	/**
	 * Loads a key file into an empty GKeyFile structure.
	 * If the file could not be loaded then error is set to
	 * either a GFileError or GKeyFileError.
	 * Since 2.6
	 * Params:
	 * file = the path of a filename to load, in the GLib filename encoding. [type filename]
	 * flags = flags from GKeyFileFlags
	 * Returns: TRUE if a key file could be loaded, FALSE otherwise
	 * Throws: GException on failure.
	 */
	public int loadFromFile(string file, GKeyFileFlags flags)
	{
		// gboolean g_key_file_load_from_file (GKeyFile *key_file,  const gchar *file,  GKeyFileFlags flags,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_load_from_file(gKeyFile, Str.toStringz(file), flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Loads a key file from memory into an empty GKeyFile structure.
	 * If the object cannot be created then error is set to a GKeyFileError.
	 * Since 2.6
	 * Params:
	 * data = key file loaded in memory
	 * flags = flags from GKeyFileFlags
	 * Returns: TRUE if a key file could be loaded, FALSE otherwise
	 * Throws: GException on failure.
	 */
	public int loadFromData(string data, GKeyFileFlags flags)
	{
		// gboolean g_key_file_load_from_data (GKeyFile *key_file,  const gchar *data,  gsize length,  GKeyFileFlags flags,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_load_from_data(gKeyFile, cast(char*)data.ptr, cast(int) data.length, flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * This function looks for a key file named file in the paths
	 * returned from g_get_user_data_dir() and g_get_system_data_dirs(),
	 * loads the file into key_file and returns the file's full path in
	 * full_path. If the file could not be loaded then an error is
	 * set to either a GFileError or GKeyFileError.
	 * Since 2.6
	 * Params:
	 * file = a relative path to a filename to open and parse. [type filename]
	 * fullPath = return location for a string containing the full path
	 * of the file, or NULL. [out][type filename][allow-none]
	 * flags = flags from GKeyFileFlags
	 * Returns: TRUE if a key file could be loaded, FALSE othewise
	 * Throws: GException on failure.
	 */
	public int loadFromDataDirs(string file, out string fullPath, GKeyFileFlags flags)
	{
		// gboolean g_key_file_load_from_data_dirs (GKeyFile *key_file,  const gchar *file,  gchar **full_path,  GKeyFileFlags flags,  GError **error);
		char* outfullPath = null;
		GError* err = null;
		
		auto p = g_key_file_load_from_data_dirs(gKeyFile, Str.toStringz(file), &outfullPath, flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		fullPath = Str.toString(outfullPath);
		return p;
	}
	
	/**
	 * This function looks for a key file named file in the paths
	 * specified in search_dirs, loads the file into key_file and
	 * returns the file's full path in full_path. If the file could not
	 * be loaded then an error is set to either a GFileError or
	 * GKeyFileError.
	 * Since 2.14
	 * Params:
	 * file = a relative path to a filename to open and parse. [type filename]
	 * searchDirs = NULL-terminated array of directories to search. [array zero-terminated=1][element-type filename]
	 * fullPath = return location for a string containing the full path
	 * of the file, or NULL. [out][type filename][allow-none]
	 * flags = flags from GKeyFileFlags
	 * Returns: TRUE if a key file could be loaded, FALSE otherwise
	 * Throws: GException on failure.
	 */
	public int loadFromDirs(string file, string[] searchDirs, out string fullPath, GKeyFileFlags flags)
	{
		// gboolean g_key_file_load_from_dirs (GKeyFile *key_file,  const gchar *file,  const gchar **search_dirs,  gchar **full_path,  GKeyFileFlags flags,  GError **error);
		char* outfullPath = null;
		GError* err = null;
		
		auto p = g_key_file_load_from_dirs(gKeyFile, Str.toStringz(file), Str.toStringzArray(searchDirs), &outfullPath, flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		fullPath = Str.toString(outfullPath);
		return p;
	}
	
	/**
	 * This function outputs key_file as a string.
	 * Note that this function never reports an error,
	 * so it is safe to pass NULL as error.
	 * Since 2.6
	 * Returns: a newly allocated string holding the contents of the GKeyFile
	 * Throws: GException on failure.
	 */
	public string toData()
	{
		// gchar * g_key_file_to_data (GKeyFile *key_file,  gsize *length,  GError **error);
		gsize length;
		GError* err = null;
		
		auto p = g_key_file_to_data(gKeyFile, &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p, length);
	}
	
	/**
	 * Returns the name of the start group of the file.
	 * Since 2.6
	 * Returns: The start group of the key file.
	 */
	public string getStartGroup()
	{
		// gchar * g_key_file_get_start_group (GKeyFile *key_file);
		return Str.toString(g_key_file_get_start_group(gKeyFile));
	}
	
	/**
	 * Returns all groups in the key file loaded with key_file.
	 * The array of returned groups will be NULL-terminated, so
	 * length may optionally be NULL.
	 * Since 2.6
	 * Returns: a newly-allocated NULL-terminated array of strings. Use g_strfreev() to free it. [array zero-terminated=1][transfer full]
	 */
	public string[] getGroups()
	{
		// gchar ** g_key_file_get_groups (GKeyFile *key_file,  gsize *length);
		gsize length;
		auto p = g_key_file_get_groups(gKeyFile, &length);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Returns all keys for the group name group_name. The array of
	 * returned keys will be NULL-terminated, so length may
	 * optionally be NULL. In the event that the group_name cannot
	 * be found, NULL is returned and error is set to
	 * G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * Returns: a newly-allocated NULL-terminated array of strings. Use g_strfreev() to free it. [array zero-terminated=1][transfer full]
	 * Throws: GException on failure.
	 */
	public string[] getKeys(string groupName)
	{
		// gchar ** g_key_file_get_keys (GKeyFile *key_file,  const gchar *group_name,  gsize *length,  GError **error);
		gsize length;
		GError* err = null;
		
		auto p = g_key_file_get_keys(gKeyFile, Str.toStringz(groupName), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Looks whether the key file has the group group_name.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * Returns: TRUE if group_name is a part of key_file, FALSE otherwise.
	 */
	public int hasGroup(string groupName)
	{
		// gboolean g_key_file_has_group (GKeyFile *key_file,  const gchar *group_name);
		return g_key_file_has_group(gKeyFile, Str.toStringz(groupName));
	}
	
	/**
	 * Looks whether the key file has the key key in the group
	 * group_name.
	 * Note
	 * This function does not follow the rules for GError strictly;
	 * the return value both carries meaning and signals an error. To use
	 * this function, you must pass a GError pointer in error, and check
	 * whether it is not NULL to see if an error occurred.
	 * Language bindings should use g_key_file_get_value() to test whether
	 * or not a key exists.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key name
	 * Returns: TRUE if key is a part of group_name, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int hasKey(string groupName, string key)
	{
		// gboolean g_key_file_has_key (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_has_key(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns the raw value associated with key under group_name.
	 * Use g_key_file_get_string() to retrieve an unescaped UTF-8 string.
	 * In the event the key cannot be found, NULL is returned and
	 * error is set to G_KEY_FILE_ERROR_KEY_NOT_FOUND. In the
	 * event that the group_name cannot be found, NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * Returns: a newly allocated string or NULL if the specified key cannot be found.
	 * Throws: GException on failure.
	 */
	public string getValue(string groupName, string key)
	{
		// gchar * g_key_file_get_value (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_get_value(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Returns the string value associated with key under group_name.
	 * Unlike g_key_file_get_value(), this function handles escape sequences
	 * like \s.
	 * In the event the key cannot be found, NULL is returned and
	 * error is set to G_KEY_FILE_ERROR_KEY_NOT_FOUND. In the
	 * event that the group_name cannot be found, NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * Returns: a newly allocated string or NULL if the specified key cannot be found.
	 * Throws: GException on failure.
	 */
	public string getString(string groupName, string key)
	{
		// gchar * g_key_file_get_string (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_get_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Returns the value associated with key under group_name
	 * translated in the given locale if available. If locale is
	 * NULL then the current locale is assumed.
	 * If key cannot be found then NULL is returned and error is set
	 * to G_KEY_FILE_ERROR_KEY_NOT_FOUND. If the value associated
	 * with key cannot be interpreted or no suitable translation can
	 * be found then the untranslated value is returned.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * locale = a locale identifier or NULL. [allow-none]
	 * Returns: a newly allocated string or NULL if the specified key cannot be found.
	 * Throws: GException on failure.
	 */
	public string getLocaleString(string groupName, string key, string locale)
	{
		// gchar * g_key_file_get_locale_string (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *locale,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_get_locale_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Returns the value associated with key under group_name as a
	 * boolean.
	 * If key cannot be found then FALSE is returned and error is set
	 * to G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the value
	 * associated with key cannot be interpreted as a boolean then FALSE
	 * is returned and error is set to G_KEY_FILE_ERROR_INVALID_VALUE.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * Returns: the value associated with the key as a boolean, or FALSE if the key was not found or could not be parsed.
	 * Throws: GException on failure.
	 */
	public int getBoolean(string groupName, string key)
	{
		// gboolean g_key_file_get_boolean (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_get_boolean(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns the value associated with key under group_name as an
	 * integer.
	 * If key cannot be found then 0 is returned and error is set to
	 * G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the value associated
	 * with key cannot be interpreted as an integer then 0 is returned
	 * and error is set to G_KEY_FILE_ERROR_INVALID_VALUE.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * Returns: the value associated with the key as an integer, or 0 if the key was not found or could not be parsed.
	 * Throws: GException on failure.
	 */
	public int getInteger(string groupName, string key)
	{
		// gint g_key_file_get_integer (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_get_integer(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns the value associated with key under group_name as a signed
	 * 64-bit integer. This is similar to g_key_file_get_integer() but can return
	 * 64-bit results without truncation.
	 * Since 2.26
	 * Params:
	 * groupName = a non-NULL group name
	 * key = a non-NULL key
	 * Returns: the value associated with the key as a signed 64-bit integer, or 0 if the key was not found or could not be parsed.
	 * Throws: GException on failure.
	 */
	public long getInt64(string groupName, string key)
	{
		// gint64 g_key_file_get_int64 (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_get_int64(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns the value associated with key under group_name as an unsigned
	 * 64-bit integer. This is similar to g_key_file_get_integer() but can return
	 * large positive results without truncation.
	 * Since 2.26
	 * Params:
	 * groupName = a non-NULL group name
	 * key = a non-NULL key
	 * Returns: the value associated with the key as an unsigned 64-bit integer, or 0 if the key was not found or could not be parsed.
	 * Throws: GException on failure.
	 */
	public ulong getUint64(string groupName, string key)
	{
		// guint64 g_key_file_get_uint64 (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_get_uint64(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns the value associated with key under group_name as a
	 * double. If group_name is NULL, the start_group is used.
	 * If key cannot be found then 0.0 is returned and error is set to
	 * G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the value associated
	 * with key cannot be interpreted as a double then 0.0 is returned
	 * and error is set to G_KEY_FILE_ERROR_INVALID_VALUE.
	 * Since 2.12
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * Returns: the value associated with the key as a double, or 0.0 if the key was not found or could not be parsed.
	 * Throws: GException on failure.
	 */
	public double getDouble(string groupName, string key)
	{
		// gdouble g_key_file_get_double (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_get_double(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns the values associated with key under group_name.
	 * In the event the key cannot be found, NULL is returned and
	 * error is set to G_KEY_FILE_ERROR_KEY_NOT_FOUND. In the
	 * event that the group_name cannot be found, NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * Returns: a NULL-terminated string array or NULL if the specified key cannot be found. The array should be freed with g_strfreev(). [array zero-terminated=1 length=length][element-type utf8][transfer full]
	 * Throws: GException on failure.
	 */
	public string[] getStringList(string groupName, string key)
	{
		// gchar ** g_key_file_get_string_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gsize *length,  GError **error);
		gsize length;
		GError* err = null;
		
		auto p = g_key_file_get_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Returns the values associated with key under group_name
	 * translated in the given locale if available. If locale is
	 * NULL then the current locale is assumed.
	 * If key cannot be found then NULL is returned and error is set
	 * to G_KEY_FILE_ERROR_KEY_NOT_FOUND. If the values associated
	 * with key cannot be interpreted or no suitable translations
	 * can be found then the untranslated values are returned. The
	 * returned array is NULL-terminated, so length may optionally
	 * be NULL.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * locale = a locale identifier or NULL. [allow-none]
	 * Returns: a newly allocated NULL-terminated string array or NULL if the key isn't found. The string array should be freed with g_strfreev(). [array zero-terminated=1 length=length][element-type utf8][transfer full]
	 * Throws: GException on failure.
	 */
	public string[] getLocaleStringList(string groupName, string key, string locale)
	{
		// gchar ** g_key_file_get_locale_string_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *locale,  gsize *length,  GError **error);
		gsize length;
		GError* err = null;
		
		auto p = g_key_file_get_locale_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Returns the values associated with key under group_name as
	 * booleans.
	 * If key cannot be found then NULL is returned and error is set to
	 * G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
	 * with key cannot be interpreted as booleans then NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_INVALID_VALUE.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * Returns: the values associated with the key as a list of booleans, or NULL if the key was not found or could not be parsed. The returned list of booleans should be freed with g_free() when no longer needed. [array length=length][element-type gboolean][transfer container]
	 * Throws: GException on failure.
	 */
	public int[] getBooleanList(string groupName, string key)
	{
		// gboolean * g_key_file_get_boolean_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gsize *length,  GError **error);
		gsize length;
		GError* err = null;
		
		auto p = g_key_file_get_boolean_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. length];
	}
	
	/**
	 * Returns the values associated with key under group_name as
	 * integers.
	 * If key cannot be found then NULL is returned and error is set to
	 * G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
	 * with key cannot be interpreted as integers then NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_INVALID_VALUE.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * Returns: the values associated with the key as a list of integers, or NULL if the key was not found or could not be parsed. The returned list of integers should be freed with g_free() when no longer needed. [array length=length][element-type gint][transfer container]
	 * Throws: GException on failure.
	 */
	public int[] getIntegerList(string groupName, string key)
	{
		// gint * g_key_file_get_integer_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gsize *length,  GError **error);
		gsize length;
		GError* err = null;
		
		auto p = g_key_file_get_integer_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. length];
	}
	
	/**
	 * Returns the values associated with key under group_name as
	 * doubles.
	 * If key cannot be found then NULL is returned and error is set to
	 * G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
	 * with key cannot be interpreted as doubles then NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_INVALID_VALUE.
	 * Since 2.12
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * Returns: the values associated with the key as a list of doubles, or NULL if the key was not found or could not be parsed. The returned list of doubles should be freed with g_free() when no longer needed. [array length=length][element-type gdouble][transfer container]
	 * Throws: GException on failure.
	 */
	public double[] getDoubleList(string groupName, string key)
	{
		// gdouble * g_key_file_get_double_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gsize *length,  GError **error);
		gsize length;
		GError* err = null;
		
		auto p = g_key_file_get_double_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. length];
	}
	
	/**
	 * Retrieves a comment above key from group_name.
	 * If key is NULL then comment will be read from above
	 * group_name. If both key and group_name are NULL, then
	 * comment will be read from above the first group in the file.
	 * Since 2.6
	 * Params:
	 * groupName = a group name, or NULL. [allow-none]
	 * key = a key
	 * Returns: a comment that should be freed with g_free()
	 * Throws: GException on failure.
	 */
	public string getComment(string groupName, string key)
	{
		// gchar * g_key_file_get_comment (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_get_comment(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Associates a new value with key under group_name.
	 * If key cannot be found then it is created. If group_name cannot
	 * be found then it is created. To set an UTF-8 string which may contain
	 * characters that need escaping (such as newlines or spaces), use
	 * g_key_file_set_string().
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * value = a string
	 */
	public void setValue(string groupName, string key, string value)
	{
		// void g_key_file_set_value (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *value);
		g_key_file_set_value(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(value));
	}
	
	/**
	 * Associates a new string value with key under group_name.
	 * If key cannot be found then it is created.
	 * If group_name cannot be found then it is created.
	 * Unlike g_key_file_set_value(), this function handles characters
	 * that need escaping, such as newlines.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * string = a string
	 */
	public void setString(string groupName, string key, string string)
	{
		// void g_key_file_set_string (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *string);
		g_key_file_set_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(string));
	}
	
	/**
	 * Associates a string value for key and locale under group_name.
	 * If the translation for key cannot be found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * locale = a locale identifier
	 * string = a string
	 */
	public void setLocaleString(string groupName, string key, string locale, string string)
	{
		// void g_key_file_set_locale_string (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *locale,  const gchar *string);
		g_key_file_set_locale_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), Str.toStringz(string));
	}
	
	/**
	 * Associates a new boolean value with key under group_name.
	 * If key cannot be found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * value = TRUE or FALSE
	 */
	public void setBoolean(string groupName, string key, int value)
	{
		// void g_key_file_set_boolean (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gboolean value);
		g_key_file_set_boolean(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}
	
	/**
	 * Associates a new integer value with key under group_name.
	 * If key cannot be found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * value = an integer value
	 */
	public void setInteger(string groupName, string key, int value)
	{
		// void g_key_file_set_integer (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gint value);
		g_key_file_set_integer(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}
	
	/**
	 * Associates a new integer value with key under group_name.
	 * If key cannot be found then it is created.
	 * Since 2.26
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * value = an integer value
	 */
	public void setInt64(string groupName, string key, long value)
	{
		// void g_key_file_set_int64 (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gint64 value);
		g_key_file_set_int64(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}
	
	/**
	 * Associates a new integer value with key under group_name.
	 * If key cannot be found then it is created.
	 * Since 2.26
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * value = an integer value
	 */
	public void setUint64(string groupName, string key, ulong value)
	{
		// void g_key_file_set_uint64 (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  guint64 value);
		g_key_file_set_uint64(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}
	
	/**
	 * Associates a new double value with key under group_name.
	 * If key cannot be found then it is created.
	 * Since 2.12
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * value = an double value
	 */
	public void setDouble(string groupName, string key, double value)
	{
		// void g_key_file_set_double (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gdouble value);
		g_key_file_set_double(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}
	
	/**
	 * Associates a list of string values for key under group_name.
	 * If key cannot be found then it is created.
	 * If group_name cannot be found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * list = an array of string values. [array zero-terminated=1 length=length][element-type utf8]
	 */
	public void setStringList(string groupName, string key, string[] list)
	{
		// void g_key_file_set_string_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar * const list[],  gsize length);
		g_key_file_set_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringzArray(list), cast(int) list.length);
	}
	
	/**
	 * Associates a list of string values for key and locale under
	 * group_name. If the translation for key cannot be found then
	 * it is created.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * locale = a locale identifier
	 * list = a NULL-terminated array of locale string values. [array zero-terminated=1 length=length]
	 */
	public void setLocaleStringList(string groupName, string key, string locale, string[] list)
	{
		// void g_key_file_set_locale_string_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *locale,  const gchar * const list[],  gsize length);
		g_key_file_set_locale_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), Str.toStringzArray(list), cast(int) list.length);
	}
	
	/**
	 * Associates a list of boolean values with key under group_name.
	 * If key cannot be found then it is created.
	 * If group_name is NULL, the start_group is used.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * list = an array of boolean values. [array length=length]
	 */
	public void setBooleanList(string groupName, string key, int[] list)
	{
		// void g_key_file_set_boolean_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gboolean list[],  gsize length);
		g_key_file_set_boolean_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), list.ptr, cast(int) list.length);
	}
	
	/**
	 * Associates a list of integer values with key under group_name.
	 * If key cannot be found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * list = an array of integer values. [array length=length]
	 */
	public void setIntegerList(string groupName, string key, int[] list)
	{
		// void g_key_file_set_integer_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gint list[],  gsize length);
		g_key_file_set_integer_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), list.ptr, cast(int) list.length);
	}
	
	/**
	 * Associates a list of double values with key under
	 * group_name. If key cannot be found then it is created.
	 * Since 2.12
	 * Params:
	 * groupName = a group name
	 * key = a key
	 * list = an array of double values. [array length=length]
	 */
	public void setDoubleList(string groupName, string key, double[] list)
	{
		// void g_key_file_set_double_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gdouble list[],  gsize length);
		g_key_file_set_double_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), list.ptr, cast(int) list.length);
	}
	
	/**
	 * Places a comment above key from group_name.
	 * If key is NULL then comment will be written above group_name.
	 * If both key and group_name are NULL, then comment will be
	 * written above the first group in the file.
	 * Since 2.6
	 * Params:
	 * groupName = a group name, or NULL. [allow-none]
	 * key = a key. [allow-none]
	 * comment = a comment
	 * Returns: TRUE if the comment was written, FALSE otherwise
	 * Throws: GException on failure.
	 */
	public int setComment(string groupName, string key, string comment)
	{
		// gboolean g_key_file_set_comment (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *comment,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_set_comment(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(comment), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Removes the specified group, group_name,
	 * from the key file.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * Returns: TRUE if the group was removed, FALSE otherwise
	 * Throws: GException on failure.
	 */
	public int removeGroup(string groupName)
	{
		// gboolean g_key_file_remove_group (GKeyFile *key_file,  const gchar *group_name,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_remove_group(gKeyFile, Str.toStringz(groupName), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Removes key in group_name from the key file.
	 * Since 2.6
	 * Params:
	 * groupName = a group name
	 * key = a key name to remove
	 * Returns: TRUE if the key was removed, FALSE otherwise
	 * Throws: GException on failure.
	 */
	public int removeKey(string groupName, string key)
	{
		// gboolean g_key_file_remove_key (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_remove_key(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Removes a comment above key from group_name.
	 * If key is NULL then comment will be removed above group_name.
	 * If both key and group_name are NULL, then comment will
	 * be removed above the first group in the file.
	 * Since 2.6
	 * Params:
	 * groupName = a group name, or NULL. [allow-none]
	 * key = a key. [allow-none]
	 * Returns: TRUE if the comment was removed, FALSE otherwise
	 * Throws: GException on failure.
	 */
	public int removeComment(string groupName, string key)
	{
		// gboolean g_key_file_remove_comment (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		GError* err = null;
		
		auto p = g_key_file_remove_comment(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
