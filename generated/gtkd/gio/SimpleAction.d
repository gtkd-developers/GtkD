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


module gio.SimpleAction;

private import gio.ActionIF;
private import gio.ActionT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * A #GSimpleAction is the obvious simple implementation of the #GAction
 * interface. This is the easiest way to create an action for purposes of
 * adding it to a #GSimpleActionGroup.
 * 
 * See also #GtkAction.
 */
public class SimpleAction : ObjectG, ActionIF
{
	/** the main Gtk struct */
	protected GSimpleAction* gSimpleAction;

	/** Get the main Gtk struct */
	public GSimpleAction* getSimpleActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSimpleAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimpleAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSimpleAction* gSimpleAction, bool ownedRef = false)
	{
		this.gSimpleAction = gSimpleAction;
		super(cast(GObject*)gSimpleAction, ownedRef);
	}

	// add the Action capabilities
	mixin ActionT!(GSimpleAction);


	/** */
	public static GType getType()
	{
		return g_simple_action_get_type();
	}

	/**
	 * Creates a new action.
	 *
	 * The created action is stateless. See g_simple_action_new_stateful() to create
	 * an action that has state.
	 *
	 * Params:
	 *     name = the name of the action
	 *     parameterType = the type of parameter that will be passed to
	 *         handlers for the #GSimpleAction::activate signal, or %NULL for no parameter
	 *
	 * Returns: a new #GSimpleAction
	 *
	 * Since: 2.28
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, VariantType parameterType)
	{
		auto __p = g_simple_action_new(Str.toStringz(name), (parameterType is null) ? null : parameterType.getVariantTypeStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSimpleAction*) __p, true);
	}

	/**
	 * Creates a new stateful action.
	 *
	 * All future state values must have the same #GVariantType as the initial
	 * @state.
	 *
	 * If the @state #GVariant is floating, it is consumed.
	 *
	 * Params:
	 *     name = the name of the action
	 *     parameterType = the type of the parameter that will be passed to
	 *         handlers for the #GSimpleAction::activate signal, or %NULL for no parameter
	 *     state = the initial state of the action
	 *
	 * Returns: a new #GSimpleAction
	 *
	 * Since: 2.28
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, VariantType parameterType, Variant state)
	{
		auto __p = g_simple_action_new_stateful(Str.toStringz(name), (parameterType is null) ? null : parameterType.getVariantTypeStruct(), (state is null) ? null : state.getVariantStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_stateful");
		}

		this(cast(GSimpleAction*) __p, true);
	}

	/**
	 * Sets the action as enabled or not.
	 *
	 * An action must be enabled in order to be activated or in order to
	 * have its state changed from outside callers.
	 *
	 * This should only be called by the implementor of the action.  Users
	 * of the action should not attempt to modify its enabled flag.
	 *
	 * Params:
	 *     enabled = whether the action is enabled
	 *
	 * Since: 2.28
	 */
	public void setEnabled(bool enabled)
	{
		g_simple_action_set_enabled(gSimpleAction, enabled);
	}

	/**
	 * Sets the state of the action.
	 *
	 * This directly updates the 'state' property to the given value.
	 *
	 * This should only be called by the implementor of the action.  Users
	 * of the action should not attempt to directly modify the 'state'
	 * property.  Instead, they should call g_action_change_state() to
	 * request the change.
	 *
	 * If the @value GVariant is floating, it is consumed.
	 *
	 * Params:
	 *     value = the new #GVariant for the state
	 *
	 * Since: 2.30
	 */
	public void setState(Variant value)
	{
		g_simple_action_set_state(gSimpleAction, (value is null) ? null : value.getVariantStruct());
	}

	/**
	 * Sets the state hint for the action.
	 *
	 * See g_action_get_state_hint() for more information about
	 * action state hints.
	 *
	 * Params:
	 *     stateHint = a #GVariant representing the state hint
	 *
	 * Since: 2.44
	 */
	public void setStateHint(Variant stateHint)
	{
		g_simple_action_set_state_hint(gSimpleAction, (stateHint is null) ? null : stateHint.getVariantStruct());
	}

	/**
	 * Indicates that the action was just activated.
	 *
	 * @parameter will always be of the expected type, i.e. the parameter type
	 * specified when the action was created. If an incorrect type is given when
	 * activating the action, this signal is not emitted.
	 *
	 * Since GLib 2.40, if no handler is connected to this signal then the
	 * default behaviour for boolean-stated actions with a %NULL parameter
	 * type is to toggle them via the #GSimpleAction::change-state signal.
	 * For stateful actions where the state type is equal to the parameter
	 * type, the default is to forward them directly to
	 * #GSimpleAction::change-state.  This should allow almost all users
	 * of #GSimpleAction to connect only one handler or the other.
	 *
	 * Params:
	 *     parameter = the parameter to the activation, or %NULL if it has
	 *         no parameter
	 *
	 * Since: 2.28
	 */
	gulong addOnActivate(void delegate(Variant, SimpleAction) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Indicates that the action just received a request to change its
	 * state.
	 *
	 * @value will always be of the correct state type, i.e. the type of the
	 * initial state passed to g_simple_action_new_stateful(). If an incorrect
	 * type is given when requesting to change the state, this signal is not
	 * emitted.
	 *
	 * If no handler is connected to this signal then the default
	 * behaviour is to call g_simple_action_set_state() to set the state
	 * to the requested value. If you connect a signal handler then no
	 * default action is taken. If the state should change then you must
	 * call g_simple_action_set_state() from the handler.
	 *
	 * An example of a 'change-state' handler:
	 * |[<!-- language="C" -->
	 * static void
	 * change_volume_state (GSimpleAction *action,
	 * GVariant      *value,
	 * gpointer       user_data)
	 * {
	 * gint requested;
	 *
	 * requested = g_variant_get_int32 (value);
	 *
	 * // Volume only goes from 0 to 10
	 * if (0 <= requested && requested <= 10)
	 * g_simple_action_set_state (action, value);
	 * }
	 * ]|
	 *
	 * The handler need not set the state to the requested value.
	 * It could set it to any value at all, or take some other action.
	 *
	 * Params:
	 *     value = the requested value for the state
	 *
	 * Since: 2.30
	 */
	gulong addOnChangeState(void delegate(Variant, SimpleAction) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "change-state", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
