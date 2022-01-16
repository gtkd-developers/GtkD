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


module soup.CookieJar;

private import glib.ConstructionException;
private import glib.ListSG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import soup.Cookie;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.URI;
private import soup.c.functions;
public  import soup.c.types;
private import std.algorithm;


/** */
public class CookieJar : ObjectG, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupCookieJar* soupCookieJar;

	/** Get the main Gtk struct */
	public SoupCookieJar* getCookieJarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupCookieJar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupCookieJar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupCookieJar* soupCookieJar, bool ownedRef = false)
	{
		this.soupCookieJar = soupCookieJar;
		super(cast(GObject*)soupCookieJar, ownedRef);
	}

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupCookieJar);


	/** */
	public static GType getType()
	{
		return soup_cookie_jar_get_type();
	}

	/**
	 * Creates a new #SoupCookieJar. The base #SoupCookieJar class does
	 * not support persistent storage of cookies; use a subclass for that.
	 *
	 * Returns: a new #SoupCookieJar
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = soup_cookie_jar_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupCookieJar*) __p, true);
	}

	/**
	 * Adds @cookie to @jar, emitting the 'changed' signal if we are modifying
	 * an existing cookie or adding a valid new cookie ('valid' means
	 * that the cookie's expire date is not in the past).
	 *
	 * @cookie will be 'stolen' by the jar, so don't free it afterwards.
	 *
	 * Params:
	 *     cookie = a #SoupCookie
	 *
	 * Since: 2.26
	 */
	public void addCookie(Cookie cookie)
	{
		soup_cookie_jar_add_cookie(soupCookieJar, (cookie is null) ? null : cookie.getCookieStruct(true));
	}

	/**
	 * Adds @cookie to @jar, emitting the 'changed' signal if we are modifying
	 * an existing cookie or adding a valid new cookie ('valid' means
	 * that the cookie's expire date is not in the past).
	 *
	 * @first_party will be used to reject cookies coming from third party
	 * resources in case such a security policy is set in the @jar.
	 *
	 * @uri will be used to reject setting or overwriting secure cookies
	 * from insecure origins. %NULL is treated as secure.
	 *
	 * @cookie will be 'stolen' by the jar, so don't free it afterwards.
	 *
	 * Params:
	 *     cookie = a #SoupCookie
	 *     uri = the URI setting the cookie
	 *     firstParty = the URI for the main document
	 *
	 * Since: 2.68
	 */
	public void addCookieFull(Cookie cookie, URI uri, URI firstParty)
	{
		soup_cookie_jar_add_cookie_full(soupCookieJar, (cookie is null) ? null : cookie.getCookieStruct(true), (uri is null) ? null : uri.getURIStruct(), (firstParty is null) ? null : firstParty.getURIStruct());
	}

	/**
	 * Adds @cookie to @jar, emitting the 'changed' signal if we are modifying
	 * an existing cookie or adding a valid new cookie ('valid' means
	 * that the cookie's expire date is not in the past).
	 *
	 * @first_party will be used to reject cookies coming from third party
	 * resources in case such a security policy is set in the @jar.
	 *
	 * @cookie will be 'stolen' by the jar, so don't free it afterwards.
	 *
	 * For secure cookies to work properly you may want to use
	 * soup_cookie_jar_add_cookie_full().
	 *
	 * Params:
	 *     firstParty = the URI for the main document
	 *     cookie = a #SoupCookie
	 *
	 * Since: 2.40
	 */
	public void addCookieWithFirstParty(URI firstParty, Cookie cookie)
	{
		soup_cookie_jar_add_cookie_with_first_party(soupCookieJar, (firstParty is null) ? null : firstParty.getURIStruct(), (cookie is null) ? null : cookie.getCookieStruct(true));
	}

	/**
	 * Constructs a #GSList with every cookie inside the @jar.
	 * The cookies in the list are a copy of the original, so
	 * you have to free them when you are done with them.
	 *
	 * Returns: a #GSList
	 *     with all the cookies in the @jar.
	 *
	 * Since: 2.26
	 */
	public ListSG allCookies()
	{
		auto __p = soup_cookie_jar_all_cookies(soupCookieJar);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p, true);
	}

	/**
	 * Deletes @cookie from @jar, emitting the 'changed' signal.
	 *
	 * Params:
	 *     cookie = a #SoupCookie
	 *
	 * Since: 2.26
	 */
	public void deleteCookie(Cookie cookie)
	{
		soup_cookie_jar_delete_cookie(soupCookieJar, (cookie is null) ? null : cookie.getCookieStruct());
	}

	/**
	 * Gets @jar's #SoupCookieJarAcceptPolicy
	 *
	 * Returns: the #SoupCookieJarAcceptPolicy set in the @jar
	 *
	 * Since: 2.30
	 */
	public SoupCookieJarAcceptPolicy getAcceptPolicy()
	{
		return soup_cookie_jar_get_accept_policy(soupCookieJar);
	}

	/**
	 * Retrieves the list of cookies that would be sent with a request to @uri
	 * as a #GSList of #SoupCookie objects.
	 *
	 * If @for_http is %TRUE, the return value will include cookies marked
	 * "HttpOnly" (that is, cookies that the server wishes to keep hidden
	 * from client-side scripting operations such as the JavaScript
	 * document.cookies property). Since #SoupCookieJar sets the Cookie
	 * header itself when making the actual HTTP request, you should
	 * almost certainly be setting @for_http to %FALSE if you are calling
	 * this.
	 *
	 * Params:
	 *     uri = a #SoupURI
	 *     forHttp = whether or not the return value is being passed directly
	 *         to an HTTP operation
	 *
	 * Returns: a #GSList
	 *     with the cookies in the @jar that would be sent with a request to @uri.
	 *
	 * Since: 2.40
	 */
	public ListSG getCookieList(URI uri, bool forHttp)
	{
		auto __p = soup_cookie_jar_get_cookie_list(soupCookieJar, (uri is null) ? null : uri.getURIStruct(), forHttp);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p, true);
	}

	/**
	 * This is an extended version of soup_cookie_jar_get_cookie_list() that
	 * provides more information required to use SameSite cookies. See the
	 * [SameSite cookies spec](https://tools.ietf.org/html/draft-ietf-httpbis-cookie-same-site-00)
	 * for more detailed information.
	 *
	 * Params:
	 *     uri = a #SoupURI
	 *     topLevel = a #SoupURI for the top level document
	 *     siteForCookies = a #SoupURI indicating the origin to get cookies for
	 *     forHttp = whether or not the return value is being passed directly
	 *         to an HTTP operation
	 *     isSafeMethod = if the HTTP method is safe, as defined by RFC 7231, ignored when @for_http is %FALSE
	 *     isTopLevelNavigation = whether or not the HTTP request is part of
	 *         top level navigation
	 *
	 * Returns: a #GSList
	 *     with the cookies in the @jar that would be sent with a request to @uri.
	 *
	 * Since: 2.70
	 */
	public ListSG getCookieListWithSameSiteInfo(URI uri, URI topLevel, URI siteForCookies, bool forHttp, bool isSafeMethod, bool isTopLevelNavigation)
	{
		auto __p = soup_cookie_jar_get_cookie_list_with_same_site_info(soupCookieJar, (uri is null) ? null : uri.getURIStruct(), (topLevel is null) ? null : topLevel.getURIStruct(), (siteForCookies is null) ? null : siteForCookies.getURIStruct(), forHttp, isSafeMethod, isTopLevelNavigation);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p, true);
	}

	/**
	 * Retrieves (in Cookie-header form) the list of cookies that would
	 * be sent with a request to @uri.
	 *
	 * If @for_http is %TRUE, the return value will include cookies marked
	 * "HttpOnly" (that is, cookies that the server wishes to keep hidden
	 * from client-side scripting operations such as the JavaScript
	 * document.cookies property). Since #SoupCookieJar sets the Cookie
	 * header itself when making the actual HTTP request, you should
	 * almost certainly be setting @for_http to %FALSE if you are calling
	 * this.
	 *
	 * Params:
	 *     uri = a #SoupURI
	 *     forHttp = whether or not the return value is being passed directly
	 *         to an HTTP operation
	 *
	 * Returns: the cookies, in string form, or %NULL if
	 *     there are no cookies for @uri.
	 *
	 * Since: 2.24
	 */
	public string getCookies(URI uri, bool forHttp)
	{
		auto retStr = soup_cookie_jar_get_cookies(soupCookieJar, (uri is null) ? null : uri.getURIStruct(), forHttp);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets whether @jar stores cookies persistenly.
	 *
	 * Returns: %TRUE if @jar storage is persistent or %FALSE otherwise.
	 *
	 * Since: 2.40
	 */
	public bool isPersistent()
	{
		return soup_cookie_jar_is_persistent(soupCookieJar) != 0;
	}

	/**
	 * This function exists for backward compatibility, but does not do
	 * anything any more; cookie jars are saved automatically when they
	 * are changed.
	 *
	 * Deprecated: This is a no-op.
	 *
	 * Since: 2.24
	 */
	public void save()
	{
		soup_cookie_jar_save(soupCookieJar);
	}

	/**
	 * Sets @policy as the cookie acceptance policy for @jar.
	 *
	 * Params:
	 *     policy = a #SoupCookieJarAcceptPolicy
	 *
	 * Since: 2.30
	 */
	public void setAcceptPolicy(SoupCookieJarAcceptPolicy policy)
	{
		soup_cookie_jar_set_accept_policy(soupCookieJar, policy);
	}

	/**
	 * Adds @cookie to @jar, exactly as though it had appeared in a
	 * Set-Cookie header returned from a request to @uri.
	 *
	 * Keep in mind that if the #SoupCookieJarAcceptPolicy set is either
	 * %SOUP_COOKIE_JAR_ACCEPT_NO_THIRD_PARTY or
	 * %SOUP_COOKIE_JAR_ACCEPT_GRANDFATHERED_THIRD_PARTY you'll need to use
	 * soup_cookie_jar_set_cookie_with_first_party(), otherwise the jar
	 * will have no way of knowing if the cookie is being set by a third
	 * party or not.
	 *
	 * Params:
	 *     uri = the URI setting the cookie
	 *     cookie = the stringified cookie to set
	 *
	 * Since: 2.24
	 */
	public void setCookie(URI uri, string cookie)
	{
		soup_cookie_jar_set_cookie(soupCookieJar, (uri is null) ? null : uri.getURIStruct(), Str.toStringz(cookie));
	}

	/**
	 * Adds @cookie to @jar, exactly as though it had appeared in a
	 * Set-Cookie header returned from a request to @uri. @first_party
	 * will be used to reject cookies coming from third party resources in
	 * case such a security policy is set in the @jar.
	 *
	 * Params:
	 *     uri = the URI setting the cookie
	 *     firstParty = the URI for the main document
	 *     cookie = the stringified cookie to set
	 *
	 * Since: 2.30
	 */
	public void setCookieWithFirstParty(URI uri, URI firstParty, string cookie)
	{
		soup_cookie_jar_set_cookie_with_first_party(soupCookieJar, (uri is null) ? null : uri.getURIStruct(), (firstParty is null) ? null : firstParty.getURIStruct(), Str.toStringz(cookie));
	}

	/**
	 * Emitted when @jar changes. If a cookie has been added,
	 * @new_cookie will contain the newly-added cookie and
	 * @old_cookie will be %NULL. If a cookie has been deleted,
	 * @old_cookie will contain the to-be-deleted cookie and
	 * @new_cookie will be %NULL. If a cookie has been changed,
	 * @old_cookie will contain its old value, and @new_cookie its
	 * new value.
	 *
	 * Params:
	 *     oldCookie = the old #SoupCookie value
	 *     newCookie = the new #SoupCookie value
	 */
	gulong addOnChanged(void delegate(Cookie, Cookie, CookieJar) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
