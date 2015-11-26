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


module gio.TlsPassword;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * Holds a password used in TLS.
 *
 * Since: 2.30
 */
public class TlsPassword : ObjectG
{
	/** the main Gtk struct */
	protected GTlsPassword* gTlsPassword;

	/** Get the main Gtk struct */
	public GTlsPassword* getTlsPasswordStruct()
	{
		return gTlsPassword;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsPassword;
	}

	protected override void setStruct(GObject* obj)
	{
		gTlsPassword = cast(GTlsPassword*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTlsPassword* gTlsPassword, bool ownedRef = false)
	{
		this.gTlsPassword = gTlsPassword;
		super(cast(GObject*)gTlsPassword, ownedRef);
	}


	public static GType getType()
	{
		return g_tls_password_get_type();
	}

	/**
	 * Create a new #GTlsPassword object.
	 *
	 * Params:
	 *     flags = the password flags
	 *     description = description of what the password is for
	 *
	 * Return: The newly allocated password object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GTlsPasswordFlags flags, string description)
	{
		auto p = g_tls_password_new(flags, Str.toStringz(description));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GTlsPassword*) p, true);
	}

	/**
	 * Get a description string about what the password will be used for.
	 *
	 * Return: The description of the password.
	 *
	 * Since: 2.30
	 */
	public string getDescription()
	{
		return Str.toString(g_tls_password_get_description(gTlsPassword));
	}

	/**
	 * Get flags about the password.
	 *
	 * Return: The flags about the password.
	 *
	 * Since: 2.30
	 */
	public GTlsPasswordFlags getFlags()
	{
		return g_tls_password_get_flags(gTlsPassword);
	}

	/**
	 * Get the password value. If @length is not %NULL then it will be
	 * filled in with the length of the password value. (Note that the
	 * password value is not nul-terminated, so you can only pass %NULL
	 * for @length in contexts where you know the password will have a
	 * certain fixed length.)
	 *
	 * Return: The password value (owned by the password object).
	 *
	 * Since: 2.30
	 */
	public char[] getValue()
	{
		size_t length;
		
		auto p = g_tls_password_get_value(gTlsPassword, &length);
		
		return p[0 .. length];
	}

	/**
	 * Get a user readable translated warning. Usually this warning is a
	 * representation of the password flags returned from
	 * g_tls_password_get_flags().
	 *
	 * Return: The warning.
	 *
	 * Since: 2.30
	 */
	public string getWarning()
	{
		return Str.toString(g_tls_password_get_warning(gTlsPassword));
	}

	/**
	 * Set a description string about what the password will be used for.
	 *
	 * Params:
	 *     description = The description of the password
	 *
	 * Since: 2.30
	 */
	public void setDescription(string description)
	{
		g_tls_password_set_description(gTlsPassword, Str.toStringz(description));
	}

	/**
	 * Set flags about the password.
	 *
	 * Params:
	 *     flags = The flags about the password
	 *
	 * Since: 2.30
	 */
	public void setFlags(GTlsPasswordFlags flags)
	{
		g_tls_password_set_flags(gTlsPassword, flags);
	}

	/**
	 * Set the value for this password. The @value will be copied by the password
	 * object.
	 *
	 * Specify the @length, for a non-nul-terminated password. Pass -1 as
	 * @length if using a nul-terminated password, and @length will be
	 * calculated automatically. (Note that the terminating nul is not
	 * considered part of the password in this case.)
	 *
	 * Params:
	 *     value = the new password value
	 *     length = the length of the password, or -1
	 *
	 * Since: 2.30
	 */
	public void setValue(char[] value)
	{
		g_tls_password_set_value(gTlsPassword, value.ptr, cast(ptrdiff_t)value.length);
	}

	/**
	 * Provide the value for this password.
	 *
	 * The @value will be owned by the password object, and later freed using
	 * the @destroy function callback.
	 *
	 * Specify the @length, for a non-nul-terminated password. Pass -1 as
	 * @length if using a nul-terminated password, and @length will be
	 * calculated automatically. (Note that the terminating nul is not
	 * considered part of the password in this case.)
	 *
	 * Params:
	 *     value = the value for the password
	 *     length = the length of the password, or -1
	 *     destroy = a function to use to free the password.
	 *
	 * Since: 2.30
	 */
	public void setValueFull(char[] value, GDestroyNotify destroy)
	{
		g_tls_password_set_value_full(gTlsPassword, value.ptr, cast(ptrdiff_t)value.length, destroy);
	}

	/**
	 * Set a user readable translated warning. Usually this warning is a
	 * representation of the password flags returned from
	 * g_tls_password_get_flags().
	 *
	 * Params:
	 *     warning = The user readable warning
	 *
	 * Since: 2.30
	 */
	public void setWarning(string warning)
	{
		g_tls_password_set_warning(gTlsPassword, Str.toStringz(warning));
	}
}
