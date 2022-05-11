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


module gio.DBusError;

private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.Str;
private import glib.c.functions;


/** */
public struct DBusError
{

	/**
	 * Creates a D-Bus error name to use for @error. If @error matches
	 * a registered error (cf. g_dbus_error_register_error()), the corresponding
	 * D-Bus error name will be returned.
	 *
	 * Otherwise the a name of the form
	 * `org.gtk.GDBus.UnmappedGError.Quark._ESCAPED_QUARK_NAME.Code_ERROR_CODE`
	 * will be used. This allows other GDBus applications to map the error
	 * on the wire back to a #GError using g_dbus_error_new_for_dbus_error().
	 *
	 * This function is typically only used in object mappings to put a
	 * #GError on the wire. Regular applications should not use it.
	 *
	 * Params:
	 *     error = A #GError.
	 *
	 * Returns: A D-Bus error name (never %NULL).
	 *     Free with g_free().
	 *
	 * Since: 2.26
	 */
	public static string encodeGerror(ErrorG error)
	{
		auto retStr = g_dbus_error_encode_gerror((error is null) ? null : error.getErrorGStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the D-Bus error name used for @error, if any.
	 *
	 * This function is guaranteed to return a D-Bus error name for all
	 * #GErrors returned from functions handling remote method calls
	 * (e.g. g_dbus_connection_call_finish()) unless
	 * g_dbus_error_strip_remote_error() has been used on @error.
	 *
	 * Params:
	 *     error = a #GError
	 *
	 * Returns: an allocated string or %NULL if the
	 *     D-Bus error name could not be found. Free with g_free().
	 *
	 * Since: 2.26
	 */
	public static string getRemoteError(ErrorG error)
	{
		auto retStr = g_dbus_error_get_remote_error((error is null) ? null : error.getErrorGStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Checks if @error represents an error received via D-Bus from a remote peer. If so,
	 * use g_dbus_error_get_remote_error() to get the name of the error.
	 *
	 * Params:
	 *     error = A #GError.
	 *
	 * Returns: %TRUE if @error represents an error from a remote peer,
	 *     %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public static bool isRemoteError(ErrorG error)
	{
		return g_dbus_error_is_remote_error((error is null) ? null : error.getErrorGStruct()) != 0;
	}

	/**
	 * Creates a #GError based on the contents of @dbus_error_name and
	 * @dbus_error_message.
	 *
	 * Errors registered with g_dbus_error_register_error() will be looked
	 * up using @dbus_error_name and if a match is found, the error domain
	 * and code is used. Applications can use g_dbus_error_get_remote_error()
	 * to recover @dbus_error_name.
	 *
	 * If a match against a registered error is not found and the D-Bus
	 * error name is in a form as returned by g_dbus_error_encode_gerror()
	 * the error domain and code encoded in the name is used to
	 * create the #GError. Also, @dbus_error_name is added to the error message
	 * such that it can be recovered with g_dbus_error_get_remote_error().
	 *
	 * Otherwise, a #GError with the error code %G_IO_ERROR_DBUS_ERROR
	 * in the %G_IO_ERROR error domain is returned. Also, @dbus_error_name is
	 * added to the error message such that it can be recovered with
	 * g_dbus_error_get_remote_error().
	 *
	 * In all three cases, @dbus_error_name can always be recovered from the
	 * returned #GError using the g_dbus_error_get_remote_error() function
	 * (unless g_dbus_error_strip_remote_error() hasn't been used on the returned error).
	 *
	 * This function is typically only used in object mappings to prepare
	 * #GError instances for applications. Regular applications should not use
	 * it.
	 *
	 * Params:
	 *     dbusErrorName = D-Bus error name.
	 *     dbusErrorMessage = D-Bus error message.
	 *
	 * Returns: An allocated #GError. Free with g_error_free().
	 *
	 * Since: 2.26
	 */
	public static ErrorG newForDbusError(string dbusErrorName, string dbusErrorMessage)
	{
		auto __p = g_dbus_error_new_for_dbus_error(Str.toStringz(dbusErrorName), Str.toStringz(dbusErrorMessage));

		if(__p is null)
		{
			return null;
		}

		return new ErrorG(cast(GError*) __p, true);
	}

	/** */
	public static GQuark quark()
	{
		return g_dbus_error_quark();
	}

	/**
	 * Creates an association to map between @dbus_error_name and
	 * #GErrors specified by @error_domain and @error_code.
	 *
	 * This is typically done in the routine that returns the #GQuark for
	 * an error domain.
	 *
	 * Params:
	 *     errorDomain = A #GQuark for an error domain.
	 *     errorCode = An error code.
	 *     dbusErrorName = A D-Bus error name.
	 *
	 * Returns: %TRUE if the association was created, %FALSE if it already
	 *     exists.
	 *
	 * Since: 2.26
	 */
	public static bool registerError(GQuark errorDomain, int errorCode, string dbusErrorName)
	{
		return g_dbus_error_register_error(errorDomain, errorCode, Str.toStringz(dbusErrorName)) != 0;
	}

	/**
	 * Helper function for associating a #GError error domain with D-Bus error names.
	 *
	 * While @quark_volatile has a `volatile` qualifier, this is a historical
	 * artifact and the argument passed to it should not be `volatile`.
	 *
	 * Params:
	 *     errorDomainQuarkName = The error domain name.
	 *     quarkVolatile = A pointer where to store the #GQuark.
	 *     entries = A pointer to @num_entries #GDBusErrorEntry struct items.
	 *
	 * Since: 2.26
	 */
	public static void registerErrorDomain(string errorDomainQuarkName, size_t* quarkVolatile, GDBusErrorEntry[] entries)
	{
		g_dbus_error_register_error_domain(Str.toStringz(errorDomainQuarkName), quarkVolatile, entries.ptr, cast(uint)entries.length);
	}

	/**
	 * Looks for extra information in the error message used to recover
	 * the D-Bus error name and strips it if found. If stripped, the
	 * message field in @error will correspond exactly to what was
	 * received on the wire.
	 *
	 * This is typically used when presenting errors to the end user.
	 *
	 * Params:
	 *     error = A #GError.
	 *
	 * Returns: %TRUE if information was stripped, %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public static bool stripRemoteError(ErrorG error)
	{
		return g_dbus_error_strip_remote_error((error is null) ? null : error.getErrorGStruct()) != 0;
	}

	/**
	 * Destroys an association previously set up with g_dbus_error_register_error().
	 *
	 * Params:
	 *     errorDomain = A #GQuark for an error domain.
	 *     errorCode = An error code.
	 *     dbusErrorName = A D-Bus error name.
	 *
	 * Returns: %TRUE if the association was destroyed, %FALSE if it wasn't found.
	 *
	 * Since: 2.26
	 */
	public static bool unregisterError(GQuark errorDomain, int errorCode, string dbusErrorName)
	{
		return g_dbus_error_unregister_error(errorDomain, errorCode, Str.toStringz(dbusErrorName)) != 0;
	}
}
