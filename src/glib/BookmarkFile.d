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


module glib.BookmarkFile;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gtkc.glib;
public  import gtkc.glibtypes;


/**
 * The `GBookmarkFile` structure contains only
 * private data and should not be directly accessed.
 */
public class BookmarkFile
{
	/** the main Gtk struct */
	protected GBookmarkFile* gBookmarkFile;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GBookmarkFile* getBookmarkFileStruct()
	{
		return gBookmarkFile;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gBookmarkFile;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GBookmarkFile* gBookmarkFile, bool ownedRef = false)
	{
		this.gBookmarkFile = gBookmarkFile;
		this.ownedRef = ownedRef;
	}


	/**
	 * Adds the application with @name and @exec to the list of
	 * applications that have registered a bookmark for @uri into
	 * @bookmark.
	 *
	 * Every bookmark inside a #GBookmarkFile must have at least an
	 * application registered.  Each application must provide a name, a
	 * command line useful for launching the bookmark, the number of times
	 * the bookmark has been registered by the application and the last
	 * time the application registered this bookmark.
	 *
	 * If @name is %NULL, the name of the application will be the
	 * same returned by g_get_application_name(); if @exec is %NULL, the
	 * command line will be a composition of the program name as
	 * returned by g_get_prgname() and the "\%u" modifier, which will be
	 * expanded to the bookmark's URI.
	 *
	 * This function will automatically take care of updating the
	 * registrations count and timestamping in case an application
	 * with the same @name had already registered a bookmark for
	 * @uri inside @bookmark.
	 *
	 * If no bookmark for @uri is found, one is created.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     name = the name of the application registering the bookmark
	 *         or %NULL
	 *     exec = command line to be used to launch the bookmark or %NULL
	 *
	 * Since: 2.12
	 */
	public void addApplication(string uri, string name, string exec)
	{
		g_bookmark_file_add_application(gBookmarkFile, Str.toStringz(uri), Str.toStringz(name), Str.toStringz(exec));
	}

	/**
	 * Adds @group to the list of groups to which the bookmark for @uri
	 * belongs to.
	 *
	 * If no bookmark for @uri is found then it is created.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     group = the group name to be added
	 *
	 * Since: 2.12
	 */
	public void addGroup(string uri, string group)
	{
		g_bookmark_file_add_group(gBookmarkFile, Str.toStringz(uri), Str.toStringz(group));
	}

	/**
	 * Frees a #GBookmarkFile.
	 *
	 * Since: 2.12
	 */
	public void free()
	{
		g_bookmark_file_free(gBookmarkFile);
	}

