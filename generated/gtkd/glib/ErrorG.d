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


module glib.ErrorG;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;


/**
 * The `GError` structure contains information about
 * an error that has occurred.
 */
public class ErrorG
{
	/** the main Gtk struct */
	protected GError* gError;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GError* getErrorGStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gError;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gError;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GError* gError, bool ownedRef = false)
	{
		this.gError = gError;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			g_error_free(gError);
	}


	/**
	 * Creates a new #GError; unlike g_error_new(), @message is
	 * not a printf()-style format string. Use this function if
	 * @message contains text you don't have control over,
	 * that could include printf() escape sequences.
	 *
	 * Params:
	 *     domain = error domain
	 *     code = error code
	 *     message = error message
	 *
	 * Returns: a new #GError
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GQuark domain, int code, string message)
	{
		auto __p = g_error_new_literal(domain, code, Str.toStringz(message));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_literal");
		}

		this(cast(GError*) __p);
	}

	/**
	 * Creates a new #GError with the given @domain and @code,
	 * and a message formatted with @format.
	 *
	 * Params:
	 *     domain = error domain
	 *     code = error code
	 *     format = printf()-style format for error message
	 *     args = #va_list of parameters for the message format
	 *
	 * Returns: a new #GError
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GQuark domain, int code, string format, void* args)
	{
		auto __p = g_error_new_valist(domain, code, Str.toStringz(format), args);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_valist");
		}

		this(cast(GError*) __p);
	}

	/**
	 * Makes a copy of @error.
	 *
	 * Returns: a new #GError
	 */
	public ErrorG copy()
	{
		auto __p = g_error_copy(gError);

		if(__p is null)
		{
			return null;
		}

		return new ErrorG(cast(GError*) __p, true);
	}

	/**
	 * Frees a #GError and associated resources.
	 */
	public void free()
	{
		g_error_free(gError);
		ownedRef = false;
	}

	/**
	 * Returns %TRUE if @error matches @domain and @code, %FALSE
	 * otherwise. In particular, when @error is %NULL, %FALSE will
	 * be returned.
	 *
	 * If @domain contains a `FAILED` (or otherwise generic) error code,
	 * you should generally not check for it explicitly, but should
	 * instead treat any not-explicitly-recognized error code as being
	 * equivalent to the `FAILED` code. This way, if the domain is
	 * extended in the future to provide a more specific error code for
	 * a certain case, your code will still work.
	 *
	 * Params:
	 *     domain = an error domain
	 *     code = an error code
	 *
	 * Returns: whether @error has @domain and @code
	 */
	public bool matches(GQuark domain, int code)
	{
		return g_error_matches(gError, domain, code) != 0;
	}

	/**
	 * This function registers an extended #GError domain.
	 * @error_type_name will be duplicated. Otherwise does the same as
	 * g_error_domain_register_static().
	 *
	 * Params:
	 *     errorTypeName = string to create a #GQuark from
	 *     errorTypePrivateSize = size of the private error data in bytes
	 *     errorTypeInit = function initializing fields of the private error data
	 *     errorTypeCopy = function copying fields of the private error data
	 *     errorTypeClear = function freeing fields of the private error data
	 *
	 * Returns: #GQuark representing the error domain
	 *
	 * Since: 2.68
	 */
	public static GQuark domainRegister(string errorTypeName, size_t errorTypePrivateSize, GErrorInitFunc errorTypeInit, GErrorCopyFunc errorTypeCopy, GErrorClearFunc errorTypeClear)
	{
		return g_error_domain_register(Str.toStringz(errorTypeName), errorTypePrivateSize, errorTypeInit, errorTypeCopy, errorTypeClear);
	}

	/**
	 * This function registers an extended #GError domain.
	 *
	 * @error_type_name should not be freed. @error_type_private_size must
	 * be greater than 0.
	 *
	 * @error_type_init receives an initialized #GError and should then initialize
	 * the private data.
	 *
	 * @error_type_copy is a function that receives both original and a copy
	 * #GError and should copy the fields of the private error data. The standard
	 * #GError fields are already handled.
	 *
	 * @error_type_clear receives the pointer to the error, and it should free the
	 * fields of the private error data. It should not free the struct itself though.
	 *
	 * Normally, it is better to use G_DEFINE_EXTENDED_ERROR(), as it
	 * already takes care of passing valid information to this function.
	 *
	 * Params:
	 *     errorTypeName = static string to create a #GQuark from
	 *     errorTypePrivateSize = size of the private error data in bytes
	 *     errorTypeInit = function initializing fields of the private error data
	 *     errorTypeCopy = function copying fields of the private error data
	 *     errorTypeClear = function freeing fields of the private error data
	 *
	 * Returns: #GQuark representing the error domain
	 *
	 * Since: 2.68
	 */
	public static GQuark domainRegisterStatic(string errorTypeName, size_t errorTypePrivateSize, GErrorInitFunc errorTypeInit, GErrorCopyFunc errorTypeCopy, GErrorClearFunc errorTypeClear)
	{
		return g_error_domain_register_static(Str.toStringz(errorTypeName), errorTypePrivateSize, errorTypeInit, errorTypeCopy, errorTypeClear);
	}

	/**
	 * If @dest is %NULL, free @src; otherwise, moves @src into *@dest.
	 * The error variable @dest points to must be %NULL.
	 *
	 * @src must be non-%NULL.
	 *
	 * Note that @src is no longer valid after this call. If you want
	 * to keep using the same GError*, you need to set it to %NULL
	 * after calling this function on it.
	 *
	 * Params:
	 *     dest = error return location
	 *     src = error to move into the return location
	 */
	public static void propagateError(out ErrorG dest, ErrorG src)
	{
		GError* outdest = null;

		g_propagate_error(&outdest, (src is null) ? null : src.getErrorGStruct(true));

		dest = new ErrorG(outdest);
	}

	/**
	 * Does nothing if @err is %NULL; if @err is non-%NULL, then *@err
	 * must be %NULL. A new #GError is created and assigned to *@err.
	 * Unlike g_set_error(), @message is not a printf()-style format string.
	 * Use this function if @message contains text you don't have control over,
	 * that could include printf() escape sequences.
	 *
	 * Params:
	 *     err = a return location for a #GError
	 *     domain = error domain
	 *     code = error code
	 *     message = error message
	 *
	 * Since: 2.18
	 */
	public static void setErrorLiteral(out ErrorG err, GQuark domain, int code, string message)
	{
		GError* outerr = null;

		g_set_error_literal(&outerr, domain, code, Str.toStringz(message));

		err = new ErrorG(outerr);
	}
}
