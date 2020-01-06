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


module gio.DtlsClientConnectionIF;

private import gio.DatagramBasedIF;
private import gio.SocketConnectableIF;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gobject.ObjectG;


/**
 * #GDtlsClientConnection is the client-side subclass of
 * #GDtlsConnection, representing a client-side DTLS connection.
 *
 * Since: 2.48
 */
public interface DtlsClientConnectionIF{
	/** Get the main Gtk struct */
	public GDtlsClientConnection* getDtlsClientConnectionStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_dtls_client_connection_get_type();
	}

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
	 * Since: 2.48
	 */
	public ListG getAcceptedCas();

	/**
	 * Gets @conn's expected server identity
	 *
	 * Returns: a #GSocketConnectable describing the
	 *     expected server identity, or %NULL if the expected identity is not
	 *     known.
	 *
	 * Since: 2.48
	 */
	public SocketConnectableIF getServerIdentity();

	/**
	 * Gets @conn's validation flags
	 *
	 * Returns: the validation flags
	 *
	 * Since: 2.48
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
	 * Since: 2.48
	 */
	public void setServerIdentity(SocketConnectableIF identity);

	/**
	 * Sets @conn's validation flags, to override the default set of
	 * checks performed when validating a server certificate. By default,
	 * %G_TLS_CERTIFICATE_VALIDATE_ALL is used.
	 *
	 * Params:
	 *     flags = the #GTlsCertificateFlags to use
	 *
	 * Since: 2.48
	 */
	public void setValidationFlags(GTlsCertificateFlags flags);
}