	/**
	 * Gets the time the bookmark for @uri was added to @bookmark
	 *
	 * In the event the URI cannot be found, -1 is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: a timestamp
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public uint getAdded(string uri)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_get_added(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Gets the registration informations of @app_name for the bookmark for
	 * @uri.  See g_bookmark_file_set_app_info() for more informations about
	 * the returned data.
	 *
	 * The string returned in @app_exec must be freed.
	 *
	 * In the event the URI cannot be found, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.  In the
	 * event that no application with name @app_name has registered a bookmark
	 * for @uri,  %FALSE is returned and error is set to
	 * #G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED. In the event that unquoting
	 * the command line fails, an error of the #G_SHELL_ERROR domain is
	 * set and %FALSE is returned.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     name = an application's name
	 *     exec = return location for the command line of the application, or %NULL
	 *     count = return location for the registration count, or %NULL
	 *     stamp = return location for the last registration time, or %NULL
	 *
	 * Return: %TRUE on success.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool getAppInfo(string uri, string name, out string exec, out uint count, out uint stamp)
	{
		char* outexec = null;
		GError* err = null;
		
		auto p = g_bookmark_file_get_app_info(gBookmarkFile, Str.toStringz(uri), Str.toStringz(name), &outexec, &count, &stamp, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		exec = Str.toString(outexec);
		
		return p;
	}

	/**
	 * Retrieves the names of the applications that have registered the
	 * bookmark for @uri.
	 *
	 * In the event the URI cannot be found, %NULL is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: a newly allocated %NULL-terminated array of strings.
	 *     Use g_strfreev() to free it.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public string[] getApplications(string uri)
	{
		size_t length;
		GError* err = null;
		
		auto retStr = g_bookmark_file_get_applications(gBookmarkFile, Str.toStringz(uri), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Retrieves the description of the bookmark for @uri.
	 *
	 * In the event the URI cannot be found, %NULL is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: a newly allocated string or %NULL if the specified
	 *     URI cannot be found.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public string getDescription(string uri)
	{
		GError* err = null;
		
		auto retStr = g_bookmark_file_get_description(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Retrieves the list of group names of the bookmark for @uri.
	 *
	 * In the event the URI cannot be found, %NULL is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * The returned array is %NULL terminated, so @length may optionally
	 * be %NULL.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: a newly allocated %NULL-terminated array of group names.
	 *     Use g_strfreev() to free it.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public string[] getGroups(string uri)
	{
		size_t length;
		GError* err = null;
		
		auto retStr = g_bookmark_file_get_groups(gBookmarkFile, Str.toStringz(uri), &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Gets the icon of the bookmark for @uri.
	 *
	 * In the event the URI cannot be found, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     href = return location for the icon's location or %NULL
	 *     mimeType = return location for the icon's MIME type or %NULL
	 *
	 * Return: %TRUE if the icon for the bookmark for the URI was found.
	 *     You should free the returned strings.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool getIcon(string uri, out string href, out string mimeType)
	{
		char* outhref = null;
		char* outmimeType = null;
		GError* err = null;
		
		auto p = g_bookmark_file_get_icon(gBookmarkFile, Str.toStringz(uri), &outhref, &outmimeType, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		href = Str.toString(outhref);
		mimeType = Str.toString(outmimeType);
		
		return p;
	}

	/**
	 * Gets whether the private flag of the bookmark for @uri is set.
	 *
	 * In the event the URI cannot be found, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.  In the
	 * event that the private flag cannot be found, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_INVALID_VALUE.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: %TRUE if the private flag is set, %FALSE otherwise.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool getIsPrivate(string uri)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_get_is_private(gBookmarkFile, Str.toStringz(uri), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Retrieves the MIME type of the resource pointed by @uri.
	 *
	 * In the event the URI cannot be found, %NULL is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.  In the
	 * event that the MIME type cannot be found, %NULL is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_INVALID_VALUE.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: a newly allocated string or %NULL if the specified
	 *     URI cannot be found.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public string getMimeType(string uri)
	{
		GError* err = null;
		
		auto retStr = g_bookmark_file_get_mime_type(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the time when the bookmark for @uri was last modified.
	 *
	 * In the event the URI cannot be found, -1 is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: a timestamp
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public uint getModified(string uri)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_get_modified(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Gets the number of bookmarks inside @bookmark.
	 *
	 * Return: the number of bookmarks
	 *
	 * Since: 2.12
	 */
	public int getSize()
	{
		return g_bookmark_file_get_size(gBookmarkFile);
	}

