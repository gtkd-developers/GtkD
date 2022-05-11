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


module soup.AuthDomain;

private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import soup.Message;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class AuthDomain : ObjectG
{
	/** the main Gtk struct */
	protected SoupAuthDomain* soupAuthDomain;

	/** Get the main Gtk struct */
	public SoupAuthDomain* getAuthDomainStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuthDomain;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuthDomain;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuthDomain* soupAuthDomain, bool ownedRef = false)
	{
		this.soupAuthDomain = soupAuthDomain;
		super(cast(GObject*)soupAuthDomain, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_auth_domain_get_type();
	}

	/**
	 * Checks if @msg contains appropriate authorization for @domain to
	 * accept it. Mirroring soup_auth_domain_covers(), this does not check
	 * whether or not @domain <emphasis>cares</emphasis> if @msg is
	 * authorized.
	 *
	 * This is used by #SoupServer internally and is probably of no use to
	 * anyone else.
	 *
	 * Params:
	 *     msg = a #SoupMessage
	 *
	 * Returns: the username that @msg has authenticated
	 *     as, if in fact it has authenticated. %NULL otherwise.
	 */
	public string accepts(Message msg)
	{
		auto retStr = soup_auth_domain_accepts(soupAuthDomain, (msg is null) ? null : msg.getMessageStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Adds @path to @domain, such that requests under @path on @domain's
	 * server will require authentication (unless overridden by
	 * soup_auth_domain_remove_path() or soup_auth_domain_set_filter()).
	 *
	 * You can also add paths by setting the %SOUP_AUTH_DOMAIN_ADD_PATH
	 * property, which can also be used to add one or more paths at
	 * construct time.
	 *
	 * Params:
	 *     path = the path to add to @domain
	 */
	public void addPath(string path)
	{
		soup_auth_domain_add_path(soupAuthDomain, Str.toStringz(path));
	}

	/**
	 * Adds a "WWW-Authenticate" or "Proxy-Authenticate" header to @msg,
	 * requesting that the client authenticate, and sets @msg's status
	 * accordingly.
	 *
	 * This is used by #SoupServer internally and is probably of no use to
	 * anyone else.
	 *
	 * Params:
	 *     msg = a #SoupMessage
	 */
	public void challenge(Message msg)
	{
		soup_auth_domain_challenge(soupAuthDomain, (msg is null) ? null : msg.getMessageStruct());
	}

	/**
	 * Checks if @msg authenticates to @domain via @username and
	 * @password. This would normally be called from a
	 * #SoupAuthDomainGenericAuthCallback.
	 *
	 * Params:
	 *     msg = a #SoupMessage
	 *     username = a username
	 *     password = a password
	 *
	 * Returns: whether or not the message is authenticated
	 */
	public bool checkPassword(Message msg, string username, string password)
	{
		return soup_auth_domain_check_password(soupAuthDomain, (msg is null) ? null : msg.getMessageStruct(), Str.toStringz(username), Str.toStringz(password)) != 0;
	}

	/**
	 * Checks if @domain requires @msg to be authenticated (according to
	 * its paths and filter function). This does not actually look at
	 * whether @msg <emphasis>is</emphasis> authenticated, merely whether
	 * or not it needs to be.
	 *
	 * This is used by #SoupServer internally and is probably of no use to
	 * anyone else.
	 *
	 * Params:
	 *     msg = a #SoupMessage
	 *
	 * Returns: %TRUE if @domain requires @msg to be authenticated
	 */
	public bool covers(Message msg)
	{
		return soup_auth_domain_covers(soupAuthDomain, (msg is null) ? null : msg.getMessageStruct()) != 0;
	}

	/**
	 * Gets the realm name associated with @domain
	 *
	 * Returns: @domain's realm
	 */
	public string getRealm()
	{
		return Str.toString(soup_auth_domain_get_realm(soupAuthDomain));
	}

	/**
	 * Removes @path from @domain, such that requests under @path on
	 * @domain's server will NOT require authentication.
	 *
	 * This is not simply an undo-er for soup_auth_domain_add_path(); it
	 * can be used to "carve out" a subtree that does not require
	 * authentication inside a hierarchy that does. Note also that unlike
	 * with soup_auth_domain_add_path(), this cannot be overridden by
	 * adding a filter, as filters can only bypass authentication that
	 * would otherwise be required, not require it where it would
	 * otherwise be unnecessary.
	 *
	 * You can also remove paths by setting the
	 * %SOUP_AUTH_DOMAIN_REMOVE_PATH property, which can also be used to
	 * remove one or more paths at construct time.
	 *
	 * Params:
	 *     path = the path to remove from @domain
	 */
	public void removePath(string path)
	{
		soup_auth_domain_remove_path(soupAuthDomain, Str.toStringz(path));
	}

	/**
	 * Adds @filter as an authentication filter to @domain. The filter
	 * gets a chance to bypass authentication for certain requests that
	 * would otherwise require it. Eg, it might check the message's path
	 * in some way that is too complicated to do via the other methods, or
	 * it might check the message's method, and allow GETs but not PUTs.
	 *
	 * The filter function returns %TRUE if the request should still
	 * require authentication, or %FALSE if authentication is unnecessary
	 * for this request.
	 *
	 * To help prevent security holes, your filter should return %TRUE by
	 * default, and only return %FALSE under specifically-tested
	 * circumstances, rather than the other way around. Eg, in the example
	 * above, where you want to authenticate PUTs but not GETs, you should
	 * check if the method is GET and return %FALSE in that case, and then
	 * return %TRUE for all other methods (rather than returning %TRUE for
	 * PUT and %FALSE for all other methods). This way if it turned out
	 * (now or later) that some paths supported additional methods besides
	 * GET and PUT, those methods would default to being NOT allowed for
	 * unauthenticated users.
	 *
	 * You can also set the filter by setting the %SOUP_AUTH_DOMAIN_FILTER
	 * and %SOUP_AUTH_DOMAIN_FILTER_DATA properties, which can also be
	 * used to set the filter at construct time.
	 *
	 * Params:
	 *     filter = the auth filter for @domain
	 *     filterData = data to pass to @filter
	 *     dnotify = destroy notifier to free @filter_data when @domain
	 *         is destroyed
	 */
	public void setFilter(SoupAuthDomainFilter filter, void* filterData, GDestroyNotify dnotify)
	{
		soup_auth_domain_set_filter(soupAuthDomain, filter, filterData, dnotify);
	}

	/**
	 * Sets @auth_callback as an authentication-handling callback for
	 * @domain. Whenever a request comes in to @domain which cannot be
	 * authenticated via a domain-specific auth callback (eg,
	 * #SoupAuthDomainDigestAuthCallback), the generic auth callback
	 * will be invoked. See #SoupAuthDomainGenericAuthCallback for information
	 * on what the callback should do.
	 *
	 * Params:
	 *     authCallback = the auth callback
	 *     authData = data to pass to @auth_callback
	 *     dnotify = destroy notifier to free @auth_data when @domain
	 *         is destroyed
	 */
	public void setGenericAuthCallback(SoupAuthDomainGenericAuthCallback authCallback, void* authData, GDestroyNotify dnotify)
	{
		soup_auth_domain_set_generic_auth_callback(soupAuthDomain, authCallback, authData, dnotify);
	}

	/** */
	public bool tryGenericAuthCallback(Message msg, string username)
	{
		return soup_auth_domain_try_generic_auth_callback(soupAuthDomain, (msg is null) ? null : msg.getMessageStruct(), Str.toStringz(username)) != 0;
	}
}
