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


module soup.URI;

private import glib.ConstructionException;
private import glib.HashTable;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;
private import soup.c.functions;
public  import soup.c.types;


/**
 * A #SoupURI represents a (parsed) URI. #SoupURI supports RFC 3986
 * (URI Generic Syntax), and can parse any valid URI. However, libsoup
 * only uses "http" and "https" URIs internally; You can use
 * SOUP_URI_VALID_FOR_HTTP() to test if a #SoupURI is a valid HTTP
 * URI.
 * 
 * @scheme will always be set in any URI. It is an interned string and
 * is always all lowercase. (If you parse a URI with a non-lowercase
 * scheme, it will be converted to lowercase.) The macros
 * %SOUP_URI_SCHEME_HTTP and %SOUP_URI_SCHEME_HTTPS provide the
 * interned values for "http" and "https" and can be compared against
 * URI @scheme values.
 * 
 * @user and @password are parsed as defined in the older URI specs
 * (ie, separated by a colon; RFC 3986 only talks about a single
 * "userinfo" field). Note that @password is not included in the
 * output of soup_uri_to_string(). libsoup does not normally use these
 * fields; authentication is handled via #SoupSession signals.
 * 
 * @host contains the hostname, and @port the port specified in the
 * URI. If the URI doesn't contain a hostname, @host will be %NULL,
 * and if it doesn't specify a port, @port may be 0. However, for
 * "http" and "https" URIs, @host is guaranteed to be non-%NULL
 * (trying to parse an http URI with no @host will return %NULL), and
 * @port will always be non-0 (because libsoup knows the default value
 * to use when it is not specified in the URI).
 * 
 * @path is always non-%NULL. For http/https URIs, @path will never be
 * an empty string either; if the input URI has no path, the parsed
 * #SoupURI will have a @path of "/".
 * 
 * @query and @fragment are optional for all URI types.
 * soup_form_decode() may be useful for parsing @query.
 * 
 * Note that @path, @query, and @fragment may contain
 * %<!-- -->-encoded characters. soup_uri_new() calls
 * soup_uri_normalize() on them, but not soup_uri_decode(). This is
 * necessary to ensure that soup_uri_to_string() will generate a URI
 * that has exactly the same meaning as the original. (In theory,
 * #SoupURI should leave @user, @password, and @host partially-encoded
 * as well, but this would be more annoying than useful.)
 */
