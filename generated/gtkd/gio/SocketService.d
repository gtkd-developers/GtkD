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


module gio.SocketService;

private import gio.SocketConnection;
private import gio.SocketListener;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * A #GSocketService is an object that represents a service that
 * is provided to the network or over local sockets.  When a new
 * connection is made to the service the #GSocketService::incoming
 * signal is emitted.
 * 
 * A #GSocketService is a subclass of #GSocketListener and you need
 * to add the addresses you want to accept connections on with the
 * #GSocketListener APIs.
 * 
 * There are two options for implementing a network service based on
 * #GSocketService. The first is to create the service using
 * g_socket_service_new() and to connect to the #GSocketService::incoming
 * signal. The second is to subclass #GSocketService and override the
 * default signal handler implementation.
 * 
 * In either case, the handler must immediately return, or else it
 * will block additional incoming connections from being serviced.
 * If you are interested in writing connection handlers that contain
 * blocking code then see #GThreadedSocketService.
 * 
 * The socket service runs on the main loop of the
 * [thread-default context][g-main-context-push-thread-default-context]
 * of the thread it is created in, and is not
 * threadsafe in general. However, the calls to start and stop the
 * service are thread-safe so these can be used from threads that
 * handle incoming clients.
 *
 * Since: 2.22
 */
public class SocketService : SocketListener
{
	/** the main Gtk struct */
	protected GSocketService* gSocketService;

	/** Get the main Gtk struct */
	public GSocketService* getSocketServiceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSocketService;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketService;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSocketService* gSocketService, bool ownedRef = false)
	{
		this.gSocketService = gSocketService;
		super(cast(GSocketListener*)gSocketService, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_socket_service_get_type();
	}

	/**
	 * Creates a new #GSocketService with no sockets to listen for.
	 * New listeners can be added with e.g. g_socket_listener_add_address()
	 * or g_socket_listener_add_inet_port().
	 *
	 * New services are created active, there is no need to call
	 * g_socket_service_start(), unless g_socket_service_stop() has been
	 * called before.
	 *
	 * Returns: a new #GSocketService.
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_socket_service_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSocketService*) __p, true);
	}

	/**
	 * Check whether the service is active or not. An active
	 * service will accept new clients that connect, while
	 * a non-active service will let connecting clients queue
	 * up until the service is started.
	 *
	 * Returns: %TRUE if the service is active, %FALSE otherwise
	 *
	 * Since: 2.22
	 */
	public bool isActive()
	{
		return g_socket_service_is_active(gSocketService) != 0;
	}

	/**
	 * Restarts the service, i.e. start accepting connections
	 * from the added sockets when the mainloop runs. This only needs
	 * to be called after the service has been stopped from
	 * g_socket_service_stop().
	 *
	 * This call is thread-safe, so it may be called from a thread
	 * handling an incoming client request.
	 *
	 * Since: 2.22
	 */
	public void start()
	{
		g_socket_service_start(gSocketService);
	}

	/**
	 * Stops the service, i.e. stops accepting connections
	 * from the added sockets when the mainloop runs.
	 *
	 * This call is thread-safe, so it may be called from a thread
	 * handling an incoming client request.
	 *
	 * Note that this only stops accepting new connections; it does not
	 * close the listening sockets, and you can call
	 * g_socket_service_start() again later to begin listening again. To
	 * close the listening sockets, call g_socket_listener_close(). (This
	 * will happen automatically when the #GSocketService is finalized.)
	 *
	 * This must be called before calling g_socket_listener_close() as
	 * the socket service will start accepting connections immediately
	 * when a new socket is added.
	 *
	 * Since: 2.22
	 */
	public void stop()
	{
		g_socket_service_stop(gSocketService);
	}

	/**
	 * The ::incoming signal is emitted when a new incoming connection
	 * to @service needs to be handled. The handler must initiate the
	 * handling of @connection, but may not block; in essence,
	 * asynchronous operations must be used.
	 *
	 * @connection will be unreffed once the signal handler returns,
	 * so you need to ref it yourself if you are planning to use it.
	 *
	 * Params:
	 *     connection = a new #GSocketConnection object
	 *     sourceObject = the source_object passed to
	 *         g_socket_listener_add_address()
	 *
	 * Returns: %TRUE to stop other handlers from being called
	 *
	 * Since: 2.22
	 */
	gulong addOnIncoming(bool delegate(SocketConnection, ObjectG, SocketService) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "incoming", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
