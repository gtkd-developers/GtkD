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
 * outFile = UnixConnection
 * strct   = GUnixConnection
 * realStrct=
 * ctorStrct=
 * clss    = UnixConnection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_unix_connection_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.Cancellable
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.UnixConnection;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import glib.ErrorG;
private import glib.GException;
private import gio.Cancellable;



private import gio.TcpConnection;

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
public class UnixConnection : TcpConnection
{
	
	/** the main Gtk struct */
	protected GUnixConnection* gUnixConnection;
	
	
	public GUnixConnection* getUnixConnectionStruct()
	{
		return gUnixConnection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixConnection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GUnixConnection* gUnixConnection)
	{
		if(gUnixConnection is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gUnixConnection);
		if( ptr !is null )
		{
			this = cast(UnixConnection)ptr;
			return;
		}
		super(cast(GTcpConnection*)gUnixConnection);
		this.gUnixConnection = gUnixConnection;
	}
	
	protected void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gUnixConnection = cast(GUnixConnection*)obj;
	}
	
	/**
	 */
	
	/**
	 * Receives a file descriptor from the sending end of the connection.
	 * The sending end has to call g_unix_connection_send_fd() for this
	 * to work.
	 * As well as reading the fd this also reads a single byte from the
	 * stream, as this is required for fd passing to work on some
	 * implementations.
	 * Since 2.22
	 * Params:
	 * cancellable = optional GCancellable object, NULL to ignore
	 * Returns: a file descriptor on success, -1 on error.
	 * Throws: GException on failure.
	 */
	public int receiveFd(Cancellable cancellable)
	{
		// gint g_unix_connection_receive_fd (GUnixConnection *connection,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_unix_connection_receive_fd(gUnixConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Passes a file descriptor to the recieving side of the
	 * connection. The recieving end has to call g_unix_connection_receive_fd()
	 * to accept the file descriptor.
	 * As well as sending the fd this also writes a single byte to the
	 * stream, as this is required for fd passing to work on some
	 * implementations.
	 * Since 2.22
	 * Params:
	 * fd = a file descriptor
	 * cancellable = optional GCancellable object, NULL to ignore.
	 * Returns: a TRUE on success, NULL on error.
	 * Throws: GException on failure.
	 */
	public int sendFd(int fd, Cancellable cancellable)
	{
		// gboolean g_unix_connection_send_fd (GUnixConnection *connection,  gint fd,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_unix_connection_send_fd(gUnixConnection, fd, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
