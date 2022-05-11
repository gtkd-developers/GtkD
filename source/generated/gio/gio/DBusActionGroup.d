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


module gio.DBusActionGroup;

private import gio.ActionGroupIF;
private import gio.ActionGroupT;
private import gio.DBusConnection;
private import gio.RemoteActionGroupIF;
private import gio.RemoteActionGroupT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * #GDBusActionGroup is an implementation of the #GActionGroup
 * interface that can be used as a proxy for an action group
 * that is exported over D-Bus with g_dbus_connection_export_action_group().
 */
public class DBusActionGroup : ObjectG, ActionGroupIF, RemoteActionGroupIF
{
	/** the main Gtk struct */
	protected GDBusActionGroup* gDBusActionGroup;

	/** Get the main Gtk struct */
	public GDBusActionGroup* getDBusActionGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusActionGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusActionGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusActionGroup* gDBusActionGroup, bool ownedRef = false)
	{
		this.gDBusActionGroup = gDBusActionGroup;
		super(cast(GObject*)gDBusActionGroup, ownedRef);
	}

	// add the ActionGroup capabilities
	mixin ActionGroupT!(GDBusActionGroup);

	// add the RemoteActionGroup capabilities
	mixin RemoteActionGroupT!(GDBusActionGroup);

	/**
	 * See_Also: get().
	 */
	this(DBusConnection connection, string busName, string objectPath)
	{
		auto p =  g_dbus_action_group_get((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(busName), Str.toStringz(objectPath));

		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_action_group_get");
		}
		this(cast(GDBusActionGroup*) p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return g_dbus_action_group_get_type();
	}

	/**
	 * Obtains a #GDBusActionGroup for the action group which is exported at
	 * the given @bus_name and @object_path.
	 *
	 * The thread default main context is taken at the time of this call.
	 * All signals on the menu model (and any linked models) are reported
	 * with respect to this context.  All calls on the returned menu model
	 * (and linked models) must also originate from this same context, with
	 * the thread default main context unchanged.
	 *
	 * This call is non-blocking.  The returned action group may or may not
	 * already be filled in.  The correct thing to do is connect the signals
	 * for the action group to monitor for changes and then to call
	 * g_action_group_list_actions() to get the initial list.
	 *
	 * Params:
	 *     connection = A #GDBusConnection
	 *     busName = the bus name which exports the action
	 *         group or %NULL if @connection is not a message bus connection
	 *     objectPath = the object path at which the action group is exported
	 *
	 * Returns: a #GDBusActionGroup
	 *
	 * Since: 2.32
	 */
	public static DBusActionGroup get(DBusConnection connection, string busName, string objectPath)
	{
		auto __p = g_dbus_action_group_get((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(busName), Str.toStringz(objectPath));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusActionGroup)(cast(GDBusActionGroup*) __p, true);
	}
}
