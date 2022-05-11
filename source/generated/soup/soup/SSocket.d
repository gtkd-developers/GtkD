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


module soup.SSocket;

private import gio.Cancellable;
private import gio.IOStream;
private import gio.InitableIF;
private import gio.InitableT;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import soup.Address;
private import soup.c.functions;
public  import soup.c.types;
private import std.algorithm;


/** */
public class SSocket : ObjectG, InitableIF
{
	/** the main Gtk struct */
	protected SoupSocket* soupSocket;

	/** Get the main Gtk struct */
	public SoupSocket* getSSocketStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupSocket;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupSocket;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupSocket* soupSocket, bool ownedRef = false)
	{
		this.soupSocket = soupSocket;
		super(cast(GObject*)soupSocket, ownedRef);
	}

	// add the Initable capabilities
	mixin InitableT!(SoupSocket);

	/**
	 * Like soup_socket_read(), but reads no further than the first
	 * occurrence of @boundary. (If the boundary is found, it will be
	 * included in the returned data, and *@got_boundary will be set to
	 * %TRUE.) Any data after the boundary will returned in future reads.
	 *
	 * soup_socket_read_until() will almost always return fewer than @len
	 * bytes: if the boundary is found, then it will only return the bytes
	 * up until the end of the boundary, and if the boundary is not found,
	 * then it will leave the last <literal>(boundary_len - 1)</literal>
	 * bytes in its internal buffer, in case they form the start of the
	 * boundary string. Thus, @len normally needs to be at least 1 byte
	 * longer than @boundary_len if you want to make any progress at all.
	 *
	 * Params:
	 *     buffer = buffer to read
	 *         into
	 *     boundary = boundary to read until
	 *     boundaryLen = length of @boundary in bytes
	 *     nread = on return, the number of bytes read into @buffer
	 *     gotBoundary = on return, whether or not the data in @buffer
	 *         ends with the boundary string
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: as for soup_socket_read()
	 *
	 * Throws: GException on failure.
	 */
	public SoupSocketIOStatus readUntil(ubyte[] buffer, void* boundary, size_t boundaryLen, out size_t nread, bool* gotBoundary, Cancellable cancellable) {
		GError* err = null;

		auto __p = soup_socket_read_until(soupSocket, buffer.ptr, cast(size_t)buffer.length, boundary, boundaryLen, &nread, cast(int *)gotBoundary, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null) {
			throw new GException( new ErrorG(err) );
	}

	return __p;
}

/**
 */

/** */
public static GType getType()
{
	return soup_socket_get_type();
}

/**
 * Begins asynchronously connecting to @sock's remote address. The
 * socket will call @callback when it succeeds or fails (but not
 * before returning from this function).
 *
 * If @cancellable is non-%NULL, it can be used to cancel the
 * connection. @callback will still be invoked in this case, with a
 * status of %SOUP_STATUS_CANCELLED.
 *
 * Params:
 *     cancellable = a #GCancellable, or %NULL
 *     callback = callback to call after connecting
 *     userData = data to pass to @callback
 */
