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


module gio.DtlsConnectionT;

public  import gio.AsyncResultIF;
public  import gio.Cancellable;
public  import gio.TlsCertificate;
public  import gio.TlsDatabase;
public  import gio.TlsInteraction;
public  import gio.c.functions;
public  import gio.c.types;
public  import glib.ErrorG;
public  import glib.GException;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtkc.giotypes;
public  import std.algorithm;


/**
 * #GDtlsConnection is the base DTLS connection class type, which wraps
 * a #GDatagramBased and provides DTLS encryption on top of it. Its
 * subclasses, #GDtlsClientConnection and #GDtlsServerConnection,
 * implement client-side and server-side DTLS, respectively.
 * 
 * For TLS support, see #GTlsConnection.
 * 
 * As DTLS is datagram based, #GDtlsConnection implements #GDatagramBased,
 * presenting a datagram-socket-like API for the encrypted connection. This
 * operates over a base datagram connection, which is also a #GDatagramBased
 * (#GDtlsConnection:base-socket).
 * 
 * To close a DTLS connection, use g_dtls_connection_close().
 * 
 * Neither #GDtlsServerConnection or #GDtlsClientConnection set the peer address
 * on their base #GDatagramBased if it is a #GSocket — it is up to the caller to
 * do that if they wish. If they do not, and g_socket_close() is called on the
 * base socket, the #GDtlsConnection will not raise a %G_IO_ERROR_NOT_CONNECTED
 * error on further I/O.
 *
 * Since: 2.48
 */
