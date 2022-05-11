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


module soup.Server;

private import gio.IOStream;
private import gio.Socket;
private import gio.SocketAddress;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListSG;
private import glib.MainContext;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import soup.AuthDomain;
private import soup.ClientContext;
private import soup.Message;
private import soup.SSocket;
private import soup.c.functions;
public  import soup.c.types;
private import std.algorithm;


/** */
public class Server : ObjectG
{
	/** the main Gtk struct */
	protected SoupServer* soupServer;

	/** Get the main Gtk struct */
	public SoupServer* getServerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupServer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupServer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupServer* soupServer, bool ownedRef = false)
	{
		this.soupServer = soupServer;
		super(cast(GObject*)soupServer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_server_get_type();
	}

	/**
	 * Add a new client stream to the @server.
	 *
	 * Params:
	 *     stream = a #GIOStream
	 *     localAddr = the local #GSocketAddress associated with the @stream
	 *     remoteAddr = the remote #GSocketAddress associated with the @stream
	 *
	 * Returns: %TRUE on success, %FALSE if the stream could not be
	 *     accepted or any other error occurred (in which case @error will be
	 *     set).
	 *
	 * Since: 2.50
	 *
	 * Throws: GException on failure.
	 */
	public bool acceptIostream(IOStream stream, SocketAddress localAddr, SocketAddress remoteAddr)
	{
		GError* err = null;

		auto __p = soup_server_accept_iostream(soupServer, (stream is null) ? null : stream.getIOStreamStruct(), (localAddr is null) ? null : localAddr.getSocketAddressStruct(), (remoteAddr is null) ? null : remoteAddr.getSocketAddressStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Adds an authentication domain to @server. Each auth domain will
	 * have the chance to require authentication for each request that
	 * comes in; normally auth domains will require authentication for
	 * requests on certain paths that they have been set up to watch, or
	 * that meet other criteria set by the caller. If an auth domain
	 * determines that a request requires authentication (and the request
	 * doesn't contain authentication), @server will automatically reject
	 * the request with an appropriate status (401 Unauthorized or 407
	 * Proxy Authentication Required). If the request used the
	 * "100-continue" Expectation, @server will reject it before the
	 * request body is sent.
	 *
	 * Params:
	 *     authDomain = a #SoupAuthDomain
	 */
	public void addAuthDomain(AuthDomain authDomain)
	{
		soup_server_add_auth_domain(soupServer, (authDomain is null) ? null : authDomain.getAuthDomainStruct());
	}

	/**
	 * Adds an "early" handler to @server for requests under @path. Note
	 * that "normal" and "early" handlers are matched up together, so if
	 * you add a normal handler for "/foo" and an early handler for
	 * "/foo/bar", then a request to "/foo/bar" (or any path below it)
	 * will run only the early handler. (But if you add both handlers at
	 * the same path, then both will get run.)
	 *
	 * For requests under @path (that have not already been assigned a
	 * status code by a #SoupAuthDomain or a signal handler), @callback
	 * will be invoked after receiving the request headers, but before
	 * receiving the request body; the message's #SoupMessage:method and
	 * #SoupMessage:request-headers fields will be filled in.
	 *
	 * Early handlers are generally used for processing requests with
	 * request bodies in a streaming fashion. If you determine that the
	 * request will contain a message body, normally you would call
	 * soup_message_body_set_accumulate() on the message's
	 * #SoupMessage:request-body to turn off request-body accumulation,
	 * and connect to the message's #SoupMessage::got-chunk signal to
	 * process each chunk as it comes in.
	 *
	 * To complete the message processing after the full message body has
	 * been read, you can either also connect to #SoupMessage::got-body,
	 * or else you can register a non-early handler for @path as well. As
	 * long as you have not set the #SoupMessage:status-code by the time
	 * #SoupMessage::got-body is emitted, the non-early handler will be
	 * run as well.
	 *
	 * Params:
	 *     path = the toplevel path for the handler
	 *     callback = callback to invoke for requests under @path
	 *     userData = data for @callback
	 *     destroy = destroy notifier to free @user_data
	 *
	 * Since: 2.50
	 */
	public void addEarlyHandler(string path, SoupServerCallback callback, void* userData, GDestroyNotify destroy)
	{
		soup_server_add_early_handler(soupServer, Str.toStringz(path), callback, userData, destroy);
	}

	/**
	 * Adds a handler to @server for requests under @path. If @path is
	 * %NULL or "/", then this will be the default handler for all
	 * requests that don't have a more specific handler. (Note though that
	 * if you want to handle requests to the special "*" URI, you must
	 * explicitly register a handler for "*"; the default handler will not
	 * be used for that case.)
	 *
	 * For requests under @path (that have not already been assigned a
	 * status code by a #SoupAuthDomain, an early #SoupServerHandler, or a
	 * signal handler), @callback will be invoked after receiving the
	 * request body; the message's #SoupMessage:method,
	 * #SoupMessage:request-headers, and #SoupMessage:request-body fields
	 * will be filled in.
	 *
	 * After determining what to do with the request, the callback must at
	 * a minimum call soup_message_set_status() (or
	 * soup_message_set_status_full()) on the message to set the response
	 * status code. Additionally, it may set response headers and/or fill
	 * in the response body.
	 *
	 * If the callback cannot fully fill in the response before returning
	 * (eg, if it needs to wait for information from a database, or
	 * another network server), it should call soup_server_pause_message()
	 * to tell @server to not send the response right away. When the
	 * response is ready, call soup_server_unpause_message() to cause it
	 * to be sent.
	 *
	 * To send the response body a bit at a time using "chunked" encoding,
	 * first call soup_message_headers_set_encoding() to set
	 * %SOUP_ENCODING_CHUNKED on the #SoupMessage:response-headers. Then call
	 * soup_message_body_append() (or soup_message_body_append_buffer())
	 * to append each chunk as it becomes ready, and
	 * soup_server_unpause_message() to make sure it's running. (The
	 * server will automatically pause the message if it is using chunked
	 * encoding but no more chunks are available.) When you are done, call
	 * soup_message_body_complete() to indicate that no more chunks are
	 * coming.
	 *
	 * Params:
	 *     path = the toplevel path for the handler
	 *     callback = callback to invoke for requests under @path
	 *     userData = data for @callback
	 *     destroy = destroy notifier to free @user_data
	 */
	public void addHandler(string path, SoupServerCallback callback, void* userData, GDestroyNotify destroy)
	{
		soup_server_add_handler(soupServer, Str.toStringz(path), callback, userData, destroy);
	}

	/**
	 * Add support for a WebSocket extension of the given @extension_type.
	 * When a WebSocket client requests an extension of @extension_type,
	 * a new #SoupWebsocketExtension of type @extension_type will be created
	 * to handle the request.
	 *
	 * You can also add support for a WebSocket extension to the server at
	 * construct time by using the %SOUP_SERVER_ADD_WEBSOCKET_EXTENSION property.
	 * Note that #SoupWebsocketExtensionDeflate is supported by default, use
	 * soup_server_remove_websocket_extension() if you want to disable it.
	 *
	 * Params:
	 *     extensionType = a #GType
	 *
	 * Since: 2.68
	 */
	public void addWebsocketExtension(GType extensionType)
	{
		soup_server_add_websocket_extension(soupServer, extensionType);
	}

	/**
	 * Adds a WebSocket handler to @server for requests under @path. (If
	 * @path is %NULL or "/", then this will be the default handler for
	 * all requests that don't have a more specific handler.)
	 *
	 * When a path has a WebSocket handler registered, @server will check
	 * incoming requests for WebSocket handshakes after all other handlers
	 * have run (unless some earlier handler has already set a status code
	 * on the message), and update the request's status, response headers,
	 * and response body accordingly.
	 *
	 * If @origin is non-%NULL, then only requests containing a matching
	 * "Origin" header will be accepted. If @protocols is non-%NULL, then
	 * only requests containing a compatible "Sec-WebSocket-Protocols"
	 * header will be accepted. More complicated requirements can be
	 * handled by adding a normal handler to @path, and having it perform
	 * whatever checks are needed (possibly calling
	 * soup_server_check_websocket_handshake() one or more times), and
	 * setting a failure status code if the handshake should be rejected.
	 *
	 * Params:
	 *     path = the toplevel path for the handler
	 *     origin = the origin of the connection
	 *     protocols = the protocols
	 *         supported by this handler
	 *     callback = callback to invoke for successful WebSocket requests under @path
	 *     userData = data for @callback
	 *     destroy = destroy notifier to free @user_data
	 */
	public void addWebsocketHandler(string path, string origin, string[] protocols, SoupServerWebsocketCallback callback, void* userData, GDestroyNotify destroy)
	{
		soup_server_add_websocket_handler(soupServer, Str.toStringz(path), Str.toStringz(origin), Str.toStringzArray(protocols), callback, userData, destroy);
	}

	/**
	 * Closes and frees @server's listening sockets. If you are using the
	 * old #SoupServer APIs, this also includes the effect of
	 * soup_server_quit().
	 *
	 * Note that if there are currently requests in progress on @server,
	 * that they will continue to be processed if @server's #GMainContext
	 * is still running.
	 *
	 * You can call soup_server_listen(), etc, after calling this function
	 * if you want to start listening again.
	 */
	public void disconnect()
	{
		soup_server_disconnect(soupServer);
	}

	/**
	 * Gets @server's async_context, if you are using the old API. (With
	 * the new API, the server runs in the thread's thread-default
	 * #GMainContext, regardless of what this method returns.)
	 *
	 * This does not add a ref to the context, so you will need to ref it
	 * yourself if you want it to outlive its server.
	 *
	 * Deprecated: If you are using soup_server_listen(), etc, then
	 * the server listens on the thread-default #GMainContext, and this
	 * property is ignored.
	 *
	 * Returns: @server's #GMainContext,
	 *     which may be %NULL
	 */
	public MainContext getAsyncContext()
	{
		auto __p = soup_server_get_async_context(soupServer);

		if(__p is null)
		{
			return null;
		}

		return new MainContext(cast(GMainContext*) __p);
	}

	/**
	 * Gets @server's listening socket, if you are using the old API.
	 *
	 * You should treat this socket as read-only; writing to it or
	 * modifiying it may cause @server to malfunction.
	 *
	 * Deprecated: If you are using soup_server_listen(), etc, then use
	 * soup_server_get_listeners() to get a list of all listening sockets,
	 * but note that that function returns #GSockets, not #SoupSockets.
	 *
	 * Returns: the listening socket.
	 */
	public SSocket getListener()
	{
		auto __p = soup_server_get_listener(soupServer);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SSocket)(cast(SoupSocket*) __p);
	}

	/**
	 * Gets @server's list of listening sockets.
	 *
	 * You should treat these sockets as read-only; writing to or
	 * modifiying any of these sockets may cause @server to malfunction.
	 *
	 * (Beware that in contrast to the old soup_server_get_listener(), this
	 * function returns #GSockets, not #SoupSockets.)
	 *
	 * Returns: a
	 *     list of listening sockets.
	 */
	public ListSG getListeners()
	{
		auto __p = soup_server_get_listeners(soupServer);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Gets the TCP port that @server is listening on, if you are using
	 * the old API.
	 *
	 * Deprecated: If you are using soup_server_listen(), etc, then use
	 * soup_server_get_uris() to get a list of all listening addresses.
	 *
	 * Returns: the port @server is listening on.
	 */
	public uint getPort()
	{
		return soup_server_get_port(soupServer);
	}

	/**
	 * Gets a list of URIs corresponding to the interfaces @server is
	 * listening on. These will contain IP addresses, not hostnames, and
	 * will also indicate whether the given listener is http or https.
	 *
	 * Note that if you used soup_server_listen_all(), the returned URIs
	 * will use the addresses <literal>0.0.0.0</literal> and
	 * <literal>::</literal>, rather than actually returning separate URIs
	 * for each interface on the system.
	 *
	 * Returns: a list of
	 *     #SoupURIs, which you must free when you are done with it.
	 *
	 * Since: 2.48
	 */
	public ListSG getUris()
	{
		auto __p = soup_server_get_uris(soupServer);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p, true);
	}

	/**
	 * Checks whether @server is capable of https.
	 *
	 * In order for a server to run https, you must call
	 * soup_server_set_ssl_cert_file(), or set the
	 * #SoupServer:tls-certificate property, to provide it with a
	 * certificate to use.
	 *
	 * If you are using the deprecated single-listener APIs, then a return
	 * value of %TRUE indicates that the #SoupServer serves https
	 * exclusively. If you are using soup_server_listen(), etc, then a
	 * %TRUE return value merely indicates that the server is
	 * <emphasis>able</emphasis> to do https, regardless of whether it
	 * actually currently is or not. Use soup_server_get_uris() to see if
	 * it currently has any https listeners.
	 *
	 * Returns: %TRUE if @server is configured to serve https.
	 */
	public bool isHttps()
	{
		return soup_server_is_https(soupServer) != 0;
	}

	/**
	 * This attempts to set up @server to listen for connections on
	 * @address.
	 *
	 * If @options includes %SOUP_SERVER_LISTEN_HTTPS, and @server has
	 * been configured for TLS, then @server will listen for https
	 * connections on this port. Otherwise it will listen for plain http.
	 *
	 * You may call this method (along with the other "listen" methods)
	 * any number of times on a server, if you want to listen on multiple
	 * ports, or set up both http and https service.
	 *
	 * After calling this method, @server will begin accepting and
	 * processing connections as soon as the appropriate #GMainContext is
	 * run.
	 *
	 * Note that #SoupServer never makes use of dual IPv4/IPv6 sockets; if
	 * @address is an IPv6 address, it will only accept IPv6 connections.
	 * You must configure IPv4 listening separately.
	 *
	 * Params:
	 *     address = the address of the interface to listen on
	 *     options = listening options for this server
	 *
	 * Returns: %TRUE on success, %FALSE if @address could not be
	 *     bound or any other error occurred (in which case @error will be
	 *     set).
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool listen(SocketAddress address, SoupServerListenOptions options)
	{
		GError* err = null;

		auto __p = soup_server_listen(soupServer, (address is null) ? null : address.getSocketAddressStruct(), options, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This attempts to set up @server to listen for connections on all
	 * interfaces on the system. (That is, it listens on the addresses
	 * <literal>0.0.0.0</literal> and/or <literal>::</literal>, depending
	 * on whether @options includes %SOUP_SERVER_LISTEN_IPV4_ONLY,
	 * %SOUP_SERVER_LISTEN_IPV6_ONLY, or neither.) If @port is specified,
	 * @server will listen on that port. If it is 0, @server will find an
	 * unused port to listen on. (In that case, you can use
	 * soup_server_get_uris() to find out what port it ended up choosing.)
	 *
	 * See soup_server_listen() for more details.
	 *
	 * Params:
	 *     port = the port to listen on, or 0
	 *     options = listening options for this server
	 *
	 * Returns: %TRUE on success, %FALSE if @port could not be bound
	 *     or any other error occurred (in which case @error will be set).
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool listenAll(uint port, SoupServerListenOptions options)
	{
		GError* err = null;

		auto __p = soup_server_listen_all(soupServer, port, options, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This attempts to set up @server to listen for connections on
	 * @fd.
	 *
	 * See soup_server_listen() for more details.
	 *
	 * Note that @server will close @fd when you free it or call
	 * soup_server_disconnect().
	 *
	 * Params:
	 *     fd = the file descriptor of a listening socket
	 *     options = listening options for this server
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred (in
	 *     which case @error will be set).
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool listenFd(int fd, SoupServerListenOptions options)
	{
		GError* err = null;

		auto __p = soup_server_listen_fd(soupServer, fd, options, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This attempts to set up @server to listen for connections on
	 * "localhost" (that is, <literal>127.0.0.1</literal> and/or
	 * <literal>::1</literal>, depending on whether @options includes
	 * %SOUP_SERVER_LISTEN_IPV4_ONLY, %SOUP_SERVER_LISTEN_IPV6_ONLY, or
	 * neither). If @port is specified, @server will listen on that port.
	 * If it is 0, @server will find an unused port to listen on. (In that
	 * case, you can use soup_server_get_uris() to find out what port it
	 * ended up choosing.)
	 *
	 * See soup_server_listen() for more details.
	 *
	 * Params:
	 *     port = the port to listen on, or 0
	 *     options = listening options for this server
	 *
	 * Returns: %TRUE on success, %FALSE if @port could not be bound
	 *     or any other error occurred (in which case @error will be set).
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool listenLocal(uint port, SoupServerListenOptions options)
	{
		GError* err = null;

		auto __p = soup_server_listen_local(soupServer, port, options, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This attempts to set up @server to listen for connections on
	 * @socket.
	 *
	 * See soup_server_listen() for more details.
	 *
	 * Params:
	 *     socket = a listening #GSocket
	 *     options = listening options for this server
	 *
	 * Returns: %TRUE on success, %FALSE if an error occurred (in
	 *     which case @error will be set).
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool listenSocket(Socket socket, SoupServerListenOptions options)
	{
		GError* err = null;

		auto __p = soup_server_listen_socket(soupServer, (socket is null) ? null : socket.getSocketStruct(), options, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Pauses I/O on @msg. This can be used when you need to return from
	 * the server handler without having the full response ready yet. Use
	 * soup_server_unpause_message() to resume I/O.
	 *
	 * This must only be called on #SoupMessages which were created by the
	 * #SoupServer and are currently doing I/O, such as those passed into a
	 * #SoupServerCallback or emitted in a #SoupServer::request-read signal.
	 *
	 * Params:
	 *     msg = a #SoupMessage associated with @server.
	 */
	public void pauseMessage(Message msg)
	{
		soup_server_pause_message(soupServer, (msg is null) ? null : msg.getMessageStruct());
	}

	/**
	 * Stops processing for @server, if you are using the old API. Call
	 * this to clean up after soup_server_run_async(), or to terminate a
	 * call to soup_server_run().
	 *
	 * Note that messages currently in progress will continue to be
	 * handled, if the main loop associated with the server is resumed or
	 * kept running.
	 *
	 * @server is still in a working state after this call; you can start
	 * and stop a server as many times as you want.
	 *
	 * Deprecated: When using soup_server_listen(), etc, the server will
	 * always listen for connections, and will process them whenever the
	 * thread-default #GMainContext is running.
	 */
	public void quit()
	{
		soup_server_quit(soupServer);
	}

	/**
	 * Removes @auth_domain from @server.
	 *
	 * Params:
	 *     authDomain = a #SoupAuthDomain
	 */
	public void removeAuthDomain(AuthDomain authDomain)
	{
		soup_server_remove_auth_domain(soupServer, (authDomain is null) ? null : authDomain.getAuthDomainStruct());
	}

	/**
	 * Removes all handlers (early and normal) registered at @path.
	 *
	 * Params:
	 *     path = the toplevel path for the handler
	 */
	public void removeHandler(string path)
	{
		soup_server_remove_handler(soupServer, Str.toStringz(path));
	}

	/**
	 * Removes support for WebSocket extension of type @extension_type (or any subclass of
	 * @extension_type) from @server. You can also remove extensions enabled by default
	 * from the server at construct time by using the %SOUP_SERVER_REMOVE_WEBSOCKET_EXTENSION
	 * property.
	 *
	 * Params:
	 *     extensionType = a #GType
	 *
	 * Since: 2.68
	 */
	public void removeWebsocketExtension(GType extensionType)
	{
		soup_server_remove_websocket_extension(soupServer, extensionType);
	}

	/**
	 * Starts @server, if you are using the old API, causing it to listen
	 * for and process incoming connections. Unlike
	 * soup_server_run_async(), this creates a #GMainLoop and runs it, and
	 * it will not return until someone calls soup_server_quit() to stop
	 * the server.
	 *
	 * Deprecated: When using soup_server_listen(), etc, the server will
	 * always listen for connections, and will process them whenever the
	 * thread-default #GMainContext is running.
	 */
	public void run()
	{
		soup_server_run(soupServer);
	}

	/**
	 * Starts @server, if you are using the old API, causing it to listen
	 * for and process incoming connections.
	 *
	 * The server runs in @server's #GMainContext. It will not actually
	 * perform any processing unless the appropriate main loop is running.
	 * In the simple case where you did not set the server's
	 * %SOUP_SERVER_ASYNC_CONTEXT property, this means the server will run
	 * whenever the glib main loop is running.
	 *
	 * Deprecated: When using soup_server_listen(), etc, the server will
	 * always listen for connections, and will process them whenever the
	 * thread-default #GMainContext is running.
	 */
	public void runAsync()
	{
		soup_server_run_async(soupServer);
	}

	/**
	 * Sets @server up to do https, using the SSL/TLS certificate
	 * specified by @ssl_cert_file and @ssl_key_file (which may point to
	 * the same file).
	 *
	 * Alternatively, you can set the #SoupServer:tls-certificate property
	 * at construction time, if you already have a #GTlsCertificate.
	 *
	 * Params:
	 *     sslCertFile = path to a file containing a PEM-encoded SSL/TLS
	 *         certificate.
	 *     sslKeyFile = path to a file containing a PEM-encoded private key.
	 *
	 * Returns: success or failure.
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool setSslCertFile(string sslCertFile, string sslKeyFile)
	{
		GError* err = null;

		auto __p = soup_server_set_ssl_cert_file(soupServer, Str.toStringz(sslCertFile), Str.toStringz(sslKeyFile), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Resumes I/O on @msg. Use this to resume after calling
	 * soup_server_pause_message(), or after adding a new chunk to a
	 * chunked response.
	 *
	 * I/O won't actually resume until you return to the main loop.
	 *
	 * This must only be called on #SoupMessages which were created by the
	 * #SoupServer and are currently doing I/O, such as those passed into a
	 * #SoupServerCallback or emitted in a #SoupServer::request-read signal.
	 *
	 * Params:
	 *     msg = a #SoupMessage associated with @server.
	 */
	public void unpauseMessage(Message msg)
	{
		soup_server_unpause_message(soupServer, (msg is null) ? null : msg.getMessageStruct());
	}

	/**
	 * Emitted when processing has failed for a message; this
	 * could mean either that it could not be read (if
	 * #SoupServer::request_read has not been emitted for it yet),
	 * or that the response could not be written back (if
	 * #SoupServer::request_read has been emitted but
	 * #SoupServer::request_finished has not been).
	 *
	 * @message is in an undefined state when this signal is
	 * emitted; the signal exists primarily to allow the server to
	 * free any state that it may have allocated in
	 * #SoupServer::request_started.
	 *
	 * Params:
	 *     message = the message
	 *     client = the client context
	 */
	gulong addOnRequestAborted(void delegate(Message, ClientContext, Server) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "request-aborted", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the server has finished writing a response to
	 * a request.
	 *
	 * Params:
	 *     message = the message
	 *     client = the client context
	 */
	gulong addOnRequestFinished(void delegate(Message, ClientContext, Server) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "request-finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the server has successfully read a request.
	 * @message will have all of its request-side information
	 * filled in, and if the message was authenticated, @client
	 * will have information about that. This signal is emitted
	 * before any (non-early) handlers are called for the message,
	 * and if it sets the message's #status_code, then normal
	 * handler processing will be skipped.
	 *
	 * Params:
	 *     message = the message
	 *     client = the client context
	 */
	gulong addOnRequestRead(void delegate(Message, ClientContext, Server) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "request-read", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the server has started reading a new request.
	 * @message will be completely blank; not even the
	 * Request-Line will have been read yet. About the only thing
	 * you can usefully do with it is connect to its signals.
	 *
	 * If the request is read successfully, this will eventually
	 * be followed by a #SoupServer::request_read signal. If a
	 * response is then sent, the request processing will end with
	 * a #SoupServer::request_finished signal. If a network error
	 * occurs, the processing will instead end with
	 * #SoupServer::request_aborted.
	 *
	 * Params:
	 *     message = the new message
	 *     client = the client context
	 */
	gulong addOnRequestStarted(void delegate(Message, ClientContext, Server) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "request-started", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
