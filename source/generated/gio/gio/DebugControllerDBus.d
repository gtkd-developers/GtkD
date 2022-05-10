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


module gio.DebugControllerDBus;

private import gio.Cancellable;
private import gio.DBusConnection;
private import gio.DBusMethodInvocation;
private import gio.DebugControllerIF;
private import gio.DebugControllerT;
private import gio.InitableIF;
private import gio.InitableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * #GDebugControllerDBus is an implementation of #GDebugController which exposes
 * debug settings as a D-Bus object.
 * 
 * It is a #GInitable object, and will register an object at
 * `/org/gtk/Debugging` on the bus given as
 * #GDebugControllerDBus:connection once it’s initialized. The object will be
 * unregistered when the last reference to the #GDebugControllerDBus is dropped.
 * 
 * This D-Bus object can be used by remote processes to enable or disable debug
 * output in this process. Remote processes calling
 * `org.gtk.Debugging.SetDebugEnabled()` will affect the value of
 * #GDebugController:debug-enabled and, by default, g_log_get_debug_enabled().
 * default.
 * 
 * By default, all processes will be able to call `SetDebugEnabled()`. If this
 * process is privileged, or might expose sensitive information in its debug
 * output, you may want to restrict the ability to enable debug output to
 * privileged users or processes.
 * 
 * One option is to install a D-Bus security policy which restricts access to
 * `SetDebugEnabled()`, installing something like the following in
 * `$datadir/dbus-1/system.d/`:
 * |[<!-- language="XML" -->
 * <?xml version="1.0"?> <!--*-nxml-*-->
 * <!DOCTYPE busconfig PUBLIC "-//freedesktop//DTD D-BUS Bus Configuration 1.0//EN"
 * "http://www.freedesktop.org/standards/dbus/1.0/busconfig.dtd">
 * <busconfig>
 * <policy user="root">
 * <allow send_destination="com.example.MyService" send_interface="org.gtk.Debugging"/>
 * </policy>
 * <policy context="default">
 * <deny send_destination="com.example.MyService" send_interface="org.gtk.Debugging"/>
 * </policy>
 * </busconfig>
 * ]|
 * 
 * This will prevent the `SetDebugEnabled()` method from being called by all
 * except root. It will not prevent the `DebugEnabled` property from being read,
 * as it’s accessed through the `org.freedesktop.DBus.Properties` interface.
 * 
 * Another option is to use polkit to allow or deny requests on a case-by-case
 * basis, allowing for the possibility of dynamic authorisation. To do this,
 * connect to the #GDebugControllerDBus::authorize signal and query polkit in
 * it:
 * |[<!-- language="C" -->
 * g_autoptr(GError) child_error = NULL;
 * g_autoptr(GDBusConnection) connection = g_bus_get_sync (G_BUS_TYPE_SYSTEM, NULL, NULL);
 * gulong debug_controller_authorize_id = 0;
 * 
 * // Set up the debug controller.
 * debug_controller = G_DEBUG_CONTROLLER (g_debug_controller_dbus_new (priv->connection, NULL, &child_error));
 * if (debug_controller == NULL)
 * {
 * g_error ("Could not register debug controller on bus: %s"),
 * child_error->message);
 * }
 * 
 * debug_controller_authorize_id = g_signal_connect (debug_controller,
 * "authorize",
 * G_CALLBACK (debug_controller_authorize_cb),
 * self);
 * 
 * static gboolean
 * debug_controller_authorize_cb (GDebugControllerDBus  *debug_controller,
 * GDBusMethodInvocation *invocation,
 * gpointer               user_data)
 * {
 * g_autoptr(PolkitAuthority) authority = NULL;
 * g_autoptr(PolkitSubject) subject = NULL;
 * g_autoptr(PolkitAuthorizationResult) auth_result = NULL;
 * g_autoptr(GError) local_error = NULL;
 * GDBusMessage *message;
 * GDBusMessageFlags message_flags;
 * PolkitCheckAuthorizationFlags flags = POLKIT_CHECK_AUTHORIZATION_FLAGS_NONE;
 * 
 * message = g_dbus_method_invocation_get_message (invocation);
 * message_flags = g_dbus_message_get_flags (message);
 * 
 * authority = polkit_authority_get_sync (NULL, &local_error);
 * if (authority == NULL)
 * {
 * g_warning ("Failed to get polkit authority: %s", local_error->message);
 * return FALSE;
 * }
 * 
 * if (message_flags & G_DBUS_MESSAGE_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION)
 * flags |= POLKIT_CHECK_AUTHORIZATION_FLAGS_ALLOW_USER_INTERACTION;
 * 
 * subject = polkit_system_bus_name_new (g_dbus_method_invocation_get_sender (invocation));
 * 
 * auth_result = polkit_authority_check_authorization_sync (authority,
 * subject,
 * "com.example.MyService.set-debug-enabled",
 * NULL,
 * flags,
 * NULL,
 * &local_error);
 * if (auth_result == NULL)
 * {
 * g_warning ("Failed to get check polkit authorization: %s", local_error->message);
 * return FALSE;
 * }
 * 
 * return polkit_authorization_result_get_is_authorized (auth_result);
 * }
 * ]|
 *
 * Since: 2.72
 */
