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
 * inFile  = GDBusObject.html
 * outPack = gio
 * outFile = DBusObjectT
 * strct   = GDBusObject
 * realStrct=
 * ctorStrct=
 * clss    = DBusObjectT
 * interf  = DBusObjectIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dbus_interface_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gio.DBusInterface
 * 	- gio.DBusInterfaceIF
 * structWrap:
 * 	- GDBusInterface* -> DBusInterfaceIF
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusObjectT;

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




/**
 * Description
 * The GDBusObject type is the base type for D-Bus objects on both
 * the service side (see GDBusObjectSkeleton) and the client side
 * (see GDBusObjectProxy). It is essentially just a container of
 * interfaces.
 */
public template DBusObjectT(TStruct)
{
	
	/** the main Gtk struct */
	protected GDBusObject* gDBusObject;
	
	
	public GDBusObject* getDBusObjectTStruct()
	{
		return cast(GDBusObject*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(DBusInterfaceIF, DBusObjectIF)[] _onInterfaceAddedListeners;
	void delegate(DBusInterfaceIF, DBusObjectIF)[] onInterfaceAddedListeners()
	{
		return  _onInterfaceAddedListeners;
	}
	/**
	 * Emitted when interface is added to object.
	 * Since 2.30
	 */
	void addOnInterfaceAdded(void delegate(DBusInterfaceIF, DBusObjectIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("interface-added" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"interface-added",
			cast(GCallback)&callBackInterfaceAdded,
			cast(void*)cast(DBusObjectIF)this,
			null,
			connectFlags);
			connectedSignals["interface-added"] = 1;
		}
		_onInterfaceAddedListeners ~= dlg;
	}
	extern(C) static void callBackInterfaceAdded(GDBusObject* objectStruct, GDBusInterface* iface, DBusObjectIF _dBusObjectIF)
	{
		foreach ( void delegate(DBusInterfaceIF, DBusObjectIF) dlg ; _dBusObjectIF.onInterfaceAddedListeners )
		{
			dlg(ObjectG.getDObject!(DBusInterface)(iface), _dBusObjectIF);
		}
	}
	
	void delegate(DBusInterfaceIF, DBusObjectIF)[] _onInterfaceRemovedListeners;
	void delegate(DBusInterfaceIF, DBusObjectIF)[] onInterfaceRemovedListeners()
	{
		return  _onInterfaceRemovedListeners;
	}
	/**
	 * Emitted when interface is removed from object.
	 * Since 2.30
	 */
	void addOnInterfaceRemoved(void delegate(DBusInterfaceIF, DBusObjectIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("interface-removed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"interface-removed",
			cast(GCallback)&callBackInterfaceRemoved,
			cast(void*)cast(DBusObjectIF)this,
			null,
			connectFlags);
			connectedSignals["interface-removed"] = 1;
		}
		_onInterfaceRemovedListeners ~= dlg;
	}
	extern(C) static void callBackInterfaceRemoved(GDBusObject* objectStruct, GDBusInterface* iface, DBusObjectIF _dBusObjectIF)
	{
		foreach ( void delegate(DBusInterfaceIF, DBusObjectIF) dlg ; _dBusObjectIF.onInterfaceRemovedListeners )
		{
			dlg(ObjectG.getDObject!(DBusInterface)(iface), _dBusObjectIF);
		}
	}
	
	
	/**
	 * Gets the object path for object.
	 * Since 2.30
	 * Returns: A string owned by object. Do not free.
	 */
	public string gDbusObjectGetObjectPath()
	{
		// const gchar * g_dbus_object_get_object_path (GDBusObject *object);
		return Str.toString(g_dbus_object_get_object_path(getDBusObjectTStruct()));
	}
	
	/**
	 * Gets the D-Bus interfaces associated with object.
	 * Since 2.30
	 * Returns: (element-type GDBusInterface) (transfer full) : A list of GDBusInterface instances. The returned list must be freed by g_list_free() after each element has been freed with g_object_unref().
	 */
	public ListG gDbusObjectGetInterfaces()
	{
		// GList * g_dbus_object_get_interfaces (GDBusObject *object);
		auto p = g_dbus_object_get_interfaces(getDBusObjectTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Gets the D-Bus interface with name interface_name associated with
	 * object, if any.
	 * Since 2.30
	 * Signal Details
	 * The "interface-added" signal
	 * void user_function (GDBusObject *object,
	 *  GDBusInterface *interface,
	 *  gpointer user_data) : Run Last
	 * Emitted when interface is added to object.
	 * Since 2.30
	 * Params:
	 * interfaceName = A D-Bus interface name.
	 * interface = The GDBusInterface that was added.
	 * Returns: NULL if not found, otherwise a GDBusInterface that must be freed with g_object_unref(). [transfer full]
	 */
	public DBusInterfaceIF gDbusObjectGetInterface(string interfaceName)
	{
		// GDBusInterface * g_dbus_object_get_interface (GDBusObject *object,  const gchar *interface_name);
		auto p = g_dbus_object_get_interface(getDBusObjectTStruct(), Str.toStringz(interfaceName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusInterface)(cast(GDBusInterface*) p);
	}
}
