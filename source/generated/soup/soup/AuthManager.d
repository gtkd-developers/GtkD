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


module soup.AuthManager;

private import gobject.ObjectG;
private import gobject.Signals;
private import soup.Auth;
private import soup.Message;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.URI;
private import soup.c.functions;
public  import soup.c.types;
private import std.algorithm;


/** */
public class AuthManager : ObjectG, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupAuthManager* soupAuthManager;

	/** Get the main Gtk struct */
	public SoupAuthManager* getAuthManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuthManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuthManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuthManager* soupAuthManager, bool ownedRef = false)
	{
		this.soupAuthManager = soupAuthManager;
		super(cast(GObject*)soupAuthManager, ownedRef);
	}

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupAuthManager);


	/** */
	public static GType getType()
	{
		return soup_auth_manager_get_type();
	}

	/**
	 * Clear all credentials cached by @manager
	 *
	 * Since: 2.58
	 */
	public void clearCachedCredentials()
	{
		soup_auth_manager_clear_cached_credentials(soupAuthManager);
	}

	/**
	 * Records that @auth is to be used under @uri, as though a
	 * WWW-Authenticate header had been received at that URI. This can be
	 * used to "preload" @manager's auth cache, to avoid an extra HTTP
	 * round trip in the case where you know ahead of time that a 401
	 * response will be returned.
	 *
	 * This is only useful for authentication types where the initial
	 * Authorization header does not depend on any additional information
	 * from the server. (Eg, Basic or NTLM, but not Digest.)
	 *
	 * Params:
	 *     uri = the #SoupURI under which @auth is to be used
	 *     auth = the #SoupAuth to use
	 *
	 * Since: 2.42
	 */
	public void useAuth(URI uri, Auth auth)
	{
		soup_auth_manager_use_auth(soupAuthManager, (uri is null) ? null : uri.getURIStruct(), (auth is null) ? null : auth.getAuthStruct());
	}

	/**
	 * Emitted when the manager requires the application to
	 * provide authentication credentials.
	 *
	 * #SoupSession connects to this signal and emits its own
	 * #SoupSession::authenticate signal when it is emitted, so
	 * you shouldn't need to use this signal directly.
	 *
	 * Params:
	 *     msg = the #SoupMessage being sent
	 *     auth = the #SoupAuth to authenticate
	 *     retrying = %TRUE if this is the second (or later) attempt
	 */
	gulong addOnAuthenticate(void delegate(Message, Auth, bool, AuthManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "authenticate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
