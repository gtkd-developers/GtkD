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


module gio.DBusNames;

private import gio.DBusConnection;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import gobject.Closure;


/** */
public struct DBusNames
{

	/**
	 * Starts acquiring @name on the bus specified by @bus_type and calls
	 * @name_acquired_handler and @name_lost_handler when the name is
	 * acquired respectively lost. Callbacks will be invoked in the
	 * [thread-default main context][g-main-context-push-thread-default]
	 * of the thread you are calling this function from.
	 *
	 * You are guaranteed that one of the @name_acquired_handler and @name_lost_handler
	 * callbacks will be invoked after calling this function - there are three
	 * possible cases:
	 *
	 * - @name_lost_handler with a %NULL connection (if a connection to the bus
	 * can't be made).
	 *
	 * - @bus_acquired_handler then @name_lost_handler (if the name can't be
	 * obtained)
	 *
	 * - @bus_acquired_handler then @name_acquired_handler (if the name was
	 * obtained).
	 *
	 * When you are done owning the name, just call g_bus_unown_name()
	 * with the owner id this function returns.
	 *
	 * If the name is acquired or lost (for example another application
	 * could acquire the name if you allow replacement or the application
	 * currently owning the name exits), the handlers are also invoked.
	 * If the #GDBusConnection that is used for attempting to own the name
	 * closes, then @name_lost_handler is invoked since it is no longer
	 * possible for other processes to access the process.
	 *
	 * You cannot use g_bus_own_name() several times for the same name (unless
	 * interleaved with calls to g_bus_unown_name()) - only the first call
	 * will work.
	 *
	 * Another guarantee is that invocations of @name_acquired_handler
	 * and @name_lost_handler are guaranteed to alternate; that
	 * is, if @name_acquired_handler is invoked then you are
	 * guaranteed that the next time one of the handlers is invoked, it
	 * will be @name_lost_handler. The reverse is also true.
	 *
	 * If you plan on exporting objects (using e.g.
	 * g_dbus_connection_register_object()), note that it is generally too late
	 * to export the objects in @name_acquired_handler. Instead, you can do this
	 * in @bus_acquired_handler since you are guaranteed that this will run
	 * before @name is requested from the bus.
	 *
	 * This behavior makes it very simple to write applications that wants
	 * to [own names][gdbus-owning-names] and export objects.
	 * Simply register objects to be exported in @bus_acquired_handler and
	 * unregister the objects (if any) in @name_lost_handler.
	 *
	 * Params:
	 *     busType = the type of bus to own a name on
	 *     name = the well-known name to own
	 *     flags = a set of flags from the #GBusNameOwnerFlags enumeration
	 *     busAcquiredHandler = handler to invoke when connected to the bus of type @bus_type or %NULL
	 *     nameAcquiredHandler = handler to invoke when @name is acquired or %NULL
	 *     nameLostHandler = handler to invoke when @name is lost or %NULL
	 *     userData = user data to pass to handlers
	 *     userDataFreeFunc = function for freeing @user_data or %NULL
	 *
	 * Returns: an identifier (never 0) that can be used with
	 *     g_bus_unown_name() to stop owning the name.
	 *
	 * Since: 2.26
	 */
	public static uint ownName(GBusType busType, string name, GBusNameOwnerFlags flags, GBusAcquiredCallback busAcquiredHandler, GBusNameAcquiredCallback nameAcquiredHandler, GBusNameLostCallback nameLostHandler, void* userData, GDestroyNotify userDataFreeFunc)
	{
		return g_bus_own_name(busType, Str.toStringz(name), flags, busAcquiredHandler, nameAcquiredHandler, nameLostHandler, userData, userDataFreeFunc);
	}

