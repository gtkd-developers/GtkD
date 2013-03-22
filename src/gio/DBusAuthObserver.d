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
 * 	- glib.Str
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
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gio.Credentials;
private import gio.IOStream;



private import gobject.ObjectG;

/**
 * The GDBusAuthObserver type provides a mechanism for participating
 * in how a GDBusServer (or a GDBusConnection) authenticates remote
 * peers. Simply instantiate a GDBusAuthObserver and connect to the
 * signals you are interested in. Note that new signals may be added
 * in the future
 *
 * For example, if you only want to allow D-Bus connections from
 * processes owned by the same uid as the server, you would use a
 * signal handler like the following:
 *
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
	int[string] connectedSignals;
	
	bool delegate(string, DBusAuthObserver)[] onAllowMechanismListeners;
	/**
	 * Emitted to check if mechanism is allowed to be used.
	 * TRUE if mechanism can be used to authenticate the other peer, FALSE if not.
	 * Since 2.34
	 */
	void addOnAllowMechanism(bool delegate(string, DBusAuthObserver) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("allow-mechanism" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"allow-mechanism",
			cast(GCallback)&callBackAllowMechanism,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["allow-mechanism"] = 1;
		}
		onAllowMechanismListeners ~= dlg;
	}
	extern(C) static gboolean callBackAllowMechanism(GDBusAuthObserver* observerStruct, gchar* mechanism, DBusAuthObserver _dBusAuthObserver)
	{
		foreach ( bool delegate(string, DBusAuthObserver) dlg ; _dBusAuthObserver.onAllowMechanismListeners )
		{
			if ( dlg(Str.toString(mechanism), _dBusAuthObserver) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(IOStream, Credentials, DBusAuthObserver)[] onAuthorizeAuthenticatedPeerListeners;
	/**
	 * Emitted to check if a peer that is successfully authenticated
	 * is authorized.
	 * TRUE if the peer is authorized, FALSE if not.
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
	extern(C) static gboolean callBackAuthorizeAuthenticatedPeer(GDBusAuthObserver* observerStruct, GIOStream* stream, GCredentials* credentials, DBusAuthObserver _dBusAuthObserver)
	{
		foreach ( bool delegate(IOStream, Credentials, DBusAuthObserver) dlg ; _dBusAuthObserver.onAuthorizeAuthenticatedPeerListeners )
		{
			if ( dlg(ObjectG.getDObject!(IOStream)(stream), ObjectG.getDObject!(Credentials)(credentials), _dBusAuthObserver) )
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
	 * Params:
	 * stream = A GIOStream for the GDBusConnection.
	 * credentials = Credentials received from the peer or NULL. [allow-none]
	 * Returns: TRUE if the peer is authorized, FALSE if not.
	 */
	public int authorizeAuthenticatedPeer(IOStream stream, Credentials credentials)
	{
		// gboolean g_dbus_auth_observer_authorize_authenticated_peer  (GDBusAuthObserver *observer,  GIOStream *stream,  GCredentials *credentials);
		return g_dbus_auth_observer_authorize_authenticated_peer(gDBusAuthObserver, (stream is null) ? null : stream.getIOStreamStruct(), (credentials is null) ? null : credentials.getCredentialsStruct());
	}
	
	/**
	 * Emits the "allow-mechanism" signal on observer.
	 * Since 2.34
	 * Signal Details
	 * The "allow-mechanism" signal
	 * gboolean user_function (GDBusAuthObserver *observer,
	 *  gchar *mechanism,
	 *  gpointer user_data) : Run Last
	 * Emitted to check if mechanism is allowed to be used.
	 * Since 2.34
	 * Params:
	 * mechanism = The name of the mechanism, e.g. DBUS_COOKIE_SHA1.
	 * mechanism = The name of the mechanism, e.g. DBUS_COOKIE_SHA1.
	 * Returns: TRUE if mechanism can be used to authenticate the other peer, FALSE if not.Returns: TRUE if mechanism can be used to authenticate the other peer, FALSE if not.
	 */
	public int allowMechanism(string mechanism)
	{
		// gboolean g_dbus_auth_observer_allow_mechanism  (GDBusAuthObserver *observer,  const gchar *mechanism);
		return g_dbus_auth_observer_allow_mechanism(gDBusAuthObserver, Str.toStringz(mechanism));
	}
}
