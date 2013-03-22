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
 * inFile  = GSocketService.html
 * outPack = gio
 * outFile = SocketService
 * strct   = GSocketService
 * realStrct=
 * ctorStrct=
 * clss    = SocketService
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_socket_service_
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

module gio.SocketService;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;




private import gio.SocketListener;

/**
 * A GSocketService is an object that represents a service that
 * is provided to the network or over local sockets. When a new
 * connection is made to the service the "incoming"
 * signal is emitted.
 *
 * A GSocketService is a subclass of GSocketListener and you need
 * to add the addresses you want to accept connections on with the
 * GSocketListener APIs.
 *
 * There are two options for implementing a network service based on
 * GSocketService. The first is to create the service using
 * g_socket_service_new() and to connect to the "incoming"
 * signal. The second is to subclass GSocketService and override the
 * default signal handler implementation.
 *
 * In either case, the handler must immediately return, or else it
 * will block additional incoming connections from being serviced.
 * If you are interested in writing connection handlers that contain
 * blocking code then see GThreadedSocketService.
 *
 * The socket service runs on the main loop of the thread-default
 * context of the thread it is created in, and is not
 * threadsafe in general. However, the calls to start and stop the
 * service are thread-safe so these can be used from threads that
 * handle incoming clients.
 */
public class SocketService : SocketListener
{
	
	/** the main Gtk struct */
	protected GSocketService* gSocketService;
	
	
	public GSocketService* getSocketServiceStruct()
	{
		return gSocketService;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketService;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSocketService* gSocketService)
	{
		super(cast(GSocketListener*)gSocketService);
		this.gSocketService = gSocketService;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSocketService = cast(GSocketService*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(GSocketConnection*, GObject*, SocketService)[] onIncomingListeners;
	/**
	 * The ::incoming signal is emitted when a new incoming connection
	 * to service needs to be handled. The handler must initiate the
	 * handling of connection, but may not block; in essence,
	 * asynchronous operations must be used.
	 * connection will be unreffed once the signal handler returns,
	 * so you need to ref it yourself if you are planning to use it.
	 * TRUE to stop other handlers from being called
	 * Since 2.22
	 * See Also
	 * GThreadedSocketService, GSocketListener.
	 */
	void addOnIncoming(bool delegate(GSocketConnection*, GObject*, SocketService) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("incoming" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"incoming",
			cast(GCallback)&callBackIncoming,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["incoming"] = 1;
		}
		onIncomingListeners ~= dlg;
	}
	extern(C) static gboolean callBackIncoming(GSocketService* serviceStruct, GSocketConnection* connection, GObject* sourceObject, SocketService _socketService)
	{
		foreach ( bool delegate(GSocketConnection*, GObject*, SocketService) dlg ; _socketService.onIncomingListeners )
		{
			if ( dlg(connection, sourceObject, _socketService) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new GSocketService with no sockets to listen for.
	 * New listeners can be added with e.g. g_socket_listener_add_address()
	 * or g_socket_listener_add_inet_port().
	 * Since 2.22
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GSocketService * g_socket_service_new (void);
		auto p = g_socket_service_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_socket_service_new()");
		}
		this(cast(GSocketService*) p);
	}
	
	/**
	 * Starts the service, i.e. start accepting connections
	 * from the added sockets when the mainloop runs.
	 * This call is thread-safe, so it may be called from a thread
	 * handling an incoming client request.
	 * Since 2.22
	 */
	public void start()
	{
		// void g_socket_service_start (GSocketService *service);
		g_socket_service_start(gSocketService);
	}
	
	/**
	 * Stops the service, i.e. stops accepting connections
	 * from the added sockets when the mainloop runs.
	 * This call is thread-safe, so it may be called from a thread
	 * handling an incoming client request.
	 * Since 2.22
	 */
	public void stop()
	{
		// void g_socket_service_stop (GSocketService *service);
		g_socket_service_stop(gSocketService);
	}
	
	/**
	 * Check whether the service is active or not. An active
	 * service will accept new clients that connect, while
	 * a non-active service will let connecting clients queue
	 * up until the service is started.
	 * Since 2.22
	 * Signal Details
	 * The "incoming" signal
	 * gboolean user_function (GSocketService *service,
	 *  GSocketConnection *connection,
	 *  GObject *source_object,
	 *  gpointer user_data) : Run Last
	 * The ::incoming signal is emitted when a new incoming connection
	 * to service needs to be handled. The handler must initiate the
	 * handling of connection, but may not block; in essence,
	 * asynchronous operations must be used.
	 * connection will be unreffed once the signal handler returns,
	 * so you need to ref it yourself if you are planning to use it.
	 * Since 2.22
	 * Returns: TRUE if the service is active, FALSE otherwiseReturns: TRUE to stop other handlers from being called
	 */
	public int isActive()
	{
		// gboolean g_socket_service_is_active (GSocketService *service);
		return g_socket_service_is_active(gSocketService);
	}
}
