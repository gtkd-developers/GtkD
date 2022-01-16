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


module gio.DBusInterfaceSkeleton;

private import gio.DBusConnection;
private import gio.DBusInterfaceIF;
private import gio.DBusInterfaceInfo;
private import gio.DBusInterfaceT;
private import gio.DBusMethodInvocation;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * Abstract base class for D-Bus interfaces on the service side.
 *
 * Since: 2.30
 */
public class DBusInterfaceSkeleton : ObjectG, DBusInterfaceIF
{
	/** the main Gtk struct */
	protected GDBusInterfaceSkeleton* gDBusInterfaceSkeleton;

	/** Get the main Gtk struct */
	public GDBusInterfaceSkeleton* getDBusInterfaceSkeletonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusInterfaceSkeleton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusInterfaceSkeleton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusInterfaceSkeleton* gDBusInterfaceSkeleton, bool ownedRef = false)
	{
		this.gDBusInterfaceSkeleton = gDBusInterfaceSkeleton;
		super(cast(GObject*)gDBusInterfaceSkeleton, ownedRef);
	}

	// add the DBusInterface capabilities
	mixin DBusInterfaceT!(GDBusInterfaceSkeleton);


	/** */
	public static GType getType()
	{
		return g_dbus_interface_skeleton_get_type();
	}

	alias expor = export_;
	/**
	 * Exports @interface_ at @object_path on @connection.
	 *
	 * This can be called multiple times to export the same @interface_
	 * onto multiple connections however the @object_path provided must be
	 * the same for all connections.
	 *
	 * Use g_dbus_interface_skeleton_unexport() to unexport the object.
	 *
	 * Params:
	 *     connection = A #GDBusConnection to export @interface_ on.
	 *     objectPath = The path to export the interface at.
	 *
	 * Returns: %TRUE if the interface was exported on @connection, otherwise %FALSE with
	 *     @error set.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public bool export_(DBusConnection connection, string objectPath)
	{
		GError* err = null;

		auto __p = g_dbus_interface_skeleton_export(gDBusInterfaceSkeleton, (connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(objectPath), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * If @interface_ has outstanding changes, request for these changes to be
	 * emitted immediately.
	 *
	 * For example, an exported D-Bus interface may queue up property
	 * changes and emit the
	 * `org.freedesktop.DBus.Properties.PropertiesChanged`
	 * signal later (e.g. in an idle handler). This technique is useful
	 * for collapsing multiple property changes into one.
	 *
	 * Since: 2.30
	 */
	public void flush()
	{
		g_dbus_interface_skeleton_flush(gDBusInterfaceSkeleton);
	}

	/**
	 * Gets the first connection that @interface_ is exported on, if any.
	 *
	 * Returns: A #GDBusConnection or %NULL if @interface_ is
	 *     not exported anywhere. Do not free, the object belongs to @interface_.
	 *
	 * Since: 2.30
	 */
	public DBusConnection getConnection()
	{
		auto __p = g_dbus_interface_skeleton_get_connection(gDBusInterfaceSkeleton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) __p);
	}

	/**
	 * Gets a list of the connections that @interface_ is exported on.
	 *
	 * Returns: A list of
	 *     all the connections that @interface_ is exported on. The returned
	 *     list should be freed with g_list_free() after each element has
	 *     been freed with g_object_unref().
	 *
	 * Since: 2.32
	 */
	public ListG getConnections()
	{
		auto __p = g_dbus_interface_skeleton_get_connections(gDBusInterfaceSkeleton);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Gets the #GDBusInterfaceSkeletonFlags that describes what the behavior
	 * of @interface_
	 *
	 * Returns: One or more flags from the #GDBusInterfaceSkeletonFlags enumeration.
	 *
	 * Since: 2.30
	 */
	public GDBusInterfaceSkeletonFlags getFlags()
	{
		return g_dbus_interface_skeleton_get_flags(gDBusInterfaceSkeleton);
	}

	/**
	 * Gets D-Bus introspection information for the D-Bus interface
	 * implemented by @interface_.
	 *
	 * Returns: A #GDBusInterfaceInfo (never %NULL). Do not free.
	 *
	 * Since: 2.30
	 */
	public DBusInterfaceInfo getInfo()
	{
		auto __p = g_dbus_interface_skeleton_get_info(gDBusInterfaceSkeleton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusInterfaceInfo)(cast(GDBusInterfaceInfo*) __p);
	}

	/**
	 * Gets the object path that @interface_ is exported on, if any.
	 *
	 * Returns: A string owned by @interface_ or %NULL if @interface_ is not exported
	 *     anywhere. Do not free, the string belongs to @interface_.
	 *
	 * Since: 2.30
	 */
	public string getObjectPath()
	{
		return Str.toString(g_dbus_interface_skeleton_get_object_path(gDBusInterfaceSkeleton));
	}

	/**
	 * Gets all D-Bus properties for @interface_.
	 *
	 * Returns: A #GVariant of type
	 *     ['a{sv}'][G-VARIANT-TYPE-VARDICT:CAPS].
	 *     Free with g_variant_unref().
	 *
	 * Since: 2.30
	 */
	public Variant getProperties()
	{
		auto __p = g_dbus_interface_skeleton_get_properties(gDBusInterfaceSkeleton);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Gets the interface vtable for the D-Bus interface implemented by
	 * @interface_. The returned function pointers should expect @interface_
	 * itself to be passed as @user_data.
	 *
	 * Returns: A #GDBusInterfaceVTable (never %NULL).
	 *
	 * Since: 2.30
	 */
	public GDBusInterfaceVTable* getVtable()
	{
		return g_dbus_interface_skeleton_get_vtable(gDBusInterfaceSkeleton);
	}

	/**
	 * Checks if @interface_ is exported on @connection.
	 *
	 * Params:
	 *     connection = A #GDBusConnection.
	 *
	 * Returns: %TRUE if @interface_ is exported on @connection, %FALSE otherwise.
	 *
	 * Since: 2.32
	 */
	public bool hasConnection(DBusConnection connection)
	{
		return g_dbus_interface_skeleton_has_connection(gDBusInterfaceSkeleton, (connection is null) ? null : connection.getDBusConnectionStruct()) != 0;
	}

	/**
	 * Sets flags describing what the behavior of @skeleton should be.
	 *
	 * Params:
	 *     flags = Flags from the #GDBusInterfaceSkeletonFlags enumeration.
	 *
	 * Since: 2.30
	 */
	public void setFlags(GDBusInterfaceSkeletonFlags flags)
	{
		g_dbus_interface_skeleton_set_flags(gDBusInterfaceSkeleton, flags);
	}

	/**
	 * Stops exporting @interface_ on all connections it is exported on.
	 *
	 * To unexport @interface_ from only a single connection, use
	 * g_dbus_interface_skeleton_unexport_from_connection()
	 *
	 * Since: 2.30
	 */
	public void unexport()
	{
		g_dbus_interface_skeleton_unexport(gDBusInterfaceSkeleton);
	}

	/**
	 * Stops exporting @interface_ on @connection.
	 *
	 * To stop exporting on all connections the interface is exported on,
	 * use g_dbus_interface_skeleton_unexport().
	 *
	 * Params:
	 *     connection = A #GDBusConnection.
	 *
	 * Since: 2.32
	 */
	public void unexportFromConnection(DBusConnection connection)
	{
		g_dbus_interface_skeleton_unexport_from_connection(gDBusInterfaceSkeleton, (connection is null) ? null : connection.getDBusConnectionStruct());
	}

	/**
	 * Emitted when a method is invoked by a remote caller and used to
	 * determine if the method call is authorized.
	 *
	 * Note that this signal is emitted in a thread dedicated to
	 * handling the method call so handlers are allowed to perform
	 * blocking IO. This means that it is appropriate to call e.g.
	 * [polkit_authority_check_authorization_sync()](http://hal.freedesktop.org/docs/polkit/PolkitAuthority.html#polkit-authority-check-authorization-sync)
	 * with the
	 * [POLKIT_CHECK_AUTHORIZATION_FLAGS_ALLOW_USER_INTERACTION](http://hal.freedesktop.org/docs/polkit/PolkitAuthority.html#POLKIT-CHECK-AUTHORIZATION-FLAGS-ALLOW-USER-INTERACTION:CAPS)
	 * flag set.
	 *
	 * If %FALSE is returned then no further handlers are run and the
	 * signal handler must take a reference to @invocation and finish
	 * handling the call (e.g. return an error via
	 * g_dbus_method_invocation_return_error()).
	 *
	 * Otherwise, if %TRUE is returned, signal emission continues. If no
	 * handlers return %FALSE, then the method is dispatched. If
	 * @interface has an enclosing #GDBusObjectSkeleton, then the
	 * #GDBusObjectSkeleton::authorize-method signal handlers run before
	 * the handlers for this signal.
	 *
	 * The default class handler just returns %TRUE.
	 *
	 * Please note that the common case is optimized: if no signals
	 * handlers are connected and the default class handler isn't
	 * overridden (for both @interface and the enclosing
	 * #GDBusObjectSkeleton, if any) and #GDBusInterfaceSkeleton:g-flags does
	 * not have the
	 * %G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD
	 * flags set, no dedicated thread is ever used and the call will be
	 * handled in the same thread as the object that @interface belongs
	 * to was exported in.
	 *
	 * Params:
	 *     invocation = A #GDBusMethodInvocation.
	 *
	 * Returns: %TRUE if the call is authorized, %FALSE otherwise.
	 *
	 * Since: 2.30
	 */
	gulong addOnGAuthorizeMethod(bool delegate(DBusMethodInvocation, DBusInterfaceSkeleton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "g-authorize-method", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
