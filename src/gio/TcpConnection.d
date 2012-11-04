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
 * inFile  = GTcpConnection.html
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
private import gobject.ObjectG;





private import gio.SocketConnection;

/**
 * Description
 * This is the subclass of GSocketConnection that is created
 * for TCP/IP sockets.
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
		super(cast(GSocketConnection*)gTcpConnection);
		this.gTcpConnection = gTcpConnection;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTcpConnection = cast(GTcpConnection*)obj;
	}
	
	/**
	 */
	
	/**
	 * This enabled graceful disconnects on close. A graceful disconnect
	 * means that we signal the receiving end that the connection is terminated
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
