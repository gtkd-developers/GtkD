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
 * inFile  = gio-D-Bus-Utilities.html
 * outPack = gio
 * outFile = DBusUtilities
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = DBusUtilities
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dbus_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.StringG
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.IOStream
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusUtilities;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.StringG;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.IOStream;




/**
 * Description
 * Various utility routines related to D-Bus.
 */
public class DBusUtilities
{
	
	/**
	 * Description
	 * Routines for working with D-Bus addresses. A D-Bus address is a string
	 * like "unix:tmpdir=/tmp/my-app-name". The exact format of addresses
	 * is explained in detail in the D-Bus specification.
	 */
	
	/**
	 * Description
	 * Various data structures and convenience routines to parse and
	 * generate D-Bus introspection XML. Introspection information is
	 * used when registering objects with g_dbus_connection_register_object().
	 * The format of D-Bus introspection XML is specified in the
	 * D-Bus specification.
	 */
	
	/**
	 * Generate a D-Bus GUID that can be used with
	 * e.g. g_dbus_connection_new().
	 * See the D-Bus specification regarding what strings are valid D-Bus
	 * GUID (for example, D-Bus GUIDs are not RFC-4122 compliant).
	 * Since 2.26
	 * Returns: A valid D-Bus GUID. Free with g_free().
	 */
	public static string generateGuid()
	{
		// gchar * g_dbus_generate_guid (void);
		return Str.toString(g_dbus_generate_guid());
	}
	
	/**
	 * Checks if string is a D-Bus GUID.
	 * See the D-Bus specification regarding what strings are valid D-Bus
	 * GUID (for example, D-Bus GUIDs are not RFC-4122 compliant).
	 * Since 2.26
	 * Params:
	 * string = The string to check.
	 * Returns: TRUE if string is a guid, FALSE otherwise.
	 */
	public static int isGuid(string string)
	{
		// gboolean g_dbus_is_guid (const gchar *string);
		return g_dbus_is_guid(Str.toStringz(string));
	}
	
	/**
	 * Checks if string is a valid D-Bus bus name (either unique or well-known).
	 * Since 2.26
	 * Params:
	 * string = The string to check.
	 * Returns: TRUE if valid, FALSE otherwise.
	 */
	public static int isName(string string)
	{
		// gboolean g_dbus_is_name (const gchar *string);
		return g_dbus_is_name(Str.toStringz(string));
	}
	
	/**
	 * Checks if string is a valid D-Bus unique bus name.
	 * Since 2.26
	 * Params:
	 * string = The string to check.
	 * Returns: TRUE if valid, FALSE otherwise.
	 */
	public static int isUniqueName(string string)
	{
		// gboolean g_dbus_is_unique_name (const gchar *string);
		return g_dbus_is_unique_name(Str.toStringz(string));
	}
	
	/**
	 * Checks if string is a valid D-Bus member (e.g. signal or method) name.
	 * Since 2.26
	 * Params:
	 * string = The string to check.
	 * Returns: TRUE if valid, FALSE otherwise.
	 */
	public static int isMemberName(string string)
	{
		// gboolean g_dbus_is_member_name (const gchar *string);
		return g_dbus_is_member_name(Str.toStringz(string));
	}
	
	/**
	 * Checks if string is a valid D-Bus interface name.
	 * Since 2.26
	 * Params:
	 * string = The string to check.
	 * Returns: TRUE if valid, FALSE otherwise.
	 */
	public static int isInterfaceName(string string)
	{
		// gboolean g_dbus_is_interface_name (const gchar *string);
		return g_dbus_is_interface_name(Str.toStringz(string));
	}
	
	/**
	 * Checks if string is a D-Bus address.
	 * This doesn't check if string is actually supported by GDBusServer
	 * or GDBusConnection - use g_dbus_is_supported_address() to do more
	 * checks.
	 * Since 2.26
	 * Params:
	 * string = A string.
	 * Returns: TRUE if string is a valid D-Bus address, FALSE otherwise.
	 */
	public static int isAddress(string string)
	{
		// gboolean g_dbus_is_address (const gchar *string);
		return g_dbus_is_address(Str.toStringz(string));
	}
	
