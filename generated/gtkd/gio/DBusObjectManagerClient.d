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


module gio.DBusObjectManagerClient;

private import gio.AsyncInitableIF;
private import gio.AsyncInitableT;
private import gio.Cancellable;
private import gio.DBusConnection;
private import gio.DBusObjectManagerIF;
private import gio.DBusObjectManagerT;
private import gio.DBusObjectProxy;
private import gio.DBusProxy;
private import gio.InitableIF;
private import gio.InitableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * #GDBusObjectManagerClient is used to create, monitor and delete object
 * proxies for remote objects exported by a #GDBusObjectManagerServer (or any
 * code implementing the
 * [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html#standard-interfaces-objectmanager)
 * interface).
 * 
 * Once an instance of this type has been created, you can connect to
 * the #GDBusObjectManager::object-added and
 * #GDBusObjectManager::object-removed signals and inspect the
 * #GDBusObjectProxy objects returned by
 * g_dbus_object_manager_get_objects().
 * 
 * If the name for a #GDBusObjectManagerClient is not owned by anyone at
 * object construction time, the default behavior is to request the
 * message bus to launch an owner for the name. This behavior can be
 * disabled using the %G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START
 * flag. It's also worth noting that this only works if the name of
 * interest is activatable in the first place. E.g. in some cases it
 * is not possible to launch an owner for the requested name. In this
 * case, #GDBusObjectManagerClient object construction still succeeds but
 * there will be no object proxies
 * (e.g. g_dbus_object_manager_get_objects() returns the empty list) and
 * the #GDBusObjectManagerClient:name-owner property is %NULL.
 * 
 * The owner of the requested name can come and go (for example
 * consider a system service being restarted) – #GDBusObjectManagerClient
 * handles this case too; simply connect to the #GObject::notify
 * signal to watch for changes on the #GDBusObjectManagerClient:name-owner
 * property. When the name owner vanishes, the behavior is that
 * #GDBusObjectManagerClient:name-owner is set to %NULL (this includes
 * emission of the #GObject::notify signal) and then
 * #GDBusObjectManager::object-removed signals are synthesized
 * for all currently existing object proxies. Since
 * #GDBusObjectManagerClient:name-owner is %NULL when this happens, you can
 * use this information to disambiguate a synthesized signal from a
 * genuine signal caused by object removal on the remote
 * #GDBusObjectManager. Similarly, when a new name owner appears,
 * #GDBusObjectManager::object-added signals are synthesized
 * while #GDBusObjectManagerClient:name-owner is still %NULL. Only when all
 * object proxies have been added, the #GDBusObjectManagerClient:name-owner
 * is set to the new name owner (this includes emission of the
 * #GObject::notify signal).  Furthermore, you are guaranteed that
 * #GDBusObjectManagerClient:name-owner will alternate between a name owner
 * (e.g. `:1.42`) and %NULL even in the case where
 * the name of interest is atomically replaced
 * 
 * Ultimately, #GDBusObjectManagerClient is used to obtain #GDBusProxy
 * instances. All signals (including the
 * org.freedesktop.DBus.Properties::PropertiesChanged signal)
 * delivered to #GDBusProxy instances are guaranteed to originate
 * from the name owner. This guarantee along with the behavior
 * described above, means that certain race conditions including the
 * "half the proxy is from the old owner and the other half is from
 * the new owner" problem cannot happen.
 * 
 * To avoid having the application connect to signals on the returned
 * #GDBusObjectProxy and #GDBusProxy objects, the
 * #GDBusObject::interface-added,
 * #GDBusObject::interface-removed,
 * #GDBusProxy::g-properties-changed and
 * #GDBusProxy::g-signal signals
 * are also emitted on the #GDBusObjectManagerClient instance managing these
 * objects. The signals emitted are
 * #GDBusObjectManager::interface-added,
 * #GDBusObjectManager::interface-removed,
 * #GDBusObjectManagerClient::interface-proxy-properties-changed and
 * #GDBusObjectManagerClient::interface-proxy-signal.
 * 
 * Note that all callbacks and signals are emitted in the
 * [thread-default main context][g-main-context-push-thread-default]
 * that the #GDBusObjectManagerClient object was constructed
 * in. Additionally, the #GDBusObjectProxy and #GDBusProxy objects
 * originating from the #GDBusObjectManagerClient object will be created in
 * the same context and, consequently, will deliver signals in the
 * same main loop.
 *
 * Since: 2.30
 */
public class DBusObjectManagerClient : ObjectG, AsyncInitableIF, DBusObjectManagerIF, InitableIF
{
	/** the main Gtk struct */
	protected GDBusObjectManagerClient* gDBusObjectManagerClient;

	/** Get the main Gtk struct */
	public GDBusObjectManagerClient* getDBusObjectManagerClientStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusObjectManagerClient;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusObjectManagerClient;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusObjectManagerClient* gDBusObjectManagerClient, bool ownedRef = false)
	{
		this.gDBusObjectManagerClient = gDBusObjectManagerClient;
		super(cast(GObject*)gDBusObjectManagerClient, ownedRef);
	}

	// add the AsyncInitable capabilities
	mixin AsyncInitableT!(GDBusObjectManagerClient);

	// add the DBusObjectManager capabilities
	mixin DBusObjectManagerT!(GDBusObjectManagerClient);

	// add the Initable capabilities
	mixin InitableT!(GDBusObjectManagerClient);

	/**
	 * Finishes an operation started with g_dbus_object_manager_client_new().
	 *
	 * Params:
	 *     res    = A GAsyncResult obtained from the GAsyncReadyCallback passed to the DBusObjectManager constructor.
	 *     forBus = If true finish an address.
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 *
	 * Since: 2.30
	 */
	public this (AsyncResultIF res, bool forBus = false)
	{
		GError* err = null;
		GDBusObjectManager* p;

		if ( forBus )
		{
			p = g_dbus_object_manager_client_new_for_bus_finish((res is null) ? null : res.getAsyncResultStruct(), &err);
		}
		else
		{
			p = g_dbus_object_manager_client_new_finish((res is null) ? null : res.getAsyncResultStruct(), &err);
		}

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_object_manager_client_new_finish((res is null) ? null : res.getAsyncResultStruct(), &err)");
		}
		this(cast(GDBusObjectManagerClient*) p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return g_dbus_object_manager_client_get_type();
	}

	/**
	 * Like g_dbus_object_manager_client_new_sync() but takes a #GBusType instead
	 * of a #GDBusConnection.
	 *
	 * This is a synchronous failable constructor - the calling thread is
	 * blocked until a reply is received. See g_dbus_object_manager_client_new_for_bus()
	 * for the asynchronous version.
	 *
	 * Params:
	 *     busType = A #GBusType.
	 *     flags = Zero or more flags from the #GDBusObjectManagerClientFlags enumeration.
	 *     name = The owner of the control object (unique or well-known name).
	 *     objectPath = The object path of the control object.
	 *     getProxyTypeFunc = A #GDBusProxyTypeFunc function or %NULL to always construct #GDBusProxy proxies.
	 *     getProxyTypeUserData = User data to pass to @get_proxy_type_func.
	 *     getProxyTypeDestroyNotify = Free function for @get_proxy_type_user_data or %NULL.
	 *     cancellable = A #GCancellable or %NULL
	 *
	 * Returns: A
	 *     #GDBusObjectManagerClient object or %NULL if @error is set. Free
	 *     with g_object_unref().
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GBusType busType, GDBusObjectManagerClientFlags flags, string name, string objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_dbus_object_manager_client_new_for_bus_sync(busType, flags, Str.toStringz(name), Str.toStringz(objectPath), getProxyTypeFunc, getProxyTypeUserData, getProxyTypeDestroyNotify, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_bus_sync");
		}

		this(cast(GDBusObjectManagerClient*) __p, true);
	}

	/**
	 * Creates a new #GDBusObjectManagerClient object.
	 *
	 * This is a synchronous failable constructor - the calling thread is
	 * blocked until a reply is received. See g_dbus_object_manager_client_new()
	 * for the asynchronous version.
	 *
	 * Params:
	 *     connection = A #GDBusConnection.
	 *     flags = Zero or more flags from the #GDBusObjectManagerClientFlags enumeration.
	 *     name = The owner of the control object (unique or well-known name), or %NULL when not using a message bus connection.
	 *     objectPath = The object path of the control object.
	 *     getProxyTypeFunc = A #GDBusProxyTypeFunc function or %NULL to always construct #GDBusProxy proxies.
	 *     getProxyTypeUserData = User data to pass to @get_proxy_type_func.
	 *     getProxyTypeDestroyNotify = Free function for @get_proxy_type_user_data or %NULL.
	 *     cancellable = A #GCancellable or %NULL
	 *
	 * Returns: A
	 *     #GDBusObjectManagerClient object or %NULL if @error is set. Free
	 *     with g_object_unref().
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DBusConnection connection, GDBusObjectManagerClientFlags flags, string name, string objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_dbus_object_manager_client_new_sync((connection is null) ? null : connection.getDBusConnectionStruct(), flags, Str.toStringz(name), Str.toStringz(objectPath), getProxyTypeFunc, getProxyTypeUserData, getProxyTypeDestroyNotify, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_sync");
		}

		this(cast(GDBusObjectManagerClient*) __p, true);
	}

	/**
	 * Asynchronously creates a new #GDBusObjectManagerClient object.
	 *
	 * This is an asynchronous failable constructor. When the result is
	 * ready, @callback will be invoked in the
	 * [thread-default main context][g-main-context-push-thread-default]
	 * of the thread you are calling this method from. You can
	 * then call g_dbus_object_manager_client_new_finish() to get the result. See
	 * g_dbus_object_manager_client_new_sync() for the synchronous version.
	 *
	 * Params:
	 *     connection = A #GDBusConnection.
	 *     flags = Zero or more flags from the #GDBusObjectManagerClientFlags enumeration.
	 *     name = The owner of the control object (unique or well-known name).
	 *     objectPath = The object path of the control object.
	 *     getProxyTypeFunc = A #GDBusProxyTypeFunc function or %NULL to always construct #GDBusProxy proxies.
	 *     getProxyTypeUserData = User data to pass to @get_proxy_type_func.
	 *     getProxyTypeDestroyNotify = Free function for @get_proxy_type_user_data or %NULL.
	 *     cancellable = A #GCancellable or %NULL
	 *     callback = A #GAsyncReadyCallback to call when the request is satisfied.
	 *     userData = The data to pass to @callback.
	 *
	 * Since: 2.30
	 */
	public static void new_(DBusConnection connection, GDBusObjectManagerClientFlags flags, string name, string objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dbus_object_manager_client_new((connection is null) ? null : connection.getDBusConnectionStruct(), flags, Str.toStringz(name), Str.toStringz(objectPath), getProxyTypeFunc, getProxyTypeUserData, getProxyTypeDestroyNotify, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Like g_dbus_object_manager_client_new() but takes a #GBusType instead of a
	 * #GDBusConnection.
	 *
	 * This is an asynchronous failable constructor. When the result is
	 * ready, @callback will be invoked in the
	 * [thread-default main loop][g-main-context-push-thread-default]
	 * of the thread you are calling this method from. You can
	 * then call g_dbus_object_manager_client_new_for_bus_finish() to get the result. See
	 * g_dbus_object_manager_client_new_for_bus_sync() for the synchronous version.
	 *
	 * Params:
	 *     busType = A #GBusType.
	 *     flags = Zero or more flags from the #GDBusObjectManagerClientFlags enumeration.
	 *     name = The owner of the control object (unique or well-known name).
	 *     objectPath = The object path of the control object.
	 *     getProxyTypeFunc = A #GDBusProxyTypeFunc function or %NULL to always construct #GDBusProxy proxies.
	 *     getProxyTypeUserData = User data to pass to @get_proxy_type_func.
	 *     getProxyTypeDestroyNotify = Free function for @get_proxy_type_user_data or %NULL.
	 *     cancellable = A #GCancellable or %NULL
	 *     callback = A #GAsyncReadyCallback to call when the request is satisfied.
	 *     userData = The data to pass to @callback.
	 *
	 * Since: 2.30
	 */
	public static void newForBus(GBusType busType, GDBusObjectManagerClientFlags flags, string name, string objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dbus_object_manager_client_new_for_bus(busType, flags, Str.toStringz(name), Str.toStringz(objectPath), getProxyTypeFunc, getProxyTypeUserData, getProxyTypeDestroyNotify, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Gets the #GDBusConnection used by @manager.
	 *
	 * Returns: A #GDBusConnection object. Do not free,
	 *     the object belongs to @manager.
	 *
	 * Since: 2.30
	 */
	public DBusConnection getConnection()
	{
		auto __p = g_dbus_object_manager_client_get_connection(gDBusObjectManagerClient);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) __p);
	}

	/**
	 * Gets the flags that @manager was constructed with.
	 *
	 * Returns: Zero of more flags from the #GDBusObjectManagerClientFlags
	 *     enumeration.
	 *
	 * Since: 2.30
	 */
	public GDBusObjectManagerClientFlags getFlags()
	{
		return g_dbus_object_manager_client_get_flags(gDBusObjectManagerClient);
	}

	/**
	 * Gets the name that @manager is for, or %NULL if not a message bus
	 * connection.
	 *
	 * Returns: A unique or well-known name. Do not free, the string
	 *     belongs to @manager.
	 *
	 * Since: 2.30
	 */
	public string getName()
	{
		return Str.toString(g_dbus_object_manager_client_get_name(gDBusObjectManagerClient));
	}

	/**
	 * The unique name that owns the name that @manager is for or %NULL if
	 * no-one currently owns that name. You can connect to the
	 * #GObject::notify signal to track changes to the
	 * #GDBusObjectManagerClient:name-owner property.
	 *
	 * Returns: The name owner or %NULL if no name owner
	 *     exists. Free with g_free().
	 *
	 * Since: 2.30
	 */
	public string getNameOwner()
	{
		auto retStr = g_dbus_object_manager_client_get_name_owner(gDBusObjectManagerClient);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Emitted when one or more D-Bus properties on proxy changes. The
	 * local cache has already been updated when this signal fires. Note
	 * that both @changed_properties and @invalidated_properties are
	 * guaranteed to never be %NULL (either may be empty though).
	 *
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all interface proxies managed by @manager.
	 *
	 * This signal is emitted in the
	 * [thread-default main context][g-main-context-push-thread-default]
	 * that @manager was constructed in.
	 *
	 * Params:
	 *     objectProxy = The #GDBusObjectProxy on which an interface has properties that are changing.
	 *     interfaceProxy = The #GDBusProxy that has properties that are changing.
	 *     changedProperties = A #GVariant containing the properties that changed (type: `a{sv}`).
	 *     invalidatedProperties = A %NULL terminated
	 *         array of properties that were invalidated.
	 *
	 * Since: 2.30
	 */
	gulong addOnInterfaceProxyPropertiesChanged(void delegate(DBusObjectProxy, DBusProxy, Variant, string[], DBusObjectManagerClient) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "interface-proxy-properties-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a D-Bus signal is received on @interface_proxy.
	 *
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all interface proxies managed by @manager.
	 *
	 * This signal is emitted in the
	 * [thread-default main context][g-main-context-push-thread-default]
	 * that @manager was constructed in.
	 *
	 * Params:
	 *     objectProxy = The #GDBusObjectProxy on which an interface is emitting a D-Bus signal.
	 *     interfaceProxy = The #GDBusProxy that is emitting a D-Bus signal.
	 *     senderName = The sender of the signal or NULL if the connection is not a bus connection.
	 *     signalName = The signal name.
	 *     parameters = A #GVariant tuple with parameters for the signal.
	 *
	 * Since: 2.30
	 */
	gulong addOnInterfaceProxySignal(void delegate(DBusObjectProxy, DBusProxy, string, string, Variant, DBusObjectManagerClient) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "interface-proxy-signal", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
