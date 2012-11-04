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
 * inFile  = gio-Owning-Bus-Names.html
 * outPack = gio
 * outFile = DBusNames
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = DBusNames
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_bus_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.Closure
 * 	- gio.DBusConnection
 * structWrap:
 * 	- GClosure* -> Closure
 * 	- GDBusConnection* -> DBusConnection
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusNames;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.Closure;
private import gio.DBusConnection;




/**
 * Description
 * Convenience API for owning bus names.
 * $(DDOC_COMMENT example)
 */
public class DBusNames
{
	
	/**
	 * Description
	 * Convenience API for watching bus names.
	 * $(DDOC_COMMENT example)
	 */
	
	/**
	 * Starts acquiring name on the bus specified by bus_type and calls
	 * name_acquired_handler and name_lost_handler when the name is
	 * acquired respectively lost. Callbacks will be invoked in the thread-default main
	 * loop of the thread you are calling this function from.
	 * You are guaranteed that one of the name_acquired_handler and name_lost_handler
	 * callbacks will be invoked after calling this function - there are three
	 * Since 2.26
	 * Params:
	 * busType = The type of bus to own a name on.
	 * name = The well-known name to own.
	 * flags = A set of flags from the GBusNameOwnerFlags enumeration.
	 * busAcquiredHandler = Handler to invoke when connected to the bus of type bus_type or NULL. [allow-none]
	 * nameAcquiredHandler = Handler to invoke when name is acquired or NULL. [allow-none]
	 * nameLostHandler = Handler to invoke when name is lost or NULL. [allow-none]
	 * userData = User data to pass to handlers.
	 * userDataFreeFunc = Function for freeing user_data or NULL. [allow-none]
	 * Returns: An identifier (never 0) that an be used with g_bus_unown_name() to stop owning the name.
	 */
	public static uint ownName(GBusType busType, string name, GBusNameOwnerFlags flags, GBusAcquiredCallback busAcquiredHandler, GBusNameAcquiredCallback nameAcquiredHandler, GBusNameLostCallback nameLostHandler, void* userData, GDestroyNotify userDataFreeFunc)
	{
		// guint g_bus_own_name (GBusType bus_type,  const gchar *name,  GBusNameOwnerFlags flags,  GBusAcquiredCallback bus_acquired_handler,  GBusNameAcquiredCallback name_acquired_handler,  GBusNameLostCallback name_lost_handler,  gpointer user_data,  GDestroyNotify user_data_free_func);
		return g_bus_own_name(busType, Str.toStringz(name), flags, busAcquiredHandler, nameAcquiredHandler, nameLostHandler, userData, userDataFreeFunc);
	}
	
