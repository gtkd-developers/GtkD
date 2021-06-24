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


module gio.ActionGroupT;

public  import gio.c.functions;
public  import gio.c.types;
public  import glib.Str;
public  import glib.Variant;
public  import glib.VariantType;
public  import glib.c.functions;
public  import gobject.Signals;
public  import std.algorithm;


/**
 * #GActionGroup represents a group of actions. Actions can be used to
 * expose functionality in a structured way, either from one part of a
 * program to another, or to the outside world. Action groups are often
 * used together with a #GMenuModel that provides additional
 * representation data for displaying the actions to the user, e.g. in
 * a menu.
 * 
 * The main way to interact with the actions in a GActionGroup is to
 * activate them with g_action_group_activate_action(). Activating an
 * action may require a #GVariant parameter. The required type of the
 * parameter can be inquired with g_action_group_get_action_parameter_type().
 * Actions may be disabled, see g_action_group_get_action_enabled().
 * Activating a disabled action has no effect.
 * 
 * Actions may optionally have a state in the form of a #GVariant. The
 * current state of an action can be inquired with
 * g_action_group_get_action_state(). Activating a stateful action may
 * change its state, but it is also possible to set the state by calling
 * g_action_group_change_action_state().
 * 
 * As typical example, consider a text editing application which has an
 * option to change the current font to 'bold'. A good way to represent
 * this would be a stateful action, with a boolean state. Activating the
 * action would toggle the state.
 * 
 * Each action in the group has a unique name (which is a string).  All
 * method calls, except g_action_group_list_actions() take the name of
 * an action as an argument.
 * 
 * The #GActionGroup API is meant to be the 'public' API to the action
 * group.  The calls here are exactly the interaction that 'external
 * forces' (eg: UI, incoming D-Bus messages, etc.) are supposed to have
 * with actions.  'Internal' APIs (ie: ones meant only to be accessed by
 * the action group implementation) are found on subclasses.  This is
 * why you will find - for example - g_action_group_get_action_enabled()
 * but not an equivalent set() call.
 * 
 * Signals are emitted on the action group in response to state changes
 * on individual actions.
 * 
 * Implementations of #GActionGroup should provide implementations for
 * the virtual functions g_action_group_list_actions() and
 * g_action_group_query_action().  The other virtual functions should
 * not be implemented - their "wrappers" are actually implemented with
 * calls to g_action_group_query_action().
 */
