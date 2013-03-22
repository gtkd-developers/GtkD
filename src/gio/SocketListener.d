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
 * inFile  = GSocketListener.html
 * outPack = gio
 * outFile = SocketListener
 * strct   = GSocketListener
 * realStrct=
 * ctorStrct=
 * clss    = SocketListener
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_socket_listener_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.Socket
 * 	- gio.SocketAddress
 * 	- gio.SocketConnection
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GObject* -> ObjectG
 * 	- GSocket* -> Socket
 * 	- GSocketAddress* -> SocketAddress
 * 	- GSocketConnection* -> SocketConnection
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SocketListener;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.Socket;
private import gio.SocketAddress;
private import gio.SocketConnection;



private import gobject.ObjectG;

/**
 * A GSocketListener is an object that keeps track of a set
 * of server sockets and helps you accept sockets from any of the
 * socket, either sync or async.
 *
 * If you want to implement a network server, also look at GSocketService
 * and GThreadedSocketService which are subclass of GSocketListener
 * that makes this even easier.
 */
public class SocketListener : ObjectG
{
	
	/** the main Gtk struct */
	protected GSocketListener* gSocketListener;
	
	
	public GSocketListener* getSocketListenerStruct()
	{
		return gSocketListener;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketListener;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSocketListener* gSocketListener)
	{
		super(cast(GObject*)gSocketListener);
		this.gSocketListener = gSocketListener;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSocketListener = cast(GSocketListener*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GSocketListener with no sockets to listen for.
	 * New listeners can be added with e.g. g_socket_listener_add_address()
	 * or g_socket_listener_add_inet_port().
	 * Since 2.22
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GSocketListener * g_socket_listener_new (void);
		auto p = g_socket_listener_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_socket_listener_new()");
		}
		this(cast(GSocketListener*) p);
	}
	