	/**
	 * Like g_bus_own_name() but takes a #GDBusConnection instead of a
	 * #GBusType.
	 *
	 * Params:
	 *     connection = a #GDBusConnection
	 *     name = the well-known name to own
	 *     flags = a set of flags from the #GBusNameOwnerFlags enumeration
	 *     nameAcquiredHandler = handler to invoke when @name is acquired or %NULL
	 *     nameLostHandler = handler to invoke when @name is lost or %NULL
	 *     userData = user data to pass to handlers
	 *     userDataFreeFunc = function for freeing @user_data or %NULL
	 *
	 * Returns: an identifier (never 0) that can be used with
	 *     g_bus_unown_name() to stop owning the name
	 *
	 * Since: 2.26
	 */
	public static uint ownNameOnConnection(DBusConnection connection, string name, GBusNameOwnerFlags flags, GBusNameAcquiredCallback nameAcquiredHandler, GBusNameLostCallback nameLostHandler, void* userData, GDestroyNotify userDataFreeFunc)
	{
		return g_bus_own_name_on_connection((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(name), flags, nameAcquiredHandler, nameLostHandler, userData, userDataFreeFunc);
	}

	/**
	 * Version of g_bus_own_name_on_connection() using closures instead of
	 * callbacks for easier binding in other languages.
	 *
	 * Params:
	 *     connection = a #GDBusConnection
	 *     name = the well-known name to own
	 *     flags = a set of flags from the #GBusNameOwnerFlags enumeration
	 *     nameAcquiredClosure = #GClosure to invoke when @name is
	 *         acquired or %NULL
	 *     nameLostClosure = #GClosure to invoke when @name is lost
	 *         or %NULL
	 *
	 * Returns: an identifier (never 0) that can be used with
	 *     g_bus_unown_name() to stop owning the name.
	 *
	 * Since: 2.26
	 */
	public static uint ownNameOnConnectionWithClosures(DBusConnection connection, string name, GBusNameOwnerFlags flags, Closure nameAcquiredClosure, Closure nameLostClosure)
	{
		return g_bus_own_name_on_connection_with_closures((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(name), flags, (nameAcquiredClosure is null) ? null : nameAcquiredClosure.getClosureStruct(), (nameLostClosure is null) ? null : nameLostClosure.getClosureStruct());
	}

	/**
	 * Version of g_bus_own_name() using closures instead of callbacks for
	 * easier binding in other languages.
	 *
	 * Params:
	 *     busType = the type of bus to own a name on
	 *     name = the well-known name to own
	 *     flags = a set of flags from the #GBusNameOwnerFlags enumeration
	 *     busAcquiredClosure = #GClosure to invoke when connected to
	 *         the bus of type @bus_type or %NULL
	 *     nameAcquiredClosure = #GClosure to invoke when @name is
	 *         acquired or %NULL
	 *     nameLostClosure = #GClosure to invoke when @name is lost or
	 *         %NULL
	 *
	 * Returns: an identifier (never 0) that can be used with
	 *     g_bus_unown_name() to stop owning the name.
	 *
	 * Since: 2.26
	 */
	public static uint ownNameWithClosures(GBusType busType, string name, GBusNameOwnerFlags flags, Closure busAcquiredClosure, Closure nameAcquiredClosure, Closure nameLostClosure)
	{
		return g_bus_own_name_with_closures(busType, Str.toStringz(name), flags, (busAcquiredClosure is null) ? null : busAcquiredClosure.getClosureStruct(), (nameAcquiredClosure is null) ? null : nameAcquiredClosure.getClosureStruct(), (nameLostClosure is null) ? null : nameLostClosure.getClosureStruct());
	}

	/**
	 * Stops owning a name.
	 *
	 * Note that there may still be D-Bus traffic to process (relating to owning
	 * and unowning the name) in the current thread-default #GMainContext after
	 * this function has returned. You should continue to iterate the #GMainContext
	 * until the #GDestroyNotify function passed to g_bus_own_name() is called, in
	 * order to avoid memory leaks through callbacks queued on the #GMainContext
	 * after it’s stopped being iterated.
	 *
	 * Params:
	 *     ownerId = an identifier obtained from g_bus_own_name()
	 *
	 * Since: 2.26
	 */
	public static void unownName(uint ownerId)
	{
		g_bus_unown_name(ownerId);
	}

	/**
	 * Stops watching a name.
	 *
	 * Note that there may still be D-Bus traffic to process (relating to watching
	 * and unwatching the name) in the current thread-default #GMainContext after
	 * this function has returned. You should continue to iterate the #GMainContext
	 * until the #GDestroyNotify function passed to g_bus_watch_name() is called, in
	 * order to avoid memory leaks through callbacks queued on the #GMainContext
	 * after it’s stopped being iterated.
	 *
	 * Params:
	 *     watcherId = An identifier obtained from g_bus_watch_name()
	 *
	 * Since: 2.26
	 */
	public static void unwatchName(uint watcherId)
	{
		g_bus_unwatch_name(watcherId);
	}

	/**
	 * Starts watching @name on the bus specified by @bus_type and calls
	 * @name_appeared_handler and @name_vanished_handler when the name is
	 * known to have an owner respectively known to lose its
	 * owner. Callbacks will be invoked in the
	 * [thread-default main context][g-main-context-push-thread-default]
	 * of the thread you are calling this function from.
	 *
	 * You are guaranteed that one of the handlers will be invoked after
	 * calling this function. When you are done watching the name, just
	 * call g_bus_unwatch_name() with the watcher id this function
	 * returns.
	 *
	 * If the name vanishes or appears (for example the application owning
	 * the name could restart), the handlers are also invoked. If the
	 * #GDBusConnection that is used for watching the name disconnects, then
	 * @name_vanished_handler is invoked since it is no longer
	 * possible to access the name.
	 *
	 * Another guarantee is that invocations of @name_appeared_handler
	 * and @name_vanished_handler are guaranteed to alternate; that
	 * is, if @name_appeared_handler is invoked then you are
	 * guaranteed that the next time one of the handlers is invoked, it
	 * will be @name_vanished_handler. The reverse is also true.
	 *
	 * This behavior makes it very simple to write applications that want
	 * to take action when a certain [name exists][gdbus-watching-names].
	 * Basically, the application should create object proxies in
	 * @name_appeared_handler and destroy them again (if any) in
	 * @name_vanished_handler.
	 *
	 * Params:
	 *     busType = The type of bus to watch a name on.
	 *     name = The name (well-known or unique) to watch.
	 *     flags = Flags from the #GBusNameWatcherFlags enumeration.
	 *     nameAppearedHandler = Handler to invoke when @name is known to exist or %NULL.
	 *     nameVanishedHandler = Handler to invoke when @name is known to not exist or %NULL.
	 *     userData = User data to pass to handlers.
	 *     userDataFreeFunc = Function for freeing @user_data or %NULL.
	 *
	 * Returns: An identifier (never 0) that can be used with
	 *     g_bus_unwatch_name() to stop watching the name.
	 *
	 * Since: 2.26
	 */
	public static uint watchName(GBusType busType, string name, GBusNameWatcherFlags flags, GBusNameAppearedCallback nameAppearedHandler, GBusNameVanishedCallback nameVanishedHandler, void* userData, GDestroyNotify userDataFreeFunc)
	{
		return g_bus_watch_name(busType, Str.toStringz(name), flags, nameAppearedHandler, nameVanishedHandler, userData, userDataFreeFunc);
	}

	/**
	 * Like g_bus_watch_name() but takes a #GDBusConnection instead of a
	 * #GBusType.
	 *
	 * Params:
	 *     connection = A #GDBusConnection.
	 *     name = The name (well-known or unique) to watch.
	 *     flags = Flags from the #GBusNameWatcherFlags enumeration.
	 *     nameAppearedHandler = Handler to invoke when @name is known to exist or %NULL.
	 *     nameVanishedHandler = Handler to invoke when @name is known to not exist or %NULL.
	 *     userData = User data to pass to handlers.
	 *     userDataFreeFunc = Function for freeing @user_data or %NULL.
	 *
	 * Returns: An identifier (never 0) that can be used with
	 *     g_bus_unwatch_name() to stop watching the name.
	 *
	 * Since: 2.26
	 */
	public static uint watchNameOnConnection(DBusConnection connection, string name, GBusNameWatcherFlags flags, GBusNameAppearedCallback nameAppearedHandler, GBusNameVanishedCallback nameVanishedHandler, void* userData, GDestroyNotify userDataFreeFunc)
	{
		return g_bus_watch_name_on_connection((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(name), flags, nameAppearedHandler, nameVanishedHandler, userData, userDataFreeFunc);
	}

	/**
	 * Version of g_bus_watch_name_on_connection() using closures instead of callbacks for
	 * easier binding in other languages.
	 *
	 * Params:
	 *     connection = A #GDBusConnection.
	 *     name = The name (well-known or unique) to watch.
	 *     flags = Flags from the #GBusNameWatcherFlags enumeration.
	 *     nameAppearedClosure = #GClosure to invoke when @name is known
	 *         to exist or %NULL.
	 *     nameVanishedClosure = #GClosure to invoke when @name is known
	 *         to not exist or %NULL.
	 *
	 * Returns: An identifier (never 0) that can be used with
	 *     g_bus_unwatch_name() to stop watching the name.
	 *
	 * Since: 2.26
	 */
	public static uint watchNameOnConnectionWithClosures(DBusConnection connection, string name, GBusNameWatcherFlags flags, Closure nameAppearedClosure, Closure nameVanishedClosure)
	{
		return g_bus_watch_name_on_connection_with_closures((connection is null) ? null : connection.getDBusConnectionStruct(), Str.toStringz(name), flags, (nameAppearedClosure is null) ? null : nameAppearedClosure.getClosureStruct(), (nameVanishedClosure is null) ? null : nameVanishedClosure.getClosureStruct());
	}

	/**
	 * Version of g_bus_watch_name() using closures instead of callbacks for
	 * easier binding in other languages.
	 *
	 * Params:
	 *     busType = The type of bus to watch a name on.
	 *     name = The name (well-known or unique) to watch.
	 *     flags = Flags from the #GBusNameWatcherFlags enumeration.
	 *     nameAppearedClosure = #GClosure to invoke when @name is known
	 *         to exist or %NULL.
	 *     nameVanishedClosure = #GClosure to invoke when @name is known
	 *         to not exist or %NULL.
	 *
	 * Returns: An identifier (never 0) that can be used with
	 *     g_bus_unwatch_name() to stop watching the name.
	 *
	 * Since: 2.26
	 */
	public static uint watchNameWithClosures(GBusType busType, string name, GBusNameWatcherFlags flags, Closure nameAppearedClosure, Closure nameVanishedClosure)
	{
		return g_bus_watch_name_with_closures(busType, Str.toStringz(name), flags, (nameAppearedClosure is null) ? null : nameAppearedClosure.getClosureStruct(), (nameVanishedClosure is null) ? null : nameVanishedClosure.getClosureStruct());
	}
}
