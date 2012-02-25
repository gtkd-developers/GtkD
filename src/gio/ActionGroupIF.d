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
 * inFile  = GActionGroup.html
 * outPack = gio
 * outFile = ActionGroupIF
 * strct   = GActionGroup
 * realStrct=
 * ctorStrct=
 * clss    = ActionGroupT
 * interf  = ActionGroupIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_action_group_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.Variant
 * 	- glib.VariantType
 * structWrap:
 * 	- GVariant* -> Variant
 * 	- GVariantType* -> VariantType
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ActionGroupIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.Variant;
private import glib.VariantType;




/**
 * Description
 * GActionGroup represents a group of actions.
 * Each action in the group has a unique name (which is a string). All
 * method calls, except g_action_group_list_actions() take the name of
 * an action as an argument.
 * The GActionGroup API is meant to be the 'public' API to the action
 * group. The calls here are exactly the interaction that 'external
 * forces' (eg: UI, incoming D-Bus messages, etc.) are supposed to have
 * with actions. 'Internal' APIs (ie: ones meant only to be accessed by
 * the action group implementation) are found on subclasses. This is
 * why you will find -- for example -- g_action_group_get_enabled() but
 * not an equivalent set() call.
 * Signals are emitted on the action group in response to state changes
 * on individual actions.
 */
