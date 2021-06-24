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

private import gio.DBusAnnotationInfo;
private import gio.DBusMethodInfo;
private import gio.DBusPropertyInfo;
private import gio.DBusSignalInfo;
private import gio.c.functions;
public  import gio.c.types;
private import glib.MemorySlice;
private import glib.Str;
private import glib.StringG;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Information about a D-Bus interface.
 *
 * Since: 2.26
 */
public final class DBusInterfaceInfo
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
		if ( ownedRef )
			g_dbus_interface_info_unref(gDBusInterfaceInfo);
	}


	/**
	 * The reference count or -1 if statically allocated.
	 */
	public @property int refCount()
	{
		return gDBusInterfaceInfo.refCount;
	}

	/** Ditto */
	public @property void refCount(int value)
	{
		gDBusInterfaceInfo.refCount = value;
	}

	/**
	 * The name of the D-Bus interface, e.g. "org.freedesktop.DBus.Properties".
	 */
	public @property string name()
	{
		return Str.toString(gDBusInterfaceInfo.name);
	}

	/** Ditto */
	public @property void name(string value)
	{
		gDBusInterfaceInfo.name = Str.toStringz(value);
	}

	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusMethodInfo structures or %NULL if there are no methods.
	 */
	public @property DBusMethodInfo[] methods()
	{
		DBusMethodInfo[] arr = new DBusMethodInfo[getArrayLength(gDBusInterfaceInfo.methods)];
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(DBusMethodInfo)(gDBusInterfaceInfo.methods[i], false);
		}

		return arr;
	}

	/** Ditto */
	public @property void methods(DBusMethodInfo[] value)
	{
		GDBusMethodInfo*[] arr = new GDBusMethodInfo*[value.length+1];
		for ( int i = 0; i < value.length; i++ )
		{
			arr[i] = value[i].getDBusMethodInfoStruct();
		}
		arr[value.length] = null;

		gDBusInterfaceInfo.methods = arr.ptr;
	}

	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusSignalInfo structures or %NULL if there are no signals.
	 */
	public @property DBusSignalInfo[] signals()
	{
		DBusSignalInfo[] arr = new DBusSignalInfo[getArrayLength(gDBusInterfaceInfo.signals)];
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(DBusSignalInfo)(gDBusInterfaceInfo.signals[i], false);
		}

		return arr;
	}

	/** Ditto */
	public @property void signals(DBusSignalInfo[] value)
	{
		GDBusSignalInfo*[] arr = new GDBusSignalInfo*[value.length+1];
		for ( int i = 0; i < value.length; i++ )
		{
			arr[i] = value[i].getDBusSignalInfoStruct();
		}
		arr[value.length] = null;

		gDBusInterfaceInfo.signals = arr.ptr;
	}

	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusPropertyInfo structures or %NULL if there are no properties.
	 */
	public @property DBusPropertyInfo[] properties()
	{
		DBusPropertyInfo[] arr = new DBusPropertyInfo[getArrayLength(gDBusInterfaceInfo.properties)];
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(DBusPropertyInfo)(gDBusInterfaceInfo.properties[i], false);
		}

		return arr;
	}

	/** Ditto */
	public @property void properties(DBusPropertyInfo[] value)
	{
		GDBusPropertyInfo*[] arr = new GDBusPropertyInfo*[value.length+1];
		for ( int i = 0; i < value.length; i++ )
		{
			arr[i] = value[i].getDBusPropertyInfoStruct();
		}
		arr[value.length] = null;

		gDBusInterfaceInfo.properties = arr.ptr;
	}

	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	public @property DBusAnnotationInfo[] annotations()
	{
		DBusAnnotationInfo[] arr = new DBusAnnotationInfo[getArrayLength(gDBusInterfaceInfo.annotations)];
		for ( int i = 0; i < arr.length; i++ )
		{
			arr[i] = ObjectG.getDObject!(DBusAnnotationInfo)(gDBusInterfaceInfo.annotations[i], false);
		}

		return arr;
	}

	/** Ditto */
	public @property void annotations(DBusAnnotationInfo[] value)
	{
		GDBusAnnotationInfo*[] arr = new GDBusAnnotationInfo*[value.length+1];
		for ( int i = 0; i < value.length; i++ )
		{
			arr[i] = value[i].getDBusAnnotationInfoStruct();
		}
		arr[value.length] = null;

		gDBusInterfaceInfo.annotations = arr.ptr;
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
	public void generateXml(uint indent, StringG stringBuilder)
	{
		g_dbus_interface_info_generate_xml(gDBusInterfaceInfo, indent, (stringBuilder is null) ? null : stringBuilder.getStringGStruct());
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
		auto __p = g_dbus_interface_info_lookup_method(gDBusInterfaceInfo, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusMethodInfo)(cast(GDBusMethodInfo*) __p);
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
		auto __p = g_dbus_interface_info_lookup_property(gDBusInterfaceInfo, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusPropertyInfo)(cast(GDBusPropertyInfo*) __p);
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
		auto __p = g_dbus_interface_info_lookup_signal(gDBusInterfaceInfo, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusSignalInfo)(cast(GDBusSignalInfo*) __p);
	}

	alias doref = ref_;
	/**
	 * If @info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 *
	 * Returns: The same @info.
	 *
	 * Since: 2.26
	 */
	public DBusInterfaceInfo ref_()
	{
		auto __p = g_dbus_interface_info_ref(gDBusInterfaceInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusInterfaceInfo)(cast(GDBusInterfaceInfo*) __p, true);
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
