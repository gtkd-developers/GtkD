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


module gio.DBusMethodInvocation;

private import gio.DBusConnection;
private import gio.DBusMessage;
private import gio.DBusMethodInfo;
private import gio.DBusPropertyInfo;
private import gio.UnixFDList;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.Str;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Instances of the #GDBusMethodInvocation class are used when
 * handling D-Bus method calls. It provides a way to asynchronously
 * return results and errors.
 * 
 * The normal way to obtain a #GDBusMethodInvocation object is to receive
 * it as an argument to the handle_method_call() function in a
 * #GDBusInterfaceVTable that was passed to g_dbus_connection_register_object().
 *
 * Since: 2.26
 */
public class DBusMethodInvocation : ObjectG
{
	/** the main Gtk struct */
	protected GDBusMethodInvocation* gDBusMethodInvocation;

	/** Get the main Gtk struct */
	public GDBusMethodInvocation* getDBusMethodInvocationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusMethodInvocation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusMethodInvocation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusMethodInvocation* gDBusMethodInvocation, bool ownedRef = false)
	{
		this.gDBusMethodInvocation = gDBusMethodInvocation;
		super(cast(GObject*)gDBusMethodInvocation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_dbus_method_invocation_get_type();
	}

	/**
	 * Gets the #GDBusConnection the method was invoked on.
	 *
	 * Returns: A #GDBusConnection. Do not free, it is owned by @invocation.
	 *
	 * Since: 2.26
	 */
	public DBusConnection getConnection()
	{
		auto __p = g_dbus_method_invocation_get_connection(gDBusMethodInvocation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) __p);
	}

	/**
	 * Gets the name of the D-Bus interface the method was invoked on.
	 *
	 * If this method call is a property Get, Set or GetAll call that has
	 * been redirected to the method call handler then
	 * "org.freedesktop.DBus.Properties" will be returned.  See
	 * #GDBusInterfaceVTable for more information.
	 *
	 * Returns: A string. Do not free, it is owned by @invocation.
	 *
	 * Since: 2.26
	 */
	public string getInterfaceName()
	{
		return Str.toString(g_dbus_method_invocation_get_interface_name(gDBusMethodInvocation));
	}

	/**
	 * Gets the #GDBusMessage for the method invocation. This is useful if
	 * you need to use low-level protocol features, such as UNIX file
	 * descriptor passing, that cannot be properly expressed in the
	 * #GVariant API.
	 *
	 * See this [server][gdbus-server] and [client][gdbus-unix-fd-client]
	 * for an example of how to use this low-level API to send and receive
	 * UNIX file descriptors.
	 *
	 * Returns: #GDBusMessage. Do not free, it is owned by @invocation.
	 *
	 * Since: 2.26
	 */
	public DBusMessage getMessage()
	{
		auto __p = g_dbus_method_invocation_get_message(gDBusMethodInvocation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusMessage)(cast(GDBusMessage*) __p);
	}

	/**
	 * Gets information about the method call, if any.
	 *
	 * If this method invocation is a property Get, Set or GetAll call that
	 * has been redirected to the method call handler then %NULL will be
	 * returned.  See g_dbus_method_invocation_get_property_info() and
	 * #GDBusInterfaceVTable for more information.
	 *
	 * Returns: A #GDBusMethodInfo or %NULL. Do not free, it is owned by @invocation.
	 *
	 * Since: 2.26
	 */
	public DBusMethodInfo getMethodInfo()
	{
		auto __p = g_dbus_method_invocation_get_method_info(gDBusMethodInvocation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusMethodInfo)(cast(GDBusMethodInfo*) __p);
	}

	/**
	 * Gets the name of the method that was invoked.
	 *
	 * Returns: A string. Do not free, it is owned by @invocation.
	 *
	 * Since: 2.26
	 */
	public string getMethodName()
	{
		return Str.toString(g_dbus_method_invocation_get_method_name(gDBusMethodInvocation));
	}

	/**
	 * Gets the object path the method was invoked on.
	 *
	 * Returns: A string. Do not free, it is owned by @invocation.
	 *
	 * Since: 2.26
	 */
	public string getObjectPath()
	{
		return Str.toString(g_dbus_method_invocation_get_object_path(gDBusMethodInvocation));
	}

	/**
	 * Gets the parameters of the method invocation. If there are no input
	 * parameters then this will return a GVariant with 0 children rather than NULL.
	 *
	 * Returns: A #GVariant tuple. Do not unref this because it is owned by @invocation.
	 *
	 * Since: 2.26
	 */
	public Variant getParameters()
	{
		auto __p = g_dbus_method_invocation_get_parameters(gDBusMethodInvocation);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * Gets information about the property that this method call is for, if
	 * any.
	 *
	 * This will only be set in the case of an invocation in response to a
	 * property Get or Set call that has been directed to the method call
	 * handler for an object on account of its property_get() or
	 * property_set() vtable pointers being unset.
	 *
	 * See #GDBusInterfaceVTable for more information.
	 *
	 * If the call was GetAll, %NULL will be returned.
	 *
	 * Returns: a #GDBusPropertyInfo or %NULL
	 *
	 * Since: 2.38
	 */
	public DBusPropertyInfo getPropertyInfo()
	{
		auto __p = g_dbus_method_invocation_get_property_info(gDBusMethodInvocation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusPropertyInfo)(cast(GDBusPropertyInfo*) __p);
	}

	/**
	 * Gets the bus name that invoked the method.
	 *
	 * Returns: A string. Do not free, it is owned by @invocation.
	 *
	 * Since: 2.26
	 */
	public string getSender()
	{
		return Str.toString(g_dbus_method_invocation_get_sender(gDBusMethodInvocation));
	}

	/**
	 * Gets the @user_data #gpointer passed to g_dbus_connection_register_object().
	 *
	 * Returns: A #gpointer.
	 *
	 * Since: 2.26
	 */
	public void* getUserData()
	{
		return g_dbus_method_invocation_get_user_data(gDBusMethodInvocation);
	}

	/**
	 * Finishes handling a D-Bus method call by returning an error.
	 *
	 * This method will take ownership of @invocation. See
	 * #GDBusInterfaceVTable for more information about the ownership of
	 * @invocation.
	 *
	 * Params:
	 *     errorName = A valid D-Bus error name.
	 *     errorMessage = A valid D-Bus error message.
	 *
	 * Since: 2.26
	 */
	public void returnDbusError(string errorName, string errorMessage)
	{
		g_dbus_method_invocation_return_dbus_error(gDBusMethodInvocation, Str.toStringz(errorName), Str.toStringz(errorMessage));
	}

	/**
	 * Like g_dbus_method_invocation_return_error() but without printf()-style formatting.
	 *
	 * This method will take ownership of @invocation. See
	 * #GDBusInterfaceVTable for more information about the ownership of
	 * @invocation.
	 *
	 * Params:
	 *     domain = A #GQuark for the #GError error domain.
	 *     code = The error code.
	 *     message = The error message.
	 *
	 * Since: 2.26
	 */
	public void returnErrorLiteral(GQuark domain, int code, string message)
	{
		g_dbus_method_invocation_return_error_literal(gDBusMethodInvocation, domain, code, Str.toStringz(message));
	}

	/**
	 * Like g_dbus_method_invocation_return_error() but intended for
	 * language bindings.
	 *
	 * This method will take ownership of @invocation. See
	 * #GDBusInterfaceVTable for more information about the ownership of
	 * @invocation.
	 *
	 * Params:
	 *     domain = A #GQuark for the #GError error domain.
	 *     code = The error code.
	 *     format = printf()-style format.
	 *     varArgs = #va_list of parameters for @format.
	 *
	 * Since: 2.26
	 */
	public void returnErrorValist(GQuark domain, int code, string format, void* varArgs)
	{
		g_dbus_method_invocation_return_error_valist(gDBusMethodInvocation, domain, code, Str.toStringz(format), varArgs);
	}

	/**
	 * Like g_dbus_method_invocation_return_error() but takes a #GError
	 * instead of the error domain, error code and message.
	 *
	 * This method will take ownership of @invocation. See
	 * #GDBusInterfaceVTable for more information about the ownership of
	 * @invocation.
	 *
	 * Params:
	 *     error = A #GError.
	 *
	 * Since: 2.26
	 */
	public void returnGerror(ErrorG error)
	{
		g_dbus_method_invocation_return_gerror(gDBusMethodInvocation, (error is null) ? null : error.getErrorGStruct());
	}

	/**
	 * Finishes handling a D-Bus method call by returning @parameters.
	 * If the @parameters GVariant is floating, it is consumed.
	 *
	 * It is an error if @parameters is not of the right format: it must be a tuple
	 * containing the out-parameters of the D-Bus method. Even if the method has a
	 * single out-parameter, it must be contained in a tuple. If the method has no
	 * out-parameters, @parameters may be %NULL or an empty tuple.
	 *
	 * |[<!-- language="C" -->
	 * GDBusMethodInvocation *invocation = some_invocation;
	 * g_autofree gchar *result_string = NULL;
	 * g_autoptr (GError) error = NULL;
	 *
	 * result_string = calculate_result (&error);
	 *
	 * if (error != NULL)
	 * g_dbus_method_invocation_return_gerror (invocation, error);
	 * else
	 * g_dbus_method_invocation_return_value (invocation,
	 * g_variant_new ("(s)", result_string));
	 *
	 * // Do not free @invocation here; returning a value does that
	 * ]|
	 *
	 * This method will take ownership of @invocation. See
	 * #GDBusInterfaceVTable for more information about the ownership of
	 * @invocation.
	 *
	 * Since 2.48, if the method call requested for a reply not to be sent
	 * then this call will sink @parameters and free @invocation, but
	 * otherwise do nothing (as per the recommendations of the D-Bus
	 * specification).
	 *
	 * Params:
	 *     parameters = A #GVariant tuple with out parameters for the method or %NULL if not passing any parameters.
	 *
	 * Since: 2.26
	 */
	public void returnValue(Variant parameters)
	{
		g_dbus_method_invocation_return_value(gDBusMethodInvocation, (parameters is null) ? null : parameters.getVariantStruct());
	}

	/**
	 * Like g_dbus_method_invocation_return_value() but also takes a #GUnixFDList.
	 *
	 * This method is only available on UNIX.
	 *
	 * This method will take ownership of @invocation. See
	 * #GDBusInterfaceVTable for more information about the ownership of
	 * @invocation.
	 *
	 * Params:
	 *     parameters = A #GVariant tuple with out parameters for the method or %NULL if not passing any parameters.
	 *     fdList = A #GUnixFDList or %NULL.
	 *
	 * Since: 2.30
	 */
	public void returnValueWithUnixFdList(Variant parameters, UnixFDList fdList)
	{
		g_dbus_method_invocation_return_value_with_unix_fd_list(gDBusMethodInvocation, (parameters is null) ? null : parameters.getVariantStruct(), (fdList is null) ? null : fdList.getUnixFDListStruct());
	}

	/**
	 * Like g_dbus_method_invocation_return_gerror() but takes ownership
	 * of @error so the caller does not need to free it.
	 *
	 * This method will take ownership of @invocation. See
	 * #GDBusInterfaceVTable for more information about the ownership of
	 * @invocation.
	 *
	 * Params:
	 *     error = A #GError.
	 *
	 * Since: 2.30
	 */
	public void takeError(ErrorG error)
	{
		g_dbus_method_invocation_take_error(gDBusMethodInvocation, (error is null) ? null : error.getErrorGStruct(true));
	}
}