	/**
	 * Returns the title of the bookmark for @uri.
	 *
	 * If @uri is %NULL, the title of @bookmark is returned.
	 *
	 * In the event the URI cannot be found, %NULL is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * Params:
	 *     uri = a valid URI or %NULL
	 *
	 * Return: a newly allocated string or %NULL if the specified
	 *     URI cannot be found.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public string getTitle(string uri)
	{
		GError* err = null;
		
		auto retStr = g_bookmark_file_get_title(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns all URIs of the bookmarks in the bookmark file @bookmark.
	 * The array of returned URIs will be %NULL-terminated, so @length may
	 * optionally be %NULL.
	 *
	 * Return: a newly allocated %NULL-terminated array of strings.
	 *     Use g_strfreev() to free it.
	 *
	 * Since: 2.12
	 */
	public string[] getUris()
	{
		size_t length;
		
		auto retStr = g_bookmark_file_get_uris(gBookmarkFile, &length);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, length);
	}

	/**
	 * Gets the time the bookmark for @uri was last visited.
	 *
	 * In the event the URI cannot be found, -1 is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: a timestamp.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public uint getVisited(string uri)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_get_visited(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Checks whether the bookmark for @uri inside @bookmark has been
	 * registered by application @name.
	 *
	 * In the event the URI cannot be found, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     name = the name of the application
	 *
	 * Return: %TRUE if the application @name was found
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool hasApplication(string uri, string name)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_has_application(gBookmarkFile, Str.toStringz(uri), Str.toStringz(name), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Checks whether @group appears in the list of groups to which
	 * the bookmark for @uri belongs to.
	 *
	 * In the event the URI cannot be found, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     group = the group name to be searched
	 *
	 * Return: %TRUE if @group was found.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool hasGroup(string uri, string group)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_has_group(gBookmarkFile, Str.toStringz(uri), Str.toStringz(group), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Looks whether the desktop bookmark has an item with its URI set to @uri.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: %TRUE if @uri is inside @bookmark, %FALSE otherwise
	 *
	 * Since: 2.12
	 */
	public bool hasItem(string uri)
	{
		return g_bookmark_file_has_item(gBookmarkFile, Str.toStringz(uri)) != 0;
	}

	/**
	 * Loads a bookmark file from memory into an empty #GBookmarkFile
	 * structure.  If the object cannot be created then @error is set to a
	 * #GBookmarkFileError.
	 *
	 * Params:
	 *     data = desktop bookmarks loaded in memory
	 *     length = the length of @data in bytes
	 *
	 * Return: %TRUE if a desktop bookmark could be loaded.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFromData(string data, size_t length)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_load_from_data(gBookmarkFile, Str.toStringz(data), length, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * This function looks for a desktop bookmark file named @file in the
	 * paths returned from g_get_user_data_dir() and g_get_system_data_dirs(),
	 * loads the file into @bookmark and returns the file's full path in
	 * @full_path.  If the file could not be loaded then an %error is
	 * set to either a #GFileError or #GBookmarkFileError.
	 *
	 * Params:
	 *     file = a relative path to a filename to open and parse
	 *     fullPath = return location for a string containing the full path
	 *         of the file, or %NULL
	 *
	 * Return: %TRUE if a key file could be loaded, %FALSE otherwise
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFromDataDirs(string file, out string fullPath)
	{
		char* outfullPath = null;
		GError* err = null;
		
		auto p = g_bookmark_file_load_from_data_dirs(gBookmarkFile, Str.toStringz(file), &outfullPath, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		fullPath = Str.toString(outfullPath);
		
		return p;
	}

	/**
	 * Loads a desktop bookmark file into an empty #GBookmarkFile structure.
	 * If the file could not be loaded then @error is set to either a #GFileError
	 * or #GBookmarkFileError.
	 *
	 * Params:
	 *     filename = the path of a filename to load, in the GLib file name encoding
	 *
	 * Return: %TRUE if a desktop bookmark file could be loaded
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool loadFromFile(string filename)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_load_from_file(gBookmarkFile, Str.toStringz(filename), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Changes the URI of a bookmark item from @old_uri to @new_uri.  Any
	 * existing bookmark for @new_uri will be overwritten.  If @new_uri is
	 * %NULL, then the bookmark is removed.
	 *
	 * In the event the URI cannot be found, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 *
	 * Params:
	 *     oldUri = a valid URI
	 *     newUri = a valid URI, or %NULL
	 *
	 * Return: %TRUE if the URI was successfully changed
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool moveItem(string oldUri, string newUri)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_move_item(gBookmarkFile, Str.toStringz(oldUri), Str.toStringz(newUri), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Removes application registered with @name from the list of applications
	 * that have registered a bookmark for @uri inside @bookmark.
	 *
	 * In the event the URI cannot be found, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * In the event that no application with name @app_name has registered
	 * a bookmark for @uri,  %FALSE is returned and error is set to
	 * #G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     name = the name of the application
	 *
	 * Return: %TRUE if the application was successfully removed.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool removeApplication(string uri, string name)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_remove_application(gBookmarkFile, Str.toStringz(uri), Str.toStringz(name), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Removes @group from the list of groups to which the bookmark
	 * for @uri belongs to.
	 *
	 * In the event the URI cannot be found, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * In the event no group was defined, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_INVALID_VALUE.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     group = the group name to be removed
	 *
	 * Return: %TRUE if @group was successfully removed.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool removeGroup(string uri, string group)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_remove_group(gBookmarkFile, Str.toStringz(uri), Str.toStringz(group), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Removes the bookmark for @uri from the bookmark file @bookmark.
	 *
	 * Params:
	 *     uri = a valid URI
	 *
	 * Return: %TRUE if the bookmark was removed successfully.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool removeItem(string uri)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_remove_item(gBookmarkFile, Str.toStringz(uri), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Sets the time the bookmark for @uri was added into @bookmark.
	 *
	 * If no bookmark for @uri is found then it is created.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     added = a timestamp or -1 to use the current time
	 *
	 * Since: 2.12
	 */
	public void setAdded(string uri, uint added)
	{
		g_bookmark_file_set_added(gBookmarkFile, Str.toStringz(uri), added);
	}

	/**
	 * Sets the meta-data of application @name inside the list of
	 * applications that have registered a bookmark for @uri inside
	 * @bookmark.
	 *
	 * You should rarely use this function; use g_bookmark_file_add_application()
	 * and g_bookmark_file_remove_application() instead.
	 *
	 * @name can be any UTF-8 encoded string used to identify an
	 * application.
	 * @exec can have one of these two modifiers: "\%f", which will
	 * be expanded as the local file name retrieved from the bookmark's
	 * URI; "\%u", which will be expanded as the bookmark's URI.
	 * The expansion is done automatically when retrieving the stored
	 * command line using the g_bookmark_file_get_app_info() function.
	 * @count is the number of times the application has registered the
	 * bookmark; if is < 0, the current registration count will be increased
	 * by one, if is 0, the application with @name will be removed from
	 * the list of registered applications.
	 * @stamp is the Unix time of the last registration; if it is -1, the
	 * current time will be used.
	 *
	 * If you try to remove an application by setting its registration count to
	 * zero, and no bookmark for @uri is found, %FALSE is returned and
	 * @error is set to #G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND; similarly,
	 * in the event that no application @name has registered a bookmark
	 * for @uri,  %FALSE is returned and error is set to
	 * #G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED.  Otherwise, if no bookmark
	 * for @uri is found, one is created.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     name = an application's name
	 *     exec = an application's command line
	 *     count = the number of registrations done for this application
	 *     stamp = the time of the last registration for this application
	 *
	 * Return: %TRUE if the application's meta-data was successfully
	 *     changed.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool setAppInfo(string uri, string name, string exec, int count, uint stamp)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_set_app_info(gBookmarkFile, Str.toStringz(uri), Str.toStringz(name), Str.toStringz(exec), count, stamp, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Sets @description as the description of the bookmark for @uri.
	 *
	 * If @uri is %NULL, the description of @bookmark is set.
	 *
	 * If a bookmark for @uri cannot be found then it is created.
	 *
	 * Params:
	 *     uri = a valid URI or %NULL
	 *     description = a string
	 *
	 * Since: 2.12
	 */
	public void setDescription(string uri, string description)
	{
		g_bookmark_file_set_description(gBookmarkFile, Str.toStringz(uri), Str.toStringz(description));
	}

	/**
	 * Sets a list of group names for the item with URI @uri.  Each previously
	 * set group name list is removed.
	 *
	 * If @uri cannot be found then an item for it is created.
	 *
	 * Params:
	 *     uri = an item's URI
	 *     groups = an array of group names, or %NULL to remove all groups
	 *     length = number of group name values in @groups
	 *
	 * Since: 2.12
	 */
	public void setGroups(string uri, string[] groups)
	{
		g_bookmark_file_set_groups(gBookmarkFile, Str.toStringz(uri), Str.toStringzArray(groups), cast(size_t)groups.length);
	}

	/**
	 * Sets the icon for the bookmark for @uri. If @href is %NULL, unsets
	 * the currently set icon. @href can either be a full URL for the icon
	 * file or the icon name following the Icon Naming specification.
	 *
	 * If no bookmark for @uri is found one is created.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     href = the URI of the icon for the bookmark, or %NULL
	 *     mimeType = the MIME type of the icon for the bookmark
	 *
	 * Since: 2.12
	 */
	public void setIcon(string uri, string href, string mimeType)
	{
		g_bookmark_file_set_icon(gBookmarkFile, Str.toStringz(uri), Str.toStringz(href), Str.toStringz(mimeType));
	}

	/**
	 * Sets the private flag of the bookmark for @uri.
	 *
	 * If a bookmark for @uri cannot be found then it is created.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     isPrivate = %TRUE if the bookmark should be marked as private
	 *
	 * Since: 2.12
	 */
	public void setIsPrivate(string uri, bool isPrivate)
	{
		g_bookmark_file_set_is_private(gBookmarkFile, Str.toStringz(uri), isPrivate);
	}

	/**
	 * Sets @mime_type as the MIME type of the bookmark for @uri.
	 *
	 * If a bookmark for @uri cannot be found then it is created.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     mimeType = a MIME type
	 *
	 * Since: 2.12
	 */
	public void setMimeType(string uri, string mimeType)
	{
		g_bookmark_file_set_mime_type(gBookmarkFile, Str.toStringz(uri), Str.toStringz(mimeType));
	}

	/**
	 * Sets the last time the bookmark for @uri was last modified.
	 *
	 * If no bookmark for @uri is found then it is created.
	 *
	 * The "modified" time should only be set when the bookmark's meta-data
	 * was actually changed.  Every function of #GBookmarkFile that
	 * modifies a bookmark also changes the modification time, except for
	 * g_bookmark_file_set_visited().
	 *
	 * Params:
	 *     uri = a valid URI
	 *     modified = a timestamp or -1 to use the current time
	 *
	 * Since: 2.12
	 */
	public void setModified(string uri, uint modified)
	{
		g_bookmark_file_set_modified(gBookmarkFile, Str.toStringz(uri), modified);
	}

	/**
	 * Sets @title as the title of the bookmark for @uri inside the
	 * bookmark file @bookmark.
	 *
	 * If @uri is %NULL, the title of @bookmark is set.
	 *
	 * If a bookmark for @uri cannot be found then it is created.
	 *
	 * Params:
	 *     uri = a valid URI or %NULL
	 *     title = a UTF-8 encoded string
	 *
	 * Since: 2.12
	 */
	public void setTitle(string uri, string title)
	{
		g_bookmark_file_set_title(gBookmarkFile, Str.toStringz(uri), Str.toStringz(title));
	}

	/**
	 * Sets the time the bookmark for @uri was last visited.
	 *
	 * If no bookmark for @uri is found then it is created.
	 *
	 * The "visited" time should only be set if the bookmark was launched,
	 * either using the command line retrieved by g_bookmark_file_get_app_info()
	 * or by the default application for the bookmark's MIME type, retrieved
	 * using g_bookmark_file_get_mime_type().  Changing the "visited" time
	 * does not affect the "modified" time.
	 *
	 * Params:
	 *     uri = a valid URI
	 *     visited = a timestamp or -1 to use the current time
	 *
	 * Since: 2.12
	 */
	public void setVisited(string uri, uint visited)
	{
		g_bookmark_file_set_visited(gBookmarkFile, Str.toStringz(uri), visited);
	}

	/**
	 * This function outputs @bookmark as a string.
	 *
	 * Params:
	 *     length = return location for the length of the returned string, or %NULL
	 *
	 * Return: a newly allocated string holding
	 *     the contents of the #GBookmarkFile
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public string toData(out size_t length)
	{
		GError* err = null;
		
		auto retStr = g_bookmark_file_to_data(gBookmarkFile, &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This function outputs @bookmark into a file.  The write process is
	 * guaranteed to be atomic by using g_file_set_contents() internally.
	 *
	 * Params:
	 *     filename = path of the output file
	 *
	 * Return: %TRUE if the file was successfully written.
	 *
	 * Since: 2.12
	 *
	 * Throws: GException on failure.
	 */
	public bool toFile(string filename)
	{
		GError* err = null;
		
		auto p = g_bookmark_file_to_file(gBookmarkFile, Str.toStringz(filename), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/** */
	public static GQuark errorQuark()
	{
		return g_bookmark_file_error_quark();
	}

	/**
	 * Creates a new empty #GBookmarkFile object.
	 *
	 * Use g_bookmark_file_load_from_file(), g_bookmark_file_load_from_data()
	 * or g_bookmark_file_load_from_data_dirs() to read an existing bookmark
	 * file.
	 *
	 * Return: an empty #GBookmarkFile
	 *
	 * Since: 2.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = g_bookmark_file_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GBookmarkFile*) p);
	}
}
