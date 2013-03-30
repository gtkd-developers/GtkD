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
 * inFile  = GDBusProxy.html
 * outPack = gio
 * outFile = DBusProxy
 * strct   = GDBusProxy
 * realStrct=
 * ctorStrct=
 * clss    = DBusProxy
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * 	- AsyncInitableIF
 * 	- DBusInterfaceIF
 * 	- InitableIF
 * prefixes:
 * 	- g_dbus_proxy_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_dbus_proxy_new_finish
 * 	- g_dbus_proxy_new_for_bus_finish
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Variant
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.DBusConnection
 * 	- gio.UnixFDList
 * 	- gio.AsyncInitableT
 * 	- gio.AsyncInitableIF
 * 	- gio.DBusInterfaceT
 * 	- gio.DBusInterfaceIF
 * 	- gio.InitableT
 * 	- gio.InitableIF
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GDBusConnection* -> DBusConnection
 * 	- GUnixFDList* -> UnixFDList
 * 	- GVariant* -> Variant
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusProxy;

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
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.DBusConnection;
private import gio.UnixFDList;
private import gio.AsyncInitableT;
private import gio.AsyncInitableIF;
private import gio.DBusInterfaceT;
private import gio.DBusInterfaceIF;
private import gio.InitableT;
private import gio.InitableIF;



private import gobject.ObjectG;

/**
 * GDBusProxy is a base class used for proxies to access a D-Bus
 * interface on a remote object. A GDBusProxy can be constructed for
 * both well-known and unique names.
 *
 * By default, GDBusProxy will cache all properties (and listen to
 * changes) of the remote object, and proxy all signals that gets
 * emitted. This behaviour can be changed by passing suitable
 * GDBusProxyFlags when the proxy is created. If the proxy is for a
 * well-known name, the property cache is flushed when the name owner
 * vanishes and reloaded when a name owner appears.
 *
 * If a GDBusProxy is used for a well-known name, the owner of the
 * name is tracked and can be read from
 * "g-name-owner". Connect to the "notify" signal to
 * get notified of changes. Additionally, only signals and property
 * changes emitted from the current name owner are considered and
 * calls are always sent to the current name owner. This avoids a
 * number of race conditions when the name is lost by one owner and
 * claimed by another. However, if no name owner currently exists,
 * then calls will be sent to the well-known name which may result in
 * the message bus launching an owner (unless
 * G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START is set).
 *
 * The generic "g-properties-changed" and
 * "g-signal" signals are not very convenient to work
 * with. Therefore, the recommended way of working with proxies is to
 * subclass GDBusProxy, and have more natural properties and signals
 * in your derived class. See the section called “Using gdbus-codegen”
 * for how this can easily be done using the
 * gdbus-codegen
 * tool.
 *
 * A GDBusProxy instance can be used from multiple threads but note
 * that all signals (e.g. "g-signal", "g-properties-changed"
 * and "notify") are emitted in the
 * thread-default main loop
 * of the thread where the instance was constructed.
 *
 * $(DDOC_COMMENT example)
 */
public class DBusProxy : ObjectG, AsyncInitableIF, DBusInterfaceIF, InitableIF
{
	
	/** the main Gtk struct */
	protected GDBusProxy* gDBusProxy;
	
	
	public GDBusProxy* getDBusProxyStruct()
	{
		return gDBusProxy;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusProxy;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusProxy* gDBusProxy)
	{
		super(cast(GObject*)gDBusProxy);
		this.gDBusProxy = gDBusProxy;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusProxy = cast(GDBusProxy*)obj;
	}
	
	// add the DBusInterface capabilities
	mixin AsyncInitableT!(GDBusProxy);
	
	// add the DBusInterface capabilities
	mixin DBusInterfaceT!(GDBusProxy);
	
	// add the Initable capabilities
	mixin InitableT!(GDBusProxy);
	
