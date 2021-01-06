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


module gio.DBusObjectProxy;

private import gio.DBusConnection;
private import gio.DBusObjectIF;
private import gio.DBusObjectT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * A #GDBusObjectProxy is an object used to represent a remote object
 * with one or more D-Bus interfaces. Normally, you don't instantiate
 * a #GDBusObjectProxy yourself - typically #GDBusObjectManagerClient
 * is used to obtain it.
 *
 * Since: 2.30
 */
public class DBusObjectProxy : ObjectG, DBusObjectIF
{
	/** the main Gtk struct */
	protected GDBusObjectProxy* gDBusObjectProxy;

	/** Get the main Gtk struct */
	public GDBusObjectProxy* getDBusObjectProxyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusObjectProxy;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusObjectProxy;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusObjectProxy* gDBusObjectProxy, bool ownedRef = false)
	{
		this.gDBusObjectProxy = gDBusObjectProxy;
		super(cast(GObject*)gDBusObjectProxy, ownedRef);
	}

	// add the DBusObject capabilities
	mixin DBusObjectT!(GDBusObjectProxy);


	/** */
	public static GType getType()
	{
		return g_dbus_object_proxy_get_type();
	}

	/**
	 * Creates a new #GDBusObjectProxy for the given connection and
	 * object path.
	 *
	 * Params:
	 *     connection = a #GDBusConnection
	 *     objectPath = the object path
	 *
	 * Returns: a new #GDBusObjectProxy
	 *
	 * Since: 2.30
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DBusConnection connection, string objectPath)
	{
		auto __p = g_dbus_object_proxy_new((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(objectPath));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GDBusObjectProxy*) __p, true);
	}

	/**
	 * Gets the connection that @proxy is for.
	 *
	 * Returns: A #GDBusConnection. Do not free, the
	 *     object is owned by @proxy.
	 *
	 * Since: 2.30
	 */
	public DBusConnection getConnection()
	{
		auto __p = g_dbus_object_proxy_get_connection(gDBusObjectProxy);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) __p);
	}
}
