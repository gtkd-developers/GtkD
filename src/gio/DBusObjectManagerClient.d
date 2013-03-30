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
 * inFile  = GDBusObjectManagerClient.html
 * outPack = gio
 * outFile = DBusObjectManagerClient
 * strct   = GDBusObjectManagerClient
 * realStrct=
 * ctorStrct=GDBusObjectManager
 * clss    = DBusObjectManagerClient
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- AsyncInitableIF
 * 	- DBusObjectManagerIF
 * 	- InitableIF
 * prefixes:
 * 	- g_dbus_object_manager_client_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_dbus_object_manager_client_new_finish
 * 	- g_dbus_object_manager_client_new_for_bus_finish
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.DBusConnection
 * 	- gio.AsyncInitableT
 * 	- gio.AsyncInitableIF
 * 	- gio.DBusObjectManagerT
 * 	- gio.DBusObjectManagerIF
 * 	- gio.InitableT
 * 	- gio.InitableIF
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GDBusConnection* -> DBusConnection
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusObjectManagerClient;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.DBusConnection;
private import gio.AsyncInitableT;
private import gio.AsyncInitableIF;
private import gio.DBusObjectManagerT;
private import gio.DBusObjectManagerIF;
private import gio.InitableT;
private import gio.InitableIF;



private import gobject.ObjectG;

/**
 * GDBusObjectManagerClient is used to create, monitor and delete object
 * proxies for remote objects exported by a GDBusObjectManagerServer (or any
 * code implementing the org.freedesktop.DBus.ObjectManager
 * interface).
 *
 * Once an instance of this type has been created, you can connect to
 * the "object-added" and
 * "object-removed" signals and inspect the
 * GDBusObjectProxy objects returned by
 * g_dbus_object_manager_get_objects().
 *
 * If the name for a GDBusObjectManagerClient is not owned by anyone at
 * object construction time, the default behavior is to request the
 * message bus to launch an owner for the name. This behavior can be
 * disabled using the G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START
 * flag. It's also worth noting that this only works if the name of
 * interest is activatable in the first place. E.g. in some cases it
 * is not possible to launch an owner for the requested name. In this
 * case, GDBusObjectManagerClient object construction still succeeds but
 * there will be no object proxies
 * (e.g. g_dbus_object_manager_get_objects() returns the empty list) and
 * the "name-owner" property is NULL.
 *
 * The owner of the requested name can come and go (for example
 * consider a system service being restarted) – GDBusObjectManagerClient
 * handles this case too; simply connect to the "notify"
 * signal to watch for changes on the "name-owner"
 * property. When the name owner vanishes, the behavior is that
 * "name-owner" is set to NULL (this includes
 * emission of the "notify" signal) and then
 * "object-removed" signals are synthesized
 * for all currently existing object proxies. Since
 * "name-owner" is NULL when this happens, you can
 * use this information to disambiguate a synthesized signal from a
 * genuine signal caused by object removal on the remote
 * GDBusObjectManager. Similarly, when a new name owner appears,
 * "object-added" signals are synthesized
 * while "name-owner" is still NULL. Only when all
 * object proxies have been added, the "name-owner"
 * is set to the new name owner (this includes emission of the
 * "notify" signal). Furthermore, you are guaranteed that
 * "name-owner" will alternate between a name owner
 * (e.g. :1.42) and NULL even in the case where
 * the name of interest is atomically replaced
 *
 * Ultimately, GDBusObjectManagerClient is used to obtain GDBusProxy
 * instances. All signals (including the
 * org.freedesktop.DBus.Properties::PropertiesChanged
 * signal) delivered to GDBusProxy instances are guaranteed to
 * originate from the name owner. This guarantee along with the
 * behavior described above, means that certain race conditions
 * including the “half the proxy is from the old owner
 * and the other half is from the new owner” problem
 * cannot happen.
 *
 * To avoid having the application connect to signals on the returned
 * GDBusObjectProxy and GDBusProxy objects, the
 * "interface-added",
 * "interface-removed",
 * "g-properties-changed" and
 * "g-signal" signals
 * are also emitted on the GDBusObjectManagerClient instance managing these
 * objects. The signals emitted are
 * "interface-added",
 * "interface-removed",
 * "interface-proxy-properties-changed" and
 * "interface-proxy-signal".
 *
 * Note that all callbacks and signals are emitted in the
 * thread-default main loop
 * that the GDBusObjectManagerClient object was constructed
 * in. Additionally, the GDBusObjectProxy and GDBusProxy objects
 * originating from the GDBusObjectManagerClient object will be created in
 * the same context and, consequently, will deliver signals in the
 * same main loop.
 */
public class DBusObjectManagerClient : ObjectG, AsyncInitableIF, DBusObjectManagerIF, InitableIF
{
	
