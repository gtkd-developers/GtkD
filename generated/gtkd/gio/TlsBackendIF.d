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


module gio.TlsBackendIF;

private import gio.TlsBackendIF;
private import gio.TlsDatabase;
private import gio.c.functions;
public  import gio.c.types;
private import gobject.ObjectG;
public  import gtkc.giotypes;


/**
 * TLS (Transport Layer Security, aka SSL) and DTLS backend.
 *
 * Since: 2.28
 */
public interface TlsBackendIF{
	/** Get the main Gtk struct */
	public GTlsBackend* getTlsBackendStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_tls_backend_get_type();
	}

	/**
	 * Gets the default #GTlsBackend for the system.
	 *
	 * Returns: a #GTlsBackend
	 *
	 * Since: 2.28
	 */
	public static TlsBackendIF getDefault()
	{
		auto p = g_tls_backend_get_default();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsBackendIF)(cast(GTlsBackend*) p);
	}

	/**
	 * Gets the #GType of @backend's #GTlsCertificate implementation.
	 *
	 * Returns: the #GType of @backend's #GTlsCertificate
	 *     implementation.
	 *
	 * Since: 2.28
	 */
	public GType getCertificateType();

	/**
	 * Gets the #GType of @backend's #GTlsClientConnection implementation.
	 *
	 * Returns: the #GType of @backend's #GTlsClientConnection
	 *     implementation.
	 *
	 * Since: 2.28
	 */
	public GType getClientConnectionType();

	/**
	 * Gets the default #GTlsDatabase used to verify TLS connections.
	 *
	 * Returns: the default database, which should be
	 *     unreffed when done.
	 *
	 * Since: 2.30
	 */
	public TlsDatabase getDefaultDatabase();

	/**
	 * Gets the #GType of @backend’s #GDtlsClientConnection implementation.
	 *
	 * Returns: the #GType of @backend’s #GDtlsClientConnection
	 *     implementation, or %G_TYPE_INVALID if this backend doesn’t support DTLS.
	 *
	 * Since: 2.48
	 */
	public GType getDtlsClientConnectionType();

	/**
	 * Gets the #GType of @backend’s #GDtlsServerConnection implementation.
	 *
	 * Returns: the #GType of @backend’s #GDtlsServerConnection
	 *     implementation, or %G_TYPE_INVALID if this backend doesn’t support DTLS.
	 *
	 * Since: 2.48
	 */
	public GType getDtlsServerConnectionType();

	/**
	 * Gets the #GType of @backend's #GTlsFileDatabase implementation.
	 *
	 * Returns: the #GType of backend's #GTlsFileDatabase implementation.
	 *
	 * Since: 2.30
	 */
	public GType getFileDatabaseType();

	/**
	 * Gets the #GType of @backend's #GTlsServerConnection implementation.
	 *
	 * Returns: the #GType of @backend's #GTlsServerConnection
	 *     implementation.
	 *
	 * Since: 2.28
	 */
	public GType getServerConnectionType();

	/**
	 * Checks if DTLS is supported. DTLS support may not be available even if TLS
	 * support is available, and vice-versa.
	 *
	 * Returns: whether DTLS is supported
	 *
	 * Since: 2.48
	 */
	public bool supportsDtls();

	/**
	 * Checks if TLS is supported; if this returns %FALSE for the default
	 * #GTlsBackend, it means no "real" TLS backend is available.
	 *
	 * Returns: whether or not TLS is supported
	 *
	 * Since: 2.28
	 */
	public bool supportsTls();
}
