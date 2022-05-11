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


module gio.SocketListener;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.Socket;
private import gio.SocketAddress;
private import gio.SocketConnection;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * A #GSocketListener is an object that keeps track of a set
 * of server sockets and helps you accept sockets from any of the
 * socket, either sync or async.
 * 
 * Add addresses and ports to listen on using g_socket_listener_add_address()
 * and g_socket_listener_add_inet_port(). These will be listened on until
 * g_socket_listener_close() is called. Dropping your final reference to the
 * #GSocketListener will not cause g_socket_listener_close() to be called
 * implicitly, as some references to the #GSocketListener may be held
 * internally.
 * 
 * If you want to implement a network server, also look at #GSocketService
 * and #GThreadedSocketService which are subclasses of #GSocketListener
 * that make this even easier.
 *
 * Since: 2.22
 */
public class SocketListener : ObjectG
{
	/** the main Gtk struct */
	protected GSocketListener* gSocketListener;

	/** Get the main Gtk struct */
	public GSocketListener* getSocketListenerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSocketListener;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketListener;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSocketListener* gSocketListener, bool ownedRef = false)
	{
		this.gSocketListener = gSocketListener;
		super(cast(GObject*)gSocketListener, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_socket_listener_get_type();
	}

	/**
	 * Creates a new #GSocketListener with no sockets to listen for.
	 * New listeners can be added with e.g. g_socket_listener_add_address()
	 * or g_socket_listener_add_inet_port().
	 *
	 * Returns: a new #GSocketListener.
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_socket_listener_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSocketListener*) __p, true);
	}

	/**
	 * Blocks waiting for a client to connect to any of the sockets added
	 * to the listener. Returns a #GSocketConnection for the socket that was
	 * accepted.
	 *
	 * If @source_object is not %NULL it will be filled out with the source
	 * object specified when the corresponding socket or address was added
	 * to the listener.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     sourceObject = location where #GObject pointer will be stored, or %NULL
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a #GSocketConnection on success, %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketConnection accept(out ObjectG sourceObject, Cancellable cancellable)
	{
		GObject* outsourceObject = null;
		GError* err = null;

		auto __p = g_socket_listener_accept(gSocketListener, &outsourceObject, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		sourceObject = ObjectG.getDObject!(ObjectG)(outsourceObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * This is the asynchronous version of g_socket_listener_accept().
	 *
	 * When the operation is finished @callback will be
	 * called. You can then call g_socket_listener_accept_finish()
	 * to get the result of the operation.
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback
	 *     userData = user data for the callback
	 *
	 * Since: 2.22
	 */
	public void acceptAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_socket_listener_accept_async(gSocketListener, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async accept operation. See g_socket_listener_accept_async()
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *     sourceObject = Optional #GObject identifying this source
	 *
	 * Returns: a #GSocketConnection on success, %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketConnection acceptFinish(AsyncResultIF result, out ObjectG sourceObject)
	{
		GObject* outsourceObject = null;
		GError* err = null;

		auto __p = g_socket_listener_accept_finish(gSocketListener, (result is null) ? null : result.getAsyncResultStruct(), &outsourceObject, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		sourceObject = ObjectG.getDObject!(ObjectG)(outsourceObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * Blocks waiting for a client to connect to any of the sockets added
	 * to the listener. Returns the #GSocket that was accepted.
	 *
	 * If you want to accept the high-level #GSocketConnection, not a #GSocket,
	 * which is often the case, then you should use g_socket_listener_accept()
	 * instead.
	 *
	 * If @source_object is not %NULL it will be filled out with the source
	 * object specified when the corresponding socket or address was added
	 * to the listener.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     sourceObject = location where #GObject pointer will be stored, or %NULL.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a #GSocket on success, %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public Socket acceptSocket(out ObjectG sourceObject, Cancellable cancellable)
	{
		GObject* outsourceObject = null;
		GError* err = null;

		auto __p = g_socket_listener_accept_socket(gSocketListener, &outsourceObject, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		sourceObject = ObjectG.getDObject!(ObjectG)(outsourceObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Socket)(cast(GSocket*) __p, true);
	}

	/**
	 * This is the asynchronous version of g_socket_listener_accept_socket().
	 *
	 * When the operation is finished @callback will be
	 * called. You can then call g_socket_listener_accept_socket_finish()
	 * to get the result of the operation.
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback
	 *     userData = user data for the callback
	 *
	 * Since: 2.22
	 */
	public void acceptSocketAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_socket_listener_accept_socket_async(gSocketListener, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async accept operation. See g_socket_listener_accept_socket_async()
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *     sourceObject = Optional #GObject identifying this source
	 *
	 * Returns: a #GSocket on success, %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public Socket acceptSocketFinish(AsyncResultIF result, out ObjectG sourceObject)
	{
		GObject* outsourceObject = null;
		GError* err = null;

		auto __p = g_socket_listener_accept_socket_finish(gSocketListener, (result is null) ? null : result.getAsyncResultStruct(), &outsourceObject, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		sourceObject = ObjectG.getDObject!(ObjectG)(outsourceObject);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Socket)(cast(GSocket*) __p, true);
	}

	/**
	 * Creates a socket of type @type and protocol @protocol, binds
	 * it to @address and adds it to the set of sockets we're accepting
	 * sockets from.
	 *
	 * Note that adding an IPv6 address, depending on the platform,
	 * may or may not result in a listener that also accepts IPv4
	 * connections.  For more deterministic behavior, see
	 * g_socket_listener_add_inet_port().
	 *
	 * @source_object will be passed out in the various calls
	 * to accept to identify this particular source, which is
	 * useful if you're listening on multiple addresses and do
	 * different things depending on what address is connected to.
	 *
	 * If successful and @effective_address is non-%NULL then it will
	 * be set to the address that the binding actually occurred at.  This
	 * is helpful for determining the port number that was used for when
	 * requesting a binding to port 0 (ie: "any port").  This address, if
	 * requested, belongs to the caller and must be freed.
	 *
	 * Call g_socket_listener_close() to stop listening on @address; this will not
	 * be done automatically when you drop your final reference to @listener, as
	 * references may be held internally.
	 *
	 * Params:
	 *     address = a #GSocketAddress
	 *     type = a #GSocketType
	 *     protocol = a #GSocketProtocol
	 *     sourceObject = Optional #GObject identifying this source
	 *     effectiveAddress = location to store the address that was bound to, or %NULL.
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool addAddress(SocketAddress address, GSocketType type, GSocketProtocol protocol, ObjectG sourceObject, out SocketAddress effectiveAddress)
	{
		GSocketAddress* outeffectiveAddress = null;
		GError* err = null;

		auto __p = g_socket_listener_add_address(gSocketListener, (address is null) ? null : address.getSocketAddressStruct(), type, protocol, (sourceObject is null) ? null : sourceObject.getObjectGStruct(), &outeffectiveAddress, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		effectiveAddress = ObjectG.getDObject!(SocketAddress)(outeffectiveAddress);

		return __p;
	}

	/**
	 * Listens for TCP connections on any available port number for both
	 * IPv6 and IPv4 (if each is available).
	 *
	 * This is useful if you need to have a socket for incoming connections
	 * but don't care about the specific port number.
	 *
	 * @source_object will be passed out in the various calls
	 * to accept to identify this particular source, which is
	 * useful if you're listening on multiple addresses and do
	 * different things depending on what address is connected to.
	 *
	 * Params:
	 *     sourceObject = Optional #GObject identifying this source
	 *
	 * Returns: the port number, or 0 in case of failure.
	 *
	 * Since: 2.24
	 *
	 * Throws: GException on failure.
	 */
	public ushort addAnyInetPort(ObjectG sourceObject)
	{
		GError* err = null;

		auto __p = g_socket_listener_add_any_inet_port(gSocketListener, (sourceObject is null) ? null : sourceObject.getObjectGStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Helper function for g_socket_listener_add_address() that
	 * creates a TCP/IP socket listening on IPv4 and IPv6 (if
	 * supported) on the specified port on all interfaces.
	 *
	 * @source_object will be passed out in the various calls
	 * to accept to identify this particular source, which is
	 * useful if you're listening on multiple addresses and do
	 * different things depending on what address is connected to.
	 *
	 * Call g_socket_listener_close() to stop listening on @port; this will not
	 * be done automatically when you drop your final reference to @listener, as
	 * references may be held internally.
	 *
	 * Params:
	 *     port = an IP port number (non-zero)
	 *     sourceObject = Optional #GObject identifying this source
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool addInetPort(ushort port, ObjectG sourceObject)
	{
		GError* err = null;

		auto __p = g_socket_listener_add_inet_port(gSocketListener, port, (sourceObject is null) ? null : sourceObject.getObjectGStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Adds @socket to the set of sockets that we try to accept
	 * new clients from. The socket must be bound to a local
	 * address and listened to.
	 *
	 * @source_object will be passed out in the various calls
	 * to accept to identify this particular source, which is
	 * useful if you're listening on multiple addresses and do
	 * different things depending on what address is connected to.
	 *
	 * The @socket will not be automatically closed when the @listener is finalized
	 * unless the listener held the final reference to the socket. Before GLib 2.42,
	 * the @socket was automatically closed on finalization of the @listener, even
	 * if references to it were held elsewhere.
	 *
	 * Params:
	 *     socket = a listening #GSocket
	 *     sourceObject = Optional #GObject identifying this source
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool addSocket(Socket socket, ObjectG sourceObject)
	{
		GError* err = null;

		auto __p = g_socket_listener_add_socket(gSocketListener, (socket is null) ? null : socket.getSocketStruct(), (sourceObject is null) ? null : sourceObject.getObjectGStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Closes all the sockets in the listener.
	 *
	 * Since: 2.22
	 */
	public void close()
	{
		g_socket_listener_close(gSocketListener);
	}

	/**
	 * Sets the listen backlog on the sockets in the listener. This must be called
	 * before adding any sockets, addresses or ports to the #GSocketListener (for
	 * example, by calling g_socket_listener_add_inet_port()) to be effective.
	 *
	 * See g_socket_set_listen_backlog() for details
	 *
	 * Params:
	 *     listenBacklog = an integer
	 *
	 * Since: 2.22
	 */
	public void setBacklog(int listenBacklog)
	{
		g_socket_listener_set_backlog(gSocketListener, listenBacklog);
	}

	/**
	 * Emitted when @listener's activity on @socket changes state.
	 * Note that when @listener is used to listen on both IPv4 and
	 * IPv6, a separate set of signals will be emitted for each, and
	 * the order they happen in is undefined.
	 *
	 * Params:
	 *     event = the event that is occurring
	 *     socket = the #GSocket the event is occurring on
	 *
	 * Since: 2.46
	 */
	gulong addOnEvent(void delegate(GSocketListenerEvent, Socket, SocketListener) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
