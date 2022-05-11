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


module gio.Credentials;

private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * The #GCredentials type is a reference-counted wrapper for native
 * credentials. This information is typically used for identifying,
 * authenticating and authorizing other processes.
 * 
 * Some operating systems supports looking up the credentials of the
 * remote peer of a communication endpoint - see e.g.
 * g_socket_get_credentials().
 * 
 * Some operating systems supports securely sending and receiving
 * credentials over a Unix Domain Socket, see
 * #GUnixCredentialsMessage, g_unix_connection_send_credentials() and
 * g_unix_connection_receive_credentials() for details.
 * 
 * On Linux, the native credential type is a `struct ucred` - see the
 * unix(7) man page for details. This corresponds to
 * %G_CREDENTIALS_TYPE_LINUX_UCRED.
 * 
 * On Apple operating systems (including iOS, tvOS, and macOS),
 * the native credential type is a `struct xucred`.
 * This corresponds to %G_CREDENTIALS_TYPE_APPLE_XUCRED.
 * 
 * On FreeBSD, Debian GNU/kFreeBSD, and GNU/Hurd, the native
 * credential type is a `struct cmsgcred`. This corresponds
 * to %G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED.
 * 
 * On NetBSD, the native credential type is a `struct unpcbid`.
 * This corresponds to %G_CREDENTIALS_TYPE_NETBSD_UNPCBID.
 * 
 * On OpenBSD, the native credential type is a `struct sockpeercred`.
 * This corresponds to %G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED.
 * 
 * On Solaris (including OpenSolaris and its derivatives), the native
 * credential type is a `ucred_t`. This corresponds to
 * %G_CREDENTIALS_TYPE_SOLARIS_UCRED.
 * 
 * Since GLib 2.72, on Windows, the native credentials may contain the PID of a
 * process. This corresponds to %G_CREDENTIALS_TYPE_WIN32_PID.
 *
 * Since: 2.26
 */
public class Credentials : ObjectG
{
	/** the main Gtk struct */
	protected GCredentials* gCredentials;

	/** Get the main Gtk struct */
	public GCredentials* getCredentialsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gCredentials;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gCredentials;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GCredentials* gCredentials, bool ownedRef = false)
	{
		this.gCredentials = gCredentials;
		super(cast(GObject*)gCredentials, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_credentials_get_type();
	}

	/**
	 * Creates a new #GCredentials object with credentials matching the
	 * the current process.
	 *
	 * Returns: A #GCredentials. Free with g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_credentials_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GCredentials*) __p, true);
	}

	/**
	 * Gets a pointer to native credentials of type @native_type from
	 * @credentials.
	 *
	 * It is a programming error (which will cause a warning to be
	 * logged) to use this method if there is no #GCredentials support for
	 * the OS or if @native_type isn't supported by the OS.
	 *
	 * Params:
	 *     nativeType = The type of native credentials to get.
	 *
	 * Returns: The pointer to native credentials or
	 *     %NULL if there is no #GCredentials support for the OS or if @native_type
	 *     isn't supported by the OS. Do not free the returned data, it is owned
	 *     by @credentials.
	 *
	 * Since: 2.26
	 */
	public void* getNative(GCredentialsType nativeType)
	{
		return g_credentials_get_native(gCredentials, nativeType);
	}

	/**
	 * Tries to get the UNIX process identifier from @credentials. This
	 * method is only available on UNIX platforms.
	 *
	 * This operation can fail if #GCredentials is not supported on the
	 * OS or if the native credentials type does not contain information
	 * about the UNIX process ID.
	 *
	 * Returns: The UNIX process ID, or `-1` if @error is set.
	 *
	 * Since: 2.36
	 *
	 * Throws: GException on failure.
	 */
	public pid_t getUnixPid()
	{
		GError* err = null;

		auto __p = g_credentials_get_unix_pid(gCredentials, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Tries to get the UNIX user identifier from @credentials. This
	 * method is only available on UNIX platforms.
	 *
	 * This operation can fail if #GCredentials is not supported on the
	 * OS or if the native credentials type does not contain information
	 * about the UNIX user.
	 *
	 * Returns: The UNIX user identifier or `-1` if @error is set.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public uid_t getUnixUser()
	{
		GError* err = null;

		auto __p = g_credentials_get_unix_user(gCredentials, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Checks if @credentials and @other_credentials is the same user.
	 *
	 * This operation can fail if #GCredentials is not supported on the
	 * the OS.
	 *
	 * Params:
	 *     otherCredentials = A #GCredentials.
	 *
	 * Returns: %TRUE if @credentials and @other_credentials has the same
	 *     user, %FALSE otherwise or if @error is set.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public bool isSameUser(Credentials otherCredentials)
	{
		GError* err = null;

		auto __p = g_credentials_is_same_user(gCredentials, (otherCredentials is null) ? null : otherCredentials.getCredentialsStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Copies the native credentials of type @native_type from @native
	 * into @credentials.
	 *
	 * It is a programming error (which will cause a warning to be
	 * logged) to use this method if there is no #GCredentials support for
	 * the OS or if @native_type isn't supported by the OS.
	 *
	 * Params:
	 *     nativeType = The type of native credentials to set.
	 *     native = A pointer to native credentials.
	 *
	 * Since: 2.26
	 */
	public void setNative(GCredentialsType nativeType, void* native)
	{
		g_credentials_set_native(gCredentials, nativeType, native);
	}

	/**
	 * Tries to set the UNIX user identifier on @credentials. This method
	 * is only available on UNIX platforms.
	 *
	 * This operation can fail if #GCredentials is not supported on the
	 * OS or if the native credentials type does not contain information
	 * about the UNIX user. It can also fail if the OS does not allow the
	 * use of "spoofed" credentials.
	 *
	 * Params:
	 *     uid = The UNIX user identifier to set.
	 *
	 * Returns: %TRUE if @uid was set, %FALSE if error is set.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public bool setUnixUser(uid_t uid)
	{
		GError* err = null;

		auto __p = g_credentials_set_unix_user(gCredentials, uid, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Creates a human-readable textual representation of @credentials
	 * that can be used in logging and debug messages. The format of the
	 * returned string may change in future GLib release.
	 *
	 * Returns: A string that should be freed with g_free().
	 *
	 * Since: 2.26
	 */
	public override string toString()
	{
		auto retStr = g_credentials_to_string(gCredentials);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
