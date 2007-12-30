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
 * inFile  = glib-Key-value-file-parser.html
 * outPack = glib
 * outFile = GKeyFile
 * strct   = GKeyFile
 * realStrct=
 * ctorStrct=
 * clss    = KeyFile
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_key_file_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module glib.GKeyFile;

private import gtkc.glibtypes;

private import gtkc.glib;


private import glib.ErrorG;
private import glib.Str;




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
 * # this is just an example
 * # there can be comments before the first group
 * [First Group]
 * Name=Key File Example\tthis value shows\nescaping
 * # localized strings are stored in multiple key-value pairs
 * Welcome=Hello
 * Welcome[de]=Hallo
 * Welcome[fr]=Bonjour
 * Welcome[it]=Ciao
 * [Another Group]
 * Numbers=2;20;-200;0
 * Booleans=true;false;true;true
 * Lines beginning with a '#' and blank lines are considered comments.
 * Groups are started by a header line containing the group name enclosed
 * in '[' and ']', and ended implicitly by the start of the next group or
 * the end of the file. Each key-value pair must be contained in a group.
 * Key-value pairs generally have the form key=value,
 * with the exception of localized strings, which have the form
 * key[locale]=value. Space before and after the
 * '=' character are ignored. Newline, tab, carriage return and backslash
 * characters in value are escaped as \n, \t, \r, and \\, respectively.
 * To preserve leading spaces in values, these can also be escaped as \s.
 * Key files can store strings (possibly with localized variants), integers,
 * booleans and lists of these. Lists are separated by a separator character,
 * typically ';' or ','. To use the list separator character in a value in
 * a list, it has to be escaped by prefixing it with a backslash.
 * This syntax is obviously inspired by the .ini
 * files commonly met on Windows, but there are some important differences:
 * .ini files use the ';' character to begin comments,
 *  key files use the '#' character.
 * Key files do not allow for ungrouped keys meaning only comments can precede the first group.
 * Key files are always encoded in UTF-8.
 * Key and Group names are case-sensitive, for example a group called
 * [GROUP] is a different group from [group].
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
		if(gKeyFile is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gKeyFile passed to constructor.");
			else return;
		}
		this.gKeyFile = gKeyFile;
	}
	
	/**
	 */
	
	
	
	
	
	/**
	 * Creates a new empty GKeyFile object. Use
	 * g_key_file_load_from_file(), g_key_file_load_from_data(),
	 * g_key_file_load_from_dirs() or g_key_file_load_from_data_dirs() to
	 * read an existing key file.
	 * Since 2.6
	 */
	public this ()
	{
		// GKeyFile* g_key_file_new (void);
		this(cast(GKeyFile*)g_key_file_new() );
	}
	
	/**
	 * Frees a GKeyFile.
	 * Since 2.6
	 */
	public void free()
	{
		// void g_key_file_free (GKeyFile *key_file);
		g_key_file_free(gKeyFile);
	}
	
	/**
	 * Sets the character which is used to separate
	 * values in lists. Typically ';' or ',' are used
	 * as separators. The default list separator is ';'.
	 * Since 2.6
	 * Params:
	 * separator =  the separator
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
	 * file =  the path of a filename to load, in the GLib file name encoding
	 * flags =  flags from GKeyFileFlags
	 * error =  return location for a GError, or NULL
	 * Returns: TRUE if a key file could be loaded, FALSE othewise
	 */
	public int loadFromFile(char[] file, GKeyFileFlags flags, GError** error)
	{
		// gboolean g_key_file_load_from_file (GKeyFile *key_file,  const gchar *file,  GKeyFileFlags flags,  GError **error);
		return g_key_file_load_from_file(gKeyFile, Str.toStringz(file), flags, error);
	}
	
	/**
	 * Loads a key file from memory into an empty GKeyFile structure. If
	 * the object cannot be created then error is set to a
	 * GKeyFileError.
	 * Since 2.6
	 * Params:
	 * data =  key file loaded in memory.
	 * length =  the length of data in bytes
	 * flags =  flags from GKeyFileFlags
	 * error =  return location for a GError, or NULL
	 * Returns: TRUE if a key file could be loaded, FALSE othewise
	 */
	public int loadFromData(char[] data, uint length, GKeyFileFlags flags, GError** error)
	{
		// gboolean g_key_file_load_from_data (GKeyFile *key_file,  const gchar *data,  gsize length,  GKeyFileFlags flags,  GError **error);
		return g_key_file_load_from_data(gKeyFile, Str.toStringz(data), length, flags, error);
	}
	
	/**
	 * This function looks for a key file named file in the paths
	 * returned from g_get_user_data_dir() and g_get_system_data_dirs(),
	 * loads the file into key_file and returns the file's full path in
	 * full_path. If the file could not be loaded then an error is
	 * set to either a GFileError or GKeyFileError.
	 * Since 2.6
	 * Params:
	 * file =  a relative path to a filename to open and parse
	 * fullPath =  return location for a string containing the full path
	 *  of the file, or NULL
	 * flags =  flags from GKeyFileFlags
	 * error =  return location for a GError, or NULL
	 * Returns: TRUE if a key file could be loaded, FALSE othewise
	 */
	public int loadFromDataDirs(char[] file, char** fullPath, GKeyFileFlags flags, GError** error)
	{
		// gboolean g_key_file_load_from_data_dirs (GKeyFile *key_file,  const gchar *file,  gchar **full_path,  GKeyFileFlags flags,  GError **error);
		return g_key_file_load_from_data_dirs(gKeyFile, Str.toStringz(file), fullPath, flags, error);
	}
	
	/**
	 * This function looks for a key file named file in the paths
	 * specified in search_dirs, loads the file into key_file and
	 * returns the file's full path in full_path. If the file could not
	 * be loaded then an error is set to either a GFileError or
	 * GKeyFileError.
	 * Since 2.14
	 * Params:
	 * file =  a relative path to a filename to open and parse
	 * searchDirs =  NULL-terminated array of directories to search
	 * fullPath =  return location for a string containing the full path
	 *  of the file, or NULL
	 * flags =  flags from GKeyFileFlags
	 * error =  return location for a GError, or NULL
	 * Returns: TRUE if a key file could be loaded, FALSE othewise
	 */
	public int loadFromDirs(char[] file, char** searchDirs, char** fullPath, GKeyFileFlags flags, GError** error)
	{
		// gboolean g_key_file_load_from_dirs (GKeyFile *key_file,  const gchar *file,  const gchar **search_dirs,  gchar **full_path,  GKeyFileFlags flags,  GError **error);
		return g_key_file_load_from_dirs(gKeyFile, Str.toStringz(file), searchDirs, fullPath, flags, error);
	}
	
	/**
	 * This function outputs key_file as a string.
	 * Since 2.6
	 * Params:
	 * length =  return location for the length of the
	 *  returned string, or NULL
	 * error =  return location for a GError, or NULL
	 * Returns: a newly allocated string holding the contents of the GKeyFile
	 */
	public char[] toData(uint* length, GError** error)
	{
		// gchar* g_key_file_to_data (GKeyFile *key_file,  gsize *length,  GError **error);
		return Str.toString(g_key_file_to_data(gKeyFile, length, error) );
	}
	
	/**
	 * Returns the name of the start group of the file.
	 * Since 2.6
	 * Returns: The start group of the key file.
	 */
	public char[] getStartGroup()
	{
		// gchar* g_key_file_get_start_group (GKeyFile *key_file);
		return Str.toString(g_key_file_get_start_group(gKeyFile) );
	}
	
	/**
	 * Returns all groups in the key file loaded with key_file. The
	 * array of returned groups will be NULL-terminated, so length may
	 * optionally be NULL.
	 * Since 2.6
	 * Params:
	 * length =  return location for the number of returned groups, or NULL
	 * Returns: a newly-allocated NULL-terminated array of strings.  Use g_strfreev() to free it.
	 */
	public char** getGroups(uint* length)
	{
		// gchar** g_key_file_get_groups (GKeyFile *key_file,  gsize *length);
		return g_key_file_get_groups(gKeyFile, length);
	}
	
	/**
	 * Returns all keys for the group name group_name. The array of
	 * returned keys will be NULL-terminated, so length may
	 * optionally be NULL. In the event that the group_name cannot
	 * be found, NULL is returned and error is set to
	 * G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * length =  return location for the number of keys returned, or NULL
	 * error =  return location for a GError, or NULL
	 * Returns: a newly-allocated NULL-terminated array ofstrings. Use g_strfreev() to free it.
	 */
	public char** getKeys(char[] groupName, uint* length, GError** error)
	{
		// gchar** g_key_file_get_keys (GKeyFile *key_file,  const gchar *group_name,  gsize *length,  GError **error);
		return g_key_file_get_keys(gKeyFile, Str.toStringz(groupName), length, error);
	}
	
	/**
	 * Looks whether the key file has the group group_name.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * Returns: TRUE if group_name is a part of key_file, FALSEotherwise.
	 */
	public int hasGroup(char[] groupName)
	{
		// gboolean g_key_file_has_group (GKeyFile *key_file,  const gchar *group_name);
		return g_key_file_has_group(gKeyFile, Str.toStringz(groupName));
	}
	
	/**
	 * Looks whether the key file has the key key in the group
	 * group_name.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key name
	 * error =  return location for a GError
	 * Returns: TRUE if key is a part of group_name, FALSEotherwise.
	 */
	public int hasKey(char[] groupName, char[] key, GError** error)
	{
		// gboolean g_key_file_has_key (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		return g_key_file_has_key(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), error);
	}
	
	/**
	 * Returns the value associated with key under group_name.
	 * In the event the key cannot be found, NULL is returned and
	 * error is set to G_KEY_FILE_ERROR_KEY_NOT_FOUND. In the
	 * event that the group_name cannot be found, NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * error =  return location for a GError, or NULL
	 * Returns: a newly allocated string or NULL if the specified  key cannot be found.
	 */
	public char[] getValue(char[] groupName, char[] key, GError** error)
	{
		// gchar* g_key_file_get_value (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		return Str.toString(g_key_file_get_value(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), error) );
	}
	
	/**
	 * Returns the value associated with key under group_name.
	 * In the event the key cannot be found, NULL is returned and
	 * error is set to G_KEY_FILE_ERROR_KEY_NOT_FOUND. In the
	 * event that the group_name cannot be found, NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * error =  return location for a GError, or NULL
	 * Returns: a newly allocated string or NULL if the specified  key cannot be found.
	 */
	public char[] getString(char[] groupName, char[] key, GError** error)
	{
		// gchar* g_key_file_get_string (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		return Str.toString(g_key_file_get_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), error) );
	}
	
	/**
	 * Returns the value associated with key under group_name
	 * translated in the given locale if available. If locale is
	 * NULL then the current locale is assumed.
	 * If key cannot be found then NULL is returned and error is set to
	 * G_KEY_FILE_ERROR_KEY_NOT_FOUND. If the value associated
	 * with key cannot be interpreted or no suitable translation can
	 * be found then the untranslated value is returned.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * locale =  a locale or NULL
	 * error =  return location for a GError, or NULL
	 * Returns: a newly allocated string or NULL if the specified  key cannot be found.
	 */
	public char[] getLocaleString(char[] groupName, char[] key, char[] locale, GError** error)
	{
		// gchar* g_key_file_get_locale_string (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *locale,  GError **error);
		return Str.toString(g_key_file_get_locale_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), error) );
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
	 * groupName =  a group name
	 * key =  a key
	 * error =  return location for a GError
	 * Returns: the value associated with the key as a boolean, orFALSE if the key was not found or could not be parsed.
	 */
	public int getBoolean(char[] groupName, char[] key, GError** error)
	{
		// gboolean g_key_file_get_boolean (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		return g_key_file_get_boolean(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), error);
	}
	
	/**
	 * Returns the value associated with key under group_name as an
	 * integer. If group_name is NULL, the start_group is used.
	 * If key cannot be found then 0 is returned and error is set to
	 * G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the value associated
	 * with key cannot be interpreted as an integer then 0 is returned
	 * and error is set to G_KEY_FILE_ERROR_INVALID_VALUE.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * error =  return location for a GError
	 * Returns: the value associated with the key as an integer, or0 if the key was not found or could not be parsed.
	 */
	public int getInteger(char[] groupName, char[] key, GError** error)
	{
		// gint g_key_file_get_integer (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		return g_key_file_get_integer(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), error);
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
	 * groupName =  a group name
	 * key =  a key
	 * error =  return location for a GError
	 * Returns: the value associated with the key as a double, or0.0 if the key was not found or could not be parsed.
	 */
	public double getDouble(char[] groupName, char[] key, GError** error)
	{
		// gdouble g_key_file_get_double (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		return g_key_file_get_double(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), error);
	}
	
	/**
	 * Returns the values associated with key under group_name.
	 * In the event the key cannot be found, NULL is returned and
	 * error is set to G_KEY_FILE_ERROR_KEY_NOT_FOUND. In the
	 * event that the group_name cannot be found, NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * length =  return location for the number of returned strings, or NULL
	 * error =  return location for a GError, or NULL
	 * Returns: a NULL-terminated string array or NULL if the specified  key cannot be found. The array should be freed with g_strfreev().
	 */
	public char** getStringList(char[] groupName, char[] key, uint* length, GError** error)
	{
		// gchar** g_key_file_get_string_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gsize *length,  GError **error);
		return g_key_file_get_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), length, error);
	}
	
	/**
	 * Returns the values associated with key under group_name
	 * translated in the given locale if available. If locale is
	 * NULL then the current locale is assumed.
	 * If key cannot be found then NULL is returned and error is set to
	 * G_KEY_FILE_ERROR_KEY_NOT_FOUND. If the values associated
	 * with key cannot be interpreted or no suitable translations
	 * can be found then the untranslated values are returned.
	 * The returned array is NULL-terminated, so length may optionally be NULL.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * locale =  a locale
	 * length =  return location for the number of returned strings or NULL
	 * error =  return location for a GError or NULL
	 * Returns: a newly allocated NULL-terminated string array or NULL if the key isn't found. The string array should be freed with g_strfreev().
	 */
	public char** getLocaleStringList(char[] groupName, char[] key, char[] locale, uint* length, GError** error)
	{
		// gchar** g_key_file_get_locale_string_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *locale,  gsize *length,  GError **error);
		return g_key_file_get_locale_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), length, error);
	}
	
	/**
	 * Returns the values associated with key under group_name as
	 * booleans. If group_name is NULL, the start_group is used.
	 * If key cannot be found then NULL is returned and error is set to
	 * G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
	 * with key cannot be interpreted as booleans then NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_INVALID_VALUE.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * length =  the number of booleans returned
	 * error =  return location for a GError
	 * Returns: the values associated with the key as a list ofbooleans, or NULL if the key was not found or could not be parsed.
	 */
	public int* getBooleanList(char[] groupName, char[] key, uint* length, GError** error)
	{
		// gboolean* g_key_file_get_boolean_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gsize *length,  GError **error);
		return g_key_file_get_boolean_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), length, error);
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
	 * groupName =  a group name
	 * key =  a key
	 * length =  the number of integers returned
	 * error =  return location for a GError
	 * Returns: the values associated with the key as a list ofintegers, or NULL if the key was not found or could not be parsed.
	 */
	public int* getIntegerList(char[] groupName, char[] key, uint* length, GError** error)
	{
		// gint* g_key_file_get_integer_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gsize *length,  GError **error);
		return g_key_file_get_integer_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), length, error);
	}
	
	/**
	 * Returns the values associated with key under group_name as
	 * doubles. If group_name is NULL, the start group is used.
	 * If key cannot be found then NULL is returned and error is set to
	 * G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
	 * with key cannot be interpreted as doubles then NULL is returned
	 * and error is set to G_KEY_FILE_ERROR_INVALID_VALUE.
	 * Since 2.12
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * length =  the number of doubles returned
	 * error =  return location for a GError
	 * Returns: the values associated with the key as a list ofdoubles, or NULL if the key was not found or could not be parsed.
	 */
	public double* getDoubleList(char[] groupName, char[] key, uint* length, GError** error)
	{
		// gdouble* g_key_file_get_double_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gsize *length,  GError **error);
		return g_key_file_get_double_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), length, error);
	}
	
	/**
	 * Retrieves a comment above key from group_name.
	 * group_name. If key is NULL then comment will
	 * be read from above group_name. If both key
	 * and group_name are NULL, then comment will
	 * be read from above the first group in the file.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name, or NULL
	 * key =  a key
	 * error =  return location for a GError
	 * Returns: a comment that should be freed with g_free()
	 */
	public char[] getComment(char[] groupName, char[] key, GError** error)
	{
		// gchar* g_key_file_get_comment (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		return Str.toString(g_key_file_get_comment(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), error) );
	}
	
	/**
	 * Associates a new value with key under group_name. If key
	 * cannot be found then it is created. If group_name cannot be
	 * found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * value =  a string
	 */
	public void setValue(char[] groupName, char[] key, char[] value)
	{
		// void g_key_file_set_value (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *value);
		g_key_file_set_value(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(value));
	}
	
	/**
	 * Associates a new string value with key under group_name. If
	 * key cannot be found then it is created. If group_name
	 * cannot be found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * string =  a string
	 */
	public void setString(char[] groupName, char[] key, char[] string)
	{
		// void g_key_file_set_string (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *string);
		g_key_file_set_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(string));
	}
	
	/**
	 * Associates a string value for key and locale under
	 * group_name. If the translation for key cannot be found
	 * then it is created.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * locale =  a locale
	 * string =  a string
	 */
	public void setLocaleString(char[] groupName, char[] key, char[] locale, char[] string)
	{
		// void g_key_file_set_locale_string (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *locale,  const gchar *string);
		g_key_file_set_locale_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), Str.toStringz(string));
	}
	
	/**
	 * Associates a new boolean value with key under group_name.
	 * If key cannot be found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * value =  TRUE or FALSE
	 */
	public void setBoolean(char[] groupName, char[] key, int value)
	{
		// void g_key_file_set_boolean (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gboolean value);
		g_key_file_set_boolean(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}
	
	/**
	 * Associates a new integer value with key under group_name.
	 * If key cannot be found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * value =  an integer value
	 */
	public void setInteger(char[] groupName, char[] key, int value)
	{
		// void g_key_file_set_integer (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gint value);
		g_key_file_set_integer(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}
	
	/**
	 * Associates a new double value with key under group_name.
	 * If key cannot be found then it is created. If group_name
	 * is NULL, the start group is used.
	 * Since 2.12
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * value =  an double value
	 */
	public void setDouble(char[] groupName, char[] key, double value)
	{
		// void g_key_file_set_double (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gdouble value);
		g_key_file_set_double(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}
	
	/**
	 * Associates a list of string values for key under group_name.
	 * If key cannot be found then it is created. If group_name
	 * cannot be found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * list =  an array of locale string values
	 * length =  number of locale string values in list
	 */
	public void setStringList(char[] groupName, char[] key, char*[] list, uint length)
	{
		// void g_key_file_set_string_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar * const list[],  gsize length);
		g_key_file_set_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), list, length);
	}
	
	/**
	 * Associates a list of string values for key and locale under
	 * group_name. If the translation for key cannot be found then
	 * it is created.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * locale =  a locale
	 * list =  a NULL-terminated array of locale string values
	 * length =  the length of list
	 */
	public void setLocaleStringList(char[] groupName, char[] key, char[] locale, char*[] list, uint length)
	{
		// void g_key_file_set_locale_string_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *locale,  const gchar * const list[],  gsize length);
		g_key_file_set_locale_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), list, length);
	}
	
	/**
	 * Associates a list of boolean values with key under
	 * group_name. If key cannot be found then it is created.
	 * If group_name is NULL, the start_group is used.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * list =  an array of boolean values
	 * length =  length of list
	 */
	public void setBooleanList(char[] groupName, char[] key, int[] list, uint length)
	{
		// void g_key_file_set_boolean_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gboolean list[],  gsize length);
		g_key_file_set_boolean_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), list, length);
	}
	
	/**
	 * Associates a list of integer values with key under
	 * group_name. If key cannot be found then it is created.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * list =  an array of integer values
	 * length =  number of integer values in list
	 */
	public void setIntegerList(char[] groupName, char[] key, int[] list, uint length)
	{
		// void g_key_file_set_integer_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gint list[],  gsize length);
		g_key_file_set_integer_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), list, length);
	}
	
	/**
	 * Associates a list of double values with key under
	 * group_name. If key cannot be found then it is created.
	 * If group_name is NULL the start group is used.
	 * Since 2.12
	 * Params:
	 * groupName =  a group name
	 * key =  a key
	 * list =  an array of double values
	 * length =  number of double values in list
	 */
	public void setDoubleList(char[] groupName, char[] key, double[] list, uint length)
	{
		// void g_key_file_set_double_list (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  gdouble list[],  gsize length);
		g_key_file_set_double_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), list, length);
	}
	
	/**
	 * Places a comment above key from group_name.
	 * group_name. If key is NULL then comment will
	 * be written above group_name. If both key
	 * and group_name are NULL, then comment will
	 * be written above the first group in the file.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name, or NULL
	 * key =  a key
	 * comment =  a comment
	 * error =  return location for a GError
	 */
	public void setComment(char[] groupName, char[] key, char[] comment, GError** error)
	{
		// void g_key_file_set_comment (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  const gchar *comment,  GError **error);
		g_key_file_set_comment(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(comment), error);
	}
	
	/**
	 * Removes the specified group, group_name,
	 * from the key file.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * error =  return location for a GError or NULL
	 */
	public void removeGroup(char[] groupName, GError** error)
	{
		// void g_key_file_remove_group (GKeyFile *key_file,  const gchar *group_name,  GError **error);
		g_key_file_remove_group(gKeyFile, Str.toStringz(groupName), error);
	}
	
	/**
	 * Removes key in group_name from the key file.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name
	 * key =  a key name to remove
	 * error =  return location for a GError or NULL
	 */
	public void removeKey(char[] groupName, char[] key, GError** error)
	{
		// void g_key_file_remove_key (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		g_key_file_remove_key(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), error);
	}
	
	/**
	 * Removes a comment above key from group_name.
	 * group_name. If key is NULL then comment will
	 * be written above group_name. If both key
	 * and group_name are NULL, then comment will
	 * be written above the first group in the file.
	 * Since 2.6
	 * Params:
	 * groupName =  a group name, or NULL
	 * key =  a key
	 * error =  return location for a GError
	 */
	public void removeComment(char[] groupName, char[] key, GError** error)
	{
		// void g_key_file_remove_comment (GKeyFile *key_file,  const gchar *group_name,  const gchar *key,  GError **error);
		g_key_file_remove_comment(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), error);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
