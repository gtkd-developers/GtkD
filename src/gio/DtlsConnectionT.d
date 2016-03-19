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


module gio.DtlsConnectionT;

public  import gio.AsyncResultIF;
public  import gio.Cancellable;
public  import gio.TlsCertificate;
public  import gio.TlsDatabase;
public  import gio.TlsInteraction;
public  import glib.ErrorG;
public  import glib.GException;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtkc.gdktypes;
public  import gtkc.gio;
public  import gtkc.giotypes;


/** */
public template DtlsConnectionT(TStruct)
{
	/** Get the main Gtk struct */
	public GDtlsConnection* getDtlsConnectionStruct()
	{
		return cast(GDtlsConnection*)getStruct();
	}


	/** */
	public bool close(Cancellable cancellable)
	{
		GError* err = null;
		
		auto p = g_dtls_connection_close(getDtlsConnectionStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/** */
	public void closeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dtls_connection_close_async(getDtlsConnectionStruct(), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/** */
	public bool closeFinish(AsyncResultIF result)
	{
		GError* err = null;
		
		auto p = g_dtls_connection_close_finish(getDtlsConnectionStruct(), (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/** */
	public bool emitAcceptCertificate(TlsCertificate peerCert, GTlsCertificateFlags errors)
	{
		return g_dtls_connection_emit_accept_certificate(getDtlsConnectionStruct(), (peerCert is null) ? null : peerCert.getTlsCertificateStruct(), errors) != 0;
	}

	/** */
	public TlsCertificate getCertificate()
	{
		auto p = g_dtls_connection_get_certificate(getDtlsConnectionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) p);
	}

	/** */
	public TlsDatabase getDatabase()
	{
		auto p = g_dtls_connection_get_database(getDtlsConnectionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsDatabase)(cast(GTlsDatabase*) p);
	}

	/** */
	public TlsInteraction getInteraction()
	{
		auto p = g_dtls_connection_get_interaction(getDtlsConnectionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsInteraction)(cast(GTlsInteraction*) p);
	}

	/** */
	public TlsCertificate getPeerCertificate()
	{
		auto p = g_dtls_connection_get_peer_certificate(getDtlsConnectionStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TlsCertificate)(cast(GTlsCertificate*) p);
	}

	/** */
	public GTlsCertificateFlags getPeerCertificateErrors()
	{
		return g_dtls_connection_get_peer_certificate_errors(getDtlsConnectionStruct());
	}

	/** */
	public GTlsRehandshakeMode getRehandshakeMode()
	{
		return g_dtls_connection_get_rehandshake_mode(getDtlsConnectionStruct());
	}

	/** */
	public bool getRequireCloseNotify()
	{
		return g_dtls_connection_get_require_close_notify(getDtlsConnectionStruct()) != 0;
	}

	/** */
	public bool handshake(Cancellable cancellable)
	{
		GError* err = null;
		
		auto p = g_dtls_connection_handshake(getDtlsConnectionStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/** */
	public void handshakeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dtls_connection_handshake_async(getDtlsConnectionStruct(), ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/** */
	public bool handshakeFinish(AsyncResultIF result)
	{
		GError* err = null;
		
		auto p = g_dtls_connection_handshake_finish(getDtlsConnectionStruct(), (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/** */
	public void setCertificate(TlsCertificate certificate)
	{
		g_dtls_connection_set_certificate(getDtlsConnectionStruct(), (certificate is null) ? null : certificate.getTlsCertificateStruct());
	}

	/** */
	public void setDatabase(TlsDatabase database)
	{
		g_dtls_connection_set_database(getDtlsConnectionStruct(), (database is null) ? null : database.getTlsDatabaseStruct());
	}

	/** */
	public void setInteraction(TlsInteraction interaction)
	{
		g_dtls_connection_set_interaction(getDtlsConnectionStruct(), (interaction is null) ? null : interaction.getTlsInteractionStruct());
	}

	/** */
	public void setRehandshakeMode(GTlsRehandshakeMode mode)
	{
		g_dtls_connection_set_rehandshake_mode(getDtlsConnectionStruct(), mode);
	}

	/** */
	public void setRequireCloseNotify(bool requireCloseNotify)
	{
		g_dtls_connection_set_require_close_notify(getDtlsConnectionStruct(), requireCloseNotify);
	}

	/** */
	public bool shutdown(bool shutdownRead, bool shutdownWrite, Cancellable cancellable)
	{
		GError* err = null;
		
		auto p = g_dtls_connection_shutdown(getDtlsConnectionStruct(), shutdownRead, shutdownWrite, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/** */
	public void shutdownAsync(bool shutdownRead, bool shutdownWrite, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dtls_connection_shutdown_async(getDtlsConnectionStruct(), shutdownRead, shutdownWrite, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/** */
	public bool shutdownFinish(AsyncResultIF result)
	{
		GError* err = null;
		
		auto p = g_dtls_connection_shutdown_finish(getDtlsConnectionStruct(), (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	int[string] connectedSignals;

	bool delegate(TlsCertificate, GTlsCertificateFlags, DtlsConnectionIF)[] _onAcceptCertificateListeners;
	@property bool delegate(TlsCertificate, GTlsCertificateFlags, DtlsConnectionIF)[] onAcceptCertificateListeners()
	{
		return _onAcceptCertificateListeners;
	}
	/** */
	void addOnAcceptCertificate(bool delegate(TlsCertificate, GTlsCertificateFlags, DtlsConnectionIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "accept-certificate" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"accept-certificate",
				cast(GCallback)&callBackAcceptCertificate,
				cast(void*)cast(DtlsConnectionIF)this,
				null,
				connectFlags);
			connectedSignals["accept-certificate"] = 1;
		}
		_onAcceptCertificateListeners ~= dlg;
	}
	extern(C) static int callBackAcceptCertificate(GDtlsConnection* dtlsconnectionStruct, GTlsCertificate* object, GTlsCertificateFlags p0, DtlsConnectionIF _dtlsconnection)
	{
		foreach ( bool delegate(TlsCertificate, GTlsCertificateFlags, DtlsConnectionIF) dlg; _dtlsconnection.onAcceptCertificateListeners )
		{
			if ( dlg(ObjectG.getDObject!(TlsCertificate)(object), p0, _dtlsconnection) )
			{
				return 1;
			}
		}
		
		return 0;
	}
}
