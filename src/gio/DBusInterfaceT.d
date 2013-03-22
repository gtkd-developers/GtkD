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
 * inFile  = GDBusInterface.html
 * outPack = gio
 * outFile = DBusInterfaceT
 * strct   = GDBusInterface
 * realStrct=
 * ctorStrct=
 * clss    = DBusInterfaceT
 * interf  = DBusInterfaceIF
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
 * 	- gio.DBusInterfaceInfo
 * 	- gio.DBusObject
 * 	- gio.DBusObjectIF
 * structWrap:
 * 	- GDBusInterfaceInfo* -> DBusInterfaceInfo
 * 	- GDBusObject* -> DBusObjectIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusInterfaceT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import gio.DBusInterfaceInfo;
public import gio.DBusObject;
public import gio.DBusObjectIF;




/**
 * The GDBusInterface type is the base type for D-Bus interfaces both
 * on the service side (see GDBusInterfaceSkeleton) and client side
 * (see GDBusProxy).
 */
public template DBusInterfaceT(TStruct)
{
	
	/** the main Gtk struct */
	protected GDBusInterface* gDBusInterface;
	
	
	public GDBusInterface* getDBusInterfaceTStruct()
	{
		return cast(GDBusInterface*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Gets D-Bus introspection information for the D-Bus interface
	 * implemented by interface_.
	 * Since 2.30
	 * Returns: A GDBusInterfaceInfo. Do not free. [transfer none]
	 */
	public DBusInterfaceInfo getInfo()
	{
		// GDBusInterfaceInfo * g_dbus_interface_get_info (GDBusInterface *interface_);
		auto p = g_dbus_interface_get_info(getDBusInterfaceTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusInterfaceInfo)(cast(GDBusInterfaceInfo*) p);
	}
	
	/**
	 * Gets the GDBusObject that interface_ belongs to, if any.
	 * Warning
	 * It is not safe to use the returned object if interface_
	 * or the returned object is being used from other threads. See
	 * g_dbus_interface_dup_object() for a thread-safe
	 * alternative.
	 * Since 2.30
	 * Returns: A GDBusObject or NULL. The returned reference belongs to interface_ and should not be freed. [transfer none]
	 */
	public DBusObjectIF getObject()
	{
		// GDBusObject * g_dbus_interface_get_object (GDBusInterface *interface_);
		auto p = g_dbus_interface_get_object(getDBusInterfaceTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusObject)(cast(GDBusObject*) p);
	}
	
	/**
	 * Gets the GDBusObject that interface_ belongs to, if any.
	 * Since 2.32
	 * Returns: A GDBusObject or NULL. The returned reference should be freed with g_object_unref(). [transfer full]
	 */
	public DBusObjectIF dupObject()
	{
		// GDBusObject * g_dbus_interface_dup_object (GDBusInterface *interface_);
		auto p = g_dbus_interface_dup_object(getDBusInterfaceTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusObject)(cast(GDBusObject*) p);
	}
	
	/**
	 * Sets the GDBusObject for interface_ to object.
	 * Note that interface_ will hold a weak reference to object.
	 * Since 2.30
	 * Params:
	 * object = A GDBusObject or NULL. [allow-none]
	 */
	public void setObject(DBusObjectIF object)
	{
		// void g_dbus_interface_set_object (GDBusInterface *interface_,  GDBusObject *object);
		g_dbus_interface_set_object(getDBusInterfaceTStruct(), (object is null) ? null : object.getDBusObjectTStruct());
	}
}
