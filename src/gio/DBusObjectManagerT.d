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


module gio.DBusObjectManagerT;

public  import gio.DBusInterface;
public  import gio.DBusInterfaceIF;
public  import gio.DBusObject;
public  import gio.DBusObjectIF;
public  import glib.ListG;
public  import glib.Str;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtkc.gdktypes;
public  import gtkc.gio;
public  import gtkc.giotypes;


/**
 * The #GDBusObjectManager type is the base type for service- and
 * client-side implementations of the standardized
 * [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html#standard-interfaces-objectmanager)
 * interface.
 * 
 * See #GDBusObjectManagerClient for the client-side implementation
 * and #GDBusObjectManagerServer for the service-side implementation.
 */
public template DBusObjectManagerT(TStruct)
{
	/** Get the main Gtk struct */
	public GDBusObjectManager* getDBusObjectManagerStruct()
	{
		return cast(GDBusObjectManager*)getStruct();
	}


	/**
	 * Gets the interface proxy for @interface_name at @object_path, if
	 * any.
	 *
	 * Params:
	 *     objectPath = Object path to lookup.
	 *     interfaceName = D-Bus interface name to lookup.
	 *
	 * Return: A #GDBusInterface instance or %NULL. Free
	 *     with g_object_unref().
	 *
	 * Since: 2.30
	 */
	public DBusInterfaceIF getInterface(string objectPath, string interfaceName)
	{
		auto p = g_dbus_object_manager_get_interface(getDBusObjectManagerStruct(), Str.toStringz(objectPath), Str.toStringz(interfaceName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(cast(GDBusInterface*) p, true);
	}

	/**
	 * Gets the #GDBusObjectProxy at @object_path, if any.
	 *
	 * Params:
	 *     objectPath = Object path to lookup.
	 *
	 * Return: A #GDBusObject or %NULL. Free with
	 *     g_object_unref().
	 *
	 * Since: 2.30
	 */
	public DBusObjectIF getObject(string objectPath)
	{
		auto p = g_dbus_object_manager_get_object(getDBusObjectManagerStruct(), Str.toStringz(objectPath));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusObject, DBusObjectIF)(cast(GDBusObject*) p, true);
	}

	/**
	 * Gets the object path that @manager is for.
	 *
	 * Return: A string owned by @manager. Do not free.
	 *
	 * Since: 2.30
	 */
	public string getObjectPath()
	{
		return Str.toString(g_dbus_object_manager_get_object_path(getDBusObjectManagerStruct()));
	}

	/**
	 * Gets all #GDBusObject objects known to @manager.
	 *
	 * Return: A list of
	 *     #GDBusObject objects. The returned list should be freed with
	 *     g_list_free() after each element has been freed with
	 *     g_object_unref().
	 *
	 * Since: 2.30
	 */
	public ListG getObjects()
	{
		auto p = g_dbus_object_manager_get_objects(getDBusObjectManagerStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	int[string] connectedSignals;

	void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF)[] _onInterfaceAddedListeners;
	@property void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF)[] onInterfaceAddedListeners()
	{
		return _onInterfaceAddedListeners;
	}
	/**
	 * Emitted when @interface is added to @object.
	 *
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all objects managed by @manager.
	 *
	 * Params:
	 *     object = The #GDBusObject on which an interface was added.
	 *     iface = The #GDBusInterface that was added.
	 *
	 * Since: 2.30
	 */
	void addOnInterfaceAdded(void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "interface-added" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"interface-added",
				cast(GCallback)&callBackInterfaceAdded,
				cast(void*)cast(DBusObjectManagerIF)this,
				null,
				connectFlags);
			connectedSignals["interface-added"] = 1;
		}
		_onInterfaceAddedListeners ~= dlg;
	}
	extern(C) static void callBackInterfaceAdded(GDBusObjectManager* dbusobjectmanagerStruct, GDBusObject* object, GDBusInterface* iface, DBusObjectManagerIF _dbusobjectmanager)
	{
		foreach ( void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg; _dbusobjectmanager.onInterfaceAddedListeners )
		{
			dlg(ObjectG.getDObject!(DBusObject, DBusObjectIF)(object), ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(iface), _dbusobjectmanager);
		}
	}

	void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF)[] _onInterfaceRemovedListeners;
	@property void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF)[] onInterfaceRemovedListeners()
	{
		return _onInterfaceRemovedListeners;
	}
	/**
	 * Emitted when @interface has been removed from @object.
	 *
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all objects managed by @manager.
	 *
	 * Params:
	 *     object = The #GDBusObject on which an interface was removed.
	 *     iface = The #GDBusInterface that was removed.
	 *
	 * Since: 2.30
	 */
	void addOnInterfaceRemoved(void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "interface-removed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"interface-removed",
				cast(GCallback)&callBackInterfaceRemoved,
				cast(void*)cast(DBusObjectManagerIF)this,
				null,
				connectFlags);
			connectedSignals["interface-removed"] = 1;
		}
		_onInterfaceRemovedListeners ~= dlg;
	}
	extern(C) static void callBackInterfaceRemoved(GDBusObjectManager* dbusobjectmanagerStruct, GDBusObject* object, GDBusInterface* iface, DBusObjectManagerIF _dbusobjectmanager)
	{
		foreach ( void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg; _dbusobjectmanager.onInterfaceRemovedListeners )
		{
			dlg(ObjectG.getDObject!(DBusObject, DBusObjectIF)(object), ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(iface), _dbusobjectmanager);
		}
	}

	void delegate(DBusObjectIF, DBusObjectManagerIF)[] _onObjectAddedListeners;
	@property void delegate(DBusObjectIF, DBusObjectManagerIF)[] onObjectAddedListeners()
	{
		return _onObjectAddedListeners;
	}
	/**
	 * Emitted when @object is added to @manager.
	 *
	 * Params:
	 *     object = The #GDBusObject that was added.
	 *
	 * Since: 2.30
	 */
	void addOnObjectAdded(void delegate(DBusObjectIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "object-added" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"object-added",
				cast(GCallback)&callBackObjectAdded,
				cast(void*)cast(DBusObjectManagerIF)this,
				null,
				connectFlags);
			connectedSignals["object-added"] = 1;
		}
		_onObjectAddedListeners ~= dlg;
	}
	extern(C) static void callBackObjectAdded(GDBusObjectManager* dbusobjectmanagerStruct, GDBusObject* object, DBusObjectManagerIF _dbusobjectmanager)
	{
		foreach ( void delegate(DBusObjectIF, DBusObjectManagerIF) dlg; _dbusobjectmanager.onObjectAddedListeners )
		{
			dlg(ObjectG.getDObject!(DBusObject, DBusObjectIF)(object), _dbusobjectmanager);
		}
	}

	void delegate(DBusObjectIF, DBusObjectManagerIF)[] _onObjectRemovedListeners;
	@property void delegate(DBusObjectIF, DBusObjectManagerIF)[] onObjectRemovedListeners()
	{
		return _onObjectRemovedListeners;
	}
	/**
	 * Emitted when @object is removed from @manager.
	 *
	 * Params:
	 *     object = The #GDBusObject that was removed.
	 *
	 * Since: 2.30
	 */
	void addOnObjectRemoved(void delegate(DBusObjectIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "object-removed" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"object-removed",
				cast(GCallback)&callBackObjectRemoved,
				cast(void*)cast(DBusObjectManagerIF)this,
				null,
				connectFlags);
			connectedSignals["object-removed"] = 1;
		}
		_onObjectRemovedListeners ~= dlg;
	}
	extern(C) static void callBackObjectRemoved(GDBusObjectManager* dbusobjectmanagerStruct, GDBusObject* object, DBusObjectManagerIF _dbusobjectmanager)
	{
		foreach ( void delegate(DBusObjectIF, DBusObjectManagerIF) dlg; _dbusobjectmanager.onObjectRemovedListeners )
		{
			dlg(ObjectG.getDObject!(DBusObject, DBusObjectIF)(object), _dbusobjectmanager);
		}
	}
}
