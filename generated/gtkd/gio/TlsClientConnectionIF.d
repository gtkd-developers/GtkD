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
public  import gtkc.giotypes;


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
	 * Copies session state from one connection to another. This is
	 * not normally needed, but may be used when the same session
	 * needs to be used between different endpoints as is required
	 * by some protocols such as FTP over TLS. @source should have
	 * already completed a handshake, and @conn should not have
	 * completed a handshake.
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
	 * Gets whether @conn will force the lowest-supported TLS protocol
	 * version rather than attempt to negotiate the highest mutually-
	 * supported version of TLS; see g_tls_client_connection_set_use_ssl3().
	 *
	 * Deprecated: SSL 3.0 is insecure, and this function does not
	 * actually indicate whether it is enabled.
	 *
	 * Returns: whether @conn will use the lowest-supported TLS protocol version
	 *
	 * Since: 2.28
	 */
	public bool getUseSsl3();

	/**
	 * Gets @conn's validation flags
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
	 * If @use_ssl3 is %TRUE, this forces @conn to use the lowest-supported
	 * TLS protocol version rather than trying to properly negotiate the
	 * highest mutually-supported protocol version with the peer. This can
	 * be used when talking to broken TLS servers that exhibit protocol
	 * version intolerance.
	 *
	 * Be aware that SSL 3.0 is generally disabled by the #GTlsBackend, so
	 * the lowest-supported protocol version is probably not SSL 3.0.
	 *
	 * Deprecated: SSL 3.0 is insecure, and this function does not
	 * generally enable or disable it, despite its name.
	 *
	 * Params:
	 *     useSsl3 = whether to use the lowest-supported protocol version
	 *
	 * Since: 2.28
	 */
	public void setUseSsl3(bool useSsl3);

	/**
	 * Sets @conn's validation flags, to override the default set of
	 * checks performed when validating a server certificate. By default,
	 * %G_TLS_CERTIFICATE_VALIDATE_ALL is used.
	 *
	 * Params:
	 *     flags = the #GTlsCertificateFlags to use
	 *
	 * Since: 2.28
	 */
	public void setValidationFlags(GTlsCertificateFlags flags);
}
