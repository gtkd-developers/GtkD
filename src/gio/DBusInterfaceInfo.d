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
 * inFile  = 
 * outPack = gio
 * outFile = DBusInterfaceInfo
 * strct   = GDBusInterfaceInfo
 * realStrct=
 * ctorStrct=
 * clss    = DBusInterfaceInfo
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dbus_interface_info_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.StringG
 * 	- gio.DBusMethodInfo
 * 	- gio.DBusPropertyInfo
 * 	- gio.DBusSignalInfo
 * structWrap:
 * 	- GDBusInterfaceInfo* -> DBusInterfaceInfo
 * 	- GDBusMethodInfo* -> DBusMethodInfo
 * 	- GDBusPropertyInfo* -> DBusPropertyInfo
 * 	- GDBusSignalInfo* -> DBusSignalInfo
 * 	- GString* -> StringG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusInterfaceInfo;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.StringG;
private import gio.DBusMethodInfo;
private import gio.DBusPropertyInfo;
private import gio.DBusSignalInfo;




/**
 * Description
 * Various data structures and convenience routines to parse and
 * generate D-Bus introspection XML. Introspection information is
 * used when registering objects with g_dbus_connection_register_object().
 * The format of D-Bus introspection XML is specified in the
 * D-Bus specification.
 */
public class DBusInterfaceInfo
{
	
	/** the main Gtk struct */
	protected GDBusInterfaceInfo* gDBusInterfaceInfo;
	
	
	public GDBusInterfaceInfo* getDBusInterfaceInfoStruct()
	{
		return gDBusInterfaceInfo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDBusInterfaceInfo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusInterfaceInfo* gDBusInterfaceInfo)
	{
		this.gDBusInterfaceInfo = gDBusInterfaceInfo;
	}
	
	/**
	 */
	
	/**
	 * Looks up information about a method.
	 * This cost of this function is O(n) in number of methods unless
	 * g_dbus_interface_info_cache_build() has been used on info.
	 * Since 2.26
	 * Params:
	 * name = A D-Bus method name (typically in CamelCase)
	 * Returns: A GDBusMethodInfo or NULL if not found. Do not free, it is owned by info. [transfer none]
	 */
	public DBusMethodInfo lookupMethod(string name)
	{
		// GDBusMethodInfo * g_dbus_interface_info_lookup_method (GDBusInterfaceInfo *info,  const gchar *name);
		auto p = g_dbus_interface_info_lookup_method(gDBusInterfaceInfo, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusMethodInfo)(cast(GDBusMethodInfo*) p);
	}
	
	/**
	 * Looks up information about a signal.
	 * This cost of this function is O(n) in number of signals unless
	 * g_dbus_interface_info_cache_build() has been used on info.
	 * Since 2.26
	 * Params:
	 * name = A D-Bus signal name (typically in CamelCase)
	 * Returns: A GDBusSignalInfo or NULL if not found. Do not free, it is owned by info. [transfer none]
	 */
	public DBusSignalInfo lookupSignal(string name)
	{
		// GDBusSignalInfo * g_dbus_interface_info_lookup_signal (GDBusInterfaceInfo *info,  const gchar *name);
		auto p = g_dbus_interface_info_lookup_signal(gDBusInterfaceInfo, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusSignalInfo)(cast(GDBusSignalInfo*) p);
	}
	
	/**
	 * Looks up information about a property.
	 * This cost of this function is O(n) in number of properties unless
	 * g_dbus_interface_info_cache_build() has been used on info.
	 * Since 2.26
	 * Params:
	 * name = A D-Bus property name (typically in CamelCase).
	 * Returns: A GDBusPropertyInfo or NULL if not found. Do not free, it is owned by info. [transfer none]
	 */
	public DBusPropertyInfo lookupProperty(string name)
	{
		// GDBusPropertyInfo * g_dbus_interface_info_lookup_property  (GDBusInterfaceInfo *info,  const gchar *name);
		auto p = g_dbus_interface_info_lookup_property(gDBusInterfaceInfo, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusPropertyInfo)(cast(GDBusPropertyInfo*) p);
	}
	
	/**
	 * Builds a lookup-cache to speed up
	 * g_dbus_interface_info_lookup_method(),
	 * g_dbus_interface_info_lookup_signal() and
	 * g_dbus_interface_info_lookup_property().
	 * If this has already been called with info, the existing cache is
	 * used and its use count is increased.
	 * Note that info cannot be modified until
	 * g_dbus_interface_info_cache_release() is called.
	 * Since 2.30
	 */
	public void cacheBuild()
	{
		// void g_dbus_interface_info_cache_build (GDBusInterfaceInfo *info);
		g_dbus_interface_info_cache_build(gDBusInterfaceInfo);
	}
	
	/**
	 * Decrements the usage count for the cache for info built by
	 * g_dbus_interface_info_cache_build() (if any) and frees the
	 * resources used by the cache if the usage count drops to zero.
	 * Since 2.30
	 */
	public void cacheRelease()
	{
		// void g_dbus_interface_info_cache_release (GDBusInterfaceInfo *info);
		g_dbus_interface_info_cache_release(gDBusInterfaceInfo);
	}
	
	/**
	 * Appends an XML representation of info (and its children) to string_builder.
	 * This function is typically used for generating introspection XML
	 * documents at run-time for handling the
	 * org.freedesktop.DBus.Introspectable.Introspect
	 * method.
	 * Since 2.26
	 * Params:
	 * indent = Indentation level.
	 * stringBuilder = A GString to to append XML data to. [out]
	 */
	public void generateXml(uint indent, StringG stringBuilder)
	{
		// void g_dbus_interface_info_generate_xml (GDBusInterfaceInfo *info,  guint indent,  GString *string_builder);
		g_dbus_interface_info_generate_xml(gDBusInterfaceInfo, indent, (stringBuilder is null) ? null : stringBuilder.getStringGStruct());
	}
	
	/**
	 * If info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 * Since 2.26
	 * Returns: The same info.
	 */
	public DBusInterfaceInfo doref()
	{
		// GDBusInterfaceInfo * g_dbus_interface_info_ref (GDBusInterfaceInfo *info);
		auto p = g_dbus_interface_info_ref(gDBusInterfaceInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusInterfaceInfo)(cast(GDBusInterfaceInfo*) p);
	}
	
	/**
	 * If info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of info. When its reference count drops to 0,
	 * the memory used is freed.
	 * Since 2.26
	 */
	public void unref()
	{
		// void g_dbus_interface_info_unref (GDBusInterfaceInfo *info);
		g_dbus_interface_info_unref(gDBusInterfaceInfo);
	}
}
