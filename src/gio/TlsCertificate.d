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
 * inFile  = GTlsCertificate.html
 * outPack = gio
 * outFile = TlsCertificate
 * strct   = GTlsCertificate
 * realStrct=
 * ctorStrct=
 * clss    = TlsCertificate
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_tls_certificate_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_tls_certificate_new_from_file
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.ListG
 * 	- gio.SocketConnectableIF
 * structWrap:
 * 	- GList* -> ListG
 * 	- GSocketConnectable* -> SocketConnectableIF
 * 	- GTlsCertificate* -> TlsCertificate
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.TlsCertificate;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import gio.SocketConnectableIF;



private import gobject.ObjectG;

/**
 * A certificate used for TLS authentication and encryption.
 * This can represent either a certificate only (eg, the certificate
 * received by a client from a server), or the combination of
 * a certificate and a private key (which is needed when acting as a
 * GTlsServerConnection).
 */
public class TlsCertificate : ObjectG
{
	
	/** the main Gtk struct */
	protected GTlsCertificate* gTlsCertificate;
	
	
	public GTlsCertificate* getTlsCertificateStruct()
	{
		return gTlsCertificate;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsCertificate;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTlsCertificate* gTlsCertificate)
	{
		super(cast(GObject*)gTlsCertificate);
		this.gTlsCertificate = gTlsCertificate;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTlsCertificate = cast(GTlsCertificate*)obj;
	}
	
	/**
	 * GTlsConnection and related classes provide TLS (Transport Layer
	 * Security, previously known as SSL, Secure Sockets Layer) support for
	 * gio-based network streams.
	 *
	 * In the simplest case, for a client connection, you can just set the
	 * "tls" flag on a GSocketClient, and then any
	 * connections created by that client will have TLS negotiated
	 * automatically, using appropriate default settings, and rejecting
	 * any invalid or self-signed certificates (unless you change that
	 * default by setting the "tls-validation-flags"
	 * property). The returned object will be a GTcpWrapperConnection,
	 * which wraps the underlying GTlsClientConnection.
	 *
	 * For greater control, you can create your own GTlsClientConnection,
	 * wrapping a GSocketConnection (or an arbitrary GIOStream with
	 * pollable input and output streams) and then connect to its signals,
	 * such as "accept-certificate", before starting the
	 * handshake.
	 *
	 * Server-side TLS is similar, using GTlsServerConnection. At the
	 * moment, there is no support for automatically wrapping server-side
	 * connections in the way GSocketClient does for client-side
	 * connections.
	 */
	
