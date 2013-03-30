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
 * inFile  = gio-GDBusError.html
 * outPack = gio
 * outFile = DBusError
 * strct   = GError
 * realStrct=
 * ctorStrct=
 * clss    = DBusError
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dbus_error_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * structWrap:
 * 	- GError* -> ErrorG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusError;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;




/**
 * All facilities that return errors from remote methods (such as
 * g_dbus_connection_call_sync()) use GError to represent both D-Bus
 * errors (e.g. errors returned from the other peer) and locally
 * in-process generated errors.
 *
 * To check if a returned GError is an error from a remote peer, use
 * g_dbus_error_is_remote_error(). To get the actual D-Bus error name,
 * use g_dbus_error_get_remote_error(). Before presenting an error,
 * always use g_dbus_error_strip_remote_error().
 *
 * In addition, facilities used to return errors to a remote peer also
 * use GError. See g_dbus_method_invocation_return_error() for
 * discussion about how the D-Bus error name is set.
 *
 * Applications can associate a GError error domain with a set of D-Bus errors in order to
 * automatically map from D-Bus errors to GError and back. This
 * is typically done in the function returning the GQuark for the
 * error domain:
 *
 * $(DDOC_COMMENT example)
 *
 * With this setup, a D-Bus peer can transparently pass e.g. FOO_BAR_ERROR_ANOTHER_ERROR and
 * other peers will see the D-Bus error name org.project.Foo.Bar.Error.AnotherError.
 *
 * If the other peer is using GDBus, and has registered the association with
 * g_dbus_error_register_error_domain() in advance (e.g. by invoking the FOO_BAR_ERROR quark
 * generation itself in the previous example) the peer will see also FOO_BAR_ERROR_ANOTHER_ERROR instead
 * of G_IO_ERROR_DBUS_ERROR. Note that GDBus clients can still recover
 * org.project.Foo.Bar.Error.AnotherError using g_dbus_error_get_remote_error().
 *
 * Note that errors in the G_DBUS_ERROR error domain is intended only
 * for returning errors from a remote message bus process. Errors
 * generated locally in-process by e.g. GDBusConnection is from the
 * G_IO_ERROR domain.
 */
public class DBusError
{
	
	/** the main Gtk struct */
	protected GError* gError;
	
	
	public GError* getDBusErrorStruct()
	{
		return gError;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gError;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GError* gError)
	{
		this.gError = gError;
	}
	
	/**
	 */
	
	/**
	 * Checks if error represents an error received via D-Bus from a remote peer. If so,
	 * use g_dbus_error_get_remote_error() to get the name of the error.
	 * Since 2.26
	 * Returns: TRUE if error represents an error from a remote peer, FALSE otherwise.
	 */
	public int isRemoteError()
	{
		// gboolean g_dbus_error_is_remote_error (const GError *error);
		return g_dbus_error_is_remote_error(gError);
	}
	
	/**
	 * Gets the D-Bus error name used for error, if any.
	 * This function is guaranteed to return a D-Bus error name for all
	 * GErrors returned from functions handling remote method
	 * calls (e.g. g_dbus_connection_call_finish()) unless
	 * g_dbus_error_strip_remote_error() has been used on error.
	 * Since 2.26
	 * Returns: An allocated string or NULL if the D-Bus error name could not be found. Free with g_free().
	 */
	public string getRemoteError()
	{
		// gchar * g_dbus_error_get_remote_error (const GError *error);
		return Str.toString(g_dbus_error_get_remote_error(gError));
	}
	
	/**
	 * Looks for extra information in the error message used to recover
	 * the D-Bus error name and strips it if found. If stripped, the
	 * message field in error will correspond exactly to what was
	 * received on the wire.
	 * This is typically used when presenting errors to the end user.
	 * Since 2.26
	 * Returns: TRUE if information was stripped, FALSE otherwise.
	 */
	public int stripRemoteError()
	{
		// gboolean g_dbus_error_strip_remote_error (GError *error);
		return g_dbus_error_strip_remote_error(gError);
	}
	
	/**
	 * Helper function for associating a GError error domain with D-Bus error names.
	 * Since 2.26
	 * Params:
	 * errorDomainQuarkName = The error domain name.
	 * quarkVolatile = A pointer where to store the GQuark.
	 * entries = A pointer to num_entries GDBusErrorEntry struct items.
	 */
	public static void registerErrorDomain(string errorDomainQuarkName, out gsize quarkVolatile, GDBusErrorEntry[] entries)
	{
		// void g_dbus_error_register_error_domain (const gchar *error_domain_quark_name,  volatile gsize *quark_volatile,  const GDBusErrorEntry *entries,  guint num_entries);
		g_dbus_error_register_error_domain(Str.toStringz(errorDomainQuarkName), &quarkVolatile, entries.ptr, cast(int) entries.length);
	}
	
