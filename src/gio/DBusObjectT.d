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


module gio.DBusObjectT;

public  import gio.DBusInterface;
public  import gio.DBusInterfaceIF;
public  import glib.ListG;
public  import glib.Str;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtkc.gdktypes;
public  import gtkc.gio;
public  import gtkc.giotypes;


/**
 * The #GDBusObject type is the base type for D-Bus objects on both
 * the service side (see #GDBusObjectSkeleton) and the client side
 * (see #GDBusObjectProxy). It is essentially just a container of
 * interfaces.
 */
public template DBusObjectT(TStruct)
{
	/** Get the main Gtk struct */
	public GDBusObject* getDBusObjectStruct()
	{
		return cast(GDBusObject*)getStruct();
	}


	/**
	 * Gets the D-Bus interface with name @interface_name associated with
	 * @object, if any.
	 *
	 * Params:
	 *     interfaceName = A D-Bus interface name.
	 *
	 * Return: %NULL if not found, otherwise a
	 *     #GDBusInterface that must be freed with g_object_unref().
	 *
	 * Since: 2.30
	 */
	public DBusInterfaceIF getInterface(string interfaceName)
	{
		auto p = g_dbus_object_get_interface(getDBusObjectStruct(), Str.toStringz(interfaceName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(cast(GDBusInterface*) p);
	}

	/**
	 * Gets the D-Bus interfaces associated with @object.
	 *
	 * Return: A list of #GDBusInterface instances.
	 *     The returned list must be freed by g_list_free() after each element has been freed
	 *     with g_object_unref().
	 *
	 * Since: 2.30
	 */
	public ListG getInterfaces()
	{
		auto p = g_dbus_object_get_interfaces(getDBusObjectStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * Gets the object path for @object.
	 *
	 * Return: A string owned by @object. Do not free.
	 *
	 * Since: 2.30
	 */
	public string getObjectPath()
	{
		return Str.toString(g_dbus_object_get_object_path(getDBusObjectStruct()));
	}

	int[string] connectedSignals;

	void delegate(DBusInterfaceIF, DBusObjectIF)[] _onInterfaceAddedListeners;
	@property void delegate(DBusInterfaceIF, DBusObjectIF)[] onInterfaceAddedListeners()
	{
		return _onInterfaceAddedListeners;
	}
	/**
	 * Emitted when @interface is added to @object.
	 *
	 * Params:
	 *     iface = The #GDBusInterface that was added.
	 *
	 * Since: 2.30
	 */
	void addOnInterfaceAdded(void delegate(DBusInterfaceIF, DBusObjectIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "interface-added" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"interface-added",
				cast(GCallback)&callBackInterfaceAdded,
				cast(void*)cast(DBusObjectIF)this,
				null,
				connectFlags);
			connectedSignals["interface-added"] = 1;
		}
		_onInterfaceAddedListeners ~= dlg;
	}
	extern(C) static void callBackInterfaceAdded(GDBusObject* dbusobjectStruct, GDBusInterface* iface, DBusObjectIF _dbusobject)
	{
		foreach ( void delegate(DBusInterfaceIF, DBusObjectIF) dlg; _dbusobject.onInterfaceAddedListeners )
		{
			dlg(ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(iface), _dbusobject);
		}
	}

	void delegate(DBusInterfaceIF, DBusObjectIF)[] _onInterfaceRemovedListeners;
	@property void delegate(DBusInterfaceIF, DBusObjectIF)[] onInterfaceRemovedListeners()
	{
		return _onInterfaceRemovedListeners;
	}
	/**
	 * Emitted when @interface is removed from @object.
	 *
	 * Params:
	 *     iface = The #GDBusInterface that was removed.
	 *
	 * Since: 2.30
	 */
	void addOnInterfaceRemoved(void delegate(DBusInterfaceIF, DBusObjectIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "interface-removed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"interface-removed",
				cast(GCallback)&callBackInterfaceRemoved,
				cast(void*)cast(DBusObjectIF)this,
				null,
				connectFlags);
			connectedSignals["interface-removed"] = 1;
		}
		_onInterfaceRemovedListeners ~= dlg;
	}
	extern(C) static void callBackInterfaceRemoved(GDBusObject* dbusobjectStruct, GDBusInterface* iface, DBusObjectIF _dbusobject)
	{
		foreach ( void delegate(DBusInterfaceIF, DBusObjectIF) dlg; _dbusobject.onInterfaceRemovedListeners )
		{
			dlg(ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(iface), _dbusobject);
		}
	}
}
