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


module gio.TlsClientConnectionIF;

private import gio.IOStream;
private import gio.SocketConnectableIF;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.ObjectG;


/**
 * #GTlsClientConnection is the client-side subclass of
 * #GTlsConnection, representing a client-side TLS connection.
 *
 * Since: 2.28
 */
public interface TlsClientConnectionIF{
	/** Get the main Gtk struct */
	public GTlsClientConnection* getTlsClientConnectionStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_tls_client_connection_get_type();
	}

	/**
	 * Possibly copies session state from one connection to another, for use
	 * in TLS session resumption. This is not normally needed, but may be
	 * used when the same session needs to be used between different
	 * endpoints, as is required by some protocols, such as FTP over TLS.
	 * @source should have already completed a handshake and, since TLS 1.3,
	 * it should have been used to read data at least once. @conn should not
	 * have completed a handshake.
	 *
	 * It is not possible to know whether a call to this function will
	 * actually do anything. Because session resumption is normally used
	 * only for performance benefit, the TLS backend might not implement
	 * this function. Even if implemented, it may not actually succeed in
	 * allowing @conn to resume @source's TLS session, because the server
	 * may not have sent a session resumption token to @source, or it may
	 * refuse to accept the token from @conn. There is no way to know
	 * whether a call to this function is actually successful.
	 *
	 * Using this function is not required to benefit from session
	 * resumption. If the TLS backend supports session resumption, the
	 * session will be resumed automatically if it is possible to do so
	 * without weakening the privacy guarantees normally provided by TLS,
	 * without need to call this function. For example, with TLS 1.3,
	 * a session ticket will be automatically copied from any
	 * #GTlsClientConnection that has previously received session tickets
	 * from the server, provided a ticket is available that has not
	 * previously been used for session resumption, since session ticket
	 * reuse would be a privacy weakness. Using this function causes the
	 * ticket to be copied without regard for privacy considerations.
	 *
	 * Params:
	 *     source = a #GTlsClientConnection
	 *
	 * Since: 2.46
	 */
	public void copySessionState(TlsClientConnectionIF source);

	/**
	 * Gets the list of distinguished names of the Certificate Authorities
	 * that the server will accept certificates from. This will be set
	 * during the TLS handshake if the server requests a certificate.
	 * Otherwise, it will be %NULL.
	 *
	 * Each item in the list is a #GByteArray which contains the complete
	 * subject DN of the certificate authority.
	 *
	 * Returns: the list of
	 *     CA DNs. You should unref each element with g_byte_array_unref() and then
	 *     the free the list with g_list_free().
	 *
	 * Since: 2.28
	 */
	public ListG getAcceptedCas();

	/**
	 * Gets @conn's expected server identity
	 *
	 * Returns: a #GSocketConnectable describing the
	 *     expected server identity, or %NULL if the expected identity is not
	 *     known.
	 *
	 * Since: 2.28
	 */
	public SocketConnectableIF getServerIdentity();

	/**
	 * SSL 3.0 is no longer supported. See
	 * g_tls_client_connection_set_use_ssl3() for details.
	 *
	 * Deprecated: SSL 3.0 is insecure.
	 *
	 * Returns: %FALSE
	 *
	 * Since: 2.28
	 */
	public bool getUseSsl3();

	/**
	 * Gets @conn's validation flags
	 *
	 * This function does not work as originally designed and is impossible
	 * to use correctly. See #GTlsClientConnection:validation-flags for more
	 * information.
	 *
	 * Deprecated: Do not attempt to ignore validation errors.
	 *
	 * Returns: the validation flags
	 *
	 * Since: 2.28
	 */
	public GTlsCertificateFlags getValidationFlags();

	/**
	 * Sets @conn's expected server identity, which is used both to tell
	 * servers on virtual hosts which certificate to present, and also
	 * to let @conn know what name to look for in the certificate when
	 * performing %G_TLS_CERTIFICATE_BAD_IDENTITY validation, if enabled.
	 *
	 * Params:
	 *     identity = a #GSocketConnectable describing the expected server identity
	 *
	 * Since: 2.28
	 */
	public void setServerIdentity(SocketConnectableIF identity);

	/**
	 * Since GLib 2.42.1, SSL 3.0 is no longer supported.
	 *
	 * From GLib 2.42.1 through GLib 2.62, this function could be used to
	 * force use of TLS 1.0, the lowest-supported TLS protocol version at
	 * the time. In the past, this was needed to connect to broken TLS
	 * servers that exhibited protocol version intolerance. Such servers
	 * are no longer common, and using TLS 1.0 is no longer considered
	 * acceptable.
	 *
	 * Since GLib 2.64, this function does nothing.
	 *
	 * Deprecated: SSL 3.0 is insecure.
	 *
	 * Params:
	 *     useSsl3 = a #gboolean, ignored
	 *
	 * Since: 2.28
	 */
	public void setUseSsl3(bool useSsl3);

	/**
	 * Sets @conn's validation flags, to override the default set of
	 * checks performed when validating a server certificate. By default,
	 * %G_TLS_CERTIFICATE_VALIDATE_ALL is used.
	 *
	 * This function does not work as originally designed and is impossible
	 * to use correctly. See #GTlsClientConnection:validation-flags for more
	 * information.
	 *
	 * Deprecated: Do not attempt to ignore validation errors.
	 *
	 * Params:
	 *     flags = the #GTlsCertificateFlags to use
	 *
	 * Since: 2.28
	 */
	public void setValidationFlags(GTlsCertificateFlags flags);
}