	/** the main Gtk struct */
	protected GDBusObjectManagerClient* gDBusObjectManagerClient;
	
	
	public GDBusObjectManagerClient* getDBusObjectManagerClientStruct()
	{
		return gDBusObjectManagerClient;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusObjectManagerClient;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusObjectManagerClient* gDBusObjectManagerClient)
	{
		super(cast(GObject*)gDBusObjectManagerClient);
		this.gDBusObjectManagerClient = gDBusObjectManagerClient;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusObjectManagerClient = cast(GDBusObjectManagerClient*)obj;
	}
	
	// add the AsyncInitable capabilities
	mixin AsyncInitableT!(GDBusObjectManagerClient);
	
	// add the DBusObjectManager capabilities
	mixin DBusObjectManagerT!(GDBusObjectManagerClient);
	
	// add the Initable capabilities
	mixin InitableT!(GDBusObjectManagerClient);
	
	/**
	 * Finishes an operation started with g_dbus_object_manager_client_new().
	 * Since 2.30
	 * Params:
	 * res = A GAsyncResult obtained from the GAsyncReadyCallback passed to g_dbus_object_manager_client_new().
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (AsyncResultIF res, bool forBus = false)
	{
		// GDBusObjectManager * g_dbus_object_manager_client_new_finish  (GAsyncResult *res,  GError **error);
		GError* err = null;
		GDBusObjectManager* p;
		
		if ( forBus )
		{
			p = g_dbus_object_manager_client_new_for_bus_finish((res is null) ? null : res.getAsyncResultTStruct(), &err);
		}
		else
		{
			p = g_dbus_object_manager_client_new_finish((res is null) ? null : res.getAsyncResultTStruct(), &err);
		}
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_object_manager_client_new_finish((res is null) ? null : res.getAsyncResultTStruct(), &err)");
		}
		this(cast(GDBusObjectManagerClient*) p);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(GDBusObjectProxy*, GDBusProxy*, GVariant*, GStrv, DBusObjectManagerClient)[] onInterfaceProxyPropertiesChangedListeners;
	/**
	 * Emitted when one or more D-Bus properties on proxy changes. The
	 * local cache has already been updated when this signal fires. Note
	 * that both changed_properties and invalidated_properties are
	 * guaranteed to never be NULL (either may be empty though).
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all interface proxies managed by manager.
	 * This signal is emitted in the
	 * thread-default main loop
	 * that manager was constructed in.
	 * Since 2.30
	 */
	void addOnInterfaceProxyPropertiesChanged(void delegate(GDBusObjectProxy*, GDBusProxy*, GVariant*, GStrv, DBusObjectManagerClient) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("interface-proxy-properties-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"interface-proxy-properties-changed",
			cast(GCallback)&callBackInterfaceProxyPropertiesChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["interface-proxy-properties-changed"] = 1;
		}
		onInterfaceProxyPropertiesChangedListeners ~= dlg;
	}
	extern(C) static void callBackInterfaceProxyPropertiesChanged(GDBusObjectManagerClient* managerStruct, GDBusObjectProxy* objectProxy, GDBusProxy* interfaceProxy, GVariant* changedProperties, GStrv invalidatedProperties, DBusObjectManagerClient _dBusObjectManagerClient)
	{
		foreach ( void delegate(GDBusObjectProxy*, GDBusProxy*, GVariant*, GStrv, DBusObjectManagerClient) dlg ; _dBusObjectManagerClient.onInterfaceProxyPropertiesChangedListeners )
		{
			dlg(objectProxy, interfaceProxy, changedProperties, invalidatedProperties, _dBusObjectManagerClient);
		}
	}
	
