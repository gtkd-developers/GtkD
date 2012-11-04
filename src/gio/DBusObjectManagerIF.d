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
 * outFile = DBusObjectManagerIF
 * strct   = GDBusObjectManager
 * realStrct=
 * ctorStrct=
 * clss    = DBusObjectManagerT
 * interf  = DBusObjectManagerIF
 * class Code: No
 * interface Code: No
 * template for:
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

module gio.DBusObjectManagerIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListG;
private import gio.DBusInterface;
private import gio.DBusInterfaceIF;
private import gio.DBusObject;
private import gio.DBusObjectIF;




/**
 * Description
 * The GDBusObjectManager type is the base type for service- and
 * client-side implementations of the standardized org.freedesktop.DBus.ObjectManager
 * interface.
 * See GDBusObjectManagerClient for the client-side implementation
 * and GDBusObjectManagerServer for the service-side implementation.
 */
public interface DBusObjectManagerIF
{
	
	
	public GDBusObjectManager* getDBusObjectManagerTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF)[] onInterfaceAddedListeners();
	/**
	 * Emitted when interface is added to object.
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all objects managed by manager.
	 * Since 2.30
	 */
	void addOnInterfaceAdded(void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF)[] onInterfaceRemovedListeners();
	/**
	 * Emitted when interface has been removed from object.
	 * This signal exists purely as a convenience to avoid having to
	 * connect signals to all objects managed by manager.
	 * Since 2.30
	 */
	void addOnInterfaceRemoved(void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(DBusObjectIF, DBusObjectManagerIF)[] onObjectAddedListeners();
	/**
	 * Emitted when object is added to manager.
	 * Since 2.30
	 */
	void addOnObjectAdded(void delegate(DBusObjectIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(DBusObjectIF, DBusObjectManagerIF)[] onObjectRemovedListeners();
	/**
	 * Emitted when object is removed from manager.
	 * Since 2.30
	 */
	void addOnObjectRemoved(void delegate(DBusObjectIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	
	/**
	 * Gets the object path that manager is for.
	 * Since 2.30
	 * Returns: A string owned by manager. Do not free.
	 */
	public string getObjectPath();
	
	/**
	 * Gets all GDBusObject objects known to manager.
	 * Since 2.30
	 * Returns: A list of GDBusObject objects. The returned list should be freed with g_list_free() after each element has been freed with g_object_unref(). [transfer full][element-type GDBusObject]
	 */
	public ListG getObjects();
	
	/**
	 * Gets the GDBusObjectProxy at object_path, if any.
	 * Since 2.30
	 * Params:
	 * objectPath = Object path to lookup.
	 * Returns: A GDBusObject or NULL. Free with g_object_unref(). [transfer full]
	 */
	public DBusObjectIF getObject(string objectPath);
	
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
	public DBusInterfaceIF getInterface(string objectPath, string interfaceName);
}
