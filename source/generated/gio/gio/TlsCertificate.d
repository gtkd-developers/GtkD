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
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.DateTime;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.PtrArray;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


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
	public GTlsCertificate* getTlsCertificateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTlsCertificate;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsCertificate;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTlsCertificate* gTlsCertificate, bool ownedRef = false)
	{
		this.gTlsCertificate = gTlsCertificate;
		super(cast(GObject*)gTlsCertificate, ownedRef);
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
	 *     certFile = file containing one or more PEM-encoded
	 *         certificates to import
	 *     keyFile = file containing a PEM-encoded private key
	 *         to import
	 *
	 * Returns: the new certificate, or %NULL on error
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static TlsCertificate newFromFiles(string certFile, string keyFile)
	{
		GError* err = null;

		auto __p = g_tls_certificate_new_from_files(Str.toStringz(certFile), Str.toStringz(keyFile), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_files");
		}

		return new TlsCertificate(cast(GTlsCertificate*) __p, true);
	}

	/**
	 * Creates a #GTlsCertificate from a PKCS \#11 URI.
	 *
	 * An example @pkcs11_uri would be `pkcs11:model=Model;manufacturer=Manufacture;serial=1;token=My%20Client%20Certificate;id=%01`
	 *
	 * Where the token’s layout is:
	 *
	 * ```
	 * Object 0:
	 * URL: pkcs11:model=Model;manufacturer=Manufacture;serial=1;token=My%20Client%20Certificate;id=%01;object=private%20key;type=private
	 * Type: Private key (RSA-2048)
	 * ID: 01
	 *
	 * Object 1:
	 * URL: pkcs11:model=Model;manufacturer=Manufacture;serial=1;token=My%20Client%20Certificate;id=%01;object=Certificate%20for%20Authentication;type=cert
	 * Type: X.509 Certificate (RSA-2048)
	 * ID: 01
	 * ```
	 *
	 * In this case the certificate and private key would both be detected and used as expected.
	 * @pkcs_uri may also just reference an X.509 certificate object and then optionally
	 * @private_key_pkcs11_uri allows using a private key exposed under a different URI.
	 *
	 * Note that the private key is not accessed until usage and may fail or require a PIN later.
	 *
	 * Params:
	 *     pkcs11Uri = A PKCS \#11 URI
	 *     privateKeyPkcs11Uri = A PKCS \#11 URI
	 *
	 * Returns: the new certificate, or %NULL on error
	 *
	 * Since: 2.68
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static TlsCertificate newFromPkcs11Uris(string pkcs11Uri, string privateKeyPkcs11Uri)
	{
		GError* err = null;

		auto __p = g_tls_certificate_new_from_pkcs11_uris(Str.toStringz(pkcs11Uri), Str.toStringz(privateKeyPkcs11Uri), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_pkcs11_uris");
		}

		return new TlsCertificate(cast(GTlsCertificate*) __p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return g_tls_certificate_get_type();
	}

	/**
	 * Creates a #GTlsCertificate from the data in @file.
	 *
	 * As of 2.72, if the filename ends in `.p12` or `.pfx` the data is loaded by
	 * g_tls_certificate_new_from_pkcs12() otherwise it is loaded by
	 * g_tls_certificate_new_from_pem(). See those functions for
	 * exact details.
	 *
	 * If @file cannot be read or parsed, the function will return %NULL and
	 * set @error.
	 *
	 * Params:
	 *     file = file containing a certificate to import
	 *
	 * Returns: the new certificate, or %NULL on error
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string file)
	{
		GError* err = null;

		auto __p = g_tls_certificate_new_from_file(Str.toStringz(file), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file");
		}

		this(cast(GTlsCertificate*) __p, true);
	}

	/**
	 * Creates a #GTlsCertificate from the data in @file.
	 *
	 * If @file cannot be read or parsed, the function will return %NULL and
	 * set @error.
	 *
	 * Any unknown file types will error with %G_IO_ERROR_NOT_SUPPORTED.
	 * Currently only `.p12` and `.pfx` files are supported.
	 * See g_tls_certificate_new_from_pkcs12() for more details.
	 *
	 * Params:
	 *     file = file containing a certificate to import
	 *     password = password for PKCS #12 files
	 *
	 * Returns: the new certificate, or %NULL on error
	 *
	 * Since: 2.72
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string file, string password)
	{
		GError* err = null;

		auto __p = g_tls_certificate_new_from_file_with_password(Str.toStringz(file), Str.toStringz(password), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_file_with_password");
		}

		this(cast(GTlsCertificate*) __p, true);
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
	 * Returns: the new certificate, or %NULL if @data is invalid
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string data, ptrdiff_t length)
	{
		GError* err = null;

		auto __p = g_tls_certificate_new_from_pem(Str.toStringz(data), length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_pem");
		}

		this(cast(GTlsCertificate*) __p, true);
	}

	/**
	 * Creates a #GTlsCertificate from the data in @data. It must contain
	 * a certificate and matching private key.
	 *
	 * If extra certificates are included they will be verified as a chain
	 * and the #GTlsCertificate:issuer property will be set.
	 * All other data will be ignored.
	 *
	 * You can pass as single password for all of the data which will be
	 * used both for the PKCS #12 container as well as encrypted
	 * private keys. If decryption fails it will error with
	 * %G_TLS_ERROR_BAD_CERTIFICATE_PASSWORD.
	 *
	 * This constructor requires support in the current #GTlsBackend.
	 * If support is missing it will error with
	 * %G_IO_ERROR_NOT_SUPPORTED.
	 *
	 * Other parsing failures will error with %G_TLS_ERROR_BAD_CERTIFICATE.
	 *
	 * Params:
	 *     data = DER-encoded PKCS #12 format certificate data
	 *     password = optional password for encrypted certificate data
	 *
	 * Returns: the new certificate, or %NULL if @data is invalid
	 *
	 * Since: 2.72
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] data, string password)
	{
		GError* err = null;

		auto __p = g_tls_certificate_new_from_pkcs12(data.ptr, cast(size_t)data.length, Str.toStringz(password), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_pkcs12");
		}

		this(cast(GTlsCertificate*) __p, true);
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
	 * Returns: a
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

		auto __p = g_tls_certificate_list_new_from_file(Str.toStringz(file), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Gets the value of #GTlsCertificate:dns-names.
	 *
	 * Returns: A #GPtrArray of
	 *     #GBytes elements, or %NULL if it's not available.
	 *
	 * Since: 2.70
	 */
	public PtrArray getDnsNames()
	{
		auto __p = g_tls_certificate_get_dns_names(gTlsCertificate);

		if(__p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) __p);
	}

	/**
	 * Gets the value of #GTlsCertificate:ip-addresses.
	 *
	 * Returns: A #GPtrArray
	 *     of #GInetAddress elements, or %NULL if it's not available.
	 *
	 * Since: 2.70
	 */
	public PtrArray getIpAddresses()
	{
		auto __p = g_tls_certificate_get_ip_addresses(gTlsCertificate);

		if(__p is null)
		{
			return null;
		}

		return new PtrArray(cast(GPtrArray*) __p);
	}

	/**
	 * Gets the #GTlsCertificate representing @cert's issuer, if known
	 *
	 * Returns: The certificate of @cert's issuer,
	 *     or %NULL if @cert is self-signed or signed with an unknown
	 *     certificate.
	 *
	 * Since: 2.28
	 */
	public TlsCertificate getIssuer()
	{
		auto __p = g_tls_certificate_get_issuer(gTlsCertificate);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) __p);
	}

	/**
	 * Returns the issuer name from the certificate.
	 *
	 * Returns: The issuer name, or %NULL if it's not available.
	 *
	 * Since: 2.70
	 */
	public string getIssuerName()
	{
		auto retStr = g_tls_certificate_get_issuer_name(gTlsCertificate);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the time at which the certificate became or will become invalid.
	 *
	 * Returns: The not-valid-after date, or %NULL if it's not available.
	 *
	 * Since: 2.70
	 */
	public DateTime getNotValidAfter()
	{
		auto __p = g_tls_certificate_get_not_valid_after(gTlsCertificate);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Returns the time at which the certificate became or will become valid.
	 *
	 * Returns: The not-valid-before date, or %NULL if it's not available.
	 *
	 * Since: 2.70
	 */
	public DateTime getNotValidBefore()
	{
		auto __p = g_tls_certificate_get_not_valid_before(gTlsCertificate);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p, true);
	}

	/**
	 * Returns the subject name from the certificate.
	 *
	 * Returns: The subject name, or %NULL if it's not available.
	 *
	 * Since: 2.70
	 */
	public string getSubjectName()
	{
		auto retStr = g_tls_certificate_get_subject_name(gTlsCertificate);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
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
	 * Returns: whether the same or not
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
	 * GLib guarantees that if certificate verification fails, at least one
	 * error will be set in the return value, but it does not guarantee
	 * that all possible errors will be set. Accordingly, you may not safely
	 * decide to ignore any particular type of error. For example, it would
	 * be incorrect to mask %G_TLS_CERTIFICATE_EXPIRED if you want to allow
	 * expired certificates, because this could potentially be the only
	 * error flag set even if other problems exist with the certificate.
	 *
	 * Because TLS session context is not used, #GTlsCertificate may not
	 * perform as many checks on the certificates as #GTlsConnection would.
	 * For example, certificate constraints may not be honored, and
	 * revocation checks may not be performed. The best way to verify TLS
	 * certificates used by a TLS connection is to let #GTlsConnection
	 * handle the verification.
	 *
	 * Params:
	 *     identity = the expected peer identity
	 *     trustedCa = the certificate of a trusted authority
	 *
	 * Returns: the appropriate #GTlsCertificateFlags
	 *
	 * Since: 2.28
	 */
	public GTlsCertificateFlags verify(SocketConnectableIF identity, TlsCertificate trustedCa)
	{
		return g_tls_certificate_verify(gTlsCertificate, (identity is null) ? null : identity.getSocketConnectableStruct(), (trustedCa is null) ? null : trustedCa.getTlsCertificateStruct());
	}
}