	/**
	 * Creates a new GTlsCertificate from the PEM-encoded data in data.
	 * If data includes both a certificate and a private key, then the
	 * returned certificate will include the private key data as well. (See
	 * the "private-key-pem" property for information about
	 * supported formats.)
	 * If data includes multiple certificates, only the first one will be
	 * parsed.
	 * Since 2.28
	 * Params:
	 * data = PEM-encoded certificate data
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string data)
	{
		// GTlsCertificate * g_tls_certificate_new_from_pem (const gchar *data,  gssize length,  GError **error);
		GError* err = null;
		
		auto p = g_tls_certificate_new_from_pem(cast(char*)data.ptr, cast(int) data.length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_tls_certificate_new_from_pem(cast(char*)data.ptr, cast(int) data.length, &err)");
		}
		this(cast(GTlsCertificate*) p);
	}
	
	/**
	 * Creates a GTlsCertificate from the PEM-encoded data in cert_file
	 * and key_file. If either file cannot be read or parsed, the
	 * function will return NULL and set error. Otherwise, this behaves
	 * like g_tls_certificate_new_from_pem().
	 * Since 2.28
	 * Params:
	 * certFile = file containing a PEM-encoded certificate to import
	 * keyFile = file containing a PEM-encoded private key to import
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string certFile, string keyFile)
	{
		// GTlsCertificate * g_tls_certificate_new_from_files (const gchar *cert_file,  const gchar *key_file,  GError **error);
		GError* err = null;
		
		auto p = g_tls_certificate_new_from_files(Str.toStringz(certFile), Str.toStringz(keyFile), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_tls_certificate_new_from_files(Str.toStringz(certFile), Str.toStringz(keyFile), &err)");
		}
		this(cast(GTlsCertificate*) p);
	}
	
	/**
	 * Creates one or more GTlsCertificates from the PEM-encoded
	 * data in file. If file cannot be read or parsed, the function will
	 * return NULL and set error. If file does not contain any
	 * PEM-encoded certificates, this will return an empty list and not
	 * set error.
	 * Since 2.28
	 * Params:
	 * file = file containing PEM-encoded certificates to import
	 * Returns: a GList containing GTlsCertificate objects. You must free the list and its contents when you are done with it. [element-type Gio.TlsCertificate][transfer full]
	 * Throws: GException on failure.
	 */
	public static ListG listNewFromFile(string file)
	{
		// GList * g_tls_certificate_list_new_from_file  (const gchar *file,  GError **error);
		GError* err = null;
		
		auto p = g_tls_certificate_list_new_from_file(Str.toStringz(file), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Gets the GTlsCertificate representing cert's issuer, if known
	 * Since 2.28
	 * Returns: The certificate of cert's issuer, or NULL if cert is self-signed or signed with an unknown certificate. [transfer none]
	 */
	public TlsCertificate getIssuer()
	{
		// GTlsCertificate * g_tls_certificate_get_issuer (GTlsCertificate *cert);
		auto p = g_tls_certificate_get_issuer(gTlsCertificate);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) p);
	}
	
	/**
	 * This verifies cert and returns a set of GTlsCertificateFlags
	 * indicating any problems found with it. This can be used to verify a
	 * certificate outside the context of making a connection, or to
	 * check a certificate against a CA that is not part of the system
	 * CA database.
	 * If identity is not NULL, cert's name(s) will be compared against
	 * it, and G_TLS_CERTIFICATE_BAD_IDENTITY will be set in the return
	 * value if it does not match. If identity is NULL, that bit will
	 * never be set in the return value.
	 * If trusted_ca is not NULL, then cert (or one of the certificates
	 * in its chain) must be signed by it, or else
	 * G_TLS_CERTIFICATE_UNKNOWN_CA will be set in the return value. If
	 * trusted_ca is NULL, that bit will never be set in the return
	 * value.
	 * (All other GTlsCertificateFlags values will always be set or unset
	 * as appropriate.)
	 * Since 2.28
	 * Params:
	 * identity = the expected peer identity. [allow-none]
	 * trustedCa = the certificate of a trusted authority. [allow-none]
	 * Returns: the appropriate GTlsCertificateFlags
	 */
	public GTlsCertificateFlags verify(SocketConnectableIF identity, TlsCertificate trustedCa)
	{
		// GTlsCertificateFlags g_tls_certificate_verify (GTlsCertificate *cert,  GSocketConnectable *identity,  GTlsCertificate *trusted_ca);
		return g_tls_certificate_verify(gTlsCertificate, (identity is null) ? null : identity.getSocketConnectableTStruct(), (trustedCa is null) ? null : trustedCa.getTlsCertificateStruct());
	}
	
	/**
	 * Check if two GTlsCertificate objects represent the same certificate.
	 * The raw DER byte data of the two certificates are checked for equality.
	 * This has the effect that two certificates may compare equal even if
	 * their "issuer", "private-key", or
	 * "private-key-pem" properties differ.
	 * Since 2.34
	 * Params:
	 * certTwo = second certificate to compare
	 * Returns: whether the same or not
	 */
	public int isSame(TlsCertificate certTwo)
	{
		// gboolean g_tls_certificate_is_same (GTlsCertificate *cert_one,  GTlsCertificate *cert_two);
		return g_tls_certificate_is_same(gTlsCertificate, (certTwo is null) ? null : certTwo.getTlsCertificateStruct());
	}
}
