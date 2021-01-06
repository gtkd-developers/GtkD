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


module gio.TlsBackendT;

public  import gio.TlsBackendIF;
public  import gio.TlsDatabase;
public  import gio.c.functions;
public  import gio.c.types;
public  import gobject.ObjectG;


/**
 * TLS (Transport Layer Security, aka SSL) and DTLS backend.
 *
 * Since: 2.28
 */
public template TlsBackendT(TStruct)
{
	/** Get the main Gtk struct */
	public GTlsBackend* getTlsBackendStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GTlsBackend*)getStruct();
	}


	/**
	 * Gets the #GType of @backend's #GTlsCertificate implementation.
	 *
	 * Returns: the #GType of @backend's #GTlsCertificate
	 *     implementation.
	 *
	 * Since: 2.28
	 */
	public GType getCertificateType()
	{
		return g_tls_backend_get_certificate_type(getTlsBackendStruct());
	}

	/**
	 * Gets the #GType of @backend's #GTlsClientConnection implementation.
	 *
	 * Returns: the #GType of @backend's #GTlsClientConnection
	 *     implementation.
	 *
	 * Since: 2.28
	 */
	public GType getClientConnectionType()
	{
		return g_tls_backend_get_client_connection_type(getTlsBackendStruct());
	}

	/**
	 * Gets the default #GTlsDatabase used to verify TLS connections.
	 *
	 * Returns: the default database, which should be
	 *     unreffed when done.
	 *
	 * Since: 2.30
	 */
	public TlsDatabase getDefaultDatabase()
	{
		auto __p = g_tls_backend_get_default_database(getTlsBackendStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TlsDatabase)(cast(GTlsDatabase*) __p, true);
	}

	/**
	 * Gets the #GType of @backend’s #GDtlsClientConnection implementation.
	 *
	 * Returns: the #GType of @backend’s #GDtlsClientConnection
	 *     implementation, or %G_TYPE_INVALID if this backend doesn’t support DTLS.
	 *
	 * Since: 2.48
	 */
	public GType getDtlsClientConnectionType()
	{
		return g_tls_backend_get_dtls_client_connection_type(getTlsBackendStruct());
	}

	/**
	 * Gets the #GType of @backend’s #GDtlsServerConnection implementation.
	 *
	 * Returns: the #GType of @backend’s #GDtlsServerConnection
	 *     implementation, or %G_TYPE_INVALID if this backend doesn’t support DTLS.
	 *
	 * Since: 2.48
	 */
	public GType getDtlsServerConnectionType()
	{
		return g_tls_backend_get_dtls_server_connection_type(getTlsBackendStruct());
	}

	/**
	 * Gets the #GType of @backend's #GTlsFileDatabase implementation.
	 *
	 * Returns: the #GType of backend's #GTlsFileDatabase implementation.
	 *
	 * Since: 2.30
	 */
	public GType getFileDatabaseType()
	{
		return g_tls_backend_get_file_database_type(getTlsBackendStruct());
	}

	/**
	 * Gets the #GType of @backend's #GTlsServerConnection implementation.
	 *
	 * Returns: the #GType of @backend's #GTlsServerConnection
	 *     implementation.
	 *
	 * Since: 2.28
	 */
	public GType getServerConnectionType()
	{
		return g_tls_backend_get_server_connection_type(getTlsBackendStruct());
	}

	/**
	 * Set the default #GTlsDatabase used to verify TLS connections
	 *
	 * Any subsequent call to g_tls_backend_get_default_database() will return
	 * the database set in this call.  Existing databases and connections are not
	 * modified.
	 *
	 * Setting a %NULL default database will reset to using the system default
	 * database as if g_tls_backend_set_default_database() had never been called.
	 *
	 * Params:
	 *     database = the #GTlsDatabase
	 *
	 * Since: 2.60
	 */
	public void setDefaultDatabase(TlsDatabase database)
	{
		g_tls_backend_set_default_database(getTlsBackendStruct(), (database is null) ? null : database.getTlsDatabaseStruct());
	}

	/**
	 * Checks if DTLS is supported. DTLS support may not be available even if TLS
	 * support is available, and vice-versa.
	 *
	 * Returns: whether DTLS is supported
	 *
	 * Since: 2.48
	 */
	public bool supportsDtls()
	{
		return g_tls_backend_supports_dtls(getTlsBackendStruct()) != 0;
	}

	/**
	 * Checks if TLS is supported; if this returns %FALSE for the default
	 * #GTlsBackend, it means no "real" TLS backend is available.
	 *
	 * Returns: whether or not TLS is supported
	 *
	 * Since: 2.28
	 */
	public bool supportsTls()
	{
		return g_tls_backend_supports_tls(getTlsBackendStruct()) != 0;
	}
}
