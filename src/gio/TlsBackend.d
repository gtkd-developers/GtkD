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
 * inFile  = GTlsBackend.html
 * outPack = gio
 * outFile = TlsBackend
 * strct   = GTlsBackend
 * realStrct=
 * ctorStrct=
 * clss    = TlsBackend
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_tls_backend_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.TlsDatabase
 * structWrap:
 * 	- GTlsBackend* -> TlsBackend
 * 	- GTlsDatabase* -> TlsDatabase
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.TlsBackend;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.TlsDatabase;




/**
 */
public class TlsBackend
{
	
	/** the main Gtk struct */
	protected GTlsBackend* gTlsBackend;
	
	
	public GTlsBackend* getTlsBackendStruct()
	{
		return gTlsBackend;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTlsBackend;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTlsBackend* gTlsBackend)
	{
		this.gTlsBackend = gTlsBackend;
	}
	
	/**
	 */
	
	/**
	 * Gets the default GTlsBackend for the system.
	 * Since 2.28
	 * Returns: a GTlsBackend. [transfer none]
	 */
	public static TlsBackend getDefault()
	{
		// GTlsBackend * g_tls_backend_get_default (void);
		auto p = g_tls_backend_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsBackend)(cast(GTlsBackend*) p);
	}
	
	/**
	 * Checks if TLS is supported; if this returns FALSE for the default
	 * GTlsBackend, it means no "real" TLS backend is available.
	 * Since 2.28
	 * Returns: whether or not TLS is supported
	 */
	public int supportsTls()
	{
		// gboolean g_tls_backend_supports_tls (GTlsBackend *backend);
		return g_tls_backend_supports_tls(gTlsBackend);
	}
	
	/**
	 * Gets the default GTlsDatabase used to verify TLS connections.
	 * Since 2.30
	 * Returns: the default database, which should be unreffed when done. [transfer full]
	 */
	public TlsDatabase getDefaultDatabase()
	{
		// GTlsDatabase * g_tls_backend_get_default_database (GTlsBackend *backend);
		auto p = g_tls_backend_get_default_database(gTlsBackend);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsDatabase)(cast(GTlsDatabase*) p);
	}
	
	/**
	 * Gets the GType of backend's GTlsCertificate implementation.
	 * Since 2.28
	 * Returns: the GType of backend's GTlsCertificate implementation.
	 */
	public GType getCertificateType()
	{
		// GType g_tls_backend_get_certificate_type (GTlsBackend *backend);
		return g_tls_backend_get_certificate_type(gTlsBackend);
	}
	
	/**
	 * Gets the GType of backend's GTlsClientConnection implementation.
	 * Since 2.28
	 * Returns: the GType of backend's GTlsClientConnection implementation.
	 */
	public GType getClientConnectionType()
	{
		// GType g_tls_backend_get_client_connection_type  (GTlsBackend *backend);
		return g_tls_backend_get_client_connection_type(gTlsBackend);
	}
	
	/**
	 * Gets the GType of backend's GTlsServerConnection implementation.
	 * Since 2.28
	 * Returns: the GType of backend's GTlsServerConnection implementation.
	 */
	public GType getServerConnectionType()
	{
		// GType g_tls_backend_get_server_connection_type  (GTlsBackend *backend);
		return g_tls_backend_get_server_connection_type(gTlsBackend);
	}
	
	/**
	 * Gets the GType of backend's GTlsFileDatabase implementation.
	 * Since 2.30
	 * Returns: the GType of backend's GTlsFileDatabase implementation.
	 */
	public GType getFileDatabaseType()
	{
		// GType g_tls_backend_get_file_database_type  (GTlsBackend *backend);
		return g_tls_backend_get_file_database_type(gTlsBackend);
	}
}
