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


module gio.TlsDatabase;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.SocketConnectableIF;
private import gio.TlsCertificate;
private import gio.TlsInteraction;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ByteArray;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * #GTlsDatabase is used to look up certificates and other information
 * from a certificate or key store. It is an abstract base class which
 * TLS library specific subtypes override.
 * 
 * A #GTlsDatabase may be accessed from multiple threads by the TLS backend.
 * All implementations are required to be fully thread-safe.
 * 
 * Most common client applications will not directly interact with
 * #GTlsDatabase. It is used internally by #GTlsConnection.
 *
 * Since: 2.30
 */
public class TlsDatabase : ObjectG
{
	/** the main Gtk struct */
	protected GTlsDatabase* gTlsDatabase;

	/** Get the main Gtk struct */
	public GTlsDatabase* getTlsDatabaseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTlsDatabase;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsDatabase;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTlsDatabase* gTlsDatabase, bool ownedRef = false)
	{
		this.gTlsDatabase = gTlsDatabase;
		super(cast(GObject*)gTlsDatabase, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_tls_database_get_type();
	}

	/**
	 * Create a handle string for the certificate. The database will only be able
	 * to create a handle for certificates that originate from the database. In
	 * cases where the database cannot create a handle for a certificate, %NULL
	 * will be returned.
	 *
	 * This handle should be stable across various instances of the application,
	 * and between applications. If a certificate is modified in the database,
	 * then it is not guaranteed that this handle will continue to point to it.
	 *
	 * Params:
	 *     certificate = certificate for which to create a handle.
	 *
	 * Returns: a newly allocated string containing the
	 *     handle.
	 *
	 * Since: 2.30
	 */
	public string createCertificateHandle(TlsCertificate certificate)
	{
		auto retStr = g_tls_database_create_certificate_handle(gTlsDatabase, (certificate is null) ? null : certificate.getTlsCertificateStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Look up a certificate by its handle.
	 *
	 * The handle should have been created by calling
	 * g_tls_database_create_certificate_handle() on a #GTlsDatabase object of
	 * the same TLS backend. The handle is designed to remain valid across
	 * instantiations of the database.
	 *
	 * If the handle is no longer valid, or does not point to a certificate in
	 * this database, then %NULL will be returned.
	 *
	 * This function can block, use g_tls_database_lookup_certificate_for_handle_async() to perform
	 * the lookup operation asynchronously.
	 *
	 * Params:
	 *     handle = a certificate handle
	 *     interaction = used to interact with the user if necessary
	 *     flags = Flags which affect the lookup.
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a newly allocated
	 *     #GTlsCertificate, or %NULL. Use g_object_unref() to release the certificate.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public TlsCertificate lookupCertificateForHandle(string handle, TlsInteraction interaction, GTlsDatabaseLookupFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_tls_database_lookup_certificate_for_handle(gTlsDatabase, Str.toStringz(handle), (interaction is null) ? null : interaction.getTlsInteractionStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) __p, true);
	}

	/**
	 * Asynchronously look up a certificate by its handle in the database. See
	 * g_tls_database_lookup_certificate_for_handle() for more information.
	 *
	 * Params:
	 *     handle = a certificate handle
	 *     interaction = used to interact with the user if necessary
	 *     flags = Flags which affect the lookup.
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call when the operation completes
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.30
	 */
	public void lookupCertificateForHandleAsync(string handle, TlsInteraction interaction, GTlsDatabaseLookupFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_tls_database_lookup_certificate_for_handle_async(gTlsDatabase, Str.toStringz(handle), (interaction is null) ? null : interaction.getTlsInteractionStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous lookup of a certificate by its handle. See
	 * g_tls_database_lookup_certificate_for_handle() for more information.
	 *
	 * If the handle is no longer valid, or does not point to a certificate in
	 * this database, then %NULL will be returned.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a newly allocated #GTlsCertificate object.
	 *     Use g_object_unref() to release the certificate.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public TlsCertificate lookupCertificateForHandleFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_tls_database_lookup_certificate_for_handle_finish(gTlsDatabase, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) __p, true);
	}

	/**
	 * Look up the issuer of @certificate in the database. The
	 * #GTlsCertificate:issuer property of @certificate is not modified, and
	 * the two certificates are not hooked into a chain.
	 *
	 * This function can block. Use g_tls_database_lookup_certificate_issuer_async()
	 * to perform the lookup operation asynchronously.
	 *
	 * Beware this function cannot be used to build certification paths. The
	 * issuer certificate returned by this function may not be the same as
	 * the certificate that would actually be used to construct a valid
	 * certification path during certificate verification.
	 * [RFC 4158](https://datatracker.ietf.org/doc/html/rfc4158) explains
	 * why an issuer certificate cannot be naively assumed to be part of the
	 * the certification path (though GLib's TLS backends may not follow the
	 * path building strategies outlined in this RFC). Due to the complexity
	 * of certification path building, GLib does not provide any way to know
	 * which certification path will actually be used when verifying a TLS
	 * certificate. Accordingly, this function cannot be used to make
	 * security-related decisions. Only GLib itself should make security
	 * decisions about TLS certificates.
	 *
	 * Params:
	 *     certificate = a #GTlsCertificate
	 *     interaction = used to interact with the user if necessary
	 *     flags = flags which affect the lookup operation
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a newly allocated issuer #GTlsCertificate,
	 *     or %NULL. Use g_object_unref() to release the certificate.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public TlsCertificate lookupCertificateIssuer(TlsCertificate certificate, TlsInteraction interaction, GTlsDatabaseLookupFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_tls_database_lookup_certificate_issuer(gTlsDatabase, (certificate is null) ? null : certificate.getTlsCertificateStruct(), (interaction is null) ? null : interaction.getTlsInteractionStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) __p, true);
	}

	/**
	 * Asynchronously look up the issuer of @certificate in the database. See
	 * g_tls_database_lookup_certificate_issuer() for more information.
	 *
	 * Params:
	 *     certificate = a #GTlsCertificate
	 *     interaction = used to interact with the user if necessary
	 *     flags = flags which affect the lookup operation
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call when the operation completes
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.30
	 */
	public void lookupCertificateIssuerAsync(TlsCertificate certificate, TlsInteraction interaction, GTlsDatabaseLookupFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_tls_database_lookup_certificate_issuer_async(gTlsDatabase, (certificate is null) ? null : certificate.getTlsCertificateStruct(), (interaction is null) ? null : interaction.getTlsInteractionStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous lookup issuer operation. See
	 * g_tls_database_lookup_certificate_issuer() for more information.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a newly allocated issuer #GTlsCertificate,
	 *     or %NULL. Use g_object_unref() to release the certificate.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public TlsCertificate lookupCertificateIssuerFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_tls_database_lookup_certificate_issuer_finish(gTlsDatabase, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) __p, true);
	}

	/**
	 * Look up certificates issued by this issuer in the database.
	 *
	 * This function can block, use g_tls_database_lookup_certificates_issued_by_async() to perform
	 * the lookup operation asynchronously.
	 *
	 * Params:
	 *     issuerRawDn = a #GByteArray which holds the DER encoded issuer DN.
	 *     interaction = used to interact with the user if necessary
	 *     flags = Flags which affect the lookup operation.
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a newly allocated list of #GTlsCertificate
	 *     objects. Use g_object_unref() on each certificate, and g_list_free() on the release the list.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public ListG lookupCertificatesIssuedBy(ByteArray issuerRawDn, TlsInteraction interaction, GTlsDatabaseLookupFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_tls_database_lookup_certificates_issued_by(gTlsDatabase, (issuerRawDn is null) ? null : issuerRawDn.getByteArrayStruct(), (interaction is null) ? null : interaction.getTlsInteractionStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

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
	 * Asynchronously look up certificates issued by this issuer in the database. See
	 * g_tls_database_lookup_certificates_issued_by() for more information.
	 *
	 * The database may choose to hold a reference to the issuer byte array for the duration
	 * of of this asynchronous operation. The byte array should not be modified during
	 * this time.
	 *
	 * Params:
	 *     issuerRawDn = a #GByteArray which holds the DER encoded issuer DN.
	 *     interaction = used to interact with the user if necessary
	 *     flags = Flags which affect the lookup operation.
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call when the operation completes
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.30
	 */
	public void lookupCertificatesIssuedByAsync(ByteArray issuerRawDn, TlsInteraction interaction, GTlsDatabaseLookupFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_tls_database_lookup_certificates_issued_by_async(gTlsDatabase, (issuerRawDn is null) ? null : issuerRawDn.getByteArrayStruct(), (interaction is null) ? null : interaction.getTlsInteractionStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous lookup of certificates. See
	 * g_tls_database_lookup_certificates_issued_by() for more information.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: a newly allocated list of #GTlsCertificate
	 *     objects. Use g_object_unref() on each certificate, and g_list_free() on the release the list.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public ListG lookupCertificatesIssuedByFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_tls_database_lookup_certificates_issued_by_finish(gTlsDatabase, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
	 * Determines the validity of a certificate chain, outside the context
	 * of a TLS session.
	 *
	 * @chain is a chain of #GTlsCertificate objects each pointing to the next
	 * certificate in the chain by its #GTlsCertificate:issuer property.
	 *
	 * @purpose describes the purpose (or usage) for which the certificate
	 * is being used. Typically @purpose will be set to %G_TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER
	 * which means that the certificate is being used to authenticate a server
	 * (and we are acting as the client).
	 *
	 * The @identity is used to ensure the server certificate is valid for
	 * the expected peer identity. If the identity does not match the
	 * certificate, %G_TLS_CERTIFICATE_BAD_IDENTITY will be set in the
	 * return value. If @identity is %NULL, that bit will never be set in
	 * the return value. The peer identity may also be used to check for
	 * pinned certificates (trust exceptions) in the database. These may
	 * override the normal verification process on a host-by-host basis.
	 *
	 * Currently there are no @flags, and %G_TLS_DATABASE_VERIFY_NONE should be
	 * used.
	 *
	 * If @chain is found to be valid, then the return value will be 0. If
	 * @chain is found to be invalid, then the return value will indicate at
	 * least one problem found. If the function is unable to determine
	 * whether @chain is valid (for example, because @cancellable is
	 * triggered before it completes) then the return value will be
	 * %G_TLS_CERTIFICATE_GENERIC_ERROR and @error will be set accordingly.
	 * @error is not set when @chain is successfully analyzed but found to
	 * be invalid.
	 *
	 * GLib guarantees that if certificate verification fails, at least one
	 * error will be set in the return value, but it does not guarantee
	 * that all possible errors will be set. Accordingly, you may not safely
	 * decide to ignore any particular type of error. For example, it would
	 * be incorrect to mask %G_TLS_CERTIFICATE_EXPIRED if you want to allow
	 * expired certificates, because this could potentially be the only
	 * error flag set even if other problems exist with the certificate.
	 *
	 * Prior to GLib 2.48, GLib's default TLS backend modified @chain to
	 * represent the certification path built by #GTlsDatabase during
	 * certificate verification by adjusting the #GTlsCertificate:issuer
	 * property of each certificate in @chain. Since GLib 2.48, this no
	 * longer occurs, so you cannot rely on #GTlsCertificate:issuer to
	 * represent the actual certification path used during certificate
	 * verification.
	 *
	 * Because TLS session context is not used, #GTlsDatabase may not
	 * perform as many checks on the certificates as #GTlsConnection would.
	 * For example, certificate constraints may not be honored, and
	 * revocation checks may not be performed. The best way to verify TLS
	 * certificates used by a TLS connection is to let #GTlsConnection
	 * handle the verification.
	 *
	 * The TLS backend may attempt to look up and add missing certificates
	 * to the chain. This may involve HTTP requests to download missing
	 * certificates.
	 *
	 * This function can block. Use g_tls_database_verify_chain_async() to
	 * perform the verification operation asynchronously.
	 *
	 * Params:
	 *     chain = a #GTlsCertificate chain
	 *     purpose = the purpose that this certificate chain will be used for.
	 *     identity = the expected peer identity
	 *     interaction = used to interact with the user if necessary
	 *     flags = additional verify flags
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: the appropriate #GTlsCertificateFlags which represents the
	 *     result of verification.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public GTlsCertificateFlags verifyChain(TlsCertificate chain, string purpose, SocketConnectableIF identity, TlsInteraction interaction, GTlsDatabaseVerifyFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_tls_database_verify_chain(gTlsDatabase, (chain is null) ? null : chain.getTlsCertificateStruct(), Str.toStringz(purpose), (identity is null) ? null : identity.getSocketConnectableStruct(), (interaction is null) ? null : interaction.getTlsInteractionStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Asynchronously determines the validity of a certificate chain after
	 * looking up and adding any missing certificates to the chain. See
	 * g_tls_database_verify_chain() for more information.
	 *
	 * Params:
	 *     chain = a #GTlsCertificate chain
	 *     purpose = the purpose that this certificate chain will be used for.
	 *     identity = the expected peer identity
	 *     interaction = used to interact with the user if necessary
	 *     flags = additional verify flags
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to call when the operation completes
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.30
	 */
	public void verifyChainAsync(TlsCertificate chain, string purpose, SocketConnectableIF identity, TlsInteraction interaction, GTlsDatabaseVerifyFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_tls_database_verify_chain_async(gTlsDatabase, (chain is null) ? null : chain.getTlsCertificateStruct(), Str.toStringz(purpose), (identity is null) ? null : identity.getSocketConnectableStruct(), (interaction is null) ? null : interaction.getTlsInteractionStruct(), flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous verify chain operation. See
	 * g_tls_database_verify_chain() for more information.
	 *
	 * If @chain is found to be valid, then the return value will be 0. If
	 * @chain is found to be invalid, then the return value will indicate
	 * the problems found. If the function is unable to determine whether
	 * @chain is valid or not (eg, because @cancellable is triggered
	 * before it completes) then the return value will be
	 * %G_TLS_CERTIFICATE_GENERIC_ERROR and @error will be set
	 * accordingly. @error is not set when @chain is successfully analyzed
	 * but found to be invalid.
	 *
	 * Params:
	 *     result = a #GAsyncResult.
	 *
	 * Returns: the appropriate #GTlsCertificateFlags which represents the
	 *     result of verification.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public GTlsCertificateFlags verifyChainFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_tls_database_verify_chain_finish(gTlsDatabase, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
