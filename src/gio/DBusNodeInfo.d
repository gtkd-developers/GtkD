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


module gio.DBusNodeInfo;

private import gio.DBusInterfaceInfo;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.StringG;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * Information about nodes in a remote object hierarchy.
 *
 * Since: 2.26
 */
public class DBusNodeInfo
{
	/** the main Gtk struct */
	protected GDBusNodeInfo* gDBusNodeInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GDBusNodeInfo* getDBusNodeInfoStruct()
	{
		return gDBusNodeInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDBusNodeInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusNodeInfo* gDBusNodeInfo, bool ownedRef = false)
	{
		this.gDBusNodeInfo = gDBusNodeInfo;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return g_dbus_node_info_get_type();
	}

	/**
	 * Parses @xml_data and returns a #GDBusNodeInfo representing the data.
	 *
	 * The introspection XML must contain exactly one top-level
	 * <node> element.
	 *
	 * Note that this routine is using a
	 * [GMarkup][glib-Simple-XML-Subset-Parser.description]-based
	 * parser that only accepts a subset of valid XML documents.
	 *
	 * Params:
	 *     xmlData = Valid D-Bus introspection XML.
	 *
	 * Return: A #GDBusNodeInfo structure or %NULL if @error is set. Free
	 *     with g_dbus_node_info_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string xmlData)
	{
		GError* err = null;
		
		auto p = g_dbus_node_info_new_for_xml(Str.toStringz(xmlData), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_for_xml");
		}
		
		this(cast(GDBusNodeInfo*) p);
	}

	/**
	 * Appends an XML representation of @info (and its children) to @string_builder.
	 *
	 * This function is typically used for generating introspection XML documents at run-time for
	 * handling the `org.freedesktop.DBus.Introspectable.Introspect`  method.
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
		
		g_dbus_node_info_generate_xml(gDBusNodeInfo, indent, outstringBuilder);
		
		stringBuilder = new StringG(outstringBuilder, true);
	}

	/**
	 * Looks up information about an interface.
	 *
	 * The cost of this function is O(n) in number of interfaces.
	 *
	 * Params:
	 *     name = A D-Bus interface name.
	 *
	 * Return: A #GDBusInterfaceInfo or %NULL if not found. Do not free, it is owned by @info.
	 *
	 * Since: 2.26
	 */
	public DBusInterfaceInfo lookupInterface(string name)
	{
		auto p = g_dbus_node_info_lookup_interface(gDBusNodeInfo, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusInterfaceInfo)(cast(GDBusInterfaceInfo*) p);
	}

	/**
	 * If @info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 *
	 * Return: The same @info.
	 *
	 * Since: 2.26
	 */
	public DBusNodeInfo doref()
	{
		auto p = g_dbus_node_info_ref(gDBusNodeInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusNodeInfo)(cast(GDBusNodeInfo*) p, true);
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
		g_dbus_node_info_unref(gDBusNodeInfo);
	}
}
