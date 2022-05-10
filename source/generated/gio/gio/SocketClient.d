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


module gio.SocketClient;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.IOStream;
private import gio.ProxyResolverIF;
private import gio.SocketAddress;
private import gio.SocketConnectableIF;
private import gio.SocketConnection;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * #GSocketClient is a lightweight high-level utility class for connecting to
 * a network host using a connection oriented socket type.
 * 
 * You create a #GSocketClient object, set any options you want, and then
 * call a sync or async connect operation, which returns a #GSocketConnection
 * subclass on success.
 * 
 * The type of the #GSocketConnection object returned depends on the type of
 * the underlying socket that is in use. For instance, for a TCP/IP connection
 * it will be a #GTcpConnection.
 * 
 * As #GSocketClient is a lightweight object, you don't need to cache it. You
 * can just create a new one any time you need one.
 *
 * Since: 2.22
 */
public class SocketClient : ObjectG
{
	/** the main Gtk struct */
	protected GSocketClient* gSocketClient;

	/** Get the main Gtk struct */
	public GSocketClient* getSocketClientStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSocketClient;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketClient;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSocketClient* gSocketClient, bool ownedRef = false)
	{
		this.gSocketClient = gSocketClient;
		super(cast(GObject*)gSocketClient, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_socket_client_get_type();
	}

	/**
	 * Creates a new #GSocketClient with the default options.
	 *
	 * Returns: a #GSocketClient.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_socket_client_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSocketClient*) __p, true);
	}

	/**
	 * Enable proxy protocols to be handled by the application. When the
	 * indicated proxy protocol is returned by the #GProxyResolver,
	 * #GSocketClient will consider this protocol as supported but will
	 * not try to find a #GProxy instance to handle handshaking. The
	 * application must check for this case by calling
	 * g_socket_connection_get_remote_address() on the returned
	 * #GSocketConnection, and seeing if it's a #GProxyAddress of the
	 * appropriate type, to determine whether or not it needs to handle
	 * the proxy handshaking itself.
	 *
	 * This should be used for proxy protocols that are dialects of
	 * another protocol such as HTTP proxy. It also allows cohabitation of
	 * proxy protocols that are reused between protocols. A good example
	 * is HTTP. It can be used to proxy HTTP, FTP and Gopher and can also
	 * be use as generic socket proxy through the HTTP CONNECT method.
	 *
	 * When the proxy is detected as being an application proxy, TLS handshake
	 * will be skipped. This is required to let the application do the proxy
	 * specific handshake.
	 *
	 * Params:
	 *     protocol = The proxy protocol
	 */
	public void addApplicationProxy(string protocol)
	{
		g_socket_client_add_application_proxy(gSocketClient, Str.toStringz(protocol));
	}

	/**
	 * Tries to resolve the @connectable and make a network connection to it.
	 *
	 * Upon a successful connection, a new #GSocketConnection is constructed
	 * and returned.  The caller owns this new object and must drop their
	 * reference to it when finished with it.
	 *
	 * The type of the #GSocketConnection object returned depends on the type of
	 * the underlying socket that is used. For instance, for a TCP/IP connection
	 * it will be a #GTcpConnection.
	 *
	 * The socket created will be the same family as the address that the
	 * @connectable resolves to, unless family is set with g_socket_client_set_family()
	 * or indirectly via g_socket_client_set_local_address(). The socket type
	 * defaults to %G_SOCKET_TYPE_STREAM but can be set with
	 * g_socket_client_set_socket_type().
	 *
	 * If a local address is specified with g_socket_client_set_local_address() the
	 * socket will be bound to this address before connecting.
	 *
	 * Params:
	 *     connectable = a #GSocketConnectable specifying the remote address.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a #GSocketConnection on success, %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketConnection connect(SocketConnectableIF connectable, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_client_connect(gSocketClient, (connectable is null) ? null : connectable.getSocketConnectableStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * This is the asynchronous version of g_socket_client_connect().
	 *
	 * You may wish to prefer the asynchronous version even in synchronous
	 * command line programs because, since 2.60, it implements
	 * [RFC 8305](https://tools.ietf.org/html/rfc8305) "Happy Eyeballs"
	 * recommendations to work around long connection timeouts in networks
	 * where IPv6 is broken by performing an IPv4 connection simultaneously
	 * without waiting for IPv6 to time out, which is not supported by the
	 * synchronous call. (This is not an API guarantee, and may change in
	 * the future.)
	 *
	 * When the operation is finished @callback will be
	 * called. You can then call g_socket_client_connect_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     connectable = a #GSocketConnectable specifying the remote address.
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback
	 *     userData = user data for the callback
	 *
	 * Since: 2.22
	 */
	public void connectAsync(SocketConnectableIF connectable, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_socket_client_connect_async(gSocketClient, (connectable is null) ? null : connectable.getSocketConnectableStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async connect operation. See g_socket_client_connect_async()
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a #GSocketConnection on success, %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketConnection connectFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_socket_client_connect_finish(gSocketClient, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * This is a helper function for g_socket_client_connect().
	 *
	 * Attempts to create a TCP connection to the named host.
	 *
	 * @host_and_port may be in any of a number of recognized formats; an IPv6
	 * address, an IPv4 address, or a domain name (in which case a DNS
	 * lookup is performed).  Quoting with [] is supported for all address
	 * types.  A port override may be specified in the usual way with a
	 * colon.  Ports may be given as decimal numbers or symbolic names (in
	 * which case an /etc/services lookup is performed).
	 *
	 * If no port override is given in @host_and_port then @default_port will be
	 * used as the port number to connect to.
	 *
	 * In general, @host_and_port is expected to be provided by the user (allowing
	 * them to give the hostname, and a port override if necessary) and
	 * @default_port is expected to be provided by the application.
	 *
	 * In the case that an IP address is given, a single connection
	 * attempt is made.  In the case that a name is given, multiple
	 * connection attempts may be made, in turn and according to the
	 * number of address records in DNS, until a connection succeeds.
	 *
	 * Upon a successful connection, a new #GSocketConnection is constructed
	 * and returned.  The caller owns this new object and must drop their
	 * reference to it when finished with it.
	 *
	 * In the event of any failure (DNS error, service not found, no hosts
	 * connectable) %NULL is returned and @error (if non-%NULL) is set
	 * accordingly.
	 *
	 * Params:
	 *     hostAndPort = the name and optionally port of the host to connect to
	 *     defaultPort = the default port to connect to
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a #GSocketConnection on success, %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToHost(string hostAndPort, ushort defaultPort, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_client_connect_to_host(gSocketClient, Str.toStringz(hostAndPort), defaultPort, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * This is the asynchronous version of g_socket_client_connect_to_host().
	 *
	 * When the operation is finished @callback will be
	 * called. You can then call g_socket_client_connect_to_host_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     hostAndPort = the name and optionally the port of the host to connect to
	 *     defaultPort = the default port to connect to
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback
	 *     userData = user data for the callback
	 *
	 * Since: 2.22
	 */
	public void connectToHostAsync(string hostAndPort, ushort defaultPort, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_socket_client_connect_to_host_async(gSocketClient, Str.toStringz(hostAndPort), defaultPort, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async connect operation. See g_socket_client_connect_to_host_async()
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a #GSocketConnection on success, %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToHostFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_socket_client_connect_to_host_finish(gSocketClient, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * Attempts to create a TCP connection to a service.
	 *
	 * This call looks up the SRV record for @service at @domain for the
	 * "tcp" protocol.  It then attempts to connect, in turn, to each of
	 * the hosts providing the service until either a connection succeeds
	 * or there are no hosts remaining.
	 *
	 * Upon a successful connection, a new #GSocketConnection is constructed
	 * and returned.  The caller owns this new object and must drop their
	 * reference to it when finished with it.
	 *
	 * In the event of any failure (DNS error, service not found, no hosts
	 * connectable) %NULL is returned and @error (if non-%NULL) is set
	 * accordingly.
	 *
	 * Params:
	 *     domain = a domain name
	 *     service = the name of the service to connect to
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a #GSocketConnection if successful, or %NULL on error
	 *
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToService(string domain, string service, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_client_connect_to_service(gSocketClient, Str.toStringz(domain), Str.toStringz(service), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * This is the asynchronous version of
	 * g_socket_client_connect_to_service().
	 *
	 * Params:
	 *     domain = a domain name
	 *     service = the name of the service to connect to
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback
	 *     userData = user data for the callback
	 *
	 * Since: 2.22
	 */
	public void connectToServiceAsync(string domain, string service, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_socket_client_connect_to_service_async(gSocketClient, Str.toStringz(domain), Str.toStringz(service), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async connect operation. See g_socket_client_connect_to_service_async()
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a #GSocketConnection on success, %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToServiceFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_socket_client_connect_to_service_finish(gSocketClient, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * This is a helper function for g_socket_client_connect().
	 *
	 * Attempts to create a TCP connection with a network URI.
	 *
	 * @uri may be any valid URI containing an "authority" (hostname/port)
	 * component. If a port is not specified in the URI, @default_port
	 * will be used. TLS will be negotiated if #GSocketClient:tls is %TRUE.
	 * (#GSocketClient does not know to automatically assume TLS for
	 * certain URI schemes.)
	 *
	 * Using this rather than g_socket_client_connect() or
	 * g_socket_client_connect_to_host() allows #GSocketClient to
	 * determine when to use application-specific proxy protocols.
	 *
	 * Upon a successful connection, a new #GSocketConnection is constructed
	 * and returned.  The caller owns this new object and must drop their
	 * reference to it when finished with it.
	 *
	 * In the event of any failure (DNS error, service not found, no hosts
	 * connectable) %NULL is returned and @error (if non-%NULL) is set
	 * accordingly.
	 *
	 * Params:
	 *     uri = A network URI
	 *     defaultPort = the default port to connect to
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a #GSocketConnection on success, %NULL on error.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToUri(string uri, ushort defaultPort, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_client_connect_to_uri(gSocketClient, Str.toStringz(uri), defaultPort, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * This is the asynchronous version of g_socket_client_connect_to_uri().
	 *
	 * When the operation is finished @callback will be
	 * called. You can then call g_socket_client_connect_to_uri_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     uri = a network uri
	 *     defaultPort = the default port to connect to
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback
	 *     userData = user data for the callback
	 *
	 * Since: 2.26
	 */
	public void connectToUriAsync(string uri, ushort defaultPort, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_socket_client_connect_to_uri_async(gSocketClient, Str.toStringz(uri), defaultPort, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an async connect operation. See g_socket_client_connect_to_uri_async()
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a #GSocketConnection on success, %NULL on error.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToUriFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_socket_client_connect_to_uri_finish(gSocketClient, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * Gets the proxy enable state; see g_socket_client_set_enable_proxy()
	 *
	 * Returns: whether proxying is enabled
	 *
	 * Since: 2.26
	 */
	public bool getEnableProxy()
	{
		return g_socket_client_get_enable_proxy(gSocketClient) != 0;
	}

	/**
	 * Gets the socket family of the socket client.
	 *
	 * See g_socket_client_set_family() for details.
	 *
	 * Returns: a #GSocketFamily
	 *
	 * Since: 2.22
	 */
	public GSocketFamily getFamily()
	{
		return g_socket_client_get_family(gSocketClient);
	}

	/**
	 * Gets the local address of the socket client.
	 *
	 * See g_socket_client_set_local_address() for details.
	 *
	 * Returns: a #GSocketAddress or %NULL. Do not free.
	 *
	 * Since: 2.22
	 */
	public SocketAddress getLocalAddress()
	{
		auto __p = g_socket_client_get_local_address(gSocketClient);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) __p);
	}

	/**
	 * Gets the protocol name type of the socket client.
	 *
	 * See g_socket_client_set_protocol() for details.
	 *
	 * Returns: a #GSocketProtocol
	 *
	 * Since: 2.22
	 */
	public GSocketProtocol getProtocol()
	{
		return g_socket_client_get_protocol(gSocketClient);
	}

	/**
	 * Gets the #GProxyResolver being used by @client. Normally, this will
	 * be the resolver returned by g_proxy_resolver_get_default(), but you
	 * can override it with g_socket_client_set_proxy_resolver().
	 *
	 * Returns: The #GProxyResolver being used by
	 *     @client.
	 *
	 * Since: 2.36
	 */
	public ProxyResolverIF getProxyResolver()
	{
		auto __p = g_socket_client_get_proxy_resolver(gSocketClient);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ProxyResolverIF)(cast(GProxyResolver*) __p);
	}

	/**
	 * Gets the socket type of the socket client.
	 *
	 * See g_socket_client_set_socket_type() for details.
	 *
	 * Returns: a #GSocketFamily
	 *
	 * Since: 2.22
	 */
	public GSocketType getSocketType()
	{
		return g_socket_client_get_socket_type(gSocketClient);
	}

	/**
	 * Gets the I/O timeout time for sockets created by @client.
	 *
	 * See g_socket_client_set_timeout() for details.
	 *
	 * Returns: the timeout in seconds
	 *
	 * Since: 2.26
	 */
	public uint getTimeout()
	{
		return g_socket_client_get_timeout(gSocketClient);
	}

	/**
	 * Gets whether @client creates TLS connections. See
	 * g_socket_client_set_tls() for details.
	 *
	 * Returns: whether @client uses TLS
	 *
	 * Since: 2.28
	 */
	public bool getTls()
	{
		return g_socket_client_get_tls(gSocketClient) != 0;
	}

	/**
	 * Gets the TLS validation flags used creating TLS connections via
	 * @client.
	 *
	 * This function does not work as originally designed and is impossible
	 * to use correctly. See #GSocketClient:tls-validation-flags for more
	 * information.
	 *
	 * Deprecated: Do not attempt to ignore validation errors.
	 *
	 * Returns: the TLS validation flags
	 *
	 * Since: 2.28
	 */
	public GTlsCertificateFlags getTlsValidationFlags()
	{
		return g_socket_client_get_tls_validation_flags(gSocketClient);
	}

	/**
	 * Sets whether or not @client attempts to make connections via a
	 * proxy server. When enabled (the default), #GSocketClient will use a
	 * #GProxyResolver to determine if a proxy protocol such as SOCKS is
	 * needed, and automatically do the necessary proxy negotiation.
	 *
	 * See also g_socket_client_set_proxy_resolver().
	 *
	 * Params:
	 *     enable = whether to enable proxies
	 *
	 * Since: 2.26
	 */
	public void setEnableProxy(bool enable)
	{
		g_socket_client_set_enable_proxy(gSocketClient, enable);
	}

	/**
	 * Sets the socket family of the socket client.
	 * If this is set to something other than %G_SOCKET_FAMILY_INVALID
	 * then the sockets created by this object will be of the specified
	 * family.
	 *
	 * This might be useful for instance if you want to force the local
	 * connection to be an ipv4 socket, even though the address might
	 * be an ipv6 mapped to ipv4 address.
	 *
	 * Params:
	 *     family = a #GSocketFamily
	 *
	 * Since: 2.22
	 */
	public void setFamily(GSocketFamily family)
	{
		g_socket_client_set_family(gSocketClient, family);
	}

	/**
	 * Sets the local address of the socket client.
	 * The sockets created by this object will bound to the
	 * specified address (if not %NULL) before connecting.
	 *
	 * This is useful if you want to ensure that the local
	 * side of the connection is on a specific port, or on
	 * a specific interface.
	 *
	 * Params:
	 *     address = a #GSocketAddress, or %NULL
	 *
	 * Since: 2.22
	 */
	public void setLocalAddress(SocketAddress address)
	{
		g_socket_client_set_local_address(gSocketClient, (address is null) ? null : address.getSocketAddressStruct());
	}

	/**
	 * Sets the protocol of the socket client.
	 * The sockets created by this object will use of the specified
	 * protocol.
	 *
	 * If @protocol is %G_SOCKET_PROTOCOL_DEFAULT that means to use the default
	 * protocol for the socket family and type.
	 *
	 * Params:
	 *     protocol = a #GSocketProtocol
	 *
	 * Since: 2.22
	 */
	public void setProtocol(GSocketProtocol protocol)
	{
		g_socket_client_set_protocol(gSocketClient, protocol);
	}

	/**
	 * Overrides the #GProxyResolver used by @client. You can call this if
	 * you want to use specific proxies, rather than using the system
	 * default proxy settings.
	 *
	 * Note that whether or not the proxy resolver is actually used
	 * depends on the setting of #GSocketClient:enable-proxy, which is not
	 * changed by this function (but which is %TRUE by default)
	 *
	 * Params:
	 *     proxyResolver = a #GProxyResolver, or %NULL for the
	 *         default.
	 *
	 * Since: 2.36
	 */
	public void setProxyResolver(ProxyResolverIF proxyResolver)
	{
		g_socket_client_set_proxy_resolver(gSocketClient, (proxyResolver is null) ? null : proxyResolver.getProxyResolverStruct());
	}

	/**
	 * Sets the socket type of the socket client.
	 * The sockets created by this object will be of the specified
	 * type.
	 *
	 * It doesn't make sense to specify a type of %G_SOCKET_TYPE_DATAGRAM,
	 * as GSocketClient is used for connection oriented services.
	 *
	 * Params:
	 *     type = a #GSocketType
	 *
	 * Since: 2.22
	 */
	public void setSocketType(GSocketType type)
	{
		g_socket_client_set_socket_type(gSocketClient, type);
	}

	/**
	 * Sets the I/O timeout for sockets created by @client. @timeout is a
	 * time in seconds, or 0 for no timeout (the default).
	 *
	 * The timeout value affects the initial connection attempt as well,
	 * so setting this may cause calls to g_socket_client_connect(), etc,
	 * to fail with %G_IO_ERROR_TIMED_OUT.
	 *
	 * Params:
	 *     timeout = the timeout
	 *
	 * Since: 2.26
	 */
	public void setTimeout(uint timeout)
	{
		g_socket_client_set_timeout(gSocketClient, timeout);
	}

	/**
	 * Sets whether @client creates TLS (aka SSL) connections. If @tls is
	 * %TRUE, @client will wrap its connections in a #GTlsClientConnection
	 * and perform a TLS handshake when connecting.
	 *
	 * Note that since #GSocketClient must return a #GSocketConnection,
	 * but #GTlsClientConnection is not a #GSocketConnection, this
	 * actually wraps the resulting #GTlsClientConnection in a
	 * #GTcpWrapperConnection when returning it. You can use
	 * g_tcp_wrapper_connection_get_base_io_stream() on the return value
	 * to extract the #GTlsClientConnection.
	 *
	 * If you need to modify the behavior of the TLS handshake (eg, by
	 * setting a client-side certificate to use, or connecting to the
	 * #GTlsConnection::accept-certificate signal), you can connect to
	 * @client's #GSocketClient::event signal and wait for it to be
	 * emitted with %G_SOCKET_CLIENT_TLS_HANDSHAKING, which will give you
	 * a chance to see the #GTlsClientConnection before the handshake
	 * starts.
	 *
	 * Params:
	 *     tls = whether to use TLS
	 *
	 * Since: 2.28
	 */
	public void setTls(bool tls)
	{
		g_socket_client_set_tls(gSocketClient, tls);
	}

	/**
	 * Sets the TLS validation flags used when creating TLS connections
	 * via @client. The default value is %G_TLS_CERTIFICATE_VALIDATE_ALL.
	 *
	 * This function does not work as originally designed and is impossible
	 * to use correctly. See #GSocketClient:tls-validation-flags for more
	 * information.
	 *
	 * Deprecated: Do not attempt to ignore validation errors.
	 *
	 * Params:
	 *     flags = the validation flags
	 *
	 * Since: 2.28
	 */
	public void setTlsValidationFlags(GTlsCertificateFlags flags)
	{
		g_socket_client_set_tls_validation_flags(gSocketClient, flags);
	}

	/**
	 * Emitted when @client's activity on @connectable changes state.
	 * Among other things, this can be used to provide progress
	 * information about a network connection in the UI. The meanings of
	 * the different @event values are as follows:
	 *
	 * - %G_SOCKET_CLIENT_RESOLVING: @client is about to look up @connectable
	 * in DNS. @connection will be %NULL.
	 *
	 * - %G_SOCKET_CLIENT_RESOLVED:  @client has successfully resolved
	 * @connectable in DNS. @connection will be %NULL.
	 *
	 * - %G_SOCKET_CLIENT_CONNECTING: @client is about to make a connection
	 * to a remote host; either a proxy server or the destination server
	 * itself. @connection is the #GSocketConnection, which is not yet
	 * connected.  Since GLib 2.40, you can access the remote
	 * address via g_socket_connection_get_remote_address().
	 *
	 * - %G_SOCKET_CLIENT_CONNECTED: @client has successfully connected
	 * to a remote host. @connection is the connected #GSocketConnection.
	 *
	 * - %G_SOCKET_CLIENT_PROXY_NEGOTIATING: @client is about to negotiate
	 * with a proxy to get it to connect to @connectable. @connection is
	 * the #GSocketConnection to the proxy server.
	 *
	 * - %G_SOCKET_CLIENT_PROXY_NEGOTIATED: @client has negotiated a
	 * connection to @connectable through a proxy server. @connection is
	 * the stream returned from g_proxy_connect(), which may or may not
	 * be a #GSocketConnection.
	 *
	 * - %G_SOCKET_CLIENT_TLS_HANDSHAKING: @client is about to begin a TLS
	 * handshake. @connection is a #GTlsClientConnection.
	 *
	 * - %G_SOCKET_CLIENT_TLS_HANDSHAKED: @client has successfully completed
	 * the TLS handshake. @connection is a #GTlsClientConnection.
	 *
	 * - %G_SOCKET_CLIENT_COMPLETE: @client has either successfully connected
	 * to @connectable (in which case @connection is the #GSocketConnection
	 * that it will be returning to the caller) or has failed (in which
	 * case @connection is %NULL and the client is about to return an error).
	 *
	 * Each event except %G_SOCKET_CLIENT_COMPLETE may be emitted
	 * multiple times (or not at all) for a given connectable (in
	 * particular, if @client ends up attempting to connect to more than
	 * one address). However, if @client emits the #GSocketClient::event
	 * signal at all for a given connectable, then it will always emit
	 * it with %G_SOCKET_CLIENT_COMPLETE when it is done.
	 *
	 * Note that there may be additional #GSocketClientEvent values in
	 * the future; unrecognized @event values should be ignored.
	 *
	 * Params:
	 *     event = the event that is occurring
	 *     connectable = the #GSocketConnectable that @event is occurring on
	 *     connection = the current representation of the connection
	 *
	 * Since: 2.32
	 */
	gulong addOnEvent(void delegate(GSocketClientEvent, SocketConnectableIF, IOStream, SocketClient) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