public void connectAsync(Cancellable cancellable, SoupSocketCallback callback, void* userData)
{
	soup_socket_connect_async(soupSocket, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
}

/**
 * Attempt to synchronously connect @sock to its remote address.
 *
 * If @cancellable is non-%NULL, it can be used to cancel the
 * connection, in which case soup_socket_connect_sync() will return
 * %SOUP_STATUS_CANCELLED.
 *
 * Params:
 *     cancellable = a #GCancellable, or %NULL
 *
 * Returns: a success or failure code.
 */
public uint connectSync(Cancellable cancellable)
{
	return soup_socket_connect_sync(soupSocket, (cancellable is null) ? null : cancellable.getCancellableStruct());
}

/**
 * Disconnects @sock. Any further read or write attempts on it will
 * fail.
 */
public void disconnect()
{
	soup_socket_disconnect(soupSocket);
}

/**
 * Gets @sock's underlying file descriptor.
 *
 * Note that fiddling with the file descriptor may break the
 * #SoupSocket.
 *
 * Returns: @sock's file descriptor.
 */
public int getFd()
{
	return soup_socket_get_fd(soupSocket);
}

/**
 * Returns the #SoupAddress corresponding to the local end of @sock.
 *
 * Calling this method on an unconnected socket is considered to be
 * an error, and produces undefined results.
 *
 * Returns: the #SoupAddress
 */
public Address getLocalAddress()
{
	auto __p = soup_socket_get_local_address(soupSocket);

	if(__p is null)
	{
		return null;
	}

	return ObjectG.getDObject!(Address)(cast(SoupAddress*) __p);
}

/**
 * Returns the #SoupAddress corresponding to the remote end of @sock.
 *
 * Calling this method on an unconnected socket is considered to be
 * an error, and produces undefined results.
 *
 * Returns: the #SoupAddress
 */
public Address getRemoteAddress()
{
	auto __p = soup_socket_get_remote_address(soupSocket);

	if(__p is null)
	{
		return null;
	}

	return ObjectG.getDObject!(Address)(cast(SoupAddress*) __p);
}

/**
 * Tests if @sock is connected to another host
 *
 * Returns: %TRUE or %FALSE.
 */
public bool isConnected()
{
	return soup_socket_is_connected(soupSocket) != 0;
}

/**
 * Tests if @sock is doing (or has attempted to do) SSL.
 *
 * Returns: %TRUE if @sock has SSL credentials set
 */
public bool isSsl()
{
	return soup_socket_is_ssl(soupSocket) != 0;
}

/**
 * Makes @sock start listening on its local address. When connections
 * come in, @sock will emit #SoupSocket::new_connection.
 *
 * Returns: whether or not @sock is now listening.
 */
public bool listen()
{
	return soup_socket_listen(soupSocket) != 0;
}

/**
 * Attempts to read up to @len bytes from @sock into @buffer. If some
 * data is successfully read, soup_socket_read() will return
 * %SOUP_SOCKET_OK, and *@nread will contain the number of bytes
 * actually read (which may be less than @len).
 *
 * If @sock is non-blocking, and no data is available, the return
 * value will be %SOUP_SOCKET_WOULD_BLOCK. In this case, the caller
 * can connect to the #SoupSocket::readable signal to know when there
 * is more data to read. (NB: You MUST read all available data off the
 * socket first. #SoupSocket::readable is only emitted after
 * soup_socket_read() returns %SOUP_SOCKET_WOULD_BLOCK, and it is only
 * emitted once. See the documentation for #SoupSocket:non-blocking.)
 *
 * Params:
 *     buffer = buffer to read
 *         into
 *     nread = on return, the number of bytes read into @buffer
 *     cancellable = a #GCancellable, or %NULL
 *
 * Returns: a #SoupSocketIOStatus, as described above (or
 *     %SOUP_SOCKET_EOF if the socket is no longer connected, or
 *     %SOUP_SOCKET_ERROR on any other error, in which case @error will
 *     also be set).
 *
 * Throws: GException on failure.
 */
public SoupSocketIOStatus read(ubyte[] buffer, out size_t nread, Cancellable cancellable)
{
	GError* err = null;

	auto __p = soup_socket_read(soupSocket, buffer.ptr, cast(size_t)buffer.length, &nread, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return __p;
}

/**
 * Starts using SSL on @socket, expecting to find a host named
 * @ssl_host.
 *
 * Params:
 *     sslHost = hostname of the SSL server
 *     cancellable = a #GCancellable
 *
 * Returns: success or failure
 */
public bool startProxySsl(string sslHost, Cancellable cancellable)
{
	return soup_socket_start_proxy_ssl(soupSocket, Str.toStringz(sslHost), (cancellable is null) ? null : cancellable.getCancellableStruct()) != 0;
}

/**
 * Starts using SSL on @socket.
 *
 * Params:
 *     cancellable = a #GCancellable
 *
 * Returns: success or failure
 */
public bool startSsl(Cancellable cancellable)
{
	return soup_socket_start_ssl(soupSocket, (cancellable is null) ? null : cancellable.getCancellableStruct()) != 0;
}

/**
 * Attempts to write @len bytes from @buffer to @sock. If some data is
 * successfully written, the return status will be %SOUP_SOCKET_OK,
 * and *@nwrote will contain the number of bytes actually written
 * (which may be less than @len).
 *
 * If @sock is non-blocking, and no data could be written right away,
 * the return value will be %SOUP_SOCKET_WOULD_BLOCK. In this case,
 * the caller can connect to the #SoupSocket::writable signal to know
 * when more data can be written. (NB: #SoupSocket::writable is only
 * emitted after soup_socket_write() returns %SOUP_SOCKET_WOULD_BLOCK,
 * and it is only emitted once. See the documentation for
 * #SoupSocket:non-blocking.)
 *
 * Params:
 *     buffer = data to write
 *     nwrote = on return, number of bytes written
 *     cancellable = a #GCancellable, or %NULL
 *
 * Returns: a #SoupSocketIOStatus, as described above (or
 *     %SOUP_SOCKET_EOF or %SOUP_SOCKET_ERROR. @error will be set if the
 *     return value is %SOUP_SOCKET_ERROR.)
 *
 * Throws: GException on failure.
 */
public SoupSocketIOStatus write(ubyte[] buffer, out size_t nwrote, Cancellable cancellable)
{
	GError* err = null;

	auto __p = soup_socket_write(soupSocket, buffer.ptr, cast(size_t)buffer.length, &nwrote, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

	if (err !is null)
	{
		throw new GException( new ErrorG(err) );
	}

	return __p;
}

/**
 * Emitted when the socket is disconnected, for whatever
 * reason.
 */
gulong addOnDisconnected(void delegate(SSocket) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
{
	return Signals.connect(this, "disconnected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
}

/**
 * Emitted when a network-related event occurs. See
 * #GSocketClient::event for more details.
 *
 * Params:
 *     event = the event that occurred
 *     connection = the current connection state
 *
 * Since: 2.38
 */
gulong addOnEvent(void delegate(GSocketClientEvent, IOStream, SSocket) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
{
	return Signals.connect(this, "event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
}

/**
 * Emitted when a listening socket (set up with
 * soup_socket_listen()) receives a new connection.
 *
 * You must ref the @new if you want to keep it; otherwise it
 * will be destroyed after the signal is emitted.
 *
 * Params:
 *     new_ = the new socket
 */
gulong addOnNewConnection(void delegate(SSocket, SSocket) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
{
	return Signals.connect(this, "new-connection", dlg, connectFlags ^ ConnectFlags.SWAPPED);
}

/**
 * Emitted when an async socket is readable. See
 * soup_socket_read(), soup_socket_read_until() and
 * #SoupSocket:non-blocking.
 */
gulong addOnReadable(void delegate(SSocket) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
{
	return Signals.connect(this, "readable", dlg, connectFlags ^ ConnectFlags.SWAPPED);
}

/**
 * Emitted when an async socket is writable. See
 * soup_socket_write() and #SoupSocket:non-blocking.
 */
gulong addOnWritable(void delegate(SSocket) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
{
	return Signals.connect(this, "writable", dlg, connectFlags ^ ConnectFlags.SWAPPED);
}
}
