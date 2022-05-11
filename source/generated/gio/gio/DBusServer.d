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


module gio.DBusServer;

private import gio.Cancellable;
private import gio.DBusAuthObserver;
private import gio.DBusConnection;
private import gio.InitableIF;
private import gio.InitableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * #GDBusServer is a helper for listening to and accepting D-Bus
 * connections. This can be used to create a new D-Bus server, allowing two
 * peers to use the D-Bus protocol for their own specialized communication.
 * A server instance provided in this way will not perform message routing or
 * implement the org.freedesktop.DBus interface.
 * 
 * To just export an object on a well-known name on a message bus, such as the
 * session or system bus, you should instead use g_bus_own_name().
 * 
 * An example of peer-to-peer communication with GDBus can be found
 * in [gdbus-example-peer.c](https://gitlab.gnome.org/GNOME/glib/-/blob/HEAD/gio/tests/gdbus-example-peer.c).
 * 
 * Note that a minimal #GDBusServer will accept connections from any
 * peer. In many use-cases it will be necessary to add a #GDBusAuthObserver
 * that only accepts connections that have successfully authenticated
 * as the same user that is running the #GDBusServer. Since GLib 2.68 this can
 * be achieved more simply by passing the
 * %G_DBUS_SERVER_FLAGS_AUTHENTICATION_REQUIRE_SAME_USER flag to the server.
 *
 * Since: 2.26
 */
public class DBusServer : ObjectG, InitableIF
{
	/** the main Gtk struct */
	protected GDBusServer* gDBusServer;

	/** Get the main Gtk struct */
	public GDBusServer* getDBusServerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusServer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusServer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusServer* gDBusServer, bool ownedRef = false)
	{
		this.gDBusServer = gDBusServer;
		super(cast(GObject*)gDBusServer, ownedRef);
	}

	// add the Initable capabilities
	mixin InitableT!(GDBusServer);


	/** */
	public static GType getType()
	{
		return g_dbus_server_get_type();
	}

	/**
	 * Creates a new D-Bus server that listens on the first address in
	 * @address that works.
	 *
	 * Once constructed, you can use g_dbus_server_get_client_address() to
	 * get a D-Bus address string that clients can use to connect.
	 *
	 * To have control over the available authentication mechanisms and
	 * the users that are authorized to connect, it is strongly recommended
	 * to provide a non-%NULL #GDBusAuthObserver.
	 *
	 * Connect to the #GDBusServer::new-connection signal to handle
	 * incoming connections.
	 *
	 * The returned #GDBusServer isn't active - you have to start it with
	 * g_dbus_server_start().
	 *
	 * #GDBusServer is used in this [example][gdbus-peer-to-peer].
	 *
	 * This is a synchronous failable constructor. There is currently no
	 * asynchronous version.
	 *
	 * Params:
	 *     address = A D-Bus address.
	 *     flags = Flags from the #GDBusServerFlags enumeration.
	 *     guid = A D-Bus GUID.
	 *     observer = A #GDBusAuthObserver or %NULL.
	 *     cancellable = A #GCancellable or %NULL.
	 *
	 * Returns: A #GDBusServer or %NULL if @error is set. Free with
	 *     g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string address, GDBusServerFlags flags, string guid, DBusAuthObserver observer, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_dbus_server_new_sync(Str.toStringz(address), flags, Str.toStringz(guid), (observer is null) ? null : observer.getDBusAuthObserverStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_sync");
		}

		this(cast(GDBusServer*) __p, true);
	}

	/**
	 * Gets a
	 * [D-Bus address](https://dbus.freedesktop.org/doc/dbus-specification.html#addresses)
	 * string that can be used by clients to connect to @server.
	 *
	 * This is valid and non-empty if initializing the #GDBusServer succeeded.
	 *
	 * Returns: A D-Bus address string. Do not free, the string is owned
	 *     by @server.
	 *
	 * Since: 2.26
	 */
	public string getClientAddress()
	{
		return Str.toString(g_dbus_server_get_client_address(gDBusServer));
	}

	/**
	 * Gets the flags for @server.
	 *
	 * Returns: A set of flags from the #GDBusServerFlags enumeration.
	 *
	 * Since: 2.26
	 */
	public GDBusServerFlags getFlags()
	{
		return g_dbus_server_get_flags(gDBusServer);
	}

	/**
	 * Gets the GUID for @server, as provided to g_dbus_server_new_sync().
	 *
	 * Returns: A D-Bus GUID. Do not free this string, it is owned by @server.
	 *
	 * Since: 2.26
	 */
	public string getGuid()
	{
		return Str.toString(g_dbus_server_get_guid(gDBusServer));
	}

	/**
	 * Gets whether @server is active.
	 *
	 * Returns: %TRUE if server is active, %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public bool isActive()
	{
		return g_dbus_server_is_active(gDBusServer) != 0;
	}

	/**
	 * Starts @server.
	 *
	 * Since: 2.26
	 */
	public void start()
	{
		g_dbus_server_start(gDBusServer);
	}

	/**
	 * Stops @server.
	 *
	 * Since: 2.26
	 */
	public void stop()
	{
		g_dbus_server_stop(gDBusServer);
	}

	/**
	 * Emitted when a new authenticated connection has been made. Use
	 * g_dbus_connection_get_peer_credentials() to figure out what
	 * identity (if any), was authenticated.
	 *
	 * If you want to accept the connection, take a reference to the
	 * @connection object and return %TRUE. When you are done with the
	 * connection call g_dbus_connection_close() and give up your
	 * reference. Note that the other peer may disconnect at any time -
	 * a typical thing to do when accepting a connection is to listen to
	 * the #GDBusConnection::closed signal.
	 *
	 * If #GDBusServer:flags contains %G_DBUS_SERVER_FLAGS_RUN_IN_THREAD
	 * then the signal is emitted in a new thread dedicated to the
	 * connection. Otherwise the signal is emitted in the
	 * [thread-default main context][g-main-context-push-thread-default]
	 * of the thread that @server was constructed in.
	 *
	 * You are guaranteed that signal handlers for this signal runs
	 * before incoming messages on @connection are processed. This means
	 * that it's suitable to call g_dbus_connection_register_object() or
	 * similar from the signal handler.
	 *
	 * Params:
	 *     connection = A #GDBusConnection for the new connection.
	 *
	 * Returns: %TRUE to claim @connection, %FALSE to let other handlers
	 *     run.
	 *
	 * Since: 2.26
	 */
	gulong addOnNewConnection(bool delegate(DBusConnection, DBusServer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "new-connection", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
