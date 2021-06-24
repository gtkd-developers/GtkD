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


module gio.Socket;

private import gio.Cancellable;
private import gio.Credentials;
private import gio.DatagramBasedIF;
private import gio.DatagramBasedT;
private import gio.InetAddress;
private import gio.InitableIF;
private import gio.InitableT;
private import gio.SocketAddress;
private import gio.SocketConnection;
private import gio.SocketControlMessage;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Source;
private import glib.Str;
private import gobject.ObjectG;


/**
 * A #GSocket is a low-level networking primitive. It is a more or less
 * direct mapping of the BSD socket API in a portable GObject based API.
 * It supports both the UNIX socket implementations and winsock2 on Windows.
 * 
 * #GSocket is the platform independent base upon which the higher level
 * network primitives are based. Applications are not typically meant to
 * use it directly, but rather through classes like #GSocketClient,
 * #GSocketService and #GSocketConnection. However there may be cases where
 * direct use of #GSocket is useful.
 * 
 * #GSocket implements the #GInitable interface, so if it is manually constructed
 * by e.g. g_object_new() you must call g_initable_init() and check the
 * results before using the object. This is done automatically in
 * g_socket_new() and g_socket_new_from_fd(), so these functions can return
 * %NULL.
 * 
 * Sockets operate in two general modes, blocking or non-blocking. When
 * in blocking mode all operations (which don’t take an explicit blocking
 * parameter) block until the requested operation
 * is finished or there is an error. In non-blocking mode all calls that
 * would block return immediately with a %G_IO_ERROR_WOULD_BLOCK error.
 * To know when a call would successfully run you can call g_socket_condition_check(),
 * or g_socket_condition_wait(). You can also use g_socket_create_source() and
 * attach it to a #GMainContext to get callbacks when I/O is possible.
 * Note that all sockets are always set to non blocking mode in the system, and
 * blocking mode is emulated in GSocket.
 * 
 * When working in non-blocking mode applications should always be able to
 * handle getting a %G_IO_ERROR_WOULD_BLOCK error even when some other
 * function said that I/O was possible. This can easily happen in case
 * of a race condition in the application, but it can also happen for other
 * reasons. For instance, on Windows a socket is always seen as writable
 * until a write returns %G_IO_ERROR_WOULD_BLOCK.
 * 
 * #GSockets can be either connection oriented or datagram based.
 * For connection oriented types you must first establish a connection by
 * either connecting to an address or accepting a connection from another
 * address. For connectionless socket types the target/source address is
 * specified or received in each I/O operation.
 * 
 * All socket file descriptors are set to be close-on-exec.
 * 
 * Note that creating a #GSocket causes the signal %SIGPIPE to be
 * ignored for the remainder of the program. If you are writing a
 * command-line utility that uses #GSocket, you may need to take into
 * account the fact that your program will not automatically be killed
 * if it tries to write to %stdout after it has been closed.
 * 
 * Like most other APIs in GLib, #GSocket is not inherently thread safe. To use
 * a #GSocket concurrently from multiple threads, you must implement your own
 * locking.
 *
 * Since: 2.22
 */
public class Socket : ObjectG, DatagramBasedIF, InitableIF
{
	/** the main Gtk struct */
	protected GSocket* gSocket;