public interface ActionGroupIF
{
	
	
	public GActionGroup* getActionGroupTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	void delegate(string, ActionGroupIF)[] onActionAddedListeners();
	/**
	 * Signals that a new action was just added to the group. This signal
	 * is emitted after the action has been added and is now visible.
	 * Since 2.28
	 */
	void addOnActionAdded(void delegate(string, ActionGroupIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(string, gboolean, ActionGroupIF)[] onActionEnabledChangedListeners();
	/**
	 * Signals that the enabled status of the named action has changed.
	 * Since 2.28
	 */
	void addOnActionEnabledChanged(void delegate(string, gboolean, ActionGroupIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(string, ActionGroupIF)[] onActionRemovedListeners();
	/**
	 * Signals that an action is just about to be removed from the group.
	 * This signal is emitted before the action is removed, so the action
	 * is still visible and can be queried from the signal handler.
	 * Since 2.28
	 */
	void addOnActionRemoved(void delegate(string, ActionGroupIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	void delegate(string, Variant, ActionGroupIF)[] onActionStateChangedListeners();
	/**
	 * Signals that the state of the named action has changed.
	 * Since 2.28
	 */
	void addOnActionStateChanged(void delegate(string, Variant, ActionGroupIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
	
	/**
	 * Checks if the named action exists within action_group.
	 * Since 2.28
	 * Params:
	 * actionName = the name of the action to check for
	 * Returns: whether the named action exists
	 */
	public int hasAction(string actionName);
	
	/**
	 * Lists the actions contained within action_group.
	 * The caller is responsible for freeing the list with g_strfreev() when
	 * it is no longer required.
	 * Since 2.28
	 * Returns: a NULL-terminated array of the names of the actions in the groupb. [transfer full]
	 */
	public string[] listActions();
	
	/**
	 * Checks if the named action within action_group is currently enabled.
	 * An action must be enabled in order to be activated or in order to
	 * have its state changed from outside callers.
	 * Since 2.28
	 * Params:
	 * actionName = the name of the action to query
	 * Returns: whether or not the action is currently enabled
	 */
	public int getActionEnabled(string actionName);
	
	/**
	 * Queries the type of the parameter that must be given when activating
	 * the named action within action_group.
	 * When activating the action using g_action_group_activate(), the
	 * GVariant given to that function must be of the type returned by this
	 * function.
	 * In the case that this function returns NULL, you must not give any
	 * GVariant, but NULL instead.
	 * The parameter type of a particular action will never change but it is
	 * possible for an action to be removed and for a new action to be added
	 * with the same name but a different parameter type.
	 * Since 2.28
	 * Params:
	 * actionName = the name of the action to query
	 * Returns: the parameter type
	 */
	public VariantType getActionParameterType(string actionName);
	
	/**
	 * Queries the type of the state of the named action within
	 * action_group.
	 * If the action is stateful then this function returns the
	 * GVariantType of the state. All calls to g_action_group_set_state()
	 * must give a GVariant of this type and g_action_group_get_state()
	 * will return a GVariant of the same type.
	 * If the action is not stateful then this function will return NULL.
	 * In that case, g_action_group_get_state() will return NULL and you
	 * must not call g_action_group_set_state().
	 * The state type of a particular action will never change but it is
	 * possible for an action to be removed and for a new action to be added
	 * with the same name but a different state type.
	 * Since 2.28
	 * Params:
	 * actionName = the name of the action to query
	 * Returns: the state type, if the action is stateful. [transfer full]
	 */
	public VariantType getActionStateType(string actionName);
	
	/**
	 * Requests a hint about the valid range of values for the state of the
	 * named action within action_group.
	 * If NULL is returned it either means that the action is not stateful
	 * or that there is no hint about the valid range of values for the
	 * state of the action.
	 * If a GVariant array is returned then each item in the array is a
	 * possible value for the state. If a GVariant pair (ie: two-tuple) is
	 * returned then the tuple specifies the inclusive lower and upper bound
	 * of valid values for the state.
	 * In any case, the information is merely a hint. It may be possible to
	 * have a state value outside of the hinted range and setting a value
	 * within the range may fail.
	 * The return value (if non-NULL) should be freed with
	 * g_variant_unref() when it is no longer required.
	 * Since 2.28
	 * Params:
	 * actionName = the name of the action to query
	 * Returns: the state range hint. [transfer full]
	 */
	public Variant getActionStateHint(string actionName);
	
	/**
	 * Queries the current state of the named action within action_group.
	 * If the action is not stateful then NULL will be returned. If the
	 * action is stateful then the type of the return value is the type
	 * given by g_action_group_get_state_type().
	 * The return value (if non-NULL) should be freed with
	 * g_variant_unref() when it is no longer required.
	 * Since 2.28
	 * Params:
	 * actionName = the name of the action to query
	 * Returns: the current state of the action. [allow-none]
	 */
	public Variant getActionState(string actionName);
	
	/**
	 * Request for the state of the named action within action_group to be
	 * changed to value.
	 * The action must be stateful and value must be of the correct type.
	 * See g_action_group_get_state_type().
	 * This call merely requests a change. The action may refuse to change
	 * its state or may change its state to something other than value.
	 * See g_action_group_get_state_hint().
	 * If the value GVariant is floating, it is consumed.
	 * Since 2.28
	 * Params:
	 * actionName = the name of the action to request the change on
	 * value = the new state
	 */
	public void changeActionState(string actionName, Variant value);
	
	/**
	 * Activate the named action within action_group.
	 * If the action is expecting a parameter, then the correct type of
	 * parameter must be given as parameter. If the action is expecting no
	 * parameters then parameter must be NULL. See
	 * g_action_group_get_parameter_type().
	 * Since 2.28
	 * Params:
	 * actionName = the name of the action to activate
	 * parameter = parameters to the activation. [allow-none]
	 */
	public void activateAction(string actionName, Variant parameter);
	
	/**
	 * Emits the "action-added" signal on action_group.
	 * This function should only be called by GActionGroup implementations.
	 * Since 2.28
	 * Params:
	 * actionName = the name of an action in the group
	 */
	public void actionAdded(string actionName);
	
	/**
	 * Emits the "action-removed" signal on action_group.
	 * This function should only be called by GActionGroup implementations.
	 * Since 2.28
	 * Params:
	 * actionName = the name of an action in the group
	 */
	public void actionRemoved(string actionName);
	
	/**
	 * Emits the "action-enabled-changed" signal on action_group.
	 * This function should only be called by GActionGroup implementations.
	 * Since 2.28
	 * Params:
	 * actionName = the name of an action in the group
	 * enabled = whether or not the action is now enabled
	 */
	public void actionEnabledChanged(string actionName, int enabled);
	
	/**
	 * Emits the "action-state-changed" signal on action_group.
	 * This function should only be called by GActionGroup implementations.
	 * Since 2.28
	 * Signal Details
	 * The "action-added" signal
	 * void user_function (GActionGroup *action_group,
	 *  gchar *action_name,
	 *  gpointer user_data) : Has Details
	 * Signals that a new action was just added to the group. This signal
	 * is emitted after the action has been added and is now visible.
	 * Since 2.28
	 * Params:
	 * actionName = the name of an action in the group
	 * state = the new state of the named action
	 * actionName = the name of the action in action_group
	 */
	public void actionStateChanged(string actionName, Variant state);
}
