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
 * inFile  = GUnixConnection.html
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



private import gio.SocketConnection;

/**
 * Description
 * This is the subclass of GSocketConnection that is created
 * for UNIX domain sockets.
 * It contains functions to do some of the UNIX socket specific
 * functionality like passing file descriptors.
 * Note that <gio/gunixconnection.h> belongs to
 * the UNIX-specific GIO interfaces, thus you have to use the
 * gio-unix-2.0.pc pkg-config file when using it.
 */
public class UnixConnection : SocketConnection
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
		super(cast(GSocketConnection*)gUnixConnection);
		this.gUnixConnection = gUnixConnection;
	}
	
	protected override void setStruct(GObject* obj)
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
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
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
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
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
	
	/**
	 * Receives credentials from the sending end of the connection. The
	 * sending end has to call g_unix_connection_send_credentials() (or
	 * similar) for this to work.
	 * As well as reading the credentials this also reads (and discards) a
	 * single byte from the stream, as this is required for credentials
	 * passing to work on some implementations.
	 * Other ways to exchange credentials with a foreign peer includes the
	 * GUnixCredentialsMessage type and g_socket_get_credentials() function.
	 * Since 2.26
	 * Params:
	 * cancellable = A GCancellable or NULL.
	 * Returns: Received credentials on success (free with g_object_unref()), NULL if error is set.
	 * Throws: GException on failure.
	 */
	public GCredentials* receiveCredentials(Cancellable cancellable)
	{
		// GCredentials * g_unix_connection_receive_credentials  (GUnixConnection *connection,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_unix_connection_receive_credentials(gUnixConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Passes the credentials of the current user the receiving side
	 * of the connection. The recieving end has to call
	 * g_unix_connection_receive_credentials() (or similar) to accept the
	 * credentials.
	 * As well as sending the credentials this also writes a single NUL
	 * byte to the stream, as this is required for credentials passing to
	 * work on some implementations.
	 * Other ways to exchange credentials with a foreign peer includes the
	 * GUnixCredentialsMessage type and g_socket_get_credentials() function.
	 * Since 2.26
	 * Params:
	 * cancellable = A GCancellable or NULL.
	 * Returns: TRUE on success, FALSE if error is set.
	 * Throws: GException on failure.
	 */
	public int sendCredentials(Cancellable cancellable)
	{
		// gboolean g_unix_connection_send_credentials (GUnixConnection *connection,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_unix_connection_send_credentials(gUnixConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
