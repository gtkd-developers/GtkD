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


module gio.RemoteActionGroupIF;

private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import glib.Variant;


/**
 * The GRemoteActionGroup interface is implemented by #GActionGroup
 * instances that either transmit action invocations to other processes
 * or receive action invocations in the local process from other
 * processes.
 * 
 * The interface has `_full` variants of the two
 * methods on #GActionGroup used to activate actions:
 * g_action_group_activate_action() and
 * g_action_group_change_action_state(). These variants allow a
 * "platform data" #GVariant to be specified: a dictionary providing
 * context for the action invocation (for example: timestamps, startup
 * notification IDs, etc).
 * 
 * #GDBusActionGroup implements #GRemoteActionGroup.  This provides a
 * mechanism to send platform data for action invocations over D-Bus.
 * 
 * Additionally, g_dbus_connection_export_action_group() will check if
 * the exported #GActionGroup implements #GRemoteActionGroup and use the
 * `_full` variants of the calls if available.  This
 * provides a mechanism by which to receive platform data for action
 * invocations that arrive by way of D-Bus.
 *
 * Since: 2.32
 */
public interface RemoteActionGroupIF{
	/** Get the main Gtk struct */
	public GRemoteActionGroup* getRemoteActionGroupStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_remote_action_group_get_type();
	}

	/**
	 * Activates the remote action.
	 *
	 * This is the same as g_action_group_activate_action() except that it
	 * allows for provision of "platform data" to be sent along with the
	 * activation request.  This typically contains details such as the user
	 * interaction timestamp or startup notification information.
	 *
	 * @platform_data must be non-%NULL and must have the type
	 * %G_VARIANT_TYPE_VARDICT.  If it is floating, it will be consumed.
	 *
	 * Params:
	 *     actionName = the name of the action to activate
	 *     parameter = the optional parameter to the activation
	 *     platformData = the platform data to send
	 *
	 * Since: 2.32
	 */
	public void activateActionFull(string actionName, Variant parameter, Variant platformData);

	/**
	 * Changes the state of a remote action.
	 *
	 * This is the same as g_action_group_change_action_state() except that
	 * it allows for provision of "platform data" to be sent along with the
	 * state change request.  This typically contains details such as the
	 * user interaction timestamp or startup notification information.
	 *
	 * @platform_data must be non-%NULL and must have the type
	 * %G_VARIANT_TYPE_VARDICT.  If it is floating, it will be consumed.
	 *
	 * Params:
	 *     actionName = the name of the action to change the state of
	 *     value = the new requested value for the state
	 *     platformData = the platform data to send
	 *
	 * Since: 2.32
	 */
	public void changeActionStateFull(string actionName, Variant value, Variant platformData);
}
