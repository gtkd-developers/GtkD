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
 * inFile  = GDBusObjectSkeleton.html
 * outPack = gio
 * outFile = DBusObjectSkeleton
 * strct   = GDBusObjectSkeleton
 * realStrct=
 * ctorStrct=
 * clss    = DBusObjectSkeleton
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- DBusObjectIF
 * prefixes:
 * 	- g_dbus_object_skeleton_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.DBusInterfaceSkeleton
 * 	- gio.DBusObjectT
 * 	- gio.DBusObjectIF
 * structWrap:
 * 	- GDBusInterfaceSkeleton* -> DBusInterfaceSkeleton
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusObjectSkeleton;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gio.DBusInterfaceSkeleton;
private import gio.DBusObjectT;
private import gio.DBusObjectIF;



private import gobject.ObjectG;

/**
 * Description
 * A GDBusObjectSkeleton instance is essentially a group of D-Bus
 * interfaces. The set of exported interfaces on the object may be
 * dynamic and change at runtime.
 * This type is intended to be used with GDBusObjectManager.
 */
public class DBusObjectSkeleton : ObjectG, DBusObjectIF
{
	
	/** the main Gtk struct */
	protected GDBusObjectSkeleton* gDBusObjectSkeleton;
	
	
	public GDBusObjectSkeleton* getDBusObjectSkeletonStruct()
	{
		return gDBusObjectSkeleton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusObjectSkeleton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusObjectSkeleton* gDBusObjectSkeleton)
	{
		super(cast(GObject*)gDBusObjectSkeleton);
		this.gDBusObjectSkeleton = gDBusObjectSkeleton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusObjectSkeleton = cast(GDBusObjectSkeleton*)obj;
	}
	
	// add the DBusObject capabilities
	mixin DBusObjectT!(GDBusObjectSkeleton);
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(DBusInterfaceSkeleton, GDBusMethodInvocation*, DBusObjectSkeleton)[] onAuthorizeMethodListeners;
	/**
	 * Emitted when a method is invoked by a remote caller and used to
	 * determine if the method call is authorized.
	 * This signal is like GDBusInterfaceSkeleton's
	 * "g-authorize-method" signal, except that it is
	 * for the enclosing object.
	 * The default class handler just returns TRUE.
	 * TRUE if the call is authorized, FALSE otherwise.
	 * Since 2.30
	 */
	void addOnAuthorizeMethod(bool delegate(DBusInterfaceSkeleton, GDBusMethodInvocation*, DBusObjectSkeleton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("authorize-method" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"authorize-method",
			cast(GCallback)&callBackAuthorizeMethod,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["authorize-method"] = 1;
		}
		onAuthorizeMethodListeners ~= dlg;
	}
	extern(C) static gboolean callBackAuthorizeMethod(GDBusObjectSkeleton* objectStruct, GDBusInterfaceSkeleton* iface, GDBusMethodInvocation* invocation, DBusObjectSkeleton _dBusObjectSkeleton)
	{
		foreach ( bool delegate(DBusInterfaceSkeleton, GDBusMethodInvocation*, DBusObjectSkeleton) dlg ; _dBusObjectSkeleton.onAuthorizeMethodListeners )
		{
			if ( dlg(ObjectG.getDObject!(DBusInterfaceSkeleton)(iface), invocation, _dBusObjectSkeleton) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new GDBusObjectSkeleton.
	 * Since 2.30
	 * Params:
	 * objectPath = An object path.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string objectPath)
	{
		// GDBusObjectSkeleton * g_dbus_object_skeleton_new (const gchar *object_path);
		auto p = g_dbus_object_skeleton_new(Str.toStringz(objectPath));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_object_skeleton_new(Str.toStringz(objectPath))");
		}
		this(cast(GDBusObjectSkeleton*) p);
	}
	
	/**
	 * This method simply calls g_dbus_interface_skeleton_flush() on all
	 * interfaces belonging to object. See that method for when flushing
	 * is useful.
	 * Since 2.30
	 */
	public void flush()
	{
		// void g_dbus_object_skeleton_flush (GDBusObjectSkeleton *object);
		g_dbus_object_skeleton_flush(gDBusObjectSkeleton);
	}
	
	/**
	 * Adds interface_ to object.
	 * If object already contains a GDBusInterfaceSkeleton with the same
	 * interface name, it is removed before interface_ is added.
	 * Note that object takes its own reference on interface_ and holds
	 * it until removed.
	 * Since 2.30
	 */
	public void addInterface(DBusInterfaceSkeleton iface)
	{
		// void g_dbus_object_skeleton_add_interface  (GDBusObjectSkeleton *object,  GDBusInterfaceSkeleton *interface_);
		g_dbus_object_skeleton_add_interface(gDBusObjectSkeleton, (iface is null) ? null : iface.getDBusInterfaceSkeletonStruct());
	}
	
	/**
	 * Removes interface_ from object.
	 * Since 2.30
	 */
	public void removeInterface(DBusInterfaceSkeleton iface)
	{
		// void g_dbus_object_skeleton_remove_interface  (GDBusObjectSkeleton *object,  GDBusInterfaceSkeleton *interface_);
		g_dbus_object_skeleton_remove_interface(gDBusObjectSkeleton, (iface is null) ? null : iface.getDBusInterfaceSkeletonStruct());
	}
	
	/**
	 * Removes the GDBusInterface with interface_name from object.
	 * If no D-Bus interface of the given interface exists, this function
	 * does nothing.
	 * Since 2.30
	 * Params:
	 * interfaceName = A D-Bus interface name.
	 */
	public void removeInterfaceByName(string interfaceName)
	{
		// void g_dbus_object_skeleton_remove_interface_by_name  (GDBusObjectSkeleton *object,  const gchar *interface_name);
		g_dbus_object_skeleton_remove_interface_by_name(gDBusObjectSkeleton, Str.toStringz(interfaceName));
	}
	
	/**
	 * Sets the object path for object.
	 * Since 2.30
	 * Params:
	 * object = A GDBusObjectSkeleton.
	 * objectPath = A valid D-Bus object path.
	 */
	public void setObjectPath(string objectPath)
	{
		// void g_dbus_object_skeleton_set_object_path  (GDBusObjectSkeleton *object,  const gchar *object_path);
		g_dbus_object_skeleton_set_object_path(gDBusObjectSkeleton, Str.toStringz(objectPath));
	}
}