	/**
	 * Like g_bus_own_name() but takes a GDBusConnection instead of a
	 * GBusType.
	 * Since 2.26
	 * Params:
	 * connection = A GDBusConnection.
	 * name = The well-known name to own.
	 * flags = A set of flags from the GBusNameOwnerFlags enumeration.
	 * nameAcquiredHandler = Handler to invoke when name is acquired or NULL. [allow-none]
	 * nameLostHandler = Handler to invoke when name is lost or NULL. [allow-none]
	 * userData = User data to pass to handlers.
	 * userDataFreeFunc = Function for freeing user_data or NULL. [allow-none]
	 * Returns: An identifier (never 0) that an be used with g_bus_unown_name() to stop owning the name.
	 */
	public static uint ownNameOnConnection(DBusConnection connection, string name, GBusNameOwnerFlags flags, GBusNameAcquiredCallback nameAcquiredHandler, GBusNameLostCallback nameLostHandler, void* userData, GDestroyNotify userDataFreeFunc)
	{
		// guint g_bus_own_name_on_connection (GDBusConnection *connection,  const gchar *name,  GBusNameOwnerFlags flags,  GBusNameAcquiredCallback name_acquired_handler,  GBusNameLostCallback name_lost_handler,  gpointer user_data,  GDestroyNotify user_data_free_func);
		return g_bus_own_name_on_connection((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(name), flags, nameAcquiredHandler, nameLostHandler, userData, userDataFreeFunc);
	}
	
	/**
	 * Stops owning a name.
	 * Since 2.26
	 * Params:
	 * ownerId = An identifier obtained from g_bus_own_name()
	 */
	public static void unownName(uint ownerId)
	{
		// void g_bus_unown_name (guint owner_id);
		g_bus_unown_name(ownerId);
	}
	
	/**
	 * Version of g_bus_own_name() using closures instead of callbacks for
	 * easier binding in other languages.
	 * Since 2.26
	 * Params:
	 * busType = The type of bus to own a name on.
	 * name = The well-known name to own.
	 * flags = A set of flags from the GBusNameOwnerFlags enumeration.
	 * busAcquiredClosure = GClosure to invoke when connected to
	 * the bus of type bus_type or NULL. [allow-none]
	 * nameAcquiredClosure = GClosure to invoke when name is
	 * acquired or NULL. [allow-none]
	 * nameLostClosure = GClosure to invoke when name is lost or
	 * NULL. [allow-none]
	 * Returns: An identifier (never 0) that an be used with g_bus_unown_name() to stop owning the name. Rename to: g_bus_own_name
	 */
	public static uint ownNameWithClosures(GBusType busType, string name, GBusNameOwnerFlags flags, Closure busAcquiredClosure, Closure nameAcquiredClosure, Closure nameLostClosure)
	{
		// guint g_bus_own_name_with_closures (GBusType bus_type,  const gchar *name,  GBusNameOwnerFlags flags,  GClosure *bus_acquired_closure,  GClosure *name_acquired_closure,  GClosure *name_lost_closure);
		return g_bus_own_name_with_closures(busType, Str.toStringz(name), flags, (busAcquiredClosure is null) ? null : busAcquiredClosure.getClosureStruct(), (nameAcquiredClosure is null) ? null : nameAcquiredClosure.getClosureStruct(), (nameLostClosure is null) ? null : nameLostClosure.getClosureStruct());
	}
	
	/**
	 * Version of g_bus_own_name_on_connection() using closures instead of callbacks for
	 * easier binding in other languages.
	 * Since 2.26
	 * Params:
	 * connection = A GDBusConnection.
	 * name = The well-known name to own.
	 * flags = A set of flags from the GBusNameOwnerFlags enumeration.
	 * nameAcquiredClosure = GClosure to invoke when name is
	 * acquired or NULL. [allow-none]
	 * nameLostClosure = GClosure to invoke when name is lost or
	 * NULL. [allow-none]
	 * Returns: An identifier (never 0) that an be used with g_bus_unown_name() to stop owning the name. Rename to: g_bus_own_name_on_connection
	 */
	public static uint ownNameOnConnectionWithClosures(DBusConnection connection, string name, GBusNameOwnerFlags flags, Closure nameAcquiredClosure, Closure nameLostClosure)
	{
		// guint g_bus_own_name_on_connection_with_closures  (GDBusConnection *connection,  const gchar *name,  GBusNameOwnerFlags flags,  GClosure *name_acquired_closure,  GClosure *name_lost_closure);
		return g_bus_own_name_on_connection_with_closures((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(name), flags, (nameAcquiredClosure is null) ? null : nameAcquiredClosure.getClosureStruct(), (nameLostClosure is null) ? null : nameLostClosure.getClosureStruct());
	}
	
	/**
	 * Starts watching name on the bus specified by bus_type and calls
	 * name_appeared_handler and name_vanished_handler when the name is
	 * known to have a owner respectively known to lose its
	 * owner. Callbacks will be invoked in the thread-default main
	 * loop of the thread you are calling this function from.
	 * You are guaranteed that one of the handlers will be invoked after
	 * calling this function. When you are done watching the name, just
	 * call g_bus_unwatch_name() with the watcher id this function
	 * returns.
	 * If the name vanishes or appears (for example the application owning
	 * the name could restart), the handlers are also invoked. If the
	 * GDBusConnection that is used for watching the name disconnects, then
	 * name_vanished_handler is invoked since it is no longer
	 * possible to access the name.
	 * Another guarantee is that invocations of name_appeared_handler
	 * and name_vanished_handler are guaranteed to alternate; that
	 * is, if name_appeared_handler is invoked then you are
	 * guaranteed that the next time one of the handlers is invoked, it
	 * will be name_vanished_handler. The reverse is also true.
	 * This behavior makes it very simple to write applications that wants
	 * to take action when a certain name exists, see Example 9, “Simple application watching a name”. Basically, the application
	 * should create object proxies in name_appeared_handler and destroy
	 * them again (if any) in name_vanished_handler.
	 * Since 2.26
	 * Params:
	 * busType = The type of bus to watch a name on.
	 * name = The name (well-known or unique) to watch.
	 * flags = Flags from the GBusNameWatcherFlags enumeration.
	 * nameAppearedHandler = Handler to invoke when name is known to exist or NULL. [allow-none]
	 * nameVanishedHandler = Handler to invoke when name is known to not exist or NULL. [allow-none]
	 * userData = User data to pass to handlers.
	 * userDataFreeFunc = Function for freeing user_data or NULL. [allow-none]
	 * Returns: An identifier (never 0) that an be used with g_bus_unwatch_name() to stop watching the name.
	 */
	public static uint watchName(GBusType busType, string name, GBusNameWatcherFlags flags, GBusNameAppearedCallback nameAppearedHandler, GBusNameVanishedCallback nameVanishedHandler, void* userData, GDestroyNotify userDataFreeFunc)
	{
		// guint g_bus_watch_name (GBusType bus_type,  const gchar *name,  GBusNameWatcherFlags flags,  GBusNameAppearedCallback name_appeared_handler,  GBusNameVanishedCallback name_vanished_handler,  gpointer user_data,  GDestroyNotify user_data_free_func);
		return g_bus_watch_name(busType, Str.toStringz(name), flags, nameAppearedHandler, nameVanishedHandler, userData, userDataFreeFunc);
	}
	
	/**
	 * Like g_bus_watch_name() but takes a GDBusConnection instead of a
	 * GBusType.
	 * Since 2.26
	 * Params:
	 * connection = A GDBusConnection.
	 * name = The name (well-known or unique) to watch.
	 * flags = Flags from the GBusNameWatcherFlags enumeration.
	 * nameAppearedHandler = Handler to invoke when name is known to exist or NULL. [allow-none]
	 * nameVanishedHandler = Handler to invoke when name is known to not exist or NULL. [allow-none]
	 * userData = User data to pass to handlers.
	 * userDataFreeFunc = Function for freeing user_data or NULL. [allow-none]
	 * Returns: An identifier (never 0) that an be used with g_bus_unwatch_name() to stop watching the name.
	 */
	public static uint watchNameOnConnection(DBusConnection connection, string name, GBusNameWatcherFlags flags, GBusNameAppearedCallback nameAppearedHandler, GBusNameVanishedCallback nameVanishedHandler, void* userData, GDestroyNotify userDataFreeFunc)
	{
		// guint g_bus_watch_name_on_connection (GDBusConnection *connection,  const gchar *name,  GBusNameWatcherFlags flags,  GBusNameAppearedCallback name_appeared_handler,  GBusNameVanishedCallback name_vanished_handler,  gpointer user_data,  GDestroyNotify user_data_free_func);
		return g_bus_watch_name_on_connection((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(name), flags, nameAppearedHandler, nameVanishedHandler, userData, userDataFreeFunc);
	}
	
	/**
	 * Stops watching a name.
	 * Since 2.26
	 * Params:
	 * watcherId = An identifier obtained from g_bus_watch_name()
	 */
	public static void unwatchName(uint watcherId)
	{
		// void g_bus_unwatch_name (guint watcher_id);
		g_bus_unwatch_name(watcherId);
	}
	
	/**
	 * Version of g_bus_watch_name() using closures instead of callbacks for
	 * easier binding in other languages.
	 * Since 2.26
	 * Params:
	 * busType = The type of bus to watch a name on.
	 * name = The name (well-known or unique) to watch.
	 * flags = Flags from the GBusNameWatcherFlags enumeration.
	 * nameAppearedClosure = GClosure to invoke when name is known
	 * to exist or NULL. [allow-none]
	 * nameVanishedClosure = GClosure to invoke when name is known
	 * to not exist or NULL. [allow-none]
	 * Returns: An identifier (never 0) that an be used with g_bus_unwatch_name() to stop watching the name. Rename to: g_bus_watch_name
	 */
	public static uint watchNameWithClosures(GBusType busType, string name, GBusNameWatcherFlags flags, Closure nameAppearedClosure, Closure nameVanishedClosure)
	{
		// guint g_bus_watch_name_with_closures (GBusType bus_type,  const gchar *name,  GBusNameWatcherFlags flags,  GClosure *name_appeared_closure,  GClosure *name_vanished_closure);
		return g_bus_watch_name_with_closures(busType, Str.toStringz(name), flags, (nameAppearedClosure is null) ? null : nameAppearedClosure.getClosureStruct(), (nameVanishedClosure is null) ? null : nameVanishedClosure.getClosureStruct());
	}
	
	/**
	 * Version of g_bus_watch_name_on_connection() using closures instead of callbacks for
	 * easier binding in other languages.
	 * Since 2.26
	 * Params:
	 * connection = A GDBusConnection.
	 * name = The name (well-known or unique) to watch.
	 * flags = Flags from the GBusNameWatcherFlags enumeration.
	 * nameAppearedClosure = GClosure to invoke when name is known
	 * to exist or NULL. [allow-none]
	 * nameVanishedClosure = GClosure to invoke when name is known
	 * to not exist or NULL. [allow-none]
	 * Returns: An identifier (never 0) that an be used with g_bus_unwatch_name() to stop watching the name. Rename to: g_bus_watch_name_on_connection
	 */
	public static uint watchNameOnConnectionWithClosures(DBusConnection connection, string name, GBusNameWatcherFlags flags, Closure nameAppearedClosure, Closure nameVanishedClosure)
	{
		// guint g_bus_watch_name_on_connection_with_closures  (GDBusConnection *connection,  const gchar *name,  GBusNameWatcherFlags flags,  GClosure *name_appeared_closure,  GClosure *name_vanished_closure);
		return g_bus_watch_name_on_connection_with_closures((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(name), flags, (nameAppearedClosure is null) ? null : nameAppearedClosure.getClosureStruct(), (nameVanishedClosure is null) ? null : nameVanishedClosure.getClosureStruct());
	}
}
