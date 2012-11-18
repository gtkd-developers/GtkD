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
 * outFile = DBusNodeInfo
 * strct   = GDBusNodeInfo
 * realStrct=
 * ctorStrct=
 * clss    = DBusNodeInfo
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dbus_node_info_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.StringG
 * 	- gio.DBusInterfaceInfo
 * structWrap:
 * 	- GDBusInterfaceInfo* -> DBusInterfaceInfo
 * 	- GDBusNodeInfo* -> DBusNodeInfo
 * 	- GString* -> StringG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusNodeInfo;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.StringG;
private import gio.DBusInterfaceInfo;




/**
 * Description
 * Various data structures and convenience routines to parse and
 * generate D-Bus introspection XML. Introspection information is
 * used when registering objects with g_dbus_connection_register_object().
 * The format of D-Bus introspection XML is specified in the
 * D-Bus specification.
 */
public class DBusNodeInfo
{
	
	/** the main Gtk struct */
	protected GDBusNodeInfo* gDBusNodeInfo;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusNodeInfo* gDBusNodeInfo)
	{
		this.gDBusNodeInfo = gDBusNodeInfo;
	}
	
	/**
	 */
	
	/**
	 * Parses xml_data and returns a GDBusNodeInfo representing the data.
	 * The introspection XML must contain exactly one top-level
	 * <node> element.
	 * Note that this routine is using a
	 * GMarkup-based
	 * parser that only accepts a subset of valid XML documents.
	 * Since 2.26
	 * Params:
	 * xmlData = Valid D-Bus introspection XML.
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string xmlData)
	{
		// GDBusNodeInfo * g_dbus_node_info_new_for_xml (const gchar *xml_data,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_node_info_new_for_xml(Str.toStringz(xmlData), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_node_info_new_for_xml(Str.toStringz(xmlData), &err)");
		}
		this(cast(GDBusNodeInfo*) p);
	}
	
	/**
	 * Looks up information about an interface.
	 * This cost of this function is O(n) in number of interfaces.
	 * Since 2.26
	 * Params:
	 * name = A D-Bus interface name.
	 * Returns: A GDBusInterfaceInfo or NULL if not found. Do not free, it is owned by info. [transfer none]
	 */
	public DBusInterfaceInfo lookupInterface(string name)
	{
		// GDBusInterfaceInfo * g_dbus_node_info_lookup_interface (GDBusNodeInfo *info,  const gchar *name);
		auto p = g_dbus_node_info_lookup_interface(gDBusNodeInfo, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusInterfaceInfo)(cast(GDBusInterfaceInfo*) p);
	}
	
	/**
	 * Appends an XML representation of info (and its children) to string_builder.
	 * This function is typically used for generating introspection XML documents at run-time for
	 * handling the org.freedesktop.DBus.Introspectable.Introspect method.
	 * Since 2.26
	 * Params:
	 * indent = Indentation level.
	 * stringBuilder = A GString to to append XML data to. [out]
	 */
	public void generateXml(uint indent, StringG stringBuilder)
	{
		// void g_dbus_node_info_generate_xml (GDBusNodeInfo *info,  guint indent,  GString *string_builder);
		g_dbus_node_info_generate_xml(gDBusNodeInfo, indent, (stringBuilder is null) ? null : stringBuilder.getStringGStruct());
	}
	
	/**
	 * If info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 * Since 2.26
	 * Returns: The same info.
	 */
	public DBusNodeInfo doref()
	{
		// GDBusNodeInfo * g_dbus_node_info_ref (GDBusNodeInfo *info);
		auto p = g_dbus_node_info_ref(gDBusNodeInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusNodeInfo)(cast(GDBusNodeInfo*) p);
	}
	
	/**
	 * If info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of info. When its reference count drops to 0,
	 * the memory used is freed.
	 * Since 2.26
	 */
	public void unref()
	{
		// void g_dbus_node_info_unref (GDBusNodeInfo *info);
		g_dbus_node_info_unref(gDBusNodeInfo);
	}
}