	/**
	 * Finishes creating a GDBusProxy.
	 * Since 2.26
	 * Params:
	 *     res    = A GAsyncResult obtained from the GAsyncReadyCallback
	 *              function passed to g_dbus_proxy_new().
	 *     forBus = If true finish an address.
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (AsyncResultIF res, bool forBus = false)
	{
		// GDBusProxy * g_dbus_proxy_new_finish (GAsyncResult *res,  GError **error);
		GError* err = null;
		GDBusProxy* p;
		
		if ( forBus )
		{
			p = g_dbus_proxy_new_for_bus_finish((res is null) ? null : res.getAsyncResultTStruct(), &err);
		}
		else
		{
			p = g_dbus_proxy_new_finish((res is null) ? null : res.getAsyncResultTStruct(), &err);
		}
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_proxy_new_finish((res is null) ? null : res.getAsyncResultTStruct(), &err)");
		}
		this(cast(GDBusProxy*) p);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Variant, GStrv, DBusProxy)[] onGPropertiesChangedListeners;
	/**
	 * Emitted when one or more D-Bus properties on proxy changes. The
	 * local cache has already been updated when this signal fires. Note
	 * that both changed_properties and invalidated_properties are
	 * guaranteed to never be NULL (either may be empty though).
	 * If the proxy has the flag
	 * G_DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES set, then
	 * invalidated_properties will always be empty.
	 * This signal corresponds to the
	 * PropertiesChanged D-Bus signal on the
	 * org.freedesktop.DBus.Properties interface.
	 * Since 2.26
	 */
	void addOnGPropertiesChanged(void delegate(Variant, GStrv, DBusProxy) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("g-properties-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"g-properties-changed",
			cast(GCallback)&callBackGPropertiesChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["g-properties-changed"] = 1;
		}
		onGPropertiesChangedListeners ~= dlg;
	}
	extern(C) static void callBackGPropertiesChanged(GDBusProxy* proxyStruct, GVariant* changedProperties, GStrv invalidatedProperties, DBusProxy _dBusProxy)
	{
		foreach ( void delegate(Variant, GStrv, DBusProxy) dlg ; _dBusProxy.onGPropertiesChangedListeners )
		{
			dlg(ObjectG.getDObject!(Variant)(changedProperties), invalidatedProperties, _dBusProxy);
		}
	}
	
