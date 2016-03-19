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


module gio.DtlsClientConnectionT;

public  import gio.DatagramBasedIF;
public  import gio.SocketConnectable;
public  import gio.SocketConnectableIF;
public  import glib.ConstructionException;
public  import glib.ErrorG;
public  import glib.GException;
public  import glib.ListG;
public  import gobject.ObjectG;
public  import gtkc.gio;
public  import gtkc.giotypes;


/** */
public template DtlsClientConnectionT(TStruct)
{
	/** Get the main Gtk struct */
	public GDtlsClientConnection* getDtlsClientConnectionStruct()
	{
		return cast(GDtlsClientConnection*)getStruct();
	}


	/** */
	public ListG getAcceptedCas()
	{
		auto p = g_dtls_client_connection_get_accepted_cas(getDtlsClientConnectionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/** */
	public SocketConnectableIF getServerIdentity()
	{
		auto p = g_dtls_client_connection_get_server_identity(getDtlsClientConnectionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnectable, SocketConnectableIF)(cast(GSocketConnectable*) p);
	}

	/** */
	public GTlsCertificateFlags getValidationFlags()
	{
		return g_dtls_client_connection_get_validation_flags(getDtlsClientConnectionStruct());
	}

	/** */
	public void setServerIdentity(SocketConnectableIF identity)
	{
		g_dtls_client_connection_set_server_identity(getDtlsClientConnectionStruct(), (identity is null) ? null : identity.getSocketConnectableStruct());
	}

	/** */
	public void setValidationFlags(GTlsCertificateFlags flags)
	{
		g_dtls_client_connection_set_validation_flags(getDtlsClientConnectionStruct(), flags);
	}
}
