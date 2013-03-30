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
 * inFile  = GDBusConnection.html
 * outPack = gio
 * outFile = DBusConnection
 * strct   = GDBusConnection
 * realStrct=
 * ctorStrct=
 * clss    = DBusConnection
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * 	- InitableIF
 * 	- AsyncInitableIF
 * prefixes:
 * 	- g_dbus_connection_
 * 	- g_dbus_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_dbus_connection_new_finish
 * 	- g_dbus_connection_new_for_address_finish
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Variant
 * 	- glib.VariantType
 * 	- gio.ActionGroupIF
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.Credentials
 * 	- gio.DBusAuthObserver
 * 	- gio.DBusMessage
 * 	- gio.DBusMethodInvocation
 * 	- gio.IOStream
 * 	- gio.MenuModel
 * 	- gio.UnixFDList
 * 	- gio.InitableT
 * 	- gio.InitableIF
 * 	- gio.AsyncInitableT
 * 	- gio.AsyncInitableIF
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GCredentials* -> Credentials
 * 	- GDBusAuthObserver* -> DBusAuthObserver
 * 	- GDBusConnection* -> DBusConnection
 * 	- GDBusMessage* -> DBusMessage
 * 	- GDBusMethodInvocation* -> DBusMethodInvocation
 * 	- GIOStream* -> IOStream
 * 	- GUnixFDList* -> UnixFDList
 * 	- GVariant* -> Variant
 * 	- GVariantType* -> VariantType
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusConnection;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.Variant;
private import glib.VariantType;
private import gio.ActionGroupIF;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.Credentials;
private import gio.DBusAuthObserver;
private import gio.DBusMessage;
private import gio.DBusMethodInvocation;
private import gio.IOStream;
private import gio.MenuModel;
private import gio.UnixFDList;
private import gio.InitableT;
private import gio.InitableIF;
private import gio.AsyncInitableT;
private import gio.AsyncInitableIF;



private import gobject.ObjectG;

/**
 * The GDBusConnection type is used for D-Bus connections to remote
 * peers such as a message buses. It is a low-level API that offers a
 * lot of flexibility. For instance, it lets you establish a connection
 * over any transport that can by represented as an GIOStream.
 *
 * This class is rarely used directly in D-Bus clients. If you are writing
 * an D-Bus client, it is often easier to use the g_bus_own_name(),
 * g_bus_watch_name() or g_dbus_proxy_new_for_bus() APIs.
 *
 * As an exception to the usual GLib rule that a particular object must not be
 * used by two threads at the same time, GDBusConnection's methods may be
 * called from any thread[1].
 *
 * Most of the ways to obtain a GDBusConnection automatically initialize it
 * (i.e. connect to D-Bus): for instance, g_dbus_connection_new() and
 * g_bus_get(), and the synchronous versions of those methods, give you an
 * initialized connection. Language bindings for GIO should use
 * g_initable_new() or g_async_initable_new_async(), which also initialize the
 * connection.
 *
 * If you construct an uninitialized GDBusConnection, such as via
 * g_object_new(), you must initialize it via g_initable_init() or
 * g_async_initable_init_async() before using its methods or properties.
 * Calling methods or accessing properties on a GDBusConnection that has not
 * completed initialization successfully is considered to be invalid, and leads
 * to undefined behaviour. In particular, if initialization fails with a
 * GError, the only valid thing you can do with that GDBusConnection is to
 * free it with g_object_unref().
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 */
public class DBusConnection : ObjectG, InitableIF, AsyncInitableIF
{
	
	/** the main Gtk struct */
	protected GDBusConnection* gDBusConnection;
	
	
	public GDBusConnection* getDBusConnectionStruct()
	{
		return gDBusConnection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusConnection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusConnection* gDBusConnection)
	{
		super(cast(GObject*)gDBusConnection);
		this.gDBusConnection = gDBusConnection;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusConnection = cast(GDBusConnection*)obj;
	}
	
	// add the Initable capabilities
	mixin InitableT!(DBusConnection);
	
	// add the AsyncInitable capabilities
	mixin AsyncInitableT!(DBusConnection);
	
	/**
	 * Finishes an operation started with g_dbus_connection_new().
	 * Since 2.26
	 * Params:
	 *      res    = A GAsyncResult obtained from the GAsyncReadyCallback
	 *               passed to g_dbus_connection_new().
	 *     address = If true finish an address.
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (AsyncResultIF res, bool address = false)
	{
		// GDBusConnection * g_dbus_connection_new_finish (GAsyncResult *res,  GError **error);
		GError* err = null;
		GDBusConnection* p;
		
		if ( address )
		{
			p = g_dbus_connection_new_for_address_finish((res is null) ? null : res.getAsyncResultTStruct(), &err);
		}
		else
		{
			p = g_dbus_connection_new_finish((res is null) ? null : res.getAsyncResultTStruct(), &err);
		}
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_connection_new_finish((res is null) ? null : res.getAsyncResultTStruct(), &err)");
		}
		this(cast(GDBusConnection*) p);
	}
	
	/**
	 * These functions support exporting a GActionGroup on D-Bus.
	 * The D-Bus interface that is used is a private implementation
	 * detail.
	 *
	 * To access an exported GActionGroup remotely, use
	 * g_dbus_action_group_get() to obtain a GDBusActionGroup.
	 */
	
	/**
	 * These functions support exporting a GMenuModel on D-Bus.
	 * The D-Bus interface that is used is a private implementation
	 * detail.
	 *
	 * To access an exported GMenuModel remotely, use
	 * g_dbus_menu_model_get() to obtain a GDBusMenuModel.
	 */
	int[string] connectedSignals;
	