public final class URI
{
	/** the main Gtk struct */
	protected SoupURI* soupURI;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupURI* getURIStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupURI;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupURI;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupURI* soupURI, bool ownedRef = false)
	{
		this.soupURI = soupURI;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_SOUP[0]) && ownedRef )
			soup_uri_free(soupURI);
	}


	/**
	 * the URI scheme (eg, "http")
	 */
	public @property string scheme()
	{
		return Str.toString(soupURI.scheme);
	}

	/** Ditto */
	public @property void scheme(string value)
	{
		soupURI.scheme = Str.toStringz(value);
	}

	/**
	 * a username, or %NULL
	 */
	public @property string user()
	{
		return Str.toString(soupURI.user);
	}

	/** Ditto */
	public @property void user(string value)
	{
		soupURI.user = Str.toStringz(value);
	}

	/**
	 * a password, or %NULL
	 */
	public @property string password()
	{
		return Str.toString(soupURI.password);
	}

	/** Ditto */
	public @property void password(string value)
	{
		soupURI.password = Str.toStringz(value);
	}

	/**
	 * the hostname or IP address, or %NULL
	 */
	public @property string host()
	{
		return Str.toString(soupURI.host);
	}

	/** Ditto */
	public @property void host(string value)
	{
		soupURI.host = Str.toStringz(value);
	}

	/**
	 * the port number on @host
	 */
	public @property uint port()
	{
		return soupURI.port;
	}

	/** Ditto */
	public @property void port(uint value)
	{
		soupURI.port = value;
	}

	/**
	 * the path on @host
	 */
	public @property string path()
	{
		return Str.toString(soupURI.path);
	}

	/** Ditto */
	public @property void path(string value)
	{
		soupURI.path = Str.toStringz(value);
	}

	/**
	 * a query for @path, or %NULL
	 */
	public @property string query()
	{
		return Str.toString(soupURI.query);
	}

	/** Ditto */
	public @property void query(string value)
	{
		soupURI.query = Str.toStringz(value);
	}

	/**
	 * a fragment identifier within @path, or %NULL
	 */
	public @property string fragment()
	{
		return Str.toString(soupURI.fragment);
	}

	/** Ditto */
	public @property void fragment(string value)
	{
		soupURI.fragment = Str.toStringz(value);
	}

	/** */
	public static GType getType()
	{
		return soup_uri_get_type();
	}

	/**
	 * Parses an absolute URI.
	 *
	 * You can also pass %NULL for @uri_string if you want to get back an
	 * "empty" #SoupURI that you can fill in by hand. (You will need to
	 * call at least soup_uri_set_scheme() and soup_uri_set_path(), since
	 * those fields are required.)
	 *
	 * Params:
	 *     uriString = a URI
	 *
	 * Returns: a #SoupURI, or %NULL if the given string
	 *     was found to be invalid.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string uriString)
	{
		auto __p = soup_uri_new(Str.toStringz(uriString));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupURI*) __p);
	}

	/**
	 * Parses @uri_string relative to @base.
	 *
	 * Params:
	 *     base = a base URI
	 *     uriString = the URI
	 *
	 * Returns: a parsed #SoupURI.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(URI base, string uriString)
	{
		auto __p = soup_uri_new_with_base((base is null) ? null : base.getURIStruct(), Str.toStringz(uriString));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_base");
		}

		this(cast(SoupURI*) __p);
	}

	/**
	 * Copies @uri
	 *
	 * Returns: a copy of @uri, which must be freed with soup_uri_free()
	 */
	public URI copy()
	{
		auto __p = soup_uri_copy(soupURI);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URI)(cast(SoupURI*) __p, true);
	}

	/**
	 * Makes a copy of @uri, considering only the protocol, host, and port
	 *
	 * Returns: the new #SoupURI
	 *
	 * Since: 2.28
	 */
	public URI copyHost()
	{
		auto __p = soup_uri_copy_host(soupURI);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URI)(cast(SoupURI*) __p, true);
	}

	/**
	 * Tests whether or not @uri1 and @uri2 are equal in all parts
	 *
	 * Params:
	 *     uri2 = another #SoupURI
	 *
	 * Returns: %TRUE or %FALSE
	 */
	public bool equal(URI uri2)
	{
		return soup_uri_equal(soupURI, (uri2 is null) ? null : uri2.getURIStruct()) != 0;
	}

	/**
	 * Frees @uri.
	 */
	public void free()
	{
		soup_uri_free(soupURI);
		ownedRef = false;
	}

	/**
	 * Gets @uri's fragment.
	 *
	 * Returns: @uri's fragment.
	 *
	 * Since: 2.32
	 */
	public string getFragment()
	{
		return Str.toString(soup_uri_get_fragment(soupURI));
	}

	/**
	 * Gets @uri's host.
	 *
	 * Returns: @uri's host.
	 *
	 * Since: 2.32
	 */
	public string getHost()
	{
		return Str.toString(soup_uri_get_host(soupURI));
	}

	/**
	 * Gets @uri's password.
	 *
	 * Returns: @uri's password.
	 *
	 * Since: 2.32
	 */
	public string getPassword()
	{
		return Str.toString(soup_uri_get_password(soupURI));
	}

	/**
	 * Gets @uri's path.
	 *
	 * Returns: @uri's path.
	 *
	 * Since: 2.32
	 */
	public string getPath()
	{
		return Str.toString(soup_uri_get_path(soupURI));
	}

	/**
	 * Gets @uri's port.
	 *
	 * Returns: @uri's port.
	 *
	 * Since: 2.32
	 */
	public uint getPort()
	{
		return soup_uri_get_port(soupURI);
	}

	/**
	 * Gets @uri's query.
	 *
	 * Returns: @uri's query.
	 *
	 * Since: 2.32
	 */
	public string getQuery()
	{
		return Str.toString(soup_uri_get_query(soupURI));
	}

	/**
	 * Gets @uri's scheme.
	 *
	 * Returns: @uri's scheme.
	 *
	 * Since: 2.32
	 */
	public string getScheme()
	{
		return Str.toString(soup_uri_get_scheme(soupURI));
	}

	/**
	 * Gets @uri's user.
	 *
	 * Returns: @uri's user.
	 *
	 * Since: 2.32
	 */
	public string getUser()
	{
		return Str.toString(soup_uri_get_user(soupURI));
	}

	/**
	 * Compares @v1 and @v2, considering only the scheme, host, and port.
	 *
	 * Params:
	 *     v2 = a #SoupURI with a non-%NULL @host member
	 *
	 * Returns: whether or not the URIs are equal in scheme, host,
	 *     and port.
	 *
	 * Since: 2.28
	 */
	public bool hostEqual(URI v2)
	{
		return soup_uri_host_equal(soupURI, (v2 is null) ? null : v2.getURIStruct()) != 0;
	}

	/**
	 * Hashes @key, considering only the scheme, host, and port.
	 *
	 * Returns: a hash
	 *
	 * Since: 2.28
	 */
	public uint hostHash()
	{
		return soup_uri_host_hash(soupURI);
	}

	/**
	 * Sets @uri's fragment to @fragment.
	 *
	 * Params:
	 *     fragment = the fragment
	 */
	public void setFragment(string fragment)
	{
		soup_uri_set_fragment(soupURI, Str.toStringz(fragment));
	}

	/**
	 * Sets @uri's host to @host.
	 *
	 * If @host is an IPv6 IP address, it should not include the brackets
	 * required by the URI syntax; they will be added automatically when
	 * converting @uri to a string.
	 *
	 * http and https URIs should not have a %NULL @host.
	 *
	 * Params:
	 *     host = the hostname or IP address, or %NULL
	 */
	public void setHost(string host)
	{
		soup_uri_set_host(soupURI, Str.toStringz(host));
	}

	/**
	 * Sets @uri's password to @password.
	 *
	 * Params:
	 *     password = the password, or %NULL
	 */
	public void setPassword(string password)
	{
		soup_uri_set_password(soupURI, Str.toStringz(password));
	}

	/**
	 * Sets @uri's path to @path.
	 *
	 * Params:
	 *     path = the non-%NULL path
	 */
	public void setPath(string path)
	{
		soup_uri_set_path(soupURI, Str.toStringz(path));
	}

	/**
	 * Sets @uri's port to @port. If @port is 0, @uri will not have an
	 * explicitly-specified port.
	 *
	 * Params:
	 *     port = the port, or 0
	 */
	public void setPort(uint port)
	{
		soup_uri_set_port(soupURI, port);
	}

	/**
	 * Sets @uri's query to @query.
	 *
	 * Params:
	 *     query = the query
	 */
	public void setQuery(string query)
	{
		soup_uri_set_query(soupURI, Str.toStringz(query));
	}

	/**
	 * Sets @uri's query to the result of encoding @form according to the
	 * HTML form rules. See soup_form_encode_hash() for more information.
	 *
	 * Params:
	 *     form = a #GHashTable containing HTML form
	 *         information
	 */
	public void setQueryFromForm(HashTable form)
	{
		soup_uri_set_query_from_form(soupURI, (form is null) ? null : form.getHashTableStruct());
	}

	/**
	 * Sets @uri's scheme to @scheme. This will also set @uri's port to
	 * the default port for @scheme, if known.
	 *
	 * Params:
	 *     scheme = the URI scheme
	 */
	public void setScheme(string scheme)
	{
		soup_uri_set_scheme(soupURI, Str.toStringz(scheme));
	}

	/**
	 * Sets @uri's user to @user.
	 *
	 * Params:
	 *     user = the username, or %NULL
	 */
	public void setUser(string user)
	{
		soup_uri_set_user(soupURI, Str.toStringz(user));
	}

	/**
	 * Returns a string representing @uri.
	 *
	 * If @just_path_and_query is %TRUE, this concatenates the path and query
	 * together. That is, it constructs the string that would be needed in
	 * the Request-Line of an HTTP request for @uri.
	 *
	 * Note that the output will never contain a password, even if @uri
	 * does.
	 *
	 * Params:
	 *     justPathAndQuery = if %TRUE, output just the path and query portions
	 *
	 * Returns: a string representing @uri, which the caller must free.
	 */
	public string toString(bool justPathAndQuery)
	{
		auto retStr = soup_uri_to_string(soupURI, justPathAndQuery);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Tests if @uri uses the default port for its scheme. (Eg, 80 for
	 * http.) (This only works for http, https and ftp; libsoup does not know
	 * the default ports of other protocols.)
	 *
	 * Returns: %TRUE or %FALSE
	 */
	public bool usesDefaultPort()
	{
		return soup_uri_uses_default_port(soupURI) != 0;
	}

	/**
	 * Fully %<!-- -->-decodes @part.
	 *
	 * In the past, this would return %NULL if @part contained invalid
	 * percent-encoding, but now it just ignores the problem (as
	 * soup_uri_new() already did).
	 *
	 * Params:
	 *     part = a URI part
	 *
	 * Returns: the decoded URI part.
	 */
	public static string decode(string part)
	{
		auto retStr = soup_uri_decode(Str.toStringz(part));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This %<!-- -->-encodes the given URI part and returns the escaped
	 * version in allocated memory, which the caller must free when it is
	 * done.
	 *
	 * Params:
	 *     part = a URI part
	 *     escapeExtra = additional reserved characters to
	 *         escape (or %NULL)
	 *
	 * Returns: the encoded URI part
	 */
	public static string encode(string part, string escapeExtra)
	{
		auto retStr = soup_uri_encode(Str.toStringz(part), Str.toStringz(escapeExtra));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * %<!-- -->-decodes any "unreserved" characters (or characters in
	 * @unescape_extra) in @part, and %<!-- -->-encodes any non-ASCII
	 * characters, spaces, and non-printing characters in @part.
	 *
	 * "Unreserved" characters are those that are not allowed to be used
	 * for punctuation according to the URI spec. For example, letters are
	 * unreserved, so soup_uri_normalize() will turn
	 * <literal>http://example.com/foo/b%<!-- -->61r</literal> into
	 * <literal>http://example.com/foo/bar</literal>, which is guaranteed
	 * to mean the same thing. However, "/" is "reserved", so
	 * <literal>http://example.com/foo%<!-- -->2Fbar</literal> would not
	 * be changed, because it might mean something different to the
	 * server.
	 *
	 * In the past, this would return %NULL if @part contained invalid
	 * percent-encoding, but now it just ignores the problem (as
	 * soup_uri_new() already did).
	 *
	 * Params:
	 *     part = a URI part
	 *     unescapeExtra = reserved characters to unescape (or %NULL)
	 *
	 * Returns: the normalized URI part
	 */
	public static string normalize(string part, string unescapeExtra)
	{
		auto retStr = soup_uri_normalize(Str.toStringz(part), Str.toStringz(unescapeExtra));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