public template DtlsConnectionT(TStruct)
{
	/** Get the main Gtk struct */
	public GDtlsConnection* getDtlsConnectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GDtlsConnection*)getStruct();
	}


	/**
	 * Close the DTLS connection. This is equivalent to calling
	 * g_dtls_connection_shutdown() to shut down both sides of the connection.
	 *
	 * Closing a #GDtlsConnection waits for all buffered but untransmitted data to
	 * be sent before it completes. It then sends a `close_notify` DTLS alert to the
	 * peer and may wait for a `close_notify` to be received from the peer. It does
	 * not close the underlying #GDtlsConnection:base-socket; that must be closed
	 * separately.
	 *
	 * Once @conn is closed, all other operations will return %G_IO_ERROR_CLOSED.
	 * Closing a #GDtlsConnection multiple times will not return an error.
	 *
	 * #GDtlsConnections will be automatically closed when the last reference is
	 * dropped, but you might want to call this function to make sure resources are
	 * released as early as possible.
	 *
	 * If @cancellable is cancelled, the #GDtlsConnection may be left
	 * partially-closed and any pending untransmitted data may be lost. Call
	 * g_dtls_connection_close() again to complete closing the #GDtlsConnection.
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %TRUE on success, %FALSE otherwise
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool close(Cancellable cancellable)
	{
		GError* err = null;

		auto p = g_dtls_connection_close(getDtlsConnectionStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Asynchronously close the DTLS connection. See g_dtls_connection_close() for
	 * more information.
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call when the close operation is complete
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.48
	 */
	public void closeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dtls_connection_close_async(getDtlsConnectionStruct(), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous TLS close operation. See g_dtls_connection_close()
	 * for more information.
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: %TRUE on success, %FALSE on failure, in which
	 *     case @error will be set
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool closeFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto p = g_dtls_connection_close_finish(getDtlsConnectionStruct(), (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Used by #GDtlsConnection implementations to emit the
	 * #GDtlsConnection::accept-certificate signal.
	 *
	 * Params:
	 *     peerCert = the peer's #GTlsCertificate
	 *     errors = the problems with @peer_cert
	 *
	 * Returns: %TRUE if one of the signal handlers has returned
	 *     %TRUE to accept @peer_cert
	 *
	 * Since: 2.48
	 */
	public bool emitAcceptCertificate(TlsCertificate peerCert, GTlsCertificateFlags errors)
	{
		return g_dtls_connection_emit_accept_certificate(getDtlsConnectionStruct(), (peerCert is null) ? null : peerCert.getTlsCertificateStruct(), errors) != 0;
	}

	/**
	 * Gets @conn's certificate, as set by
	 * g_dtls_connection_set_certificate().
	 *
	 * Returns: @conn's certificate, or %NULL
	 *
	 * Since: 2.48
	 */
	public TlsCertificate getCertificate()
	{
		auto p = g_dtls_connection_get_certificate(getDtlsConnectionStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) p);
	}

	/**
	 * Gets the certificate database that @conn uses to verify
	 * peer certificates. See g_dtls_connection_set_database().
	 *
	 * Returns: the certificate database that @conn uses or %NULL
	 *
	 * Since: 2.48
	 */
	public TlsDatabase getDatabase()
	{
		auto p = g_dtls_connection_get_database(getDtlsConnectionStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsDatabase)(cast(GTlsDatabase*) p);
	}

	/**
	 * Get the object that will be used to interact with the user. It will be used
	 * for things like prompting the user for passwords. If %NULL is returned, then
	 * no user interaction will occur for this connection.
	 *
	 * Returns: The interaction object.
	 *
	 * Since: 2.48
	 */
	public TlsInteraction getInteraction()
	{
		auto p = g_dtls_connection_get_interaction(getDtlsConnectionStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsInteraction)(cast(GTlsInteraction*) p);
	}

	/**
	 * Gets @conn's peer's certificate after the handshake has completed.
	 * (It is not set during the emission of
	 * #GDtlsConnection::accept-certificate.)
	 *
	 * Returns: @conn's peer's certificate, or %NULL
	 *
	 * Since: 2.48
	 */
	public TlsCertificate getPeerCertificate()
	{
		auto p = g_dtls_connection_get_peer_certificate(getDtlsConnectionStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) p);
	}

	/**
	 * Gets the errors associated with validating @conn's peer's
	 * certificate, after the handshake has completed. (It is not set
	 * during the emission of #GDtlsConnection::accept-certificate.)
	 *
	 * Returns: @conn's peer's certificate errors
	 *
	 * Since: 2.48
	 */
	public GTlsCertificateFlags getPeerCertificateErrors()
	{
		return g_dtls_connection_get_peer_certificate_errors(getDtlsConnectionStruct());
	}

	/**
	 * Gets @conn rehandshaking mode. See
	 * g_dtls_connection_set_rehandshake_mode() for details.
	 *
	 * Returns: @conn's rehandshaking mode
	 *
	 * Since: 2.48
	 */
	public GTlsRehandshakeMode getRehandshakeMode()
	{
		return g_dtls_connection_get_rehandshake_mode(getDtlsConnectionStruct());
	}

	/**
	 * Tests whether or not @conn expects a proper TLS close notification
	 * when the connection is closed. See
	 * g_dtls_connection_set_require_close_notify() for details.
	 *
	 * Returns: %TRUE if @conn requires a proper TLS close notification.
	 *
	 * Since: 2.48
	 */
	public bool getRequireCloseNotify()
	{
		return g_dtls_connection_get_require_close_notify(getDtlsConnectionStruct()) != 0;
	}

	/**
	 * Attempts a TLS handshake on @conn.
	 *
	 * On the client side, it is never necessary to call this method;
	 * although the connection needs to perform a handshake after
	 * connecting (or after sending a "STARTTLS"-type command) and may
	 * need to rehandshake later if the server requests it,
	 * #GDtlsConnection will handle this for you automatically when you try
	 * to send or receive data on the connection. However, you can call
	 * g_dtls_connection_handshake() manually if you want to know for sure
	 * whether the initial handshake succeeded or failed (as opposed to
	 * just immediately trying to write to @conn, in which
	 * case if it fails, it may not be possible to tell if it failed
	 * before or after completing the handshake).
	 *
	 * Likewise, on the server side, although a handshake is necessary at
	 * the beginning of the communication, you do not need to call this
	 * function explicitly unless you want clearer error reporting.
	 * However, you may call g_dtls_connection_handshake() later on to
	 * renegotiate parameters (encryption methods, etc) with the client.
	 *
	 * #GDtlsConnection::accept_certificate may be emitted during the
	 * handshake.
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: success or failure
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool handshake(Cancellable cancellable)
	{
		GError* err = null;

		auto p = g_dtls_connection_handshake(getDtlsConnectionStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Asynchronously performs a TLS handshake on @conn. See
	 * g_dtls_connection_handshake() for more information.
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call when the handshake is complete
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.48
	 */
	public void handshakeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dtls_connection_handshake_async(getDtlsConnectionStruct(), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous TLS handshake operation. See
	 * g_dtls_connection_handshake() for more information.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: %TRUE on success, %FALSE on failure, in which
	 *     case @error will be set.
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool handshakeFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto p = g_dtls_connection_handshake_finish(getDtlsConnectionStruct(), (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * This sets the certificate that @conn will present to its peer
	 * during the TLS handshake. For a #GDtlsServerConnection, it is
	 * mandatory to set this, and that will normally be done at construct
	 * time.
	 *
	 * For a #GDtlsClientConnection, this is optional. If a handshake fails
	 * with %G_TLS_ERROR_CERTIFICATE_REQUIRED, that means that the server
	 * requires a certificate, and if you try connecting again, you should
	 * call this method first. You can call
	 * g_dtls_client_connection_get_accepted_cas() on the failed connection
	 * to get a list of Certificate Authorities that the server will
	 * accept certificates from.
	 *
	 * (It is also possible that a server will allow the connection with
	 * or without a certificate; in that case, if you don't provide a
	 * certificate, you can tell that the server requested one by the fact
	 * that g_dtls_client_connection_get_accepted_cas() will return
	 * non-%NULL.)
	 *
	 * Params:
	 *     certificate = the certificate to use for @conn
	 *
	 * Since: 2.48
	 */
	public void setCertificate(TlsCertificate certificate)
	{
		g_dtls_connection_set_certificate(getDtlsConnectionStruct(), (certificate is null) ? null : certificate.getTlsCertificateStruct());
	}

	/**
	 * Sets the certificate database that is used to verify peer certificates.
	 * This is set to the default database by default. See
	 * g_tls_backend_get_default_database(). If set to %NULL, then
	 * peer certificate validation will always set the
	 * %G_TLS_CERTIFICATE_UNKNOWN_CA error (meaning
	 * #GDtlsConnection::accept-certificate will always be emitted on
	 * client-side connections, unless that bit is not set in
	 * #GDtlsClientConnection:validation-flags).
	 *
	 * Params:
	 *     database = a #GTlsDatabase
	 *
	 * Since: 2.48
	 */
	public void setDatabase(TlsDatabase database)
	{
		g_dtls_connection_set_database(getDtlsConnectionStruct(), (database is null) ? null : database.getTlsDatabaseStruct());
	}

	/**
	 * Set the object that will be used to interact with the user. It will be used
	 * for things like prompting the user for passwords.
	 *
	 * The @interaction argument will normally be a derived subclass of
	 * #GTlsInteraction. %NULL can also be provided if no user interaction
	 * should occur for this connection.
	 *
	 * Params:
	 *     interaction = an interaction object, or %NULL
	 *
	 * Since: 2.48
	 */
	public void setInteraction(TlsInteraction interaction)
	{
		g_dtls_connection_set_interaction(getDtlsConnectionStruct(), (interaction is null) ? null : interaction.getTlsInteractionStruct());
	}

	/**
	 * Sets how @conn behaves with respect to rehandshaking requests.
	 *
	 * %G_TLS_REHANDSHAKE_NEVER means that it will never agree to
	 * rehandshake after the initial handshake is complete. (For a client,
	 * this means it will refuse rehandshake requests from the server, and
	 * for a server, this means it will close the connection with an error
	 * if the client attempts to rehandshake.)
	 *
	 * %G_TLS_REHANDSHAKE_SAFELY means that the connection will allow a
	 * rehandshake only if the other end of the connection supports the
	 * TLS `renegotiation_info` extension. This is the default behavior,
	 * but means that rehandshaking will not work against older
	 * implementations that do not support that extension.
	 *
	 * %G_TLS_REHANDSHAKE_UNSAFELY means that the connection will allow
	 * rehandshaking even without the `renegotiation_info` extension. On
	 * the server side in particular, this is not recommended, since it
	 * leaves the server open to certain attacks. However, this mode is
	 * necessary if you need to allow renegotiation with older client
	 * software.
	 *
	 * Params:
	 *     mode = the rehandshaking mode
	 *
	 * Since: 2.48
	 */
	public void setRehandshakeMode(GTlsRehandshakeMode mode)
	{
		g_dtls_connection_set_rehandshake_mode(getDtlsConnectionStruct(), mode);
	}

	/**
	 * Sets whether or not @conn expects a proper TLS close notification
	 * before the connection is closed. If this is %TRUE (the default),
	 * then @conn will expect to receive a TLS close notification from its
	 * peer before the connection is closed, and will return a
	 * %G_TLS_ERROR_EOF error if the connection is closed without proper
	 * notification (since this may indicate a network error, or
	 * man-in-the-middle attack).
	 *
	 * In some protocols, the application will know whether or not the
	 * connection was closed cleanly based on application-level data
	 * (because the application-level data includes a length field, or is
	 * somehow self-delimiting); in this case, the close notify is
	 * redundant and may be omitted. You
	 * can use g_dtls_connection_set_require_close_notify() to tell @conn
	 * to allow an "unannounced" connection close, in which case the close
	 * will show up as a 0-length read, as in a non-TLS
	 * #GDatagramBased, and it is up to the application to check that
	 * the data has been fully received.
	 *
	 * Note that this only affects the behavior when the peer closes the
	 * connection; when the application calls g_dtls_connection_close_async() on
	 * @conn itself, this will send a close notification regardless of the
	 * setting of this property. If you explicitly want to do an unclean
	 * close, you can close @conn's #GDtlsConnection:base-socket rather
	 * than closing @conn itself.
	 *
	 * Params:
	 *     requireCloseNotify = whether or not to require close notification
	 *
	 * Since: 2.48
	 */
	public void setRequireCloseNotify(bool requireCloseNotify)
	{
		g_dtls_connection_set_require_close_notify(getDtlsConnectionStruct(), requireCloseNotify);
	}

	/**
	 * Shut down part or all of a DTLS connection.
	 *
	 * If @shutdown_read is %TRUE then the receiving side of the connection is shut
	 * down, and further reading is disallowed. Subsequent calls to
	 * g_datagram_based_receive_messages() will return %G_IO_ERROR_CLOSED.
	 *
	 * If @shutdown_write is %TRUE then the sending side of the connection is shut
	 * down, and further writing is disallowed. Subsequent calls to
	 * g_datagram_based_send_messages() will return %G_IO_ERROR_CLOSED.
	 *
	 * It is allowed for both @shutdown_read and @shutdown_write to be TRUE — this
	 * is equivalent to calling g_dtls_connection_close().
	 *
	 * If @cancellable is cancelled, the #GDtlsConnection may be left
	 * partially-closed and any pending untransmitted data may be lost. Call
	 * g_dtls_connection_shutdown() again to complete closing the #GDtlsConnection.
	 *
	 * Params:
	 *     shutdownRead = %TRUE to stop reception of incoming datagrams
	 *     shutdownWrite = %TRUE to stop sending outgoing datagrams
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %TRUE on success, %FALSE otherwise
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool shutdown(bool shutdownRead, bool shutdownWrite, Cancellable cancellable)
	{
		GError* err = null;

		auto p = g_dtls_connection_shutdown(getDtlsConnectionStruct(), shutdownRead, shutdownWrite, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Asynchronously shut down part or all of the DTLS connection. See
	 * g_dtls_connection_shutdown() for more information.
	 *
	 * Params:
	 *     shutdownRead = %TRUE to stop reception of incoming datagrams
	 *     shutdownWrite = %TRUE to stop sending outgoing datagrams
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call when the shutdown operation is complete
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.48
	 */
	public void shutdownAsync(bool shutdownRead, bool shutdownWrite, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dtls_connection_shutdown_async(getDtlsConnectionStruct(), shutdownRead, shutdownWrite, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous TLS shutdown operation. See
	 * g_dtls_connection_shutdown() for more information.
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: %TRUE on success, %FALSE on failure, in which
	 *     case @error will be set
	 *
	 * Since: 2.48
	 *
	 * Throws: GException on failure.
	 */
	public bool shutdownFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto p = g_dtls_connection_shutdown_finish(getDtlsConnectionStruct(), (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return p;
	}

	/**
	 * Emitted during the TLS handshake after the peer certificate has
	 * been received. You can examine @peer_cert's certification path by
	 * calling g_tls_certificate_get_issuer() on it.
	 *
	 * For a client-side connection, @peer_cert is the server's
	 * certificate, and the signal will only be emitted if the
	 * certificate was not acceptable according to @conn's
	 * #GDtlsClientConnection:validation_flags. If you would like the
	 * certificate to be accepted despite @errors, return %TRUE from the
	 * signal handler. Otherwise, if no handler accepts the certificate,
	 * the handshake will fail with %G_TLS_ERROR_BAD_CERTIFICATE.
	 *
	 * For a server-side connection, @peer_cert is the certificate
	 * presented by the client, if this was requested via the server's
	 * #GDtlsServerConnection:authentication_mode. On the server side,
	 * the signal is always emitted when the client presents a
	 * certificate, and the certificate will only be accepted if a
	 * handler returns %TRUE.
	 *
	 * Note that if this signal is emitted as part of asynchronous I/O
	 * in the main thread, then you should not attempt to interact with
	 * the user before returning from the signal handler. If you want to
	 * let the user decide whether or not to accept the certificate, you
	 * would have to return %FALSE from the signal handler on the first
	 * attempt, and then after the connection attempt returns a
	 * %G_TLS_ERROR_HANDSHAKE, you can interact with the user, and if
	 * the user decides to accept the certificate, remember that fact,
	 * create a new connection, and return %TRUE from the signal handler
	 * the next time.
	 *
	 * If you are doing I/O in another thread, you do not
	 * need to worry about this, and can simply block in the signal
	 * handler until the UI thread returns an answer.
	 *
	 * Params:
	 *     peerCert = the peer's #GTlsCertificate
	 *     errors = the problems with @peer_cert.
	 *
	 * Returns: %TRUE to accept @peer_cert (which will also
	 *     immediately end the signal emission). %FALSE to allow the signal
	 *     emission to continue, which will cause the handshake to fail if
	 *     no one else overrides it.
	 *
	 * Since: 2.48
	 */
	gulong addOnAcceptCertificate(bool delegate(TlsCertificate, GTlsCertificateFlags, DtlsConnectionIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "accept-certificate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
