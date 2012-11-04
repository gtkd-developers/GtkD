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
 * inFile  = glib-Bookmark-file-parser.html
 * outPack = glib
 * outFile = BookmarkFile
 * strct   = GBookmarkFile
 * realStrct=
 * ctorStrct=
 * clss    = BookmarkFile
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_bookmark_file_
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
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.BookmarkFile;

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
 * GBookmarkFile lets you parse, edit or create files containing bookmarks
 * to URI, along with some meta-data about the resource pointed by the URI
 * like its MIME type, the application that is registering the bookmark and
 * the icon that should be used to represent the bookmark. The data is stored
 * using the
 * Desktop Bookmark
 * Specification.
 * The syntax of the bookmark files is described in detail inside the Desktop
 * Bookmark Specification, here is a quick summary: bookmark files use a
 * sub-class of the XML Bookmark Exchange Language
 * specification, consisting of valid UTF-8 encoded XML, under the
 * xbel root element; each bookmark is stored inside a
 * bookmark element, using its URI: no relative paths can
 * be used inside a bookmark file. The bookmark may have a user defined title
 * and description, to be used instead of the URI. Under the
 * metadata element, with its owner
 * attribute set to http://freedesktop.org, is stored the
 * meta-data about a resource pointed by its URI. The meta-data consists of
 * the resource's MIME type; the applications that have registered a bookmark;
 * the groups to which a bookmark belongs to; a visibility flag, used to set
 * the bookmark as "private" to the applications and groups that has it
 * registered; the URI and MIME type of an icon, to be used when displaying
 * the bookmark inside a GUI.
 * $(DDOC_COMMENT example)
 * A bookmark file might contain more than one bookmark; each bookmark
 * is accessed through its URI.
 * The important caveat of bookmark files is that when you add a new
 * bookmark you must also add the application that is registering it, using
 * g_bookmark_file_add_application() or g_bookmark_file_set_app_info().
 * If a bookmark has no applications then it won't be dumped when creating
 * the on disk representation, using g_bookmark_file_to_data() or
 * g_bookmark_file_to_file().
 * The GBookmarkFile parser was added in GLib 2.12.
 */
public class BookmarkFile
{
	
