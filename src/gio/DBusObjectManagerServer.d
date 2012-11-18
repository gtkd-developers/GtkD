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
 * inFile  = GDBusObjectManagerServer.html
 * outPack = gio
 * outFile = DBusObjectManagerServer
 * strct   = GDBusObjectManagerServer
 * realStrct=
 * ctorStrct=
 * clss    = DBusObjectManagerServer
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- DBusObjectManagerIF
 * prefixes:
 * 	- g_dbus_object_manager_server_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.DBusConnection
 * 	- gio.DBusObjectSkeleton
 * 	- gio.DBusObjectManagerT
 * 	- gio.DBusObjectManagerIF
 * structWrap:
 * 	- GDBusConnection* -> DBusConnection
 * 	- GDBusObjectSkeleton* -> DBusObjectSkeleton
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusObjectManagerServer;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.DBusConnection;
private import gio.DBusObjectSkeleton;
private import gio.DBusObjectManagerT;
private import gio.DBusObjectManagerIF;



private import gobject.ObjectG;

/**
 * Description
 * GDBusObjectManagerServer is used to export GDBusObject instances using
 * the standardized org.freedesktop.DBus.ObjectManager
 * interface. For example, remote D-Bus clients can get all objects
 * and properties in a single call. Additionally, any change in the
 * object hierarchy is broadcast using signals. This means that D-Bus
 * clients can keep caches up to date by only listening to D-Bus
 * signals.
 * See GDBusObjectManagerClient for the client-side code that is
 * intended to be used with GDBusObjectManagerServer or any D-Bus
 * object implementing the org.freedesktop.DBus.ObjectManager
 * interface.
 */
public class DBusObjectManagerServer : ObjectG, DBusObjectManagerIF
{
	
	/** the main Gtk struct */
	protected GDBusObjectManagerServer* gDBusObjectManagerServer;
	
	
	public GDBusObjectManagerServer* getDBusObjectManagerServerStruct()
	{
		return gDBusObjectManagerServer;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusObjectManagerServer;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusObjectManagerServer* gDBusObjectManagerServer)
	{
		super(cast(GObject*)gDBusObjectManagerServer);
		this.gDBusObjectManagerServer = gDBusObjectManagerServer;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusObjectManagerServer = cast(GDBusObjectManagerServer*)obj;
	}
	
	// add the DBusObjectManager capabilities
	mixin DBusObjectManagerT!(GDBusObjectManagerServer);
	
	/**
	 */
	
	/**
	 * Creates a new GDBusObjectManagerServer object.
	 * The returned server isn't yet exported on any connection. To do so,
	 * use g_dbus_object_manager_server_set_connection(). Normally you
	 * want to export all of your objects before doing so to avoid InterfacesAdded
	 * signals being emitted.
	 * Since 2.30
	 * Params:
	 * objectPath = The object path to export the manager object at.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string objectPath)
	{
		// GDBusObjectManagerServer * g_dbus_object_manager_server_new  (const gchar *object_path);
		auto p = g_dbus_object_manager_server_new(Str.toStringz(objectPath));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_object_manager_server_new(Str.toStringz(objectPath))");
		}
		this(cast(GDBusObjectManagerServer*) p);
	}
	
	/**
	 * Gets the GDBusConnection used by manager.
	 * Since 2.30
	 * Returns: A GDBusConnection object or NULL if manager isn't exported on a connection. The returned object should be freed with g_object_unref(). [transfer full]
	 */
	public DBusConnection getConnection()
	{
		// GDBusConnection * g_dbus_object_manager_server_get_connection  (GDBusObjectManagerServer *manager);
		auto p = g_dbus_object_manager_server_get_connection(gDBusObjectManagerServer);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) p);
	}
	
	/**
	 * Exports all objects managed by manager on connection. If
	 * connection is NULL, stops exporting objects.
	 * Params:
	 * connection = A GDBusConnection or NULL. [allow-none]
	 */
	public void setConnection(DBusConnection connection)
	{
		// void g_dbus_object_manager_server_set_connection  (GDBusObjectManagerServer *manager,  GDBusConnection *connection);
		g_dbus_object_manager_server_set_connection(gDBusObjectManagerServer, (connection is null) ? null : connection.getDBusConnectionStruct());
	}
	
	/**
	 * Exports object on manager.
	 * If there is already a GDBusObject exported at the object path,
	 * then the old object is removed.
	 * The object path for object must be in the hierarchy rooted by the
	 * object path for manager.
	 * Note that manager will take a reference on object for as long as
	 * it is exported.
	 * Since 2.30
	 * Params:
	 * object = A GDBusObjectSkeleton.
	 */
	public void expor(DBusObjectSkeleton object)
	{
		// void g_dbus_object_manager_server_export (GDBusObjectManagerServer *manager,  GDBusObjectSkeleton *object);
		g_dbus_object_manager_server_export(gDBusObjectManagerServer, (object is null) ? null : object.getDBusObjectSkeletonStruct());
	}
	
	/**
	 * Like g_dbus_object_manager_server_export() but appends a string of
	 * the form _N (with N being a natural number) to
	 * object's object path if an object with the given path
	 * already exists. As such, the "g-object-path" property
	 * of object may be modified.
	 * Since 2.30
	 * Params:
	 * object = An object.
	 */
	public void exportUniquely(DBusObjectSkeleton object)
	{
		// void g_dbus_object_manager_server_export_uniquely  (GDBusObjectManagerServer *manager,  GDBusObjectSkeleton *object);
		g_dbus_object_manager_server_export_uniquely(gDBusObjectManagerServer, (object is null) ? null : object.getDBusObjectSkeletonStruct());
	}
	
	/**
	 * Returns whether object is currently exported on manager.
	 * Since 2.34
	 * Params:
	 * object = An object.
	 * Returns: TRUE if object is exported
	 */
	public int isExported(DBusObjectSkeleton object)
	{
		// gboolean g_dbus_object_manager_server_is_exported  (GDBusObjectManagerServer *manager,  GDBusObjectSkeleton *object);
		return g_dbus_object_manager_server_is_exported(gDBusObjectManagerServer, (object is null) ? null : object.getDBusObjectSkeletonStruct());
	}
	
	/**
	 * If manager has an object at path, removes the object. Otherwise
	 * does nothing.
	 * Note that object_path must be in the hierarchy rooted by the
	 * object path for manager.
	 * Since 2.30
	 * Params:
	 * objectPath = An object path.
	 * Returns: TRUE if object at object_path was removed, FALSE otherwise.
	 */
	public int unexport(string objectPath)
	{
		// gboolean g_dbus_object_manager_server_unexport  (GDBusObjectManagerServer *manager,  const gchar *object_path);
		return g_dbus_object_manager_server_unexport(gDBusObjectManagerServer, Str.toStringz(objectPath));
	}
}
