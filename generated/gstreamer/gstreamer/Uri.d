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


module gstreamer.Uri;

private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.HashTable;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * A #GstUri object can be used to parse and split a URI string into its
 * constituant parts. Two #GstUri objects can be joined to make a new #GstUri
 * using the algorithm described in RFC3986.
 */
public class Uri
{
	/** the main Gtk struct */
	protected GstUri* gstUri;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstUri* getUriStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstUri;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstUri;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstUri* gstUri, bool ownedRef = false)
	{
		this.gstUri = gstUri;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return gst_uri_get_type();
	}

	/**
	 * Creates a new #GstUri object with the given URI parts. The path and query
	 * strings will be broken down into their elements. All strings should not be
	 * escaped except where indicated.
	 *
	 * Params:
	 *     scheme = The scheme for the new URI.
	 *     userinfo = The user-info for the new URI.
	 *     host = The host name for the new URI.
	 *     port = The port number for the new URI or %GST_URI_NO_PORT.
	 *     path = The path for the new URI with '/' separating path
	 *         elements.
	 *     query = The query string for the new URI with '&' separating
	 *         query elements. Elements containing '&' characters
	 *         should encode them as "&percnt;26".
	 *     fragment = The fragment name for the new URI.
	 *
	 * Returns: A new #GstUri object.
	 *
	 * Since: 1.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string scheme, string userinfo, string host, uint port, string path, string query, string fragment)
	{
		auto p = gst_uri_new(Str.toStringz(scheme), Str.toStringz(userinfo), Str.toStringz(host), port, Str.toStringz(path), Str.toStringz(query), Str.toStringz(fragment));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstUri*) p);
	}

	/**
	 * Append a path onto the end of the path in the URI. The path is not
	 * normalized, call #gst_uri_normalize() to normalize the path.
	 *
	 * Params:
	 *     relativePath = Relative path to append to the end of the current path.
	 *
	 * Returns: %TRUE if the path was appended successfully.
	 *
	 * Since: 1.6
	 */
	public bool appendPath(string relativePath)
	{
		return gst_uri_append_path(gstUri, Str.toStringz(relativePath)) != 0;
	}

	/**
	 * Append a single path segment onto the end of the URI path.
	 *
	 * Params:
	 *     pathSegment = The path segment string to append to the URI path.
	 *
	 * Returns: %TRUE if the path was appended successfully.
	 *
	 * Since: 1.6
	 */
	public bool appendPathSegment(string pathSegment)
	{
		return gst_uri_append_path_segment(gstUri, Str.toStringz(pathSegment)) != 0;
	}

	/**
	 * Compares two #GstUri objects to see if they represent the same normalized
	 * URI.
	 *
	 * Params:
	 *     second = Second #GstUri to compare.
	 *
	 * Returns: %TRUE if the normalized versions of the two URI's would be equal.
	 *
	 * Since: 1.6
	 */
	public bool equal(Uri second)
	{
		return gst_uri_equal(gstUri, (second is null) ? null : second.getUriStruct()) != 0;
	}

	/**
	 * Like gst_uri_from_string() but also joins with a base URI.
	 *
	 * Params:
	 *     uri = The URI string to parse.
	 *
	 * Returns: A new #GstUri object.
	 *
	 * Since: 1.6
	 */
	public Uri fromStringWithBase(string uri)
	{
		auto p = gst_uri_from_string_with_base(gstUri, Str.toStringz(uri));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Uri)(cast(GstUri*) p, true);
	}

	/**
	 * Get the fragment name from the URI or %NULL if it doesn't exist.
	 * If @uri is %NULL then returns %NULL.
	 *
	 * Returns: The host name from the #GstUri object or %NULL.
	 *
	 * Since: 1.6
	 */
	public string getFragment()
	{
		return Str.toString(gst_uri_get_fragment(gstUri));
	}

	/**
	 * Get the host name from the URI or %NULL if it doesn't exist.
	 * If @uri is %NULL then returns %NULL.
	 *
	 * Returns: The host name from the #GstUri object or %NULL.
	 *
	 * Since: 1.6
	 */
	public string getHost()
	{
		return Str.toString(gst_uri_get_host(gstUri));
	}

	/**
	 * Get the media fragment table from the URI, as defined by "Media Fragments URI 1.0".
	 * Hash table returned by this API is a list of "key-value" pairs, and the each
	 * pair is generated by splitting "URI fragment" per "&" sub-delims, then "key"
	 * and "value" are splitted by "=" sub-delims. The "key" returned by this API may
	 * be undefined keyword by standard.
	 * A value may be %NULL to indicate that the key should appear in the fragment
	 * string in the URI, but does not have a value. Free the returned #GHashTable
	 * with #g_hash_table_unref() when it is no longer required.
	 * Modifying this hash table does not affect the fragment in the URI.
	 *
	 * See more about Media Fragments URI 1.0 (W3C) at https://www.w3.org/TR/media-frags/
	 *
	 * Returns: The
	 *     fragment hash table from the URI.
	 *
	 * Since: 1.12
	 */
	public HashTable getMediaFragmentTable()
	{
		auto p = gst_uri_get_media_fragment_table(gstUri);

		if(p is null)
		{
			return null;
		}

		return new HashTable(cast(GHashTable*) p, true);
	}

	/**
	 * Extract the path string from the URI object.
	 *
	 * Returns: (nullable): The path from the URI. Once finished
	 *     with the string should be g_free()'d.
	 *
	 * Since: 1.6
	 */
	public string getPath()
	{
		auto retStr = gst_uri_get_path(gstUri);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Get a list of path segments from the URI.
	 *
	 * Returns: A #GList of path segment
	 *     strings or %NULL if no path segments are available. Free the list
	 *     when no longer needed with g_list_free_full(list, g_free).
	 *
	 * Since: 1.6
	 */
	public ListG getPathSegments()
	{
		auto p = gst_uri_get_path_segments(gstUri);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Extract the path string from the URI object as a percent encoded URI path.
	 *
	 * Returns: The path from the URI. Once finished
	 *     with the string should be g_free()'d.
	 *
	 * Since: 1.6
	 */
	public string getPathString()
	{
		auto retStr = gst_uri_get_path_string(gstUri);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Get the port number from the URI or %GST_URI_NO_PORT if it doesn't exist.
	 * If @uri is %NULL then returns %GST_URI_NO_PORT.
	 *
	 * Returns: The port number from the #GstUri object or %GST_URI_NO_PORT.
	 *
	 * Since: 1.6
	 */
	public uint getPort()
	{
		return gst_uri_get_port(gstUri);
	}

	/**
	 * Get a list of the query keys from the URI.
	 *
	 * Returns: A list of keys from
	 *     the URI query. Free the list with g_list_free().
	 *
	 * Since: 1.6
	 */
	public ListG getQueryKeys()
	{
		auto p = gst_uri_get_query_keys(gstUri);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Get a percent encoded URI query string from the @uri.
	 *
	 * Returns: A percent encoded query string. Use
	 *     g_free() when no longer needed.
	 *
	 * Since: 1.6
	 */
	public string getQueryString()
	{
		auto retStr = gst_uri_get_query_string(gstUri);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Get the query table from the URI. Keys and values in the table are freed
	 * with g_free when they are deleted. A value may be %NULL to indicate that
	 * the key should appear in the query string in the URI, but does not have a
	 * value. Free the returned #GHashTable with #g_hash_table_unref() when it is
	 * no longer required. Modifying this hash table will modify the query in the
	 * URI.
	 *
	 * Returns: The query
	 *     hash table from the URI.
	 *
	 * Since: 1.6
	 */
	public HashTable getQueryTable()
	{
		auto p = gst_uri_get_query_table(gstUri);

		if(p is null)
		{
			return null;
		}

		return new HashTable(cast(GHashTable*) p, true);
	}

	/**
	 * Get the value associated with the @query_key key. Will return %NULL if the
	 * key has no value or if the key does not exist in the URI query table. Because
	 * %NULL is returned for both missing keys and keys with no value, you should
	 * use gst_uri_query_has_key() to determine if a key is present in the URI
	 * query.
	 *
	 * Params:
	 *     queryKey = The key to lookup.
	 *
	 * Returns: The value for the given key, or %NULL if not found.
	 *
	 * Since: 1.6
	 */
	public string getQueryValue(string queryKey)
	{
		return Str.toString(gst_uri_get_query_value(gstUri, Str.toStringz(queryKey)));
	}

	/**
	 * Get the scheme name from the URI or %NULL if it doesn't exist.
	 * If @uri is %NULL then returns %NULL.
	 *
	 * Returns: The scheme from the #GstUri object or %NULL.
	 */
	public string getScheme()
	{
		return Str.toString(gst_uri_get_scheme(gstUri));
	}

	/**
	 * Get the userinfo (usually in the form "username:password") from the URI
	 * or %NULL if it doesn't exist. If @uri is %NULL then returns %NULL.
	 *
	 * Returns: The userinfo from the #GstUri object or %NULL.
	 *
	 * Since: 1.6
	 */
	public string getUserinfo()
	{
		return Str.toString(gst_uri_get_userinfo(gstUri));
	}

	/**
	 * Tests the @uri to see if it is normalized. A %NULL @uri is considered to be
	 * normalized.
	 *
	 * Returns: TRUE if the URI is normalized or is %NULL.
	 *
	 * Since: 1.6
	 */
	public bool isNormalized()
	{
		return gst_uri_is_normalized(gstUri) != 0;
	}

	/**
	 * Check if it is safe to write to this #GstUri.
	 *
	 * Check if the refcount of @uri is exactly 1, meaning that no other
	 * reference exists to the #GstUri and that the #GstUri is therefore writable.
	 *
	 * Modification of a #GstUri should only be done after verifying that it is
	 * writable.
	 *
	 * Returns: %TRUE if it is safe to write to the object.
	 *
	 * Since: 1.6
	 */
	public bool isWritable()
	{
		return gst_uri_is_writable(gstUri) != 0;
	}

	/**
	 * Join a reference URI onto a base URI using the method from RFC 3986.
	 * If either URI is %NULL then the other URI will be returned with the ref count
	 * increased.
	 *
	 * Params:
	 *     refUri = The reference URI to join onto the
	 *         base URI.
	 *
	 * Returns: A #GstUri which represents the base
	 *     with the reference URI joined on.
	 *
	 * Since: 1.6
	 */
	public Uri join(Uri refUri)
	{
		auto p = gst_uri_join(gstUri, (refUri is null) ? null : refUri.getUriStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Uri)(cast(GstUri*) p, true);
	}

	/**
	 * Make the #GstUri writable.
	 *
	 * Checks if @uri is writable, and if so the original object is returned. If
	 * not, then a writable copy is made and returned. This gives away the
	 * reference to @uri and returns a reference to the new #GstUri.
	 * If @uri is %NULL then %NULL is returned.
	 *
	 * Returns: A writable version of @uri.
	 *
	 * Since: 1.6
	 */
	public Uri makeWritable()
	{
		auto p = gst_uri_make_writable(gstUri);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Uri)(cast(GstUri*) p, true);
	}

	/**
	 * Like gst_uri_new(), but joins the new URI onto a base URI.
	 *
	 * Params:
	 *     scheme = The scheme for the new URI.
	 *     userinfo = The user-info for the new URI.
	 *     host = The host name for the new URI.
	 *     port = The port number for the new URI or %GST_URI_NO_PORT.
	 *     path = The path for the new URI with '/' separating path
	 *         elements.
	 *     query = The query string for the new URI with '&' separating
	 *         query elements. Elements containing '&' characters
	 *         should encode them as "&percnt;26".
	 *     fragment = The fragment name for the new URI.
	 *
	 * Returns: The new URI joined onto @base.
	 *
	 * Since: 1.6
	 */
	public Uri newWithBase(string scheme, string userinfo, string host, uint port, string path, string query, string fragment)
	{
		auto p = gst_uri_new_with_base(gstUri, Str.toStringz(scheme), Str.toStringz(userinfo), Str.toStringz(host), port, Str.toStringz(path), Str.toStringz(query), Str.toStringz(fragment));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Uri)(cast(GstUri*) p, true);
	}

	/**
	 * Normalization will remove extra path segments ("." and "..") from the URI. It
	 * will also convert the scheme and host name to lower case and any
	 * percent-encoded values to uppercase.
	 *
	 * The #GstUri object must be writable. Check with gst_uri_is_writable() or use
	 * gst_uri_make_writable() first.
	 *
	 * Returns: TRUE if the URI was modified.
	 *
	 * Since: 1.6
	 */
	public bool normalize()
	{
		return gst_uri_normalize(gstUri) != 0;
	}

	/**
	 * Check if there is a query table entry for the @query_key key.
	 *
	 * Params:
	 *     queryKey = The key to lookup.
	 *
	 * Returns: %TRUE if @query_key exists in the URI query table.
	 *
	 * Since: 1.6
	 */
	public bool queryHasKey(string queryKey)
	{
		return gst_uri_query_has_key(gstUri, Str.toStringz(queryKey)) != 0;
	}

	/**
	 * Remove an entry from the query table by key.
	 *
	 * Params:
	 *     queryKey = The key to remove.
	 *
	 * Returns: %TRUE if the key existed in the table and was removed.
	 *
	 * Since: 1.6
	 */
	public bool removeQueryKey(string queryKey)
	{
		return gst_uri_remove_query_key(gstUri, Str.toStringz(queryKey)) != 0;
	}

	/**
	 * Sets the fragment string in the URI. Use a value of %NULL in @fragment to
	 * unset the fragment string.
	 *
	 * Params:
	 *     fragment = The fragment string to set.
	 *
	 * Returns: %TRUE if the fragment was set/unset successfully.
	 *
	 * Since: 1.6
	 */
	public bool setFragment(string fragment)
	{
		return gst_uri_set_fragment(gstUri, Str.toStringz(fragment)) != 0;
	}

	/**
	 * Set or unset the host for the URI.
	 *
	 * Params:
	 *     host = The new host string to set or %NULL to unset.
	 *
	 * Returns: %TRUE if the host was set/unset successfully.
	 *
	 * Since: 1.6
	 */
	public bool setHost(string host)
	{
		return gst_uri_set_host(gstUri, Str.toStringz(host)) != 0;
	}

	/**
	 * Sets or unsets the path in the URI.
	 *
	 * Params:
	 *     path = The new path to set with path segments separated by '/', or use %NULL
	 *         to unset the path.
	 *
	 * Returns: %TRUE if the path was set successfully.
	 *
	 * Since: 1.6
	 */
	public bool setPath(string path)
	{
		return gst_uri_set_path(gstUri, Str.toStringz(path)) != 0;
	}

	/**
	 * Replace the path segments list in the URI.
	 *
	 * Params:
	 *     pathSegments = The new
	 *         path list to set.
	 *
	 * Returns: %TRUE if the path segments were set successfully.
	 *
	 * Since: 1.6
	 */
	public bool setPathSegments(ListG pathSegments)
	{
		return gst_uri_set_path_segments(gstUri, (pathSegments is null) ? null : pathSegments.getListGStruct()) != 0;
	}

	/**
	 * Sets or unsets the path in the URI.
	 *
	 * Params:
	 *     path = The new percent encoded path to set with path segments separated by
	 *         '/', or use %NULL to unset the path.
	 *
	 * Returns: %TRUE if the path was set successfully.
	 *
	 * Since: 1.6
	 */
	public bool setPathString(string path)
	{
		return gst_uri_set_path_string(gstUri, Str.toStringz(path)) != 0;
	}

	/**
	 * Set or unset the port number for the URI.
	 *
	 * Params:
	 *     port = The new port number to set or %GST_URI_NO_PORT to unset.
	 *
	 * Returns: %TRUE if the port number was set/unset successfully.
	 *
	 * Since: 1.6
	 */
	public bool setPort(uint port)
	{
		return gst_uri_set_port(gstUri, port) != 0;
	}

	/**
	 * Sets or unsets the query table in the URI.
	 *
	 * Params:
	 *     query = The new percent encoded query string to use to populate the query
	 *         table, or use %NULL to unset the query table.
	 *
	 * Returns: %TRUE if the query table was set successfully.
	 *
	 * Since: 1.6
	 */
	public bool setQueryString(string query)
	{
		return gst_uri_set_query_string(gstUri, Str.toStringz(query)) != 0;
	}

	/**
	 * Set the query table to use in the URI. The old table is unreferenced and a
	 * reference to the new one is used instead. A value if %NULL for @query_table
	 * will remove the query string from the URI.
	 *
	 * Params:
	 *     queryTable = The new
	 *         query table to use.
	 *
	 * Returns: %TRUE if the new table was sucessfully used for the query table.
	 *
	 * Since: 1.6
	 */
	public bool setQueryTable(HashTable queryTable)
	{
		return gst_uri_set_query_table(gstUri, (queryTable is null) ? null : queryTable.getHashTableStruct()) != 0;
	}

	/**
	 * This inserts or replaces a key in the query table. A @query_value of %NULL
	 * indicates that the key has no associated value, but will still be present in
	 * the query string.
	 *
	 * Params:
	 *     queryKey = The key for the query entry.
	 *     queryValue = The value for the key.
	 *
	 * Returns: %TRUE if the query table was sucessfully updated.
	 *
	 * Since: 1.6
	 */
	public bool setQueryValue(string queryKey, string queryValue)
	{
		return gst_uri_set_query_value(gstUri, Str.toStringz(queryKey), Str.toStringz(queryValue)) != 0;
	}

	/**
	 * Set or unset the scheme for the URI.
	 *
	 * Params:
	 *     scheme = The new scheme to set or %NULL to unset the scheme.
	 *
	 * Returns: %TRUE if the scheme was set/unset successfully.
	 *
	 * Since: 1.6
	 */
	public bool setScheme(string scheme)
	{
		return gst_uri_set_scheme(gstUri, Str.toStringz(scheme)) != 0;
	}

	/**
	 * Set or unset the user information for the URI.
	 *
	 * Params:
	 *     userinfo = The new user-information string to set or %NULL to unset.
	 *
	 * Returns: %TRUE if the user information was set/unset successfully.
	 *
	 * Since: 1.6
	 */
	public bool setUserinfo(string userinfo)
	{
		return gst_uri_set_userinfo(gstUri, Str.toStringz(userinfo)) != 0;
	}

	/**
	 * Convert the URI to a string.
	 *
	 * Returns the URI as held in this object as a #gchar* nul-terminated string.
	 * The caller should g_free() the string once they are finished with it.
	 * The string is put together as described in RFC 3986.
	 *
	 * Returns: The string version of the URI.
	 *
	 * Since: 1.6
	 */
	public override string toString()
	{
		auto retStr = gst_uri_to_string(gstUri);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Constructs a URI for a given valid protocol and location.
	 *
	 * Free-function: g_free
	 *
	 * Deprecated: Use GstURI instead.
	 *
	 * Params:
	 *     protocol = Protocol for URI
	 *     location = Location for URI
	 *
	 * Returns: a new string for this URI. Returns %NULL if the
	 *     given URI protocol is not valid, or the given location is %NULL.
	 */
	public static string construct(string protocol, string location)
	{
		auto retStr = gst_uri_construct(Str.toStringz(protocol), Str.toStringz(location));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Parses a URI string into a new #GstUri object. Will return NULL if the URI
	 * cannot be parsed.
	 *
	 * Params:
	 *     uri = The URI string to parse.
	 *
	 * Returns: A new #GstUri object, or NULL.
	 *
	 * Since: 1.6
	 */
	public static Uri fromString(string uri)
	{
		auto p = gst_uri_from_string(Str.toStringz(uri));

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Uri)(cast(GstUri*) p, true);
	}

	/**
	 * Extracts the location out of a given valid URI, ie. the protocol and "://"
	 * are stripped from the URI, which means that the location returned includes
	 * the hostname if one is specified. The returned string must be freed using
	 * g_free().
	 *
	 * Free-function: g_free
	 *
	 * Params:
	 *     uri = A URI string
	 *
	 * Returns: the location for this URI. Returns
	 *     %NULL if the URI isn't valid. If the URI does not contain a location, an
	 *     empty string is returned.
	 */
	public static string getLocation(string uri)
	{
		auto retStr = gst_uri_get_location(Str.toStringz(uri));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Extracts the protocol out of a given valid URI. The returned string must be
	 * freed using g_free().
	 *
	 * Params:
	 *     uri = A URI string
	 *
	 * Returns: The protocol for this URI.
	 */
	public static string getProtocol(string uri)
	{
		auto retStr = gst_uri_get_protocol(Str.toStringz(uri));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Checks if the protocol of a given valid URI matches @protocol.
	 *
	 * Params:
	 *     uri = a URI string
	 *     protocol = a protocol string (e.g. "http")
	 *
	 * Returns: %TRUE if the protocol matches.
	 */
	public static bool hasProtocol(string uri, string protocol)
	{
		return gst_uri_has_protocol(Str.toStringz(uri), Str.toStringz(protocol)) != 0;
	}

	/**
	 * Tests if the given string is a valid URI identifier. URIs start with a valid
	 * scheme followed by ":" and maybe a string identifying the location.
	 *
	 * Params:
	 *     uri = A URI string
	 *
	 * Returns: %TRUE if the string is a valid URI
	 */
	public static bool isValid(string uri)
	{
		return gst_uri_is_valid(Str.toStringz(uri)) != 0;
	}

	/**
	 * This is a convenience function to join two URI strings and return the result.
	 * The returned string should be g_free()'d after use.
	 *
	 * Params:
	 *     baseUri = The percent-encoded base URI.
	 *     refUri = The percent-encoded reference URI to join to the @base_uri.
	 *
	 * Returns: A string representing the percent-encoded join of
	 *     the two URIs.
	 *
	 * Since: 1.6
	 */
	public static string joinStrings(string baseUri, string refUri)
	{
		auto retStr = gst_uri_join_strings(Str.toStringz(baseUri), Str.toStringz(refUri));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Checks if an element exists that supports the given URI protocol. Note
	 * that a positive return value does not imply that a subsequent call to
	 * gst_element_make_from_uri() is guaranteed to work.
	 *
	 * Params:
	 *     type = Whether to check for a source or a sink
	 *     protocol = Protocol that should be checked for (e.g. "http" or "smb")
	 *
	 * Returns: %TRUE
	 */
	public static bool protocolIsSupported(GstURIType type, string protocol)
	{
		return gst_uri_protocol_is_supported(type, Str.toStringz(protocol)) != 0;
	}

	/**
	 * Tests if the given string is a valid protocol identifier. Protocols
	 * must consist of alphanumeric characters, '+', '-' and '.' and must
	 * start with a alphabetic character. See RFC 3986 Section 3.1.
	 *
	 * Params:
	 *     protocol = A string
	 *
	 * Returns: %TRUE if the string is a valid protocol identifier, %FALSE otherwise.
	 */
	public static bool protocolIsValid(string protocol)
	{
		return gst_uri_protocol_is_valid(Str.toStringz(protocol)) != 0;
	}

	/**
	 * Similar to g_filename_to_uri(), but attempts to handle relative file paths
	 * as well. Before converting @filename into an URI, it will be prefixed by
	 * the current working directory if it is a relative path, and then the path
	 * will be canonicalised so that it doesn't contain any './' or '../' segments.
	 *
	 * On Windows #filename should be in UTF-8 encoding.
	 *
	 * Params:
	 *     filename = absolute or relative file name path
	 *
	 * Returns: newly-allocated URI string, or NULL on error. The caller must
	 *     free the URI string with g_free() when no longer needed.
	 *
	 * Throws: GException on failure.
	 */
	public static string filenameToUri(string filename)
	{
		GError* err = null;

		auto retStr = gst_filename_to_uri(Str.toStringz(filename), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/** */
	public static GQuark uriErrorQuark()
	{
		return gst_uri_error_quark();
	}
}
