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


module soup.AuthDomainBasic;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.AuthDomain;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class AuthDomainBasic : AuthDomain
{
	/** the main Gtk struct */
	protected SoupAuthDomainBasic* soupAuthDomainBasic;

	/** Get the main Gtk struct */
	public SoupAuthDomainBasic* getAuthDomainBasicStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuthDomainBasic;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuthDomainBasic;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuthDomainBasic* soupAuthDomainBasic, bool ownedRef = false)
	{
		this.soupAuthDomainBasic = soupAuthDomainBasic;
		super(cast(SoupAuthDomain*)soupAuthDomainBasic, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_auth_domain_basic_get_type();
	}

	/**
	 * Sets the callback that @domain will use to authenticate incoming
	 * requests. For each request containing authorization, @domain will
	 * invoke the callback, and then either accept or reject the request
	 * based on @callback's return value.
	 *
	 * You can also set the auth callback by setting the
	 * %SOUP_AUTH_DOMAIN_BASIC_AUTH_CALLBACK and
	 * %SOUP_AUTH_DOMAIN_BASIC_AUTH_DATA properties, which can also be
	 * used to set the callback at construct time.
	 *
	 * Params:
	 *     callback = the callback
	 *     userData = data to pass to @auth_callback
	 *     dnotify = destroy notifier to free @user_data when @domain
	 *         is destroyed
	 */
	public void setAuthCallback(SoupAuthDomainBasicAuthCallback callback, void* userData, GDestroyNotify dnotify)
	{
		soup_auth_domain_basic_set_auth_callback(cast(SoupAuthDomain*)soupAuthDomainBasic, callback, userData, dnotify);
	}
}
