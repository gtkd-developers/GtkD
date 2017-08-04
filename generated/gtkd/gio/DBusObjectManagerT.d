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
public  import gio.c.functions;
public  import gio.c.types;
public  import glib.ListG;
public  import glib.Str;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtkc.giotypes;
public  import std.algorithm;


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
	public GDBusObjectManager* getDBusObjectManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
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
	 * Returns: A #GDBusInterface instance or %NULL. Free
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
	 * Returns: A #GDBusObject or %NULL. Free with
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
	 * Returns: A string owned by @manager. Do not free.
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
	 * Returns: A list of
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

	protected class OnInterfaceAddedDelegateWrapper
	{
		void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg;
		gulong handlerId;

		this(void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg)
		{
			this.dlg = dlg;
			onInterfaceAddedListeners ~= this;
		}

		void remove(OnInterfaceAddedDelegateWrapper source)
		{
			foreach(index, wrapper; onInterfaceAddedListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onInterfaceAddedListeners[index] = null;
					onInterfaceAddedListeners = std.algorithm.remove(onInterfaceAddedListeners, index);
					break;
				}
			}
		}
	}
	OnInterfaceAddedDelegateWrapper[] onInterfaceAddedListeners;

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
	gulong addOnInterfaceAdded(void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnInterfaceAddedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"interface-added",
			cast(GCallback)&callBackInterfaceAdded,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackInterfaceAddedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static void callBackInterfaceAdded(GDBusObjectManager* dbusobjectmanagerStruct, GDBusObject* object, GDBusInterface* iface, OnInterfaceAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(DBusObject, DBusObjectIF)(object), ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(iface), wrapper.outer);
	}

	extern(C) static void callBackInterfaceAddedDestroy(OnInterfaceAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnInterfaceRemovedDelegateWrapper
	{
		void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg;
		gulong handlerId;

		this(void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg)
		{
			this.dlg = dlg;
			onInterfaceRemovedListeners ~= this;
		}

		void remove(OnInterfaceRemovedDelegateWrapper source)
		{
			foreach(index, wrapper; onInterfaceRemovedListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onInterfaceRemovedListeners[index] = null;
					onInterfaceRemovedListeners = std.algorithm.remove(onInterfaceRemovedListeners, index);
					break;
				}
			}
		}
	}
	OnInterfaceRemovedDelegateWrapper[] onInterfaceRemovedListeners;

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
	gulong addOnInterfaceRemoved(void delegate(DBusObjectIF, DBusInterfaceIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnInterfaceRemovedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"interface-removed",
			cast(GCallback)&callBackInterfaceRemoved,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackInterfaceRemovedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static void callBackInterfaceRemoved(GDBusObjectManager* dbusobjectmanagerStruct, GDBusObject* object, GDBusInterface* iface, OnInterfaceRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(DBusObject, DBusObjectIF)(object), ObjectG.getDObject!(DBusInterface, DBusInterfaceIF)(iface), wrapper.outer);
	}

	extern(C) static void callBackInterfaceRemovedDestroy(OnInterfaceRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnObjectAddedDelegateWrapper
	{
		void delegate(DBusObjectIF, DBusObjectManagerIF) dlg;
		gulong handlerId;

		this(void delegate(DBusObjectIF, DBusObjectManagerIF) dlg)
		{
			this.dlg = dlg;
			onObjectAddedListeners ~= this;
		}

		void remove(OnObjectAddedDelegateWrapper source)
		{
			foreach(index, wrapper; onObjectAddedListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onObjectAddedListeners[index] = null;
					onObjectAddedListeners = std.algorithm.remove(onObjectAddedListeners, index);
					break;
				}
			}
		}
	}
	OnObjectAddedDelegateWrapper[] onObjectAddedListeners;

	/**
	 * Emitted when @object is added to @manager.
	 *
	 * Params:
	 *     object = The #GDBusObject that was added.
	 *
	 * Since: 2.30
	 */
	gulong addOnObjectAdded(void delegate(DBusObjectIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnObjectAddedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"object-added",
			cast(GCallback)&callBackObjectAdded,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackObjectAddedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static void callBackObjectAdded(GDBusObjectManager* dbusobjectmanagerStruct, GDBusObject* object, OnObjectAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(DBusObject, DBusObjectIF)(object), wrapper.outer);
	}

	extern(C) static void callBackObjectAddedDestroy(OnObjectAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnObjectRemovedDelegateWrapper
	{
		void delegate(DBusObjectIF, DBusObjectManagerIF) dlg;
		gulong handlerId;

		this(void delegate(DBusObjectIF, DBusObjectManagerIF) dlg)
		{
			this.dlg = dlg;
			onObjectRemovedListeners ~= this;
		}

		void remove(OnObjectRemovedDelegateWrapper source)
		{
			foreach(index, wrapper; onObjectRemovedListeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					onObjectRemovedListeners[index] = null;
					onObjectRemovedListeners = std.algorithm.remove(onObjectRemovedListeners, index);
					break;
				}
			}
		}
	}
	OnObjectRemovedDelegateWrapper[] onObjectRemovedListeners;

	/**
	 * Emitted when @object is removed from @manager.
	 *
	 * Params:
	 *     object = The #GDBusObject that was removed.
	 *
	 * Since: 2.30
	 */
	gulong addOnObjectRemoved(void delegate(DBusObjectIF, DBusObjectManagerIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnObjectRemovedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"object-removed",
			cast(GCallback)&callBackObjectRemoved,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackObjectRemovedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}

	extern(C) static void callBackObjectRemoved(GDBusObjectManager* dbusobjectmanagerStruct, GDBusObject* object, OnObjectRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(DBusObject, DBusObjectIF)(object), wrapper.outer);
	}

	extern(C) static void callBackObjectRemovedDestroy(OnObjectRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