	void delegate(GDBusObjectProxy*, GDBusProxy*, string, string, GVariant*, DBusObjectManagerClient)[] onInterfaceProxySignalListeners;
	/**
	 * Emitted when a D-Bus signal is received on interface_proxy.
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all interface proxies managed by manager.
	 * This signal is emitted in the
	 * thread-default main loop
	 * that manager was constructed in.
	 * Since 2.30
	 */
	void addOnInterfaceProxySignal(void delegate(GDBusObjectProxy*, GDBusProxy*, string, string, GVariant*, DBusObjectManagerClient) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("interface-proxy-signal" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"interface-proxy-signal",
			cast(GCallback)&callBackInterfaceProxySignal,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["interface-proxy-signal"] = 1;
		}
		onInterfaceProxySignalListeners ~= dlg;
	}
	extern(C) static void callBackInterfaceProxySignal(GDBusObjectManagerClient* managerStruct, GDBusObjectProxy* objectProxy, GDBusProxy* interfaceProxy, gchar* senderName, gchar* signalName, GVariant* parameters, DBusObjectManagerClient _dBusObjectManagerClient)
	{
		foreach ( void delegate(GDBusObjectProxy*, GDBusProxy*, string, string, GVariant*, DBusObjectManagerClient) dlg ; _dBusObjectManagerClient.onInterfaceProxySignalListeners )
		{
			dlg(objectProxy, interfaceProxy, Str.toString(senderName), Str.toString(signalName), parameters, _dBusObjectManagerClient);
		}
	}
	
	
	/**
	 * Asynchronously creates a new GDBusObjectManagerClient object.
	 * This is an asynchronous failable constructor. When the result is
	 * ready, callback will be invoked in the
	 * thread-default main loop
	 * of the thread you are calling this method from. You can
	 * then call g_dbus_object_manager_client_new_finish() to get the result. See
	 * g_dbus_object_manager_client_new_sync() for the synchronous version.
	 * Since 2.30
	 * Params:
	 * connection = A GDBusConnection.
	 * flags = Zero or more flags from the GDBusObjectManagerClientFlags enumeration.
	 * name = The owner of the control object (unique or well-known name).
	 * objectPath = The object path of the control object.
	 * getProxyTypeFunc = A GDBusProxyTypeFunc function or NULL to always construct GDBusProxy proxies. [allow-none]
	 * getProxyTypeUserData = User data to pass to get_proxy_type_func.
	 * getProxyTypeDestroyNotify = Free function for get_proxy_type_user_data or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is satisfied.
	 * userData = The data to pass to callback.
	 */
	public static void newDBusObjectManagerClient(DBusConnection connection, GDBusObjectManagerClientFlags flags, string name, string objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_object_manager_client_new (GDBusConnection *connection,  GDBusObjectManagerClientFlags flags,  const gchar *name,  const gchar *object_path,  GDBusProxyTypeFunc get_proxy_type_func,  gpointer get_proxy_type_user_data,  GDestroyNotify get_proxy_type_destroy_notify,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_object_manager_client_new((connection is null) ? null : connection.getDBusConnectionStruct(), flags, Str.toStringz(name), Str.toStringz(objectPath), getProxyTypeFunc, getProxyTypeUserData, getProxyTypeDestroyNotify, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Creates a new GDBusObjectManagerClient object.
	 * This is a synchronous failable constructor - the calling thread is
	 * blocked until a reply is received. See g_dbus_object_manager_client_new()
	 * for the asynchronous version.
	 * Since 2.30
	 * Params:
	 * connection = A GDBusConnection.
	 * flags = Zero or more flags from the GDBusObjectManagerClientFlags enumeration.
	 * name = The owner of the control object (unique or well-known name), or NULL when not using a message bus connection. [allow-none]
	 * objectPath = The object path of the control object.
	 * getProxyTypeFunc = A GDBusProxyTypeFunc function or NULL to always construct GDBusProxy proxies. [allow-none]
	 * getProxyTypeUserData = User data to pass to get_proxy_type_func.
	 * getProxyTypeDestroyNotify = Free function for get_proxy_type_user_data or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (DBusConnection connection, GDBusObjectManagerClientFlags flags, string name, string objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, Cancellable cancellable)
	{
		// GDBusObjectManager * g_dbus_object_manager_client_new_sync  (GDBusConnection *connection,  GDBusObjectManagerClientFlags flags,  const gchar *name,  const gchar *object_path,  GDBusProxyTypeFunc get_proxy_type_func,  gpointer get_proxy_type_user_data,  GDestroyNotify get_proxy_type_destroy_notify,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_object_manager_client_new_sync((connection is null) ? null : connection.getDBusConnectionStruct(), flags, Str.toStringz(name), Str.toStringz(objectPath), getProxyTypeFunc, getProxyTypeUserData, getProxyTypeDestroyNotify, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_object_manager_client_new_sync((connection is null) ? null : connection.getDBusConnectionStruct(), flags, Str.toStringz(name), Str.toStringz(objectPath), getProxyTypeFunc, getProxyTypeUserData, getProxyTypeDestroyNotify, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err)");
		}
		this(cast(GDBusObjectManagerClient*) p);
	}
	
	/**
	 * Like g_dbus_object_manager_client_new() but takes a GBusType instead of a
	 * GDBusConnection.
	 * This is an asynchronous failable constructor. When the result is
	 * ready, callback will be invoked in the
	 * thread-default main loop
	 * of the thread you are calling this method from. You can
	 * then call g_dbus_object_manager_client_new_for_bus_finish() to get the result. See
	 * g_dbus_object_manager_client_new_for_bus_sync() for the synchronous version.
	 * Since 2.30
	 * Params:
	 * busType = A GBusType.
	 * flags = Zero or more flags from the GDBusObjectManagerClientFlags enumeration.
	 * name = The owner of the control object (unique or well-known name).
	 * objectPath = The object path of the control object.
	 * getProxyTypeFunc = A GDBusProxyTypeFunc function or NULL to always construct GDBusProxy proxies. [allow-none]
	 * getProxyTypeUserData = User data to pass to get_proxy_type_func.
	 * getProxyTypeDestroyNotify = Free function for get_proxy_type_user_data or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is satisfied.
	 * userData = The data to pass to callback.
	 */
	public static void newForBus(GBusType busType, GDBusObjectManagerClientFlags flags, string name, string objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_object_manager_client_new_for_bus  (GBusType bus_type,  GDBusObjectManagerClientFlags flags,  const gchar *name,  const gchar *object_path,  GDBusProxyTypeFunc get_proxy_type_func,  gpointer get_proxy_type_user_data,  GDestroyNotify get_proxy_type_destroy_notify,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_object_manager_client_new_for_bus(busType, flags, Str.toStringz(name), Str.toStringz(objectPath), getProxyTypeFunc, getProxyTypeUserData, getProxyTypeDestroyNotify, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Like g_dbus_object_manager_client_new_sync() but takes a GBusType instead
	 * of a GDBusConnection.
	 * This is a synchronous failable constructor - the calling thread is
	 * blocked until a reply is received. See g_dbus_object_manager_client_new_for_bus()
	 * for the asynchronous version.
	 * Since 2.30
	 * Params:
	 * busType = A GBusType.
	 * flags = Zero or more flags from the GDBusObjectManagerClientFlags enumeration.
	 * name = The owner of the control object (unique or well-known name).
	 * objectPath = The object path of the control object.
	 * getProxyTypeFunc = A GDBusProxyTypeFunc function or NULL to always construct GDBusProxy proxies. [allow-none]
	 * getProxyTypeUserData = User data to pass to get_proxy_type_func.
	 * getProxyTypeDestroyNotify = Free function for get_proxy_type_user_data or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GBusType busType, GDBusObjectManagerClientFlags flags, string name, string objectPath, GDBusProxyTypeFunc getProxyTypeFunc, void* getProxyTypeUserData, GDestroyNotify getProxyTypeDestroyNotify, Cancellable cancellable)
	{
		// GDBusObjectManager * g_dbus_object_manager_client_new_for_bus_sync  (GBusType bus_type,  GDBusObjectManagerClientFlags flags,  const gchar *name,  const gchar *object_path,  GDBusProxyTypeFunc get_proxy_type_func,  gpointer get_proxy_type_user_data,  GDestroyNotify get_proxy_type_destroy_notify,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_object_manager_client_new_for_bus_sync(busType, flags, Str.toStringz(name), Str.toStringz(objectPath), getProxyTypeFunc, getProxyTypeUserData, getProxyTypeDestroyNotify, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_object_manager_client_new_for_bus_sync(busType, flags, Str.toStringz(name), Str.toStringz(objectPath), getProxyTypeFunc, getProxyTypeUserData, getProxyTypeDestroyNotify, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err)");
		}
		this(cast(GDBusObjectManagerClient*) p);
	}
	
	/**
	 * Gets the GDBusConnection used by manager.
	 * Since 2.30
	 * Returns: A GDBusConnection object. Do not free, the object belongs to manager. [transfer none]
	 */
	public DBusConnection getConnection()
	{
		// GDBusConnection * g_dbus_object_manager_client_get_connection  (GDBusObjectManagerClient *manager);
		auto p = g_dbus_object_manager_client_get_connection(gDBusObjectManagerClient);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) p);
	}
	
	/**
	 * Gets the flags that manager was constructed with.
	 * Since 2.30
	 * Returns: Zero of more flags from the GDBusObjectManagerClientFlags enumeration.
	 */
	public GDBusObjectManagerClientFlags getFlags()
	{
		// GDBusObjectManagerClientFlags g_dbus_object_manager_client_get_flags  (GDBusObjectManagerClient *manager);
		return g_dbus_object_manager_client_get_flags(gDBusObjectManagerClient);
	}
	
	/**
	 * Gets the name that manager is for, or NULL if not a message bus
	 * connection.
	 * Since 2.30
	 * Returns: A unique or well-known name. Do not free, the string belongs to manager.
	 */
	public string getName()
	{
		// const gchar * g_dbus_object_manager_client_get_name  (GDBusObjectManagerClient *manager);
		return Str.toString(g_dbus_object_manager_client_get_name(gDBusObjectManagerClient));
	}
	
	/**
	 * The unique name that owns the name that manager is for or NULL if
	 * no-one currently owns that name. You can connect to the
	 * "notify" signal to track changes to the
	 * "name-owner" property.
	 * Since 2.30
	 * Returns: The name owner or NULL if no name owner exists. Free with g_free().
	 */
	public string getNameOwner()
	{
		// gchar * g_dbus_object_manager_client_get_name_owner  (GDBusObjectManagerClient *manager);
		return Str.toString(g_dbus_object_manager_client_get_name_owner(gDBusObjectManagerClient));
	}
}
