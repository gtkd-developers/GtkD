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
 * inFile  = GSocketClient.html
 * outPack = gio
 * outFile = SocketClient
 * strct   = GSocketClient
 * realStrct=
 * ctorStrct=
 * clss    = SocketClient
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_socket_client_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.IOStream
 * 	- gio.ProxyResolver
 * 	- gio.ProxyResolverIF
 * 	- gio.SocketAddress
 * 	- gio.SocketConnection
 * 	- gio.SocketConnectable
 * 	- gio.SocketConnectableIF
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GIOStream* -> IOStream
 * 	- GProxyResolver* -> ProxyResolverIF
 * 	- GSocketAddress* -> SocketAddress
 * 	- GSocketConnectable* -> SocketConnectableIF
 * 	- GSocketConnection* -> SocketConnection
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SocketClient;

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
private import gio.IOStream;
private import gio.ProxyResolver;
private import gio.ProxyResolverIF;
private import gio.SocketAddress;
private import gio.SocketConnection;
private import gio.SocketConnectable;
private import gio.SocketConnectableIF;



private import gobject.ObjectG;

/**
 * GSocketClient is a lightweight high-level utility class for connecting to
 * a network host using a connection oriented socket type.
 *
 * You create a GSocketClient object, set any options you want, and then
 * call a sync or async connect operation, which returns a GSocketConnection
 * subclass on success.
 *
 * The type of the GSocketConnection object returned depends on the type of
 * the underlying socket that is in use. For instance, for a TCP/IP connection
 * it will be a GTcpConnection.
 *
 * As GSocketClient is a lightweight object, you don't need to cache it. You
 * can just create a new one any time you need one.
 */
public class SocketClient : ObjectG
{
	