public class DebugControllerDBus : ObjectG, DebugControllerIF, InitableIF
{
	/** the main Gtk struct */
	protected GDebugControllerDBus* gDebugControllerDBus;

	/** Get the main Gtk struct */
	public GDebugControllerDBus* getDebugControllerDBusStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDebugControllerDBus;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDebugControllerDBus;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDebugControllerDBus* gDebugControllerDBus, bool ownedRef = false)
	{
		this.gDebugControllerDBus = gDebugControllerDBus;
		super(cast(GObject*)gDebugControllerDBus, ownedRef);
	}

	// add the DebugController capabilities
	mixin DebugControllerT!(GDebugControllerDBus);

	// add the Initable capabilities
	mixin InitableT!(GDebugControllerDBus);


	/** */
	public static GType getType()
	{
		return g_debug_controller_dbus_get_type();
	}

	/**
	 * Create a new #GDebugControllerDBus and synchronously initialize it.
	 *
	 * Initializing the object will export the debug object on @connection. The
	 * object will remain registered until the last reference to the
	 * #GDebugControllerDBus is dropped.
	 *
	 * Initialization may fail if registering the object on @connection fails.
	 *
	 * Params:
	 *     connection = a #GDBusConnection to register the debug object on
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a new #GDebugControllerDBus, or %NULL
	 *     on failure
	 *
	 * Since: 2.72
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(DBusConnection connection, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_debug_controller_dbus_new((connection is null) ? null : connection.getDBusConnectionStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GDebugControllerDBus*) __p, true);
	}

	/**
	 * Stop the debug controller, unregistering its object from the bus.
	 *
	 * Any pending method calls to the object will complete successfully, but new
	 * ones will return an error. This method will block until all pending
	 * #GDebugControllerDBus::authorize signals have been handled. This is expected
	 * to not take long, as it will just be waiting for threads to join. If any
	 * #GDebugControllerDBus::authorize signal handlers are still executing in other
	 * threads, this will block until after they have returned.
	 *
	 * This method will be called automatically when the final reference to the
	 * #GDebugControllerDBus is dropped. You may want to call it explicitly to know
	 * when the controller has been fully removed from the bus, or to break
	 * reference count cycles.
	 *
	 * Calling this method from within a #GDebugControllerDBus::authorize signal
	 * handler will cause a deadlock and must not be done.
	 *
	 * Since: 2.72
	 */
	public void stop()
	{
		g_debug_controller_dbus_stop(gDebugControllerDBus);
	}

	/**
	 * Emitted when a D-Bus peer is trying to change the debug settings and used
	 * to determine if that is authorized.
	 *
	 * This signal is emitted in a dedicated worker thread, so handlers are
	 * allowed to perform blocking I/O. This means that, for example, it is
	 * appropriate to call `polkit_authority_check_authorization_sync()` to check
	 * authorization using polkit.
	 *
	 * If %FALSE is returned then no further handlers are run and the request to
	 * change the debug settings is rejected.
	 *
	 * Otherwise, if %TRUE is returned, signal emission continues. If no handlers
	 * return %FALSE, then the debug settings are allowed to be changed.
	 *
	 * Signal handlers must not modify @invocation, or cause it to return a value.
	 *
	 * The default class handler just returns %TRUE.
	 *
	 * Params:
	 *     invocation = A #GDBusMethodInvocation.
	 *
	 * Returns: %TRUE if the call is authorized, %FALSE otherwise.
	 *
	 * Since: 2.72
	 */
	gulong addOnAuthorize(bool delegate(DBusMethodInvocation, DebugControllerDBus) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "authorize", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
