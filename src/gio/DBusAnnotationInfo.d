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
 * inFile  = gio-D-Bus-Introspection-Data.html
 * outPack = gio
 * outFile = DBusAnnotationInfo
 * strct   = GDBusAnnotationInfo
 * realStrct=
 * ctorStrct=
 * clss    = DBusAnnotationInfo
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dbus_annotation_info_
 * omit structs:
 * omit prefixes:
 * 	- g_dbus_interface_info_
 * 	- g_dbus_node_info_
 * 	- g_dbus_method_info_
 * 	- g_dbus_signal_info_
 * 	- g_dbus_property_info_
 * 	- g_dbus_arg_info_
 * omit code:
 * 	- g_dbus_annotation_info_lookup
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GDBusAnnotationInfo* -> DBusAnnotationInfo
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusAnnotationInfo;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gobject.Boxed;

/**
 * Description
 * Various data structures and convenience routines to parse and
 * generate D-Bus introspection XML. Introspection information is
 * used when registering objects with g_dbus_connection_register_object().
 * The format of D-Bus introspection XML is specified in the
 * D-Bus specification.
 */
public class DBusAnnotationInfo : Boxed
{
	
	/** the main Gtk struct */
	protected GDBusAnnotationInfo* gDBusAnnotationInfo;
	
	
	public GDBusAnnotationInfo* getDBusAnnotationInfoStruct()
	{
		return gDBusAnnotationInfo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gDBusAnnotationInfo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusAnnotationInfo* gDBusAnnotationInfo)
	{
		this.gDBusAnnotationInfo = gDBusAnnotationInfo;
	}
	
	/**
	 * Looks up the value of an annotation.
	 * This cost of this function is O(n) in number of annotations.
	 * Since 2.26
	 * Params:
	 * annotations = A array of annotations or NULL.
	 * name = The name of the annotation to look up.
	 * Returns: The value or null if not found.
	 */
	public static string lookup(DBusAnnotationInfo[] annotations, string name)
	{
		// const gchar * g_dbus_annotation_info_lookup (GDBusAnnotationInfo **annotations,  const gchar *name);
		
		GDBusAnnotationInfo*[] annotationsArray = new GDBusAnnotationInfo*[annotations.length+1];
		for ( int i = 0; i < annotations.length ; i++ )
		{
			annotationsArray[i] = annotations[i].getDBusAnnotationInfoStruct();
		}
		annotationsArray[$-1] = null;
		
		return Str.toString(g_dbus_annotation_info_lookup(annotationsArray.ptr, Str.toStringz(name)));
	}
	
	/**
	 */
	
	/**
	 * If info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 * Since 2.26
	 * Returns: The same info.
	 */
	public DBusAnnotationInfo doref()
	{
		// GDBusAnnotationInfo * g_dbus_annotation_info_ref (GDBusAnnotationInfo *info);
		auto p = g_dbus_annotation_info_ref(gDBusAnnotationInfo);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusAnnotationInfo)(cast(GDBusAnnotationInfo*) p);
	}
	
	/**
	 * If info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of info. When its reference count drops to 0,
	 * the memory used is freed.
	 * Since 2.26
	 */
	public void unref()
	{
		// void g_dbus_annotation_info_unref (GDBusAnnotationInfo *info);
		g_dbus_annotation_info_unref(gDBusAnnotationInfo);
	}
}
