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
 * inFile  = GDBusMethodInvocation.html
 * outPack = gio
 * outFile = DBusMethodInvocation
 * strct   = GDBusMethodInvocation
 * realStrct=
 * ctorStrct=
 * clss    = DBusMethodInvocation
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dbus_method_invocation_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Variant
 * 	- gio.DBusConnection
 * 	- gio.DBusMessage
 * 	- gio.UnixFDList
 * structWrap:
 * 	- GDBusConnection* -> DBusConnection
 * 	- GDBusMessage* -> DBusMessage
 * 	- GError* -> ErrorG
 * 	- GUnixFDList* -> UnixFDList
 * 	- GVariant* -> Variant
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.DBusMethodInvocation;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.Variant;
private import gio.DBusConnection;
private import gio.DBusMessage;
private import gio.UnixFDList;



private import gobject.ObjectG;

/**
 * Description
 * Instances of the GDBusMethodInvocation class are used when
 * handling D-Bus method calls. It provides a way to asynchronously
 * return results and errors.
 * The normal way to obtain a GDBusMethodInvocation object is to receive
 * it as an argument to the handle_method_call() function in a
 * GDBusInterfaceVTable that was passed to g_dbus_connection_register_object().
 */
public class DBusMethodInvocation : ObjectG
{
	
	/** the main Gtk struct */
	protected GDBusMethodInvocation* gDBusMethodInvocation;
	
	
	public GDBusMethodInvocation* getDBusMethodInvocationStruct()
	{
		return gDBusMethodInvocation;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusMethodInvocation;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusMethodInvocation* gDBusMethodInvocation)
	{
		super(cast(GObject*)gDBusMethodInvocation);
		this.gDBusMethodInvocation = gDBusMethodInvocation;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusMethodInvocation = cast(GDBusMethodInvocation*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets the bus name that invoked the method.
	 * Since 2.26
	 * Returns: A string. Do not free, it is owned by invocation.
	 */
	public string getSender()
	{
		// const gchar * g_dbus_method_invocation_get_sender (GDBusMethodInvocation *invocation);
		return Str.toString(g_dbus_method_invocation_get_sender(gDBusMethodInvocation));
	}
	
	/**
	 * Gets the object path the method was invoked on.
	 * Since 2.26
	 * Returns: A string. Do not free, it is owned by invocation.
	 */
	public string getObjectPath()
	{
		// const gchar * g_dbus_method_invocation_get_object_path  (GDBusMethodInvocation *invocation);
		return Str.toString(g_dbus_method_invocation_get_object_path(gDBusMethodInvocation));
	}
	
	/**
	 * Gets the name of the D-Bus interface the method was invoked on.
	 * Since 2.26
	 * Returns: A string. Do not free, it is owned by invocation.
	 */
	public string getInterfaceName()
	{
		// const gchar * g_dbus_method_invocation_get_interface_name  (GDBusMethodInvocation *invocation);
		return Str.toString(g_dbus_method_invocation_get_interface_name(gDBusMethodInvocation));
	}
	
	/**
	 * Gets the name of the method that was invoked.
	 * Since 2.26
	 * Returns: A string. Do not free, it is owned by invocation.
	 */
	public string getMethodName()
	{
		// const gchar * g_dbus_method_invocation_get_method_name  (GDBusMethodInvocation *invocation);
		return Str.toString(g_dbus_method_invocation_get_method_name(gDBusMethodInvocation));
	}
	
	/**
	 * Gets information about the method call, if any.
	 * Since 2.26
	 * Returns: A GDBusMethodInfo or NULL. Do not free, it is owned by invocation.
	 */
	public GDBusMethodInfo* getMethodInfo()
	{
		// const GDBusMethodInfo * g_dbus_method_invocation_get_method_info  (GDBusMethodInvocation *invocation);
		return g_dbus_method_invocation_get_method_info(gDBusMethodInvocation);
	}
	
	/**
	 * Gets the GDBusConnection the method was invoked on.
	 * Since 2.26
	 * Returns: A GDBusConnection. Do not free, it is owned by invocation. [transfer none]
	 */
	public DBusConnection getConnection()
	{
		// GDBusConnection * g_dbus_method_invocation_get_connection  (GDBusMethodInvocation *invocation);
		auto p = g_dbus_method_invocation_get_connection(gDBusMethodInvocation);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusConnection)(cast(GDBusConnection*) p);
	}
	
	/**
	 * Gets the GDBusMessage for the method invocation. This is useful if
	 * you need to use low-level protocol features, such as UNIX file
	 * descriptor passing, that cannot be properly expressed in the
	 * GVariant API.
	 * See Example 2, “D-Bus server example” and Example 4, “D-Bus UNIX File Descriptor example” for an example of how to use this
	 * low-level API to send and receive UNIX file descriptors.
	 * Since 2.26
	 * Returns: GDBusMessage. Do not free, it is owned by invocation. [transfer none]
	 */
	public DBusMessage getMessage()
	{
		// GDBusMessage * g_dbus_method_invocation_get_message  (GDBusMethodInvocation *invocation);
		auto p = g_dbus_method_invocation_get_message(gDBusMethodInvocation);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusMessage)(cast(GDBusMessage*) p);
	}
	
