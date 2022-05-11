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


module soup.AuthNegotiate;

private import soup.Auth;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class AuthNegotiate : Auth
{
	/** the main Gtk struct */
	protected SoupAuthNegotiate* soupAuthNegotiate;

	/** Get the main Gtk struct */
	public SoupAuthNegotiate* getAuthNegotiateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuthNegotiate;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuthNegotiate;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuthNegotiate* soupAuthNegotiate, bool ownedRef = false)
	{
		this.soupAuthNegotiate = soupAuthNegotiate;
		super(cast(SoupAuth*)soupAuthNegotiate, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_auth_negotiate_get_type();
	}

	/**
	 * Indicates whether libsoup was built with GSSAPI support. If this is
	 * %FALSE, %SOUP_TYPE_AUTH_NEGOTIATE will still be defined and can
	 * still be added to a #SoupSession, but libsoup will never attempt to
	 * actually use this auth type.
	 *
	 * Since: 2.54
	 */
	public static bool supported()
	{
		return soup_auth_negotiate_supported() != 0;
	}
}