	/**
	 * Like g_dbus_is_address() but also checks if the library suppors the
	 * transports in string and that key/value pairs for each transport
	 * are valid.
	 * Since 2.26
	 * Params:
	 * string = A string.
	 * Returns: TRUE if string is a valid D-Bus address that is supported by this library, FALSE if error is set.
	 * Throws: GException on failure.
	 */
	public static int isSupportedAddress(string string)
	{
		// gboolean g_dbus_is_supported_address (const gchar *string,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_is_supported_address(Str.toStringz(string), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Asynchronously connects to an endpoint specified by address and
	 * sets up the connection so it is in a state to run the client-side
	 * of the D-Bus authentication conversation.
	 * When the operation is finished, callback will be invoked. You can
	 * then call g_dbus_address_get_stream_finish() to get the result of
	 * the operation.
	 * This is an asynchronous failable function. See
	 * g_dbus_address_get_stream_sync() for the synchronous version.
	 * Since 2.26
	 * Params:
	 * address = A valid D-Bus address.
	 * cancellable = A GCancellable or NULL.
	 * callback = A GAsyncReadyCallback to call when the request is satisfied.
	 * userData = Data to pass to callback.
	 */
	public static void addressGetStream(string address, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_dbus_address_get_stream (const gchar *address,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_dbus_address_get_stream(Str.toStringz(address), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Finishes an operation started with g_dbus_address_get_stream().
	 * Since 2.26
	 * Params:
	 * res = A GAsyncResult obtained from the GAsyncReadyCallback passed to g_dbus_address_get_stream().
	 * outGuid = NULL or return location to store the GUID extracted from address, if any.
	 * Returns: A GIOStream or NULL if error is set. [transfer full]
	 * Throws: GException on failure.
	 */
	public static IOStream addressGetStreamFinish(AsyncResultIF res, out string outGuid)
	{
		// GIOStream * g_dbus_address_get_stream_finish (GAsyncResult *res,  gchar **out_guid,  GError **error);
		char* outoutGuid = null;
		GError* err = null;
		
		auto p = g_dbus_address_get_stream_finish((res is null) ? null : res.getAsyncResultTStruct(), &outoutGuid, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		outGuid = Str.toString(outoutGuid);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!IOStream(cast(GIOStream*) p);
	}
	
	/**
	 * Synchronously connects to an endpoint specified by address and
	 * sets up the connection so it is in a state to run the client-side
	 * of the D-Bus authentication conversation.
	 * This is a synchronous failable function. See
	 * g_dbus_address_get_stream() for the asynchronous version.
	 * Since 2.26
	 * Params:
	 * address = A valid D-Bus address.
	 * outGuid = NULL or return location to store the GUID extracted from address, if any.
	 * cancellable = A GCancellable or NULL.
	 * Returns: A GIOStream or NULL if error is set. [transfer full]
	 * Throws: GException on failure.
	 */
	public static IOStream addressGetStreamSync(string address, out string outGuid, Cancellable cancellable)
	{
		// GIOStream * g_dbus_address_get_stream_sync (const gchar *address,  gchar **out_guid,  GCancellable *cancellable,  GError **error);
		char* outoutGuid = null;
		GError* err = null;
		
		auto p = g_dbus_address_get_stream_sync(Str.toStringz(address), &outoutGuid, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		outGuid = Str.toString(outoutGuid);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!IOStream(cast(GIOStream*) p);
	}
	
	/**
	 * Synchronously looks up the D-Bus address for the well-known message
	 * bus instance specified by bus_type. This may involve using various
	 * platform specific mechanisms.
	 * Since 2.26
	 * Params:
	 * busType = A GBusType.
	 * cancellable = A GCancellable or NULL.
	 * Returns: A valid D-Bus address string for bus_type or NULL if error is set.
	 * Throws: GException on failure.
	 */
	public static string addressGetForBusSync(GBusType busType, Cancellable cancellable)
	{
		// gchar * g_dbus_address_get_for_bus_sync (GBusType bus_type,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_address_get_for_bus_sync(busType, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Looks up the value of an annotation.
	 * This cost of this function is O(n) in number of annotations.
	 * Since 2.26
	 * Params:
	 * annotations = A NULL-terminated array of annotations or NULL.
	 * name = The name of the annotation to look up.
	 * Returns: The value or NULL if not found. Do not free, it is owned by annotations.
	 */
	public static string annotationInfoLookup(GDBusAnnotationInfo** annotations, string name)
	{
		// const gchar * g_dbus_annotation_info_lookup (GDBusAnnotationInfo **annotations,  const gchar *name);
		return Str.toString(g_dbus_annotation_info_lookup(annotations, Str.toStringz(name)));
	}
	
	/**
	 * Looks up information about a method.
	 * This cost of this function is O(n) in number of methods.
	 * Since 2.26
	 * Params:
	 * info = A GDBusInterfaceInfo.
	 * name = A D-Bus method name (typically in CamelCase)
	 * Returns: A GDBusMethodInfo or NULL if not found. Do not free, it is owned by info.
	 */
	public static GDBusMethodInfo* interfaceInfoLookupMethod(GDBusInterfaceInfo* info, string name)
	{
		// GDBusMethodInfo * g_dbus_interface_info_lookup_method (GDBusInterfaceInfo *info,  const gchar *name);
		return g_dbus_interface_info_lookup_method(info, Str.toStringz(name));
	}
	
	/**
	 * Looks up information about a signal.
	 * This cost of this function is O(n) in number of signals.
	 * Since 2.26
	 * Params:
	 * info = A GDBusInterfaceInfo.
	 * name = A D-Bus signal name (typically in CamelCase)
	 * Returns: A GDBusSignalInfo or NULL if not found. Do not free, it is owned by info.
	 */
	public static GDBusSignalInfo* interfaceInfoLookupSignal(GDBusInterfaceInfo* info, string name)
	{
		// GDBusSignalInfo * g_dbus_interface_info_lookup_signal (GDBusInterfaceInfo *info,  const gchar *name);
		return g_dbus_interface_info_lookup_signal(info, Str.toStringz(name));
	}
	
	/**
	 * Looks up information about a property.
	 * This cost of this function is O(n) in number of properties.
	 * Since 2.26
	 * Params:
	 * info = A GDBusInterfaceInfo.
	 * name = A D-Bus property name (typically in CamelCase).
	 * Returns: A GDBusPropertyInfo or NULL if not found. Do not free, it is owned by info.
	 */
	public static GDBusPropertyInfo* interfaceInfoLookupProperty(GDBusInterfaceInfo* info, string name)
	{
		// GDBusPropertyInfo * g_dbus_interface_info_lookup_property  (GDBusInterfaceInfo *info,  const gchar *name);
		return g_dbus_interface_info_lookup_property(info, Str.toStringz(name));
	}
	
	/**
	 * Appends an XML representation of info (and its children) to string_builder.
	 * This function is typically used for generating introspection XML
	 * documents at run-time for handling the
	 * org.freedesktop.DBus.Introspectable.Introspect
	 * method.
	 * Since 2.26
	 * Params:
	 * info = A GDBusNodeInfo
	 * indent = Indentation level.
	 * stringBuilder = A GString to to append XML data to.
	 */
	public static void interfaceInfoGenerateXml(GDBusInterfaceInfo* info, uint indent, StringG stringBuilder)
	{
		// void g_dbus_interface_info_generate_xml (GDBusInterfaceInfo *info,  guint indent,  GString *string_builder);
		g_dbus_interface_info_generate_xml(info, indent, (stringBuilder is null) ? null : stringBuilder.getStringGStruct());
	}
	
	/**
	 * Parses xml_data and returns a GDBusNodeInfo representing the data.
	 * Since 2.26
	 * Params:
	 * xmlData = Valid D-Bus introspection XML.
	 * Returns: A GDBusNodeInfo structure or NULL if error is set. Free with g_dbus_node_info_unref().
	 * Throws: GException on failure.
	 */
	public static GDBusNodeInfo* nodeInfoNewForXml(string xmlData)
	{
		// GDBusNodeInfo * g_dbus_node_info_new_for_xml (const gchar *xml_data,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_node_info_new_for_xml(Str.toStringz(xmlData), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Looks up information about an interface.
	 * This cost of this function is O(n) in number of interfaces.
	 * Since 2.26
	 * Params:
	 * info = A GDBusNodeInfo.
	 * name = A D-Bus interface name.
	 * Returns: A GDBusInterfaceInfo or NULL if not found. Do not free, it is owned by info.
	 */
	public static GDBusInterfaceInfo* nodeInfoLookupInterface(GDBusNodeInfo* info, string name)
	{
		// GDBusInterfaceInfo * g_dbus_node_info_lookup_interface (GDBusNodeInfo *info,  const gchar *name);
		return g_dbus_node_info_lookup_interface(info, Str.toStringz(name));
	}
	
	/**
	 * Appends an XML representation of info (and its children) to string_builder.
	 * This function is typically used for generating introspection XML documents at run-time for
	 * handling the org.freedesktop.DBus.Introspectable.Introspect method.
	 * Since 2.26
	 * Params:
	 * info = A GDBusNodeInfo.
	 * indent = Indentation level.
	 * stringBuilder = A GString to to append XML data to.
	 */
	public static void nodeInfoGenerateXml(GDBusNodeInfo* info, uint indent, StringG stringBuilder)
	{
		// void g_dbus_node_info_generate_xml (GDBusNodeInfo *info,  guint indent,  GString *string_builder);
		g_dbus_node_info_generate_xml(info, indent, (stringBuilder is null) ? null : stringBuilder.getStringGStruct());
	}
	
	/**
	 * If info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 * Since 2.26
	 * Params:
	 * info = A GDBusNodeInfo
	 * Returns: The same info.
	 */
	public static GDBusNodeInfo* nodeInfoRef(GDBusNodeInfo* info)
	{
		// GDBusNodeInfo * g_dbus_node_info_ref (GDBusNodeInfo *info);
		return g_dbus_node_info_ref(info);
	}
	
	/**
	 * If info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 * Since 2.26
	 * Params:
	 * info = A GDBusInterfaceInfo
	 * Returns: The same info.
	 */
	public static GDBusInterfaceInfo* interfaceInfoRef(GDBusInterfaceInfo* info)
	{
		// GDBusInterfaceInfo * g_dbus_interface_info_ref (GDBusInterfaceInfo *info);
		return g_dbus_interface_info_ref(info);
	}
	
	/**
	 * If info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 * Since 2.26
	 * Params:
	 * info = A GDBusMethodInfo
	 * Returns: The same info.
	 */
	public static GDBusMethodInfo* methodInfoRef(GDBusMethodInfo* info)
	{
		// GDBusMethodInfo * g_dbus_method_info_ref (GDBusMethodInfo *info);
		return g_dbus_method_info_ref(info);
	}
	
	/**
	 * If info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 * Since 2.26
	 * Params:
	 * info = A GDBusSignalInfo
	 * Returns: The same info.
	 */
	public static GDBusSignalInfo* signalInfoRef(GDBusSignalInfo* info)
	{
		// GDBusSignalInfo * g_dbus_signal_info_ref (GDBusSignalInfo *info);
		return g_dbus_signal_info_ref(info);
	}
	
	/**
	 * If info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 * Since 2.26
	 * Params:
	 * info = A GDBusPropertyInfo
	 * Returns: The same info.
	 */
	public static GDBusPropertyInfo* propertyInfoRef(GDBusPropertyInfo* info)
	{
		// GDBusPropertyInfo * g_dbus_property_info_ref (GDBusPropertyInfo *info);
		return g_dbus_property_info_ref(info);
	}
	
	/**
	 * If info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 * Since 2.26
	 * Params:
	 * info = A GDBusArgInfo
	 * Returns: The same info.
	 */
	public static GDBusArgInfo* argInfoRef(GDBusArgInfo* info)
	{
		// GDBusArgInfo * g_dbus_arg_info_ref (GDBusArgInfo *info);
		return g_dbus_arg_info_ref(info);
	}
	
	/**
	 * If info is statically allocated does nothing. Otherwise increases
	 * the reference count.
	 * Since 2.26
	 * Params:
	 * info = A GDBusNodeInfo
	 * Returns: The same info.
	 */
	public static GDBusAnnotationInfo* annotationInfoRef(GDBusAnnotationInfo* info)
	{
		// GDBusAnnotationInfo * g_dbus_annotation_info_ref (GDBusAnnotationInfo *info);
		return g_dbus_annotation_info_ref(info);
	}
	
	/**
	 * If info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of info. When its reference count drops to 0,
	 * the memory used is freed.
	 * Since 2.26
	 * Params:
	 * info = A GDBusNodeInfo.
	 */
	public static void nodeInfoUnref(GDBusNodeInfo* info)
	{
		// void g_dbus_node_info_unref (GDBusNodeInfo *info);
		g_dbus_node_info_unref(info);
	}
	
	/**
	 * If info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of info. When its reference count drops to 0,
	 * the memory used is freed.
	 * Since 2.26
	 * Params:
	 * info = A GDBusInterfaceInfo.
	 */
	public static void interfaceInfoUnref(GDBusInterfaceInfo* info)
	{
		// void g_dbus_interface_info_unref (GDBusInterfaceInfo *info);
		g_dbus_interface_info_unref(info);
	}
	
	/**
	 * If info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of info. When its reference count drops to 0,
	 * the memory used is freed.
	 * Since 2.26
	 * Params:
	 * info = A GDBusMethodInfo.
	 */
	public static void methodInfoUnref(GDBusMethodInfo* info)
	{
		// void g_dbus_method_info_unref (GDBusMethodInfo *info);
		g_dbus_method_info_unref(info);
	}
	
	/**
	 * If info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of info. When its reference count drops to 0,
	 * the memory used is freed.
	 * Since 2.26
	 * Params:
	 * info = A GDBusSignalInfo.
	 */
	public static void signalInfoUnref(GDBusSignalInfo* info)
	{
		// void g_dbus_signal_info_unref (GDBusSignalInfo *info);
		g_dbus_signal_info_unref(info);
	}
	
	/**
	 * If info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of info. When its reference count drops to 0,
	 * the memory used is freed.
	 * Since 2.26
	 * Params:
	 * info = A GDBusPropertyInfo.
	 */
	public static void propertyInfoUnref(GDBusPropertyInfo* info)
	{
		// void g_dbus_property_info_unref (GDBusPropertyInfo *info);
		g_dbus_property_info_unref(info);
	}
	
	/**
	 * If info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of info. When its reference count drops to 0,
	 * the memory used is freed.
	 * Since 2.26
	 * Params:
	 * info = A GDBusArgInfo.
	 */
	public static void argInfoUnref(GDBusArgInfo* info)
	{
		// void g_dbus_arg_info_unref (GDBusArgInfo *info);
		g_dbus_arg_info_unref(info);
	}
	
	/**
	 * If info is statically allocated, does nothing. Otherwise decreases
	 * the reference count of info. When its reference count drops to 0,
	 * the memory used is freed.
	 * Since 2.26
	 * Params:
	 * info = A GDBusAnnotationInfo.
	 */
	public static void annotationInfoUnref(GDBusAnnotationInfo* info)
	{
		// void g_dbus_annotation_info_unref (GDBusAnnotationInfo *info);
		g_dbus_annotation_info_unref(info);
	}
}
