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


module soup.ClientContext;

private import gio.IOStream;
private import gio.Socket;
private import gio.SocketAddress;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import soup.Address;
private import soup.AuthDomain;
private import soup.SSocket;
private import soup.c.functions;
public  import soup.c.types;


/**
 * A #SoupClientContext provides additional information about the
 * client making a particular request. In particular, you can use
 * soup_client_context_get_auth_domain() and
 * soup_client_context_get_auth_user() to determine if HTTP
 * authentication was used successfully.
 * 
 * soup_client_context_get_remote_address() and/or
 * soup_client_context_get_host() can be used to get information for
 * logging or debugging purposes. soup_client_context_get_gsocket() may
 * also be of use in some situations (eg, tracking when multiple
 * requests are made on the same connection).
 */
public class ClientContext
{
	/** the main Gtk struct */
	protected SoupClientContext* soupClientContext;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupClientContext* getClientContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupClientContext;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupClientContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupClientContext* soupClientContext, bool ownedRef = false)
	{
		this.soupClientContext = soupClientContext;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return soup_client_context_get_type();
	}

	/**
	 * Retrieves the #SoupAddress associated with the remote end
	 * of a connection.
	 *
	 * Deprecated: Use soup_client_context_get_remote_address(), which returns
	 * a #GSocketAddress.
	 *
	 * Returns: the #SoupAddress
	 *     associated with the remote end of a connection, it may be
	 *     %NULL if you used soup_server_accept_iostream().
	 */
	public Address getAddress()
	{
		auto __p = soup_client_context_get_address(soupClientContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Address)(cast(SoupAddress*) __p);
	}

	/**
	 * Checks whether the request associated with @client has been
	 * authenticated, and if so returns the #SoupAuthDomain that
	 * authenticated it.
	 *
	 * Returns: a #SoupAuthDomain, or
	 *     %NULL if the request was not authenticated.
	 */
	public AuthDomain getAuthDomain()
	{
		auto __p = soup_client_context_get_auth_domain(soupClientContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AuthDomain)(cast(SoupAuthDomain*) __p);
	}

	/**
	 * Checks whether the request associated with @client has been
	 * authenticated, and if so returns the username that the client
	 * authenticated as.
	 *
	 * Returns: the authenticated-as user, or %NULL if
	 *     the request was not authenticated.
	 */
	public string getAuthUser()
	{
		return Str.toString(soup_client_context_get_auth_user(soupClientContext));
	}

	/**
	 * Retrieves the #GSocket that @client is associated with.
	 *
	 * If you are using this method to observe when multiple requests are
	 * made on the same persistent HTTP connection (eg, as the ntlm-test
	 * test program does), you will need to pay attention to socket
	 * destruction as well (eg, by using weak references), so that you do
	 * not get fooled when the allocator reuses the memory address of a
	 * previously-destroyed socket to represent a new socket.
	 *
	 * Returns: the #GSocket that @client is
	 *     associated with, %NULL if you used soup_server_accept_iostream().
	 *
	 * Since: 2.48
	 */
	public Socket getGsocket()
	{
		auto __p = soup_client_context_get_gsocket(soupClientContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Socket)(cast(GSocket*) __p);
	}

	/**
	 * Retrieves the IP address associated with the remote end of a
	 * connection.
	 *
	 * Returns: the IP address associated with the remote
	 *     end of a connection, it may be %NULL if you used
	 *     soup_server_accept_iostream().
	 */
	public string getHost()
	{
		return Str.toString(soup_client_context_get_host(soupClientContext));
	}

	/**
	 * Retrieves the #GSocketAddress associated with the local end
	 * of a connection.
	 *
	 * Returns: the #GSocketAddress
	 *     associated with the local end of a connection, it may be
	 *     %NULL if you used soup_server_accept_iostream().
	 *
	 * Since: 2.48
	 */
	public SocketAddress getLocalAddress()
	{
		auto __p = soup_client_context_get_local_address(soupClientContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) __p);
	}

	/**
	 * Retrieves the #GSocketAddress associated with the remote end
	 * of a connection.
	 *
	 * Returns: the #GSocketAddress
	 *     associated with the remote end of a connection, it may be
	 *     %NULL if you used soup_server_accept_iostream().
	 *
	 * Since: 2.48
	 */
	public SocketAddress getRemoteAddress()
	{
		auto __p = soup_client_context_get_remote_address(soupClientContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) __p);
	}

	/**
	 * Retrieves the #SoupSocket that @client is associated with.
	 *
	 * If you are using this method to observe when multiple requests are
	 * made on the same persistent HTTP connection (eg, as the ntlm-test
	 * test program does), you will need to pay attention to socket
	 * destruction as well (either by using weak references, or by
	 * connecting to the #SoupSocket::disconnected signal), so that you do
	 * not get fooled when the allocator reuses the memory address of a
	 * previously-destroyed socket to represent a new socket.
	 *
	 * Deprecated: use soup_client_context_get_gsocket(), which returns
	 * a #GSocket.
	 *
	 * Returns: the #SoupSocket that @client is
	 *     associated with.
	 */
	public SSocket getSocket()
	{
		auto __p = soup_client_context_get_socket(soupClientContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SSocket)(cast(SoupSocket*) __p);
	}

	/**
	 * "Steals" the HTTP connection associated with @client from its
	 * #SoupServer. This happens immediately, regardless of the current
	 * state of the connection; if the response to the current
	 * #SoupMessage has not yet finished being sent, then it will be
	 * discarded; you can steal the connection from a
	 * #SoupMessage:wrote-informational or #SoupMessage:wrote-body signal
	 * handler if you need to wait for part or all of the response to be
	 * sent.
	 *
	 * Note that when calling this function from C, @client will most
	 * likely be freed as a side effect.
	 *
	 * Returns: the #GIOStream formerly associated
	 *     with @client (or %NULL if @client was no longer associated with a
	 *     connection). No guarantees are made about what kind of #GIOStream
	 *     is returned.
	 *
	 * Since: 2.50
	 */
	public IOStream stealConnection()
	{
		auto __p = soup_client_context_steal_connection(soupClientContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) __p, true);
	}
}