	/** the main Gtk struct */
	protected GSocketClient* gSocketClient;
	
	
	public GSocketClient* getSocketClientStruct()
	{
		return gSocketClient;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketClient;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSocketClient* gSocketClient)
	{
		super(cast(GObject*)gSocketClient);
		this.gSocketClient = gSocketClient;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSocketClient = cast(GSocketClient*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(GSocketClientEvent, SocketConnectableIF, IOStream, SocketClient)[] onListeners;
	/**
	 * Emitted when client's activity on connectable changes state.
	 * Among other things, this can be used to provide progress
	 * information about a network connection in the UI. The meanings of
	 *  client is about to look up connectable in DNS.
	 *  connection will be NULL.
	 *
	 *  client has successfully resolved connectable in DNS.
	 *  connection will be NULL.
	 *
	 *  client is about to make a connection to a remote host;
	 *  either a proxy server or the destination server itself.
	 *  connection is the GSocketConnection, which is not yet
	 *  connected.
	 *
	 *  client has successfully connected to a remote host.
	 *  connection is the connected GSocketConnection.
	 *
	 *  client is about to negotiate with a proxy to get it to
	 *  connect to connectable. connection is the
	 *  GSocketConnection to the proxy server.
	 *
	 *  client has negotiated a connection to connectable through
	 *  a proxy server. connection is the stream returned from
	 *  g_proxy_connect(), which may or may not be a
	 *  GSocketConnection.
	 *
	 *  client is about to begin a TLS handshake. connection is a
	 *  GTlsClientConnection.
	 *
	 *  client has successfully completed the TLS handshake.
	 *  connection is a GTlsClientConnection.
	 *
	 *  client has either successfully connected to connectable
	 *  (in which case connection is the GSocketConnection that
	 *  it will be returning to the caller) or has failed (in which
	 *  case connection is NULL and the client is about to return
	 *  an error).
	 *
	 * Each event except G_SOCKET_CLIENT_COMPLETE may be emitted
	 * multiple times (or not at all) for a given connectable (in
	 * particular, if client ends up attempting to connect to more than
	 * one address). However, if client emits the "event"
	 * signal at all for a given connectable, that it will always emit
	 * it with G_SOCKET_CLIENT_COMPLETE when it is done.
	 * Note that there may be additional GSocketClientEvent values in
	 * the future; unrecognized event values should be ignored.
	 * Since 2.32
	 * See Also
	 * GSocketConnection, GSocketListener
	 */
	void addOn(void delegate(GSocketClientEvent, SocketConnectableIF, IOStream, SocketClient) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("event" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"event",
			cast(GCallback)&callBack,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["event"] = 1;
		}
		onListeners ~= dlg;
	}
	extern(C) static void callBack(GSocketClient* clientStruct, GSocketClientEvent event, GSocketConnectable* connectable, GIOStream* connection, SocketClient _socketClient)
	{
		foreach ( void delegate(GSocketClientEvent, SocketConnectableIF, IOStream, SocketClient) dlg ; _socketClient.onListeners )
		{
			dlg(event, ObjectG.getDObject!(SocketConnectable)(connectable), ObjectG.getDObject!(IOStream)(connection), _socketClient);
		}
	}
	
	
	/**
	 * Creates a new GSocketClient with the default options.
	 * Since 2.22
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GSocketClient * g_socket_client_new (void);
		auto p = g_socket_client_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_socket_client_new()");
		}
		this(cast(GSocketClient*) p);
	}
	
	/**
	 * Tries to resolve the connectable and make a network connection to it.
	 * Upon a successful connection, a new GSocketConnection is constructed
	 * and returned. The caller owns this new object and must drop their
	 * reference to it when finished with it.
	 * The type of the GSocketConnection object returned depends on the type of
	 * the underlying socket that is used. For instance, for a TCP/IP connection
	 * it will be a GTcpConnection.
	 * The socket created will be the same family as the address that the
	 * connectable resolves to, unless family is set with g_socket_client_set_family()
	 * or indirectly via g_socket_client_set_local_address(). The socket type
	 * defaults to G_SOCKET_TYPE_STREAM but can be set with
	 * g_socket_client_set_socket_type().
	 * If a local address is specified with g_socket_client_set_local_address() the
	 * socket will be bound to this address before connecting.
	 * Since 2.22
	 * Params:
	 * connectable = a GSocketConnectable specifying the remote address.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * Returns: a GSocketConnection on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public SocketConnection connect(SocketConnectableIF connectable, Cancellable cancellable)
	{
		// GSocketConnection * g_socket_client_connect (GSocketClient *client,  GSocketConnectable *connectable,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_socket_client_connect(gSocketClient, (connectable is null) ? null : connectable.getSocketConnectableTStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) p);
	}
	
	/**
	 * This is the asynchronous version of g_socket_client_connect().
	 * When the operation is finished callback will be
	 * called. You can then call g_socket_client_connect_finish() to get
	 * the result of the operation.
	 * Since 2.22
	 * Params:
	 * connectable = a GSocketConnectable specifying the remote address.
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data for the callback. [closure]
	 */
	public void connectAsync(SocketConnectableIF connectable, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_socket_client_connect_async (GSocketClient *client,  GSocketConnectable *connectable,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_socket_client_connect_async(gSocketClient, (connectable is null) ? null : connectable.getSocketConnectableTStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an async connect operation. See g_socket_client_connect_async()
	 * Since 2.22
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: a GSocketConnection on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public SocketConnection connectFinish(AsyncResultIF result)
	{
		// GSocketConnection * g_socket_client_connect_finish (GSocketClient *client,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_socket_client_connect_finish(gSocketClient, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) p);
	}
	
	/**
	 * This is a helper function for g_socket_client_connect().
	 * Attempts to create a TCP connection to the named host.
	 * host_and_port may be in any of a number of recognized formats; an IPv6
	 * address, an IPv4 address, or a domain name (in which case a DNS
	 * lookup is performed). Quoting with [] is supported for all address
	 * types. A port override may be specified in the usual way with a
	 * colon. Ports may be given as decimal numbers or symbolic names (in
	 * which case an /etc/services lookup is performed).
	 * If no port override is given in host_and_port then default_port will be
	 * used as the port number to connect to.
	 * In general, host_and_port is expected to be provided by the user (allowing
	 * them to give the hostname, and a port override if necessary) and
	 * default_port is expected to be provided by the application.
	 * In the case that an IP address is given, a single connection
	 * attempt is made. In the case that a name is given, multiple
	 * connection attempts may be made, in turn and according to the
	 * number of address records in DNS, until a connection succeeds.
	 * Upon a successful connection, a new GSocketConnection is constructed
	 * and returned. The caller owns this new object and must drop their
	 * reference to it when finished with it.
	 * In the event of any failure (DNS error, service not found, no hosts
	 * connectable) NULL is returned and error (if non-NULL) is set
	 * accordingly.
	 * Since 2.22
	 * Params:
	 * hostAndPort = the name and optionally port of the host to connect to
	 * defaultPort = the default port to connect to
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: a GSocketConnection on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToHost(string hostAndPort, ushort defaultPort, Cancellable cancellable)
	{
		// GSocketConnection * g_socket_client_connect_to_host (GSocketClient *client,  const gchar *host_and_port,  guint16 default_port,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_socket_client_connect_to_host(gSocketClient, Str.toStringz(hostAndPort), defaultPort, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) p);
	}
	
	/**
	 * This is the asynchronous version of g_socket_client_connect_to_host().
	 * When the operation is finished callback will be
	 * called. You can then call g_socket_client_connect_to_host_finish() to get
	 * the result of the operation.
	 * Since 2.22
	 * Params:
	 * hostAndPort = the name and optionally the port of the host to connect to
	 * defaultPort = the default port to connect to
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data for the callback. [closure]
	 */
	public void connectToHostAsync(string hostAndPort, ushort defaultPort, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_socket_client_connect_to_host_async  (GSocketClient *client,  const gchar *host_and_port,  guint16 default_port,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_socket_client_connect_to_host_async(gSocketClient, Str.toStringz(hostAndPort), defaultPort, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an async connect operation. See g_socket_client_connect_to_host_async()
	 * Since 2.22
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: a GSocketConnection on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToHostFinish(AsyncResultIF result)
	{
		// GSocketConnection * g_socket_client_connect_to_host_finish  (GSocketClient *client,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_socket_client_connect_to_host_finish(gSocketClient, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) p);
	}
	
	/**
	 * Attempts to create a TCP connection to a service.
	 * This call looks up the SRV record for service at domain for the
	 * "tcp" protocol. It then attempts to connect, in turn, to each of
	 * the hosts providing the service until either a connection succeeds
	 * or there are no hosts remaining.
	 * Upon a successful connection, a new GSocketConnection is constructed
	 * and returned. The caller owns this new object and must drop their
	 * reference to it when finished with it.
	 * In the event of any failure (DNS error, service not found, no hosts
	 * connectable) NULL is returned and error (if non-NULL) is set
	 * accordingly.
	 * Params:
	 * domain = a domain name
	 * service = the name of the service to connect to
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: a GSocketConnection if successful, or NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToService(string domain, string service, Cancellable cancellable)
	{
		// GSocketConnection * g_socket_client_connect_to_service (GSocketClient *client,  const gchar *domain,  const gchar *service,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_socket_client_connect_to_service(gSocketClient, Str.toStringz(domain), Str.toStringz(service), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) p);
	}
	
	/**
	 * This is the asynchronous version of
	 * g_socket_client_connect_to_service().
	 * Since 2.22
	 * Params:
	 * domain = a domain name
	 * service = the name of the service to connect to
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data for the callback. [closure]
	 */
	public void connectToServiceAsync(string domain, string service, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_socket_client_connect_to_service_async  (GSocketClient *client,  const gchar *domain,  const gchar *service,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_socket_client_connect_to_service_async(gSocketClient, Str.toStringz(domain), Str.toStringz(service), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an async connect operation. See g_socket_client_connect_to_service_async()
	 * Since 2.22
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: a GSocketConnection on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToServiceFinish(AsyncResultIF result)
	{
		// GSocketConnection * g_socket_client_connect_to_service_finish  (GSocketClient *client,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_socket_client_connect_to_service_finish(gSocketClient, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) p);
	}
	
	/**
	 * This is a helper function for g_socket_client_connect().
	 * Attempts to create a TCP connection with a network URI.
	 * uri may be any valid URI containing an "authority" (hostname/port)
	 * component. If a port is not specified in the URI, default_port
	 * will be used. TLS will be negotiated if "tls" is TRUE.
	 * (GSocketClient does not know to automatically assume TLS for
	 * certain URI schemes.)
	 * Using this rather than g_socket_client_connect() or
	 * g_socket_client_connect_to_host() allows GSocketClient to
	 * determine when to use application-specific proxy protocols.
	 * Upon a successful connection, a new GSocketConnection is constructed
	 * and returned. The caller owns this new object and must drop their
	 * reference to it when finished with it.
	 * In the event of any failure (DNS error, service not found, no hosts
	 * connectable) NULL is returned and error (if non-NULL) is set
	 * accordingly.
	 * Since 2.26
	 * Params:
	 * uri = A network URI
	 * defaultPort = the default port to connect to
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: a GSocketConnection on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToUri(string uri, ushort defaultPort, Cancellable cancellable)
	{
		// GSocketConnection * g_socket_client_connect_to_uri (GSocketClient *client,  const gchar *uri,  guint16 default_port,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_socket_client_connect_to_uri(gSocketClient, Str.toStringz(uri), defaultPort, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) p);
	}
	
	/**
	 * This is the asynchronous version of g_socket_client_connect_to_uri().
	 * When the operation is finished callback will be
	 * called. You can then call g_socket_client_connect_to_uri_finish() to get
	 * the result of the operation.
	 * Since 2.26
	 * Params:
	 * uri = a network uri
	 * defaultPort = the default port to connect to
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data for the callback. [closure]
	 */
	public void connectToUriAsync(string uri, ushort defaultPort, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_socket_client_connect_to_uri_async  (GSocketClient *client,  const gchar *uri,  guint16 default_port,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_socket_client_connect_to_uri_async(gSocketClient, Str.toStringz(uri), defaultPort, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an async connect operation. See g_socket_client_connect_to_uri_async()
	 * Since 2.26
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: a GSocketConnection on success, NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public SocketConnection connectToUriFinish(AsyncResultIF result)
	{
		// GSocketConnection * g_socket_client_connect_to_uri_finish  (GSocketClient *client,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_socket_client_connect_to_uri_finish(gSocketClient, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) p);
	}
	
	/**
	 * Sets the socket family of the socket client.
	 * If this is set to something other than G_SOCKET_FAMILY_INVALID
	 * then the sockets created by this object will be of the specified
	 * family.
	 * This might be useful for instance if you want to force the local
	 * connection to be an ipv4 socket, even though the address might
	 * be an ipv6 mapped to ipv4 address.
	 * Since 2.22
	 * Params:
	 * family = a GSocketFamily
	 */
	public void setFamily(GSocketFamily family)
	{
		// void g_socket_client_set_family (GSocketClient *client,  GSocketFamily family);
		g_socket_client_set_family(gSocketClient, family);
	}
	
	/**
	 * Sets the local address of the socket client.
	 * The sockets created by this object will bound to the
	 * specified address (if not NULL) before connecting.
	 * This is useful if you want to ensure that the local
	 * side of the connection is on a specific port, or on
	 * a specific interface.
	 * Since 2.22
	 * Params:
	 * address = a GSocketAddress, or NULL. [allow-none]
	 */
	public void setLocalAddress(SocketAddress address)
	{
		// void g_socket_client_set_local_address (GSocketClient *client,  GSocketAddress *address);
		g_socket_client_set_local_address(gSocketClient, (address is null) ? null : address.getSocketAddressStruct());
	}
	
	/**
	 * Sets the protocol of the socket client.
	 * The sockets created by this object will use of the specified
	 * protocol.
	 * If protocol is 0 that means to use the default
	 * protocol for the socket family and type.
	 * Since 2.22
	 * Params:
	 * protocol = a GSocketProtocol
	 */
	public void setProtocol(GSocketProtocol protocol)
	{
		// void g_socket_client_set_protocol (GSocketClient *client,  GSocketProtocol protocol);
		g_socket_client_set_protocol(gSocketClient, protocol);
	}
	
	/**
	 * Sets the socket type of the socket client.
	 * The sockets created by this object will be of the specified
	 * type.
	 * It doesn't make sense to specify a type of G_SOCKET_TYPE_DATAGRAM,
	 * as GSocketClient is used for connection oriented services.
	 * Since 2.22
	 * Params:
	 * type = a GSocketType
	 */
	public void setSocketType(GSocketType type)
	{
		// void g_socket_client_set_socket_type (GSocketClient *client,  GSocketType type);
		g_socket_client_set_socket_type(gSocketClient, type);
	}
	
	/**
	 * Sets the I/O timeout for sockets created by client. timeout is a
	 * time in seconds, or 0 for no timeout (the default).
	 * The timeout value affects the initial connection attempt as well,
	 * so setting this may cause calls to g_socket_client_connect(), etc,
	 * to fail with G_IO_ERROR_TIMED_OUT.
	 * Since 2.26
	 * Params:
	 * timeout = the timeout
	 */
	public void setTimeout(uint timeout)
	{
		// void g_socket_client_set_timeout (GSocketClient *client,  guint timeout);
		g_socket_client_set_timeout(gSocketClient, timeout);
	}
	
	/**
	 * Sets whether or not client attempts to make connections via a
	 * proxy server. When enabled (the default), GSocketClient will use a
	 * GProxyResolver to determine if a proxy protocol such as SOCKS is
	 * needed, and automatically do the necessary proxy negotiation.
	 * See also g_socket_client_set_proxy_resolver().
	 * Since 2.26
	 * Params:
	 * enable = whether to enable proxies
	 */
	public void setEnableProxy(int enable)
	{
		// void g_socket_client_set_enable_proxy (GSocketClient *client,  gboolean enable);
		g_socket_client_set_enable_proxy(gSocketClient, enable);
	}
	
	/**
	 * Overrides the GProxyResolver used by client. You can call this if
	 * you want to use specific proxies, rather than using the system
	 * default proxy settings.
	 * Note that whether or not the proxy resolver is actually used
	 * depends on the setting of "enable-proxy", which is not
	 * changed by this function (but which is TRUE by default)
	 * Since 2.36
	 * Params:
	 * proxyResolver = a GProxyResolver, or NULL for the
	 * default. [allow-none]
	 */
	public void setProxyResolver(ProxyResolverIF proxyResolver)
	{
		// void g_socket_client_set_proxy_resolver (GSocketClient *client,  GProxyResolver *proxy_resolver);
		g_socket_client_set_proxy_resolver(gSocketClient, (proxyResolver is null) ? null : proxyResolver.getProxyResolverTStruct());
	}
	
	/**
	 * Sets whether client creates TLS (aka SSL) connections. If tls is
	 * TRUE, client will wrap its connections in a GTlsClientConnection
	 * and perform a TLS handshake when connecting.
	 * Note that since GSocketClient must return a GSocketConnection,
	 * but GTlsClientConnection is not a GSocketConnection, this
	 * actually wraps the resulting GTlsClientConnection in a
	 * GTcpWrapperConnection when returning it. You can use
	 * g_tcp_wrapper_connection_get_base_io_stream() on the return value
	 * to extract the GTlsClientConnection.
	 * If you need to modify the behavior of the TLS handshake (eg, by
	 * setting a client-side certificate to use, or connecting to the
	 * "accept-certificate" signal), you can connect to
	 * client's "event" signal and wait for it to be
	 * emitted with G_SOCKET_CLIENT_TLS_HANDSHAKING, which will give you
	 * a chance to see the GTlsClientConnection before the handshake
	 * starts.
	 * Since 2.28
	 * Params:
	 * tls = whether to use TLS
	 */
	public void setTls(int tls)
	{
		// void g_socket_client_set_tls (GSocketClient *client,  gboolean tls);
		g_socket_client_set_tls(gSocketClient, tls);
	}
	
	/**
	 * Sets the TLS validation flags used when creating TLS connections
	 * via client. The default value is G_TLS_CERTIFICATE_VALIDATE_ALL.
	 * Since 2.28
	 * Params:
	 * flags = the validation flags
	 */
	public void setTlsValidationFlags(GTlsCertificateFlags flags)
	{
		// void g_socket_client_set_tls_validation_flags  (GSocketClient *client,  GTlsCertificateFlags flags);
		g_socket_client_set_tls_validation_flags(gSocketClient, flags);
	}
	
	/**
	 * Gets the socket family of the socket client.
	 * See g_socket_client_set_family() for details.
	 * Since 2.22
	 * Returns: a GSocketFamily
	 */
	public GSocketFamily getFamily()
	{
		// GSocketFamily g_socket_client_get_family (GSocketClient *client);
		return g_socket_client_get_family(gSocketClient);
	}
	
	/**
	 * Gets the local address of the socket client.
	 * See g_socket_client_set_local_address() for details.
	 * Since 2.22
	 * Returns: a GSocketAddress or NULL. Do not free. [transfer none]
	 */
	public SocketAddress getLocalAddress()
	{
		// GSocketAddress * g_socket_client_get_local_address (GSocketClient *client);
		auto p = g_socket_client_get_local_address(gSocketClient);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) p);
	}
	
	/**
	 * Gets the protocol name type of the socket client.
	 * See g_socket_client_set_protocol() for details.
	 * Since 2.22
	 * Returns: a GSocketProtocol
	 */
	public GSocketProtocol getProtocol()
	{
		// GSocketProtocol g_socket_client_get_protocol (GSocketClient *client);
		return g_socket_client_get_protocol(gSocketClient);
	}
	
	/**
	 * Gets the socket type of the socket client.
	 * See g_socket_client_set_socket_type() for details.
	 * Since 2.22
	 * Returns: a GSocketFamily
	 */
	public GSocketType getSocketType()
	{
		// GSocketType g_socket_client_get_socket_type (GSocketClient *client);
		return g_socket_client_get_socket_type(gSocketClient);
	}
	
	/**
	 * Gets the I/O timeout time for sockets created by client.
	 * See g_socket_client_set_timeout() for details.
	 * Since 2.26
	 * Returns: the timeout in seconds
	 */
	public uint getTimeout()
	{
		// guint g_socket_client_get_timeout (GSocketClient *client);
		return g_socket_client_get_timeout(gSocketClient);
	}
	
	/**
	 * Gets the proxy enable state; see g_socket_client_set_enable_proxy()
	 * Since 2.26
	 * Returns: whether proxying is enabled
	 */
	public int getEnableProxy()
	{
		// gboolean g_socket_client_get_enable_proxy (GSocketClient *client);
		return g_socket_client_get_enable_proxy(gSocketClient);
	}
	
	/**
	 * Gets the GProxyResolver being used by client. Normally, this will
	 * be the resolver returned by g_proxy_resolver_get_default(), but you
	 * can override it with g_socket_client_set_proxy_resolver().
	 * Since 2.36
	 * Returns: The GProxyResolver being used by client. [transfer none]
	 */
	public ProxyResolverIF getProxyResolver()
	{
		// GProxyResolver * g_socket_client_get_proxy_resolver (GSocketClient *client);
		auto p = g_socket_client_get_proxy_resolver(gSocketClient);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ProxyResolver)(cast(GProxyResolver*) p);
	}
	
	/**
	 * Gets whether client creates TLS connections. See
	 * g_socket_client_set_tls() for details.
	 * Since 2.28
	 * Returns: whether client uses TLS
	 */
	public int getTls()
	{
		// gboolean g_socket_client_get_tls (GSocketClient *client);
		return g_socket_client_get_tls(gSocketClient);
	}
	
	/**
	 * Gets the TLS validation flags used creating TLS connections via
	 * client.
	 * Since 2.28
	 * Returns: the TLS validation flags
	 */
	public GTlsCertificateFlags getTlsValidationFlags()
	{
		// GTlsCertificateFlags g_socket_client_get_tls_validation_flags  (GSocketClient *client);
		return g_socket_client_get_tls_validation_flags(gSocketClient);
	}
	
	/**
	 * Enable proxy protocols to be handled by the application. When the
	 * indicated proxy protocol is returned by the GProxyResolver,
	 * GSocketClient will consider this protocol as supported but will
	 * not try to find a GProxy instance to handle handshaking. The
	 * application must check for this case by calling
	 * g_socket_connection_get_remote_address() on the returned
	 * GSocketConnection, and seeing if it's a GProxyAddress of the
	 * appropriate type, to determine whether or not it needs to handle
	 * the proxy handshaking itself.
	 * This should be used for proxy protocols that are dialects of
	 * another protocol such as HTTP proxy. It also allows cohabitation of
	 * proxy protocols that are reused between protocols. A good example
	 * is HTTP. It can be used to proxy HTTP, FTP and Gopher and can also
	 * be use as generic socket proxy through the HTTP CONNECT method.
	 * When the proxy is detected as being an application proxy, TLS handshake
	 * will be skipped. This is required to let the application do the proxy
	 * specific handshake.
	 * Params:
	 * protocol = The proxy protocol
	 */
	public void addApplicationProxy(string protocol)
	{
		// void g_socket_client_add_application_proxy  (GSocketClient *client,  const gchar *protocol);
		g_socket_client_add_application_proxy(gSocketClient, Str.toStringz(protocol));
	}
}
