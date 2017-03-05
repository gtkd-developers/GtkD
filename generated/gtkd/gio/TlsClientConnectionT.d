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


module gio.TlsClientConnectionT;

public  import gio.IOStream;
public  import gio.SocketConnectable;
public  import gio.SocketConnectableIF;
public  import glib.ConstructionException;
public  import glib.ErrorG;
public  import glib.GException;
public  import glib.ListG;
public  import gobject.ObjectG;
public  import gtkc.gio;
public  import gtkc.giotypes;


/**
 * #GTlsClientConnection is the client-side subclass of
 * #GTlsConnection, representing a client-side TLS connection.
 *
 * Since: 2.28
 */
public template TlsClientConnectionT(TStruct)
{
	/** Get the main Gtk struct */
	public GTlsClientConnection* getTlsClientConnectionStruct()
	{
		return cast(GTlsClientConnection*)getStruct();
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
	public void copySessionState(TlsClientConnectionIF source)
	{
		g_tls_client_connection_copy_session_state(getTlsClientConnectionStruct(), (source is null) ? null : source.getTlsClientConnectionStruct());
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
	 * Return: the list of
	 *     CA DNs. You should unref each element with g_byte_array_unref() and then
	 *     the free the list with g_list_free().
	 *
	 * Since: 2.28
	 */
	public ListG getAcceptedCas()
	{
		auto p = g_tls_client_connection_get_accepted_cas(getTlsClientConnectionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Gets @conn's expected server identity
	 *
	 * Return: a #GSocketConnectable describing the
	 *     expected server identity, or %NULL if the expected identity is not
	 *     known.
	 *
	 * Since: 2.28
	 */
	public SocketConnectableIF getServerIdentity()
	{
		auto p = g_tls_client_connection_get_server_identity(getTlsClientConnectionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnectable, SocketConnectableIF)(cast(GSocketConnectable*) p);
	}

	/**
	 * Gets whether @conn will use SSL 3.0 rather than the
	 * highest-supported version of TLS; see
	 * g_tls_client_connection_set_use_ssl3().
	 *
	 * Return: whether @conn will use SSL 3.0
	 *
	 * Since: 2.28
	 */
	public bool getUseSsl3()
	{
		return g_tls_client_connection_get_use_ssl3(getTlsClientConnectionStruct()) != 0;
	}

	/**
	 * Gets @conn's validation flags
	 *
	 * Return: the validation flags
	 *
	 * Since: 2.28
	 */
	public GTlsCertificateFlags getValidationFlags()
	{
		return g_tls_client_connection_get_validation_flags(getTlsClientConnectionStruct());
	}

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
	public void setServerIdentity(SocketConnectableIF identity)
	{
		g_tls_client_connection_set_server_identity(getTlsClientConnectionStruct(), (identity is null) ? null : identity.getSocketConnectableStruct());
	}

	/**
	 * If @use_ssl3 is %TRUE, this forces @conn to use SSL 3.0 rather than
	 * trying to properly negotiate the right version of TLS or SSL to use.
	 * This can be used when talking to servers that do not implement the
	 * fallbacks correctly and which will therefore fail to handshake with
	 * a "modern" TLS handshake attempt.
	 *
	 * Params:
	 *     useSsl3 = whether to use SSL 3.0
	 *
	 * Since: 2.28
	 */
	public void setUseSsl3(bool useSsl3)
	{
		g_tls_client_connection_set_use_ssl3(getTlsClientConnectionStruct(), useSsl3);
	}

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
	public void setValidationFlags(GTlsCertificateFlags flags)
	{
		g_tls_client_connection_set_validation_flags(getTlsClientConnectionStruct(), flags);
	}
}
