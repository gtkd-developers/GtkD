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


module gio.DBusInterfaceInfo;

private import gio.DBusMethodInfo;
private import gio.DBusPropertyInfo;
private import gio.DBusSignalInfo;
private import glib.Str;
private import glib.StringG;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;
private import gtkd.Loader;
private import gtkd.paths;


/**
 * Information about a D-Bus interface.
 *
 * Since: 2.26
 */
public class DBusInterfaceInfo
{
	/** the main Gtk struct */
	protected GDBusInterfaceInfo* gDBusInterfaceInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GDBusInterfaceInfo* getDBusInterfaceInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusInterfaceInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDBusInterfaceInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusInterfaceInfo* gDBusInterfaceInfo, bool ownedRef = false)
	{
		this.gDBusInterfaceInfo = gDBusInterfaceInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if (  Linker.isLoaded(LIBRARY.GIO) && ownedRef )
			unref();
	}


	/** */
	public static GType getType()
	{
		return g_dbus_interface_info_get_type();
	}

	/**
	 * Builds a lookup-cache to speed up
	 * g_dbus_interface_info_lookup_method(),
	 * g_dbus_interface_info_lookup_signal() and
	 * g_dbus_interface_info_lookup_property().
	 *
	 * If this has already been called with @info, the existing cache is
	 * used and its use count is increased.
	 *
	 * Note that @info cannot be modified until
	 * g_dbus_interface_info_cache_release() is called.
	 *
	 * Since: 2.30
	 */
	public void cacheBuild()
	{
		g_dbus_interface_info_cache_build(gDBusInterfaceInfo);
	}

	/**
	 * Decrements the usage count for the cache for @info built by
	 * g_dbus_interface_info_cache_build() (if any) and frees the
	 * resources used by the cache if the usage count drops to zero.
	 *
	 * Since: 2.30
	 */
	public void cacheRelease()
	{
		g_dbus_interface_info_cache_release(gDBusInterfaceInfo);
	}

	/**
	 * Appends an XML representation of @info (and its children) to @string_builder.
	 *
	 * This function is typically used for generating introspection XML
	 * documents at run-time for handling the
	 * `org.freedesktop.DBus.Introspectable.Introspect`
	 * method.
	 *
	 * Params:
	 *     indent = Indentation level.
	 *     stringBuilder = A #GString to to append XML data to.
	 *
	 * Since: 2.26
	 */
	public void generateXml(uint indent, out StringG stringBuilder)
	{
		GString* outstringBuilder = gMalloc!GString();
		
		g_dbus_interface_info_generate_xml(gDBusInterfaceInfo, indent, outstringBuilder);
		
		stringBuilder = new StringG(outstringBuilder, true);
	}

	/**
	 * Looks up information about a method.
	 *
	 * The cost of this function is O(n) in number of methods unless
	 * g_dbus_interface_info_cache_build() has been used on @info.
	 *
	 * Params:
	 *     name = A D-Bus method name (typically in CamelCase)
	 *
	 * Returns: A #GDBusMethodInfo or %NULL if not found. Do not free, it is owned by @info.
	 *
	 * Since: 2.26
	 */
	public DBusMethodInfo lookupMethod(string name)
	{
		auto p = g_dbus_interface_info_lookup_method(gDBusInterfaceInfo, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusMethodInfo)(cast(GDBusMethodInfo*) p);
	}

	/**
	 * Looks up information about a property.
	 *
	 * The cost of this function is O(n) in number of properties unless
	 * g_dbus_interface_info_cache_build() has been used on @info.
	 *
	 * Params:
	 *     name = A D-Bus property name (typically in CamelCase).
	 *
	 * Returns: A #GDBusPropertyInfo or %NULL if not found. Do not free, it is owned by @info.
	 *
	 * Since: 2.26
	 */
	public DBusPropertyInfo lookupProperty(string name)
	{
		auto p = g_dbus_interface_info_lookup_property(gDBusInterfaceInfo, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusPropertyInfo)(cast(GDBusPropertyInfo*) p);
	}

	/**
	 * Looks up information about a signal.
	 *
	 * The cost of this function is O(n) in number of signals unless
	 * g_dbus_interface_info_cache_build() has been used on @info.
	 *
	 * Params:
	 *     name = A D-Bus signal name (typically in CamelCase)
	 *
	 * Returns: A #GDBusSignalInfo or %NULL if not found. Do not free, it is owned by @info.
	 *
	 * Since: 2.26
	 */
	public DBusSignalInfo lookupSignal(string name)
	{
		auto p = g_dbus_interface_info_lookup_signal(gDBusInterfaceInfo, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusSignalInfo)(cast(GDBusSignalInfo*) p);
	}

	/**
	 * If @info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 *
	 * Returns: The same @info.
	 *
	 * Since: 2.26
	 */
	public DBusInterfaceInfo doref()
	{
		auto p = g_dbus_interface_info_ref(gDBusInterfaceInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusInterfaceInfo)(cast(GDBusInterfaceInfo*) p, true);
	}

	/**
	 * If @info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of @info. When its reference count drops to 0,
	 * the memory used is freed.
	 *
	 * Since: 2.26
	 */
	public void unref()
	{
		g_dbus_interface_info_unref(gDBusInterfaceInfo);
	}
}
