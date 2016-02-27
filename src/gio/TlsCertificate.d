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


module gio.TlsCertificate;

private import gio.SocketConnectableIF;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * A certificate used for TLS authentication and encryption.
 * This can represent either a certificate only (eg, the certificate
 * received by a client from a server), or the combination of
 * a certificate and a private key (which is needed when acting as a
 * #GTlsServerConnection).
 *
 * Since: 2.28
 */
public class TlsCertificate : ObjectG
{
	/** the main Gtk struct */
	protected GTlsCertificate* gTlsCertificate;

	/** Get the main Gtk struct */
	public GTlsCertificate* getTlsCertificateStruct()
	{
		return gTlsCertificate;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsCertificate;
	}

	protected override void setStruct(GObject* obj)
	{
		gTlsCertificate = cast(GTlsCertificate*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTlsCertificate* gTlsCertificate, bool ownedRef = false)
	{
		this.gTlsCertificate = gTlsCertificate;
		super(cast(GObject*)gTlsCertificate, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_tls_certificate_get_type();
	}

	/**
	 * Creates a #GTlsCertificate from the PEM-encoded data in @file. The
	 * returned certificate will be the first certificate found in @file. As
	 * of GLib 2.44, if @file contains more certificates it will try to load
	 * a certificate chain. All certificates will be verified in the order
	 * found (top-level certificate should be the last one in the file) and
	 * the #GTlsCertificate:issuer property of each certificate will be set
	 * accordingly if the verification succeeds. If any certificate in the
	 * chain cannot be verified, the first certificate in the file will
	 * still be returned.
	 *
	 * If @file cannot be read or parsed, the function will return %NULL and
	 * set @error. Otherwise, this behaves like
	 * g_tls_certificate_new_from_pem().
	 *
	 * Params:
	 *     file = file containing a PEM-encoded certificate to import
	 *
	 * Return: the new certificate, or %NULL on error
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string file)
	{
		GError* err = null;
		
		auto p = g_tls_certificate_new_from_file(Str.toStringz(file), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}
		
		this(cast(GTlsCertificate*) p, true);
	}

	/**
	 * Creates a #GTlsCertificate from the PEM-encoded data in @cert_file
	 * and @key_file. The returned certificate will be the first certificate
	 * found in @cert_file. As of GLib 2.44, if @cert_file contains more
	 * certificates it will try to load a certificate chain. All
	 * certificates will be verified in the order found (top-level
	 * certificate should be the last one in the file) and the
	 * #GTlsCertificate:issuer property of each certificate will be set
	 * accordingly if the verification succeeds. If any certificate in the
	 * chain cannot be verified, the first certificate in the file will
	 * still be returned.
	 *
	 * If either file cannot be read or parsed, the function will return
	 * %NULL and set @error. Otherwise, this behaves like
	 * g_tls_certificate_new_from_pem().
	 *
	 * Params:
	 *     certFile = file containing one or more PEM-encoded certificates to
	 *         import
	 *     keyFile = file containing a PEM-encoded private key to import
	 *
	 * Return: the new certificate, or %NULL on error
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string certFile, string keyFile)
	{
		GError* err = null;
		
		auto p = g_tls_certificate_new_from_files(Str.toStringz(certFile), Str.toStringz(keyFile), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_files");
		}
		
		this(cast(GTlsCertificate*) p, true);
	}

	/**
	 * Creates a #GTlsCertificate from the PEM-encoded data in @data. If
	 * @data includes both a certificate and a private key, then the
	 * returned certificate will include the private key data as well. (See
	 * the #GTlsCertificate:private-key-pem property for information about
	 * supported formats.)
	 *
	 * The returned certificate will be the first certificate found in
	 * @data. As of GLib 2.44, if @data contains more certificates it will
	 * try to load a certificate chain. All certificates will be verified in
	 * the order found (top-level certificate should be the last one in the
	 * file) and the #GTlsCertificate:issuer property of each certificate
	 * will be set accordingly if the verification succeeds. If any
	 * certificate in the chain cannot be verified, the first certificate in
	 * the file will still be returned.
	 *
	 * Params:
	 *     data = PEM-encoded certificate data
	 *     length = the length of @data, or -1 if it's 0-terminated.
	 *
	 * Return: the new certificate, or %NULL if @data is invalid
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string data, ptrdiff_t length)
	{
		GError* err = null;
		
		auto p = g_tls_certificate_new_from_pem(Str.toStringz(data), length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_pem");
		}
		
		this(cast(GTlsCertificate*) p, true);
	}

	/**
	 * Creates one or more #GTlsCertificates from the PEM-encoded
	 * data in @file. If @file cannot be read or parsed, the function will
	 * return %NULL and set @error. If @file does not contain any
	 * PEM-encoded certificates, this will return an empty list and not
	 * set @error.
	 *
	 * Params:
	 *     file = file containing PEM-encoded certificates to import
	 *
	 * Return: a
	 *     #GList containing #GTlsCertificate objects. You must free the list
	 *     and its contents when you are done with it.
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 */
	public static ListG listNewFromFile(string file)
	{
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
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Gets the #GTlsCertificate representing @cert's issuer, if known
	 *
	 * Return: The certificate of @cert's issuer,
	 *     or %NULL if @cert is self-signed or signed with an unknown
	 *     certificate.
	 *
	 * Since: 2.28
	 */
	public TlsCertificate getIssuer()
	{
		auto p = g_tls_certificate_get_issuer(gTlsCertificate);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) p);
	}

	/**
	 * Check if two #GTlsCertificate objects represent the same certificate.
	 * The raw DER byte data of the two certificates are checked for equality.
	 * This has the effect that two certificates may compare equal even if
	 * their #GTlsCertificate:issuer, #GTlsCertificate:private-key, or
	 * #GTlsCertificate:private-key-pem properties differ.
	 *
	 * Params:
	 *     certTwo = second certificate to compare
	 *
	 * Return: whether the same or not
	 *
	 * Since: 2.34
	 */
	public bool isSame(TlsCertificate certTwo)
	{
		return g_tls_certificate_is_same(gTlsCertificate, (certTwo is null) ? null : certTwo.getTlsCertificateStruct()) != 0;
	}

	/**
	 * This verifies @cert and returns a set of #GTlsCertificateFlags
	 * indicating any problems found with it. This can be used to verify a
	 * certificate outside the context of making a connection, or to
	 * check a certificate against a CA that is not part of the system
	 * CA database.
	 *
	 * If @identity is not %NULL, @cert's name(s) will be compared against
	 * it, and %G_TLS_CERTIFICATE_BAD_IDENTITY will be set in the return
	 * value if it does not match. If @identity is %NULL, that bit will
	 * never be set in the return value.
	 *
	 * If @trusted_ca is not %NULL, then @cert (or one of the certificates
	 * in its chain) must be signed by it, or else
	 * %G_TLS_CERTIFICATE_UNKNOWN_CA will be set in the return value. If
	 * @trusted_ca is %NULL, that bit will never be set in the return
	 * value.
	 *
	 * (All other #GTlsCertificateFlags values will always be set or unset
	 * as appropriate.)
	 *
	 * Params:
	 *     identity = the expected peer identity
	 *     trustedCa = the certificate of a trusted authority
	 *
	 * Return: the appropriate #GTlsCertificateFlags
	 *
	 * Since: 2.28
	 */
	public GTlsCertificateFlags verify(SocketConnectableIF identity, TlsCertificate trustedCa)
	{
		return g_tls_certificate_verify(gTlsCertificate, (identity is null) ? null : identity.getSocketConnectableStruct(), (trustedCa is null) ? null : trustedCa.getTlsCertificateStruct());
	}
}
