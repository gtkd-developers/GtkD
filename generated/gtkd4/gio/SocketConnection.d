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


module gio.SocketConnection;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.IOStream;
private import gio.Socket;
private import gio.SocketAddress;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/**
 * #GSocketConnection is a #GIOStream for a connected socket. They
 * can be created either by #GSocketClient when connecting to a host,
 * or by #GSocketListener when accepting a new client.
 * 
 * The type of the #GSocketConnection object returned from these calls
 * depends on the type of the underlying socket that is in use. For
 * instance, for a TCP/IP connection it will be a #GTcpConnection.
 * 
 * Choosing what type of object to construct is done with the socket
 * connection factory, and it is possible for 3rd parties to register
 * custom socket connection types for specific combination of socket
 * family/type/protocol using g_socket_connection_factory_register_type().
 * 
 * To close a #GSocketConnection, use g_io_stream_close(). Closing both
 * substreams of the #GIOStream separately will not close the underlying
 * #GSocket.
 *
 * Since: 2.22
 */
public class SocketConnection : IOStream
{
	/** the main Gtk struct */
	protected GSocketConnection* gSocketConnection;

	/** Get the main Gtk struct */
	public GSocketConnection* getSocketConnectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSocketConnection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketConnection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSocketConnection* gSocketConnection, bool ownedRef = false)
	{
		this.gSocketConnection = gSocketConnection;
		super(cast(GIOStream*)gSocketConnection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_socket_connection_get_type();
	}

	/**
	 * Looks up the #GType to be used when creating socket connections on
	 * sockets with the specified @family, @type and @protocol_id.
	 *
	 * If no type is registered, the #GSocketConnection base type is returned.
	 *
	 * Params:
	 *     family = a #GSocketFamily
	 *     type = a #GSocketType
	 *     protocolId = a protocol id
	 *
	 * Returns: a #GType
	 *
	 * Since: 2.22
	 */
	public static GType factoryLookupType(GSocketFamily family, GSocketType type, int protocolId)
	{
		return g_socket_connection_factory_lookup_type(family, type, protocolId);
	}

	/**
	 * Looks up the #GType to be used when creating socket connections on
	 * sockets with the specified @family, @type and @protocol.
	 *
	 * If no type is registered, the #GSocketConnection base type is returned.
	 *
	 * Params:
	 *     gType = a #GType, inheriting from %G_TYPE_SOCKET_CONNECTION
	 *     family = a #GSocketFamily
	 *     type = a #GSocketType
	 *     protocol = a protocol id
	 *
	 * Since: 2.22
	 */
	public static void factoryRegisterType(GType gType, GSocketFamily family, GSocketType type, int protocol)
	{
		g_socket_connection_factory_register_type(gType, family, type, protocol);
	}

	/**
	 * Connect @connection to the specified remote address.
	 *
	 * Params:
	 *     address = a #GSocketAddress specifying the remote address.
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: %TRUE if the connection succeeded, %FALSE on error
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public bool connect(SocketAddress address, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_connection_connect(gSocketConnection, (address is null) ? null : address.getSocketAddressStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Asynchronously connect @connection to the specified remote address.
	 *
	 * This clears the #GSocket:blocking flag on @connection's underlying
	 * socket if it is currently set.
	 *
	 * Use g_socket_connection_connect_finish() to retrieve the result.
	 *
	 * Params:
	 *     address = a #GSocketAddress specifying the remote address.
	 *     cancellable = a %GCancellable or %NULL
	 *     callback = a #GAsyncReadyCallback
	 *     userData = user data for the callback
	 *
	 * Since: 2.32
	 */
	public void connectAsync(SocketAddress address, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_socket_connection_connect_async(gSocketConnection, (address is null) ? null : address.getSocketAddressStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Gets the result of a g_socket_connection_connect_async() call.
	 *
	 * Params:
	 *     result = the #GAsyncResult
	 *
	 * Returns: %TRUE if the connection succeeded, %FALSE on error
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public bool connectFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_socket_connection_connect_finish(gSocketConnection, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Try to get the local address of a socket connection.
	 *
	 * Returns: a #GSocketAddress or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketAddress getLocalAddress()
	{
		GError* err = null;

		auto __p = g_socket_connection_get_local_address(gSocketConnection, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) __p, true);
	}

	/**
	 * Try to get the remote address of a socket connection.
	 *
	 * Since GLib 2.40, when used with g_socket_client_connect() or
	 * g_socket_client_connect_async(), during emission of
	 * %G_SOCKET_CLIENT_CONNECTING, this function will return the remote
	 * address that will be used for the connection.  This allows
	 * applications to print e.g. "Connecting to example.com
	 * (10.42.77.3)...".
	 *
	 * Returns: a #GSocketAddress or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketAddress getRemoteAddress()
	{
		GError* err = null;

		auto __p = g_socket_connection_get_remote_address(gSocketConnection, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) __p, true);
	}

	/**
	 * Gets the underlying #GSocket object of the connection.
	 * This can be useful if you want to do something unusual on it
	 * not supported by the #GSocketConnection APIs.
	 *
	 * Returns: a #GSocket or %NULL on error.
	 *
	 * Since: 2.22
	 */
	public Socket getSocket()
	{
		auto __p = g_socket_connection_get_socket(gSocketConnection);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Socket)(cast(GSocket*) __p);
	}

	/**
	 * Checks if @connection is connected. This is equivalent to calling
	 * g_socket_is_connected() on @connection's underlying #GSocket.
	 *
	 * Returns: whether @connection is connected
	 *
	 * Since: 2.32
	 */
	public bool isConnected()
	{
		return g_socket_connection_is_connected(gSocketConnection) != 0;
	}
}
