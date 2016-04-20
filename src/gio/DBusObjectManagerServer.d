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


module gio.DBusObjectManagerServer;

private import gio.DBusConnection;
private import gio.DBusObjectManagerIF;
private import gio.DBusObjectManagerT;
private import gio.DBusObjectSkeleton;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * #GDBusObjectManagerServer is used to export #GDBusObject instances using
 * the standardized
 * [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html#standard-interfaces-objectmanager)
 * interface. For example, remote D-Bus clients can get all objects
 * and properties in a single call. Additionally, any change in the
 * object hierarchy is broadcast using signals. This means that D-Bus
 * clients can keep caches up to date by only listening to D-Bus
 * signals.
 * 
 * The recommended path to export an object manager at is the path form of the
 * well-known name of a D-Bus service, or below. For example, if a D-Bus service
 * is available at the well-known name `net.example.ExampleService1`, the object
 * manager should typically be exported at `/net/example/ExampleService1`, or
 * below (to allow for multiple object managers in a service).
 * 
 * It is not supported to export an object manager at the root path, `/`.
 * 
 * See #GDBusObjectManagerClient for the client-side code that is
 * intended to be used with #GDBusObjectManagerServer or any D-Bus
 * object implementing the org.freedesktop.DBus.ObjectManager
 * interface.
 *
 * Since: 2.30
 */
public class DBusObjectManagerServer : ObjectG, DBusObjectManagerIF
{
	/** the main Gtk struct */
	protected GDBusObjectManagerServer* gDBusObjectManagerServer;

	/** Get the main Gtk struct */
	public GDBusObjectManagerServer* getDBusObjectManagerServerStruct()
	{
		return gDBusObjectManagerServer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusObjectManagerServer;
	}

	protected override void setStruct(GObject* obj)
	{
		gDBusObjectManagerServer = cast(GDBusObjectManagerServer*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusObjectManagerServer* gDBusObjectManagerServer, bool ownedRef = false)
	{
		this.gDBusObjectManagerServer = gDBusObjectManagerServer;
		super(cast(GObject*)gDBusObjectManagerServer, ownedRef);
	}

	// add the DBusObjectManager capabilities
	mixin DBusObjectManagerT!(GDBusObjectManagerServer);


	/** */
	public static GType getType()
	{
		return g_dbus_object_manager_server_get_type();
	}

	/**
	 * Creates a new #GDBusObjectManagerServer object.
	 *
	 * The returned server isn't yet exported on any connection. To do so,
	 * use g_dbus_object_manager_server_set_connection(). Normally you
	 * want to export all of your objects before doing so to avoid
	 * [InterfacesAdded](http://dbus.freedesktop.org/doc/dbus-specification.html#standard-interfaces-objectmanager)
	 * signals being emitted.
	 *
	 * Params:
	 *     objectPath = The object path to export the manager object at, which should
	 *         not be `/`.
	 *
	 * Return: A #GDBusObjectManagerServer object. Free with g_object_unref().
	 *
	 * Since: 2.30
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string objectPath)
	{
		auto p = g_dbus_object_manager_server_new(Str.toStringz(objectPath));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GDBusObjectManagerServer*) p, true);
	}

	/**
	 * Exports @object on @manager.
	 *
	 * If there is already a #GDBusObject exported at the object path,
	 * then the old object is removed.
	 *
	 * The object path for @object must be in the hierarchy rooted by the
	 * object path for @manager.
	 *
	 * Note that @manager will take a reference on @object for as long as
	 * it is exported.
	 *
	 * Params:
	 *     object = A #GDBusObjectSkeleton.
	 *
	 * Since: 2.30
	 */
	public void expor(DBusObjectSkeleton object)
	{
		g_dbus_object_manager_server_export(gDBusObjectManagerServer, (object is null) ? null : object.getDBusObjectSkeletonStruct());
	}

	/**
	 * Like g_dbus_object_manager_server_export() but appends a string of
	 * the form _N (with N being a natural number) to @object's object path
	 * if an object with the given path already exists. As such, the
	 * #GDBusObjectProxy:g-object-path property of @object may be modified.
	 *
	 * Params:
	 *     object = An object.
	 *
	 * Since: 2.30
	 */
	public void exportUniquely(DBusObjectSkeleton object)
	{
		g_dbus_object_manager_server_export_uniquely(gDBusObjectManagerServer, (object is null) ? null : object.getDBusObjectSkeletonStruct());
	}

	/**
	 * Gets the #GDBusConnection used by @manager.
	 *
	 * Return: A #GDBusConnection object or %NULL if
	 *     @manager isn't exported on a connection. The returned object should
	 *     be freed with g_object_unref().
	 *
	 * Since: 2.30
	 */
	public DBusConnection getConnection()
	{
		auto p = g_dbus_object_manager_server_get_connection(gDBusObjectManagerServer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) p, true);
	}

	/**
	 * Returns whether @object is currently exported on @manager.
	 *
	 * Params:
	 *     object = An object.
	 *
	 * Return: %TRUE if @object is exported
	 *
	 * Since: 2.34
	 */
	public bool isExported(DBusObjectSkeleton object)
	{
		return g_dbus_object_manager_server_is_exported(gDBusObjectManagerServer, (object is null) ? null : object.getDBusObjectSkeletonStruct()) != 0;
	}

	/**
	 * Exports all objects managed by @manager on @connection. If
	 * @connection is %NULL, stops exporting objects.
	 *
	 * Params:
	 *     connection = A #GDBusConnection or %NULL.
	 */
	public void setConnection(DBusConnection connection)
	{
		g_dbus_object_manager_server_set_connection(gDBusObjectManagerServer, (connection is null) ? null : connection.getDBusConnectionStruct());
	}

	/**
	 * If @manager has an object at @path, removes the object. Otherwise
	 * does nothing.
	 *
	 * Note that @object_path must be in the hierarchy rooted by the
	 * object path for @manager.
	 *
	 * Params:
	 *     objectPath = An object path.
	 *
	 * Return: %TRUE if object at @object_path was removed, %FALSE otherwise.
	 *
	 * Since: 2.30
	 */
	public bool unexport(string objectPath)
	{
		return g_dbus_object_manager_server_unexport(gDBusObjectManagerServer, Str.toStringz(objectPath)) != 0;
	}
}