	/**
	 * Gets the parameters of the method invocation. If there are no input
	 * parameters then this will return a GVariant with 0 children rather than NULL.
	 * Since 2.26
	 * Returns: A GVariant tuple. Do not unref this because it is owned by invocation. [transfer none]
	 */
	public Variant getParameters()
	{
		// GVariant * g_dbus_method_invocation_get_parameters  (GDBusMethodInvocation *invocation);
		auto p = g_dbus_method_invocation_get_parameters(gDBusMethodInvocation);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Gets the user_data gpointer passed to g_dbus_connection_register_object().
	 * Since 2.26
	 * Returns: A gpointer.
	 */
	public void* getUserData()
	{
		// gpointer g_dbus_method_invocation_get_user_data  (GDBusMethodInvocation *invocation);
		return g_dbus_method_invocation_get_user_data(gDBusMethodInvocation);
	}
	
	/**
	 * Finishes handling a D-Bus method call by returning parameters.
	 * If the parameters GVariant is floating, it is consumed.
	 * It is an error if parameters is not of the right format.
	 * This method will free invocation, you cannot use it afterwards.
	 * Since 2.26
	 * Params:
	 * parameters = A GVariant tuple with out parameters for the method or NULL if not passing any parameters. [allow-none]
	 */
	public void returnValue(Variant parameters)
	{
		// void g_dbus_method_invocation_return_value  (GDBusMethodInvocation *invocation,  GVariant *parameters);
		g_dbus_method_invocation_return_value(gDBusMethodInvocation, (parameters is null) ? null : parameters.getVariantStruct());
	}
	
	/**
	 * Like g_dbus_method_invocation_return_error() but intended for
	 * language bindings.
	 * This method will free invocation, you cannot use it afterwards.
	 * Since 2.26
	 * Params:
	 * domain = A GQuark for the GError error domain.
	 * code = The error code.
	 * format = printf()-style format.
	 * varArgs = va_list of parameters for format.
	 */
	public void returnErrorValist(GQuark domain, int code, string format, void* varArgs)
	{
		// void g_dbus_method_invocation_return_error_valist  (GDBusMethodInvocation *invocation,  GQuark domain,  gint code,  const gchar *format,  va_list var_args);
		g_dbus_method_invocation_return_error_valist(gDBusMethodInvocation, domain, code, Str.toStringz(format), varArgs);
	}
	
	/**
	 * Like g_dbus_method_invocation_return_error() but without printf()-style formatting.
	 * This method will free invocation, you cannot use it afterwards.
	 * Since 2.26
	 * Params:
	 * domain = A GQuark for the GError error domain.
	 * code = The error code.
	 * message = The error message.
	 */
	public void returnErrorLiteral(GQuark domain, int code, string message)
	{
		// void g_dbus_method_invocation_return_error_literal  (GDBusMethodInvocation *invocation,  GQuark domain,  gint code,  const gchar *message);
		g_dbus_method_invocation_return_error_literal(gDBusMethodInvocation, domain, code, Str.toStringz(message));
	}
	
	/**
	 * Like g_dbus_method_invocation_return_error() but takes a GError
	 * instead of the error domain, error code and message.
	 * This method will free invocation, you cannot use it afterwards.
	 * Since 2.26
	 * Params:
	 * error = A GError.
	 */
	public void returnGerror(ErrorG error)
	{
		// void g_dbus_method_invocation_return_gerror  (GDBusMethodInvocation *invocation,  const GError *error);
		g_dbus_method_invocation_return_gerror(gDBusMethodInvocation, (error is null) ? null : error.getErrorGStruct());
	}
	
	/**
	 * Finishes handling a D-Bus method call by returning an error.
	 * This method will free invocation, you cannot use it afterwards.
	 * Since 2.26
	 * Params:
	 * errorName = A valid D-Bus error name.
	 * errorMessage = A valid D-Bus error message.
	 */
	public void returnDbusError(string errorName, string errorMessage)
	{
		// void g_dbus_method_invocation_return_dbus_error  (GDBusMethodInvocation *invocation,  const gchar *error_name,  const gchar *error_message);
		g_dbus_method_invocation_return_dbus_error(gDBusMethodInvocation, Str.toStringz(errorName), Str.toStringz(errorMessage));
	}
	
	/**
	 * Like g_dbus_method_invocation_return_gerror() but takes ownership
	 * of error so the caller does not need to free it.
	 * This method will free invocation, you cannot use it afterwards.
	 * Since 2.30
	 * Params:
	 * error = A GError. [transfer full]
	 */
	public void takeError(ErrorG error)
	{
		// void g_dbus_method_invocation_take_error (GDBusMethodInvocation *invocation,  GError *error);
		g_dbus_method_invocation_take_error(gDBusMethodInvocation, (error is null) ? null : error.getErrorGStruct());
	}
	
	/**
	 * Like g_dbus_method_invocation_return_value() but also takes a GUnixFDList.
	 * This method is only available on UNIX.
	 * This method will free invocation, you cannot use it afterwards.
	 * Since 2.30
	 * Params:
	 * parameters = A GVariant tuple with out parameters for the method or NULL if not passing any parameters. [allow-none]
	 * fdList = A GUnixFDList or NULL. [allow-none]
	 */
	public void returnValueWithUnixFdList(Variant parameters, UnixFDList fdList)
	{
		// void g_dbus_method_invocation_return_value_with_unix_fd_list  (GDBusMethodInvocation *invocation,  GVariant *parameters,  GUnixFDList *fd_list);
		g_dbus_method_invocation_return_value_with_unix_fd_list(gDBusMethodInvocation, (parameters is null) ? null : parameters.getVariantStruct(), (fdList is null) ? null : fdList.getUnixFDListStruct());
	}
}
