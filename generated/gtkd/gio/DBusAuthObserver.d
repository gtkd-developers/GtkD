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


module gio.DBusAuthObserver;

private import gio.Credentials;
private import gio.IOStream;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtkc.gio;
public  import gtkc.giotypes;
private import std.algorithm;


/**
 * The #GDBusAuthObserver type provides a mechanism for participating
 * in how a #GDBusServer (or a #GDBusConnection) authenticates remote
 * peers. Simply instantiate a #GDBusAuthObserver and connect to the
 * signals you are interested in. Note that new signals may be added
 * in the future
 * 
 * ## Controlling Authentication # {#auth-observer}
 * 
 * For example, if you only want to allow D-Bus connections from
 * processes owned by the same uid as the server, you would use a
 * signal handler like the following:
 * 
 * |[<!-- language="C" -->
 * static gboolean
 * on_authorize_authenticated_peer (GDBusAuthObserver *observer,
 * GIOStream         *stream,
 * GCredentials      *credentials,
 * gpointer           user_data)
 * {
 * gboolean authorized;
 * 
 * authorized = FALSE;
 * if (credentials != NULL)
 * {
 * GCredentials *own_credentials;
 * own_credentials = g_credentials_new ();
 * if (g_credentials_is_same_user (credentials, own_credentials, NULL))
 * authorized = TRUE;
 * g_object_unref (own_credentials);
 * }
 * 
 * return authorized;
 * }
 * ]|
 *
 * Since: 2.26
 */
public class DBusAuthObserver : ObjectG
{
	/** the main Gtk struct */
	protected GDBusAuthObserver* gDBusAuthObserver;

	/** Get the main Gtk struct */
	public GDBusAuthObserver* getDBusAuthObserverStruct()
	{
		return gDBusAuthObserver;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusAuthObserver;
	}

	protected override void setStruct(GObject* obj)
	{
		gDBusAuthObserver = cast(GDBusAuthObserver*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusAuthObserver* gDBusAuthObserver, bool ownedRef = false)
	{
		this.gDBusAuthObserver = gDBusAuthObserver;
		super(cast(GObject*)gDBusAuthObserver, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_dbus_auth_observer_get_type();
	}

	/**
	 * Creates a new #GDBusAuthObserver object.
	 *
	 * Returns: A #GDBusAuthObserver. Free with g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = g_dbus_auth_observer_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GDBusAuthObserver*) p, true);
	}

	/**
	 * Emits the #GDBusAuthObserver::allow-mechanism signal on @observer.
	 *
	 * Params:
	 *     mechanism = The name of the mechanism, e.g. `DBUS_COOKIE_SHA1`.
	 *
	 * Returns: %TRUE if @mechanism can be used to authenticate the other peer, %FALSE if not.
	 *
	 * Since: 2.34
	 */
	public bool allowMechanism(string mechanism)
	{
		return g_dbus_auth_observer_allow_mechanism(gDBusAuthObserver, Str.toStringz(mechanism)) != 0;
	}

	/**
	 * Emits the #GDBusAuthObserver::authorize-authenticated-peer signal on @observer.
	 *
	 * Params:
	 *     stream = A #GIOStream for the #GDBusConnection.
	 *     credentials = Credentials received from the peer or %NULL.
	 *
	 * Returns: %TRUE if the peer is authorized, %FALSE if not.
	 *
	 * Since: 2.26
	 */
	public bool authorizeAuthenticatedPeer(IOStream stream, Credentials credentials)
	{
		return g_dbus_auth_observer_authorize_authenticated_peer(gDBusAuthObserver, (stream is null) ? null : stream.getIOStreamStruct(), (credentials is null) ? null : credentials.getCredentialsStruct()) != 0;
	}

	protected class OnAllowMechanismDelegateWrapper
	{
		static OnAllowMechanismDelegateWrapper[] listeners;
		bool delegate(string, DBusAuthObserver) dlg;
		gulong handlerId;
		
		this(bool delegate(string, DBusAuthObserver) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnAllowMechanismDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * Emitted to check if @mechanism is allowed to be used.
	 *
	 * Params:
	 *     mechanism = The name of the mechanism, e.g. `DBUS_COOKIE_SHA1`.
	 *
	 * Returns: %TRUE if @mechanism can be used to authenticate the other peer, %FALSE if not.
	 *
	 * Since: 2.34
	 */
	gulong addOnAllowMechanism(bool delegate(string, DBusAuthObserver) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnAllowMechanismDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"allow-mechanism",
			cast(GCallback)&callBackAllowMechanism,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackAllowMechanismDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static int callBackAllowMechanism(GDBusAuthObserver* dbusauthobserverStruct, char* mechanism, OnAllowMechanismDelegateWrapper wrapper)
	{
		return wrapper.dlg(Str.toString(mechanism), wrapper.outer);
	}
	
	extern(C) static void callBackAllowMechanismDestroy(OnAllowMechanismDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnAuthorizeAuthenticatedPeerDelegateWrapper
	{
		static OnAuthorizeAuthenticatedPeerDelegateWrapper[] listeners;
		bool delegate(IOStream, Credentials, DBusAuthObserver) dlg;
		gulong handlerId;
		
		this(bool delegate(IOStream, Credentials, DBusAuthObserver) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnAuthorizeAuthenticatedPeerDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * Emitted to check if a peer that is successfully authenticated
	 * is authorized.
	 *
	 * Params:
	 *     stream = A #GIOStream for the #GDBusConnection.
	 *     credentials = Credentials received from the peer or %NULL.
	 *
	 * Returns: %TRUE if the peer is authorized, %FALSE if not.
	 *
	 * Since: 2.26
	 */
	gulong addOnAuthorizeAuthenticatedPeer(bool delegate(IOStream, Credentials, DBusAuthObserver) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnAuthorizeAuthenticatedPeerDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"authorize-authenticated-peer",
			cast(GCallback)&callBackAuthorizeAuthenticatedPeer,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackAuthorizeAuthenticatedPeerDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static int callBackAuthorizeAuthenticatedPeer(GDBusAuthObserver* dbusauthobserverStruct, GIOStream* stream, GCredentials* credentials, OnAuthorizeAuthenticatedPeerDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(IOStream)(stream), ObjectG.getDObject!(Credentials)(credentials), wrapper.outer);
	}
	
	extern(C) static void callBackAuthorizeAuthenticatedPeerDestroy(OnAuthorizeAuthenticatedPeerDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
