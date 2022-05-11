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


module gio.DBusUtilities;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.IOStream;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.MemorySlice;
private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Value;


/** */
public struct DBusUtilities
{

	/**
	 * Escape @string so it can appear in a D-Bus address as the value
	 * part of a key-value pair.
	 *
	 * For instance, if @string is `/run/bus-for-:0`,
	 * this function would return `/run/bus-for-%3A0`,
	 * which could be used in a D-Bus address like
	 * `unix:nonce-tcp:host=127.0.0.1,port=42,noncefile=/run/bus-for-%3A0`.
	 *
	 * Params:
	 *     string_ = an unescaped string to be included in a D-Bus address
	 *         as the value in a key-value pair
	 *
	 * Returns: a copy of @string with all
	 *     non-optionally-escaped bytes escaped
	 *
	 * Since: 2.36
	 */
	public static string addressEscapeValue(string string_)
	{
		auto retStr = g_dbus_address_escape_value(Str.toStringz(string_));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Synchronously looks up the D-Bus address for the well-known message
	 * bus instance specified by @bus_type. This may involve using various
	 * platform specific mechanisms.
	 *
	 * The returned address will be in the
	 * [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html#addresses).
	 *
	 * Params:
	 *     busType = a #GBusType
	 *     cancellable = a #GCancellable or %NULL
	 *
	 * Returns: a valid D-Bus address string for @bus_type or
	 *     %NULL if @error is set
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public static string addressGetForBusSync(GBusType busType, Cancellable cancellable)
	{
		GError* err = null;

		auto retStr = g_dbus_address_get_for_bus_sync(busType, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Asynchronously connects to an endpoint specified by @address and
	 * sets up the connection so it is in a state to run the client-side
	 * of the D-Bus authentication conversation. @address must be in the
	 * [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html#addresses).
	 *
	 * When the operation is finished, @callback will be invoked. You can
	 * then call g_dbus_address_get_stream_finish() to get the result of
	 * the operation.
	 *
	 * This is an asynchronous failable function. See
	 * g_dbus_address_get_stream_sync() for the synchronous version.
	 *
	 * Params:
	 *     address = A valid D-Bus address.
	 *     cancellable = A #GCancellable or %NULL.
	 *     callback = A #GAsyncReadyCallback to call when the request is satisfied.
	 *     userData = Data to pass to @callback.
	 *
	 * Since: 2.26
	 */
	public static void addressGetStream(string address, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_dbus_address_get_stream(Str.toStringz(address), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an operation started with g_dbus_address_get_stream().
	 *
	 * A server is not required to set a GUID, so @out_guid may be set to %NULL
	 * even on success.
	 *
	 * Params:
	 *     res = A #GAsyncResult obtained from the GAsyncReadyCallback passed to g_dbus_address_get_stream().
	 *     outGuid = %NULL or return location to store the GUID extracted from @address, if any.
	 *
	 * Returns: A #GIOStream or %NULL if @error is set.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public static IOStream addressGetStreamFinish(AsyncResultIF res, out string outGuid)
	{
		char* outoutGuid = null;
		GError* err = null;

		auto __p = g_dbus_address_get_stream_finish((res is null) ? null : res.getAsyncResultStruct(), &outoutGuid, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		outGuid = Str.toString(outoutGuid);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) __p, true);
	}

	/**
	 * Synchronously connects to an endpoint specified by @address and
	 * sets up the connection so it is in a state to run the client-side
	 * of the D-Bus authentication conversation. @address must be in the
	 * [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html#addresses).
	 *
	 * A server is not required to set a GUID, so @out_guid may be set to %NULL
	 * even on success.
	 *
	 * This is a synchronous failable function. See
	 * g_dbus_address_get_stream() for the asynchronous version.
	 *
	 * Params:
	 *     address = A valid D-Bus address.
	 *     outGuid = %NULL or return location to store the GUID extracted from @address, if any.
	 *     cancellable = A #GCancellable or %NULL.
	 *
	 * Returns: A #GIOStream or %NULL if @error is set.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public static IOStream addressGetStreamSync(string address, out string outGuid, Cancellable cancellable)
	{
		char* outoutGuid = null;
		GError* err = null;

		auto __p = g_dbus_address_get_stream_sync(Str.toStringz(address), &outoutGuid, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		outGuid = Str.toString(outoutGuid);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) __p, true);
	}

	/**
	 * Generate a D-Bus GUID that can be used with
	 * e.g. g_dbus_connection_new().
	 *
	 * See the
	 * [D-Bus specification](https://dbus.freedesktop.org/doc/dbus-specification.html#uuids)
	 * regarding what strings are valid D-Bus GUIDs. The specification refers to
	 * these as ‘UUIDs’ whereas GLib (for historical reasons) refers to them as
	 * ‘GUIDs’. The terms are interchangeable.
	 *
	 * Note that D-Bus GUIDs do not follow
	 * [RFC 4122](https://datatracker.ietf.org/doc/html/rfc4122).
	 *
	 * Returns: A valid D-Bus GUID. Free with g_free().
	 *
	 * Since: 2.26
	 */
	public static string generateGuid()
	{
		auto retStr = g_dbus_generate_guid();

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Converts a #GValue to a #GVariant of the type indicated by the @type
	 * parameter.
	 *
	 * The conversion is using the following rules:
	 *
	 * - `G_TYPE_STRING`: 's', 'o', 'g' or 'ay'
	 * - `G_TYPE_STRV`: 'as', 'ao' or 'aay'
	 * - `G_TYPE_BOOLEAN`: 'b'
	 * - `G_TYPE_UCHAR`: 'y'
	 * - `G_TYPE_INT`: 'i', 'n'
	 * - `G_TYPE_UINT`: 'u', 'q'
	 * - `G_TYPE_INT64`: 'x'
	 * - `G_TYPE_UINT64`: 't'
	 * - `G_TYPE_DOUBLE`: 'd'
	 * - `G_TYPE_VARIANT`: Any #GVariantType
	 *
	 * This can fail if e.g. @gvalue is of type %G_TYPE_STRING and @type
	 * is 'i', i.e. %G_VARIANT_TYPE_INT32. It will also fail for any #GType
	 * (including e.g. %G_TYPE_OBJECT and %G_TYPE_BOXED derived-types) not
	 * in the table above.
	 *
	 * Note that if @gvalue is of type %G_TYPE_VARIANT and its value is
	 * %NULL, the empty #GVariant instance (never %NULL) for @type is
	 * returned (e.g. 0 for scalar types, the empty string for string types,
	 * '/' for object path types, the empty array for any array type and so on).
	 *
	 * See the g_dbus_gvariant_to_gvalue() function for how to convert a
	 * #GVariant to a #GValue.
	 *
	 * Params:
	 *     gvalue = A #GValue to convert to a #GVariant
	 *     type = A #GVariantType
	 *
	 * Returns: A #GVariant (never floating) of
	 *     #GVariantType @type holding the data from @gvalue or an empty #GVariant
	 *     in case of failure. Free with g_variant_unref().
	 *
	 * Since: 2.30
	 */
	public static Variant gvalueToGvariant(Value gvalue, VariantType type)
	{
		auto __p = g_dbus_gvalue_to_gvariant((gvalue is null) ? null : gvalue.getValueStruct(), (type is null) ? null : type.getVariantTypeStruct());

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Converts a #GVariant to a #GValue. If @value is floating, it is consumed.
	 *
	 * The rules specified in the g_dbus_gvalue_to_gvariant() function are
	 * used - this function is essentially its reverse form. So, a #GVariant
	 * containing any basic or string array type will be converted to a #GValue
	 * containing a basic value or string array. Any other #GVariant (handle,
	 * variant, tuple, dict entry) will be converted to a #GValue containing that
	 * #GVariant.
	 *
	 * The conversion never fails - a valid #GValue is always returned in
	 * @out_gvalue.
	 *
	 * Params:
	 *     value = A #GVariant.
	 *     outGvalue = Return location pointing to a zero-filled (uninitialized) #GValue.
	 *
	 * Since: 2.30
	 */
	public static void gvariantToGvalue(Variant value, out Value outGvalue)
	{
		GValue* outoutGvalue = sliceNew!GValue();

		g_dbus_gvariant_to_gvalue((value is null) ? null : value.getVariantStruct(), outoutGvalue);

		outGvalue = ObjectG.getDObject!(Value)(outoutGvalue, true);
	}

	/**
	 * Checks if @string is a
	 * [D-Bus address](https://dbus.freedesktop.org/doc/dbus-specification.html#addresses).
	 *
	 * This doesn't check if @string is actually supported by #GDBusServer
	 * or #GDBusConnection - use g_dbus_is_supported_address() to do more
	 * checks.
	 *
	 * Params:
	 *     string_ = A string.
	 *
	 * Returns: %TRUE if @string is a valid D-Bus address, %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public static bool isAddress(string string_)
	{
		return g_dbus_is_address(Str.toStringz(string_)) != 0;
	}

	/**
	 * Checks if @string is a D-Bus GUID.
	 *
	 * See the documentation for g_dbus_generate_guid() for more information about
	 * the format of a GUID.
	 *
	 * Params:
	 *     string_ = The string to check.
	 *
	 * Returns: %TRUE if @string is a GUID, %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public static bool isGuid(string string_)
	{
		return g_dbus_is_guid(Str.toStringz(string_)) != 0;
	}

	/**
	 * Checks if @string is a valid D-Bus interface name.
	 *
	 * Params:
	 *     string_ = The string to check.
	 *
	 * Returns: %TRUE if valid, %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public static bool isInterfaceName(string string_)
	{
		return g_dbus_is_interface_name(Str.toStringz(string_)) != 0;
	}

	/**
	 * Checks if @string is a valid D-Bus member (e.g. signal or method) name.
	 *
	 * Params:
	 *     string_ = The string to check.
	 *
	 * Returns: %TRUE if valid, %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public static bool isMemberName(string string_)
	{
		return g_dbus_is_member_name(Str.toStringz(string_)) != 0;
	}

	/**
	 * Checks if @string is a valid D-Bus bus name (either unique or well-known).
	 *
	 * Params:
	 *     string_ = The string to check.
	 *
	 * Returns: %TRUE if valid, %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public static bool isName(string string_)
	{
		return g_dbus_is_name(Str.toStringz(string_)) != 0;
	}

	/**
	 * Like g_dbus_is_address() but also checks if the library supports the
	 * transports in @string and that key/value pairs for each transport
	 * are valid. See the specification of the
	 * [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html#addresses).
	 *
	 * Params:
	 *     string_ = A string.
	 *
	 * Returns: %TRUE if @string is a valid D-Bus address that is
	 *     supported by this library, %FALSE if @error is set.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public static bool isSupportedAddress(string string_)
	{
		GError* err = null;

		auto __p = g_dbus_is_supported_address(Str.toStringz(string_), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Checks if @string is a valid D-Bus unique bus name.
	 *
	 * Params:
	 *     string_ = The string to check.
	 *
	 * Returns: %TRUE if valid, %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public static bool isUniqueName(string string_)
	{
		return g_dbus_is_unique_name(Str.toStringz(string_)) != 0;
	}
}