	/** the main Gtk struct */
	protected GBookmarkFile* gBookmarkFile;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GBookmarkFile* gBookmarkFile)
	{
		this.gBookmarkFile = gBookmarkFile;
	}
	
	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GLIB) && gBookmarkFile !is null )
		{
			g_bookmark_file_free(gBookmarkFile);
		}
	}
	
	/**
	 */
	
	/**
	 * Creates a new empty GBookmarkFile object.
	 * Use g_bookmark_file_load_from_file(), g_bookmark_file_load_from_data()
	 * or g_bookmark_file_load_from_data_dirs() to read an existing bookmark
	 * file.
	 * Since 2.12
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GBookmarkFile * g_bookmark_file_new (void);
		auto p = g_bookmark_file_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_bookmark_file_new()");
		}
		this(cast(GBookmarkFile*) p);
	}
	
	/**
	 * Frees a GBookmarkFile.
	 * Since 2.12
	 */
	public void free()
	{
		// void g_bookmark_file_free (GBookmarkFile *bookmark);
		g_bookmark_file_free(gBookmarkFile);
	}
	
	/**
	 * Loads a desktop bookmark file into an empty GBookmarkFile structure.
	 * If the file could not be loaded then error is set to either a GFileError
	 * or GBookmarkFileError.
	 * Since 2.12
	 * Params:
	 * filename = the path of a filename to load, in the GLib file name encoding
	 * Returns: TRUE if a desktop bookmark file could be loaded
	 * Throws: GException on failure.
	 */
	public int loadFromFile(string filename)
	{
		// gboolean g_bookmark_file_load_from_file (GBookmarkFile *bookmark,  const gchar *filename,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_load_from_file(gBookmarkFile, Str.toStringz(filename), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Loads a bookmark file from memory into an empty GBookmarkFile
	 * structure. If the object cannot be created then error is set to a
	 * GBookmarkFileError.
	 * Since 2.12
	 * Params:
	 * data = desktop bookmarks loaded in memory
	 * length = the length of data in bytes
	 * Returns: TRUE if a desktop bookmark could be loaded.
	 * Throws: GException on failure.
	 */
	public int loadFromData(string data, gsize length)
	{
		// gboolean g_bookmark_file_load_from_data (GBookmarkFile *bookmark,  const gchar *data,  gsize length,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_load_from_data(gBookmarkFile, cast(char*)data.ptr, length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * This function looks for a desktop bookmark file named file in the
	 * paths returned from g_get_user_data_dir() and g_get_system_data_dirs(),
	 * loads the file into bookmark and returns the file's full path in
	 * full_path. If the file could not be loaded then an error is
	 * set to either a GFileError or GBookmarkFileError.
	 * Since 2.12
	 * Params:
	 * file = a relative path to a filename to open and parse
	 * fullPath = return location for a string containing the full path
	 * of the file, or NULL. [allow-none]
	 * Returns: TRUE if a key file could be loaded, FALSE otherwise
	 * Throws: GException on failure.
	 */
	public int loadFromDataDirs(string file, out string fullPath)
	{
		// gboolean g_bookmark_file_load_from_data_dirs (GBookmarkFile *bookmark,  const gchar *file,  gchar **full_path,  GError **error);
		char* outfullPath = null;
		GError* err = null;
		
		auto p = g_bookmark_file_load_from_data_dirs(gBookmarkFile, Str.toStringz(file), &outfullPath, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		fullPath = Str.toString(outfullPath);
		return p;
	}
	
	/**
	 * This function outputs bookmark as a string.
	 * Since 2.12
	 * Returns: a newly allocated string holding the contents of the GBookmarkFile
	 * Throws: GException on failure.
	 */
	public string toData()
	{
		// gchar * g_bookmark_file_to_data (GBookmarkFile *bookmark,  gsize *length,  GError **error);
		gsize length;
		GError* err = null;
		
		auto p = g_bookmark_file_to_data(gBookmarkFile, &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p, length);
	}
	
	/**
	 * This function outputs bookmark into a file. The write process is
	 * guaranteed to be atomic by using g_file_set_contents() internally.
	 * Since 2.12
	 * Params:
	 * filename = path of the output file
	 * Returns: TRUE if the file was successfully written.
	 * Throws: GException on failure.
	 */
	public int toFile(string filename)
	{
		// gboolean g_bookmark_file_to_file (GBookmarkFile *bookmark,  const gchar *filename,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_to_file(gBookmarkFile, Str.toStringz(filename), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Looks whether the desktop bookmark has an item with its URI set to uri.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * Returns: TRUE if uri is inside bookmark, FALSE otherwise
	 */
	public int hasItem(string uri)
	{
		// gboolean g_bookmark_file_has_item (GBookmarkFile *bookmark,  const gchar *uri);
		return g_bookmark_file_has_item(gBookmarkFile, Str.toStringz(uri));
	}
	
	/**
	 * Checks whether group appears in the list of groups to which
	 * the bookmark for uri belongs to.
	 * In the event the URI cannot be found, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * group = the group name to be searched
	 * Returns: TRUE if group was found.
	 * Throws: GException on failure.
	 */
	public int hasGroup(string uri, string group)
	{
		// gboolean g_bookmark_file_has_group (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *group,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_has_group(gBookmarkFile, Str.toStringz(uri), Str.toStringz(group), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Checks whether the bookmark for uri inside bookmark has been
	 * registered by application name.
	 * In the event the URI cannot be found, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * name = the name of the application
	 * Returns: TRUE if the application name was found
	 * Throws: GException on failure.
	 */
	public int hasApplication(string uri, string name)
	{
		// gboolean g_bookmark_file_has_application (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *name,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_has_application(gBookmarkFile, Str.toStringz(uri), Str.toStringz(name), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the number of bookmarks inside bookmark.
	 * Since 2.12
	 * Returns: the number of bookmarks
	 */
	public int getSize()
	{
		// gint g_bookmark_file_get_size (GBookmarkFile *bookmark);
		return g_bookmark_file_get_size(gBookmarkFile);
	}
	
	/**
	 * Returns all URIs of the bookmarks in the bookmark file bookmark.
	 * The array of returned URIs will be NULL-terminated, so length may
	 * optionally be NULL.
	 * Since 2.12
	 * Returns: a newly allocated NULL-terminated array of strings. Use g_strfreev() to free it.
	 */
	public string[] getUris()
	{
		// gchar ** g_bookmark_file_get_uris (GBookmarkFile *bookmark,  gsize *length);
		gsize length;
		auto p = g_bookmark_file_get_uris(gBookmarkFile, &length);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. length] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Returns the title of the bookmark for uri.
	 * If uri is NULL, the title of bookmark is returned.
	 * In the event the URI cannot be found, NULL is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI or NULL. [allow-none]
	 * Returns: a newly allocated string or NULL if the specified URI cannot be found.
	 * Throws: GException on failure.
	 */
	public string getTitle(string uri)
	{
		// gchar * g_bookmark_file_get_title (GBookmarkFile *bookmark,  const gchar *uri,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_get_title(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Retrieves the description of the bookmark for uri.
	 * In the event the URI cannot be found, NULL is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * Returns: a newly allocated string or NULL if the specified URI cannot be found.
	 * Throws: GException on failure.
	 */
	public string getDescription(string uri)
	{
		// gchar * g_bookmark_file_get_description (GBookmarkFile *bookmark,  const gchar *uri,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_get_description(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Retrieves the MIME type of the resource pointed by uri.
	 * In the event the URI cannot be found, NULL is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND. In the
	 * event that the MIME type cannot be found, NULL is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_INVALID_VALUE.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * Returns: a newly allocated string or NULL if the specified URI cannot be found.
	 * Throws: GException on failure.
	 */
	public string getMimeType(string uri)
	{
		// gchar * g_bookmark_file_get_mime_type (GBookmarkFile *bookmark,  const gchar *uri,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_get_mime_type(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Gets whether the private flag of the bookmark for uri is set.
	 * In the event the URI cannot be found, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND. In the
	 * event that the private flag cannot be found, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_INVALID_VALUE.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * Returns: TRUE if the private flag is set, FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int getIsPrivate(string uri)
	{
		// gboolean g_bookmark_file_get_is_private (GBookmarkFile *bookmark,  const gchar *uri,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_get_is_private(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the icon of the bookmark for uri.
	 * In the event the URI cannot be found, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * href = return location for the icon's location or NULL. [allow-none]
	 * mimeType = return location for the icon's MIME type or NULL. [allow-none]
	 * Returns: TRUE if the icon for the bookmark for the URI was found. You should free the returned strings.
	 * Throws: GException on failure.
	 */
	public int getIcon(string uri, out string href, out string mimeType)
	{
		// gboolean g_bookmark_file_get_icon (GBookmarkFile *bookmark,  const gchar *uri,  gchar **href,  gchar **mime_type,  GError **error);
		char* outhref = null;
		char* outmimeType = null;
		GError* err = null;
		
		auto p = g_bookmark_file_get_icon(gBookmarkFile, Str.toStringz(uri), &outhref, &outmimeType, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		href = Str.toString(outhref);
		mimeType = Str.toString(outmimeType);
		return p;
	}
	
	/**
	 * Gets the time the bookmark for uri was added to bookmark
	 * In the event the URI cannot be found, -1 is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * Returns: a timestamp
	 * Throws: GException on failure.
	 */
	public uint getAdded(string uri)
	{
		// time_t g_bookmark_file_get_added (GBookmarkFile *bookmark,  const gchar *uri,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_get_added(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the time when the bookmark for uri was last modified.
	 * In the event the URI cannot be found, -1 is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * Returns: a timestamp
	 * Throws: GException on failure.
	 */
	public uint getModified(string uri)
	{
		// time_t g_bookmark_file_get_modified (GBookmarkFile *bookmark,  const gchar *uri,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_get_modified(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the time the bookmark for uri was last visited.
	 * In the event the URI cannot be found, -1 is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * Returns: a timestamp.
	 * Throws: GException on failure.
	 */
	public uint getVisited(string uri)
	{
		// time_t g_bookmark_file_get_visited (GBookmarkFile *bookmark,  const gchar *uri,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_get_visited(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Retrieves the list of group names of the bookmark for uri.
	 * In the event the URI cannot be found, NULL is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * The returned array is NULL terminated, so length may optionally
	 * be NULL.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * Returns: a newly allocated NULL-terminated array of group names. Use g_strfreev() to free it.
	 * Throws: GException on failure.
	 */
	public string[] getGroups(string uri)
	{
		// gchar ** g_bookmark_file_get_groups (GBookmarkFile *bookmark,  const gchar *uri,  gsize *length,  GError **error);
		gsize length;
		GError* err = null;
		
		auto p = g_bookmark_file_get_groups(gBookmarkFile, Str.toStringz(uri), &length, &err);
		
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
	 * Retrieves the names of the applications that have registered the
	 * bookmark for uri.
	 * In the event the URI cannot be found, NULL is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * Returns: a newly allocated NULL-terminated array of strings. Use g_strfreev() to free it.
	 * Throws: GException on failure.
	 */
	public string[] getApplications(string uri)
	{
		// gchar ** g_bookmark_file_get_applications (GBookmarkFile *bookmark,  const gchar *uri,  gsize *length,  GError **error);
		gsize length;
		GError* err = null;
		
		auto p = g_bookmark_file_get_applications(gBookmarkFile, Str.toStringz(uri), &length, &err);
		
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
	 * Gets the registration informations of app_name for the bookmark for
	 * uri. See g_bookmark_file_set_app_info() for more informations about
	 * the returned data.
	 * The string returned in app_exec must be freed.
	 * In the event the URI cannot be found, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND. In the
	 * event that no application with name app_name has registered a bookmark
	 * for uri, FALSE is returned and error is set to
	 * G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED. In the event that unquoting
	 * the command line fails, an error of the G_SHELL_ERROR domain is
	 * set and FALSE is returned.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * name = an application's name
	 * exec = location for the command line of the application, or NULL. [allow-none]
	 * count = return location for the registration count, or NULL. [allow-none]
	 * stamp = return location for the last registration time, or NULL. [allow-none]
	 * Returns: TRUE on success.
	 * Throws: GException on failure.
	 */
	public int getAppInfo(string uri, string name, out string exec, out uint count, out uint stamp)
	{
		// gboolean g_bookmark_file_get_app_info (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *name,  gchar **exec,  guint *count,  time_t *stamp,  GError **error);
		char* outexec = null;
		GError* err = null;
		
		auto p = g_bookmark_file_get_app_info(gBookmarkFile, Str.toStringz(uri), Str.toStringz(name), &outexec, &count, &stamp, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		exec = Str.toString(outexec);
		return p;
	}
	
	/**
	 * Sets title as the title of the bookmark for uri inside the
	 * bookmark file bookmark.
	 * If uri is NULL, the title of bookmark is set.
	 * If a bookmark for uri cannot be found then it is created.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI or NULL. [allow-none]
	 * title = a UTF-8 encoded string
	 */
	public void setTitle(string uri, string title)
	{
		// void g_bookmark_file_set_title (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *title);
		g_bookmark_file_set_title(gBookmarkFile, Str.toStringz(uri), Str.toStringz(title));
	}
	
	/**
	 * Sets description as the description of the bookmark for uri.
	 * If uri is NULL, the description of bookmark is set.
	 * If a bookmark for uri cannot be found then it is created.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI or NULL. [allow-none]
	 * description = a string
	 */
	public void setDescription(string uri, string description)
	{
		// void g_bookmark_file_set_description (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *description);
		g_bookmark_file_set_description(gBookmarkFile, Str.toStringz(uri), Str.toStringz(description));
	}
	
	/**
	 * Sets mime_type as the MIME type of the bookmark for uri.
	 * If a bookmark for uri cannot be found then it is created.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * mimeType = a MIME type
	 */
	public void setMimeType(string uri, string mimeType)
	{
		// void g_bookmark_file_set_mime_type (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *mime_type);
		g_bookmark_file_set_mime_type(gBookmarkFile, Str.toStringz(uri), Str.toStringz(mimeType));
	}
	
	/**
	 * Sets the private flag of the bookmark for uri.
	 * If a bookmark for uri cannot be found then it is created.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * isPrivate = TRUE if the bookmark should be marked as private
	 */
	public void setIsPrivate(string uri, int isPrivate)
	{
		// void g_bookmark_file_set_is_private (GBookmarkFile *bookmark,  const gchar *uri,  gboolean is_private);
		g_bookmark_file_set_is_private(gBookmarkFile, Str.toStringz(uri), isPrivate);
	}
	
	/**
	 * Sets the icon for the bookmark for uri. If href is NULL, unsets
	 * the currently set icon. href can either be a full URL for the icon
	 * file or the icon name following the Icon Naming specification.
	 * If no bookmark for uri is found one is created.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * href = the URI of the icon for the bookmark, or NULL. [allow-none]
	 * mimeType = the MIME type of the icon for the bookmark
	 */
	public void setIcon(string uri, string href, string mimeType)
	{
		// void g_bookmark_file_set_icon (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *href,  const gchar *mime_type);
		g_bookmark_file_set_icon(gBookmarkFile, Str.toStringz(uri), Str.toStringz(href), Str.toStringz(mimeType));
	}
	
	/**
	 * Sets the time the bookmark for uri was added into bookmark.
	 * If no bookmark for uri is found then it is created.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * added = a timestamp or -1 to use the current time
	 */
	public void setAdded(string uri, uint added)
	{
		// void g_bookmark_file_set_added (GBookmarkFile *bookmark,  const gchar *uri,  time_t added);
		g_bookmark_file_set_added(gBookmarkFile, Str.toStringz(uri), added);
	}
	
	/**
	 * Sets a list of group names for the item with URI uri. Each previously
	 * set group name list is removed.
	 * If uri cannot be found then an item for it is created.
	 * Since 2.12
	 * Params:
	 * uri = an item's URI
	 * groups = an array of group names, or NULL to remove all groups. [allow-none]
	 */
	public void setGroups(string uri, string[] groups)
	{
		// void g_bookmark_file_set_groups (GBookmarkFile *bookmark,  const gchar *uri,  const gchar **groups,  gsize length);
		g_bookmark_file_set_groups(gBookmarkFile, Str.toStringz(uri), Str.toStringzArray(groups), cast(int) groups.length);
	}
	
	/**
	 * Sets the last time the bookmark for uri was last modified.
	 * If no bookmark for uri is found then it is created.
	 * The "modified" time should only be set when the bookmark's meta-data
	 * was actually changed. Every function of GBookmarkFile that
	 * modifies a bookmark also changes the modification time, except for
	 * g_bookmark_file_set_visited().
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * modified = a timestamp or -1 to use the current time
	 */
	public void setModified(string uri, uint modified)
	{
		// void g_bookmark_file_set_modified (GBookmarkFile *bookmark,  const gchar *uri,  time_t modified);
		g_bookmark_file_set_modified(gBookmarkFile, Str.toStringz(uri), modified);
	}
	
	/**
	 * Sets the time the bookmark for uri was last visited.
	 * If no bookmark for uri is found then it is created.
	 * The "visited" time should only be set if the bookmark was launched,
	 * either using the command line retrieved by g_bookmark_file_get_app_info()
	 * or by the default application for the bookmark's MIME type, retrieved
	 * using g_bookmark_file_get_mime_type(). Changing the "visited" time
	 * does not affect the "modified" time.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * visited = a timestamp or -1 to use the current time
	 */
	public void setVisited(string uri, uint visited)
	{
		// void g_bookmark_file_set_visited (GBookmarkFile *bookmark,  const gchar *uri,  time_t visited);
		g_bookmark_file_set_visited(gBookmarkFile, Str.toStringz(uri), visited);
	}
	
	/**
	 * Sets the meta-data of application name inside the list of
	 * applications that have registered a bookmark for uri inside
	 * bookmark.
	 * You should rarely use this function; use g_bookmark_file_add_application()
	 * and g_bookmark_file_remove_application() instead.
	 * name can be any UTF-8 encoded string used to identify an
	 * application.
	 * exec can have one of these two modifiers: "%f", which will
	 * be expanded as the local file name retrieved from the bookmark's
	 * URI; "%u", which will be expanded as the bookmark's URI.
	 * The expansion is done automatically when retrieving the stored
	 * command line using the g_bookmark_file_get_app_info() function.
	 * count is the number of times the application has registered the
	 * bookmark; if is < 0, the current registration count will be increased
	 * by one, if is 0, the application with name will be removed from
	 * the list of registered applications.
	 * stamp is the Unix time of the last registration; if it is -1, the
	 * current time will be used.
	 * If you try to remove an application by setting its registration count to
	 * zero, and no bookmark for uri is found, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND; similarly,
	 * in the event that no application name has registered a bookmark
	 * for uri, FALSE is returned and error is set to
	 * G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED. Otherwise, if no bookmark
	 * for uri is found, one is created.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * name = an application's name
	 * exec = an application's command line
	 * count = the number of registrations done for this application
	 * stamp = the time of the last registration for this application
	 * Returns: TRUE if the application's meta-data was successfully changed.
	 * Throws: GException on failure.
	 */
	public int setAppInfo(string uri, string name, string exec, int count, uint stamp)
	{
		// gboolean g_bookmark_file_set_app_info (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *name,  const gchar *exec,  gint count,  time_t stamp,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_set_app_info(gBookmarkFile, Str.toStringz(uri), Str.toStringz(name), Str.toStringz(exec), count, stamp, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Adds group to the list of groups to which the bookmark for uri
	 * belongs to.
	 * If no bookmark for uri is found then it is created.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * group = the group name to be added
	 */
	public void addGroup(string uri, string group)
	{
		// void g_bookmark_file_add_group (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *group);
		g_bookmark_file_add_group(gBookmarkFile, Str.toStringz(uri), Str.toStringz(group));
	}
	
	/**
	 * Adds the application with name and exec to the list of
	 * applications that have registered a bookmark for uri into
	 * bookmark.
	 * Every bookmark inside a GBookmarkFile must have at least an
	 * application registered. Each application must provide a name, a
	 * command line useful for launching the bookmark, the number of times
	 * the bookmark has been registered by the application and the last
	 * time the application registered this bookmark.
	 * If name is NULL, the name of the application will be the
	 * same returned by g_get_application_name(); if exec is NULL, the
	 * command line will be a composition of the program name as
	 * returned by g_get_prgname() and the "%u" modifier, which will be
	 * expanded to the bookmark's URI.
	 * This function will automatically take care of updating the
	 * registrations count and timestamping in case an application
	 * with the same name had already registered a bookmark for
	 * uri inside bookmark.
	 * If no bookmark for uri is found, one is created.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * name = the name of the application registering the bookmark
	 * or NULL. [allow-none]
	 * exec = command line to be used to launch the bookmark or NULL. [allow-none]
	 */
	public void addApplication(string uri, string name, string exec)
	{
		// void g_bookmark_file_add_application (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *name,  const gchar *exec);
		g_bookmark_file_add_application(gBookmarkFile, Str.toStringz(uri), Str.toStringz(name), Str.toStringz(exec));
	}
	
	/**
	 * Removes group from the list of groups to which the bookmark
	 * for uri belongs to.
	 * In the event the URI cannot be found, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * In the event no group was defined, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_INVALID_VALUE.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * group = the group name to be removed
	 * Returns: TRUE if group was successfully removed.
	 * Throws: GException on failure.
	 */
	public int removeGroup(string uri, string group)
	{
		// gboolean g_bookmark_file_remove_group (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *group,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_remove_group(gBookmarkFile, Str.toStringz(uri), Str.toStringz(group), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Removes application registered with name from the list of applications
	 * that have registered a bookmark for uri inside bookmark.
	 * In the event the URI cannot be found, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * In the event that no application with name app_name has registered
	 * a bookmark for uri, FALSE is returned and error is set to
	 * G_BOOKMARK_FILE_ERROR_APP_NOT_REGISTERED.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * name = the name of the application
	 * Returns: TRUE if the application was successfully removed.
	 * Throws: GException on failure.
	 */
	public int removeApplication(string uri, string name)
	{
		// gboolean g_bookmark_file_remove_application (GBookmarkFile *bookmark,  const gchar *uri,  const gchar *name,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_remove_application(gBookmarkFile, Str.toStringz(uri), Str.toStringz(name), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Removes the bookmark for uri from the bookmark file bookmark.
	 * Since 2.12
	 * Params:
	 * uri = a valid URI
	 * Returns: TRUE if the bookmark was removed successfully.
	 * Throws: GException on failure.
	 */
	public int removeItem(string uri)
	{
		// gboolean g_bookmark_file_remove_item (GBookmarkFile *bookmark,  const gchar *uri,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_remove_item(gBookmarkFile, Str.toStringz(uri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Changes the URI of a bookmark item from old_uri to new_uri. Any
	 * existing bookmark for new_uri will be overwritten. If new_uri is
	 * NULL, then the bookmark is removed.
	 * In the event the URI cannot be found, FALSE is returned and
	 * error is set to G_BOOKMARK_FILE_ERROR_URI_NOT_FOUND.
	 * Since 2.12
	 * Params:
	 * oldUri = a valid URI
	 * newUri = a valid URI, or NULL. [allow-none]
	 * Returns: TRUE if the URI was successfully changed
	 * Throws: GException on failure.
	 */
	public int moveItem(string oldUri, string newUri)
	{
		// gboolean g_bookmark_file_move_item (GBookmarkFile *bookmark,  const gchar *old_uri,  const gchar *new_uri,  GError **error);
		GError* err = null;
		
		auto p = g_bookmark_file_move_item(gBookmarkFile, Str.toStringz(oldUri), Str.toStringz(newUri), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
