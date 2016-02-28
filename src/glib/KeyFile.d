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


module glib.KeyFile;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gtkc.glib;
public  import gtkc.glibtypes;


/**
 * The GKeyFile struct contains only private data
 * and should not be accessed directly.
 */
public class KeyFile
{
	/** the main Gtk struct */
	protected GKeyFile* gKeyFile;
	protected bool ownedRef;

	/** Get the main Gtk struct */
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
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GKeyFile* gKeyFile, bool ownedRef = false)
	{
		this.gKeyFile = gKeyFile;
		this.ownedRef = ownedRef;
	}


	/**
	 * Creates a new empty #GKeyFile object. Use
	 * g_key_file_load_from_file(), g_key_file_load_from_data(),
	 * g_key_file_load_from_dirs() or g_key_file_load_from_data_dirs() to
	 * read an existing key file.
	 *
	 * Return: an empty #GKeyFile.
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = g_key_file_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GKeyFile*) p);
	}

	/**
	 * Clears all keys and groups from @key_file, and decreases the
	 * reference count by 1. If the reference count reaches zero,
	 * frees the key file and all its allocated memory.
	 *
	 * Since: 2.6
	 */
	public void free()
	{
		g_key_file_free(gKeyFile);
	}

	/**
	 * Returns the value associated with @key under @group_name as a
	 * boolean.
	 *
	 * If @key cannot be found then %FALSE is returned and @error is set
	 * to #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the value
	 * associated with @key cannot be interpreted as a boolean then %FALSE
	 * is returned and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *
	 * Return: the value associated with the key as a boolean,
	 *     or %FALSE if the key was not found or could not be parsed.
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool getBoolean(string groupName, string key)
	{
		GError* err = null;
		
		auto p = g_key_file_get_boolean(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Returns the values associated with @key under @group_name as
	 * booleans.
	 *
	 * If @key cannot be found then %NULL is returned and @error is set to
	 * #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
	 * with @key cannot be interpreted as booleans then %NULL is returned
	 * and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *
	 * Return: the values associated with the key as a list of booleans, or %NULL if the
	 *     key was not found or could not be parsed. The returned list of booleans
	 *     should be freed with g_free() when no longer needed.
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool[] getBooleanList(string groupName, string key)
	{
		size_t length;
		GError* err = null;
		
		auto p = g_key_file_get_boolean_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		bool[] r = new bool[length];
		for(size_t i = 0; i < length; i++)
		{
			r[i] = p[i] != 0;
		}
		return r;
	}

	/**
	 * Retrieves a comment above @key from @group_name.
	 * If @key is %NULL then @comment will be read from above
	 * @group_name. If both @key and @group_name are %NULL, then
	 * @comment will be read from above the first group in the file.
	 *
	 * Note that the returned string includes the '#' comment markers.
	 *
	 * Params:
	 *     groupName = a group name, or %NULL
	 *     key = a key
	 *
	 * Return: a comment that should be freed with g_free()
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public string getComment(string groupName, string key)
	{
		GError* err = null;
		
		auto retStr = g_key_file_get_comment(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the value associated with @key under @group_name as a
	 * double. If @group_name is %NULL, the start_group is used.
	 *
	 * If @key cannot be found then 0.0 is returned and @error is set to
	 * #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the value associated
	 * with @key cannot be interpreted as a double then 0.0 is returned
	 * and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *
	 * Return: the value associated with the key as a double, or
	 *     0.0 if the key was not found or could not be parsed.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public double getDouble(string groupName, string key)
	{
		GError* err = null;
		
		auto p = g_key_file_get_double(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Returns the values associated with @key under @group_name as
	 * doubles.
	 *
	 * If @key cannot be found then %NULL is returned and @error is set to
	 * #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
	 * with @key cannot be interpreted as doubles then %NULL is returned
	 * and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *
	 * Return: the values associated with the key as a list of doubles, or %NULL if the
	 *     key was not found or could not be parsed. The returned list of doubles
	 *     should be freed with g_free() when no longer needed.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public double[] getDoubleList(string groupName, string key)
	{
		size_t length;
		GError* err = null;
		
		auto p = g_key_file_get_double_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p[0 .. length];
	}

	/**
	 * Returns all groups in the key file loaded with @key_file.
	 * The array of returned groups will be %NULL-terminated, so
	 * @length may optionally be %NULL.
	 *
	 * Params:
	 *     length = return location for the number of returned groups, or %NULL
	 *
	 * Return: a newly-allocated %NULL-terminated array of strings.
	 *     Use g_strfreev() to free it.
	 *
	 * Since: 2.6
	 */
	public string[] getGroups(out size_t length)
	{
		auto retStr = g_key_file_get_groups(gKeyFile, &length);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns the value associated with @key under @group_name as a signed
	 * 64-bit integer. This is similar to g_key_file_get_integer() but can return
	 * 64-bit results without truncation.
	 *
	 * Params:
	 *     groupName = a non-%NULL group name
	 *     key = a non-%NULL key
	 *
	 * Return: the value associated with the key as a signed 64-bit integer, or
	 *     0 if the key was not found or could not be parsed.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public long getInt64(string groupName, string key)
	{
		GError* err = null;
		
		auto p = g_key_file_get_int64(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Returns the value associated with @key under @group_name as an
	 * integer.
	 *
	 * If @key cannot be found then 0 is returned and @error is set to
	 * #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the value associated
	 * with @key cannot be interpreted as an integer then 0 is returned
	 * and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *
	 * Return: the value associated with the key as an integer, or
	 *     0 if the key was not found or could not be parsed.
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public int getInteger(string groupName, string key)
	{
		GError* err = null;
		
		auto p = g_key_file_get_integer(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Returns the values associated with @key under @group_name as
	 * integers.
	 *
	 * If @key cannot be found then %NULL is returned and @error is set to
	 * #G_KEY_FILE_ERROR_KEY_NOT_FOUND. Likewise, if the values associated
	 * with @key cannot be interpreted as integers then %NULL is returned
	 * and @error is set to #G_KEY_FILE_ERROR_INVALID_VALUE.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *
	 * Return: the values associated with the key as a list of integers, or %NULL if
	 *     the key was not found or could not be parsed. The returned list of
	 *     integers should be freed with g_free() when no longer needed.
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public int[] getIntegerList(string groupName, string key)
	{
		size_t length;
		GError* err = null;
		
		auto p = g_key_file_get_integer_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p[0 .. length];
	}

	/**
	 * Returns all keys for the group name @group_name.  The array of
	 * returned keys will be %NULL-terminated, so @length may
	 * optionally be %NULL. In the event that the @group_name cannot
	 * be found, %NULL is returned and @error is set to
	 * #G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 *
	 * Params:
	 *     groupName = a group name
	 *     length = return location for the number of keys returned, or %NULL
	 *
	 * Return: a newly-allocated %NULL-terminated array of strings.
	 *     Use g_strfreev() to free it.
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public string[] getKeys(string groupName, out size_t length)
	{
		GError* err = null;
		
		auto retStr = g_key_file_get_keys(gKeyFile, Str.toStringz(groupName), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns the value associated with @key under @group_name
	 * translated in the given @locale if available.  If @locale is
	 * %NULL then the current locale is assumed.
	 *
	 * If @key cannot be found then %NULL is returned and @error is set
	 * to #G_KEY_FILE_ERROR_KEY_NOT_FOUND. If the value associated
	 * with @key cannot be interpreted or no suitable translation can
	 * be found then the untranslated value is returned.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     locale = a locale identifier or %NULL
	 *
	 * Return: a newly allocated string or %NULL if the specified
	 *     key cannot be found.
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public string getLocaleString(string groupName, string key, string locale)
	{
		GError* err = null;
		
		auto retStr = g_key_file_get_locale_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the values associated with @key under @group_name
	 * translated in the given @locale if available.  If @locale is
	 * %NULL then the current locale is assumed.
	 *
	 * If @key cannot be found then %NULL is returned and @error is set
	 * to #G_KEY_FILE_ERROR_KEY_NOT_FOUND. If the values associated
	 * with @key cannot be interpreted or no suitable translations
	 * can be found then the untranslated values are returned. The
	 * returned array is %NULL-terminated, so @length may optionally
	 * be %NULL.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     locale = a locale identifier or %NULL
	 *
	 * Return: a newly allocated %NULL-terminated string array
	 *     or %NULL if the key isn't found. The string array should be freed
	 *     with g_strfreev().
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public string[] getLocaleStringList(string groupName, string key, string locale)
	{
		size_t length;
		GError* err = null;
		
		auto retStr = g_key_file_get_locale_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Returns the name of the start group of the file.
	 *
	 * Return: The start group of the key file.
	 *
	 * Since: 2.6
	 */
	public string getStartGroup()
	{
		auto retStr = g_key_file_get_start_group(gKeyFile);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the string value associated with @key under @group_name.
	 * Unlike g_key_file_get_value(), this function handles escape sequences
	 * like \s.
	 *
	 * In the event the key cannot be found, %NULL is returned and
	 * @error is set to #G_KEY_FILE_ERROR_KEY_NOT_FOUND.  In the
	 * event that the @group_name cannot be found, %NULL is returned
	 * and @error is set to #G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *
	 * Return: a newly allocated string or %NULL if the specified
	 *     key cannot be found.
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public string getString(string groupName, string key)
	{
		GError* err = null;
		
		auto retStr = g_key_file_get_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the values associated with @key under @group_name.
	 *
	 * In the event the key cannot be found, %NULL is returned and
	 * @error is set to #G_KEY_FILE_ERROR_KEY_NOT_FOUND.  In the
	 * event that the @group_name cannot be found, %NULL is returned
	 * and @error is set to #G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *
	 * Return: a %NULL-terminated string array or %NULL if the specified
	 *     key cannot be found. The array should be freed with g_strfreev().
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public string[] getStringList(string groupName, string key)
	{
		size_t length;
		GError* err = null;
		
		auto retStr = g_key_file_get_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Returns the value associated with @key under @group_name as an unsigned
	 * 64-bit integer. This is similar to g_key_file_get_integer() but can return
	 * large positive results without truncation.
	 *
	 * Params:
	 *     groupName = a non-%NULL group name
	 *     key = a non-%NULL key
	 *
	 * Return: the value associated with the key as an unsigned 64-bit integer,
	 *     or 0 if the key was not found or could not be parsed.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public ulong getUint64(string groupName, string key)
	{
		GError* err = null;
		
		auto p = g_key_file_get_uint64(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Returns the raw value associated with @key under @group_name.
	 * Use g_key_file_get_string() to retrieve an unescaped UTF-8 string.
	 *
	 * In the event the key cannot be found, %NULL is returned and
	 * @error is set to #G_KEY_FILE_ERROR_KEY_NOT_FOUND.  In the
	 * event that the @group_name cannot be found, %NULL is returned
	 * and @error is set to #G_KEY_FILE_ERROR_GROUP_NOT_FOUND.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *
	 * Return: a newly allocated string or %NULL if the specified
	 *     key cannot be found.
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public string getValue(string groupName, string key)
	{
		GError* err = null;
		
		auto retStr = g_key_file_get_value(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Looks whether the key file has the group @group_name.
	 *
	 * Params:
	 *     groupName = a group name
	 *
	 * Return: %TRUE if @group_name is a part of @key_file, %FALSE
	 *     otherwise.
	 *
	 * Since: 2.6
	 */
	public bool hasGroup(string groupName)
	{
		return g_key_file_has_group(gKeyFile, Str.toStringz(groupName)) != 0;
	}

	/**
	 * Looks whether the key file has the key @key in the group
	 * @group_name.
	 *
	 * Note that this function does not follow the rules for #GError strictly;
	 * the return value both carries meaning and signals an error.  To use
	 * this function, you must pass a #GError pointer in @error, and check
	 * whether it is not %NULL to see if an error occurred.
	 *
	 * Language bindings should use g_key_file_get_value() to test whether
	 * or not a key exists.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key name
	 *
	 * Return: %TRUE if @key is a part of @group_name, %FALSE otherwise
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool hasKey(string groupName, string key)
	{
		GError* err = null;
		
		auto p = g_key_file_has_key(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Loads a key file from memory into an empty #GKeyFile structure.
	 * If the object cannot be created then %error is set to a #GKeyFileError.
	 *
	 * Params:
	 *     data = key file loaded in memory
	 *     length = the length of @data in bytes (or (gsize)-1 if data is nul-terminated)
	 *     flags = flags from #GKeyFileFlags
	 *
	 * Return: %TRUE if a key file could be loaded, %FALSE otherwise
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFromData(string data, size_t length, GKeyFileFlags flags)
	{
		GError* err = null;
		
		auto p = g_key_file_load_from_data(gKeyFile, Str.toStringz(data), length, flags, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * This function looks for a key file named @file in the paths
	 * returned from g_get_user_data_dir() and g_get_system_data_dirs(),
	 * loads the file into @key_file and returns the file's full path in
	 * @full_path.  If the file could not be loaded then an %error is
	 * set to either a #GFileError or #GKeyFileError.
	 *
	 * Params:
	 *     file = a relative path to a filename to open and parse
	 *     fullPath = return location for a string containing the full path
	 *         of the file, or %NULL
	 *     flags = flags from #GKeyFileFlags
	 *
	 * Return: %TRUE if a key file could be loaded, %FALSE othewise
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFromDataDirs(string file, out string fullPath, GKeyFileFlags flags)
	{
		char* outfullPath = null;
		GError* err = null;
		
		auto p = g_key_file_load_from_data_dirs(gKeyFile, Str.toStringz(file), &outfullPath, flags, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		fullPath = Str.toString(outfullPath);
		
		return p;
	}

	/**
	 * This function looks for a key file named @file in the paths
	 * specified in @search_dirs, loads the file into @key_file and
	 * returns the file's full path in @full_path.  If the file could not
	 * be loaded then an %error is set to either a #GFileError or
	 * #GKeyFileError.
	 *
	 * Params:
	 *     file = a relative path to a filename to open and parse
	 *     searchDirs = %NULL-terminated array of directories to search
	 *     fullPath = return location for a string containing the full path
	 *         of the file, or %NULL
	 *     flags = flags from #GKeyFileFlags
	 *
	 * Return: %TRUE if a key file could be loaded, %FALSE otherwise
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFromDirs(string file, string[] searchDirs, out string fullPath, GKeyFileFlags flags)
	{
		char* outfullPath = null;
		GError* err = null;
		
		auto p = g_key_file_load_from_dirs(gKeyFile, Str.toStringz(file), Str.toStringzArray(searchDirs), &outfullPath, flags, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		fullPath = Str.toString(outfullPath);
		
		return p;
	}

	/**
	 * Loads a key file into an empty #GKeyFile structure.
	 * If the file could not be loaded then @error is set to
	 * either a #GFileError or #GKeyFileError.
	 *
	 * Params:
	 *     file = the path of a filename to load, in the GLib filename encoding
	 *     flags = flags from #GKeyFileFlags
	 *
	 * Return: %TRUE if a key file could be loaded, %FALSE otherwise
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFromFile(string file, GKeyFileFlags flags)
	{
		GError* err = null;
		
		auto p = g_key_file_load_from_file(gKeyFile, Str.toStringz(file), flags, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Increases the reference count of @key_file.
	 *
	 * Return: the same @key_file.
	 *
	 * Since: 2.32
	 */
	public KeyFile doref()
	{
		auto p = g_key_file_ref(gKeyFile);
		
		if(p is null)
		{
			return null;
		}
		
		return new KeyFile(cast(GKeyFile*) p, true);
	}

	/**
	 * Removes a comment above @key from @group_name.
	 * If @key is %NULL then @comment will be removed above @group_name.
	 * If both @key and @group_name are %NULL, then @comment will
	 * be removed above the first group in the file.
	 *
	 * Params:
	 *     groupName = a group name, or %NULL
	 *     key = a key
	 *
	 * Return: %TRUE if the comment was removed, %FALSE otherwise
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool removeComment(string groupName, string key)
	{
		GError* err = null;
		
		auto p = g_key_file_remove_comment(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Removes the specified group, @group_name,
	 * from the key file.
	 *
	 * Params:
	 *     groupName = a group name
	 *
	 * Return: %TRUE if the group was removed, %FALSE otherwise
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool removeGroup(string groupName)
	{
		GError* err = null;
		
		auto p = g_key_file_remove_group(gKeyFile, Str.toStringz(groupName), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Removes @key in @group_name from the key file.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key name to remove
	 *
	 * Return: %TRUE if the key was removed, %FALSE otherwise
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool removeKey(string groupName, string key)
	{
		GError* err = null;
		
		auto p = g_key_file_remove_key(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Writes the contents of @key_file to @filename using
	 * g_file_set_contents().
	 *
	 * This function can fail for any of the reasons that
	 * g_file_set_contents() may fail.
	 *
	 * Params:
	 *     filename = the name of the file to write to
	 *
	 * Return: %TRUE if successful, else %FALSE with @error set
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public bool saveToFile(string filename)
	{
		GError* err = null;
		
		auto p = g_key_file_save_to_file(gKeyFile, Str.toStringz(filename), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Associates a new boolean value with @key under @group_name.
	 * If @key cannot be found then it is created.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     value = %TRUE or %FALSE
	 *
	 * Since: 2.6
	 */
	public void setBoolean(string groupName, string key, bool value)
	{
		g_key_file_set_boolean(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}

	/**
	 * Associates a list of boolean values with @key under @group_name.
	 * If @key cannot be found then it is created.
	 * If @group_name is %NULL, the start_group is used.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     list = an array of boolean values
	 *     length = length of @list
	 *
	 * Since: 2.6
	 */
	public void setBooleanList(string groupName, string key, bool[] list)
	{
		int[] listArray = new int[list.length];
		for ( int i = 0; i < list.length; i++ )
		{
			listArray[i] = list[i] ? 1 : 0;
		}
		
		g_key_file_set_boolean_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), listArray.ptr, cast(size_t)list.length);
	}

	/**
	 * Places a comment above @key from @group_name.
	 *
	 * If @key is %NULL then @comment will be written above @group_name.
	 * If both @key and @group_name  are %NULL, then @comment will be
	 * written above the first group in the file.
	 *
	 * Note that this function prepends a '#' comment marker to
	 * each line of @comment.
	 *
	 * Params:
	 *     groupName = a group name, or %NULL
	 *     key = a key
	 *     comment = a comment
	 *
	 * Return: %TRUE if the comment was written, %FALSE otherwise
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public bool setComment(string groupName, string key, string comment)
	{
		GError* err = null;
		
		auto p = g_key_file_set_comment(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(comment), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Associates a new double value with @key under @group_name.
	 * If @key cannot be found then it is created.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     value = an double value
	 *
	 * Since: 2.12
	 */
	public void setDouble(string groupName, string key, double value)
	{
		g_key_file_set_double(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}

	/**
	 * Associates a list of double values with @key under
	 * @group_name.  If @key cannot be found then it is created.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     list = an array of double values
	 *     length = number of double values in @list
	 *
	 * Since: 2.12
	 */
	public void setDoubleList(string groupName, string key, double[] list)
	{
		g_key_file_set_double_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), list.ptr, cast(size_t)list.length);
	}

	/**
	 * Associates a new integer value with @key under @group_name.
	 * If @key cannot be found then it is created.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     value = an integer value
	 *
	 * Since: 2.26
	 */
	public void setInt64(string groupName, string key, long value)
	{
		g_key_file_set_int64(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}

	/**
	 * Associates a new integer value with @key under @group_name.
	 * If @key cannot be found then it is created.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     value = an integer value
	 *
	 * Since: 2.6
	 */
	public void setInteger(string groupName, string key, int value)
	{
		g_key_file_set_integer(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}

	/**
	 * Associates a list of integer values with @key under @group_name.
	 * If @key cannot be found then it is created.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     list = an array of integer values
	 *     length = number of integer values in @list
	 *
	 * Since: 2.6
	 */
	public void setIntegerList(string groupName, string key, int[] list)
	{
		g_key_file_set_integer_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), list.ptr, cast(size_t)list.length);
	}

	/**
	 * Sets the character which is used to separate
	 * values in lists. Typically ';' or ',' are used
	 * as separators. The default list separator is ';'.
	 *
	 * Params:
	 *     separator = the separator
	 *
	 * Since: 2.6
	 */
	public void setListSeparator(char separator)
	{
		g_key_file_set_list_separator(gKeyFile, separator);
	}

	/**
	 * Associates a string value for @key and @locale under @group_name.
	 * If the translation for @key cannot be found then it is created.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     locale = a locale identifier
	 *     str = a string
	 *
	 * Since: 2.6
	 */
	public void setLocaleString(string groupName, string key, string locale, string str)
	{
		g_key_file_set_locale_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), Str.toStringz(str));
	}

	/**
	 * Associates a list of string values for @key and @locale under
	 * @group_name.  If the translation for @key cannot be found then
	 * it is created.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     locale = a locale identifier
	 *     list = a %NULL-terminated array of locale string values
	 *     length = the length of @list
	 *
	 * Since: 2.6
	 */
	public void setLocaleStringList(string groupName, string key, string locale, string list)
	{
		g_key_file_set_locale_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(locale), Str.toStringz(list), cast(size_t)list.length);
	}

	/**
	 * Associates a new string value with @key under @group_name.
	 * If @key cannot be found then it is created.
	 * If @group_name cannot be found then it is created.
	 * Unlike g_key_file_set_value(), this function handles characters
	 * that need escaping, such as newlines.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     str = a string
	 *
	 * Since: 2.6
	 */
	public void setString(string groupName, string key, string str)
	{
		g_key_file_set_string(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(str));
	}

	/**
	 * Associates a list of string values for @key under @group_name.
	 * If @key cannot be found then it is created.
	 * If @group_name cannot be found then it is created.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     list = an array of string values
	 *     length = number of string values in @list
	 *
	 * Since: 2.6
	 */
	public void setStringList(string groupName, string key, string[] list)
	{
		g_key_file_set_string_list(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringzArray(list), cast(size_t)list.length);
	}

	/**
	 * Associates a new integer value with @key under @group_name.
	 * If @key cannot be found then it is created.
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     value = an integer value
	 *
	 * Since: 2.26
	 */
	public void setUint64(string groupName, string key, ulong value)
	{
		g_key_file_set_uint64(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), value);
	}

	/**
	 * Associates a new value with @key under @group_name.
	 *
	 * If @key cannot be found then it is created. If @group_name cannot
	 * be found then it is created. To set an UTF-8 string which may contain
	 * characters that need escaping (such as newlines or spaces), use
	 * g_key_file_set_string().
	 *
	 * Params:
	 *     groupName = a group name
	 *     key = a key
	 *     value = a string
	 *
	 * Since: 2.6
	 */
	public void setValue(string groupName, string key, string value)
	{
		g_key_file_set_value(gKeyFile, Str.toStringz(groupName), Str.toStringz(key), Str.toStringz(value));
	}

	/**
	 * This function outputs @key_file as a string.
	 *
	 * Note that this function never reports an error,
	 * so it is safe to pass %NULL as @error.
	 *
	 * Params:
	 *     length = return location for the length of the
	 *         returned string, or %NULL
	 *
	 * Return: a newly allocated string holding
	 *     the contents of the #GKeyFile
	 *
	 * Since: 2.6
	 *
	 * Throws: GException on failure.
	 */
	public string toData(out size_t length)
	{
		GError* err = null;
		
		auto retStr = g_key_file_to_data(gKeyFile, &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Decreases the reference count of @key_file by 1. If the reference count
	 * reaches zero, frees the key file and all its allocated memory.
	 *
	 * Since: 2.32
	 */
	public void unref()
	{
		g_key_file_unref(gKeyFile);
	}

	/** */
	public static GQuark errorQuark()
	{
		return g_key_file_error_quark();
	}
}