public template ActionGroupT(TStruct)
{
	/** Get the main Gtk struct */
	public GActionGroup* getActionGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GActionGroup*)getStruct();
	}


	/**
	 * Emits the #GActionGroup::action-added signal on @action_group.
	 *
	 * This function should only be called by #GActionGroup implementations.
	 *
	 * Params:
	 *     actionName = the name of an action in the group
	 *
	 * Since: 2.28
	 */
	public void actionAdded(string actionName)
	{
		g_action_group_action_added(getActionGroupStruct(), Str.toStringz(actionName));
	}

	/**
	 * Emits the #GActionGroup::action-enabled-changed signal on @action_group.
	 *
	 * This function should only be called by #GActionGroup implementations.
	 *
	 * Params:
	 *     actionName = the name of an action in the group
	 *     enabled = whether or not the action is now enabled
	 *
	 * Since: 2.28
	 */
	public void actionEnabledChanged(string actionName, bool enabled)
	{
		g_action_group_action_enabled_changed(getActionGroupStruct(), Str.toStringz(actionName), enabled);
	}

	/**
	 * Emits the #GActionGroup::action-removed signal on @action_group.
	 *
	 * This function should only be called by #GActionGroup implementations.
	 *
	 * Params:
	 *     actionName = the name of an action in the group
	 *
	 * Since: 2.28
	 */
	public void actionRemoved(string actionName)
	{
		g_action_group_action_removed(getActionGroupStruct(), Str.toStringz(actionName));
	}

	/**
	 * Emits the #GActionGroup::action-state-changed signal on @action_group.
	 *
	 * This function should only be called by #GActionGroup implementations.
	 *
	 * Params:
	 *     actionName = the name of an action in the group
	 *     state = the new state of the named action
	 *
	 * Since: 2.28
	 */
	public void actionStateChanged(string actionName, Variant state)
	{
		g_action_group_action_state_changed(getActionGroupStruct(), Str.toStringz(actionName), (state is null) ? null : state.getVariantStruct());
	}

	/**
	 * Activate the named action within @action_group.
	 *
	 * If the action is expecting a parameter, then the correct type of
	 * parameter must be given as @parameter.  If the action is expecting no
	 * parameters then @parameter must be %NULL.  See
	 * g_action_group_get_action_parameter_type().
	 *
	 * If the #GActionGroup implementation supports asynchronous remote
	 * activation over D-Bus, this call may return before the relevant
	 * D-Bus traffic has been sent, or any replies have been received. In
	 * order to block on such asynchronous activation calls,
	 * g_dbus_connection_flush() should be called prior to the code, which
	 * depends on the result of the action activation. Without flushing
	 * the D-Bus connection, there is no guarantee that the action would
	 * have been activated.
	 *
	 * The following code which runs in a remote app instance, shows an
	 * example of a "quit" action being activated on the primary app
	 * instance over D-Bus. Here g_dbus_connection_flush() is called
	 * before `exit()`. Without g_dbus_connection_flush(), the "quit" action
	 * may fail to be activated on the primary instance.
	 *
	 * |[<!-- language="C" -->
	 * // call "quit" action on primary instance
	 * g_action_group_activate_action (G_ACTION_GROUP (app), "quit", NULL);
	 *
	 * // make sure the action is activated now
	 * g_dbus_connection_flush (...);
	 *
	 * g_debug ("application has been terminated. exiting.");
	 *
	 * exit (0);
	 * ]|
	 *
	 * Params:
	 *     actionName = the name of the action to activate
	 *     parameter = parameters to the activation
	 *
	 * Since: 2.28
	 */
	public void activateAction(string actionName, Variant parameter)
	{
		g_action_group_activate_action(getActionGroupStruct(), Str.toStringz(actionName), (parameter is null) ? null : parameter.getVariantStruct());
	}

	/**
	 * Request for the state of the named action within @action_group to be
	 * changed to @value.
	 *
	 * The action must be stateful and @value must be of the correct type.
	 * See g_action_group_get_action_state_type().
	 *
	 * This call merely requests a change.  The action may refuse to change
	 * its state or may change its state to something other than @value.
	 * See g_action_group_get_action_state_hint().
	 *
	 * If the @value GVariant is floating, it is consumed.
	 *
	 * Params:
	 *     actionName = the name of the action to request the change on
	 *     value = the new state
	 *
	 * Since: 2.28
	 */
	public void changeActionState(string actionName, Variant value)
	{
		g_action_group_change_action_state(getActionGroupStruct(), Str.toStringz(actionName), (value is null) ? null : value.getVariantStruct());
	}

	/**
	 * Checks if the named action within @action_group is currently enabled.
	 *
	 * An action must be enabled in order to be activated or in order to
	 * have its state changed from outside callers.
	 *
	 * Params:
	 *     actionName = the name of the action to query
	 *
	 * Returns: whether or not the action is currently enabled
	 *
	 * Since: 2.28
	 */
	public bool getActionEnabled(string actionName)
	{
		return g_action_group_get_action_enabled(getActionGroupStruct(), Str.toStringz(actionName)) != 0;
	}

	/**
	 * Queries the type of the parameter that must be given when activating
	 * the named action within @action_group.
	 *
	 * When activating the action using g_action_group_activate_action(),
	 * the #GVariant given to that function must be of the type returned
	 * by this function.
	 *
	 * In the case that this function returns %NULL, you must not give any
	 * #GVariant, but %NULL instead.
	 *
	 * The parameter type of a particular action will never change but it is
	 * possible for an action to be removed and for a new action to be added
	 * with the same name but a different parameter type.
	 *
	 * Params:
	 *     actionName = the name of the action to query
	 *
	 * Returns: the parameter type
	 *
	 * Since: 2.28
	 */
	public VariantType getActionParameterType(string actionName)
	{
		auto __p = g_action_group_get_action_parameter_type(getActionGroupStruct(), Str.toStringz(actionName));

		if(__p is null)
		{
			return null;
		}

		return new VariantType(cast(GVariantType*) __p);
	}

	/**
	 * Queries the current state of the named action within @action_group.
	 *
	 * If the action is not stateful then %NULL will be returned.  If the
	 * action is stateful then the type of the return value is the type
	 * given by g_action_group_get_action_state_type().
	 *
	 * The return value (if non-%NULL) should be freed with
	 * g_variant_unref() when it is no longer required.
	 *
	 * Params:
	 *     actionName = the name of the action to query
	 *
	 * Returns: the current state of the action
	 *
	 * Since: 2.28
	 */
	public Variant getActionState(string actionName)
	{
		auto __p = g_action_group_get_action_state(getActionGroupStruct(), Str.toStringz(actionName));

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Requests a hint about the valid range of values for the state of the
	 * named action within @action_group.
	 *
	 * If %NULL is returned it either means that the action is not stateful
	 * or that there is no hint about the valid range of values for the
	 * state of the action.
	 *
	 * If a #GVariant array is returned then each item in the array is a
	 * possible value for the state.  If a #GVariant pair (ie: two-tuple) is
	 * returned then the tuple specifies the inclusive lower and upper bound
	 * of valid values for the state.
	 *
	 * In any case, the information is merely a hint.  It may be possible to
	 * have a state value outside of the hinted range and setting a value
	 * within the range may fail.
	 *
	 * The return value (if non-%NULL) should be freed with
	 * g_variant_unref() when it is no longer required.
	 *
	 * Params:
	 *     actionName = the name of the action to query
	 *
	 * Returns: the state range hint
	 *
	 * Since: 2.28
	 */
	public Variant getActionStateHint(string actionName)
	{
		auto __p = g_action_group_get_action_state_hint(getActionGroupStruct(), Str.toStringz(actionName));

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Queries the type of the state of the named action within
	 * @action_group.
	 *
	 * If the action is stateful then this function returns the
	 * #GVariantType of the state.  All calls to
	 * g_action_group_change_action_state() must give a #GVariant of this
	 * type and g_action_group_get_action_state() will return a #GVariant
	 * of the same type.
	 *
	 * If the action is not stateful then this function will return %NULL.
	 * In that case, g_action_group_get_action_state() will return %NULL
	 * and you must not call g_action_group_change_action_state().
	 *
	 * The state type of a particular action will never change but it is
	 * possible for an action to be removed and for a new action to be added
	 * with the same name but a different state type.
	 *
	 * Params:
	 *     actionName = the name of the action to query
	 *
	 * Returns: the state type, if the action is stateful
	 *
	 * Since: 2.28
	 */
	public VariantType getActionStateType(string actionName)
	{
		auto __p = g_action_group_get_action_state_type(getActionGroupStruct(), Str.toStringz(actionName));

		if(__p is null)
		{
			return null;
		}

		return new VariantType(cast(GVariantType*) __p);
	}

	/**
	 * Checks if the named action exists within @action_group.
	 *
	 * Params:
	 *     actionName = the name of the action to check for
	 *
	 * Returns: whether the named action exists
	 *
	 * Since: 2.28
	 */
	public bool hasAction(string actionName)
	{
		return g_action_group_has_action(getActionGroupStruct(), Str.toStringz(actionName)) != 0;
	}

	/**
	 * Lists the actions contained within @action_group.
	 *
	 * The caller is responsible for freeing the list with g_strfreev() when
	 * it is no longer required.
	 *
	 * Returns: a %NULL-terminated array of the names of the
	 *     actions in the group
	 *
	 * Since: 2.28
	 */
	public string[] listActions()
	{
		auto retStr = g_action_group_list_actions(getActionGroupStruct());

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Queries all aspects of the named action within an @action_group.
	 *
	 * This function acquires the information available from
	 * g_action_group_has_action(), g_action_group_get_action_enabled(),
	 * g_action_group_get_action_parameter_type(),
	 * g_action_group_get_action_state_type(),
	 * g_action_group_get_action_state_hint() and
	 * g_action_group_get_action_state() with a single function call.
	 *
	 * This provides two main benefits.
	 *
	 * The first is the improvement in efficiency that comes with not having
	 * to perform repeated lookups of the action in order to discover
	 * different things about it.  The second is that implementing
	 * #GActionGroup can now be done by only overriding this one virtual
	 * function.
	 *
	 * The interface provides a default implementation of this function that
	 * calls the individual functions, as required, to fetch the
	 * information.  The interface also provides default implementations of
	 * those functions that call this function.  All implementations,
	 * therefore, must override either this function or all of the others.
	 *
	 * If the action exists, %TRUE is returned and any of the requested
	 * fields (as indicated by having a non-%NULL reference passed in) are
	 * filled.  If the action doesn't exist, %FALSE is returned and the
	 * fields may or may not have been modified.
	 *
	 * Params:
	 *     actionName = the name of an action in the group
	 *     enabled = if the action is presently enabled
	 *     parameterType = the parameter type, or %NULL if none needed
	 *     stateType = the state type, or %NULL if stateless
	 *     stateHint = the state hint, or %NULL if none
	 *     state = the current state, or %NULL if stateless
	 *
	 * Returns: %TRUE if the action exists, else %FALSE
	 *
	 * Since: 2.32
	 */
	public bool queryAction(string actionName, out bool enabled, out VariantType parameterType, out VariantType stateType, out Variant stateHint, out Variant state)
	{
		int outenabled;
		GVariantType* outparameterType = null;
		GVariantType* outstateType = null;
		GVariant* outstateHint = null;
		GVariant* outstate = null;

		auto __p = g_action_group_query_action(getActionGroupStruct(), Str.toStringz(actionName), &outenabled, &outparameterType, &outstateType, &outstateHint, &outstate) != 0;

		enabled = (outenabled == 1);
		parameterType = new VariantType(outparameterType);
		stateType = new VariantType(outstateType);
		stateHint = new Variant(outstateHint);
		state = new Variant(outstate);

		return __p;
	}

	/**
	 * Signals that a new action was just added to the group.
	 * This signal is emitted after the action has been added
	 * and is now visible.
	 *
	 * Params:
	 *     actionName = the name of the action in @action_group
	 *
	 * Since: 2.28
	 */
	gulong addOnActionAdded(void delegate(string, ActionGroupIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "action-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that the enabled status of the named action has changed.
	 *
	 * Params:
	 *     actionName = the name of the action in @action_group
	 *     enabled = whether the action is enabled or not
	 *
	 * Since: 2.28
	 */
	gulong addOnActionEnabledChanged(void delegate(string, bool, ActionGroupIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "action-enabled-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that an action is just about to be removed from the group.
	 * This signal is emitted before the action is removed, so the action
	 * is still visible and can be queried from the signal handler.
	 *
	 * Params:
	 *     actionName = the name of the action in @action_group
	 *
	 * Since: 2.28
	 */
	gulong addOnActionRemoved(void delegate(string, ActionGroupIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "action-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Signals that the state of the named action has changed.
	 *
	 * Params:
	 *     actionName = the name of the action in @action_group
	 *     value = the new value of the state
	 *
	 * Since: 2.28
	 */
	gulong addOnActionStateChanged(void delegate(string, Variant, ActionGroupIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "action-state-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