	/** Get the main Gtk struct */
	public GSocket* getSocketStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSocket;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocket;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSocket* gSocket, bool ownedRef = false)
	{
		this.gSocket = gSocket;
		super(cast(GObject*)gSocket, ownedRef);
	}

	// add the DatagramBased capabilities
	mixin DatagramBasedT!(GSocket);

	// add the Initable capabilities
	mixin InitableT!(GSocket);


	/** */
	public static GType getType()
	{
		return g_socket_get_type();
	}

	/**
	 * Creates a new #GSocket with the defined family, type and protocol.
	 * If @protocol is 0 (%G_SOCKET_PROTOCOL_DEFAULT) the default protocol type
	 * for the family and type is used.
	 *
	 * The @protocol is a family and type specific int that specifies what
	 * kind of protocol to use. #GSocketProtocol lists several common ones.
	 * Many families only support one protocol, and use 0 for this, others
	 * support several and using 0 means to use the default protocol for
	 * the family and type.
	 *
	 * The protocol id is passed directly to the operating
	 * system, so you can use protocols not listed in #GSocketProtocol if you
	 * know the protocol number used for it.
	 *
	 * Params:
	 *     family = the socket family to use, e.g. %G_SOCKET_FAMILY_IPV4.
	 *     type = the socket type to use.
	 *     protocol = the id of the protocol to use, or 0 for default.
	 *
	 * Returns: a #GSocket or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GSocketFamily family, GSocketType type, GSocketProtocol protocol)
	{
		GError* err = null;

		auto __p = g_socket_new(family, type, protocol, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSocket*) __p, true);
	}

	/**
	 * Creates a new #GSocket from a native file descriptor
	 * or winsock SOCKET handle.
	 *
	 * This reads all the settings from the file descriptor so that
	 * all properties should work. Note that the file descriptor
	 * will be set to non-blocking mode, independent on the blocking
	 * mode of the #GSocket.
	 *
	 * On success, the returned #GSocket takes ownership of @fd. On failure, the
	 * caller must close @fd themselves.
	 *
	 * Since GLib 2.46, it is no longer a fatal error to call this on a non-socket
	 * descriptor.  Instead, a GError will be set with code %G_IO_ERROR_FAILED
	 *
	 * Params:
	 *     fd = a native socket file descriptor.
	 *
	 * Returns: a #GSocket or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int fd)
	{
		GError* err = null;

		auto __p = g_socket_new_from_fd(fd, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_fd");
		}

		this(cast(GSocket*) __p, true);
	}

	/**
	 * Accept incoming connections on a connection-based socket. This removes
	 * the first outstanding connection request from the listening socket and
	 * creates a #GSocket object for it.
	 *
	 * The @socket must be bound to a local address with g_socket_bind() and
	 * must be listening for incoming connections (g_socket_listen()).
	 *
	 * If there are no outstanding connections then the operation will block
	 * or return %G_IO_ERROR_WOULD_BLOCK if non-blocking I/O is enabled.
	 * To be notified of an incoming connection, wait for the %G_IO_IN condition.
	 *
	 * Params:
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: a new #GSocket, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public Socket accept(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_accept(gSocket, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Socket)(cast(GSocket*) __p, true);
	}

	/**
	 * When a socket is created it is attached to an address family, but it
	 * doesn't have an address in this family. g_socket_bind() assigns the
	 * address (sometimes called name) of the socket.
	 *
	 * It is generally required to bind to a local address before you can
	 * receive connections. (See g_socket_listen() and g_socket_accept() ).
	 * In certain situations, you may also want to bind a socket that will be
	 * used to initiate connections, though this is not normally required.
	 *
	 * If @socket is a TCP socket, then @allow_reuse controls the setting
	 * of the `SO_REUSEADDR` socket option; normally it should be %TRUE for
	 * server sockets (sockets that you will eventually call
	 * g_socket_accept() on), and %FALSE for client sockets. (Failing to
	 * set this flag on a server socket may cause g_socket_bind() to return
	 * %G_IO_ERROR_ADDRESS_IN_USE if the server program is stopped and then
	 * immediately restarted.)
	 *
	 * If @socket is a UDP socket, then @allow_reuse determines whether or
	 * not other UDP sockets can be bound to the same address at the same
	 * time. In particular, you can have several UDP sockets bound to the
	 * same address, and they will all receive all of the multicast and
	 * broadcast packets sent to that address. (The behavior of unicast
	 * UDP packets to an address with multiple listeners is not defined.)
	 *
	 * Params:
	 *     address = a #GSocketAddress specifying the local address.
	 *     allowReuse = whether to allow reusing this address
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool bind(SocketAddress address, bool allowReuse)
	{
		GError* err = null;

		auto __p = g_socket_bind(gSocket, (address is null) ? null : address.getSocketAddressStruct(), allowReuse, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Checks and resets the pending connect error for the socket.
	 * This is used to check for errors when g_socket_connect() is
	 * used in non-blocking mode.
	 *
	 * Returns: %TRUE if no error, %FALSE otherwise, setting @error to the error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool checkConnectResult()
	{
		GError* err = null;

		auto __p = g_socket_check_connect_result(gSocket, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Closes the socket, shutting down any active connection.
	 *
	 * Closing a socket does not wait for all outstanding I/O operations
	 * to finish, so the caller should not rely on them to be guaranteed
	 * to complete even if the close returns with no error.
	 *
	 * Once the socket is closed, all other operations will return
	 * %G_IO_ERROR_CLOSED. Closing a socket multiple times will not
	 * return an error.
	 *
	 * Sockets will be automatically closed when the last reference
	 * is dropped, but you might want to call this function to make sure
	 * resources are released as early as possible.
	 *
	 * Beware that due to the way that TCP works, it is possible for
	 * recently-sent data to be lost if either you close a socket while the
	 * %G_IO_IN condition is set, or else if the remote connection tries to
	 * send something to you after you close the socket but before it has
	 * finished reading all of the data you sent. There is no easy generic
	 * way to avoid this problem; the easiest fix is to design the network
	 * protocol such that the client will never send data "out of turn".
	 * Another solution is for the server to half-close the connection by
	 * calling g_socket_shutdown() with only the @shutdown_write flag set,
	 * and then wait for the client to notice this and close its side of the
	 * connection, after which the server can safely call g_socket_close().
	 * (This is what #GTcpConnection does if you call
	 * g_tcp_connection_set_graceful_disconnect(). But of course, this
	 * only works if the client will close its connection after the server
	 * does.)
	 *
	 * Returns: %TRUE on success, %FALSE on error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool close()
	{
		GError* err = null;

		auto __p = g_socket_close(gSocket, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Checks on the readiness of @socket to perform operations.
	 * The operations specified in @condition are checked for and masked
	 * against the currently-satisfied conditions on @socket. The result
	 * is returned.
	 *
	 * Note that on Windows, it is possible for an operation to return
	 * %G_IO_ERROR_WOULD_BLOCK even immediately after
	 * g_socket_condition_check() has claimed that the socket is ready for
	 * writing. Rather than calling g_socket_condition_check() and then
	 * writing to the socket if it succeeds, it is generally better to
	 * simply try writing to the socket right away, and try again later if
	 * the initial attempt returns %G_IO_ERROR_WOULD_BLOCK.
	 *
	 * It is meaningless to specify %G_IO_ERR or %G_IO_HUP in condition;
	 * these conditions will always be set in the output if they are true.
	 *
	 * This call never blocks.
	 *
	 * Params:
	 *     condition = a #GIOCondition mask to check
	 *
	 * Returns: the @GIOCondition mask of the current state
	 *
	 * Since: 2.22
	 */
	public GIOCondition conditionCheck(GIOCondition condition)
	{
		return g_socket_condition_check(gSocket, condition);
	}

	/**
	 * Waits for up to @timeout_us microseconds for @condition to become true
	 * on @socket. If the condition is met, %TRUE is returned.
	 *
	 * If @cancellable is cancelled before the condition is met, or if
	 * @timeout_us (or the socket's #GSocket:timeout) is reached before the
	 * condition is met, then %FALSE is returned and @error, if non-%NULL,
	 * is set to the appropriate value (%G_IO_ERROR_CANCELLED or
	 * %G_IO_ERROR_TIMED_OUT).
	 *
	 * If you don't want a timeout, use g_socket_condition_wait().
	 * (Alternatively, you can pass -1 for @timeout_us.)
	 *
	 * Note that although @timeout_us is in microseconds for consistency with
	 * other GLib APIs, this function actually only has millisecond
	 * resolution, and the behavior is undefined if @timeout_us is not an
	 * exact number of milliseconds.
	 *
	 * Params:
	 *     condition = a #GIOCondition mask to wait for
	 *     timeoutUs = the maximum time (in microseconds) to wait, or -1
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %TRUE if the condition was met, %FALSE otherwise
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public bool conditionTimedWait(GIOCondition condition, long timeoutUs, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_condition_timed_wait(gSocket, condition, timeoutUs, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Waits for @condition to become true on @socket. When the condition
	 * is met, %TRUE is returned.
	 *
	 * If @cancellable is cancelled before the condition is met, or if the
	 * socket has a timeout set and it is reached before the condition is
	 * met, then %FALSE is returned and @error, if non-%NULL, is set to
	 * the appropriate value (%G_IO_ERROR_CANCELLED or
	 * %G_IO_ERROR_TIMED_OUT).
	 *
	 * See also g_socket_condition_timed_wait().
	 *
	 * Params:
	 *     condition = a #GIOCondition mask to wait for
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %TRUE if the condition was met, %FALSE otherwise
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool conditionWait(GIOCondition condition, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_condition_wait(gSocket, condition, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Connect the socket to the specified remote address.
	 *
	 * For connection oriented socket this generally means we attempt to make
	 * a connection to the @address. For a connection-less socket it sets
	 * the default address for g_socket_send() and discards all incoming datagrams
	 * from other sources.
	 *
	 * Generally connection oriented sockets can only connect once, but
	 * connection-less sockets can connect multiple times to change the
	 * default address.
	 *
	 * If the connect call needs to do network I/O it will block, unless
	 * non-blocking I/O is enabled. Then %G_IO_ERROR_PENDING is returned
	 * and the user can be notified of the connection finishing by waiting
	 * for the G_IO_OUT condition. The result of the connection must then be
	 * checked with g_socket_check_connect_result().
	 *
	 * Params:
	 *     address = a #GSocketAddress specifying the remote address.
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: %TRUE if connected, %FALSE on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool connect(SocketAddress address, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_connect(gSocket, (address is null) ? null : address.getSocketAddressStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Creates a #GSocketConnection subclass of the right type for
	 * @socket.
	 *
	 * Returns: a #GSocketConnection
	 *
	 * Since: 2.22
	 */
	public SocketConnection connectionFactoryCreateConnection()
	{
		auto __p = g_socket_connection_factory_create_connection(gSocket);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketConnection)(cast(GSocketConnection*) __p, true);
	}

	/**
	 * Creates a #GSource that can be attached to a %GMainContext to monitor
	 * for the availability of the specified @condition on the socket. The #GSource
	 * keeps a reference to the @socket.
	 *
	 * The callback on the source is of the #GSocketSourceFunc type.
	 *
	 * It is meaningless to specify %G_IO_ERR or %G_IO_HUP in @condition;
	 * these conditions will always be reported output if they are true.
	 *
	 * @cancellable if not %NULL can be used to cancel the source, which will
	 * cause the source to trigger, reporting the current condition (which
	 * is likely 0 unless cancellation happened at the same time as a
	 * condition change). You can check for this in the callback using
	 * g_cancellable_is_cancelled().
	 *
	 * If @socket has a timeout set, and it is reached before @condition
	 * occurs, the source will then trigger anyway, reporting %G_IO_IN or
	 * %G_IO_OUT depending on @condition. However, @socket will have been
	 * marked as having had a timeout, and so the next #GSocket I/O method
	 * you call will then fail with a %G_IO_ERROR_TIMED_OUT.
	 *
	 * Params:
	 *     condition = a #GIOCondition mask to monitor
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: a newly allocated %GSource, free with g_source_unref().
	 *
	 * Since: 2.22
	 */
	public Source createSource(GIOCondition condition, Cancellable cancellable)
	{
		auto __p = g_socket_create_source(gSocket, condition, (cancellable is null) ? null : cancellable.getCancellableStruct());

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p, true);
	}

	/**
	 * Get the amount of data pending in the OS input buffer, without blocking.
	 *
	 * If @socket is a UDP or SCTP socket, this will return the size of
	 * just the next packet, even if additional packets are buffered after
	 * that one.
	 *
	 * Note that on Windows, this function is rather inefficient in the
	 * UDP case, and so if you know any plausible upper bound on the size
	 * of the incoming packet, it is better to just do a
	 * g_socket_receive() with a buffer of that size, rather than calling
	 * g_socket_get_available_bytes() first and then doing a receive of
	 * exactly the right size.
	 *
	 * Returns: the number of bytes that can be read from the socket
	 *     without blocking or truncating, or -1 on error.
	 *
	 * Since: 2.32
	 */
	public ptrdiff_t getAvailableBytes()
	{
		return g_socket_get_available_bytes(gSocket);
	}

	/**
	 * Gets the blocking mode of the socket. For details on blocking I/O,
	 * see g_socket_set_blocking().
	 *
	 * Returns: %TRUE if blocking I/O is used, %FALSE otherwise.
	 *
	 * Since: 2.22
	 */
	public bool getBlocking()
	{
		return g_socket_get_blocking(gSocket) != 0;
	}

	/**
	 * Gets the broadcast setting on @socket; if %TRUE,
	 * it is possible to send packets to broadcast
	 * addresses.
	 *
	 * Returns: the broadcast setting on @socket
	 *
	 * Since: 2.32
	 */
	public bool getBroadcast()
	{
		return g_socket_get_broadcast(gSocket) != 0;
	}

	/**
	 * Returns the credentials of the foreign process connected to this
	 * socket, if any (e.g. it is only supported for %G_SOCKET_FAMILY_UNIX
	 * sockets).
	 *
	 * If this operation isn't supported on the OS, the method fails with
	 * the %G_IO_ERROR_NOT_SUPPORTED error. On Linux this is implemented
	 * by reading the %SO_PEERCRED option on the underlying socket.
	 *
	 * This method can be expected to be available on the following platforms:
	 *
	 * - Linux since GLib 2.26
	 * - OpenBSD since GLib 2.30
	 * - Solaris, Illumos and OpenSolaris since GLib 2.40
	 * - NetBSD since GLib 2.42
	 * - macOS, tvOS, iOS since GLib 2.66
	 *
	 * Other ways to obtain credentials from a foreign peer includes the
	 * #GUnixCredentialsMessage type and
	 * g_unix_connection_send_credentials() /
	 * g_unix_connection_receive_credentials() functions.
	 *
	 * Returns: %NULL if @error is set, otherwise a #GCredentials object
	 *     that must be freed with g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public Credentials getCredentials()
	{
		GError* err = null;

		auto __p = g_socket_get_credentials(gSocket, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Credentials)(cast(GCredentials*) __p, true);
	}

	/**
	 * Gets the socket family of the socket.
	 *
	 * Returns: a #GSocketFamily
	 *
	 * Since: 2.22
	 */
	public GSocketFamily getFamily()
	{
		return g_socket_get_family(gSocket);
	}

	/**
	 * Returns the underlying OS socket object. On unix this
	 * is a socket file descriptor, and on Windows this is
	 * a Winsock2 SOCKET handle. This may be useful for
	 * doing platform specific or otherwise unusual operations
	 * on the socket.
	 *
	 * Returns: the file descriptor of the socket.
	 *
	 * Since: 2.22
	 */
	public int getFd()
	{
		return g_socket_get_fd(gSocket);
	}

	/**
	 * Gets the keepalive mode of the socket. For details on this,
	 * see g_socket_set_keepalive().
	 *
	 * Returns: %TRUE if keepalive is active, %FALSE otherwise.
	 *
	 * Since: 2.22
	 */
	public bool getKeepalive()
	{
		return g_socket_get_keepalive(gSocket) != 0;
	}

	/**
	 * Gets the listen backlog setting of the socket. For details on this,
	 * see g_socket_set_listen_backlog().
	 *
	 * Returns: the maximum number of pending connections.
	 *
	 * Since: 2.22
	 */
	public int getListenBacklog()
	{
		return g_socket_get_listen_backlog(gSocket);
	}

	/**
	 * Try to get the local address of a bound socket. This is only
	 * useful if the socket has been bound to a local address,
	 * either explicitly or implicitly when connecting.
	 *
	 * Returns: a #GSocketAddress or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketAddress getLocalAddress()
	{
		GError* err = null;

		auto __p = g_socket_get_local_address(gSocket, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) __p, true);
	}

	/**
	 * Gets the multicast loopback setting on @socket; if %TRUE (the
	 * default), outgoing multicast packets will be looped back to
	 * multicast listeners on the same host.
	 *
	 * Returns: the multicast loopback setting on @socket
	 *
	 * Since: 2.32
	 */
	public bool getMulticastLoopback()
	{
		return g_socket_get_multicast_loopback(gSocket) != 0;
	}

	/**
	 * Gets the multicast time-to-live setting on @socket; see
	 * g_socket_set_multicast_ttl() for more details.
	 *
	 * Returns: the multicast time-to-live setting on @socket
	 *
	 * Since: 2.32
	 */
	public uint getMulticastTtl()
	{
		return g_socket_get_multicast_ttl(gSocket);
	}

	/**
	 * Gets the value of an integer-valued option on @socket, as with
	 * getsockopt(). (If you need to fetch a  non-integer-valued option,
	 * you will need to call getsockopt() directly.)
	 *
	 * The [<gio/gnetworking.h>][gio-gnetworking.h]
	 * header pulls in system headers that will define most of the
	 * standard/portable socket options. For unusual socket protocols or
	 * platform-dependent options, you may need to include additional
	 * headers.
	 *
	 * Note that even for socket options that are a single byte in size,
	 * @value is still a pointer to a #gint variable, not a #guchar;
	 * g_socket_get_option() will handle the conversion internally.
	 *
	 * Params:
	 *     level = the "API level" of the option (eg, `SOL_SOCKET`)
	 *     optname = the "name" of the option (eg, `SO_BROADCAST`)
	 *     value = return location for the option value
	 *
	 * Returns: success or failure. On failure, @error will be set, and
	 *     the system error value (`errno` or WSAGetLastError()) will still
	 *     be set to the result of the getsockopt() call.
	 *
	 * Since: 2.36
	 *
	 * Throws: GException on failure.
	 */
	public bool getOption(int level, int optname, out int value)
	{
		GError* err = null;

		auto __p = g_socket_get_option(gSocket, level, optname, &value, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Gets the socket protocol id the socket was created with.
	 * In case the protocol is unknown, -1 is returned.
	 *
	 * Returns: a protocol id, or -1 if unknown
	 *
	 * Since: 2.22
	 */
	public GSocketProtocol getProtocol()
	{
		return g_socket_get_protocol(gSocket);
	}

	/**
	 * Try to get the remote address of a connected socket. This is only
	 * useful for connection oriented sockets that have been connected.
	 *
	 * Returns: a #GSocketAddress or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public SocketAddress getRemoteAddress()
	{
		GError* err = null;

		auto __p = g_socket_get_remote_address(gSocket, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) __p, true);
	}

	/**
	 * Gets the socket type of the socket.
	 *
	 * Returns: a #GSocketType
	 *
	 * Since: 2.22
	 */
	public GSocketType getSocketType()
	{
		return g_socket_get_socket_type(gSocket);
	}

	/**
	 * Gets the timeout setting of the socket. For details on this, see
	 * g_socket_set_timeout().
	 *
	 * Returns: the timeout in seconds
	 *
	 * Since: 2.26
	 */
	public uint getTimeout()
	{
		return g_socket_get_timeout(gSocket);
	}

	/**
	 * Gets the unicast time-to-live setting on @socket; see
	 * g_socket_set_ttl() for more details.
	 *
	 * Returns: the time-to-live setting on @socket
	 *
	 * Since: 2.32
	 */
	public uint getTtl()
	{
		return g_socket_get_ttl(gSocket);
	}

	/**
	 * Checks whether a socket is closed.
	 *
	 * Returns: %TRUE if socket is closed, %FALSE otherwise
	 *
	 * Since: 2.22
	 */
	public bool isClosed()
	{
		return g_socket_is_closed(gSocket) != 0;
	}

	/**
	 * Check whether the socket is connected. This is only useful for
	 * connection-oriented sockets.
	 *
	 * If using g_socket_shutdown(), this function will return %TRUE until the
	 * socket has been shut down for reading and writing. If you do a non-blocking
	 * connect, this function will not return %TRUE until after you call
	 * g_socket_check_connect_result().
	 *
	 * Returns: %TRUE if socket is connected, %FALSE otherwise.
	 *
	 * Since: 2.22
	 */
	public bool isConnected()
	{
		return g_socket_is_connected(gSocket) != 0;
	}

	/**
	 * Registers @socket to receive multicast messages sent to @group.
	 * @socket must be a %G_SOCKET_TYPE_DATAGRAM socket, and must have
	 * been bound to an appropriate interface and port with
	 * g_socket_bind().
	 *
	 * If @iface is %NULL, the system will automatically pick an interface
	 * to bind to based on @group.
	 *
	 * If @source_specific is %TRUE, source-specific multicast as defined
	 * in RFC 4604 is used. Note that on older platforms this may fail
	 * with a %G_IO_ERROR_NOT_SUPPORTED error.
	 *
	 * To bind to a given source-specific multicast address, use
	 * g_socket_join_multicast_group_ssm() instead.
	 *
	 * Params:
	 *     group = a #GInetAddress specifying the group address to join.
	 *     sourceSpecific = %TRUE if source-specific multicast should be used
	 *     iface = Name of the interface to use, or %NULL
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public bool joinMulticastGroup(InetAddress group, bool sourceSpecific, string iface)
	{
		GError* err = null;

		auto __p = g_socket_join_multicast_group(gSocket, (group is null) ? null : group.getInetAddressStruct(), sourceSpecific, Str.toStringz(iface), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Registers @socket to receive multicast messages sent to @group.
	 * @socket must be a %G_SOCKET_TYPE_DATAGRAM socket, and must have
	 * been bound to an appropriate interface and port with
	 * g_socket_bind().
	 *
	 * If @iface is %NULL, the system will automatically pick an interface
	 * to bind to based on @group.
	 *
	 * If @source_specific is not %NULL, use source-specific multicast as
	 * defined in RFC 4604. Note that on older platforms this may fail
	 * with a %G_IO_ERROR_NOT_SUPPORTED error.
	 *
	 * Note that this function can be called multiple times for the same
	 * @group with different @source_specific in order to receive multicast
	 * packets from more than one source.
	 *
	 * Params:
	 *     group = a #GInetAddress specifying the group address to join.
	 *     sourceSpecific = a #GInetAddress specifying the
	 *         source-specific multicast address or %NULL to ignore.
	 *     iface = Name of the interface to use, or %NULL
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 2.56
	 *
	 * Throws: GException on failure.
	 */
	public bool joinMulticastGroupSsm(InetAddress group, InetAddress sourceSpecific, string iface)
	{
		GError* err = null;

		auto __p = g_socket_join_multicast_group_ssm(gSocket, (group is null) ? null : group.getInetAddressStruct(), (sourceSpecific is null) ? null : sourceSpecific.getInetAddressStruct(), Str.toStringz(iface), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Removes @socket from the multicast group defined by @group, @iface,
	 * and @source_specific (which must all have the same values they had
	 * when you joined the group).
	 *
	 * @socket remains bound to its address and port, and can still receive
	 * unicast messages after calling this.
	 *
	 * To unbind to a given source-specific multicast address, use
	 * g_socket_leave_multicast_group_ssm() instead.
	 *
	 * Params:
	 *     group = a #GInetAddress specifying the group address to leave.
	 *     sourceSpecific = %TRUE if source-specific multicast was used
	 *     iface = Interface used
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public bool leaveMulticastGroup(InetAddress group, bool sourceSpecific, string iface)
	{
		GError* err = null;

		auto __p = g_socket_leave_multicast_group(gSocket, (group is null) ? null : group.getInetAddressStruct(), sourceSpecific, Str.toStringz(iface), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Removes @socket from the multicast group defined by @group, @iface,
	 * and @source_specific (which must all have the same values they had
	 * when you joined the group).
	 *
	 * @socket remains bound to its address and port, and can still receive
	 * unicast messages after calling this.
	 *
	 * Params:
	 *     group = a #GInetAddress specifying the group address to leave.
	 *     sourceSpecific = a #GInetAddress specifying the
	 *         source-specific multicast address or %NULL to ignore.
	 *     iface = Name of the interface to use, or %NULL
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 2.56
	 *
	 * Throws: GException on failure.
	 */
	public bool leaveMulticastGroupSsm(InetAddress group, InetAddress sourceSpecific, string iface)
	{
		GError* err = null;

		auto __p = g_socket_leave_multicast_group_ssm(gSocket, (group is null) ? null : group.getInetAddressStruct(), (sourceSpecific is null) ? null : sourceSpecific.getInetAddressStruct(), Str.toStringz(iface), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Marks the socket as a server socket, i.e. a socket that is used
	 * to accept incoming requests using g_socket_accept().
	 *
	 * Before calling this the socket must be bound to a local address using
	 * g_socket_bind().
	 *
	 * To set the maximum amount of outstanding clients, use
	 * g_socket_set_listen_backlog().
	 *
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool listen()
	{
		GError* err = null;

		auto __p = g_socket_listen(gSocket, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Receive data (up to @size bytes) from a socket. This is mainly used by
	 * connection-oriented sockets; it is identical to g_socket_receive_from()
	 * with @address set to %NULL.
	 *
	 * For %G_SOCKET_TYPE_DATAGRAM and %G_SOCKET_TYPE_SEQPACKET sockets,
	 * g_socket_receive() will always read either 0 or 1 complete messages from
	 * the socket. If the received message is too large to fit in @buffer, then
	 * the data beyond @size bytes will be discarded, without any explicit
	 * indication that this has occurred.
	 *
	 * For %G_SOCKET_TYPE_STREAM sockets, g_socket_receive() can return any
	 * number of bytes, up to @size. If more than @size bytes have been
	 * received, the additional data will be returned in future calls to
	 * g_socket_receive().
	 *
	 * If the socket is in blocking mode the call will block until there
	 * is some data to receive, the connection is closed, or there is an
	 * error. If there is no data available and the socket is in
	 * non-blocking mode, a %G_IO_ERROR_WOULD_BLOCK error will be
	 * returned. To be notified when data is available, wait for the
	 * %G_IO_IN condition.
	 *
	 * On error -1 is returned and @error is set accordingly.
	 *
	 * Params:
	 *     buffer = a buffer to read data into (which should be at least @size bytes long).
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: Number of bytes read, or 0 if the connection was closed by
	 *     the peer, or -1 on error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t receive(ref char[] buffer, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_receive(gSocket, buffer.ptr, cast(size_t)buffer.length, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Receive data (up to @size bytes) from a socket.
	 *
	 * If @address is non-%NULL then @address will be set equal to the
	 * source address of the received packet.
	 * @address is owned by the caller.
	 *
	 * See g_socket_receive() for additional information.
	 *
	 * Params:
	 *     address = a pointer to a #GSocketAddress
	 *         pointer, or %NULL
	 *     buffer = a buffer to read data into (which should be at least @size bytes long).
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: Number of bytes read, or 0 if the connection was closed by
	 *     the peer, or -1 on error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t receiveFrom(out SocketAddress address, ref char[] buffer, Cancellable cancellable)
	{
		GSocketAddress* outaddress = null;
		GError* err = null;

		auto __p = g_socket_receive_from(gSocket, &outaddress, buffer.ptr, cast(size_t)buffer.length, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		address = ObjectG.getDObject!(SocketAddress)(outaddress);

		return __p;
	}

	/**
	 * Receive data from a socket.  For receiving multiple messages, see
	 * g_socket_receive_messages(); for easier use, see
	 * g_socket_receive() and g_socket_receive_from().
	 *
	 * If @address is non-%NULL then @address will be set equal to the
	 * source address of the received packet.
	 * @address is owned by the caller.
	 *
	 * @vector must point to an array of #GInputVector structs and
	 * @num_vectors must be the length of this array.  These structs
	 * describe the buffers that received data will be scattered into.
	 * If @num_vectors is -1, then @vectors is assumed to be terminated
	 * by a #GInputVector with a %NULL buffer pointer.
	 *
	 * As a special case, if @num_vectors is 0 (in which case, @vectors
	 * may of course be %NULL), then a single byte is received and
	 * discarded. This is to facilitate the common practice of sending a
	 * single '\0' byte for the purposes of transferring ancillary data.
	 *
	 * @messages, if non-%NULL, will be set to point to a newly-allocated
	 * array of #GSocketControlMessage instances or %NULL if no such
	 * messages was received. These correspond to the control messages
	 * received from the kernel, one #GSocketControlMessage per message
	 * from the kernel. This array is %NULL-terminated and must be freed
	 * by the caller using g_free() after calling g_object_unref() on each
	 * element. If @messages is %NULL, any control messages received will
	 * be discarded.
	 *
	 * @num_messages, if non-%NULL, will be set to the number of control
	 * messages received.
	 *
	 * If both @messages and @num_messages are non-%NULL, then
	 * @num_messages gives the number of #GSocketControlMessage instances
	 * in @messages (ie: not including the %NULL terminator).
	 *
	 * @flags is an in/out parameter. The commonly available arguments
	 * for this are available in the #GSocketMsgFlags enum, but the
	 * values there are the same as the system values, and the flags
	 * are passed in as-is, so you can pass in system-specific flags too
	 * (and g_socket_receive_message() may pass system-specific flags out).
	 * Flags passed in to the parameter affect the receive operation; flags returned
	 * out of it are relevant to the specific returned message.
	 *
	 * As with g_socket_receive(), data may be discarded if @socket is
	 * %G_SOCKET_TYPE_DATAGRAM or %G_SOCKET_TYPE_SEQPACKET and you do not
	 * provide enough buffer space to read a complete message. You can pass
	 * %G_SOCKET_MSG_PEEK in @flags to peek at the current message without
	 * removing it from the receive queue, but there is no portable way to find
	 * out the length of the message other than by reading it into a
	 * sufficiently-large buffer.
	 *
	 * If the socket is in blocking mode the call will block until there
	 * is some data to receive, the connection is closed, or there is an
	 * error. If there is no data available and the socket is in
	 * non-blocking mode, a %G_IO_ERROR_WOULD_BLOCK error will be
	 * returned. To be notified when data is available, wait for the
	 * %G_IO_IN condition.
	 *
	 * On error -1 is returned and @error is set accordingly.
	 *
	 * Params:
	 *     address = a pointer to a #GSocketAddress
	 *         pointer, or %NULL
	 *     vectors = an array of #GInputVector structs
	 *     messages = a pointer
	 *         which may be filled with an array of #GSocketControlMessages, or %NULL
	 *     flags = a pointer to an int containing #GSocketMsgFlags flags,
	 *         which may additionally contain
	 *         [other platform specific flags](http://man7.org/linux/man-pages/man2/recv.2.html)
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: Number of bytes read, or 0 if the connection was closed by
	 *     the peer, or -1 on error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t receiveMessage(out SocketAddress address, GInputVector[] vectors, out SocketControlMessage[] messages, ref int flags, Cancellable cancellable)
	{
		GSocketAddress* outaddress = null;
		GSocketControlMessage** outmessages = null;
		int numMessages;
		GError* err = null;

		auto __p = g_socket_receive_message(gSocket, &outaddress, vectors.ptr, cast(int)vectors.length, &outmessages, &numMessages, &flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		address = ObjectG.getDObject!(SocketAddress)(outaddress);

		messages = new SocketControlMessage[numMessages];
		for(size_t i = 0; i < numMessages; i++)
		{
			messages[i] = ObjectG.getDObject!(SocketControlMessage)(cast(GSocketControlMessage*) outmessages[i]);
		}

		return __p;
	}

	/**
	 * Receive multiple data messages from @socket in one go.  This is the most
	 * complicated and fully-featured version of this call. For easier use, see
	 * g_socket_receive(), g_socket_receive_from(), and g_socket_receive_message().
	 *
	 * @messages must point to an array of #GInputMessage structs and
	 * @num_messages must be the length of this array. Each #GInputMessage
	 * contains a pointer to an array of #GInputVector structs describing the
	 * buffers that the data received in each message will be written to. Using
	 * multiple #GInputVectors is more memory-efficient than manually copying data
	 * out of a single buffer to multiple sources, and more system-call-efficient
	 * than making multiple calls to g_socket_receive(), such as in scenarios where
	 * a lot of data packets need to be received (e.g. high-bandwidth video
	 * streaming over RTP/UDP).
	 *
	 * @flags modify how all messages are received. The commonly available
	 * arguments for this are available in the #GSocketMsgFlags enum, but the
	 * values there are the same as the system values, and the flags
	 * are passed in as-is, so you can pass in system-specific flags too. These
	 * flags affect the overall receive operation. Flags affecting individual
	 * messages are returned in #GInputMessage.flags.
	 *
	 * The other members of #GInputMessage are treated as described in its
	 * documentation.
	 *
	 * If #GSocket:blocking is %TRUE the call will block until @num_messages have
	 * been received, or the end of the stream is reached.
	 *
	 * If #GSocket:blocking is %FALSE the call will return up to @num_messages
	 * without blocking, or %G_IO_ERROR_WOULD_BLOCK if no messages are queued in the
	 * operating system to be received.
	 *
	 * In blocking mode, if #GSocket:timeout is positive and is reached before any
	 * messages are received, %G_IO_ERROR_TIMED_OUT is returned, otherwise up to
	 * @num_messages are returned. (Note: This is effectively the
	 * behaviour of `MSG_WAITFORONE` with recvmmsg().)
	 *
	 * To be notified when messages are available, wait for the
	 * %G_IO_IN condition. Note though that you may still receive
	 * %G_IO_ERROR_WOULD_BLOCK from g_socket_receive_messages() even if you were
	 * previously notified of a %G_IO_IN condition.
	 *
	 * If the remote peer closes the connection, any messages queued in the
	 * operating system will be returned, and subsequent calls to
	 * g_socket_receive_messages() will return 0 (with no error set).
	 *
	 * On error -1 is returned and @error is set accordingly. An error will only
	 * be returned if zero messages could be received; otherwise the number of
	 * messages successfully received before the error will be returned.
	 *
	 * Params:
	 *     messages = an array of #GInputMessage structs
	 *     flags = an int containing #GSocketMsgFlags flags for the overall operation,
	 *         which may additionally contain
	 *         [other platform specific flags](http://man7.org/linux/man-pages/man2/recv.2.html)
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: number of messages received, or -1 on error. Note that the number
	 *     of messages received may be smaller than @num_messages if in non-blocking
	 *     mode, if the peer closed the connection, or if @num_messages
	 *     was larger than `UIO_MAXIOV` (1024), in which case the caller may re-try
	 *     to receive the remaining messages.
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public int receiveMessages(GInputMessage[] messages, int flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_receive_messages(gSocket, messages.ptr, cast(uint)messages.length, flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This behaves exactly the same as g_socket_receive(), except that
	 * the choice of blocking or non-blocking behavior is determined by
	 * the @blocking argument rather than by @socket's properties.
	 *
	 * Params:
	 *     buffer = a buffer to read data into (which should be at least @size bytes long).
	 *     blocking = whether to do blocking or non-blocking I/O
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: Number of bytes read, or 0 if the connection was closed by
	 *     the peer, or -1 on error
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t receiveWithBlocking(out char[] buffer, bool blocking, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_receive_with_blocking(gSocket, buffer.ptr, cast(size_t)buffer.length, blocking, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Tries to send @size bytes from @buffer on the socket. This is
	 * mainly used by connection-oriented sockets; it is identical to
	 * g_socket_send_to() with @address set to %NULL.
	 *
	 * If the socket is in blocking mode the call will block until there is
	 * space for the data in the socket queue. If there is no space available
	 * and the socket is in non-blocking mode a %G_IO_ERROR_WOULD_BLOCK error
	 * will be returned. To be notified when space is available, wait for the
	 * %G_IO_OUT condition. Note though that you may still receive
	 * %G_IO_ERROR_WOULD_BLOCK from g_socket_send() even if you were previously
	 * notified of a %G_IO_OUT condition. (On Windows in particular, this is
	 * very common due to the way the underlying APIs work.)
	 *
	 * On error -1 is returned and @error is set accordingly.
	 *
	 * Params:
	 *     buffer = the buffer
	 *         containing the data to send.
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: Number of bytes written (which may be less than @size), or -1
	 *     on error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t send(string buffer, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_send(gSocket, Str.toStringz(buffer), cast(size_t)buffer.length, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Send data to @address on @socket.  For sending multiple messages see
	 * g_socket_send_messages(); for easier use, see
	 * g_socket_send() and g_socket_send_to().
	 *
	 * If @address is %NULL then the message is sent to the default receiver
	 * (set by g_socket_connect()).
	 *
	 * @vectors must point to an array of #GOutputVector structs and
	 * @num_vectors must be the length of this array. (If @num_vectors is -1,
	 * then @vectors is assumed to be terminated by a #GOutputVector with a
	 * %NULL buffer pointer.) The #GOutputVector structs describe the buffers
	 * that the sent data will be gathered from. Using multiple
	 * #GOutputVectors is more memory-efficient than manually copying
	 * data from multiple sources into a single buffer, and more
	 * network-efficient than making multiple calls to g_socket_send().
	 *
	 * @messages, if non-%NULL, is taken to point to an array of @num_messages
	 * #GSocketControlMessage instances. These correspond to the control
	 * messages to be sent on the socket.
	 * If @num_messages is -1 then @messages is treated as a %NULL-terminated
	 * array.
	 *
	 * @flags modify how the message is sent. The commonly available arguments
	 * for this are available in the #GSocketMsgFlags enum, but the
	 * values there are the same as the system values, and the flags
	 * are passed in as-is, so you can pass in system-specific flags too.
	 *
	 * If the socket is in blocking mode the call will block until there is
	 * space for the data in the socket queue. If there is no space available
	 * and the socket is in non-blocking mode a %G_IO_ERROR_WOULD_BLOCK error
	 * will be returned. To be notified when space is available, wait for the
	 * %G_IO_OUT condition. Note though that you may still receive
	 * %G_IO_ERROR_WOULD_BLOCK from g_socket_send() even if you were previously
	 * notified of a %G_IO_OUT condition. (On Windows in particular, this is
	 * very common due to the way the underlying APIs work.)
	 *
	 * The sum of the sizes of each #GOutputVector in vectors must not be
	 * greater than %G_MAXSSIZE. If the message can be larger than this,
	 * then it is mandatory to use the g_socket_send_message_with_timeout()
	 * function.
	 *
	 * On error -1 is returned and @error is set accordingly.
	 *
	 * Params:
	 *     address = a #GSocketAddress, or %NULL
	 *     vectors = an array of #GOutputVector structs
	 *     messages = a pointer to an
	 *         array of #GSocketControlMessages, or %NULL.
	 *     flags = an int containing #GSocketMsgFlags flags, which may additionally
	 *         contain [other platform specific flags](http://man7.org/linux/man-pages/man2/recv.2.html)
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: Number of bytes written (which may be less than @size), or -1
	 *     on error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t sendMessage(SocketAddress address, GOutputVector[] vectors, SocketControlMessage[] messages, int flags, Cancellable cancellable)
	{
		GSocketControlMessage*[] messagesArray = new GSocketControlMessage*[messages.length];
		for ( int i = 0; i < messages.length; i++ )
		{
			messagesArray[i] = messages[i].getSocketControlMessageStruct();
		}

		GError* err = null;

		auto __p = g_socket_send_message(gSocket, (address is null) ? null : address.getSocketAddressStruct(), vectors.ptr, cast(int)vectors.length, messagesArray.ptr, cast(int)messages.length, flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This behaves exactly the same as g_socket_send_message(), except that
	 * the choice of timeout behavior is determined by the @timeout_us argument
	 * rather than by @socket's properties.
	 *
	 * On error %G_POLLABLE_RETURN_FAILED is returned and @error is set accordingly, or
	 * if the socket is currently not writable %G_POLLABLE_RETURN_WOULD_BLOCK is
	 * returned. @bytes_written will contain 0 in both cases.
	 *
	 * Params:
	 *     address = a #GSocketAddress, or %NULL
	 *     vectors = an array of #GOutputVector structs
	 *     messages = a pointer to an
	 *         array of #GSocketControlMessages, or %NULL.
	 *     flags = an int containing #GSocketMsgFlags flags, which may additionally
	 *         contain [other platform specific flags](http://man7.org/linux/man-pages/man2/recv.2.html)
	 *     timeoutUs = the maximum time (in microseconds) to wait, or -1
	 *     bytesWritten = location to store the number of bytes that were written to the socket
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: %G_POLLABLE_RETURN_OK if all data was successfully written,
	 *     %G_POLLABLE_RETURN_WOULD_BLOCK if the socket is currently not writable, or
	 *     %G_POLLABLE_RETURN_FAILED if an error happened and @error is set.
	 *
	 * Since: 2.60
	 *
	 * Throws: GException on failure.
	 */
	public GPollableReturn sendMessageWithTimeout(SocketAddress address, GOutputVector[] vectors, SocketControlMessage[] messages, int flags, long timeoutUs, out size_t bytesWritten, Cancellable cancellable)
	{
		GSocketControlMessage*[] messagesArray = new GSocketControlMessage*[messages.length];
		for ( int i = 0; i < messages.length; i++ )
		{
			messagesArray[i] = messages[i].getSocketControlMessageStruct();
		}

		GError* err = null;

		auto __p = g_socket_send_message_with_timeout(gSocket, (address is null) ? null : address.getSocketAddressStruct(), vectors.ptr, cast(int)vectors.length, messagesArray.ptr, cast(int)messages.length, flags, timeoutUs, &bytesWritten, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Send multiple data messages from @socket in one go.  This is the most
	 * complicated and fully-featured version of this call. For easier use, see
	 * g_socket_send(), g_socket_send_to(), and g_socket_send_message().
	 *
	 * @messages must point to an array of #GOutputMessage structs and
	 * @num_messages must be the length of this array. Each #GOutputMessage
	 * contains an address to send the data to, and a pointer to an array of
	 * #GOutputVector structs to describe the buffers that the data to be sent
	 * for each message will be gathered from. Using multiple #GOutputVectors is
	 * more memory-efficient than manually copying data from multiple sources
	 * into a single buffer, and more network-efficient than making multiple
	 * calls to g_socket_send(). Sending multiple messages in one go avoids the
	 * overhead of making a lot of syscalls in scenarios where a lot of data
	 * packets need to be sent (e.g. high-bandwidth video streaming over RTP/UDP),
	 * or where the same data needs to be sent to multiple recipients.
	 *
	 * @flags modify how the message is sent. The commonly available arguments
	 * for this are available in the #GSocketMsgFlags enum, but the
	 * values there are the same as the system values, and the flags
	 * are passed in as-is, so you can pass in system-specific flags too.
	 *
	 * If the socket is in blocking mode the call will block until there is
	 * space for all the data in the socket queue. If there is no space available
	 * and the socket is in non-blocking mode a %G_IO_ERROR_WOULD_BLOCK error
	 * will be returned if no data was written at all, otherwise the number of
	 * messages sent will be returned. To be notified when space is available,
	 * wait for the %G_IO_OUT condition. Note though that you may still receive
	 * %G_IO_ERROR_WOULD_BLOCK from g_socket_send() even if you were previously
	 * notified of a %G_IO_OUT condition. (On Windows in particular, this is
	 * very common due to the way the underlying APIs work.)
	 *
	 * On error -1 is returned and @error is set accordingly. An error will only
	 * be returned if zero messages could be sent; otherwise the number of messages
	 * successfully sent before the error will be returned.
	 *
	 * Params:
	 *     messages = an array of #GOutputMessage structs
	 *     flags = an int containing #GSocketMsgFlags flags, which may additionally
	 *         contain [other platform specific flags](http://man7.org/linux/man-pages/man2/recv.2.html)
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: number of messages sent, or -1 on error. Note that the number of
	 *     messages sent may be smaller than @num_messages if the socket is
	 *     non-blocking or if @num_messages was larger than UIO_MAXIOV (1024),
	 *     in which case the caller may re-try to send the remaining messages.
	 *
	 * Since: 2.44
	 *
	 * Throws: GException on failure.
	 */
	public int sendMessages(GOutputMessage[] messages, int flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_send_messages(gSocket, messages.ptr, cast(uint)messages.length, flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Tries to send @size bytes from @buffer to @address. If @address is
	 * %NULL then the message is sent to the default receiver (set by
	 * g_socket_connect()).
	 *
	 * See g_socket_send() for additional information.
	 *
	 * Params:
	 *     address = a #GSocketAddress, or %NULL
	 *     buffer = the buffer
	 *         containing the data to send.
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: Number of bytes written (which may be less than @size), or -1
	 *     on error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t sendTo(SocketAddress address, string buffer, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_send_to(gSocket, (address is null) ? null : address.getSocketAddressStruct(), Str.toStringz(buffer), cast(size_t)buffer.length, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * This behaves exactly the same as g_socket_send(), except that
	 * the choice of blocking or non-blocking behavior is determined by
	 * the @blocking argument rather than by @socket's properties.
	 *
	 * Params:
	 *     buffer = the buffer
	 *         containing the data to send.
	 *     blocking = whether to do blocking or non-blocking I/O
	 *     cancellable = a %GCancellable or %NULL
	 *
	 * Returns: Number of bytes written (which may be less than @size), or -1
	 *     on error
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t sendWithBlocking(string buffer, bool blocking, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_send_with_blocking(gSocket, Str.toStringz(buffer), cast(size_t)buffer.length, blocking, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets the blocking mode of the socket. In blocking mode
	 * all operations (which don’t take an explicit blocking parameter) block until
	 * they succeed or there is an error. In
	 * non-blocking mode all functions return results immediately or
	 * with a %G_IO_ERROR_WOULD_BLOCK error.
	 *
	 * All sockets are created in blocking mode. However, note that the
	 * platform level socket is always non-blocking, and blocking mode
	 * is a GSocket level feature.
	 *
	 * Params:
	 *     blocking = Whether to use blocking I/O or not.
	 *
	 * Since: 2.22
	 */
	public void setBlocking(bool blocking)
	{
		g_socket_set_blocking(gSocket, blocking);
	}

	/**
	 * Sets whether @socket should allow sending to broadcast addresses.
	 * This is %FALSE by default.
	 *
	 * Params:
	 *     broadcast = whether @socket should allow sending to broadcast
	 *         addresses
	 *
	 * Since: 2.32
	 */
	public void setBroadcast(bool broadcast)
	{
		g_socket_set_broadcast(gSocket, broadcast);
	}

	/**
	 * Sets or unsets the %SO_KEEPALIVE flag on the underlying socket. When
	 * this flag is set on a socket, the system will attempt to verify that the
	 * remote socket endpoint is still present if a sufficiently long period of
	 * time passes with no data being exchanged. If the system is unable to
	 * verify the presence of the remote endpoint, it will automatically close
	 * the connection.
	 *
	 * This option is only functional on certain kinds of sockets. (Notably,
	 * %G_SOCKET_PROTOCOL_TCP sockets.)
	 *
	 * The exact time between pings is system- and protocol-dependent, but will
	 * normally be at least two hours. Most commonly, you would set this flag
	 * on a server socket if you want to allow clients to remain idle for long
	 * periods of time, but also want to ensure that connections are eventually
	 * garbage-collected if clients crash or become unreachable.
	 *
	 * Params:
	 *     keepalive = Value for the keepalive flag
	 *
	 * Since: 2.22
	 */
	public void setKeepalive(bool keepalive)
	{
		g_socket_set_keepalive(gSocket, keepalive);
	}

	/**
	 * Sets the maximum number of outstanding connections allowed
	 * when listening on this socket. If more clients than this are
	 * connecting to the socket and the application is not handling them
	 * on time then the new connections will be refused.
	 *
	 * Note that this must be called before g_socket_listen() and has no
	 * effect if called after that.
	 *
	 * Params:
	 *     backlog = the maximum number of pending connections.
	 *
	 * Since: 2.22
	 */
	public void setListenBacklog(int backlog)
	{
		g_socket_set_listen_backlog(gSocket, backlog);
	}

	/**
	 * Sets whether outgoing multicast packets will be received by sockets
	 * listening on that multicast address on the same host. This is %TRUE
	 * by default.
	 *
	 * Params:
	 *     loopback = whether @socket should receive messages sent to its
	 *         multicast groups from the local host
	 *
	 * Since: 2.32
	 */
	public void setMulticastLoopback(bool loopback)
	{
		g_socket_set_multicast_loopback(gSocket, loopback);
	}

	/**
	 * Sets the time-to-live for outgoing multicast datagrams on @socket.
	 * By default, this is 1, meaning that multicast packets will not leave
	 * the local network.
	 *
	 * Params:
	 *     ttl = the time-to-live value for all multicast datagrams on @socket
	 *
	 * Since: 2.32
	 */
	public void setMulticastTtl(uint ttl)
	{
		g_socket_set_multicast_ttl(gSocket, ttl);
	}

	/**
	 * Sets the value of an integer-valued option on @socket, as with
	 * setsockopt(). (If you need to set a non-integer-valued option,
	 * you will need to call setsockopt() directly.)
	 *
	 * The [<gio/gnetworking.h>][gio-gnetworking.h]
	 * header pulls in system headers that will define most of the
	 * standard/portable socket options. For unusual socket protocols or
	 * platform-dependent options, you may need to include additional
	 * headers.
	 *
	 * Params:
	 *     level = the "API level" of the option (eg, `SOL_SOCKET`)
	 *     optname = the "name" of the option (eg, `SO_BROADCAST`)
	 *     value = the value to set the option to
	 *
	 * Returns: success or failure. On failure, @error will be set, and
	 *     the system error value (`errno` or WSAGetLastError()) will still
	 *     be set to the result of the setsockopt() call.
	 *
	 * Since: 2.36
	 *
	 * Throws: GException on failure.
	 */
	public bool setOption(int level, int optname, int value)
	{
		GError* err = null;

		auto __p = g_socket_set_option(gSocket, level, optname, value, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Sets the time in seconds after which I/O operations on @socket will
	 * time out if they have not yet completed.
	 *
	 * On a blocking socket, this means that any blocking #GSocket
	 * operation will time out after @timeout seconds of inactivity,
	 * returning %G_IO_ERROR_TIMED_OUT.
	 *
	 * On a non-blocking socket, calls to g_socket_condition_wait() will
	 * also fail with %G_IO_ERROR_TIMED_OUT after the given time. Sources
	 * created with g_socket_create_source() will trigger after
	 * @timeout seconds of inactivity, with the requested condition
	 * set, at which point calling g_socket_receive(), g_socket_send(),
	 * g_socket_check_connect_result(), etc, will fail with
	 * %G_IO_ERROR_TIMED_OUT.
	 *
	 * If @timeout is 0 (the default), operations will never time out
	 * on their own.
	 *
	 * Note that if an I/O operation is interrupted by a signal, this may
	 * cause the timeout to be reset.
	 *
	 * Params:
	 *     timeout = the timeout for @socket, in seconds, or 0 for none
	 *
	 * Since: 2.26
	 */
	public void setTimeout(uint timeout)
	{
		g_socket_set_timeout(gSocket, timeout);
	}

	/**
	 * Sets the time-to-live for outgoing unicast packets on @socket.
	 * By default the platform-specific default value is used.
	 *
	 * Params:
	 *     ttl = the time-to-live value for all unicast packets on @socket
	 *
	 * Since: 2.32
	 */
	public void setTtl(uint ttl)
	{
		g_socket_set_ttl(gSocket, ttl);
	}

	/**
	 * Shut down part or all of a full-duplex connection.
	 *
	 * If @shutdown_read is %TRUE then the receiving side of the connection
	 * is shut down, and further reading is disallowed.
	 *
	 * If @shutdown_write is %TRUE then the sending side of the connection
	 * is shut down, and further writing is disallowed.
	 *
	 * It is allowed for both @shutdown_read and @shutdown_write to be %TRUE.
	 *
	 * One example where it is useful to shut down only one side of a connection is
	 * graceful disconnect for TCP connections where you close the sending side,
	 * then wait for the other side to close the connection, thus ensuring that the
	 * other side saw all sent data.
	 *
	 * Params:
	 *     shutdownRead = whether to shut down the read side
	 *     shutdownWrite = whether to shut down the write side
	 *
	 * Returns: %TRUE on success, %FALSE on error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool shutdown(bool shutdownRead, bool shutdownWrite)
	{
		GError* err = null;

		auto __p = g_socket_shutdown(gSocket, shutdownRead, shutdownWrite, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Checks if a socket is capable of speaking IPv4.
	 *
	 * IPv4 sockets are capable of speaking IPv4.  On some operating systems
	 * and under some combinations of circumstances IPv6 sockets are also
	 * capable of speaking IPv4.  See RFC 3493 section 3.7 for more
	 * information.
	 *
	 * No other types of sockets are currently considered as being capable
	 * of speaking IPv4.
	 *
	 * Returns: %TRUE if this socket can be used with IPv4.
	 *
	 * Since: 2.22
	 */
	public bool speaksIpv4()
	{
		return g_socket_speaks_ipv4(gSocket) != 0;
	}
}