	void delegate(gboolean, GError*, DBusConnection)[] onClosedListeners;
	/**
	 * Emitted when the connection is closed.
	 * The cause of this event can be
	 *  If g_dbus_connection_close() is called. In this case
	 *  remote_peer_vanished is set to FALSE and error is NULL.
	 *  If the remote peer closes the connection. In this case
	 *  remote_peer_vanished is set to TRUE and error is set.
	 *  If the remote peer sends invalid or malformed data. In this
	 *  case remote_peer_vanished is set to FALSE and error
	 *  is set.
	 * Upon receiving this signal, you should give up your reference to
	 * connection. You are guaranteed that this signal is emitted only
	 * once.
	 * TRUE if connection is closed because the
	 * remote peer closed its end of the connection.
	 * Since 2.26
	 * [1]
	 *  This is so that g_bus_get() and g_bus_get_sync() can safely return the
	 *  same GDBusConnection when called from any thread.
	 */
	void addOnClosed(void delegate(gboolean, GError*, DBusConnection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("closed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"closed",
			cast(GCallback)&callBackClosed,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["closed"] = 1;
		}
		onClosedListeners ~= dlg;
	}
	extern(C) static void callBackClosed(GDBusConnection* connectionStruct, gboolean remotePeerVanished, GError* error, DBusConnection _dBusConnection)
	{
		foreach ( void delegate(gboolean, GError*, DBusConnection) dlg ; _dBusConnection.onClosedListeners )
		{
			dlg(remotePeerVanished, error, _dBusConnection);
		}
	}
	
	
	/**
	 * Asynchronously connects to the message bus specified by bus_type.
	 * When the operation is finished, callback will be invoked. You can
	 * then call g_bus_get_finish() to get the result of the operation.
	 * This is a asynchronous failable function. See g_bus_get_sync() for
	 * the synchronous version.
	 * Since 2.26
	 * Params:
	 * busType = A GBusType.
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is satisfied.
	 * userData = The data to pass to callback.
	 */
	public static void gBusGet(GBusType busType, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_bus_get (GBusType bus_type,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_bus_get(busType, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an operation started with g_bus_get().
	 * The returned object is a singleton, that is, shared with other
	 * callers of g_bus_get() and g_bus_get_sync() for bus_type. In the
	 * event that you need a private message bus connection, use
	 * g_dbus_address_get_for_bus_sync() and
	 * g_dbus_connection_new_for_address().
	 * Note that the returned GDBusConnection object will (usually) have
	 * the "exit-on-close" property set to TRUE.
	 * Since 2.26
	 * Params:
	 * res = A GAsyncResult obtained from the GAsyncReadyCallback passed to g_bus_get().
	 * Returns: A GDBusConnection or NULL if error is set. Free with g_object_unref(). [transfer full]
	 * Throws: GException on failure.
	 */
	public static DBusConnection gBusGetFinish(AsyncResultIF res)
	{
		// GDBusConnection * g_bus_get_finish (GAsyncResult *res,  GError **error);
		GError* err = null;
		
		auto p = g_bus_get_finish((res is null) ? null : res.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) p);
	}
	
	/**
	 * Synchronously connects to the message bus specified by bus_type.
	 * Note that the returned object may shared with other callers,
	 * e.g. if two separate parts of a process calls this function with
	 * the same bus_type, they will share the same object.
	 * This is a synchronous failable function. See g_bus_get() and
	 * g_bus_get_finish() for the asynchronous version.
	 * The returned object is a singleton, that is, shared with other
	 * callers of g_bus_get() and g_bus_get_sync() for bus_type. In the
	 * event that you need a private message bus connection, use
	 * g_dbus_address_get_for_bus_sync() and
	 * g_dbus_connection_new_for_address().
	 * Note that the returned GDBusConnection object will (usually) have
	 * the "exit-on-close" property set to TRUE.
	 * Since 2.26
	 * Params:
	 * busType = A GBusType.
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Returns: A GDBusConnection or NULL if error is set. Free with g_object_unref(). [transfer full]
	 * Throws: GException on failure.
	 */
	public static DBusConnection gBusGetSync(GBusType busType, Cancellable cancellable)
	{
		// GDBusConnection * g_bus_get_sync (GBusType bus_type,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_bus_get_sync(busType, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) p);
	}
	
	/**
	 * Asynchronously sets up a D-Bus connection for exchanging D-Bus messages
	 * with the end represented by stream.
	 * If stream is a GSocketConnection, then the corresponding GSocket
	 * will be put into non-blocking mode.
	 * The D-Bus connection will interact with stream from a worker thread.
	 * As a result, the caller should not interact with stream after this
	 * method has been called, except by calling g_object_unref() on it.
	 * If observer is not NULL it may be used to control the
	 * authentication process.
	 * When the operation is finished, callback will be invoked. You can
	 * then call g_dbus_connection_new_finish() to get the result of the
	 * operation.
	 * This is a asynchronous failable constructor. See
	 * g_dbus_connection_new_sync() for the synchronous
	 * version.
	 * Since 2.26
	 * Params:
	 * stream = A GIOStream.
	 * guid = The GUID to use if a authenticating as a server or NULL. [allow-none]
	 * flags = Flags describing how to make the connection.
	 * observer = A GDBusAuthObserver or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is satisfied.
	 * userData = The data to pass to callback.
	 */
	public static void newDBusConnection(IOStream stream, string guid, GDBusConnectionFlags flags, DBusAuthObserver observer, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_connection_new (GIOStream *stream,  const gchar *guid,  GDBusConnectionFlags flags,  GDBusAuthObserver *observer,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_connection_new((stream is null) ? null : stream.getIOStreamStruct(), Str.toStringz(guid), flags, (observer is null) ? null : observer.getDBusAuthObserverStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Synchronously sets up a D-Bus connection for exchanging D-Bus messages
	 * with the end represented by stream.
	 * If stream is a GSocketConnection, then the corresponding GSocket
	 * will be put into non-blocking mode.
	 * The D-Bus connection will interact with stream from a worker thread.
	 * As a result, the caller should not interact with stream after this
	 * method has been called, except by calling g_object_unref() on it.
	 * If observer is not NULL it may be used to control the
	 * authentication process.
	 * This is a synchronous failable constructor. See
	 * g_dbus_connection_new() for the asynchronous version.
	 * Since 2.26
	 * Params:
	 * stream = A GIOStream.
	 * guid = The GUID to use if a authenticating as a server or NULL. [allow-none]
	 * flags = Flags describing how to make the connection.
	 * observer = A GDBusAuthObserver or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (IOStream stream, string guid, GDBusConnectionFlags flags, DBusAuthObserver observer, Cancellable cancellable)
	{
		// GDBusConnection * g_dbus_connection_new_sync (GIOStream *stream,  const gchar *guid,  GDBusConnectionFlags flags,  GDBusAuthObserver *observer,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_new_sync((stream is null) ? null : stream.getIOStreamStruct(), Str.toStringz(guid), flags, (observer is null) ? null : observer.getDBusAuthObserverStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_connection_new_sync((stream is null) ? null : stream.getIOStreamStruct(), Str.toStringz(guid), flags, (observer is null) ? null : observer.getDBusAuthObserverStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err)");
		}
		this(cast(GDBusConnection*) p);
	}
	
	/**
	 * Asynchronously connects and sets up a D-Bus client connection for
	 * exchanging D-Bus messages with an endpoint specified by address
	 * which must be in the D-Bus address format.
	 * This constructor can only be used to initiate client-side
	 * connections - use g_dbus_connection_new() if you need to act as the
	 * server. In particular, flags cannot contain the
	 * G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER or
	 * G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS flags.
	 * When the operation is finished, callback will be invoked. You can
	 * then call g_dbus_connection_new_finish() to get the result of the
	 * operation.
	 * If observer is not NULL it may be used to control the
	 * authentication process.
	 * This is a asynchronous failable constructor. See
	 * g_dbus_connection_new_for_address_sync() for the synchronous
	 * version.
	 * Since 2.26
	 * Params:
	 * address = A D-Bus address.
	 * flags = Flags describing how to make the connection.
	 * observer = A GDBusAuthObserver or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is satisfied.
	 * userData = The data to pass to callback.
	 */
	public static void newForAddress(string address, GDBusConnectionFlags flags, DBusAuthObserver observer, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_connection_new_for_address (const gchar *address,  GDBusConnectionFlags flags,  GDBusAuthObserver *observer,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_connection_new_for_address(Str.toStringz(address), flags, (observer is null) ? null : observer.getDBusAuthObserverStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Synchronously connects and sets up a D-Bus client connection for
	 * exchanging D-Bus messages with an endpoint specified by address
	 * which must be in the D-Bus address format.
	 * This constructor can only be used to initiate client-side
	 * connections - use g_dbus_connection_new_sync() if you need to act
	 * as the server. In particular, flags cannot contain the
	 * G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER or
	 * G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS flags.
	 * This is a synchronous failable constructor. See
	 * g_dbus_connection_new_for_address() for the asynchronous version.
	 * If observer is not NULL it may be used to control the
	 * authentication process.
	 * Since 2.26
	 * Params:
	 * address = A D-Bus address.
	 * flags = Flags describing how to make the connection.
	 * observer = A GDBusAuthObserver or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string address, GDBusConnectionFlags flags, DBusAuthObserver observer, Cancellable cancellable)
	{
		// GDBusConnection * g_dbus_connection_new_for_address_sync  (const gchar *address,  GDBusConnectionFlags flags,  GDBusAuthObserver *observer,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_new_for_address_sync(Str.toStringz(address), flags, (observer is null) ? null : observer.getDBusAuthObserverStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_connection_new_for_address_sync(Str.toStringz(address), flags, (observer is null) ? null : observer.getDBusAuthObserverStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err)");
		}
		this(cast(GDBusConnection*) p);
	}
	
	/**
	 * If connection was created with
	 * G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING, this method
	 * starts processing messages. Does nothing on if connection wasn't
	 * created with this flag or if the method has already been called.
	 * Since 2.26
	 */
	public void startMessageProcessing()
	{
		// void g_dbus_connection_start_message_processing  (GDBusConnection *connection);
		g_dbus_connection_start_message_processing(gDBusConnection);
	}
	
	/**
	 * Closes connection. Note that this never causes the process to
	 * exit (this might only happen if the other end of a shared message
	 * bus connection disconnects, see "exit-on-close").
	 * Once the connection is closed, operations such as sending a message
	 * will return with the error G_IO_ERROR_CLOSED. Closing a connection
	 * will not automatically flush the connection so queued messages may
	 * be lost. Use g_dbus_connection_flush() if you need such guarantees.
	 * If connection is already closed, this method fails with
	 * G_IO_ERROR_CLOSED.
	 * When connection has been closed, the "closed"
	 * signal is emitted in the thread-default main
	 * loop of the thread that connection was constructed in.
	 * This is an asynchronous method. When the operation is finished,
	 * callback will be invoked in the thread-default main
	 * loop of the thread you are calling this method from. You can
	 * then call g_dbus_connection_close_finish() to get the result of the
	 * operation. See g_dbus_connection_close_sync() for the synchronous
	 * version.
	 * Since 2.26
	 * Params:
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is
	 * satisfied or NULL if you don't care about the result. [allow-none]
	 * userData = The data to pass to callback.
	 */
	public void close(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_connection_close (GDBusConnection *connection,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_connection_close(gDBusConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an operation started with g_dbus_connection_close().
	 * Since 2.26
	 * Params:
	 * res = A GAsyncResult obtained from the GAsyncReadyCallback passed to g_dbus_connection_close().
	 * Returns: TRUE if the operation succeeded, FALSE if error is set.
	 * Throws: GException on failure.
	 */
	public int closeFinish(AsyncResultIF res)
	{
		// gboolean g_dbus_connection_close_finish (GDBusConnection *connection,  GAsyncResult *res,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_close_finish(gDBusConnection, (res is null) ? null : res.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Synchronously closees connection. The calling thread is blocked
	 * until this is done. See g_dbus_connection_close() for the
	 * asynchronous version of this method and more details about what it
	 * does.
	 * Since 2.26
	 * Params:
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Returns: TRUE if the operation succeeded, FALSE if error is set.
	 * Throws: GException on failure.
	 */
	public int closeSync(Cancellable cancellable)
	{
		// gboolean g_dbus_connection_close_sync (GDBusConnection *connection,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_close_sync(gDBusConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets whether connection is closed.
	 * Since 2.26
	 * Returns: TRUE if the connection is closed, FALSE otherwise.
	 */
	public int isClosed()
	{
		// gboolean g_dbus_connection_is_closed (GDBusConnection *connection);
		return g_dbus_connection_is_closed(gDBusConnection);
	}
	
	/**
	 * Asynchronously flushes connection, that is, writes all queued
	 * outgoing message to the transport and then flushes the transport
	 * (using g_output_stream_flush_async()). This is useful in programs
	 * that wants to emit a D-Bus signal and then exit
	 * immediately. Without flushing the connection, there is no guarantee
	 * that the message has been sent to the networking buffers in the OS
	 * kernel.
	 * This is an asynchronous method. When the operation is finished,
	 * callback will be invoked in the thread-default main
	 * loop of the thread you are calling this method from. You can
	 * then call g_dbus_connection_flush_finish() to get the result of the
	 * operation. See g_dbus_connection_flush_sync() for the synchronous
	 * version.
	 * Since 2.26
	 * Params:
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is
	 * satisfied or NULL if you don't care about the result. [allow-none]
	 * userData = The data to pass to callback.
	 */
	public void flush(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_connection_flush (GDBusConnection *connection,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_connection_flush(gDBusConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an operation started with g_dbus_connection_flush().
	 * Since 2.26
	 * Params:
	 * res = A GAsyncResult obtained from the GAsyncReadyCallback passed to g_dbus_connection_flush().
	 * Returns: TRUE if the operation succeeded, FALSE if error is set.
	 * Throws: GException on failure.
	 */
	public int flushFinish(AsyncResultIF res)
	{
		// gboolean g_dbus_connection_flush_finish (GDBusConnection *connection,  GAsyncResult *res,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_flush_finish(gDBusConnection, (res is null) ? null : res.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Synchronously flushes connection. The calling thread is blocked
	 * until this is done. See g_dbus_connection_flush() for the
	 * asynchronous version of this method and more details about what it
	 * does.
	 * Since 2.26
	 * Params:
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Returns: TRUE if the operation succeeded, FALSE if error is set.
	 * Throws: GException on failure.
	 */
	public int flushSync(Cancellable cancellable)
	{
		// gboolean g_dbus_connection_flush_sync (GDBusConnection *connection,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_flush_sync(gDBusConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets whether the process is terminated when connection is
	 * closed by the remote peer. See
	 * "exit-on-close" for more details.
	 * Since 2.26
	 * Returns: Whether the process is terminated when connection is closed by the remote peer.
	 */
	public int getExitOnClose()
	{
		// gboolean g_dbus_connection_get_exit_on_close (GDBusConnection *connection);
		return g_dbus_connection_get_exit_on_close(gDBusConnection);
	}
	
	/**
	 * Sets whether the process should be terminated when connection is
	 * closed by the remote peer. See "exit-on-close" for
	 * more details.
	 * Note that this function should be used with care. Most modern UNIX
	 * desktops tie the notion of a user session the session bus, and expect
	 * all of a users applications to quit when their bus connection goes away.
	 * If you are setting exit_on_close to FALSE for the shared session
	 * bus connection, you should make sure that your application exits
	 * when the user session ends.
	 * Since 2.26
	 * Params:
	 * exitOnClose = Whether the process should be terminated
	 * when connection is closed by the remote peer.
	 */
	public void setExitOnClose(int exitOnClose)
	{
		// void g_dbus_connection_set_exit_on_close (GDBusConnection *connection,  gboolean exit_on_close);
		g_dbus_connection_set_exit_on_close(gDBusConnection, exitOnClose);
	}
	
	/**
	 * Gets the underlying stream used for IO.
	 * While the GDBusConnection is active, it will interact with this
	 * stream from a worker thread, so it is not safe to interact with
	 * the stream directly.
	 * Since 2.26
	 * Returns: the stream used for IO. [transfer none]
	 */
	public IOStream getStream()
	{
		// GIOStream * g_dbus_connection_get_stream (GDBusConnection *connection);
		auto p = g_dbus_connection_get_stream(gDBusConnection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) p);
	}
	
	/**
	 * The GUID of the peer performing the role of server when
	 * authenticating. See "guid" for more details.
	 * Since 2.26
	 * Returns: The GUID. Do not free this string, it is owned by connection.
	 */
	public string getGuid()
	{
		// const gchar * g_dbus_connection_get_guid (GDBusConnection *connection);
		return Str.toString(g_dbus_connection_get_guid(gDBusConnection));
	}
	
	/**
	 * Gets the unique name of connection as assigned by the message
	 * bus. This can also be used to figure out if connection is a
	 * message bus connection.
	 * Since 2.26
	 * Returns: The unique name or NULL if connection is not a message bus connection. Do not free this string, it is owned by connection.
	 */
	public string getUniqueName()
	{
		// const gchar * g_dbus_connection_get_unique_name (GDBusConnection *connection);
		return Str.toString(g_dbus_connection_get_unique_name(gDBusConnection));
	}
	
	/**
	 * Gets the capabilities negotiated with the remote peer
	 * Since 2.26
	 * Returns: Zero or more flags from the GDBusCapabilityFlags enumeration.
	 */
	public GDBusCapabilityFlags getCapabilities()
	{
		// GDBusCapabilityFlags g_dbus_connection_get_capabilities (GDBusConnection *connection);
		return g_dbus_connection_get_capabilities(gDBusConnection);
	}
	
	/**
	 * Gets the credentials of the authenticated peer. This will always
	 * return NULL unless connection acted as a server
	 * (e.g. G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER was passed)
	 * when set up and the client passed credentials as part of the
	 * authentication process.
	 * In a message bus setup, the message bus is always the server and
	 * each application is a client. So this method will always return
	 * NULL for message bus clients.
	 * Since 2.26
	 * Returns: A GCredentials or NULL if not available. Do not free this object, it is owned by connection. [transfer none]
	 */
	public Credentials getPeerCredentials()
	{
		// GCredentials * g_dbus_connection_get_peer_credentials  (GDBusConnection *connection);
		auto p = g_dbus_connection_get_peer_credentials(gDBusConnection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Credentials)(cast(GCredentials*) p);
	}
	
	/**
	 * Retrieves the last serial number assigned to a GDBusMessage on
	 * the current thread. This includes messages sent via both low-level
	 * API such as g_dbus_connection_send_message() as well as
	 * high-level API such as g_dbus_connection_emit_signal(),
	 * g_dbus_connection_call() or g_dbus_proxy_call().
	 * Since 2.34
	 * Returns: the last used serial or zero when no message has been sent within the current thread.
	 */
	public uint getLastSerial()
	{
		// guint32 g_dbus_connection_get_last_serial (GDBusConnection *connection);
		return g_dbus_connection_get_last_serial(gDBusConnection);
	}
	
	/**
	 * Asynchronously invokes the method_name method on the
	 * interface_name D-Bus interface on the remote object at
	 * object_path owned by bus_name.
	 * If connection is closed then the operation will fail with
	 * G_IO_ERROR_CLOSED. If cancellable is canceled, the operation will
	 * fail with G_IO_ERROR_CANCELLED. If parameters contains a value
	 * not compatible with the D-Bus protocol, the operation fails with
	 * G_IO_ERROR_INVALID_ARGUMENT.
	 * If reply_type is non-NULL then the reply will be checked for having this type and an
	 * error will be raised if it does not match. Said another way, if you give a reply_type
	 * then any non-NULL return value will be of this type.
	 * If the parameters GVariant is floating, it is consumed. This allows
	 * Since 2.26
	 * Params:
	 * busName = A unique or well-known bus name or NULL if
	 * connection is not a message bus connection. [allow-none]
	 * objectPath = Path of remote object.
	 * interfaceName = D-Bus interface to invoke method on.
	 * methodName = The name of the method to invoke.
	 * parameters = A GVariant tuple with parameters for the method
	 * or NULL if not passing parameters. [allow-none]
	 * replyType = The expected type of the reply, or NULL. [allow-none]
	 * flags = Flags from the GDBusCallFlags enumeration.
	 * timeoutMsec = The timeout in milliseconds, -1 to use the default
	 * timeout or G_MAXINT for no timeout.
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is
	 * satisfied or NULL if you don't care about the result of the
	 * method invocation. [allow-none]
	 * userData = The data to pass to callback.
	 */
	public void call(string busName, string objectPath, string interfaceName, string methodName, Variant parameters, VariantType replyType, GDBusCallFlags flags, int timeoutMsec, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_connection_call (GDBusConnection *connection,  const gchar *bus_name,  const gchar *object_path,  const gchar *interface_name,  const gchar *method_name,  GVariant *parameters,  const GVariantType *reply_type,  GDBusCallFlags flags,  gint timeout_msec,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_connection_call(gDBusConnection, Str.toStringz(busName), Str.toStringz(objectPath), Str.toStringz(interfaceName), Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), (replyType is null) ? null : replyType.getVariantTypeStruct(), flags, timeoutMsec, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an operation started with g_dbus_connection_call().
	 * Since 2.26
	 * Params:
	 * res = A GAsyncResult obtained from the GAsyncReadyCallback passed to g_dbus_connection_call().
	 * Returns: NULL if error is set. Otherwise a GVariant tuple with return values. Free with g_variant_unref().
	 * Throws: GException on failure.
	 */
	public Variant callFinish(AsyncResultIF res)
	{
		// GVariant * g_dbus_connection_call_finish (GDBusConnection *connection,  GAsyncResult *res,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_call_finish(gDBusConnection, (res is null) ? null : res.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Synchronously invokes the method_name method on the
	 * interface_name D-Bus interface on the remote object at
	 * object_path owned by bus_name.
	 * If connection is closed then the operation will fail with
	 * G_IO_ERROR_CLOSED. If cancellable is canceled, the
	 * operation will fail with G_IO_ERROR_CANCELLED. If parameters
	 * contains a value not compatible with the D-Bus protocol, the operation
	 * fails with G_IO_ERROR_INVALID_ARGUMENT.
	 * If reply_type is non-NULL then the reply will be checked for having
	 * this type and an error will be raised if it does not match. Said
	 * another way, if you give a reply_type then any non-NULL return
	 * value will be of this type.
	 * If the parameters GVariant is floating, it is consumed.
	 * Since 2.26
	 * Params:
	 * busName = A unique or well-known bus name or NULL if
	 * connection is not a message bus connection. [allow-none]
	 * objectPath = Path of remote object.
	 * interfaceName = D-Bus interface to invoke method on.
	 * methodName = The name of the method to invoke.
	 * parameters = A GVariant tuple with parameters for the method
	 * or NULL if not passing parameters. [allow-none]
	 * replyType = The expected type of the reply, or NULL. [allow-none]
	 * flags = Flags from the GDBusCallFlags enumeration.
	 * timeoutMsec = The timeout in milliseconds, -1 to use the default
	 * timeout or G_MAXINT for no timeout.
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Returns: NULL if error is set. Otherwise a GVariant tuple with return values. Free with g_variant_unref().
	 * Throws: GException on failure.
	 */
	public Variant callSync(string busName, string objectPath, string interfaceName, string methodName, Variant parameters, VariantType replyType, GDBusCallFlags flags, int timeoutMsec, Cancellable cancellable)
	{
		// GVariant * g_dbus_connection_call_sync (GDBusConnection *connection,  const gchar *bus_name,  const gchar *object_path,  const gchar *interface_name,  const gchar *method_name,  GVariant *parameters,  const GVariantType *reply_type,  GDBusCallFlags flags,  gint timeout_msec,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_call_sync(gDBusConnection, Str.toStringz(busName), Str.toStringz(objectPath), Str.toStringz(interfaceName), Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), (replyType is null) ? null : replyType.getVariantTypeStruct(), flags, timeoutMsec, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Like g_dbus_connection_call() but also takes a GUnixFDList object.
	 * This method is only available on UNIX.
	 * Since 2.30
	 * Params:
	 * busName = A unique or well-known bus name or NULL if
	 * connection is not a message bus connection. [allow-none]
	 * objectPath = Path of remote object.
	 * interfaceName = D-Bus interface to invoke method on.
	 * methodName = The name of the method to invoke.
	 * parameters = A GVariant tuple with parameters for the method
	 * or NULL if not passing parameters. [allow-none]
	 * replyType = The expected type of the reply, or NULL. [allow-none]
	 * flags = Flags from the GDBusCallFlags enumeration.
	 * timeoutMsec = The timeout in milliseconds, -1 to use the default
	 * timeout or G_MAXINT for no timeout.
	 * fdList = A GUnixFDList or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is
	 * satisfied or NULL if you don't * care about the result of the
	 * method invocation. [allow-none]
	 * userData = The data to pass to callback.
	 */
	public void callWithUnixFdList(string busName, string objectPath, string interfaceName, string methodName, Variant parameters, VariantType replyType, GDBusCallFlags flags, int timeoutMsec, UnixFDList fdList, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_connection_call_with_unix_fd_list  (GDBusConnection *connection,  const gchar *bus_name,  const gchar *object_path,  const gchar *interface_name,  const gchar *method_name,  GVariant *parameters,  const GVariantType *reply_type,  GDBusCallFlags flags,  gint timeout_msec,  GUnixFDList *fd_list,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_connection_call_with_unix_fd_list(gDBusConnection, Str.toStringz(busName), Str.toStringz(objectPath), Str.toStringz(interfaceName), Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), (replyType is null) ? null : replyType.getVariantTypeStruct(), flags, timeoutMsec, (fdList is null) ? null : fdList.getUnixFDListStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an operation started with g_dbus_connection_call_with_unix_fd_list().
	 * Since 2.30
	 * Params:
	 * outFdList = Return location for a GUnixFDList or NULL. [out][allow-none]
	 * res = A GAsyncResult obtained from the GAsyncReadyCallback passed to g_dbus_connection_call_with_unix_fd_list().
	 * Returns: NULL if error is set. Otherwise a GVariant tuple with return values. Free with g_variant_unref().
	 * Throws: GException on failure.
	 */
	public Variant callWithUnixFdListFinish(out UnixFDList outFdList, AsyncResultIF res)
	{
		// GVariant * g_dbus_connection_call_with_unix_fd_list_finish  (GDBusConnection *connection,  GUnixFDList **out_fd_list,  GAsyncResult *res,  GError **error);
		GUnixFDList* outoutFdList = null;
		GError* err = null;
		
		auto p = g_dbus_connection_call_with_unix_fd_list_finish(gDBusConnection, &outoutFdList, (res is null) ? null : res.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		outFdList = ObjectG.getDObject!(UnixFDList)(outoutFdList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Like g_dbus_connection_call_sync() but also takes and returns GUnixFDList objects.
	 * This method is only available on UNIX.
	 * Since 2.30
	 * Params:
	 * busName = A unique or well-known bus name or NULL if
	 * connection is not a message bus connection. [allow-none]
	 * objectPath = Path of remote object.
	 * interfaceName = D-Bus interface to invoke method on.
	 * methodName = The name of the method to invoke.
	 * parameters = A GVariant tuple with parameters for the method
	 * or NULL if not passing parameters. [allow-none]
	 * replyType = The expected type of the reply, or NULL. [allow-none]
	 * flags = Flags from the GDBusCallFlags enumeration.
	 * timeoutMsec = The timeout in milliseconds, -1 to use the default
	 * timeout or G_MAXINT for no timeout.
	 * fdList = A GUnixFDList or NULL. [allow-none]
	 * outFdList = Return location for a GUnixFDList or NULL. [out][allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Returns: NULL if error is set. Otherwise a GVariant tuple with return values. Free with g_variant_unref().
	 * Throws: GException on failure.
	 */
	public Variant callWithUnixFdListSync(string busName, string objectPath, string interfaceName, string methodName, Variant parameters, VariantType replyType, GDBusCallFlags flags, int timeoutMsec, UnixFDList fdList, out UnixFDList outFdList, Cancellable cancellable)
	{
		// GVariant * g_dbus_connection_call_with_unix_fd_list_sync  (GDBusConnection *connection,  const gchar *bus_name,  const gchar *object_path,  const gchar *interface_name,  const gchar *method_name,  GVariant *parameters,  const GVariantType *reply_type,  GDBusCallFlags flags,  gint timeout_msec,  GUnixFDList *fd_list,  GUnixFDList **out_fd_list,  GCancellable *cancellable,  GError **error);
		GUnixFDList* outoutFdList = null;
		GError* err = null;
		
		auto p = g_dbus_connection_call_with_unix_fd_list_sync(gDBusConnection, Str.toStringz(busName), Str.toStringz(objectPath), Str.toStringz(interfaceName), Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), (replyType is null) ? null : replyType.getVariantTypeStruct(), flags, timeoutMsec, (fdList is null) ? null : fdList.getUnixFDListStruct(), &outoutFdList, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		outFdList = ObjectG.getDObject!(UnixFDList)(outoutFdList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Emits a signal.
	 * If the parameters GVariant is floating, it is consumed.
	 * This can only fail if parameters is not compatible with the D-Bus protocol.
	 * Since 2.26
	 * Params:
	 * destinationBusName = The unique bus name for the destination
	 * for the signal or NULL to emit to all listeners. [allow-none]
	 * objectPath = Path of remote object.
	 * interfaceName = D-Bus interface to emit a signal on.
	 * signalName = The name of the signal to emit.
	 * parameters = A GVariant tuple with parameters for the signal
	 * or NULL if not passing parameters. [allow-none]
	 * Returns: TRUE unless error is set.
	 * Throws: GException on failure.
	 */
	public int emitSignal(string destinationBusName, string objectPath, string interfaceName, string signalName, Variant parameters)
	{
		// gboolean g_dbus_connection_emit_signal (GDBusConnection *connection,  const gchar *destination_bus_name,  const gchar *object_path,  const gchar *interface_name,  const gchar *signal_name,  GVariant *parameters,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_emit_signal(gDBusConnection, Str.toStringz(destinationBusName), Str.toStringz(objectPath), Str.toStringz(interfaceName), Str.toStringz(signalName), (parameters is null) ? null : parameters.getVariantStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Subscribes to signals on connection and invokes callback with a
	 * whenever the signal is received. Note that callback
	 * will be invoked in the thread-default main
	 * loop of the thread you are calling this method from.
	 * If connection is not a message bus connection, sender must be
	 * NULL.
	 * If sender is a well-known name note that callback is invoked with
	 * the unique name for the owner of sender, not the well-known name
	 * as one would expect. This is because the message bus rewrites the
	 * name. As such, to avoid certain race conditions, users should be
	 * tracking the name owner of the well-known name and use that when
	 * processing the received signal.
	 * Since 2.26
	 * Params:
	 * sender = Sender name to match on (unique or well-known name)
	 * or NULL to listen from all senders. [allow-none]
	 * interfaceName = D-Bus interface name to match on or NULL to
	 * match on all interfaces. [allow-none]
	 * member = D-Bus signal name to match on or NULL to match on all signals. [allow-none]
	 * objectPath = Object path to match on or NULL to match on all object paths. [allow-none]
	 * arg0 = Contents of first string argument to match on or NULL
	 * to match on all kinds of arguments. [allow-none]
	 * flags = Flags describing how to subscribe to the signal (currently unused).
	 * callback = Callback to invoke when there is a signal matching the requested data.
	 * userData = User data to pass to callback.
	 * userDataFreeFunc = Function to free user_data with when
	 * subscription is removed or NULL. [allow-none]
	 * Returns: A subscription identifier that can be used with g_dbus_connection_signal_unsubscribe().
	 */
	public uint signalSubscribe(string sender, string interfaceName, string member, string objectPath, string arg0, GDBusSignalFlags flags, GDBusSignalCallback callback, void* userData, GDestroyNotify userDataFreeFunc)
	{
		// guint g_dbus_connection_signal_subscribe (GDBusConnection *connection,  const gchar *sender,  const gchar *interface_name,  const gchar *member,  const gchar *object_path,  const gchar *arg0,  GDBusSignalFlags flags,  GDBusSignalCallback callback,  gpointer user_data,  GDestroyNotify user_data_free_func);
		return g_dbus_connection_signal_subscribe(gDBusConnection, Str.toStringz(sender), Str.toStringz(interfaceName), Str.toStringz(member), Str.toStringz(objectPath), Str.toStringz(arg0), flags, callback, userData, userDataFreeFunc);
	}
	
	/**
	 * Unsubscribes from signals.
	 * Since 2.26
	 * Params:
	 * subscriptionId = A subscription id obtained from g_dbus_connection_signal_subscribe().
	 */
	public void signalUnsubscribe(uint subscriptionId)
	{
		// void g_dbus_connection_signal_unsubscribe  (GDBusConnection *connection,  guint subscription_id);
		g_dbus_connection_signal_unsubscribe(gDBusConnection, subscriptionId);
	}
	
	/**
	 * Asynchronously sends message to the peer represented by connection.
	 * Unless flags contain the
	 * G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL flag, the serial number
	 * will be assigned by connection and set on message via
	 * g_dbus_message_set_serial(). If out_serial is not NULL, then the
	 * serial number used will be written to this location prior to
	 * submitting the message to the underlying transport.
	 * If connection is closed then the operation will fail with
	 * G_IO_ERROR_CLOSED. If message is not well-formed,
	 * the operation fails with G_IO_ERROR_INVALID_ARGUMENT.
	 * See Example 6, “D-Bus server example” and Example 8, “D-Bus UNIX File Descriptor example” for an example of how to use this
	 * low-level API to send and receive UNIX file descriptors.
	 * Note that message must be unlocked, unless flags contain the
	 * G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL flag.
	 * Since 2.26
	 * Params:
	 * message = A GDBusMessage
	 * flags = Flags affecting how the message is sent.
	 * outSerial = Return location for serial number assigned
	 * to message when sending it or NULL. [out][allow-none]
	 * Returns: TRUE if the message was well-formed and queued for transmission, FALSE if error is set.
	 * Throws: GException on failure.
	 */
	public int sendMessage(DBusMessage message, GDBusSendMessageFlags flags, out uint outSerial)
	{
		// gboolean g_dbus_connection_send_message (GDBusConnection *connection,  GDBusMessage *message,  GDBusSendMessageFlags flags,  volatile guint32 *out_serial,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_send_message(gDBusConnection, (message is null) ? null : message.getDBusMessageStruct(), flags, &outSerial, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Asynchronously sends message to the peer represented by connection.
	 * Unless flags contain the
	 * G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL flag, the serial number
	 * will be assigned by connection and set on message via
	 * g_dbus_message_set_serial(). If out_serial is not NULL, then the
	 * serial number used will be written to this location prior to
	 * submitting the message to the underlying transport.
	 * If connection is closed then the operation will fail with
	 * G_IO_ERROR_CLOSED. If cancellable is canceled, the operation will
	 * fail with G_IO_ERROR_CANCELLED. If message is not well-formed,
	 * the operation fails with G_IO_ERROR_INVALID_ARGUMENT.
	 * This is an asynchronous method. When the operation is finished, callback will be invoked
	 * in the thread-default main loop
	 * of the thread you are calling this method from. You can then call
	 * g_dbus_connection_send_message_with_reply_finish() to get the result of the operation.
	 * See g_dbus_connection_send_message_with_reply_sync() for the synchronous version.
	 * Note that message must be unlocked, unless flags contain the
	 * G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL flag.
	 * See Example 6, “D-Bus server example” and Example 8, “D-Bus UNIX File Descriptor example” for an example of how to use this
	 * low-level API to send and receive UNIX file descriptors.
	 * Since 2.26
	 * Params:
	 * message = A GDBusMessage.
	 * flags = Flags affecting how the message is sent.
	 * timeoutMsec = The timeout in milliseconds, -1 to use the default
	 * timeout or G_MAXINT for no timeout.
	 * outSerial = Return location for serial number assigned
	 * to message when sending it or NULL. [out][allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is
	 * satisfied or NULL if you don't care about the result. [allow-none]
	 * userData = The data to pass to callback.
	 */
	public void sendMessageWithReply(DBusMessage message, GDBusSendMessageFlags flags, int timeoutMsec, out uint outSerial, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_connection_send_message_with_reply  (GDBusConnection *connection,  GDBusMessage *message,  GDBusSendMessageFlags flags,  gint timeout_msec,  volatile guint32 *out_serial,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_connection_send_message_with_reply(gDBusConnection, (message is null) ? null : message.getDBusMessageStruct(), flags, timeoutMsec, &outSerial, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an operation started with g_dbus_connection_send_message_with_reply().
	 * Note that error is only set if a local in-process error
	 * occurred. That is to say that the returned GDBusMessage object may
	 * be of type G_DBUS_MESSAGE_TYPE_ERROR. Use
	 * g_dbus_message_to_gerror() to transcode this to a GError.
	 * See Example 6, “D-Bus server example” and Example 8, “D-Bus UNIX File Descriptor example” for an example of how to use this
	 * low-level API to send and receive UNIX file descriptors.
	 * Since 2.26
	 * Params:
	 * res = A GAsyncResult obtained from the GAsyncReadyCallback passed to g_dbus_connection_send_message_with_reply().
	 * Returns: A locked GDBusMessage or NULL if error is set. [transfer full]
	 * Throws: GException on failure.
	 */
	public DBusMessage sendMessageWithReplyFinish(AsyncResultIF res)
	{
		// GDBusMessage * g_dbus_connection_send_message_with_reply_finish  (GDBusConnection *connection,  GAsyncResult *res,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_send_message_with_reply_finish(gDBusConnection, (res is null) ? null : res.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusMessage)(cast(GDBusMessage*) p);
	}
	
	/**
	 * Synchronously sends message to the peer represented by connection
	 * and blocks the calling thread until a reply is received or the
	 * timeout is reached. See g_dbus_connection_send_message_with_reply()
	 * for the asynchronous version of this method.
	 * Unless flags contain the
	 * G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL flag, the serial number
	 * will be assigned by connection and set on message via
	 * g_dbus_message_set_serial(). If out_serial is not NULL, then the
	 * serial number used will be written to this location prior to
	 * submitting the message to the underlying transport.
	 * If connection is closed then the operation will fail with
	 * G_IO_ERROR_CLOSED. If cancellable is canceled, the operation will
	 * fail with G_IO_ERROR_CANCELLED. If message is not well-formed,
	 * the operation fails with G_IO_ERROR_INVALID_ARGUMENT.
	 * Note that error is only set if a local in-process error
	 * occurred. That is to say that the returned GDBusMessage object may
	 * be of type G_DBUS_MESSAGE_TYPE_ERROR. Use
	 * g_dbus_message_to_gerror() to transcode this to a GError.
	 * See Example 6, “D-Bus server example” and Example 8, “D-Bus UNIX File Descriptor example” for an example of how to use this
	 * low-level API to send and receive UNIX file descriptors.
	 * Note that message must be unlocked, unless flags contain the
	 * G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL flag.
	 * Since 2.26
	 * Params:
	 * message = A GDBusMessage.
	 * flags = Flags affecting how the message is sent.
	 * timeoutMsec = The timeout in milliseconds, -1 to use the default
	 * timeout or G_MAXINT for no timeout.
	 * outSerial = Return location for serial number assigned
	 * to message when sending it or NULL. [out][allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Returns: A locked GDBusMessage that is the reply to message or NULL if error is set. [transfer full]
	 * Throws: GException on failure.
	 */
	public DBusMessage sendMessageWithReplySync(DBusMessage message, GDBusSendMessageFlags flags, int timeoutMsec, out uint outSerial, Cancellable cancellable)
	{
		// GDBusMessage * g_dbus_connection_send_message_with_reply_sync  (GDBusConnection *connection,  GDBusMessage *message,  GDBusSendMessageFlags flags,  gint timeout_msec,  volatile guint32 *out_serial,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_send_message_with_reply_sync(gDBusConnection, (message is null) ? null : message.getDBusMessageStruct(), flags, timeoutMsec, &outSerial, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusMessage)(cast(GDBusMessage*) p);
	}
	
	/**
	 * Adds a message filter. Filters are handlers that are run on all
	 * incoming and outgoing messages, prior to standard dispatch. Filters
	 * are run in the order that they were added. The same handler can be
	 * added as a filter more than once, in which case it will be run more
	 * than once. Filters added during a filter callback won't be run on
	 * the message being processed. Filter functions are allowed to modify
	 * and even drop messages.
	 * Note that filters are run in a dedicated message handling thread so
	 * they can't block and, generally, can't do anything but signal a
	 * worker thread. Also note that filters are rarely needed - use API
	 * such as g_dbus_connection_send_message_with_reply(),
	 * g_dbus_connection_signal_subscribe() or g_dbus_connection_call() instead.
	 * If a filter consumes an incoming message the message is not
	 * dispatched anywhere else - not even the standard dispatch machinery
	 * (that API such as g_dbus_connection_signal_subscribe() and
	 * g_dbus_connection_send_message_with_reply() relies on) will see the
	 * message. Similary, if a filter consumes an outgoing message, the
	 * message will not be sent to the other peer.
	 * Since 2.26
	 * Params:
	 * filterFunction = A filter function.
	 * userData = User data to pass to filter_function.
	 * userDataFreeFunc = Function to free user_data with when filter
	 * is removed or NULL.
	 * Returns: A filter identifier that can be used with g_dbus_connection_remove_filter().
	 */
	public uint addFilter(GDBusMessageFilterFunction filterFunction, void* userData, GDestroyNotify userDataFreeFunc)
	{
		// guint g_dbus_connection_add_filter (GDBusConnection *connection,  GDBusMessageFilterFunction filter_function,  gpointer user_data,  GDestroyNotify user_data_free_func);
		return g_dbus_connection_add_filter(gDBusConnection, filterFunction, userData, userDataFreeFunc);
	}
	
	/**
	 * Removes a filter.
	 * Since 2.26
	 * Params:
	 * filterId = an identifier obtained from g_dbus_connection_add_filter()
	 */
	public void removeFilter(uint filterId)
	{
		// void g_dbus_connection_remove_filter (GDBusConnection *connection,  guint filter_id);
		g_dbus_connection_remove_filter(gDBusConnection, filterId);
	}
	
	/**
	 * Registers callbacks for exported objects at object_path with the
	 * D-Bus interface that is described in interface_info.
	 * Calls to functions in vtable (and user_data_free_func) will
	 * happen in the thread-default main
	 * loop of the thread you are calling this method from.
	 * Note that all GVariant values passed to functions in vtable will match
	 * the signature given in interface_info - if a remote caller passes
	 * incorrect values, the org.freedesktop.DBus.Error.InvalidArgs
	 * is returned to the remote caller.
	 * Additionally, if the remote caller attempts to invoke methods or
	 * access properties not mentioned in interface_info the
	 * org.freedesktop.DBus.Error.UnknownMethod resp.
	 * org.freedesktop.DBus.Error.InvalidArgs errors
	 * are returned to the caller.
	 * It is considered a programming error if the
	 * GDBusInterfaceGetPropertyFunc function in vtable returns a
	 * GVariant of incorrect type.
	 * If an existing callback is already registered at object_path and
	 * interface_name, then error is set to G_IO_ERROR_EXISTS.
	 * GDBus automatically implements the standard D-Bus interfaces
	 * org.freedesktop.DBus.Properties, org.freedesktop.DBus.Introspectable
	 * and org.freedesktop.Peer, so you don't have to implement those for
	 * the objects you export. You can implement
	 * org.freedesktop.DBus.Properties yourself, e.g. to handle getting
	 * and setting of properties asynchronously.
	 * Note that the reference count on interface_info will be
	 * incremented by 1 (unless allocated statically, e.g. if the
	 * reference count is -1, see g_dbus_interface_info_ref()) for as long
	 * as the object is exported. Also note that vtable will be copied.
	 * See Example 6, “D-Bus server example” for an example of how to use this method.
	 * Since 2.26
	 * Params:
	 * objectPath = The object path to register at.
	 * interfaceInfo = Introspection data for the interface.
	 * vtable = A GDBusInterfaceVTable to call into or NULL. [allow-none]
	 * userData = Data to pass to functions in vtable. [allow-none]
	 * userDataFreeFunc = Function to call when the object path is unregistered.
	 * Returns: 0 if error is set, otherwise a registration id (never 0) that can be used with g_dbus_connection_unregister_object() .
	 * Throws: GException on failure.
	 */
	public uint registerObject(string objectPath, GDBusInterfaceInfo* interfaceInfo, GDBusInterfaceVTable* vtable, void* userData, GDestroyNotify userDataFreeFunc)
	{
		// guint g_dbus_connection_register_object (GDBusConnection *connection,  const gchar *object_path,  GDBusInterfaceInfo *interface_info,  const GDBusInterfaceVTable *vtable,  gpointer user_data,  GDestroyNotify user_data_free_func,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_register_object(gDBusConnection, Str.toStringz(objectPath), interfaceInfo, vtable, userData, userDataFreeFunc, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Unregisters an object.
	 * Since 2.26
	 * Params:
	 * registrationId = A registration id obtained from g_dbus_connection_register_object().
	 * Returns: TRUE if the object was unregistered, FALSE otherwise.
	 */
	public int unregisterObject(uint registrationId)
	{
		// gboolean g_dbus_connection_unregister_object (GDBusConnection *connection,  guint registration_id);
		return g_dbus_connection_unregister_object(gDBusConnection, registrationId);
	}
	
	/**
	 * Registers a whole subtree of “dynamic” objects.
	 * The enumerate and introspection functions in vtable are used to
	 * convey, to remote callers, what nodes exist in the subtree rooted
	 * by object_path.
	 * When handling remote calls into any node in the subtree, first the
	 * enumerate function is used to check if the node exists. If the node exists
	 * or the G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES flag is set
	 * the introspection function is used to check if the node supports the
	 * requested method. If so, the dispatch function is used to determine
	 * where to dispatch the call. The collected GDBusInterfaceVTable and
	 * gpointer will be used to call into the interface vtable for processing
	 * the request.
	 * All calls into user-provided code will be invoked in the thread-default main
	 * loop of the thread you are calling this method from.
	 * If an existing subtree is already registered at object_path or
	 * then error is set to G_IO_ERROR_EXISTS.
	 * Note that it is valid to register regular objects (using
	 * g_dbus_connection_register_object()) in a subtree registered with
	 * g_dbus_connection_register_subtree() - if so, the subtree handler
	 * is tried as the last resort. One way to think about a subtree
	 * handler is to consider it a “fallback handler”
	 * for object paths not registered via g_dbus_connection_register_object()
	 * or other bindings.
	 * Note that vtable will be copied so you cannot change it after
	 * registration.
	 * See Example 7, “D-Bus subtree example” for an example of how to use this method.
	 * Since 2.26
	 * Params:
	 * objectPath = The object path to register the subtree at.
	 * vtable = A GDBusSubtreeVTable to enumerate, introspect and dispatch nodes in the subtree.
	 * flags = Flags used to fine tune the behavior of the subtree.
	 * userData = Data to pass to functions in vtable.
	 * userDataFreeFunc = Function to call when the subtree is unregistered.
	 * Returns: 0 if error is set, otherwise a subtree registration id (never 0) that can be used with g_dbus_connection_unregister_subtree() .
	 * Throws: GException on failure.
	 */
	public uint registerSubtree(string objectPath, GDBusSubtreeVTable* vtable, GDBusSubtreeFlags flags, void* userData, GDestroyNotify userDataFreeFunc)
	{
		// guint g_dbus_connection_register_subtree (GDBusConnection *connection,  const gchar *object_path,  const GDBusSubtreeVTable *vtable,  GDBusSubtreeFlags flags,  gpointer user_data,  GDestroyNotify user_data_free_func,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_register_subtree(gDBusConnection, Str.toStringz(objectPath), vtable, flags, userData, userDataFreeFunc, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Unregisters a subtree.
	 * Since 2.26
	 * Params:
	 * registrationId = A subtree registration id obtained from g_dbus_connection_register_subtree().
	 * Returns: TRUE if the subtree was unregistered, FALSE otherwise.
	 */
	public int unregisterSubtree(uint registrationId)
	{
		// gboolean g_dbus_connection_unregister_subtree  (GDBusConnection *connection,  guint registration_id);
		return g_dbus_connection_unregister_subtree(gDBusConnection, registrationId);
	}
	
	/**
	 * Exports action_group on connection at object_path.
	 * The implemented D-Bus API should be considered private. It is
	 * subject to change in the future.
	 * A given object path can only have one action group exported on it.
	 * If this constraint is violated, the export will fail and 0 will be
	 * returned (with error set accordingly).
	 * You can unexport the action group using
	 * g_dbus_connection_unexport_action_group() with the return value of
	 * this function.
	 * The thread default main context is taken at the time of this call.
	 * All incoming action activations and state change requests are
	 * reported from this context. Any changes on the action group that
	 * cause it to emit signals must also come from this same context.
	 * Since incoming action activations and state change requests are
	 * rather likely to cause changes on the action group, this effectively
	 * limits a given action group to being exported from only one main
	 * context.
	 * Since 2.32
	 * Params:
	 * objectPath = a D-Bus object path
	 * actionGroup = a GActionGroup
	 * Returns: the ID of the export (never zero), or 0 in case of failure
	 * Throws: GException on failure.
	 */
	public uint exportActionGroup(string objectPath, ActionGroupIF actionGroup)
	{
		// guint g_dbus_connection_export_action_group  (GDBusConnection *connection,  const gchar *object_path,  GActionGroup *action_group,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_export_action_group(gDBusConnection, Str.toStringz(objectPath), (actionGroup is null) ? null : actionGroup.getActionGroupTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Reverses the effect of a previous call to
	 * g_dbus_connection_export_action_group().
	 * It is an error to call this function with an ID that wasn't returned
	 * from g_dbus_connection_export_action_group() or to call it with the
	 * same ID more than once.
	 * Since 2.32
	 * Params:
	 * exportId = the ID from g_dbus_connection_export_action_group()
	 */
	public void unexportActionGroup(uint exportId)
	{
		// void g_dbus_connection_unexport_action_group  (GDBusConnection *connection,  guint export_id);
		g_dbus_connection_unexport_action_group(gDBusConnection, exportId);
	}
	
	/**
	 * Exports menu on connection at object_path.
	 * The implemented D-Bus API should be considered private.
	 * It is subject to change in the future.
	 * An object path can only have one menu model exported on it. If this
	 * constraint is violated, the export will fail and 0 will be
	 * returned (with error set accordingly).
	 * You can unexport the menu model using
	 * g_dbus_connection_unexport_menu_model() with the return value of
	 * this function.
	 * Since 2.32
	 * Params:
	 * objectPath = a D-Bus object path
	 * menu = a GMenuModel
	 * Returns: the ID of the export (never zero), or 0 in case of failure
	 * Throws: GException on failure.
	 */
	public uint exportMenuModel(string objectPath, MenuModel menu)
	{
		// guint g_dbus_connection_export_menu_model (GDBusConnection *connection,  const gchar *object_path,  GMenuModel *menu,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_connection_export_menu_model(gDBusConnection, Str.toStringz(objectPath), (menu is null) ? null : menu.getMenuModelStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Reverses the effect of a previous call to
	 * g_dbus_connection_export_menu_model().
	 * It is an error to call this function with an ID that wasn't returned
	 * from g_dbus_connection_export_menu_model() or to call it with the
	 * same ID more than once.
	 * Since 2.32
	 * Params:
	 * exportId = the ID from g_dbus_connection_export_menu_model()
	 */
	public void unexportMenuModel(uint exportId)
	{
		// void g_dbus_connection_unexport_menu_model  (GDBusConnection *connection,  guint export_id);
		g_dbus_connection_unexport_menu_model(gDBusConnection, exportId);
	}
}
