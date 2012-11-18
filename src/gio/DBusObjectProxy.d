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
 * inFile  = GDBusObjectProxy.html
 * outPack = gio
 * outFile = DBusObjectProxy
 * strct   = GDBusObjectProxy
 * realStrct=
 * ctorStrct=
 * clss    = DBusObjectProxy
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- DBusObjectIF
 * prefixes:
 * 	- g_dbus_object_proxy_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.DBusConnection
 * 	- gio.DBusObjectT
 * 	- gio.DBusObjectIF
 * structWrap:
 * 	- GDBusConnection* -> DBusConnection
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusObjectProxy;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.DBusConnection;
private import gio.DBusObjectT;
private import gio.DBusObjectIF;



private import gobject.ObjectG;

/**
 * Description
 * A GDBusObjectProxy is an object used to represent a remote object
 * with one or more D-Bus interfaces. Normally, you don't instantiate
 * a GDBusObjectProxy yourself - typically GDBusObjectManagerClient
 * is used to obtain it.
 */
public class DBusObjectProxy : ObjectG, DBusObjectIF
{
	
	/** the main Gtk struct */
	protected GDBusObjectProxy* gDBusObjectProxy;
	
	
	public GDBusObjectProxy* getDBusObjectProxyStruct()
	{
		return gDBusObjectProxy;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusObjectProxy;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusObjectProxy* gDBusObjectProxy)
	{
		super(cast(GObject*)gDBusObjectProxy);
		this.gDBusObjectProxy = gDBusObjectProxy;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusObjectProxy = cast(GDBusObjectProxy*)obj;
	}
	
	// add the DBusObject capabilities
	mixin DBusObjectT!(GDBusObjectProxy);
	
	/**
	 */
	
	/**
	 * Creates a new GDBusObjectProxy for the given connection and
	 * object path.
	 * Since 2.30
	 * Params:
	 * connection = a GDBusConnection
	 * objectPath = the object path
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (DBusConnection connection, string objectPath)
	{
		// GDBusObjectProxy * g_dbus_object_proxy_new (GDBusConnection *connection,  const gchar *object_path);
		auto p = g_dbus_object_proxy_new((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(objectPath));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_object_proxy_new((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(objectPath))");
		}
		this(cast(GDBusObjectProxy*) p);
	}
	
	/**
	 * Gets the connection that proxy is for.
	 * Since 2.30
	 * Returns: A GDBusConnection. Do not free, the object is owned by proxy. [transfer none]
	 */
	public DBusConnection getConnection()
	{
		// GDBusConnection * g_dbus_object_proxy_get_connection (GDBusObjectProxy *proxy);
		auto p = g_dbus_object_proxy_get_connection(gDBusObjectProxy);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) p);
	}
}
