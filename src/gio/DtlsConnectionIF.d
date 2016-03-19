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


module gio.DtlsConnectionIF;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.TlsCertificate;
private import gio.TlsDatabase;
private import gio.TlsInteraction;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import gtkc.gio;
public  import gtkc.giotypes;


/** */
public interface DtlsConnectionIF{
	/** Get the main Gtk struct */
	public GDtlsConnection* getDtlsConnectionStruct();

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public bool close(Cancellable cancellable);

	/** */
	public void closeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/** */
	public bool closeFinish(AsyncResultIF result);

	/** */
	public bool emitAcceptCertificate(TlsCertificate peerCert, GTlsCertificateFlags errors);

	/** */
	public TlsCertificate getCertificate();

	/** */
	public TlsDatabase getDatabase();

	/** */
	public TlsInteraction getInteraction();

	/** */
	public TlsCertificate getPeerCertificate();

	/** */
	public GTlsCertificateFlags getPeerCertificateErrors();

	/** */
	public GTlsRehandshakeMode getRehandshakeMode();

	/** */
	public bool getRequireCloseNotify();

	/** */
	public bool handshake(Cancellable cancellable);

	/** */
	public void handshakeAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/** */
	public bool handshakeFinish(AsyncResultIF result);

	/** */
	public void setCertificate(TlsCertificate certificate);

	/** */
	public void setDatabase(TlsDatabase database);

	/** */
	public void setInteraction(TlsInteraction interaction);

	/** */
	public void setRehandshakeMode(GTlsRehandshakeMode mode);

	/** */
	public void setRequireCloseNotify(bool requireCloseNotify);

	/** */
	public bool shutdown(bool shutdownRead, bool shutdownWrite, Cancellable cancellable);

	/** */
	public void shutdownAsync(bool shutdownRead, bool shutdownWrite, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/** */
	public bool shutdownFinish(AsyncResultIF result);
	@property bool delegate(TlsCertificate, GTlsCertificateFlags, DtlsConnectionIF)[] onAcceptCertificateListeners();
	/** */
	void addOnAcceptCertificate(bool delegate(TlsCertificate, GTlsCertificateFlags, DtlsConnectionIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);

}