	void delegate(string, string, Variant, DBusProxy)[] onGSignalListeners;
	/**
	 * Emitted when a signal from the remote object and interface that proxy is for, has been received.
	 * Since 2.26
	 */
	void addOnGSignal(void delegate(string, string, Variant, DBusProxy) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("g-signal" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"g-signal",
			cast(GCallback)&callBackGSignal,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["g-signal"] = 1;
		}
		onGSignalListeners ~= dlg;
	}
	extern(C) static void callBackGSignal(GDBusProxy* proxyStruct, gchar* senderName, gchar* signalName, GVariant* parameters, DBusProxy _dBusProxy)
	{
		foreach ( void delegate(string, string, Variant, DBusProxy) dlg ; _dBusProxy.onGSignalListeners )
		{
			dlg(Str.toString(senderName), Str.toString(signalName), ObjectG.getDObject!(Variant)(parameters), _dBusProxy);
		}
	}
	
	
	/**
	 * Creates a proxy for accessing interface_name on the remote object
	 * at object_path owned by name at connection and asynchronously
	 * loads D-Bus properties unless the
	 * G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES flag is used. Connect to
	 * the "g-properties-changed" signal to get notified about
	 * property changes.
	 * If the G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS flag is not set, also sets up
	 * match rules for signals. Connect to the "g-signal" signal
	 * to handle signals from the remote object.
	 * If name is a well-known name and the
	 * G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START flag isn't set and no name
	 * owner currently exists, the message bus will be requested to launch
	 * a name owner for the name.
	 * This is a failable asynchronous constructor - when the proxy is
	 * ready, callback will be invoked and you can use
	 * g_dbus_proxy_new_finish() to get the result.
	 * See g_dbus_proxy_new_sync() and for a synchronous version of this constructor.
	 * See Example 14, “GDBusProxy for a well-known-name” for an example of how GDBusProxy can be used.
	 * Since 2.26
	 * Params:
	 * connection = A GDBusConnection.
	 * flags = Flags used when constructing the proxy.
	 * info = A GDBusInterfaceInfo specifying the minimal interface that proxy conforms to or NULL. [allow-none]
	 * name = A bus name (well-known or unique) or NULL if connection is not a message bus connection. [allow-none]
	 * objectPath = An object path.
	 * interfaceName = A D-Bus interface name.
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = Callback function to invoke when the proxy is ready.
	 * userData = User data to pass to callback.
	 */
	public static void newDBusProxy(DBusConnection connection, GDBusProxyFlags flags, GDBusInterfaceInfo* info, string name, string objectPath, string interfaceName, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_proxy_new (GDBusConnection *connection,  GDBusProxyFlags flags,  GDBusInterfaceInfo *info,  const gchar *name,  const gchar *object_path,  const gchar *interface_name,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_proxy_new((connection is null) ? null : connection.getDBusConnectionStruct(), flags, info, Str.toStringz(name), Str.toStringz(objectPath), Str.toStringz(interfaceName), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Creates a proxy for accessing interface_name on the remote object
	 * at object_path owned by name at connection and synchronously
	 * loads D-Bus properties unless the
	 * G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES flag is used.
	 * If the G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS flag is not set, also sets up
	 * match rules for signals. Connect to the "g-signal" signal
	 * to handle signals from the remote object.
	 * If name is a well-known name and the
	 * G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START flag isn't set and no name
	 * owner currently exists, the message bus will be requested to launch
	 * a name owner for the name.
	 * This is a synchronous failable constructor. See g_dbus_proxy_new()
	 * and g_dbus_proxy_new_finish() for the asynchronous version.
	 * See Example 14, “GDBusProxy for a well-known-name” for an example of how GDBusProxy can be used.
	 * Since 2.26
	 * Params:
	 * connection = A GDBusConnection.
	 * flags = Flags used when constructing the proxy.
	 * info = A GDBusInterfaceInfo specifying the minimal interface that proxy conforms to or NULL. [allow-none]
	 * name = A bus name (well-known or unique) or NULL if connection is not a message bus connection. [allow-none]
	 * objectPath = An object path.
	 * interfaceName = A D-Bus interface name.
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (DBusConnection connection, GDBusProxyFlags flags, GDBusInterfaceInfo* info, string name, string objectPath, string interfaceName, Cancellable cancellable)
	{
		// GDBusProxy * g_dbus_proxy_new_sync (GDBusConnection *connection,  GDBusProxyFlags flags,  GDBusInterfaceInfo *info,  const gchar *name,  const gchar *object_path,  const gchar *interface_name,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_proxy_new_sync((connection is null) ? null : connection.getDBusConnectionStruct(), flags, info, Str.toStringz(name), Str.toStringz(objectPath), Str.toStringz(interfaceName), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_proxy_new_sync((connection is null) ? null : connection.getDBusConnectionStruct(), flags, info, Str.toStringz(name), Str.toStringz(objectPath), Str.toStringz(interfaceName), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err)");
		}
		this(cast(GDBusProxy*) p);
	}
	
	/**
	 * Like g_dbus_proxy_new() but takes a GBusType instead of a GDBusConnection.
	 * See Example 14, “GDBusProxy for a well-known-name” for an example of how GDBusProxy can be used.
	 * Since 2.26
	 * Params:
	 * busType = A GBusType.
	 * flags = Flags used when constructing the proxy.
	 * info = A GDBusInterfaceInfo specifying the minimal interface that proxy conforms to or NULL. [allow-none]
	 * name = A bus name (well-known or unique).
	 * objectPath = An object path.
	 * interfaceName = A D-Bus interface name.
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = Callback function to invoke when the proxy is ready.
	 * userData = User data to pass to callback.
	 */
	public static void newForBus(GBusType busType, GDBusProxyFlags flags, GDBusInterfaceInfo* info, string name, string objectPath, string interfaceName, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_proxy_new_for_bus (GBusType bus_type,  GDBusProxyFlags flags,  GDBusInterfaceInfo *info,  const gchar *name,  const gchar *object_path,  const gchar *interface_name,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_proxy_new_for_bus(busType, flags, info, Str.toStringz(name), Str.toStringz(objectPath), Str.toStringz(interfaceName), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Like g_dbus_proxy_new_sync() but takes a GBusType instead of a GDBusConnection.
	 * See Example 14, “GDBusProxy for a well-known-name” for an example of how GDBusProxy can be used.
	 * Since 2.26
	 * Params:
	 * busType = A GBusType.
	 * flags = Flags used when constructing the proxy.
	 * info = A GDBusInterfaceInfo specifying the minimal interface
	 * that proxy conforms to or NULL. [allow-none]
	 * name = A bus name (well-known or unique).
	 * objectPath = An object path.
	 * interfaceName = A D-Bus interface name.
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GBusType busType, GDBusProxyFlags flags, GDBusInterfaceInfo* info, string name, string objectPath, string interfaceName, Cancellable cancellable)
	{
		// GDBusProxy * g_dbus_proxy_new_for_bus_sync (GBusType bus_type,  GDBusProxyFlags flags,  GDBusInterfaceInfo *info,  const gchar *name,  const gchar *object_path,  const gchar *interface_name,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_proxy_new_for_bus_sync(busType, flags, info, Str.toStringz(name), Str.toStringz(objectPath), Str.toStringz(interfaceName), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_proxy_new_for_bus_sync(busType, flags, info, Str.toStringz(name), Str.toStringz(objectPath), Str.toStringz(interfaceName), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err)");
		}
		this(cast(GDBusProxy*) p);
	}
	
	/**
	 * Gets the flags that proxy was constructed with.
	 * Since 2.26
	 * Returns: Flags from the GDBusProxyFlags enumeration.
	 */
	public GDBusProxyFlags getFlags()
	{
		// GDBusProxyFlags g_dbus_proxy_get_flags (GDBusProxy *proxy);
		return g_dbus_proxy_get_flags(gDBusProxy);
	}
	
	/**
	 * Gets the connection proxy is for.
	 * Since 2.26
	 * Returns: A GDBusConnection owned by proxy. Do not free. [transfer none]
	 */
	public DBusConnection getConnection()
	{
		// GDBusConnection * g_dbus_proxy_get_connection (GDBusProxy *proxy);
		auto p = g_dbus_proxy_get_connection(gDBusProxy);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) p);
	}
	
	/**
	 * Gets the name that proxy was constructed for.
	 * Since 2.26
	 * Returns: A string owned by proxy. Do not free.
	 */
	public string getName()
	{
		// const gchar * g_dbus_proxy_get_name (GDBusProxy *proxy);
		return Str.toString(g_dbus_proxy_get_name(gDBusProxy));
	}
	
	/**
	 * The unique name that owns the name that proxy is for or NULL if
	 * no-one currently owns that name. You may connect to the
	 * "notify" signal to track changes to the
	 * "g-name-owner" property.
	 * Since 2.26
	 * Returns: The name owner or NULL if no name owner exists. Free with g_free().
	 */
	public string getNameOwner()
	{
		// gchar * g_dbus_proxy_get_name_owner (GDBusProxy *proxy);
		return Str.toString(g_dbus_proxy_get_name_owner(gDBusProxy));
	}
	
	/**
	 * Gets the object path proxy is for.
	 * Since 2.26
	 * Returns: A string owned by proxy. Do not free.
	 */
	public string getObjectPath()
	{
		// const gchar * g_dbus_proxy_get_object_path (GDBusProxy *proxy);
		return Str.toString(g_dbus_proxy_get_object_path(gDBusProxy));
	}
	
	/**
	 * Gets the D-Bus interface name proxy is for.
	 * Since 2.26
	 * Returns: A string owned by proxy. Do not free.
	 */
	public string getInterfaceName()
	{
		// const gchar * g_dbus_proxy_get_interface_name (GDBusProxy *proxy);
		return Str.toString(g_dbus_proxy_get_interface_name(gDBusProxy));
	}
	
	/**
	 * Gets the timeout to use if -1 (specifying default timeout) is
	 * passed as timeout_msec in the g_dbus_proxy_call() and
	 * g_dbus_proxy_call_sync() functions.
	 * See the "g-default-timeout" property for more details.
	 * Since 2.26
	 * Returns: Timeout to use for proxy.
	 */
	public int getDefaultTimeout()
	{
		// gint g_dbus_proxy_get_default_timeout (GDBusProxy *proxy);
		return g_dbus_proxy_get_default_timeout(gDBusProxy);
	}
	
	/**
	 * Sets the timeout to use if -1 (specifying default timeout) is
	 * passed as timeout_msec in the g_dbus_proxy_call() and
	 * g_dbus_proxy_call_sync() functions.
	 * See the "g-default-timeout" property for more details.
	 * Since 2.26
	 * Params:
	 * timeoutMsec = Timeout in milliseconds.
	 */
	public void setDefaultTimeout(int timeoutMsec)
	{
		// void g_dbus_proxy_set_default_timeout (GDBusProxy *proxy,  gint timeout_msec);
		g_dbus_proxy_set_default_timeout(gDBusProxy, timeoutMsec);
	}
	
	/**
	 * Looks up the value for a property from the cache. This call does no
	 * blocking IO.
	 * If proxy has an expected interface (see
	 * "g-interface-info") and property_name is referenced by
	 * it, then value is checked against the type of the property.
	 * Since 2.26
	 * Params:
	 * propertyName = Property name.
	 * Returns: A reference to the GVariant instance that holds the value for property_name or NULL if the value is not in the cache. The returned reference must be freed with g_variant_unref().
	 */
	public Variant getCachedProperty(string propertyName)
	{
		// GVariant * g_dbus_proxy_get_cached_property (GDBusProxy *proxy,  const gchar *property_name);
		auto p = g_dbus_proxy_get_cached_property(gDBusProxy, Str.toStringz(propertyName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * If value is not NULL, sets the cached value for the property with
	 * name property_name to the value in value.
	 * If value is NULL, then the cached value is removed from the
	 * property cache.
	 * If proxy has an expected interface (see
	 * "g-interface-info") and property_name is referenced by
	 * it, then value is checked against the type of the property.
	 * If the value GVariant is floating, it is consumed. This allows
	 * convenient 'inline' use of g_variant_new(), e.g.
	 * $(DDOC_COMMENT example)
	 * Normally you will not need to use this method since proxy is
	 * tracking changes using the
	 * org.freedesktop.DBus.Properties.PropertiesChanged
	 * D-Bus signal. However, for performance reasons an object may decide
	 * to not use this signal for some properties and instead use a
	 * proprietary out-of-band mechanism to transmit changes.
	 * As a concrete example, consider an object with a property
	 * ChatroomParticipants which is an array of
	 * strings. Instead of transmitting the same (long) array every time
	 * the property changes, it is more efficient to only transmit the
	 * delta using e.g. signals ChatroomParticipantJoined(String
	 * name) and ChatroomParticipantParted(String
	 * name).
	 * Since 2.26
	 * Params:
	 * propertyName = Property name.
	 * value = Value for the property or NULL to remove it from the cache. [allow-none]
	 */
	public void setCachedProperty(string propertyName, Variant value)
	{
		// void g_dbus_proxy_set_cached_property (GDBusProxy *proxy,  const gchar *property_name,  GVariant *value);
		g_dbus_proxy_set_cached_property(gDBusProxy, Str.toStringz(propertyName), (value is null) ? null : value.getVariantStruct());
	}
	
	/**
	 * Gets the names of all cached properties on proxy.
	 * Since 2.26
	 * Returns: A NULL-terminated array of strings or NULL if proxy has no cached properties. Free the returned array with g_strfreev(). [transfer full]
	 */
	public string[] getCachedPropertyNames()
	{
		// gchar ** g_dbus_proxy_get_cached_property_names  (GDBusProxy *proxy);
		return Str.toStringArray(g_dbus_proxy_get_cached_property_names(gDBusProxy));
	}
	
	/**
	 * Ensure that interactions with proxy conform to the given
	 * interface. See the "g-interface-info" property for more
	 * details.
	 * Since 2.26
	 * Params:
	 * info = Minimum interface this proxy conforms to or NULL to unset. [allow-none]
	 */
	public void setInterfaceInfo(GDBusInterfaceInfo* info)
	{
		// void g_dbus_proxy_set_interface_info (GDBusProxy *proxy,  GDBusInterfaceInfo *info);
		g_dbus_proxy_set_interface_info(gDBusProxy, info);
	}
	
	/**
	 * Returns the GDBusInterfaceInfo, if any, specifying the interface
	 * that proxy conforms to. See the "g-interface-info"
	 * property for more details.
	 * Since 2.26
	 * Returns: A GDBusInterfaceInfo or NULL. Do not unref the returned object, it is owned by proxy.
	 */
	public GDBusInterfaceInfo* getInterfaceInfo()
	{
		// GDBusInterfaceInfo * g_dbus_proxy_get_interface_info (GDBusProxy *proxy);
		return g_dbus_proxy_get_interface_info(gDBusProxy);
	}
	
	/**
	 * Asynchronously invokes the method_name method on proxy.
	 * If method_name contains any dots, then name is split into interface and
	 * method name parts. This allows using proxy for invoking methods on
	 * other interfaces.
	 * If the GDBusConnection associated with proxy is closed then
	 * the operation will fail with G_IO_ERROR_CLOSED. If
	 * cancellable is canceled, the operation will fail with
	 * G_IO_ERROR_CANCELLED. If parameters contains a value not
	 * compatible with the D-Bus protocol, the operation fails with
	 * G_IO_ERROR_INVALID_ARGUMENT.
	 * If the parameters GVariant is floating, it is consumed. This allows
	 * Since 2.26
	 * Params:
	 * methodName = Name of method to invoke.
	 * parameters = A GVariant tuple with parameters for the signal or NULL if not passing parameters. [allow-none]
	 * flags = Flags from the GDBusCallFlags enumeration.
	 * timeoutMsec = The timeout in milliseconds (with G_MAXINT meaning
	 * "infinite") or -1 to use the proxy default timeout.
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is satisfied or NULL if you don't
	 * care about the result of the method invocation. [allow-none]
	 * userData = The data to pass to callback.
	 */
	public void call(string methodName, Variant parameters, GDBusCallFlags flags, int timeoutMsec, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_proxy_call (GDBusProxy *proxy,  const gchar *method_name,  GVariant *parameters,  GDBusCallFlags flags,  gint timeout_msec,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_proxy_call(gDBusProxy, Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), flags, timeoutMsec, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an operation started with g_dbus_proxy_call().
	 * Since 2.26
	 * Params:
	 * res = A GAsyncResult obtained from the GAsyncReadyCallback passed to g_dbus_proxy_call().
	 * Returns: NULL if error is set. Otherwise a GVariant tuple with return values. Free with g_variant_unref().
	 * Throws: GException on failure.
	 */
	public Variant callFinish(AsyncResultIF res)
	{
		// GVariant * g_dbus_proxy_call_finish (GDBusProxy *proxy,  GAsyncResult *res,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_proxy_call_finish(gDBusProxy, (res is null) ? null : res.getAsyncResultTStruct(), &err);
		
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
	 * Synchronously invokes the method_name method on proxy.
	 * If method_name contains any dots, then name is split into interface and
	 * method name parts. This allows using proxy for invoking methods on
	 * other interfaces.
	 * If the GDBusConnection associated with proxy is disconnected then
	 * the operation will fail with G_IO_ERROR_CLOSED. If
	 * cancellable is canceled, the operation will fail with
	 * G_IO_ERROR_CANCELLED. If parameters contains a value not
	 * compatible with the D-Bus protocol, the operation fails with
	 * G_IO_ERROR_INVALID_ARGUMENT.
	 * If the parameters GVariant is floating, it is consumed. This allows
	 * Since 2.26
	 * Params:
	 * methodName = Name of method to invoke.
	 * parameters = A GVariant tuple with parameters for the signal
	 * or NULL if not passing parameters. [allow-none]
	 * flags = Flags from the GDBusCallFlags enumeration.
	 * timeoutMsec = The timeout in milliseconds (with G_MAXINT meaning
	 * "infinite") or -1 to use the proxy default timeout.
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Returns: NULL if error is set. Otherwise a GVariant tuple with return values. Free with g_variant_unref().
	 * Throws: GException on failure.
	 */
	public Variant callSync(string methodName, Variant parameters, GDBusCallFlags flags, int timeoutMsec, Cancellable cancellable)
	{
		// GVariant * g_dbus_proxy_call_sync (GDBusProxy *proxy,  const gchar *method_name,  GVariant *parameters,  GDBusCallFlags flags,  gint timeout_msec,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_proxy_call_sync(gDBusProxy, Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), flags, timeoutMsec, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
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
	 * Like g_dbus_proxy_call() but also takes a GUnixFDList object.
	 * This method is only available on UNIX.
	 * Since 2.30
	 * Params:
	 * methodName = Name of method to invoke.
	 * parameters = A GVariant tuple with parameters for the signal or NULL if not passing parameters. [allow-none]
	 * flags = Flags from the GDBusCallFlags enumeration.
	 * timeoutMsec = The timeout in milliseconds (with G_MAXINT meaning
	 * "infinite") or -1 to use the proxy default timeout.
	 * fdList = A GUnixFDList or NULL. [allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * callback = A GAsyncReadyCallback to call when the request is satisfied or NULL if you don't
	 * care about the result of the method invocation. [allow-none]
	 * userData = The data to pass to callback.
	 */
	public void callWithUnixFdList(string methodName, Variant parameters, GDBusCallFlags flags, int timeoutMsec, UnixFDList fdList, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_proxy_call_with_unix_fd_list (GDBusProxy *proxy,  const gchar *method_name,  GVariant *parameters,  GDBusCallFlags flags,  gint timeout_msec,  GUnixFDList *fd_list,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_proxy_call_with_unix_fd_list(gDBusProxy, Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), flags, timeoutMsec, (fdList is null) ? null : fdList.getUnixFDListStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an operation started with g_dbus_proxy_call_with_unix_fd_list().
	 * Since 2.30
	 * Params:
	 * outFdList = Return location for a GUnixFDList or NULL. [out][allow-none]
	 * res = A GAsyncResult obtained from the GAsyncReadyCallback passed to g_dbus_proxy_call_with_unix_fd_list().
	 * Returns: NULL if error is set. Otherwise a GVariant tuple with return values. Free with g_variant_unref().
	 * Throws: GException on failure.
	 */
	public Variant callWithUnixFdListFinish(out UnixFDList outFdList, AsyncResultIF res)
	{
		// GVariant * g_dbus_proxy_call_with_unix_fd_list_finish  (GDBusProxy *proxy,  GUnixFDList **out_fd_list,  GAsyncResult *res,  GError **error);
		GUnixFDList* outoutFdList = null;
		GError* err = null;
		
		auto p = g_dbus_proxy_call_with_unix_fd_list_finish(gDBusProxy, &outoutFdList, (res is null) ? null : res.getAsyncResultTStruct(), &err);
		
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
	 * Like g_dbus_proxy_call_sync() but also takes and returns GUnixFDList objects.
	 * This method is only available on UNIX.
	 * Since 2.30
	 * Params:
	 * methodName = Name of method to invoke.
	 * parameters = A GVariant tuple with parameters for the signal
	 * or NULL if not passing parameters. [allow-none]
	 * flags = Flags from the GDBusCallFlags enumeration.
	 * timeoutMsec = The timeout in milliseconds (with G_MAXINT meaning
	 * "infinite") or -1 to use the proxy default timeout.
	 * fdList = A GUnixFDList or NULL. [allow-none]
	 * outFdList = Return location for a GUnixFDList or NULL. [out][allow-none]
	 * cancellable = A GCancellable or NULL. [allow-none]
	 * Returns: NULL if error is set. Otherwise a GVariant tuple with return values. Free with g_variant_unref().
	 * Throws: GException on failure.
	 */
	public Variant callWithUnixFdListSync(string methodName, Variant parameters, GDBusCallFlags flags, int timeoutMsec, UnixFDList fdList, out UnixFDList outFdList, Cancellable cancellable)
	{
		// GVariant * g_dbus_proxy_call_with_unix_fd_list_sync  (GDBusProxy *proxy,  const gchar *method_name,  GVariant *parameters,  GDBusCallFlags flags,  gint timeout_msec,  GUnixFDList *fd_list,  GUnixFDList **out_fd_list,  GCancellable *cancellable,  GError **error);
		GUnixFDList* outoutFdList = null;
		GError* err = null;
		
		auto p = g_dbus_proxy_call_with_unix_fd_list_sync(gDBusProxy, Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), flags, timeoutMsec, (fdList is null) ? null : fdList.getUnixFDListStruct(), &outoutFdList, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
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
}
