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


module soup.Auth;

private import glib.ConstructionException;
private import glib.ListSG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import soup.Message;
private import soup.URI;
private import soup.c.functions;
public  import soup.c.types;


/**
 * The abstract base class for handling authentication. Specific HTTP
 * Authentication mechanisms are implemented by its subclasses, but
 * applications never need to be aware of the specific subclasses
 * being used.
 */
public class Auth : ObjectG
{
	/** the main Gtk struct */
	protected SoupAuth* soupAuth;

	/** Get the main Gtk struct */
	public SoupAuth* getAuthStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuth;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuth;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuth* soupAuth, bool ownedRef = false)
	{
		this.soupAuth = soupAuth;
		super(cast(GObject*)soupAuth, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_auth_get_type();
	}

	/**
	 * Creates a new #SoupAuth of type @type with the information from
	 * @msg and @auth_header.
	 *
	 * This is called by #SoupSession; you will normally not create auths
	 * yourself.
	 *
	 * Params:
	 *     type = the type of auth to create (a subtype of #SoupAuth)
	 *     msg = the #SoupMessage the auth is being created for
	 *     authHeader = the WWW-Authenticate/Proxy-Authenticate header
	 *
	 * Returns: the new #SoupAuth, or %NULL if it could
	 *     not be created
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType type, Message msg, string authHeader)
	{
		auto __p = soup_auth_new(type, (msg is null) ? null : msg.getMessageStruct(), Str.toStringz(authHeader));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupAuth*) __p, true);
	}

	/**
	 * Call this on an auth to authenticate it; normally this will cause
	 * the auth's message to be requeued with the new authentication info.
	 *
	 * Params:
	 *     username = the username provided by the user or client
	 *     password = the password provided by the user or client
	 */
	public void authenticate(string username, string password)
	{
		soup_auth_authenticate(soupAuth, Str.toStringz(username), Str.toStringz(password));
	}

	/**
	 * Tests if @auth is able to authenticate by providing credentials to the
	 * soup_auth_authenticate().
	 *
	 * Returns: %TRUE if @auth is able to accept credentials.
	 *
	 * Since: 2.54
	 */
	public bool canAuthenticate()
	{
		return soup_auth_can_authenticate(soupAuth) != 0;
	}

	/**
	 * Frees @space.
	 *
	 * Params:
	 *     space = the return value from soup_auth_get_protection_space()
	 */
	public void freeProtectionSpace(ListSG space)
	{
		soup_auth_free_protection_space(soupAuth, (space is null) ? null : space.getListSGStruct());
	}

	/**
	 * Generates an appropriate "Authorization" header for @msg. (The
	 * session will only call this if soup_auth_is_authenticated()
	 * returned %TRUE.)
	 *
	 * Params:
	 *     msg = the #SoupMessage to be authorized
	 *
	 * Returns: the "Authorization" header, which must be freed.
	 */
	public string getAuthorization(Message msg)
	{
		auto retStr = soup_auth_get_authorization(soupAuth, (msg is null) ? null : msg.getMessageStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the host that @auth is associated with.
	 *
	 * Returns: the hostname
	 */
	public string getHost()
	{
		return Str.toString(soup_auth_get_host(soupAuth));
	}

	/**
	 * Gets an opaque identifier for @auth, for use as a hash key or the
	 * like. #SoupAuth objects from the same server with the same
	 * identifier refer to the same authentication domain (eg, the URLs
	 * associated with them take the same usernames and passwords).
	 *
	 * Returns: the identifier
	 */
	public string getInfo()
	{
		auto retStr = soup_auth_get_info(soupAuth);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns a list of paths on the server which @auth extends over.
	 * (All subdirectories of these paths are also assumed to be part
	 * of @auth's protection space, unless otherwise discovered not to
	 * be.)
	 *
	 * Params:
	 *     sourceUri = the URI of the request that @auth was generated in
	 *         response to.
	 *
	 * Returns: the list of
	 *     paths, which can be freed with soup_auth_free_protection_space().
	 */
	public ListSG getProtectionSpace(URI sourceUri)
	{
		auto __p = soup_auth_get_protection_space(soupAuth, (sourceUri is null) ? null : sourceUri.getURIStruct());

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p, true);
	}

	/**
	 * Returns @auth's realm. This is an identifier that distinguishes
	 * separate authentication spaces on a given server, and may be some
	 * string that is meaningful to the user. (Although it is probably not
	 * localized.)
	 *
	 * Returns: the realm name
	 */
	public string getRealm()
	{
		return Str.toString(soup_auth_get_realm(soupAuth));
	}

	/** */
	public string getSavedPassword(string user)
	{
		return Str.toString(soup_auth_get_saved_password(soupAuth, Str.toStringz(user)));
	}

	/** */
	public ListSG getSavedUsers()
	{
		auto __p = soup_auth_get_saved_users(soupAuth);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p, true);
	}

	/**
	 * Returns @auth's scheme name. (Eg, "Basic", "Digest", or "NTLM")
	 *
	 * Returns: the scheme name
	 */
	public string getSchemeName()
	{
		return Str.toString(soup_auth_get_scheme_name(soupAuth));
	}

	/** */
	public void hasSavedPassword(string username, string password)
	{
		soup_auth_has_saved_password(soupAuth, Str.toStringz(username), Str.toStringz(password));
	}

	/**
	 * Tests if @auth has been given a username and password
	 *
	 * Returns: %TRUE if @auth has been given a username and password
	 */
	public bool isAuthenticated()
	{
		return soup_auth_is_authenticated(soupAuth) != 0;
	}

	/**
	 * Tests whether or not @auth is associated with a proxy server rather
	 * than an "origin" server.
	 *
	 * Returns: %TRUE or %FALSE
	 */
	public bool isForProxy()
	{
		return soup_auth_is_for_proxy(soupAuth) != 0;
	}

	/**
	 * Tests if @auth is ready to make a request for @msg with. For most
	 * auths, this is equivalent to soup_auth_is_authenticated(), but for
	 * some auth types (eg, NTLM), the auth may be sendable (eg, as an
	 * authentication request) even before it is authenticated.
	 *
	 * Params:
	 *     msg = a #SoupMessage
	 *
	 * Returns: %TRUE if @auth is ready to make a request with.
	 *
	 * Since: 2.42
	 */
	public bool isReady(Message msg)
	{
		return soup_auth_is_ready(soupAuth, (msg is null) ? null : msg.getMessageStruct()) != 0;
	}

	/** */
	public void savePassword(string username, string password)
	{
		soup_auth_save_password(soupAuth, Str.toStringz(username), Str.toStringz(password));
	}

	/**
	 * Updates @auth with the information from @msg and @auth_header,
	 * possibly un-authenticating it. As with soup_auth_new(), this is
	 * normally only used by #SoupSession.
	 *
	 * Params:
	 *     msg = the #SoupMessage @auth is being updated for
	 *     authHeader = the WWW-Authenticate/Proxy-Authenticate header
	 *
	 * Returns: %TRUE if @auth is still a valid (but potentially
	 *     unauthenticated) #SoupAuth. %FALSE if something about @auth_params
	 *     could not be parsed or incorporated into @auth at all.
	 */
	public bool update(Message msg, string authHeader)
	{
		return soup_auth_update(soupAuth, (msg is null) ? null : msg.getMessageStruct(), Str.toStringz(authHeader)) != 0;
	}
}
