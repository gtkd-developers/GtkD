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
 * inFile  = GDBusObjectManager.html
 * outPack = gio
 * outFile = DBusObjectManagerT
 * strct   = GDBusObjectManager
 * realStrct=
 * ctorStrct=
 * clss    = DBusObjectManagerT
 * interf  = DBusObjectManagerIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dbus_object_manager_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gio.DBusInterface
 * 	- gio.DBusInterfaceIF
 * 	- gio.DBusObject
 * 	- gio.DBusObjectIF
 * structWrap:
 * 	- GDBusInterface* -> DBusInterfaceIF
 * 	- GDBusObject* -> DBusObjectIF
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusObjectManagerT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;

public import gobject.Signals;
public  import gtkc.gdktypes;

public import glib.Str;
public import glib.ListG;
public import gio.DBusInterface;
public import gio.DBusInterfaceIF;
public import gio.DBusObject;
public import gio.DBusObjectIF;




/**
 * Description
 * The GDBusObjectManager type is the base type for service- and
 * client-side implementations of the standardized org.freedesktop.DBus.ObjectManager
 * interface.
 * See GDBusObjectManagerClient for the client-side implementation
 * and GDBusObjectManagerServer for the service-side implementation.
 */
public template DBusObjectManagerT(TStruct)
{
	
	/** the main Gtk struct */
	protected GDBusObjectManager* gDBusObjectManager;
	
	
	public GDBusObjectManager* getDBusObjectManagerTStruct()
	{
		return cast(GDBusObjectManager*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF)[] _onInterfaceAddedListeners;
	void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF)[] onInterfaceAddedListeners()
	{
		return  _onInterfaceAddedListeners;
	}
	/**
	 * Emitted when interface is added to object.
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all objects managed by manager.
	 * Since 2.30
	 */
	void addOnInterfaceAdded(void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("interface-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"interface-added",
			cast(GCallback)&callBackInterfaceAdded,
			cast(void*)cast(DBusObjectManagerIF)this,
			null,
			connectFlags);
			connectedSignals["interface-added"] = 1;
		}
		_onInterfaceAddedListeners ~= dlg;
	}
	extern(C) static void callBackInterfaceAdded(GDBusObjectManager* managerStruct, GDBusObject* object, GDBusInterface* iface, DBusObjectManagerIF _dBusObjectManagerIF)
	{
		foreach ( void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg ; _dBusObjectManagerIF.onInterfaceAddedListeners )
		{
			dlg(ObjectG.getDObject!(DBusObject)(object), ObjectG.getDObject!(DBusInterface)(iface), _dBusObjectManagerIF);
		}
	}
	
	void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF)[] _onInterfaceRemovedListeners;
	void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF)[] onInterfaceRemovedListeners()
	{
		return  _onInterfaceRemovedListeners;
	}
	/**
	 * Emitted when interface has been removed from object.
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all objects managed by manager.
	 * Since 2.30
	 */
	void addOnInterfaceRemoved(void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("interface-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"interface-removed",
			cast(GCallback)&callBackInterfaceRemoved,
			cast(void*)cast(DBusObjectManagerIF)this,
			null,
			connectFlags);
			connectedSignals["interface-removed"] = 1;
		}
		_onInterfaceRemovedListeners ~= dlg;
	}
	extern(C) static void callBackInterfaceRemoved(GDBusObjectManager* managerStruct, GDBusObject* object, GDBusInterface* iface, DBusObjectManagerIF _dBusObjectManagerIF)
	{
		foreach ( void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg ; _dBusObjectManagerIF.onInterfaceRemovedListeners )
		{
			dlg(ObjectG.getDObject!(DBusObject)(object), ObjectG.getDObject!(DBusInterface)(iface), _dBusObjectManagerIF);
		}
	}
	
	void delegate(DBusObjectIF, DBusObjectManagerIF)[] _onObjectAddedListeners;
	void delegate(DBusObjectIF, DBusObjectManagerIF)[] onObjectAddedListeners()
	{
		return  _onObjectAddedListeners;
	}
	/**
	 * Emitted when object is added to manager.
	 * Since 2.30
	 */
	void addOnObjectAdded(void delegate(DBusObjectIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("object-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"object-added",
			cast(GCallback)&callBackObjectAdded,
			cast(void*)cast(DBusObjectManagerIF)this,
			null,
			connectFlags);
			connectedSignals["object-added"] = 1;
		}
		_onObjectAddedListeners ~= dlg;
	}
	extern(C) static void callBackObjectAdded(GDBusObjectManager* managerStruct, GDBusObject* object, DBusObjectManagerIF _dBusObjectManagerIF)
	{
		foreach ( void delegate(DBusObjectIF, DBusObjectManagerIF) dlg ; _dBusObjectManagerIF.onObjectAddedListeners )
		{
			dlg(ObjectG.getDObject!(DBusObject)(object), _dBusObjectManagerIF);
		}
	}
	
	void delegate(DBusObjectIF, DBusObjectManagerIF)[] _onObjectRemovedListeners;
	void delegate(DBusObjectIF, DBusObjectManagerIF)[] onObjectRemovedListeners()
	{
		return  _onObjectRemovedListeners;
	}
	/**
	 * Emitted when object is removed from manager.
	 * Since 2.30
	 */
	void addOnObjectRemoved(void delegate(DBusObjectIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("object-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"object-removed",
			cast(GCallback)&callBackObjectRemoved,
			cast(void*)cast(DBusObjectManagerIF)this,
			null,
			connectFlags);
			connectedSignals["object-removed"] = 1;
		}
		_onObjectRemovedListeners ~= dlg;
	}
	extern(C) static void callBackObjectRemoved(GDBusObjectManager* managerStruct, GDBusObject* object, DBusObjectManagerIF _dBusObjectManagerIF)
	{
		foreach ( void delegate(DBusObjectIF, DBusObjectManagerIF) dlg ; _dBusObjectManagerIF.onObjectRemovedListeners )
		{
			dlg(ObjectG.getDObject!(DBusObject)(object), _dBusObjectManagerIF);
		}
	}
	
	
	/**
	 * Gets the object path that manager is for.
	 * Since 2.30
	 * Returns: A string owned by manager. Do not free.
	 */
	public string getObjectPath()
	{
		// const gchar * g_dbus_object_manager_get_object_path  (GDBusObjectManager *manager);
		return Str.toString(g_dbus_object_manager_get_object_path(getDBusObjectManagerTStruct()));
	}
	
	/**
	 * Gets all GDBusObject objects known to manager.
	 * Since 2.30
	 * Returns: A list of GDBusObject objects. The returned list should be freed with g_list_free() after each element has been freed with g_object_unref(). [transfer full][element-type GDBusObject]
	 */
	public ListG getObjects()
	{
		// GList * g_dbus_object_manager_get_objects (GDBusObjectManager *manager);
		auto p = g_dbus_object_manager_get_objects(getDBusObjectManagerTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Gets the GDBusObjectProxy at object_path, if any.
	 * Since 2.30
	 * Params:
	 * objectPath = Object path to lookup.
	 * Returns: A GDBusObject or NULL. Free with g_object_unref(). [transfer full]
	 */
	public DBusObjectIF getObject(string objectPath)
	{
		// GDBusObject * g_dbus_object_manager_get_object (GDBusObjectManager *manager,  const gchar *object_path);
		auto p = g_dbus_object_manager_get_object(getDBusObjectManagerTStruct(), Str.toStringz(objectPath));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusObject)(cast(GDBusObject*) p);
	}
	
	/**
	 * Gets the interface proxy for interface_name at object_path, if
	 * any.
	 * Since 2.30
	 * Signal Details
	 * The "interface-added" signal
	 * void user_function (GDBusObjectManager *manager,
	 *  GDBusObject *object,
	 *  GDBusInterface *interface,
	 *  gpointer user_data) : Run Last
	 * Emitted when interface is added to object.
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all objects managed by manager.
	 * Since 2.30
	 * Params:
	 * objectPath = Object path to lookup.
	 * interfaceName = D-Bus interface name to lookup.
	 * object = The GDBusObject on which an interface was added.
	 * interface = The GDBusInterface that was added.
	 * Returns: A GDBusInterface instance or NULL. Free with g_object_unref(). [transfer full]
	 */
	public DBusInterfaceIF getInterface(string objectPath, string interfaceName)
	{
		// GDBusInterface * g_dbus_object_manager_get_interface (GDBusObjectManager *manager,  const gchar *object_path,  const gchar *interface_name);
		auto p = g_dbus_object_manager_get_interface(getDBusObjectManagerTStruct(), Str.toStringz(objectPath), Str.toStringz(interfaceName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusInterface)(cast(GDBusInterface*) p);
	}
}
