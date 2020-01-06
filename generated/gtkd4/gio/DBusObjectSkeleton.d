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
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
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
	public GDBusObjectSkeleton* getDBusObjectSkeletonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusObjectSkeleton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusObjectSkeleton;
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
	 * Returns: A #GDBusObjectSkeleton. Free with g_object_unref().
	 *
	 * Since: 2.30
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string objectPath)
	{
		auto __p = g_dbus_object_skeleton_new(Str.toStringz(objectPath));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GDBusObjectSkeleton*) __p, true);
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
	 *     interface_ = A #GDBusInterfaceSkeleton.
	 *
	 * Since: 2.30
	 */
	public void addInterface(DBusInterfaceSkeleton interface_)
	{
		g_dbus_object_skeleton_add_interface(gDBusObjectSkeleton, (interface_ is null) ? null : interface_.getDBusInterfaceSkeletonStruct());
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
	 *     interface_ = A #GDBusInterfaceSkeleton.
	 *
	 * Since: 2.30
	 */
	public void removeInterface(DBusInterfaceSkeleton interface_)
	{
		g_dbus_object_skeleton_remove_interface(gDBusObjectSkeleton, (interface_ is null) ? null : interface_.getDBusInterfaceSkeletonStruct());
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
	 *     interface_ = The #GDBusInterfaceSkeleton that @invocation is for.
	 *     invocation = A #GDBusMethodInvocation.
	 *
	 * Returns: %TRUE if the call is authorized, %FALSE otherwise.
	 *
	 * Since: 2.30
	 */
	gulong addOnAuthorizeMethod(bool delegate(DBusInterfaceSkeleton, DBusMethodInvocation, DBusObjectSkeleton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "authorize-method", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
