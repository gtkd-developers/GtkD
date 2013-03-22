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
 * outFile = DBusObjectIF
 * strct   = GDBusObject
 * realStrct=
 * ctorStrct=
 * clss    = DBusObjectT
 * interf  = DBusObjectIF
 * class Code: No
 * interface Code: No
 * template for:
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

module gio.DBusObjectIF;

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




/**
 * The GDBusObject type is the base type for D-Bus objects on both
 * the service side (see GDBusObjectSkeleton) and the client side
 * (see GDBusObjectProxy). It is essentially just a container of
 * interfaces.
 */
public interface DBusObjectIF
{
	
	
	public GDBusObject* getDBusObjectTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	void delegate(DBusInterfaceIF, DBusObjectIF)[] onInterfaceAddedListeners();
	/**
	 * Emitted when interface is added to object.
	 * Since 2.30
	 */
	void addOnInterfaceAdded(void delegate(DBusInterfaceIF, DBusObjectIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(DBusInterfaceIF, DBusObjectIF)[] onInterfaceRemovedListeners();
	/**
	 * Emitted when interface is removed from object.
	 * Since 2.30
	 */
	void addOnInterfaceRemoved(void delegate(DBusInterfaceIF, DBusObjectIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	
	/**
	 * Gets the object path for object.
	 * Since 2.30
	 * Returns: A string owned by object. Do not free.
	 */
	public string gDbusObjectGetObjectPath();
	
	/**
	 * Gets the D-Bus interfaces associated with object.
	 * Since 2.30
	 * Returns: (element-type GDBusInterface) (transfer full) : A list of GDBusInterface instances. The returned list must be freed by g_list_free() after each element has been freed with g_object_unref().
	 */
	public ListG gDbusObjectGetInterfaces();
	
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
	public DBusInterfaceIF gDbusObjectGetInterface(string interfaceName);
}
