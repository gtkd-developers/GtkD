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
 * inFile  = GTlsPassword.html
 * outPack = gio
 * outFile = TlsPassword
 * strct   = GTlsPassword
 * realStrct=
 * ctorStrct=
 * clss    = TlsPassword
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_tls_password_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.TlsPassword;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 * Holds a password used in TLS.
 */
public class TlsPassword : ObjectG
{
	
	/** the main Gtk struct */
	protected GTlsPassword* gTlsPassword;
	
	
	public GTlsPassword* getTlsPasswordStruct()
	{
		return gTlsPassword;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTlsPassword;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTlsPassword* gTlsPassword)
	{
		super(cast(GObject*)gTlsPassword);
		this.gTlsPassword = gTlsPassword;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTlsPassword = cast(GTlsPassword*)obj;
	}
	
	/**
	 */
	
	/**
	 * Create a new GTlsPassword object.
	 * Params:
	 * flags = the password flags
	 * description = description of what the password is for
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GTlsPasswordFlags flags, string description)
	{
		// GTlsPassword * g_tls_password_new (GTlsPasswordFlags flags,  const gchar *description);
		auto p = g_tls_password_new(flags, Str.toStringz(description));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_tls_password_new(flags, Str.toStringz(description))");
		}
		this(cast(GTlsPassword*) p);
	}
	
	/**
	 * Get the password value. If length is not NULL then it will be
	 * filled in with the length of the password value. (Note that the
	 * password value is not nul-terminated, so you can only pass NULL
	 * for length in contexts where you know the password will have a
	 * certain fixed length.)
	 * Since 2.30
	 * Returns: The password value (owned by the password object).
	 */
	public char[] getValue()
	{
		// const guchar * g_tls_password_get_value (GTlsPassword *password,  gsize *length);
		gsize length;
		auto p = g_tls_password_get_value(gTlsPassword, &length);
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. length];
	}
	
	/**
	 * Set the value for this password. The value will be copied by the password
	 * object.
	 * Specify the length, for a non-nul-terminated password. Pass -1 as
	 * length if using a nul-terminated password, and length will be
	 * calculated automatically. (Note that the terminating nul is not
	 * considered part of the password in this case.)
	 * Since 2.30
	 * Params:
	 * value = the new password value
	 */
	public void setValue(char[] value)
	{
		// void g_tls_password_set_value (GTlsPassword *password,  const guchar *value,  gssize length);
		g_tls_password_set_value(gTlsPassword, value.ptr, cast(int) value.length);
	}
	
	/**
	 * Provide the value for this password.
	 * The value will be owned by the password object, and later freed using
	 * the destroy function callback.
	 * Specify the length, for a non-nul-terminated password. Pass -1 as
	 * length if using a nul-terminated password, and length will be
	 * calculated automatically. (Note that the terminating nul is not
	 * considered part of the password in this case.)
	 * Virtual: set_value
	 * Since 2.30
	 * Params:
	 * value = the value for the password
	 * destroy = a function to use to free the password. [allow-none]
	 */
	public void setValueFull(char[] value, GDestroyNotify destroy)
	{
		// void g_tls_password_set_value_full (GTlsPassword *password,  guchar *value,  gssize length,  GDestroyNotify destroy);
		g_tls_password_set_value_full(gTlsPassword, value.ptr, cast(int) value.length, destroy);
	}
	
	/**
	 * Get a description string about what the password will be used for.
	 * Since 2.30
	 * Returns: The description of the password.
	 */
	public string getDescription()
	{
		// const gchar * g_tls_password_get_description (GTlsPassword *password);
		return Str.toString(g_tls_password_get_description(gTlsPassword));
	}
	
	/**
	 * Set a description string about what the password will be used for.
	 * Since 2.30
	 * Params:
	 * description = The description of the password
	 */
	public void setDescription(string description)
	{
		// void g_tls_password_set_description (GTlsPassword *password,  const gchar *description);
		g_tls_password_set_description(gTlsPassword, Str.toStringz(description));
	}
	
	/**
	 * Get flags about the password.
	 * Since 2.30
	 * Returns: The flags about the password.
	 */
	public GTlsPasswordFlags getFlags()
	{
		// GTlsPasswordFlags g_tls_password_get_flags (GTlsPassword *password);
		return g_tls_password_get_flags(gTlsPassword);
	}
	
	/**
	 * Set flags about the password.
	 * Since 2.30
	 * Params:
	 * flags = The flags about the password
	 */
	public void setFlags(GTlsPasswordFlags flags)
	{
		// void g_tls_password_set_flags (GTlsPassword *password,  GTlsPasswordFlags flags);
		g_tls_password_set_flags(gTlsPassword, flags);
	}
	
	/**
	 * Get a user readable translated warning. Usually this warning is a
	 * representation of the password flags returned from
	 * g_tls_password_get_flags().
	 * Since 2.30
	 * Returns: The warning.
	 */
	public string getWarning()
	{
		// const gchar * g_tls_password_get_warning (GTlsPassword *password);
		return Str.toString(g_tls_password_get_warning(gTlsPassword));
	}
	
	/**
	 * Set a user readable translated warning. Usually this warning is a
	 * representation of the password flags returned from
	 * g_tls_password_get_flags().
	 * Since 2.30
	 * Params:
	 * warning = The user readable warning
	 */
	public void setWarning(string warning)
	{
		// void g_tls_password_set_warning (GTlsPassword *password,  const gchar *warning);
		g_tls_password_set_warning(gTlsPassword, Str.toStringz(warning));
	}
}
