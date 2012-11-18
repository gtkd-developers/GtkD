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
 * inFile  = GDBusMenuModel.html
 * outPack = gio
 * outFile = DBusMenuModel
 * strct   = GDBusMenuModel
 * realStrct=
 * ctorStrct=
 * clss    = DBusMenuModel
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_menu_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.DBusConnection
 * structWrap:
 * 	- GDBusConnection* -> DBusConnection
 * 	- GDBusMenuModel* -> DBusMenuModel
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusMenuModel;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.DBusConnection;



private import gio.MenuModel;

/**
 * Description
 * GDBusMenuModel is an implementation of GMenuModel that can be used
 * as a proxy for a menu model that is exported over D-Bus with
 * g_dbus_connection_export_menu_model().
 */
public class DBusMenuModel : MenuModel
{
	
	/** the main Gtk struct */
	protected GDBusMenuModel* gDBusMenuModel;
	
	
	public GDBusMenuModel* getDBusMenuModelStruct()
	{
		return gDBusMenuModel;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusMenuModel;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusMenuModel* gDBusMenuModel)
	{
		super(cast(GMenuModel*)gDBusMenuModel);
		this.gDBusMenuModel = gDBusMenuModel;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusMenuModel = cast(GDBusMenuModel*)obj;
	}
	
	/**
	 * See_Also: get().
	 */
	this(DBusConnection connection, string busName, string objectPath)
	{
		auto p =  g_dbus_menu_model_get((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(busName), Str.toStringz(objectPath));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_menu_model_get");
		}
		
		this(cast(GDBusMenuModel*) p);
	}
	
	/**
	 */
	
	/**
	 * Obtains a GDBusMenuModel for the menu model which is exported
	 * at the given bus_name and object_path.
	 * The thread default main context is taken at the time of this call.
	 * All signals on the menu model (and any linked models) are reported
	 * with respect to this context. All calls on the returned menu model
	 * (and linked models) must also originate from this same context, with
	 * the thread default main context unchanged.
	 * Since 2.32
	 * Params:
	 * connection = a GDBusConnection
	 * busName = the bus name which exports the menu model
	 * objectPath = the object path at which the menu model is exported
	 * Returns: a GDBusMenuModel object. Free with g_object_unref(). [transfer full]
	 */
	public static DBusMenuModel gDbusMenuModelGet(DBusConnection connection, string busName, string objectPath)
	{
		// GDBusMenuModel * g_dbus_menu_model_get (GDBusConnection *connection,  const gchar *bus_name,  const gchar *object_path);
		auto p = g_dbus_menu_model_get((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(busName), Str.toStringz(objectPath));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusMenuModel)(cast(GDBusMenuModel*) p);
	}
}