	/**
	 * Creates an association to map between dbus_error_name and
	 * GErrors specified by error_domain and error_code.
	 * This is typically done in the routine that returns the GQuark for
	 * an error domain.
	 * Since 2.26
	 * Params:
	 * errorDomain = A GQuark for a error domain.
	 * errorCode = An error code.
	 * dbusErrorName = A D-Bus error name.
	 * Returns: TRUE if the association was created, FALSE if it already exists.
	 */
	public static int registerError(GQuark errorDomain, int errorCode, string dbusErrorName)
	{
		// gboolean g_dbus_error_register_error (GQuark error_domain,  gint error_code,  const gchar *dbus_error_name);
		return g_dbus_error_register_error(errorDomain, errorCode, Str.toStringz(dbusErrorName));
	}
	
	/**
	 * Destroys an association previously set up with g_dbus_error_register_error().
	 * Since 2.26
	 * Params:
	 * errorDomain = A GQuark for a error domain.
	 * errorCode = An error code.
	 * dbusErrorName = A D-Bus error name.
	 * Returns: TRUE if the association was destroyed, FALSE if it wasn't found.
	 */
	public static int unregisterError(GQuark errorDomain, int errorCode, string dbusErrorName)
	{
		// gboolean g_dbus_error_unregister_error (GQuark error_domain,  gint error_code,  const gchar *dbus_error_name);
		return g_dbus_error_unregister_error(errorDomain, errorCode, Str.toStringz(dbusErrorName));
	}
	
	/**
	 * Creates a GError based on the contents of dbus_error_name and
	 * dbus_error_message.
	 * Errors registered with g_dbus_error_register_error() will be looked
	 * up using dbus_error_name and if a match is found, the error domain
	 * and code is used. Applications can use g_dbus_error_get_remote_error()
	 * to recover dbus_error_name.
	 * If a match against a registered error is not found and the D-Bus
	 * error name is in a form as returned by g_dbus_error_encode_gerror()
	 * the error domain and code encoded in the name is used to
	 * create the GError. Also, dbus_error_name is added to the error message
	 * such that it can be recovered with g_dbus_error_get_remote_error().
	 * Otherwise, a GError with the error code G_IO_ERROR_DBUS_ERROR
	 * in the G_IO_ERROR error domain is returned. Also, dbus_error_name is
	 * added to the error message such that it can be recovered with
	 * g_dbus_error_get_remote_error().
	 * In all three cases, dbus_error_name can always be recovered from the
	 * returned GError using the g_dbus_error_get_remote_error() function
	 * (unless g_dbus_error_strip_remote_error() hasn't been used on the returned error).
	 * This function is typically only used in object mappings to prepare
	 * GError instances for applications. Regular applications should not use
	 * it.
	 * Since 2.26
	 * Params:
	 * dbusErrorName = D-Bus error name.
	 * dbusErrorMessage = D-Bus error message.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string dbusErrorName, string dbusErrorMessage)
	{
		// GError * g_dbus_error_new_for_dbus_error (const gchar *dbus_error_name,  const gchar *dbus_error_message);
		auto p = g_dbus_error_new_for_dbus_error(Str.toStringz(dbusErrorName), Str.toStringz(dbusErrorMessage));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_error_new_for_dbus_error(Str.toStringz(dbusErrorName), Str.toStringz(dbusErrorMessage))");
		}
		this(cast(GError*) p);
	}
	
	/**
	 * Like g_dbus_error_set_dbus_error() but intended for language bindings.
	 * Since 2.26
	 * Params:
	 * error = A pointer to a GError or NULL.
	 * dbusErrorName = D-Bus error name.
	 * dbusErrorMessage = D-Bus error message.
	 * format = printf()-style format to prepend to dbus_error_message or NULL. [allow-none]
	 * varArgs = Arguments for format.
	 */
	public static void setDbusErrorValist(out ErrorG error, string dbusErrorName, string dbusErrorMessage, string format, void* varArgs)
	{
		// void g_dbus_error_set_dbus_error_valist (GError **error,  const gchar *dbus_error_name,  const gchar *dbus_error_message,  const gchar *format,  va_list var_args);
		GError* outerror = null;
		
		g_dbus_error_set_dbus_error_valist(&outerror, Str.toStringz(dbusErrorName), Str.toStringz(dbusErrorMessage), Str.toStringz(format), varArgs);
		
		error = ObjectG.getDObject!(ErrorG)(outerror);
	}
	
	/**
	 * Creates a D-Bus error name to use for error. If error matches
	 * a registered error (cf. g_dbus_error_register_error()), the corresponding
	 * D-Bus error name will be returned.
	 * Otherwise the a name of the form
	 * org.gtk.GDBus.UnmappedGError.Quark._ESCAPED_QUARK_NAME.Code_ERROR_CODE
	 * will be used. This allows other GDBus applications to map the error
	 * on the wire back to a GError using g_dbus_error_new_for_dbus_error().
	 * This function is typically only used in object mappings to put a
	 * GError on the wire. Regular applications should not use it.
	 * Since 2.26
	 * Params:
	 * error = A GError.
	 * Returns: A D-Bus error name (never NULL). Free with g_free().
	 */
	public string encodeGerror()
	{
		// gchar * g_dbus_error_encode_gerror (const GError *error);
		return Str.toString(g_dbus_error_encode_gerror(gError));
	}
}
