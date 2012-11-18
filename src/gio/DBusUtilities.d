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
 * 	- glib.Variant
 * 	- glib.VariantType
 * 	- gobject.Value
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.IOStream
 * structWrap:
 * 	- GValue* -> Value
 * 	- GVariant* -> Variant
 * 	- GVariantType* -> VariantType
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
private import glib.Variant;
private import glib.VariantType;
private import gobject.Value;
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
	 * Converts a GValue to a GVariant of the type indicated by the type parameter.
	 * Since 2.30
	 * Params:
	 * gvalue = A GValue to convert to a GVariant.
	 * type = A GVariantType.
	 * Returns: A GVariant (never floating) of GVariantType type holding the data from gvalue or NULL in case of failure. Free with g_variant_unref().
	 */
	public static Variant gvalueToGvariant(Value gvalue, VariantType type)
	{
		// GVariant * g_dbus_gvalue_to_gvariant (const GValue *gvalue,  const GVariantType *type);
		auto p = g_dbus_gvalue_to_gvariant((gvalue is null) ? null : gvalue.getValueStruct(), (type is null) ? null : type.getVariantTypeStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Converts a GVariant to a GValue. If value is floating, it is consumed.
	 * The rules specified in the g_dbus_gvalue_to_gvariant() function are
	 * used - this function is essentially its reverse form.
	 * The conversion never fails - a valid GValue is always returned in
	 * out_gvalue.
	 * Since 2.30
	 * Params:
	 * value = A GVariant.
	 * outGvalue = Return location pointing to a zero-filled (uninitialized) GValue. [out]
	 */
	public static void gvariantToGvalue(Variant value, Value outGvalue)
	{
		// void g_dbus_gvariant_to_gvalue (GVariant *value,  GValue *out_gvalue);
		g_dbus_gvariant_to_gvalue((value is null) ? null : value.getVariantStruct(), (outGvalue is null) ? null : outGvalue.getValueStruct());
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
	 * cancellable = A GCancellable or NULL. [allow-none]
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
		
		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) p);
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
	 * cancellable = A GCancellable or NULL. [allow-none]
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
		
		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) p);
	}
	
	/**
	 * Synchronously looks up the D-Bus address for the well-known message
	 * bus instance specified by bus_type. This may involve using various
	 * platform specific mechanisms.
	 * Since 2.26
	 * Params:
	 * busType = A GBusType.
	 * cancellable = A GCancellable or NULL. [allow-none]
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
}
