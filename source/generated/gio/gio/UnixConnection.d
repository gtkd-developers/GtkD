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


module gio.UnixConnection;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.Credentials;
private import gio.SocketConnection;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/**
 * This is the subclass of #GSocketConnection that is created
 * for UNIX domain sockets.
 * 
 * It contains functions to do some of the UNIX socket specific
 * functionality like passing file descriptors.
 * 
 * Since GLib 2.72, #GUnixConnection is available on all platforms. It requires
 * underlying system support (such as Windows 10 with `AF_UNIX`) at run time.
 * 
 * Before GLib 2.72, `<gio/gunixconnection.h>` belonged to the UNIX-specific GIO
 * interfaces, thus you had to use the `gio-unix-2.0.pc` pkg-config file when
 * using it. This is no longer necessary since GLib 2.72.
 *
 * Since: 2.22
 */
public class UnixConnection : SocketConnection
{
	/** the main Gtk struct */
	protected GUnixConnection* gUnixConnection;

	/** Get the main Gtk struct */
	public GUnixConnection* getUnixConnectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gUnixConnection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixConnection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GUnixConnection* gUnixConnection, bool ownedRef = false)
	{
		this.gUnixConnection = gUnixConnection;
		super(cast(GSocketConnection*)gUnixConnection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_unix_connection_get_type();
	}

	/**
	 * Receives credentials from the sending end of the connection.  The
	 * sending end has to call g_unix_connection_send_credentials() (or
	 * similar) for this to work.
	 *
	 * As well as reading the credentials this also reads (and discards) a
	 * single byte from the stream, as this is required for credentials
	 * passing to work on some implementations.
	 *
	 * This method can be expected to be available on the following platforms:
	 *
	 * - Linux since GLib 2.26
	 * - FreeBSD since GLib 2.26
	 * - GNU/kFreeBSD since GLib 2.36
	 * - Solaris, Illumos and OpenSolaris since GLib 2.40
	 * - GNU/Hurd since GLib 2.40
	 *
	 * Other ways to exchange credentials with a foreign peer includes the
	 * #GUnixCredentialsMessage type and g_socket_get_credentials() function.
	 *
	 * Params:
	 *     cancellable = A #GCancellable or %NULL.
	 *
	 * Returns: Received credentials on success (free with
	 *     g_object_unref()), %NULL if @error is set.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public Credentials receiveCredentials(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_unix_connection_receive_credentials(gUnixConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

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
	 * Asynchronously receive credentials.
	 *
	 * For more details, see g_unix_connection_receive_credentials() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * g_unix_connection_receive_credentials_finish() to get the result of the operation.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.32
	 */
	public void receiveCredentialsAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_unix_connection_receive_credentials_async(gUnixConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous receive credentials operation started with
	 * g_unix_connection_receive_credentials_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a #GCredentials, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public Credentials receiveCredentialsFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_unix_connection_receive_credentials_finish(gUnixConnection, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
	 * Receives a file descriptor from the sending end of the connection.
	 * The sending end has to call g_unix_connection_send_fd() for this
	 * to work.
	 *
	 * As well as reading the fd this also reads a single byte from the
	 * stream, as this is required for fd passing to work on some
	 * implementations.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *
	 * Returns: a file descriptor on success, -1 on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public int receiveFd(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_unix_connection_receive_fd(gUnixConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Passes the credentials of the current user the receiving side
	 * of the connection. The receiving end has to call
	 * g_unix_connection_receive_credentials() (or similar) to accept the
	 * credentials.
	 *
	 * As well as sending the credentials this also writes a single NUL
	 * byte to the stream, as this is required for credentials passing to
	 * work on some implementations.
	 *
	 * This method can be expected to be available on the following platforms:
	 *
	 * - Linux since GLib 2.26
	 * - FreeBSD since GLib 2.26
	 * - GNU/kFreeBSD since GLib 2.36
	 * - Solaris, Illumos and OpenSolaris since GLib 2.40
	 * - GNU/Hurd since GLib 2.40
	 *
	 * Other ways to exchange credentials with a foreign peer includes the
	 * #GUnixCredentialsMessage type and g_socket_get_credentials() function.
	 *
	 * Params:
	 *     cancellable = A #GCancellable or %NULL.
	 *
	 * Returns: %TRUE on success, %FALSE if @error is set.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public bool sendCredentials(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_unix_connection_send_credentials(gUnixConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Asynchronously send credentials.
	 *
	 * For more details, see g_unix_connection_send_credentials() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * g_unix_connection_send_credentials_finish() to get the result of the operation.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.32
	 */
	public void sendCredentialsAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_unix_connection_send_credentials_async(gUnixConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous send credentials operation started with
	 * g_unix_connection_send_credentials_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: %TRUE if the operation was successful, otherwise %FALSE.
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 */
	public bool sendCredentialsFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_unix_connection_send_credentials_finish(gUnixConnection, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Passes a file descriptor to the receiving side of the
	 * connection. The receiving end has to call g_unix_connection_receive_fd()
	 * to accept the file descriptor.
	 *
	 * As well as sending the fd this also writes a single byte to the
	 * stream, as this is required for fd passing to work on some
	 * implementations.
	 *
	 * Params:
	 *     fd = a file descriptor
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a %TRUE on success, %NULL on error.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool sendFd(int fd, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_unix_connection_send_fd(gUnixConnection, fd, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
