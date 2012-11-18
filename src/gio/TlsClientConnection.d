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
 * inFile  = GTlsClientConnection.html
 * outPack = gio
 * outFile = TlsClientConnection
 * strct   = GTlsClientConnection
 * realStrct=
 * ctorStrct=GIOStream
 * clss    = TlsClientConnection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GTlsConnection
 * implements:
 * prefixes:
 * 	- g_tls_client_connection_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- gio.IOStream
 * 	- gio.SocketConnectable
 * 	- gio.SocketConnectableIF
 * structWrap:
 * 	- GIOStream* -> IOStream
 * 	- GList* -> ListG
 * 	- GSocketConnectable* -> SocketConnectableIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.TlsClientConnection;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gio.IOStream;
private import gio.SocketConnectable;
private import gio.SocketConnectableIF;



private import gio.TlsConnection;

/**
 * Description
 * GTlsClientConnection is the client-side subclass of
 * GTlsConnection, representing a client-side TLS connection.
 */
public class TlsClientConnection : TlsConnection
{
	
	/** the main Gtk struct */
	protected GTlsClientConnection* gTlsClientConnection;
	
	
	public GTlsClientConnection* getTlsClientConnectionStruct()
	{
		return gTlsClientConnection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsClientConnection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTlsClientConnection* gTlsClientConnection)
	{
		super(cast(GTlsConnection*)gTlsClientConnection);
		this.gTlsClientConnection = gTlsClientConnection;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTlsClientConnection = cast(GTlsClientConnection*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GTlsClientConnection wrapping base_io_stream (which
	 * must have pollable input and output streams) which is assumed to
	 * communicate with the server identified by server_identity.
	 * Since 2.28
	 * Params:
	 * baseIoStream = the GIOStream to wrap
	 * serverIdentity = the expected identity of the server. [allow-none]
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (IOStream baseIoStream, SocketConnectableIF serverIdentity)
	{
		// GIOStream * g_tls_client_connection_new (GIOStream *base_io_stream,  GSocketConnectable *server_identity,  GError **error);
		GError* err = null;
		
		auto p = g_tls_client_connection_new((baseIoStream is null) ? null : baseIoStream.getIOStreamStruct(), (serverIdentity is null) ? null : serverIdentity.getSocketConnectableTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_tls_client_connection_new((baseIoStream is null) ? null : baseIoStream.getIOStreamStruct(), (serverIdentity is null) ? null : serverIdentity.getSocketConnectableTStruct(), &err)");
		}
		this(cast(GTlsClientConnection*) p);
	}
	
	/**
	 * Sets conn's expected server identity, which is used both to tell
	 * servers on virtual hosts which certificate to present, and also
	 * to let conn know what name to look for in the certificate when
	 * performing G_TLS_CERTIFICATE_BAD_IDENTITY validation, if enabled.
	 * Since 2.28
	 * Params:
	 * identity = a GSocketConnectable describing the expected server identity
	 */
	public void setServerIdentity(SocketConnectableIF identity)
	{
		// void g_tls_client_connection_set_server_identity  (GTlsClientConnection *conn,  GSocketConnectable *identity);
		g_tls_client_connection_set_server_identity(gTlsClientConnection, (identity is null) ? null : identity.getSocketConnectableTStruct());
	}
	
	/**
	 * Gets conn's expected server identity
	 * Since 2.28
	 * Returns: a GSocketConnectable describing the expected server identity, or NULL if the expected identity is not known. [transfer none]
	 */
	public SocketConnectableIF getServerIdentity()
	{
		// GSocketConnectable * g_tls_client_connection_get_server_identity  (GTlsClientConnection *conn);
		auto p = g_tls_client_connection_get_server_identity(gTlsClientConnection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnectable)(cast(GSocketConnectable*) p);
	}
	
	/**
	 * Sets conn's validation flags, to override the default set of
	 * checks performed when validating a server certificate. By default,
	 * G_TLS_CERTIFICATE_VALIDATE_ALL is used.
	 * Since 2.28
	 * Params:
	 * flags = the GTlsCertificateFlags to use
	 */
	public void setValidationFlags(GTlsCertificateFlags flags)
	{
		// void g_tls_client_connection_set_validation_flags  (GTlsClientConnection *conn,  GTlsCertificateFlags flags);
		g_tls_client_connection_set_validation_flags(gTlsClientConnection, flags);
	}
	
	/**
	 * Gets conn's validation flags
	 * Since 2.28
	 * Returns: the validation flags
	 */
	public GTlsCertificateFlags getValidationFlags()
	{
		// GTlsCertificateFlags g_tls_client_connection_get_validation_flags  (GTlsClientConnection *conn);
		return g_tls_client_connection_get_validation_flags(gTlsClientConnection);
	}
	
	/**
	 * If use_ssl3 is TRUE, this forces conn to use SSL 3.0 rather than
	 * trying to properly negotiate the right version of TLS or SSL to use.
	 * This can be used when talking to servers that do not implement the
	 * fallbacks correctly and which will therefore fail to handshake with
	 * a "modern" TLS handshake attempt.
	 * Since 2.28
	 * Params:
	 * useSsl3 = whether to use SSL 3.0
	 */
	public void setUseSsl3(int useSsl3)
	{
		// void g_tls_client_connection_set_use_ssl3  (GTlsClientConnection *conn,  gboolean use_ssl3);
		g_tls_client_connection_set_use_ssl3(gTlsClientConnection, useSsl3);
	}
	
	/**
	 * Gets whether conn will use SSL 3.0 rather than the
	 * highest-supported version of TLS; see
	 * g_tls_client_connection_set_use_ssl3().
	 * Since 2.28
	 * Returns: whether conn will use SSL 3.0
	 */
	public int getUseSsl3()
	{
		// gboolean g_tls_client_connection_get_use_ssl3  (GTlsClientConnection *conn);
		return g_tls_client_connection_get_use_ssl3(gTlsClientConnection);
	}
	
	/**
	 * Gets the list of distinguished names of the Certificate Authorities
	 * that the server will accept certificates from. This will be set
	 * during the TLS handshake if the server requests a certificate.
	 * Otherwise, it will be NULL.
	 * Each item in the list is a GByteArray which contains the complete
	 * subject DN of the certificate authority.
	 * Since 2.28
	 * Returns: the list of CA DNs. You should unref each element with g_byte_array_unref() and then the free the list with g_list_free(). [element-type GByteArray][transfer full]
	 */
	public ListG getAcceptedCas()
	{
		// GList * g_tls_client_connection_get_accepted_cas  (GTlsClientConnection *conn);
		auto p = g_tls_client_connection_get_accepted_cas(gTlsClientConnection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
}
