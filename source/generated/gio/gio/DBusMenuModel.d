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


module gio.DBusMenuModel;

private import gio.DBusConnection;
private import gio.MenuModel;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * #GDBusMenuModel is an implementation of #GMenuModel that can be used
 * as a proxy for a menu model that is exported over D-Bus with
 * g_dbus_connection_export_menu_model().
 */
public class DBusMenuModel : MenuModel
{
	/** the main Gtk struct */
	protected GDBusMenuModel* gDBusMenuModel;

	/** Get the main Gtk struct */
	public GDBusMenuModel* getDBusMenuModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusMenuModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusMenuModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusMenuModel* gDBusMenuModel, bool ownedRef = false)
	{
		this.gDBusMenuModel = gDBusMenuModel;
		super(cast(GMenuModel*)gDBusMenuModel, ownedRef);
	}

	/**
	 * See_Also: get().
	 */
	this(DBusConnection connection, string busName, string objectPath)
	{
		auto p =  g_dbus_menu_model_get((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(busName), Str.toStringz(objectPath));

		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_menu_model_get");
		}

		this(cast(GDBusMenuModel*) p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return g_dbus_menu_model_get_type();
	}

	/**
	 * Obtains a #GDBusMenuModel for the menu model which is exported
	 * at the given @bus_name and @object_path.
	 *
	 * The thread default main context is taken at the time of this call.
	 * All signals on the menu model (and any linked models) are reported
	 * with respect to this context.  All calls on the returned menu model
	 * (and linked models) must also originate from this same context, with
	 * the thread default main context unchanged.
	 *
	 * Params:
	 *     connection = a #GDBusConnection
	 *     busName = the bus name which exports the menu model
	 *         or %NULL if @connection is not a message bus connection
	 *     objectPath = the object path at which the menu model is exported
	 *
	 * Returns: a #GDBusMenuModel object. Free with
	 *     g_object_unref().
	 *
	 * Since: 2.32
	 */
	public static DBusMenuModel get(DBusConnection connection, string busName, string objectPath)
	{
		auto __p = g_dbus_menu_model_get((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(busName), Str.toStringz(objectPath));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusMenuModel)(cast(GDBusMenuModel*) __p, true);
	}
}
