/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = gio
 * outFile = TcpConnection
 * strct   = GTcpConnection
 * realStrct=
 * ctorStrct=
 * clss    = TcpConnection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_tcp_connection_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.TcpConnection;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;





private import gio.SocketConnection;

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
public class TcpConnection : SocketConnection
{
	
	/** the main Gtk struct */
	protected GTcpConnection* gTcpConnection;
	
	
	public GTcpConnection* getTcpConnectionStruct()
	{
		return gTcpConnection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTcpConnection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTcpConnection* gTcpConnection)
	{
		if(gTcpConnection is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gTcpConnection);
		if( ptr !is null )
		{
			this = cast(TcpConnection)ptr;
			return;
		}
		super(cast(GSocketConnection*)gTcpConnection);
		this.gTcpConnection = gTcpConnection;
	}
	
	/**
	 */
	
	/**
	 * This enabled graceful disconnects on close. A graceful disconnect
	 * means that we signal the recieving end that the connection is terminated
	 * and wait for it to close the connection before closing the connection.
	 * A graceful disconnect means that we can be sure that we successfully sent
	 * all the outstanding data to the other end, or get an error reported.
	 * However, it also means we have to wait for all the data to reach the
	 * other side and for it to acknowledge this by closing the socket, which may
	 * take a while. For this reason it is disabled by default.
	 * Since 2.22
	 * Params:
	 * gracefulDisconnect = Whether to do graceful disconnects or not
	 */
	public void setGracefulDisconnect(int gracefulDisconnect)
	{
		// void g_tcp_connection_set_graceful_disconnect  (GTcpConnection *connection,  gboolean graceful_disconnect);
		g_tcp_connection_set_graceful_disconnect(gTcpConnection, gracefulDisconnect);
	}
	
	/**
	 * Checks if graceful disconnects are used. See
	 * g_tcp_connection_set_graceful_disconnect().
	 * Since 2.22
	 * Returns: TRUE if graceful disconnect is used on close, FALSE otherwise
	 */
	public int getGracefulDisconnect()
	{
		// gboolean g_tcp_connection_get_graceful_disconnect  (GTcpConnection *connection);
		return g_tcp_connection_get_graceful_disconnect(gTcpConnection);
	}
}
