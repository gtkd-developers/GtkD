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


module gio.DBusObjectSkeleton;

private import gio.DBusInterfaceSkeleton;
private import gio.DBusMethodInvocation;
private import gio.DBusObjectIF;
private import gio.DBusObjectT;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import gtkc.gio;
public  import gtkc.giotypes;
private import std.algorithm;


/**
 * A #GDBusObjectSkeleton instance is essentially a group of D-Bus
 * interfaces. The set of exported interfaces on the object may be
 * dynamic and change at runtime.
 * 
 * This type is intended to be used with #GDBusObjectManager.
 *
 * Since: 2.30
 */
public class DBusObjectSkeleton : ObjectG, DBusObjectIF
{
	/** the main Gtk struct */
	protected GDBusObjectSkeleton* gDBusObjectSkeleton;

	/** Get the main Gtk struct */
	public GDBusObjectSkeleton* getDBusObjectSkeletonStruct()
	{
		return gDBusObjectSkeleton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusObjectSkeleton;
	}

	protected override void setStruct(GObject* obj)
	{
		gDBusObjectSkeleton = cast(GDBusObjectSkeleton*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusObjectSkeleton* gDBusObjectSkeleton, bool ownedRef = false)
	{
		this.gDBusObjectSkeleton = gDBusObjectSkeleton;
		super(cast(GObject*)gDBusObjectSkeleton, ownedRef);
	}

	// add the DBusObject capabilities
	mixin DBusObjectT!(GDBusObjectSkeleton);


	/** */
	public static GType getType()
	{
		return g_dbus_object_skeleton_get_type();
	}

	/**
	 * Creates a new #GDBusObjectSkeleton.
	 *
	 * Params:
	 *     objectPath = An object path.
	 *
	 * Return: A #GDBusObjectSkeleton. Free with g_object_unref().
	 *
	 * Since: 2.30
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string objectPath)
	{
		auto p = g_dbus_object_skeleton_new(Str.toStringz(objectPath));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GDBusObjectSkeleton*) p, true);
	}

	/**
	 * Adds @interface_ to @object.
	 *
	 * If @object already contains a #GDBusInterfaceSkeleton with the same
	 * interface name, it is removed before @interface_ is added.
	 *
	 * Note that @object takes its own reference on @interface_ and holds
	 * it until removed.
	 *
	 * Params:
	 *     iface = A #GDBusInterfaceSkeleton.
	 *
	 * Since: 2.30
	 */
	public void addInterface(DBusInterfaceSkeleton iface)
	{
		g_dbus_object_skeleton_add_interface(gDBusObjectSkeleton, (iface is null) ? null : iface.getDBusInterfaceSkeletonStruct());
	}

	/**
	 * This method simply calls g_dbus_interface_skeleton_flush() on all
	 * interfaces belonging to @object. See that method for when flushing
	 * is useful.
	 *
	 * Since: 2.30
	 */
	public void flush()
	{
		g_dbus_object_skeleton_flush(gDBusObjectSkeleton);
	}

	/**
	 * Removes @interface_ from @object.
	 *
	 * Params:
	 *     iface = A #GDBusInterfaceSkeleton.
	 *
	 * Since: 2.30
	 */
	public void removeInterface(DBusInterfaceSkeleton iface)
	{
		g_dbus_object_skeleton_remove_interface(gDBusObjectSkeleton, (iface is null) ? null : iface.getDBusInterfaceSkeletonStruct());
	}

	/**
	 * Removes the #GDBusInterface with @interface_name from @object.
	 *
	 * If no D-Bus interface of the given interface exists, this function
	 * does nothing.
	 *
	 * Params:
	 *     interfaceName = A D-Bus interface name.
	 *
	 * Since: 2.30
	 */
	public void removeInterfaceByName(string interfaceName)
	{
		g_dbus_object_skeleton_remove_interface_by_name(gDBusObjectSkeleton, Str.toStringz(interfaceName));
	}

	/**
	 * Sets the object path for @object.
	 *
	 * Params:
	 *     objectPath = A valid D-Bus object path.
	 *
	 * Since: 2.30
	 */
	public void setObjectPath(string objectPath)
	{
		g_dbus_object_skeleton_set_object_path(gDBusObjectSkeleton, Str.toStringz(objectPath));
	}

	protected class OnAuthorizeMethodDelegateWrapper
	{
		bool delegate(DBusInterfaceSkeleton, DBusMethodInvocation, DBusObjectSkeleton) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(bool delegate(DBusInterfaceSkeleton, DBusMethodInvocation, DBusObjectSkeleton) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnAuthorizeMethodDelegateWrapper[] onAuthorizeMethodListeners;

	/**
	 * Emitted when a method is invoked by a remote caller and used to
	 * determine if the method call is authorized.
	 *
	 * This signal is like #GDBusInterfaceSkeleton's
	 * #GDBusInterfaceSkeleton::g-authorize-method signal,
	 * except that it is for the enclosing object.
	 *
	 * The default class handler just returns %TRUE.
	 *
	 * Params:
	 *     iface = The #GDBusInterfaceSkeleton that @invocation is for.
	 *     invocation = A #GDBusMethodInvocation.
	 *
	 * Return: %TRUE if the call is authorized, %FALSE otherwise.
	 *
	 * Since: 2.30
	 */
	gulong addOnAuthorizeMethod(bool delegate(DBusInterfaceSkeleton, DBusMethodInvocation, DBusObjectSkeleton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onAuthorizeMethodListeners ~= new OnAuthorizeMethodDelegateWrapper(dlg, 0, connectFlags);
		onAuthorizeMethodListeners[onAuthorizeMethodListeners.length - 1].handlerId = Signals.connectData(
			this,
			"authorize-method",
			cast(GCallback)&callBackAuthorizeMethod,
			cast(void*)onAuthorizeMethodListeners[onAuthorizeMethodListeners.length - 1],
			cast(GClosureNotify)&callBackAuthorizeMethodDestroy,
			connectFlags);
		return onAuthorizeMethodListeners[onAuthorizeMethodListeners.length - 1].handlerId;
	}
	
	extern(C) static int callBackAuthorizeMethod(GDBusObjectSkeleton* dbusobjectskeletonStruct, GDBusInterfaceSkeleton* iface, GDBusMethodInvocation* invocation,OnAuthorizeMethodDelegateWrapper wrapper)
	{
		return wrapper.dlg(ObjectG.getDObject!(DBusInterfaceSkeleton)(iface), ObjectG.getDObject!(DBusMethodInvocation)(invocation), wrapper.outer);
	}
	
	extern(C) static void callBackAuthorizeMethodDestroy(OnAuthorizeMethodDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnAuthorizeMethod(wrapper);
	}

	protected void internalRemoveOnAuthorizeMethod(OnAuthorizeMethodDelegateWrapper source)
	{
		foreach(index, wrapper; onAuthorizeMethodListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onAuthorizeMethodListeners[index] = null;
				onAuthorizeMethodListeners = std.algorithm.remove(onAuthorizeMethodListeners, index);
				break;
			}
		}
	}
	
}
