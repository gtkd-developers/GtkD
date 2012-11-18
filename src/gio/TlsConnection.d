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
 * inFile  = GTlsConnection.html
 * outPack = gio
 * outFile = TlsConnection
 * strct   = GTlsConnection
 * realStrct=
 * ctorStrct=GIOStream
 * clss    = TlsConnection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_tls_connection_
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
 * 	- gio.TlsCertificate
 * 	- gio.TlsDatabase
 * 	- gio.TlsInteraction
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * 	- GTlsCertificate* -> TlsCertificate
 * 	- GTlsDatabase* -> TlsDatabase
 * 	- GTlsInteraction* -> TlsInteraction
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.TlsConnection;

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
private import gio.TlsCertificate;
private import gio.TlsDatabase;
private import gio.TlsInteraction;



private import gio.IOStream;

/**
 * Description
 * GTlsConnection is the base TLS connection class type, which wraps
 * a GIOStream and provides TLS encryption on top of it. Its
 * subclasses, GTlsClientConnection and GTlsServerConnection,
 * implement client-side and server-side TLS, respectively.
 */
public class TlsConnection : IOStream
{
	
	/** the main Gtk struct */
	protected GTlsConnection* gTlsConnection;
	
	
	public GTlsConnection* getTlsConnectionStruct()
	{
		return gTlsConnection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsConnection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTlsConnection* gTlsConnection)
	{
		super(cast(GIOStream*)gTlsConnection);
		this.gTlsConnection = gTlsConnection;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTlsConnection = cast(GTlsConnection*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(TlsCertificate, GTlsCertificateFlags, TlsConnection)[] onAcceptCertificateListeners;
	/**
	 * Emitted during the TLS handshake after the peer certificate has
	 * been received. You can examine peer_cert's certification path by
	 * calling g_tls_certificate_get_issuer() on it.
	 * For a client-side connection, peer_cert is the server's
	 * certificate, and the signal will only be emitted if the
	 * certificate was not acceptable according to conn's
	 * "validation_flags". If you would like the
	 * certificate to be accepted despite errors, return TRUE from the
	 * signal handler. Otherwise, if no handler accepts the certificate,
	 * the handshake will fail with G_TLS_ERROR_BAD_CERTIFICATE.
	 * For a server-side connection, peer_cert is the certificate
	 * presented by the client, if this was requested via the server's
	 * "authentication_mode". On the server side,
	 * the signal is always emitted when the client presents a
	 * certificate, and the certificate will only be accepted if a
	 * handler returns TRUE.
	 * Note that if this signal is emitted as part of asynchronous I/O
	 * in the main thread, then you should not attempt to interact with
	 * the user before returning from the signal handler. If you want to
	 * let the user decide whether or not to accept the certificate, you
	 * would have to return FALSE from the signal handler on the first
	 * attempt, and then after the connection attempt returns a
	 * G_TLS_ERROR_HANDSHAKE, you can interact with the user, and if
	 * the user decides to accept the certificate, remember that fact,
	 * create a new connection, and return TRUE from the signal handler
	 * the next time.
	 * If you are doing I/O in another thread, you do not
	 * need to worry about this, and can simply block in the signal
	 * handler until the UI thread returns an answer.
	 * TRUE to accept peer_cert (which will also
	 * immediately end the signal emission). FALSE to allow the signal
	 * emission to continue, which will cause the handshake to fail if
	 * no one else overrides it.
	 * Since 2.28
	 */
	void addOnAcceptCertificate(bool delegate(TlsCertificate, GTlsCertificateFlags, TlsConnection) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("accept-certificate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"accept-certificate",
			cast(GCallback)&callBackAcceptCertificate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["accept-certificate"] = 1;
		}
		onAcceptCertificateListeners ~= dlg;
	}
	extern(C) static gboolean callBackAcceptCertificate(GTlsConnection* connStruct, GTlsCertificate* peerCert, GTlsCertificateFlags errors, TlsConnection _tlsConnection)
	{
		foreach ( bool delegate(TlsCertificate, GTlsCertificateFlags, TlsConnection) dlg ; _tlsConnection.onAcceptCertificateListeners )
		{
			if ( dlg(ObjectG.getDObject!(TlsCertificate)(peerCert), errors, _tlsConnection) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * This sets the certificate that conn will present to its peer
	 * during the TLS handshake. For a GTlsServerConnection, it is
	 * mandatory to set this, and that will normally be done at construct
	 * time.
	 * For a GTlsClientConnection, this is optional. If a handshake fails
	 * with G_TLS_ERROR_CERTIFICATE_REQUIRED, that means that the server
	 * requires a certificate, and if you try connecting again, you should
	 * call this method first. You can call
	 * g_tls_client_connection_get_accepted_cas() on the failed connection
	 * to get a list of Certificate Authorities that the server will
	 * accept certificates from.
	 * (It is also possible that a server will allow the connection with
	 * or without a certificate; in that case, if you don't provide a
	 * certificate, you can tell that the server requested one by the fact
	 * that g_tls_client_connection_get_accepted_cas() will return
	 * non-NULL.)
	 * Since 2.28
	 * Params:
	 * certificate = the certificate to use for conn
	 */
	public void setCertificate(TlsCertificate certificate)
	{
		// void g_tls_connection_set_certificate (GTlsConnection *conn,  GTlsCertificate *certificate);
		g_tls_connection_set_certificate(gTlsConnection, (certificate is null) ? null : certificate.getTlsCertificateStruct());
	}
	
	/**
	 * Gets conn's certificate, as set by
	 * g_tls_connection_set_certificate().
	 * Since 2.28
	 * Returns: conn's certificate, or NULL. [transfer none]
	 */
	public TlsCertificate getCertificate()
	{
		// GTlsCertificate * g_tls_connection_get_certificate (GTlsConnection *conn);
		auto p = g_tls_connection_get_certificate(gTlsConnection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) p);
	}
	
	/**
	 * Gets conn's peer's certificate after the handshake has completed.
	 * (It is not set during the emission of
	 * "accept-certificate".)
	 * Since 2.28
	 * Returns: conn's peer's certificate, or NULL. [transfer none]
	 */
	public TlsCertificate getPeerCertificate()
	{
		// GTlsCertificate * g_tls_connection_get_peer_certificate  (GTlsConnection *conn);
		auto p = g_tls_connection_get_peer_certificate(gTlsConnection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) p);
	}
	
	/**
	 * Gets the errors associated with validating conn's peer's
	 * certificate, after the handshake has completed. (It is not set
	 * during the emission of "accept-certificate".)
	 * Since 2.28
	 * Returns: conn's peer's certificate errors
	 */
	public GTlsCertificateFlags getPeerCertificateErrors()
	{
		// GTlsCertificateFlags g_tls_connection_get_peer_certificate_errors  (GTlsConnection *conn);
		return g_tls_connection_get_peer_certificate_errors(gTlsConnection);
	}
	
	/**
	 * Sets whether or not conn expects a proper TLS close notification
	 * before the connection is closed. If this is TRUE (the default),
	 * then conn will expect to receive a TLS close notification from its
	 * peer before the connection is closed, and will return a
	 * G_TLS_ERROR_EOF error if the connection is closed without proper
	 * notification (since this may indicate a network error, or
	 * man-in-the-middle attack).
	 * In some protocols, the application will know whether or not the
	 * connection was closed cleanly based on application-level data
	 * (because the application-level data includes a length field, or is
	 * somehow self-delimiting); in this case, the close notify is
	 * redundant and sometimes omitted. (TLS 1.1 explicitly allows this;
	 * in TLS 1.0 it is technically an error, but often done anyway.) You
	 * can use g_tls_connection_set_require_close_notify() to tell conn
	 * to allow an "unannounced" connection close, in which case the close
	 * will show up as a 0-length read, as in a non-TLS
	 * GSocketConnection, and it is up to the application to check that
	 * the data has been fully received.
	 * Note that this only affects the behavior when the peer closes the
	 * connection; when the application calls g_io_stream_close() itself
	 * on conn, this will send a close notification regardless of the
	 * setting of this property. If you explicitly want to do an unclean
	 * close, you can close conn's "base-io-stream" rather
	 * than closing conn itself.
	 * Since 2.28
	 * Params:
	 * requireCloseNotify = whether or not to require close notification
	 */
	public void setRequireCloseNotify(int requireCloseNotify)
	{
		// void g_tls_connection_set_require_close_notify  (GTlsConnection *conn,  gboolean require_close_notify);
		g_tls_connection_set_require_close_notify(gTlsConnection, requireCloseNotify);
	}
	
	/**
	 * Tests whether or not conn expects a proper TLS close notification
	 * when the connection is closed. See
	 * g_tls_connection_set_require_close_notify() for details.
	 * Since 2.28
	 * Returns: TRUE if conn requires a proper TLS close notification.
	 */
	public int getRequireCloseNotify()
	{
		// gboolean g_tls_connection_get_require_close_notify  (GTlsConnection *conn);
		return g_tls_connection_get_require_close_notify(gTlsConnection);
	}
	
	/**
	 * Sets how conn behaves with respect to rehandshaking requests.
	 * G_TLS_REHANDSHAKE_NEVER means that it will never agree to
	 * rehandshake after the initial handshake is complete. (For a client,
	 * this means it will refuse rehandshake requests from the server, and
	 * for a server, this means it will close the connection with an error
	 * if the client attempts to rehandshake.)
	 * G_TLS_REHANDSHAKE_SAFELY means that the connection will allow a
	 * rehandshake only if the other end of the connection supports the
	 * TLS renegotiation_info extension. This is the
	 * default behavior, but means that rehandshaking will not work
	 * against older implementations that do not support that extension.
	 * G_TLS_REHANDSHAKE_UNSAFELY means that the connection will allow
	 * rehandshaking even without the
	 * renegotiation_info extension. On the server side
	 * in particular, this is not recommended, since it leaves the server
	 * open to certain attacks. However, this mode is necessary if you
	 * need to allow renegotiation with older client software.
	 * Since 2.28
	 * Params:
	 * mode = the rehandshaking mode
	 */
	public void setRehandshakeMode(GTlsRehandshakeMode mode)
	{
		// void g_tls_connection_set_rehandshake_mode  (GTlsConnection *conn,  GTlsRehandshakeMode mode);
		g_tls_connection_set_rehandshake_mode(gTlsConnection, mode);
	}
	
	/**
	 * Gets conn rehandshaking mode. See
	 * g_tls_connection_set_rehandshake_mode() for details.
	 * Since 2.28
	 * Returns: conn's rehandshaking mode
	 */
	public GTlsRehandshakeMode getRehandshakeMode()
	{
		// GTlsRehandshakeMode g_tls_connection_get_rehandshake_mode  (GTlsConnection *conn);
		return g_tls_connection_get_rehandshake_mode(gTlsConnection);
	}
	
	/**
	 * Warning
	 * g_tls_connection_set_use_system_certdb has been deprecated since version 2.30 and should not be used in newly-written code. Use g_tls_connection_set_database() instead
	 * Sets whether conn uses the system certificate database to verify
	 * peer certificates. This is TRUE by default. If set to FALSE, then
	 * peer certificate validation will always set the
	 * G_TLS_CERTIFICATE_UNKNOWN_CA error (meaning
	 * "accept-certificate" will always be emitted on
	 * client-side connections, unless that bit is not set in
	 * "validation-flags").
	 * Params:
	 * useSystemCertdb = whether to use the system certificate database
	 */
	public void setUseSystemCertdb(int useSystemCertdb)
	{
		// void g_tls_connection_set_use_system_certdb  (GTlsConnection *conn,  gboolean use_system_certdb);
		g_tls_connection_set_use_system_certdb(gTlsConnection, useSystemCertdb);
	}
	
	/**
	 * Warning
	 * g_tls_connection_get_use_system_certdb has been deprecated since version 2.30 and should not be used in newly-written code. Use g_tls_connection_get_database() instead
	 * Gets whether conn uses the system certificate database to verify
	 * peer certificates. See g_tls_connection_set_use_system_certdb().
	 * Returns: whether conn uses the system certificate database
	 */
	public int getUseSystemCertdb()
	{
		// gboolean g_tls_connection_get_use_system_certdb  (GTlsConnection *conn);
		return g_tls_connection_get_use_system_certdb(gTlsConnection);
	}
	
	/**
	 * Gets the certificate database that conn uses to verify
	 * peer certificates. See g_tls_connection_set_database().
	 * Since 2.30
	 * Returns: the certificate database that conn uses or NULL. [transfer none]
	 */
	public TlsDatabase getDatabase()
	{
		// GTlsDatabase * g_tls_connection_get_database (GTlsConnection *conn);
		auto p = g_tls_connection_get_database(gTlsConnection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsDatabase)(cast(GTlsDatabase*) p);
	}
	
	/**
	 * Sets the certificate database that is used to verify peer certificates.
	 * This is set to the default database by default. See
	 * g_tls_backend_get_default_database(). If set to NULL, then
	 * peer certificate validation will always set the
	 * G_TLS_CERTIFICATE_UNKNOWN_CA error (meaning
	 * "accept-certificate" will always be emitted on
	 * client-side connections, unless that bit is not set in
	 * "validation-flags").
	 * Since 2.30
	 * Params:
	 * database = a GTlsDatabase
	 */
	public void setDatabase(TlsDatabase database)
	{
		// void g_tls_connection_set_database (GTlsConnection *conn,  GTlsDatabase *database);
		g_tls_connection_set_database(gTlsConnection, (database is null) ? null : database.getTlsDatabaseStruct());
	}
	
	/**
	 * Get the object that will be used to interact with the user. It will be used
	 * for things like prompting the user for passwords. If NULL is returned, then
	 * no user interaction will occur for this connection.
	 * Since 2.30
	 * Returns: The interaction object. [transfer none]
	 */
	public TlsInteraction getInteraction()
	{
		// GTlsInteraction * g_tls_connection_get_interaction (GTlsConnection *conn);
		auto p = g_tls_connection_get_interaction(gTlsConnection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsInteraction)(cast(GTlsInteraction*) p);
	}
	
	/**
	 * Set the object that will be used to interact with the user. It will be used
	 * for things like prompting the user for passwords.
	 * The interaction argument will normally be a derived subclass of
	 * GTlsInteraction. NULL can also be provided if no user interaction
	 * should occur for this connection.
	 * Since 2.30
	 * Params:
	 * interaction = an interaction object, or NULL. [allow-none]
	 */
	public void setInteraction(TlsInteraction interaction)
	{
		// void g_tls_connection_set_interaction (GTlsConnection *conn,  GTlsInteraction *interaction);
		g_tls_connection_set_interaction(gTlsConnection, (interaction is null) ? null : interaction.getTlsInteractionStruct());
	}
	
	/**
	 * Attempts a TLS handshake on conn.
	 * On the client side, it is never necessary to call this method;
	 * although the connection needs to perform a handshake after
	 * connecting (or after sending a "STARTTLS"-type command) and may
	 * need to rehandshake later if the server requests it,
	 * GTlsConnection will handle this for you automatically when you try
	 * to send or receive data on the connection. However, you can call
	 * g_tls_connection_handshake() manually if you want to know for sure
	 * whether the initial handshake succeeded or failed (as opposed to
	 * just immediately trying to write to conn's output stream, in which
	 * case if it fails, it may not be possible to tell if it failed
	 * before or after completing the handshake).
	 * Likewise, on the server side, although a handshake is necessary at
	 * the beginning of the communication, you do not need to call this
	 * function explicitly unless you want clearer error reporting.
	 * However, you may call g_tls_connection_handshake() later on to
	 * renegotiate parameters (encryption methods, etc) with the client.
	 * "accept_certificate" may be emitted during the
	 * handshake.
	 * Since 2.28
	 * Params:
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: success or failure
	 * Throws: GException on failure.
	 */
	public int handshake(Cancellable cancellable)
	{
		// gboolean g_tls_connection_handshake (GTlsConnection *conn,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_tls_connection_handshake(gTlsConnection, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Asynchronously performs a TLS handshake on conn. See
	 * g_tls_connection_handshake() for more information.
	 * Since 2.28
	 * Params:
	 * ioPriority = the I/O priority
	 * of the request.
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = callback to call when the handshake is complete
	 * userData = the data to pass to the callback function
	 */
	public void handshakeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_tls_connection_handshake_async (GTlsConnection *conn,  int io_priority,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_tls_connection_handshake_async(gTlsConnection, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finish an asynchronous TLS handshake operation. See
	 * g_tls_connection_handshake() for more information.
	 * Since 2.28
	 * Params:
	 * result = a GAsyncResult.
	 * Returns: TRUE on success, FALSE on failure, in which case error will be set.
	 * Throws: GException on failure.
	 */
	public int handshakeFinish(GAsyncResult* result)
	{
		// gboolean g_tls_connection_handshake_finish (GTlsConnection *conn,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_tls_connection_handshake_finish(gTlsConnection, result, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Used by GTlsConnection implementations to emit the
	 * "accept-certificate" signal.
	 * Since 2.28
	 * Params:
	 * peerCert = the peer's GTlsCertificate
	 * errors = the problems with peer_cert
	 * Returns: TRUE if one of the signal handlers has returned TRUE to accept peer_cert
	 */
	public int emitAcceptCertificate(TlsCertificate peerCert, GTlsCertificateFlags errors)
	{
		// gboolean g_tls_connection_emit_accept_certificate  (GTlsConnection *conn,  GTlsCertificate *peer_cert,  GTlsCertificateFlags errors);
		return g_tls_connection_emit_accept_certificate(gTlsConnection, (peerCert is null) ? null : peerCert.getTlsCertificateStruct(), errors);
	}
}
