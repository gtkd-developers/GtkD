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
public  import std.algorithm;


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
		
		return ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(cast(GDBusInterface*) p, true);
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
		
		return new ListG(cast(GList*) p, true);
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

	protected class OnInterfaceAddedDelegateWrapper
	{
		void delegate(DBusInterfaceIF, DBusObjectIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(DBusInterfaceIF, DBusObjectIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnInterfaceAddedDelegateWrapper[] onInterfaceAddedListeners;

	/**
	 * Emitted when @interface is added to @object.
	 *
	 * Params:
	 *     iface = The #GDBusInterface that was added.
	 *
	 * Since: 2.30
	 */
	gulong addOnInterfaceAdded(void delegate(DBusInterfaceIF, DBusObjectIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onInterfaceAddedListeners ~= new OnInterfaceAddedDelegateWrapper(dlg, 0, connectFlags);
		onInterfaceAddedListeners[onInterfaceAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"interface-added",
			cast(GCallback)&callBackInterfaceAdded,
			cast(void*)onInterfaceAddedListeners[onInterfaceAddedListeners.length - 1],
			cast(GClosureNotify)&callBackInterfaceAddedDestroy,
			connectFlags);
		return onInterfaceAddedListeners[onInterfaceAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackInterfaceAdded(GDBusObject* dbusobjectStruct, GDBusInterface* iface,OnInterfaceAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(iface), wrapper.outer);
	}
	
	extern(C) static void callBackInterfaceAddedDestroy(OnInterfaceAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnInterfaceAdded(wrapper);
	}

	protected void internalRemoveOnInterfaceAdded(OnInterfaceAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onInterfaceAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onInterfaceAddedListeners[index] = null;
				onInterfaceAddedListeners = std.algorithm.remove(onInterfaceAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnInterfaceRemovedDelegateWrapper
	{
		void delegate(DBusInterfaceIF, DBusObjectIF) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(DBusInterfaceIF, DBusObjectIF) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnInterfaceRemovedDelegateWrapper[] onInterfaceRemovedListeners;

	/**
	 * Emitted when @interface is removed from @object.
	 *
	 * Params:
	 *     iface = The #GDBusInterface that was removed.
	 *
	 * Since: 2.30
	 */
	gulong addOnInterfaceRemoved(void delegate(DBusInterfaceIF, DBusObjectIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onInterfaceRemovedListeners ~= new OnInterfaceRemovedDelegateWrapper(dlg, 0, connectFlags);
		onInterfaceRemovedListeners[onInterfaceRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"interface-removed",
			cast(GCallback)&callBackInterfaceRemoved,
			cast(void*)onInterfaceRemovedListeners[onInterfaceRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackInterfaceRemovedDestroy,
			connectFlags);
		return onInterfaceRemovedListeners[onInterfaceRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackInterfaceRemoved(GDBusObject* dbusobjectStruct, GDBusInterface* iface,OnInterfaceRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(iface), wrapper.outer);
	}
	
	extern(C) static void callBackInterfaceRemovedDestroy(OnInterfaceRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnInterfaceRemoved(wrapper);
	}

	protected void internalRemoveOnInterfaceRemoved(OnInterfaceRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onInterfaceRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onInterfaceRemovedListeners[index] = null;
				onInterfaceRemovedListeners = std.algorithm.remove(onInterfaceRemovedListeners, index);
				break;
			}
		}
	}
	
}