	/**
	 * Adds socket to the set of sockets that we try to accept
	 * new clients from. The socket must be bound to a local
	 * address and listened to.
	 * source_object will be passed out in the various calls
	 * to accept to identify this particular source, which is
	 * useful if you're listening on multiple addresses and do
	 * different things depending on what address is connected to.
	 * Since 2.22
	 * Params:
	 * socket = a listening GSocket
	 * sourceObject = Optional GObject identifying this source. [allow-none]
	 * Returns: TRUE on success, FALSE on error.
	 * Throws: GException on failure.
	 */
	public int addSocket(Socket socket, ObjectG sourceObject)
	{
		// gboolean g_socket_listener_add_socket (GSocketListener *listener,  GSocket *socket,  GObject *source_object,  GError **error);
		GError* err = null;
		
		auto p = g_socket_listener_add_socket(gSocketListener, (socket is null) ? null : socket.getSocketStruct(), (sourceObject is null) ? null : sourceObject.getObjectGStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Creates a socket of type type and protocol protocol, binds
	 * it to address and adds it to the set of sockets we're accepting
	 * sockets from.
	 * Note that adding an IPv6 address, depending on the platform,
	 * may or may not result in a listener that also accepts IPv4
	 * connections. For more deterministic behavior, see
	 * g_socket_listener_add_inet_port().
	 * source_object will be passed out in the various calls
	 * to accept to identify this particular source, which is
	 * useful if you're listening on multiple addresses and do
	 * different things depending on what address is connected to.
	 * If successful and effective_address is non-NULL then it will
	 * be set to the address that the binding actually occurred at. This
	 * is helpful for determining the port number that was used for when
	 * requesting a binding to port 0 (ie: "any port"). This address, if
	 * requested, belongs to the caller and must be freed.
	 * Since 2.22
	 * Params:
	 * address = a GSocketAddress
	 * type = a GSocketType
	 * protocol = a GSocketProtocol
	 * sourceObject = Optional GObject identifying this source. [allow-none]
	 * effectiveAddress = location to store the address that was bound to, or NULL. [out][allow-none]
	 * Returns: TRUE on success, FALSE on error.
	 * Throws: GException on failure.
	 */
	public int addAddress(SocketAddress address, GSocketType type, GSocketProtocol protocol, ObjectG sourceObject, out SocketAddress effectiveAddress)
	{
		// gboolean g_socket_listener_add_address (GSocketListener *listener,  GSocketAddress *address,  GSocketType type,  GSocketProtocol protocol,  GObject *source_object,  GSocketAddress **effective_address,  GError **error);
		GSocketAddress* outeffectiveAddress = null;
		GError* err = null;
		
		auto p = g_socket_listener_add_address(gSocketListener, (address is null) ? null : address.getSocketAddressStruct(), type, protocol, (sourceObject is null) ? null : sourceObject.getObjectGStruct(), &outeffectiveAddress, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		effectiveAddress = ObjectG.getDObject!(SocketAddress)(outeffectiveAddress);
		return p;
	}
	
	/**
	 * Helper function for g_socket_listener_add_address() that
	 * creates a TCP/IP socket listening on IPv4 and IPv6 (if
	 * supported) on the specified port on all interfaces.
	 * source_object will be passed out in the various calls
	 * to accept to identify this particular source, which is
	 * useful if you're listening on multiple addresses and do
	 * different things depending on what address is connected to.
	 * Since 2.22
	 * Params:
	 * port = an IP port number (non-zero)
	 * sourceObject = Optional GObject identifying this source. [allow-none]
	 * Returns: TRUE on success, FALSE on error.
	 * Throws: GException on failure.
	 */
	public int addInetPort(ushort port, ObjectG sourceObject)
	{
		// gboolean g_socket_listener_add_inet_port (GSocketListener *listener,  guint16 port,  GObject *source_object,  GError **error);
		GError* err = null;
		
		auto p = g_socket_listener_add_inet_port(gSocketListener, port, (sourceObject is null) ? null : sourceObject.getObjectGStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Listens for TCP connections on any available port number for both
	 * IPv6 and IPv4 (if each is available).
	 * This is useful if you need to have a socket for incoming connections
	 * but don't care about the specific port number.
	 * source_object will be passed out in the various calls
	 * to accept to identify this particular source, which is
	 * useful if you're listening on multiple addresses and do
	 * different things depending on what address is connected to.
	 * Since 2.24
	 * Params:
	 * sourceObject = Optional GObject identifying this source. [allow-none]
	 * Returns: the port number, or 0 in case of failure.
	 * Throws: GException on failure.
	 */
	public ushort addAnyInetPort(ObjectG sourceObject)
	{
		// guint16 g_socket_listener_add_any_inet_port (GSocketListener *listener,  GObject *source_object,  GError **error);
		GError* err = null;
		
		auto p = g_socket_listener_add_any_inet_port(gSocketListener, (sourceObject is null) ? null : sourceObject.getObjectGStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Blocks waiting for a client to connect to any of the sockets added
	 * to the listener. Returns a GSocketConnection for the socket that was
	 * accepted.
	 * If source_object is not NULL it will be filled out with the source
	 * object specified when the corresponding socket or address was added
	 * to the listener.
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned.
	 * Since 2.22
	 * Params:
	 * sourceObject = location where GObject pointer will be stored, or NULL. [out][transfer none][allow-none]
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: a GSocketConnection on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public SocketConnection accept(out ObjectG sourceObject, Cancellable cancellable)
	{
		// GSocketConnection * g_socket_listener_accept (GSocketListener *listener,  GObject **source_object,  GCancellable *cancellable,  GError **error);
		GObject* outsourceObject = null;
		GError* err = null;
		
		auto p = g_socket_listener_accept(gSocketListener, &outsourceObject, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		sourceObject = ObjectG.getDObject!(ObjectG)(outsourceObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) p);
	}
	
	/**
	 * This is the asynchronous version of g_socket_listener_accept().
	 * When the operation is finished callback will be
	 * called. You can then call g_socket_listener_accept_socket()
	 * to get the result of the operation.
	 * Since 2.22
	 * Params:
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data for the callback. [closure]
	 */
	public void acceptAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_socket_listener_accept_async (GSocketListener *listener,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_socket_listener_accept_async(gSocketListener, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an async accept operation. See g_socket_listener_accept_async()
	 * Since 2.22
	 * Params:
	 * result = a GAsyncResult.
	 * sourceObject = Optional GObject identifying this source. [out][transfer none][allow-none]
	 * Returns: a GSocketConnection on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public SocketConnection acceptFinish(AsyncResultIF result, ref ObjectG sourceObject)
	{
		// GSocketConnection * g_socket_listener_accept_finish (GSocketListener *listener,  GAsyncResult *result,  GObject **source_object,  GError **error);
		GObject* outsourceObject = (sourceObject is null) ? null : sourceObject.getObjectGStruct();
		GError* err = null;
		
		auto p = g_socket_listener_accept_finish(gSocketListener, (result is null) ? null : result.getAsyncResultTStruct(), &outsourceObject, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		sourceObject = ObjectG.getDObject!(ObjectG)(outsourceObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) p);
	}
	
	/**
	 * Blocks waiting for a client to connect to any of the sockets added
	 * to the listener. Returns the GSocket that was accepted.
	 * If you want to accept the high-level GSocketConnection, not a GSocket,
	 * which is often the case, then you should use g_socket_listener_accept()
	 * instead.
	 * If source_object is not NULL it will be filled out with the source
	 * object specified when the corresponding socket or address was added
	 * to the listener.
	 * If cancellable is not NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error G_IO_ERROR_CANCELLED will be returned.
	 * Since 2.22
	 * Params:
	 * sourceObject = location where GObject pointer will be stored, or NULL. [out][transfer none][allow-none]
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: a GSocket on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public Socket acceptSocket(out ObjectG sourceObject, Cancellable cancellable)
	{
		// GSocket * g_socket_listener_accept_socket (GSocketListener *listener,  GObject **source_object,  GCancellable *cancellable,  GError **error);
		GObject* outsourceObject = null;
		GError* err = null;
		
		auto p = g_socket_listener_accept_socket(gSocketListener, &outsourceObject, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		sourceObject = ObjectG.getDObject!(ObjectG)(outsourceObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Socket)(cast(GSocket*) p);
	}
	
	/**
	 * This is the asynchronous version of g_socket_listener_accept_socket().
	 * When the operation is finished callback will be
	 * called. You can then call g_socket_listener_accept_socket_finish()
	 * to get the result of the operation.
	 * Since 2.22
	 * Params:
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data for the callback. [closure]
	 */
	public void acceptSocketAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_socket_listener_accept_socket_async  (GSocketListener *listener,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_socket_listener_accept_socket_async(gSocketListener, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an async accept operation. See g_socket_listener_accept_socket_async()
	 * Since 2.22
	 * Params:
	 * result = a GAsyncResult.
	 * sourceObject = Optional GObject identifying this source. [out][transfer none][allow-none]
	 * Returns: a GSocket on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public Socket acceptSocketFinish(AsyncResultIF result, ref ObjectG sourceObject)
	{
		// GSocket * g_socket_listener_accept_socket_finish  (GSocketListener *listener,  GAsyncResult *result,  GObject **source_object,  GError **error);
		GObject* outsourceObject = (sourceObject is null) ? null : sourceObject.getObjectGStruct();
		GError* err = null;
		
		auto p = g_socket_listener_accept_socket_finish(gSocketListener, (result is null) ? null : result.getAsyncResultTStruct(), &outsourceObject, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		sourceObject = ObjectG.getDObject!(ObjectG)(outsourceObject);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Socket)(cast(GSocket*) p);
	}
	
	/**
	 * Closes all the sockets in the listener.
	 * Since 2.22
	 */
	public void close()
	{
		// void g_socket_listener_close (GSocketListener *listener);
		g_socket_listener_close(gSocketListener);
	}
	
	/**
	 * Sets the listen backlog on the sockets in the listener.
	 * See g_socket_set_listen_backlog() for details
	 * Since 2.22
	 * Params:
	 * listenBacklog = an integer
	 */
	public void setBacklog(int listenBacklog)
	{
		// void g_socket_listener_set_backlog (GSocketListener *listener,  int listen_backlog);
		g_socket_listener_set_backlog(gSocketListener, listenBacklog);
	}
}
