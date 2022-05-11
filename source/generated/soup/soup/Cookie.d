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


module soup.Cookie;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import linker.Loader;
private import soup.Date;
private import soup.URI;
private import soup.c.functions;
public  import soup.c.types;


/**
 * An HTTP cookie.
 * 
 * @name and @value will be set for all cookies. If the cookie is
 * generated from a string that appears to have no name, then @name
 * will be the empty string.
 * 
 * @domain and @path give the host or domain, and path within that
 * host/domain, to restrict this cookie to. If @domain starts with
 * ".", that indicates a domain (which matches the string after the
 * ".", or any hostname that has @domain as a suffix). Otherwise, it
 * is a hostname and must match exactly.
 * 
 * @expires will be non-%NULL if the cookie uses either the original
 * "expires" attribute, or the newer "max-age" attribute. If @expires
 * is %NULL, it indicates that neither "expires" nor "max-age" was
 * specified, and the cookie expires at the end of the session.
 * 
 * If @http_only is set, the cookie should not be exposed to untrusted
 * code (eg, javascript), so as to minimize the danger posed by
 * cross-site scripting attacks.
 *
 * Since: 2.24
 */
public final class Cookie
{
	/** the main Gtk struct */
	protected SoupCookie* soupCookie;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupCookie* getCookieStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupCookie;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupCookie;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupCookie* soupCookie, bool ownedRef = false)
	{
		this.soupCookie = soupCookie;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_SOUP[0]) && ownedRef )
			soup_cookie_free(soupCookie);
	}


	/**
	 * the cookie name
	 */
	public @property string name()
	{
		return Str.toString(soupCookie.name);
	}

	/** Ditto */
	public @property void name(string value)
	{
		soupCookie.name = Str.toStringz(value);
	}

	/**
	 * the cookie value
	 */
	public @property string value()
	{
		return Str.toString(soupCookie.value);
	}

	/** Ditto */
	public @property void value(string value)
	{
		soupCookie.value = Str.toStringz(value);
	}

	/**
	 * the "domain" attribute, or else the hostname that the
	 * cookie came from.
	 */
	public @property string domain()
	{
		return Str.toString(soupCookie.domain);
	}

	/** Ditto */
	public @property void domain(string value)
	{
		soupCookie.domain = Str.toStringz(value);
	}

	/**
	 * the "path" attribute, or %NULL
	 */
	public @property string path()
	{
		return Str.toString(soupCookie.path);
	}

	/** Ditto */
	public @property void path(string value)
	{
		soupCookie.path = Str.toStringz(value);
	}

	/**
	 * the cookie expiration time, or %NULL for a session cookie
	 */
	public @property Date expires()
	{
		return ObjectG.getDObject!(Date)(soupCookie.expires, false);
	}

	/** Ditto */
	public @property void expires(Date value)
	{
		soupCookie.expires = value.getDateStruct();
	}

	/**
	 * %TRUE if the cookie should only be tranferred over SSL
	 */
	public @property bool secure()
	{
		return soupCookie.secure != 0;
	}

	/** Ditto */
	public @property void secure(bool value)
	{
		soupCookie.secure = value;
	}

	/**
	 * %TRUE if the cookie should not be exposed to scripts
	 */
	public @property bool httpOnly()
	{
		return soupCookie.httpOnly != 0;
	}

	/** Ditto */
	public @property void httpOnly(bool value)
	{
		soupCookie.httpOnly = value;
	}

	/** */
	public static GType getType()
	{
		return soup_cookie_get_type();
	}

	/**
	 * Creates a new #SoupCookie with the given attributes. (Use
	 * soup_cookie_set_secure() and soup_cookie_set_http_only() if you
	 * need to set those attributes on the returned cookie.)
	 *
	 * If @domain starts with ".", that indicates a domain (which matches
	 * the string after the ".", or any hostname that has @domain as a
	 * suffix). Otherwise, it is a hostname and must match exactly.
	 *
	 * @max_age is used to set the "expires" attribute on the cookie; pass
	 * -1 to not include the attribute (indicating that the cookie expires
	 * with the current session), 0 for an already-expired cookie, or a
	 * lifetime in seconds. You can use the constants
	 * %SOUP_COOKIE_MAX_AGE_ONE_HOUR, %SOUP_COOKIE_MAX_AGE_ONE_DAY,
	 * %SOUP_COOKIE_MAX_AGE_ONE_WEEK and %SOUP_COOKIE_MAX_AGE_ONE_YEAR (or
	 * multiples thereof) to calculate this value. (If you really care
	 * about setting the exact time that the cookie will expire, use
	 * soup_cookie_set_expires().)
	 *
	 * Params:
	 *     name = cookie name
	 *     value = cookie value
	 *     domain = cookie domain or hostname
	 *     path = cookie path, or %NULL
	 *     maxAge = max age of the cookie, or -1 for a session cookie
	 *
	 * Returns: a new #SoupCookie.
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string value, string domain, string path, int maxAge)
	{
		auto __p = soup_cookie_new(Str.toStringz(name), Str.toStringz(value), Str.toStringz(domain), Str.toStringz(path), maxAge);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupCookie*) __p);
	}

	/**
	 * Tests if @cookie should be sent to @uri.
	 *
	 * (At the moment, this does not check that @cookie's domain matches
	 * @uri, because it assumes that the caller has already done that.
	 * But don't rely on that; it may change in the future.)
	 *
	 * Params:
	 *     uri = a #SoupURI
	 *
	 * Returns: %TRUE if @cookie should be sent to @uri, %FALSE if
	 *     not
	 *
	 * Since: 2.24
	 */
	public bool appliesToUri(URI uri)
	{
		return soup_cookie_applies_to_uri(soupCookie, (uri is null) ? null : uri.getURIStruct()) != 0;
	}

	/**
	 * Copies @cookie.
	 *
	 * Returns: a copy of @cookie
	 *
	 * Since: 2.24
	 */
	public Cookie copy()
	{
		auto __p = soup_cookie_copy(soupCookie);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Cookie)(cast(SoupCookie*) __p, true);
	}

	/**
	 * Checks if the @cookie's domain and @host match in the sense that
	 * @cookie should be sent when making a request to @host, or that
	 * @cookie should be accepted when receiving a response from @host.
	 *
	 * Params:
	 *     host = a URI
	 *
	 * Returns: %TRUE if the domains match, %FALSE otherwise
	 *
	 * Since: 2.30
	 */
	public bool domainMatches(string host)
	{
		return soup_cookie_domain_matches(soupCookie, Str.toStringz(host)) != 0;
	}

	/**
	 * Tests if @cookie1 and @cookie2 are equal.
	 *
	 * Note that currently, this does not check that the cookie domains
	 * match. This may change in the future.
	 *
	 * Params:
	 *     cookie2 = a #SoupCookie
	 *
	 * Returns: whether the cookies are equal.
	 *
	 * Since: 2.24
	 */
	public bool equal(Cookie cookie2)
	{
		return soup_cookie_equal(soupCookie, (cookie2 is null) ? null : cookie2.getCookieStruct()) != 0;
	}

	/**
	 * Frees @cookie
	 *
	 * Since: 2.24
	 */
	public void free()
	{
		soup_cookie_free(soupCookie);
		ownedRef = false;
	}

	/**
	 * Gets @cookie's domain
	 *
	 * Returns: @cookie's domain
	 *
	 * Since: 2.32
	 */
	public string getDomain()
	{
		return Str.toString(soup_cookie_get_domain(soupCookie));
	}

	/**
	 * Gets @cookie's expiration time.
	 *
	 * Returns: @cookie's expiration
	 *     time, which is owned by @cookie and should not be modified or
	 *     freed.
	 *
	 * Since: 2.32
	 */
	public Date getExpires()
	{
		auto __p = soup_cookie_get_expires(soupCookie);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Date)(cast(SoupDate*) __p);
	}

	/**
	 * Gets @cookie's HttpOnly attribute
	 *
	 * Returns: @cookie's HttpOnly attribute
	 *
	 * Since: 2.32
	 */
	public bool getHttpOnly()
	{
		return soup_cookie_get_http_only(soupCookie) != 0;
	}

	/**
	 * Gets @cookie's name
	 *
	 * Returns: @cookie's name
	 *
	 * Since: 2.32
	 */
	public string getName()
	{
		return Str.toString(soup_cookie_get_name(soupCookie));
	}

	/**
	 * Gets @cookie's path
	 *
	 * Returns: @cookie's path
	 *
	 * Since: 2.32
	 */
	public string getPath()
	{
		return Str.toString(soup_cookie_get_path(soupCookie));
	}

	/**
	 * Returns: a #SoupSameSitePolicy
	 *
	 * Since: 2.70
	 */
	public SoupSameSitePolicy getSameSitePolicy()
	{
		return soup_cookie_get_same_site_policy(soupCookie);
	}

	/**
	 * Gets @cookie's secure attribute
	 *
	 * Returns: @cookie's secure attribute
	 *
	 * Since: 2.32
	 */
	public bool getSecure()
	{
		return soup_cookie_get_secure(soupCookie) != 0;
	}

	/**
	 * Gets @cookie's value
	 *
	 * Returns: @cookie's value
	 *
	 * Since: 2.32
	 */
	public string getValue()
	{
		return Str.toString(soup_cookie_get_value(soupCookie));
	}

	/**
	 * Sets @cookie's domain to @domain
	 *
	 * Params:
	 *     domain = the new domain
	 *
	 * Since: 2.24
	 */
	public void setDomain(string domain)
	{
		soup_cookie_set_domain(soupCookie, Str.toStringz(domain));
	}

	/**
	 * Sets @cookie's expiration time to @expires. If @expires is %NULL,
	 * @cookie will be a session cookie and will expire at the end of the
	 * client's session.
	 *
	 * (This sets the same property as soup_cookie_set_max_age().)
	 *
	 * Params:
	 *     expires = the new expiration time, or %NULL
	 *
	 * Since: 2.24
	 */
	public void setExpires(Date expires)
	{
		soup_cookie_set_expires(soupCookie, (expires is null) ? null : expires.getDateStruct());
	}

	/**
	 * Sets @cookie's HttpOnly attribute to @http_only. If %TRUE, @cookie
	 * will be marked as "http only", meaning it should not be exposed to
	 * web page scripts or other untrusted code.
	 *
	 * Params:
	 *     httpOnly = the new value for the HttpOnly attribute
	 *
	 * Since: 2.24
	 */
	public void setHttpOnly(bool httpOnly)
	{
		soup_cookie_set_http_only(soupCookie, httpOnly);
	}

	/**
	 * Sets @cookie's max age to @max_age. If @max_age is -1, the cookie
	 * is a session cookie, and will expire at the end of the client's
	 * session. Otherwise, it is the number of seconds until the cookie
	 * expires. You can use the constants %SOUP_COOKIE_MAX_AGE_ONE_HOUR,
	 * %SOUP_COOKIE_MAX_AGE_ONE_DAY, %SOUP_COOKIE_MAX_AGE_ONE_WEEK and
	 * %SOUP_COOKIE_MAX_AGE_ONE_YEAR (or multiples thereof) to calculate
	 * this value. (A value of 0 indicates that the cookie should be
	 * considered already-expired.)
	 *
	 * (This sets the same property as soup_cookie_set_expires().)
	 *
	 * Params:
	 *     maxAge = the new max age
	 *
	 * Since: 2.24
	 */
	public void setMaxAge(int maxAge)
	{
		soup_cookie_set_max_age(soupCookie, maxAge);
	}

	/**
	 * Sets @cookie's name to @name
	 *
	 * Params:
	 *     name = the new name
	 *
	 * Since: 2.24
	 */
	public void setName(string name)
	{
		soup_cookie_set_name(soupCookie, Str.toStringz(name));
	}

	/**
	 * Sets @cookie's path to @path
	 *
	 * Params:
	 *     path = the new path
	 *
	 * Since: 2.24
	 */
	public void setPath(string path)
	{
		soup_cookie_set_path(soupCookie, Str.toStringz(path));
	}

	/**
	 * When used in conjunction with soup_cookie_jar_get_cookie_list_with_same_site_info() this
	 * sets the policy of when this cookie should be exposed.
	 *
	 * Params:
	 *     policy = a #SoupSameSitePolicy
	 *
	 * Since: 2.70
	 */
	public void setSameSitePolicy(SoupSameSitePolicy policy)
	{
		soup_cookie_set_same_site_policy(soupCookie, policy);
	}

	/**
	 * Sets @cookie's secure attribute to @secure. If %TRUE, @cookie will
	 * only be transmitted from the client to the server over secure
	 * (https) connections.
	 *
	 * Params:
	 *     secure = the new value for the secure attribute
	 *
	 * Since: 2.24
	 */
	public void setSecure(bool secure)
	{
		soup_cookie_set_secure(soupCookie, secure);
	}

	/**
	 * Sets @cookie's value to @value
	 *
	 * Params:
	 *     value = the new value
	 *
	 * Since: 2.24
	 */
	public void setValue(string value)
	{
		soup_cookie_set_value(soupCookie, Str.toStringz(value));
	}

	/**
	 * Serializes @cookie in the format used by the Cookie header (ie, for
	 * returning a cookie from a #SoupSession to a server).
	 *
	 * Returns: the header
	 *
	 * Since: 2.24
	 */
	public string toCookieHeader()
	{
		auto retStr = soup_cookie_to_cookie_header(soupCookie);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Serializes @cookie in the format used by the Set-Cookie header
	 * (ie, for sending a cookie from a #SoupServer to a client).
	 *
	 * Returns: the header
	 *
	 * Since: 2.24
	 */
	public string toSetCookieHeader()
	{
		auto retStr = soup_cookie_to_set_cookie_header(soupCookie);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Parses @header and returns a #SoupCookie. (If @header contains
	 * multiple cookies, only the first one will be parsed.)
	 *
	 * If @header does not have "path" or "domain" attributes, they will
	 * be defaulted from @origin. If @origin is %NULL, path will default
	 * to "/", but domain will be left as %NULL. Note that this is not a
	 * valid state for a #SoupCookie, and you will need to fill in some
	 * appropriate string for the domain if you want to actually make use
	 * of the cookie.
	 *
	 * Params:
	 *     header = a cookie string (eg, the value of a Set-Cookie header)
	 *     origin = origin of the cookie, or %NULL
	 *
	 * Returns: a new #SoupCookie, or %NULL if it could
	 *     not be parsed, or contained an illegal "domain" attribute for a
	 *     cookie originating from @origin.
	 *
	 * Since: 2.24
	 */
	public static Cookie parse(string header, URI origin)
	{
		auto __p = soup_cookie_parse(Str.toStringz(header), (origin is null) ? null : origin.getURIStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Cookie)(cast(SoupCookie*) __p, true);
	}
}
