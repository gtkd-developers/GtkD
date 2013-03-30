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
 * inFile  = GDBusServer.html
 * outPack = gio
 * outFile = DBusServer
 * strct   = GDBusServer
 * realStrct=
 * ctorStrct=
 * clss    = DBusServer
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- InitableIF
 * prefixes:
 * 	- g_dbus_server_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.Cancellable
 * 	- gio.DBusAuthObserver
 * 	- gio.InitableT
 * 	- gio.InitableIF
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * 	- GDBusAuthObserver* -> DBusAuthObserver
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusServer;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.Cancellable;
private import gio.DBusAuthObserver;
private import gio.InitableT;
private import gio.InitableIF;



private import gobject.ObjectG;

/**
 * GDBusServer is a helper for listening to and accepting D-Bus
 * connections. This can be used to create a new D-Bus server, allowing two
 * peers to use the D-Bus protocol for their own specialized communication.
 * A server instance provided in this way will not perform message routing or
 * implement the org.freedesktop.DBus interface.
 *
 * To just export an object on a well-known name on a message bus, such as the
 * session or system bus, you should instead use g_bus_own_name().
 *
 * $(DDOC_COMMENT example)
 */
public class DBusServer : ObjectG, InitableIF
{
	
	/** the main Gtk struct */
	protected GDBusServer* gDBusServer;
	
	
	public GDBusServer* getDBusServerStruct()
	{
		return gDBusServer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusServer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusServer* gDBusServer)
	{
		super(cast(GObject*)gDBusServer);
		this.gDBusServer = gDBusServer;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusServer = cast(GDBusServer*)obj;
	}
	
	// add the Initable capabilities
	mixin InitableT!(GDBusServer);
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(GDBusConnection*, DBusServer)[] onNewConnectionListeners;
	/**
	 * Emitted when a new authenticated connection has been made. Use
	 * g_dbus_connection_get_peer_credentials() to figure out what
	 * identity (if any), was authenticated.
	 * If you want to accept the connection, take a reference to the
	 * connection object and return TRUE. When you are done with the
	 * connection call g_dbus_connection_close() and give up your
	 * reference. Note that the other peer may disconnect at any time -
	 * a typical thing to do when accepting a connection is to listen to
	 * the "closed" signal.
	 * If "flags" contains G_DBUS_SERVER_FLAGS_RUN_IN_THREAD
	 * then the signal is emitted in a new thread dedicated to the
	 * connection. Otherwise the signal is emitted in the thread-default main
	 * loop of the thread that server was constructed in.
	 * You are guaranteed that signal handlers for this signal runs
	 * before incoming messages on connection are processed. This means
	 * that it's suitable to call g_dbus_connection_register_object() or
	 * similar from the signal handler.
	 * TRUE to claim connection, FALSE to let other handlers
	 * run.
	 * Since 2.26
	 */
	void addOnNewConnection(bool delegate(GDBusConnection*, DBusServer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("new-connection" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"new-connection",
			cast(GCallback)&callBackNewConnection,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["new-connection"] = 1;
		}
		onNewConnectionListeners ~= dlg;
	}
	extern(C) static gboolean callBackNewConnection(GDBusServer* serverStruct, GDBusConnection* connection, DBusServer _dBusServer)
	{
		foreach ( bool delegate(GDBusConnection*, DBusServer) dlg ; _dBusServer.onNewConnectionListeners )
		{
			if ( dlg(connection, _dBusServer) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new D-Bus server that listens on the first address in
	 * address that works.
	 * Once constructed, you can use g_dbus_server_get_client_address() to
	 * get a D-Bus address string that clients can use to connect.
	 * Connect to the "new-connection" signal to handle
	 * incoming connections.
	 * The returned GDBusServer isn't active - you have to start it with
	 * g_dbus_server_start().
	 * See Example 10, “D-Bus peer-to-peer example” for how GDBusServer can
	 * be used.
	 * This is a synchronous failable constructor. See
	 * g_dbus_server_new() for the asynchronous version.
	 * Since 2.26
	 * Params:
	 * address = A D-Bus address.
	 * flags = Flags from the GDBusServerFlags enumeration.
	 * guid = A D-Bus GUID.
	 * observer = A GDBusAuthObserver or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string address, GDBusServerFlags flags, string guid, DBusAuthObserver observer, Cancellable cancellable)
	{
		// GDBusServer * g_dbus_server_new_sync (const gchar *address,  GDBusServerFlags flags,  const gchar *guid,  GDBusAuthObserver *observer,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_server_new_sync(Str.toStringz(address), flags, Str.toStringz(guid), (observer is null) ? null : observer.getDBusAuthObserverStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_server_new_sync(Str.toStringz(address), flags, Str.toStringz(guid), (observer is null) ? null : observer.getDBusAuthObserverStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err)");
		}
		this(cast(GDBusServer*) p);
	}
	
	/**
	 * Starts server.
	 * Since 2.26
	 */
	public void start()
	{
		// void g_dbus_server_start (GDBusServer *server);
		g_dbus_server_start(gDBusServer);
	}
	
	/**
	 * Stops server.
	 * Since 2.26
	 */
	public void stop()
	{
		// void g_dbus_server_stop (GDBusServer *server);
		g_dbus_server_stop(gDBusServer);
	}
	
	/**
	 * Gets whether server is active.
	 * Since 2.26
	 * Returns: TRUE if server is active, FALSE otherwise.
	 */
	public int isActive()
	{
		// gboolean g_dbus_server_is_active (GDBusServer *server);
		return g_dbus_server_is_active(gDBusServer);
	}
	
	/**
	 * Gets the GUID for server.
	 * Since 2.26
	 * Returns: A D-Bus GUID. Do not free this string, it is owned by server.
	 */
	public string getGuid()
	{
		// const gchar * g_dbus_server_get_guid (GDBusServer *server);
		return Str.toString(g_dbus_server_get_guid(gDBusServer));
	}
	
	/**
	 * Gets the flags for server.
	 * Since 2.26
	 * Returns: A set of flags from the GDBusServerFlags enumeration.
	 */
	public GDBusServerFlags getFlags()
	{
		// GDBusServerFlags g_dbus_server_get_flags (GDBusServer *server);
		return g_dbus_server_get_flags(gDBusServer);
	}
	
	/**
	 * Gets a D-Bus address string that can be used by clients to connect
	 * to server.
	 * Since 2.26
	 * Returns: A D-Bus address string. Do not free, the string is owned by server.
	 */
	public string getClientAddress()
	{
		// const gchar * g_dbus_server_get_client_address (GDBusServer *server);
		return Str.toString(g_dbus_server_get_client_address(gDBusServer));
	}
}
