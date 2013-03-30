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
 * inFile  = GCredentials.html
 * outPack = gio
 * outFile = Credentials
 * strct   = GCredentials
 * realStrct=
 * ctorStrct=
 * clss    = Credentials
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_credentials_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * 	- GCredentials* -> Credentials
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gio.Credentials;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;



private import gobject.ObjectG;

/**
 * The GCredentials type is a reference-counted wrapper for native
 * credentials. This information is typically used for identifying,
 * authenticating and authorizing other processes.
 *
 * Some operating systems supports looking up the credentials of the
 * remote peer of a communication endpoint - see e.g.
 * g_socket_get_credentials().
 *
 * Some operating systems supports securely sending and receiving
 * credentials over a Unix Domain Socket, see
 * GUnixCredentialsMessage, g_unix_connection_send_credentials() and
 * g_unix_connection_receive_credentials() for details.
 *
 * On Linux, the native credential type is a struct ucred
 *
 * see the
 * unix(7)
 * man page for details. This corresponds to
 * G_CREDENTIALS_TYPE_LINUX_UCRED.
 *
 * On FreeBSD, the native credential type is a struct cmsgcred.
 * This corresponds to G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED.
 *
 * On OpenBSD, the native credential type is a struct sockpeercred.
 * This corresponds to G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED.
 */
public class Credentials : ObjectG
{
	
	/** the main Gtk struct */
	protected GCredentials* gCredentials;
	
	
	public GCredentials* getCredentialsStruct()
	{
		return gCredentials;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gCredentials;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GCredentials* gCredentials)
	{
		super(cast(GObject*)gCredentials);
		this.gCredentials = gCredentials;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gCredentials = cast(GCredentials*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GCredentials object with credentials matching the
	 * the current process.
	 * Since 2.26
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GCredentials * g_credentials_new (void);
		auto p = g_credentials_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_credentials_new()");
		}
		this(cast(GCredentials*) p);
	}
	
	/**
	 * Creates a human-readable textual representation of credentials
	 * that can be used in logging and debug messages. The format of the
	 * returned string may change in future GLib release.
	 * Since 2.26
	 * Returns: A string that should be freed with g_free().
	 */
	public override string toString()
	{
		// gchar * g_credentials_to_string (GCredentials *credentials);
		return Str.toString(g_credentials_to_string(gCredentials));
	}
	
	/**
	 * Gets a pointer to native credentials of type native_type from
	 * credentials.
	 * It is a programming error (which will cause an warning to be
	 * logged) to use this method if there is no GCredentials support for
	 * the OS or if native_type isn't supported by the OS.
	 * Since 2.26
	 * Params:
	 * nativeType = The type of native credentials to get.
	 * Returns: The pointer to native credentials or NULL if the operation there is no GCredentials support for the OS or if native_type isn't supported by the OS. Do not free the returned data, it is owned by credentials.
	 */
	public void* getNative(GCredentialsType nativeType)
	{
		// gpointer g_credentials_get_native (GCredentials *credentials,  GCredentialsType native_type);
		return g_credentials_get_native(gCredentials, nativeType);
	}
	
	/**
	 * Copies the native credentials of type native_type from native
	 * into credentials.
	 * It is a programming error (which will cause an warning to be
	 * logged) to use this method if there is no GCredentials support for
	 * the OS or if native_type isn't supported by the OS.
	 * Since 2.26
	 * Params:
	 * nativeType = The type of native credentials to set.
	 * native = A pointer to native credentials.
	 */
	public void setNative(GCredentialsType nativeType, void* native)
	{
		// void g_credentials_set_native (GCredentials *credentials,  GCredentialsType native_type,  gpointer native);
		g_credentials_set_native(gCredentials, nativeType, native);
	}
	
	/**
	 * Checks if credentials and other_credentials is the same user.
	 * This operation can fail if GCredentials is not supported on the
	 * the OS.
	 * Since 2.26
	 * Params:
	 * otherCredentials = A GCredentials.
	 * Returns: TRUE if credentials and other_credentials has the same user, FALSE otherwise or if error is set.
	 * Throws: GException on failure.
	 */
	public int isSameUser(Credentials otherCredentials)
	{
		// gboolean g_credentials_is_same_user (GCredentials *credentials,  GCredentials *other_credentials,  GError **error);
		GError* err = null;
		
		auto p = g_credentials_is_same_user(gCredentials, (otherCredentials is null) ? null : otherCredentials.getCredentialsStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Tries to get the UNIX user identifier from credentials. This
	 * method is only available on UNIX platforms.
	 * This operation can fail if GCredentials is not supported on the
	 * OS or if the native credentials type does not contain information
	 * about the UNIX user.
	 * Since 2.26
	 * Returns: The UNIX user identifier or -1 if error is set.
	 * Throws: GException on failure.
	 */
	public uid_t getUnixUser()
	{
		// uid_t g_credentials_get_unix_user (GCredentials *credentials,  GError **error);
		GError* err = null;
		
		auto p = g_credentials_get_unix_user(gCredentials, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Tries to set the UNIX user identifier on credentials. This method
	 * is only available on UNIX platforms.
	 * This operation can fail if GCredentials is not supported on the
	 * OS or if the native credentials type does not contain information
	 * about the UNIX user.
	 * Since 2.26
	 * Params:
	 * uid = The UNIX user identifier to set.
	 * Returns: TRUE if uid was set, FALSE if error is set.
	 * Throws: GException on failure.
	 */
	public int setUnixUser(uid_t uid)
	{
		// gboolean g_credentials_set_unix_user (GCredentials *credentials,  uid_t uid,  GError **error);
		GError* err = null;
		
		auto p = g_credentials_set_unix_user(gCredentials, uid, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Tries to get the UNIX process identifier from credentials. This
	 * method is only available on UNIX platforms.
	 * This operation can fail if GCredentials is not supported on the
	 * OS or if the native credentials type does not contain information
	 * about the UNIX process ID.
	 * Since 2.36
	 * Returns: The UNIX process ID, or -1 if error is set.
	 * Throws: GException on failure.
	 */
	public pid_t getUnixPid()
	{
		// pid_t g_credentials_get_unix_pid (GCredentials *credentials,  GError **error);
		GError* err = null;
		
		auto p = g_credentials_get_unix_pid(gCredentials, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
