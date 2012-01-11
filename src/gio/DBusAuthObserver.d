/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
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
 * inFile  = GDBusAuthObserver.html
 * outPack = gio
 * outFile = DBusAuthObserver
 * strct   = GDBusAuthObserver
 * realStrct=
 * ctorStrct=
 * clss    = DBusAuthObserver
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dbus_auth_observer_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.Credentials
 * 	- gio.IOStream
 * structWrap:
 * 	- GCredentials* -> Credentials
 * 	- GIOStream* -> IOStream
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusAuthObserver;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gio.Credentials;
private import gio.IOStream;



private import gobject.ObjectG;

/**
 * Description
 * The GDBusAuthObserver type provides a mechanism for participating
 * in how a GDBusServer (or a GDBusConnection) authenticates remote
 * peers. Simply instantiate a GDBusAuthObserver and connect to the
 * signals you are interested in. Note that new signals may be added
 * in the future
 * For example, if you only want to allow D-Bus connections from
 * processes owned by the same uid as the server, you would use a
 * signal handler like the following:
 * $(DDOC_COMMENT example)
 */
public class DBusAuthObserver : ObjectG
{
	
	/** the main Gtk struct */
	protected GDBusAuthObserver* gDBusAuthObserver;
	
	
	public GDBusAuthObserver* getDBusAuthObserverStruct()
	{
		return gDBusAuthObserver;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusAuthObserver;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusAuthObserver* gDBusAuthObserver)
	{
		if(gDBusAuthObserver is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gDBusAuthObserver);
		if( ptr !is null )
		{
			this = cast(DBusAuthObserver)ptr;
			return;
		}
		super(cast(GObject*)gDBusAuthObserver);
		this.gDBusAuthObserver = gDBusAuthObserver;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusAuthObserver = cast(GDBusAuthObserver*)obj;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	bool delegate(IOStream, Credentials, DBusAuthObserver)[] onAuthorizeAuthenticatedPeerListeners;
	/**
	 * Emitted to check if a peer that is successfully authenticated
	 * is authorized.
	 * Since 2.26
	 */
	void addOnAuthorizeAuthenticatedPeer(bool delegate(IOStream, Credentials, DBusAuthObserver) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("authorize-authenticated-peer" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"authorize-authenticated-peer",
			cast(GCallback)&callBackAuthorizeAuthenticatedPeer,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["authorize-authenticated-peer"] = 1;
		}
		onAuthorizeAuthenticatedPeerListeners ~= dlg;
	}
	extern(C) static gboolean callBackAuthorizeAuthenticatedPeer(GDBusAuthObserver* observerStruct, GIOStream* stream, GCredentials* credentials, DBusAuthObserver dBusAuthObserver)
	{
		foreach ( bool delegate(IOStream, Credentials, DBusAuthObserver) dlg ; dBusAuthObserver.onAuthorizeAuthenticatedPeerListeners )
		{
			if ( dlg(new IOStream(stream), new Credentials(credentials), dBusAuthObserver) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new GDBusAuthObserver object.
	 * Since 2.26
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GDBusAuthObserver * g_dbus_auth_observer_new (void);
		auto p = g_dbus_auth_observer_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_auth_observer_new()");
		}
		this(cast(GDBusAuthObserver*) p);
	}
	
	/**
	 * Emits the "authorize-authenticated-peer" signal on observer.
	 * Since 2.26
	 * Signal Details
	 * The "authorize-authenticated-peer" signal
	 * gboolean user_function (GDBusAuthObserver *observer,
	 *  GIOStream *stream,
	 *  GCredentials *credentials,
	 *  gpointer user_data) : Run Last
	 * Emitted to check if a peer that is successfully authenticated
	 * is authorized.
	 * Since 2.26
	 * Params:
	 * stream = A GIOStream for the GDBusConnection.
	 * credentials = Credentials received from the peer or NULL.
	 * stream = A GIOStream for the GDBusConnection.
	 * credentials = Credentials received from the peer or NULL.
	 * Returns: TRUE if the peer is authorized, FALSE if not.Returns: TRUE if the peer is authorized, FALSE if not.
	 */
	public int authorizeAuthenticatedPeer(IOStream stream, Credentials credentials)
	{
		// gboolean g_dbus_auth_observer_authorize_authenticated_peer  (GDBusAuthObserver *observer,  GIOStream *stream,  GCredentials *credentials);
		return g_dbus_auth_observer_authorize_authenticated_peer(gDBusAuthObserver, (stream is null) ? null : stream.getIOStreamStruct(), (credentials is null) ? null : credentials.getCredentialsStruct());
	}
}
