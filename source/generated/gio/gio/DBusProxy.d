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


module gio.DBusProxy;

private import gio.AsyncInitableIF;
private import gio.AsyncInitableT;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.DBusConnection;
private import gio.DBusInterfaceIF;
private import gio.DBusInterfaceInfo;
private import gio.DBusInterfaceT;
private import gio.InitableIF;
private import gio.InitableT;
private import gio.UnixFDList;
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
 * #GDBusProxy is a base class used for proxies to access a D-Bus
 * interface on a remote object. A #GDBusProxy can be constructed for
 * both well-known and unique names.
 * 
 * By default, #GDBusProxy will cache all properties (and listen to
 * changes) of the remote object, and proxy all signals that get
 * emitted. This behaviour can be changed by passing suitable
 * #GDBusProxyFlags when the proxy is created. If the proxy is for a
 * well-known name, the property cache is flushed when the name owner
 * vanishes and reloaded when a name owner appears.
 * 
 * The unique name owner of the proxy's name is tracked and can be read from
 * #GDBusProxy:g-name-owner. Connect to the #GObject::notify signal to
 * get notified of changes. Additionally, only signals and property
 * changes emitted from the current name owner are considered and
 * calls are always sent to the current name owner. This avoids a
 * number of race conditions when the name is lost by one owner and
 * claimed by another. However, if no name owner currently exists,
 * then calls will be sent to the well-known name which may result in
 * the message bus launching an owner (unless
 * %G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START is set).
 * 
 * If the proxy is for a stateless D-Bus service, where the name owner may
 * be started and stopped between calls, the #GDBusProxy:g-name-owner tracking
 * of #GDBusProxy will cause the proxy to drop signal and property changes from
 * the service after it has restarted for the first time. When interacting
 * with a stateless D-Bus service, do not use #GDBusProxy — use direct D-Bus
 * method calls and signal connections.
 * 
 * The generic #GDBusProxy::g-properties-changed and
 * #GDBusProxy::g-signal signals are not very convenient to work with.
 * Therefore, the recommended way of working with proxies is to subclass
 * #GDBusProxy, and have more natural properties and signals in your derived
 * class. This [example][gdbus-example-gdbus-codegen] shows how this can
 * easily be done using the [gdbus-codegen][gdbus-codegen] tool.
 * 
 * A #GDBusProxy instance can be used from multiple threads but note
 * that all signals (e.g. #GDBusProxy::g-signal, #GDBusProxy::g-properties-changed
 * and #GObject::notify) are emitted in the
 * [thread-default main context][g-main-context-push-thread-default]
 * of the thread where the instance was constructed.
 * 
 * An example using a proxy for a well-known name can be found in
 * [gdbus-example-watch-proxy.c](https://gitlab.gnome.org/GNOME/glib/-/blob/HEAD/gio/tests/gdbus-example-watch-proxy.c)
 *
 * Since: 2.26
 */
public class DBusProxy : ObjectG, AsyncInitableIF, DBusInterfaceIF, InitableIF
{
	/** the main Gtk struct */
	protected GDBusProxy* gDBusProxy;

	/** Get the main Gtk struct */
	public GDBusProxy* getDBusProxyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusProxy;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusProxy;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusProxy* gDBusProxy, bool ownedRef = false)
	{
		this.gDBusProxy = gDBusProxy;
		super(cast(GObject*)gDBusProxy, ownedRef);
	}

	// add the AsyncInitable capabilities
	mixin AsyncInitableT!(GDBusProxy);

	// add the DBusInterface capabilities
	mixin DBusInterfaceT!(GDBusProxy);

	// add the Initable capabilities
	mixin InitableT!(GDBusProxy);

	/**
	 * Finishes creating a GDBusProxy.
	 *
	 * Params:
	 *     res    = A GAsyncResult obtained from the GAsyncReadyCallback
	 *              function passed to g_dbus_proxy_new().
	 *     forBus = If true finish an address.
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 *
	 * Since: 2.26
	 */
	public this (AsyncResultIF res, bool forBus = false)
	{
		GError* err = null;
		GDBusProxy* p;

		if ( forBus )
		{
			p = g_dbus_proxy_new_for_bus_finish((res is null) ? null : res.getAsyncResultStruct(), &err);
		}
		else
		{
			p = g_dbus_proxy_new_finish((res is null) ? null : res.getAsyncResultStruct(), &err);
		}

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_proxy_new_finish((res is null) ? null : res.getAsyncResultStruct(), &err)");
		}
		this(p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return g_dbus_proxy_get_type();
	}

	/**
	 * Like g_dbus_proxy_new_sync() but takes a #GBusType instead of a #GDBusConnection.
	 *
	 * #GDBusProxy is used in this [example][gdbus-wellknown-proxy].
	 *
	 * Params:
	 *     busType = A #GBusType.
	 *     flags = Flags used when constructing the proxy.
	 *     info = A #GDBusInterfaceInfo specifying the minimal interface
	 *         that @proxy conforms to or %NULL.
	 *     name = A bus name (well-known or unique).
	 *     objectPath = An object path.
	 *     interfaceName = A D-Bus interface name.
	 *     cancellable = A #GCancellable or %NULL.
	 *
	 * Returns: A #GDBusProxy or %NULL if error is set.
	 *     Free with g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GBusType busType, GDBusProxyFlags flags, DBusInterfaceInfo info, string name, string objectPath, string interfaceName, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_dbus_proxy_new_for_bus_sync(busType, flags, (info is null) ? null : info.getDBusInterfaceInfoStruct(), Str.toStringz(name), Str.toStringz(objectPath), Str.toStringz(interfaceName), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_bus_sync");
		}

		this(cast(GDBusProxy*) __p, true);
	}

	/**
	 * Creates a proxy for accessing @interface_name on the remote object
	 * at @object_path owned by @name at @connection and synchronously
	 * loads D-Bus properties unless the
	 * %G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES flag is used.
	 *
	 * If the %G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS flag is not set, also sets up
	 * match rules for signals. Connect to the #GDBusProxy::g-signal signal
	 * to handle signals from the remote object.
	 *
	 * If both %G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES and
	 * %G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS are set, this constructor is
	 * guaranteed to return immediately without blocking.
	 *
	 * If @name is a well-known name and the
	 * %G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START and %G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION
	 * flags aren't set and no name owner currently exists, the message bus
	 * will be requested to launch a name owner for the name.
	 *
	 * This is a synchronous failable constructor. See g_dbus_proxy_new()
	 * and g_dbus_proxy_new_finish() for the asynchronous version.
	 *
	 * #GDBusProxy is used in this [example][gdbus-wellknown-proxy].
	 *
	 * Params:
	 *     connection = A #GDBusConnection.
	 *     flags = Flags used when constructing the proxy.
	 *     info = A #GDBusInterfaceInfo specifying the minimal interface that @proxy conforms to or %NULL.
	 *     name = A bus name (well-known or unique) or %NULL if @connection is not a message bus connection.
	 *     objectPath = An object path.
	 *     interfaceName = A D-Bus interface name.
	 *     cancellable = A #GCancellable or %NULL.
	 *
	 * Returns: A #GDBusProxy or %NULL if error is set.
	 *     Free with g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DBusConnection connection, GDBusProxyFlags flags, DBusInterfaceInfo info, string name, string objectPath, string interfaceName, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_dbus_proxy_new_sync((connection is null) ? null : connection.getDBusConnectionStruct(), flags, (info is null) ? null : info.getDBusInterfaceInfoStruct(), Str.toStringz(name), Str.toStringz(objectPath), Str.toStringz(interfaceName), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_sync");
		}

		this(cast(GDBusProxy*) __p, true);
	}

	/**
	 * Creates a proxy for accessing @interface_name on the remote object
	 * at @object_path owned by @name at @connection and asynchronously
	 * loads D-Bus properties unless the
	 * %G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES flag is used. Connect to
	 * the #GDBusProxy::g-properties-changed signal to get notified about
	 * property changes.
	 *
	 * If the %G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS flag is not set, also sets up
	 * match rules for signals. Connect to the #GDBusProxy::g-signal signal
	 * to handle signals from the remote object.
	 *
	 * If both %G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES and
	 * %G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS are set, this constructor is
	 * guaranteed to complete immediately without blocking.
	 *
	 * If @name is a well-known name and the
	 * %G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START and %G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION
	 * flags aren't set and no name owner currently exists, the message bus
	 * will be requested to launch a name owner for the name.
	 *
	 * This is a failable asynchronous constructor - when the proxy is
	 * ready, @callback will be invoked and you can use
	 * g_dbus_proxy_new_finish() to get the result.
	 *
	 * See g_dbus_proxy_new_sync() and for a synchronous version of this constructor.
	 *
	 * #GDBusProxy is used in this [example][gdbus-wellknown-proxy].
	 *
	 * Params:
	 *     connection = A #GDBusConnection.
	 *     flags = Flags used when constructing the proxy.
	 *     info = A #GDBusInterfaceInfo specifying the minimal interface that @proxy conforms to or %NULL.
	 *     name = A bus name (well-known or unique) or %NULL if @connection is not a message bus connection.
	 *     objectPath = An object path.
	 *     interfaceName = A D-Bus interface name.
	 *     cancellable = A #GCancellable or %NULL.
	 *     callback = Callback function to invoke when the proxy is ready.
	 *     userData = User data to pass to @callback.
	 *
	 * Since: 2.26
	 */
	public static void new_(DBusConnection connection, GDBusProxyFlags flags, DBusInterfaceInfo info, string name, string objectPath, string interfaceName, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dbus_proxy_new((connection is null) ? null : connection.getDBusConnectionStruct(), flags, (info is null) ? null : info.getDBusInterfaceInfoStruct(), Str.toStringz(name), Str.toStringz(objectPath), Str.toStringz(interfaceName), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Like g_dbus_proxy_new() but takes a #GBusType instead of a #GDBusConnection.
	 *
	 * #GDBusProxy is used in this [example][gdbus-wellknown-proxy].
	 *
	 * Params:
	 *     busType = A #GBusType.
	 *     flags = Flags used when constructing the proxy.
	 *     info = A #GDBusInterfaceInfo specifying the minimal interface that @proxy conforms to or %NULL.
	 *     name = A bus name (well-known or unique).
	 *     objectPath = An object path.
	 *     interfaceName = A D-Bus interface name.
	 *     cancellable = A #GCancellable or %NULL.
	 *     callback = Callback function to invoke when the proxy is ready.
	 *     userData = User data to pass to @callback.
	 *
	 * Since: 2.26
	 */
	public static void newForBus(GBusType busType, GDBusProxyFlags flags, DBusInterfaceInfo info, string name, string objectPath, string interfaceName, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dbus_proxy_new_for_bus(busType, flags, (info is null) ? null : info.getDBusInterfaceInfoStruct(), Str.toStringz(name), Str.toStringz(objectPath), Str.toStringz(interfaceName), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Asynchronously invokes the @method_name method on @proxy.
	 *
	 * If @method_name contains any dots, then @name is split into interface and
	 * method name parts. This allows using @proxy for invoking methods on
	 * other interfaces.
	 *
	 * If the #GDBusConnection associated with @proxy is closed then
	 * the operation will fail with %G_IO_ERROR_CLOSED. If
	 * @cancellable is canceled, the operation will fail with
	 * %G_IO_ERROR_CANCELLED. If @parameters contains a value not
	 * compatible with the D-Bus protocol, the operation fails with
	 * %G_IO_ERROR_INVALID_ARGUMENT.
	 *
	 * If the @parameters #GVariant is floating, it is consumed. This allows
	 * convenient 'inline' use of g_variant_new(), e.g.:
	 * |[<!-- language="C" -->
	 * g_dbus_proxy_call (proxy,
	 * "TwoStrings",
	 * g_variant_new ("(ss)",
	 * "Thing One",
	 * "Thing Two"),
	 * G_DBUS_CALL_FLAGS_NONE,
	 * -1,
	 * NULL,
	 * (GAsyncReadyCallback) two_strings_done,
	 * &data);
	 * ]|
	 *
	 * If @proxy has an expected interface (see
	 * #GDBusProxy:g-interface-info) and @method_name is referenced by it,
	 * then the return value is checked against the return type.
	 *
	 * This is an asynchronous method. When the operation is finished,
	 * @callback will be invoked in the
	 * [thread-default main context][g-main-context-push-thread-default]
	 * of the thread you are calling this method from.
	 * You can then call g_dbus_proxy_call_finish() to get the result of
	 * the operation. See g_dbus_proxy_call_sync() for the synchronous
	 * version of this method.
	 *
	 * If @callback is %NULL then the D-Bus method call message will be sent with
	 * the %G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED flag set.
	 *
	 * Params:
	 *     methodName = Name of method to invoke.
	 *     parameters = A #GVariant tuple with parameters for the signal or %NULL if not passing parameters.
	 *     flags = Flags from the #GDBusCallFlags enumeration.
	 *     timeoutMsec = The timeout in milliseconds (with %G_MAXINT meaning
	 *         "infinite") or -1 to use the proxy default timeout.
	 *     cancellable = A #GCancellable or %NULL.
	 *     callback = A #GAsyncReadyCallback to call when the request is satisfied or %NULL if you don't
	 *         care about the result of the method invocation.
	 *     userData = The data to pass to @callback.
	 *
	 * Since: 2.26
	 */
	public void call(string methodName, Variant parameters, GDBusCallFlags flags, int timeoutMsec, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dbus_proxy_call(gDBusProxy, Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), flags, timeoutMsec, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an operation started with g_dbus_proxy_call().
	 *
	 * Params:
	 *     res = A #GAsyncResult obtained from the #GAsyncReadyCallback passed to g_dbus_proxy_call().
	 *
	 * Returns: %NULL if @error is set. Otherwise a #GVariant tuple with
	 *     return values. Free with g_variant_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public Variant callFinish(AsyncResultIF res)
	{
		GError* err = null;

		auto __p = g_dbus_proxy_call_finish(gDBusProxy, (res is null) ? null : res.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Synchronously invokes the @method_name method on @proxy.
	 *
	 * If @method_name contains any dots, then @name is split into interface and
	 * method name parts. This allows using @proxy for invoking methods on
	 * other interfaces.
	 *
	 * If the #GDBusConnection associated with @proxy is disconnected then
	 * the operation will fail with %G_IO_ERROR_CLOSED. If
	 * @cancellable is canceled, the operation will fail with
	 * %G_IO_ERROR_CANCELLED. If @parameters contains a value not
	 * compatible with the D-Bus protocol, the operation fails with
	 * %G_IO_ERROR_INVALID_ARGUMENT.
	 *
	 * If the @parameters #GVariant is floating, it is consumed. This allows
	 * convenient 'inline' use of g_variant_new(), e.g.:
	 * |[<!-- language="C" -->
	 * g_dbus_proxy_call_sync (proxy,
	 * "TwoStrings",
	 * g_variant_new ("(ss)",
	 * "Thing One",
	 * "Thing Two"),
	 * G_DBUS_CALL_FLAGS_NONE,
	 * -1,
	 * NULL,
	 * &error);
	 * ]|
	 *
	 * The calling thread is blocked until a reply is received. See
	 * g_dbus_proxy_call() for the asynchronous version of this
	 * method.
	 *
	 * If @proxy has an expected interface (see
	 * #GDBusProxy:g-interface-info) and @method_name is referenced by it,
	 * then the return value is checked against the return type.
	 *
	 * Params:
	 *     methodName = Name of method to invoke.
	 *     parameters = A #GVariant tuple with parameters for the signal
	 *         or %NULL if not passing parameters.
	 *     flags = Flags from the #GDBusCallFlags enumeration.
	 *     timeoutMsec = The timeout in milliseconds (with %G_MAXINT meaning
	 *         "infinite") or -1 to use the proxy default timeout.
	 *     cancellable = A #GCancellable or %NULL.
	 *
	 * Returns: %NULL if @error is set. Otherwise a #GVariant tuple with
	 *     return values. Free with g_variant_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public Variant callSync(string methodName, Variant parameters, GDBusCallFlags flags, int timeoutMsec, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_dbus_proxy_call_sync(gDBusProxy, Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), flags, timeoutMsec, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Like g_dbus_proxy_call() but also takes a #GUnixFDList object.
	 *
	 * This method is only available on UNIX.
	 *
	 * Params:
	 *     methodName = Name of method to invoke.
	 *     parameters = A #GVariant tuple with parameters for the signal or %NULL if not passing parameters.
	 *     flags = Flags from the #GDBusCallFlags enumeration.
	 *     timeoutMsec = The timeout in milliseconds (with %G_MAXINT meaning
	 *         "infinite") or -1 to use the proxy default timeout.
	 *     fdList = A #GUnixFDList or %NULL.
	 *     cancellable = A #GCancellable or %NULL.
	 *     callback = A #GAsyncReadyCallback to call when the request is satisfied or %NULL if you don't
	 *         care about the result of the method invocation.
	 *     userData = The data to pass to @callback.
	 *
	 * Since: 2.30
	 */
	public void callWithUnixFdList(string methodName, Variant parameters, GDBusCallFlags flags, int timeoutMsec, UnixFDList fdList, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dbus_proxy_call_with_unix_fd_list(gDBusProxy, Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), flags, timeoutMsec, (fdList is null) ? null : fdList.getUnixFDListStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an operation started with g_dbus_proxy_call_with_unix_fd_list().
	 *
	 * Params:
	 *     outFdList = Return location for a #GUnixFDList or %NULL.
	 *     res = A #GAsyncResult obtained from the #GAsyncReadyCallback passed to g_dbus_proxy_call_with_unix_fd_list().
	 *
	 * Returns: %NULL if @error is set. Otherwise a #GVariant tuple with
	 *     return values. Free with g_variant_unref().
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public Variant callWithUnixFdListFinish(out UnixFDList outFdList, AsyncResultIF res)
	{
		GUnixFDList* outoutFdList = null;
		GError* err = null;

		auto __p = g_dbus_proxy_call_with_unix_fd_list_finish(gDBusProxy, &outoutFdList, (res is null) ? null : res.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		outFdList = ObjectG.getDObject!(UnixFDList)(outoutFdList);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Like g_dbus_proxy_call_sync() but also takes and returns #GUnixFDList objects.
	 *
	 * This method is only available on UNIX.
	 *
	 * Params:
	 *     methodName = Name of method to invoke.
	 *     parameters = A #GVariant tuple with parameters for the signal
	 *         or %NULL if not passing parameters.
	 *     flags = Flags from the #GDBusCallFlags enumeration.
	 *     timeoutMsec = The timeout in milliseconds (with %G_MAXINT meaning
	 *         "infinite") or -1 to use the proxy default timeout.
	 *     fdList = A #GUnixFDList or %NULL.
	 *     outFdList = Return location for a #GUnixFDList or %NULL.
	 *     cancellable = A #GCancellable or %NULL.
	 *
	 * Returns: %NULL if @error is set. Otherwise a #GVariant tuple with
	 *     return values. Free with g_variant_unref().
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public Variant callWithUnixFdListSync(string methodName, Variant parameters, GDBusCallFlags flags, int timeoutMsec, UnixFDList fdList, out UnixFDList outFdList, Cancellable cancellable)
	{
		GUnixFDList* outoutFdList = null;
		GError* err = null;

		auto __p = g_dbus_proxy_call_with_unix_fd_list_sync(gDBusProxy, Str.toStringz(methodName), (parameters is null) ? null : parameters.getVariantStruct(), flags, timeoutMsec, (fdList is null) ? null : fdList.getUnixFDListStruct(), &outoutFdList, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		outFdList = ObjectG.getDObject!(UnixFDList)(outoutFdList);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Looks up the value for a property from the cache. This call does no
	 * blocking IO.
	 *
	 * If @proxy has an expected interface (see
	 * #GDBusProxy:g-interface-info) and @property_name is referenced by
	 * it, then @value is checked against the type of the property.
	 *
	 * Params:
	 *     propertyName = Property name.
	 *
	 * Returns: A reference to the #GVariant instance
	 *     that holds the value for @property_name or %NULL if the value is not in
	 *     the cache. The returned reference must be freed with g_variant_unref().
	 *
	 * Since: 2.26
	 */
	public Variant getCachedProperty(string propertyName)
	{
		auto __p = g_dbus_proxy_get_cached_property(gDBusProxy, Str.toStringz(propertyName));

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Gets the names of all cached properties on @proxy.
	 *
	 * Returns: A
	 *     %NULL-terminated array of strings or %NULL if
	 *     @proxy has no cached properties. Free the returned array with
	 *     g_strfreev().
	 *
	 * Since: 2.26
	 */
	public string[] getCachedPropertyNames()
	{
		auto retStr = g_dbus_proxy_get_cached_property_names(gDBusProxy);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Gets the connection @proxy is for.
	 *
	 * Returns: A #GDBusConnection owned by @proxy. Do not free.
	 *
	 * Since: 2.26
	 */
	public DBusConnection getConnection()
	{
		auto __p = g_dbus_proxy_get_connection(gDBusProxy);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) __p);
	}

	/**
	 * Gets the timeout to use if -1 (specifying default timeout) is
	 * passed as @timeout_msec in the g_dbus_proxy_call() and
	 * g_dbus_proxy_call_sync() functions.
	 *
	 * See the #GDBusProxy:g-default-timeout property for more details.
	 *
	 * Returns: Timeout to use for @proxy.
	 *
	 * Since: 2.26
	 */
	public int getDefaultTimeout()
	{
		return g_dbus_proxy_get_default_timeout(gDBusProxy);
	}

	/**
	 * Gets the flags that @proxy was constructed with.
	 *
	 * Returns: Flags from the #GDBusProxyFlags enumeration.
	 *
	 * Since: 2.26
	 */
	public GDBusProxyFlags getFlags()
	{
		return g_dbus_proxy_get_flags(gDBusProxy);
	}

	/**
	 * Returns the #GDBusInterfaceInfo, if any, specifying the interface
	 * that @proxy conforms to. See the #GDBusProxy:g-interface-info
	 * property for more details.
	 *
	 * Returns: A #GDBusInterfaceInfo or %NULL.
	 *     Do not unref the returned object, it is owned by @proxy.
	 *
	 * Since: 2.26
	 */
	public DBusInterfaceInfo getInterfaceInfo()
	{
		auto __p = g_dbus_proxy_get_interface_info(gDBusProxy);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusInterfaceInfo)(cast(GDBusInterfaceInfo*) __p);
	}

	/**
	 * Gets the D-Bus interface name @proxy is for.
	 *
	 * Returns: A string owned by @proxy. Do not free.
	 *
	 * Since: 2.26
	 */
	public string getInterfaceName()
	{
		return Str.toString(g_dbus_proxy_get_interface_name(gDBusProxy));
	}

	/**
	 * Gets the name that @proxy was constructed for.
	 *
	 * When connected to a message bus, this will usually be non-%NULL.
	 * However, it may be %NULL for a proxy that communicates using a peer-to-peer
	 * pattern.
	 *
	 * Returns: A string owned by @proxy. Do not free.
	 *
	 * Since: 2.26
	 */
	public string getName()
	{
		return Str.toString(g_dbus_proxy_get_name(gDBusProxy));
	}

	/**
	 * The unique name that owns the name that @proxy is for or %NULL if
	 * no-one currently owns that name. You may connect to the
	 * #GObject::notify signal to track changes to the
	 * #GDBusProxy:g-name-owner property.
	 *
	 * Returns: The name owner or %NULL if no name
	 *     owner exists. Free with g_free().
	 *
	 * Since: 2.26
	 */
	public string getNameOwner()
	{
		auto retStr = g_dbus_proxy_get_name_owner(gDBusProxy);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the object path @proxy is for.
	 *
	 * Returns: A string owned by @proxy. Do not free.
	 *
	 * Since: 2.26
	 */
	public string getObjectPath()
	{
		return Str.toString(g_dbus_proxy_get_object_path(gDBusProxy));
	}

	/**
	 * If @value is not %NULL, sets the cached value for the property with
	 * name @property_name to the value in @value.
	 *
	 * If @value is %NULL, then the cached value is removed from the
	 * property cache.
	 *
	 * If @proxy has an expected interface (see
	 * #GDBusProxy:g-interface-info) and @property_name is referenced by
	 * it, then @value is checked against the type of the property.
	 *
	 * If the @value #GVariant is floating, it is consumed. This allows
	 * convenient 'inline' use of g_variant_new(), e.g.
	 * |[<!-- language="C" -->
	 * g_dbus_proxy_set_cached_property (proxy,
	 * "SomeProperty",
	 * g_variant_new ("(si)",
	 * "A String",
	 * 42));
	 * ]|
	 *
	 * Normally you will not need to use this method since @proxy
	 * is tracking changes using the
	 * `org.freedesktop.DBus.Properties.PropertiesChanged`
	 * D-Bus signal. However, for performance reasons an object may
	 * decide to not use this signal for some properties and instead
	 * use a proprietary out-of-band mechanism to transmit changes.
	 *
	 * As a concrete example, consider an object with a property
	 * `ChatroomParticipants` which is an array of strings. Instead of
	 * transmitting the same (long) array every time the property changes,
	 * it is more efficient to only transmit the delta using e.g. signals
	 * `ChatroomParticipantJoined(String name)` and
	 * `ChatroomParticipantParted(String name)`.
	 *
	 * Params:
	 *     propertyName = Property name.
	 *     value = Value for the property or %NULL to remove it from the cache.
	 *
	 * Since: 2.26
	 */
	public void setCachedProperty(string propertyName, Variant value)
	{
		g_dbus_proxy_set_cached_property(gDBusProxy, Str.toStringz(propertyName), (value is null) ? null : value.getVariantStruct());
	}

	/**
	 * Sets the timeout to use if -1 (specifying default timeout) is
	 * passed as @timeout_msec in the g_dbus_proxy_call() and
	 * g_dbus_proxy_call_sync() functions.
	 *
	 * See the #GDBusProxy:g-default-timeout property for more details.
	 *
	 * Params:
	 *     timeoutMsec = Timeout in milliseconds.
	 *
	 * Since: 2.26
	 */
	public void setDefaultTimeout(int timeoutMsec)
	{
		g_dbus_proxy_set_default_timeout(gDBusProxy, timeoutMsec);
	}

	/**
	 * Ensure that interactions with @proxy conform to the given
	 * interface. See the #GDBusProxy:g-interface-info property for more
	 * details.
	 *
	 * Params:
	 *     info = Minimum interface this proxy conforms to
	 *         or %NULL to unset.
	 *
	 * Since: 2.26
	 */
	public void setInterfaceInfo(DBusInterfaceInfo info)
	{
		g_dbus_proxy_set_interface_info(gDBusProxy, (info is null) ? null : info.getDBusInterfaceInfoStruct());
	}

	/**
	 * Emitted when one or more D-Bus properties on @proxy changes. The
	 * local cache has already been updated when this signal fires. Note
	 * that both @changed_properties and @invalidated_properties are
	 * guaranteed to never be %NULL (either may be empty though).
	 *
	 * If the proxy has the flag
	 * %G_DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES set, then
	 * @invalidated_properties will always be empty.
	 *
	 * This signal corresponds to the
	 * `PropertiesChanged` D-Bus signal on the
	 * `org.freedesktop.DBus.Properties` interface.
	 *
	 * Params:
	 *     changedProperties = A #GVariant containing the properties that changed (type: `a{sv}`)
	 *     invalidatedProperties = A %NULL terminated array of properties that was invalidated
	 *
	 * Since: 2.26
	 */
	gulong addOnGPropertiesChanged(void delegate(Variant, string[], DBusProxy) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "g-properties-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a signal from the remote object and interface that @proxy is for, has been received.
	 *
	 * Since 2.72 this signal supports detailed connections. You can connect to
	 * the detailed signal `g-signal::x` in order to receive callbacks only when
	 * signal `x` is received from the remote object.
	 *
	 * Params:
	 *     senderName = The sender of the signal or %NULL if the connection is not a bus connection.
	 *     signalName = The name of the signal.
	 *     parameters = A #GVariant tuple with parameters for the signal.
	 *
	 * Since: 2.26
	 */
	gulong addOnGSignal(void delegate(string, string, Variant, DBusProxy) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "g-signal", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
