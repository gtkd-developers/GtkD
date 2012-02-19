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

/*
 * Conversion parameters:
 * inFile  = GSocketConnection.html
 * outPack = gio
 * outFile = SocketConnection
 * strct   = GSocketConnection
 * realStrct=
 * ctorStrct=
 * clss    = SocketConnection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_socket_connection_
 * omit structs:
 * omit prefixes:
 * 	- g_tcp_connection_
 * 	- g_unix_connection_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.Socket
 * 	- gio.SocketAddress
 * structWrap:
 * 	- GSocket* -> Socket
 * 	- GSocketAddress* -> SocketAddress
 * 	- GSocketConnection* -> SocketConnection
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SocketConnection;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import glib.ErrorG;
private import glib.GException;
private import gio.Socket;
private import gio.SocketAddress;



private import gio.IOStream;

/**
 * Description
 * GSocketConnection is a GIOStream for a connected socket. They
 * can be created either by GSocketClient when connecting to a host,
 * or by GSocketListener when accepting a new client.
 * The type of the GSocketConnection object returned from these calls
 * depends on the type of the underlying socket that is in use. For
 * instance, for a TCP/IP connection it will be a GTcpConnection.
 * Chosing what type of object to construct is done with the socket
 * connection factory, and it is possible for 3rd parties to register
 * custom socket connection types for specific combination of socket
 * family/type/protocol using g_socket_connection_factory_register_type().
 */
public class SocketConnection : IOStream
{
	
	/** the main Gtk struct */
	protected GSocketConnection* gSocketConnection;
	
	
	public GSocketConnection* getSocketConnectionStruct()
	{
		return gSocketConnection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketConnection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSocketConnection* gSocketConnection)
	{
		if(gSocketConnection is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gSocketConnection);
		if( ptr !is null )
		{
			this = cast(SocketConnection)ptr;
			return;
		}
		super(cast(GIOStream*)gSocketConnection);
		this.gSocketConnection = gSocketConnection;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSocketConnection = cast(GSocketConnection*)obj;
	}
	
	/**
	 */
	
	/**
	 * Try to get the local address of a socket connection.
	 * Since 2.22
	 * Returns: a GSocketAddress or NULL on error. Free the returned object with g_object_unref().
	 * Throws: GException on failure.
	 */
	public SocketAddress getLocalAddress()
	{
		// GSocketAddress * g_socket_connection_get_local_address  (GSocketConnection *connection,  GError **error);
		GError* err = null;
		
		auto p = g_socket_connection_get_local_address(gSocketConnection, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		return new SocketAddress(cast(GSocketAddress*) p);
	}
	
	/**
	 * Try to get the remote address of a socket connection.
	 * Since 2.22
	 * Returns: a GSocketAddress or NULL on error. Free the returned object with g_object_unref().
	 * Throws: GException on failure.
	 */
	public SocketAddress getRemoteAddress()
	{
		// GSocketAddress * g_socket_connection_get_remote_address  (GSocketConnection *connection,  GError **error);
		GError* err = null;
		
		auto p = g_socket_connection_get_remote_address(gSocketConnection, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		return new SocketAddress(cast(GSocketAddress*) p);
	}
	
	/**
	 * Gets the underlying GSocket object of the connection.
	 * This can be useful if you want to do something unusual on it
	 * not supported by the GSocketConnection APIs.
	 * Since 2.22
	 * Returns: a GSocketAddress or NULL on error. [transfer none]
	 */
	public Socket getSocket()
	{
		// GSocket * g_socket_connection_get_socket (GSocketConnection *connection);
		auto p = g_socket_connection_get_socket(gSocketConnection);
		if(p is null)
		{
			return null;
		}
		return new Socket(cast(GSocket*) p);
	}
	
	/**
	 * Creates a GSocketConnection subclass of the right type for
	 * socket.
	 * Since 2.22
	 * Params:
	 * socket = a GSocket
	 * Returns: a GSocketConnection
	 */
	public static SocketConnection factoryCreateConnection(Socket socket)
	{
		// GSocketConnection * g_socket_connection_factory_create_connection  (GSocket *socket);
		auto p = g_socket_connection_factory_create_connection((socket is null) ? null : socket.getSocketStruct());
		if(p is null)
		{
			return null;
		}
		return new SocketConnection(cast(GSocketConnection*) p);
	}
	
	/**
	 * Looks up the GType to be used when creating socket connections on
	 * sockets with the specified family,type and protocol_id.
	 * If no type is registered, the GSocketConnection base type is returned.
	 * Since 2.22
	 * Params:
	 * family = a GSocketFamily
	 * type = a GSocketType
	 * protocolId = a protocol id
	 * Returns: a GType
	 */
	public static GType factoryLookupType(GSocketFamily family, GSocketType type, int protocolId)
	{
		// GType g_socket_connection_factory_lookup_type  (GSocketFamily family,  GSocketType type,  gint protocol_id);
		return g_socket_connection_factory_lookup_type(family, type, protocolId);
	}
	
	/**
	 * Looks up the GType to be used when creating socket connections on
	 * sockets with the specified family,type and protocol.
	 * If no type is registered, the GSocketConnection base type is returned.
	 * Since 2.22
	 * Params:
	 * gType = a GType, inheriting from G_TYPE_SOCKET_CONNECTION
	 * family = a GSocketFamily
	 * type = a GSocketType
	 * protocol = a protocol id
	 */
	public static void factoryRegisterType(GType gType, GSocketFamily family, GSocketType type, int protocol)
	{
		// void g_socket_connection_factory_register_type  (GType g_type,  GSocketFamily family,  GSocketType type,  gint protocol);
		g_socket_connection_factory_register_type(gType, family, type, protocol);
	}
}
