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


module gio.ActionIF;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * #GAction represents a single named action.
 * 
 * The main interface to an action is that it can be activated with
 * g_action_activate().  This results in the 'activate' signal being
 * emitted.  An activation has a #GVariant parameter (which may be
 * %NULL).  The correct type for the parameter is determined by a static
 * parameter type (which is given at construction time).
 * 
 * An action may optionally have a state, in which case the state may be
 * set with g_action_change_state().  This call takes a #GVariant.  The
 * correct type for the state is determined by a static state type
 * (which is given at construction time).
 * 
 * The state may have a hint associated with it, specifying its valid
 * range.
 * 
 * #GAction is merely the interface to the concept of an action, as
 * described above.  Various implementations of actions exist, including
 * #GSimpleAction.
 * 
 * In all cases, the implementing class is responsible for storing the
 * name of the action, the parameter type, the enabled state, the
 * optional state type and the state and emitting the appropriate
 * signals when these change.  The implementor is responsible for filtering
 * calls to g_action_activate() and g_action_change_state() for type
 * safety and for the state being enabled.
 * 
 * Probably the only useful thing to do with a #GAction is to put it
 * inside of a #GSimpleActionGroup.
 */
public interface ActionIF{
	/** Get the main Gtk struct */
	public GAction* getActionStruct();

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/**
	 * Checks if @action_name is valid.
	 *
	 * @action_name is valid if it consists only of alphanumeric characters,
	 * plus '-' and '.'.  The empty string is not a valid action name.
	 *
	 * It is an error to call this function with a non-utf8 @action_name.
	 * @action_name must not be %NULL.
	 *
	 * Params:
	 *     actionName = an potential action name
	 *
	 * Return: %TRUE if @action_name is valid
	 *
	 * Since: 2.38
	 */
	public static bool nameIsValid(string actionName);

	/**
	 * Parses a detailed action name into its separate name and target
	 * components.
	 *
	 * Detailed action names can have three formats.
	 *
	 * The first format is used to represent an action name with no target
	 * value and consists of just an action name containing no whitespace
	 * nor the characters ':', '(' or ')'.  For example: "app.action".
	 *
	 * The second format is used to represent an action with a target value
	 * that is a non-empty string consisting only of alphanumerics, plus '-'
	 * and '.'.  In that case, the action name and target value are
	 * separated by a double colon ("::").  For example:
	 * "app.action::target".
	 *
	 * The third format is used to represent an action with any type of
	 * target value, including strings.  The target value follows the action
	 * name, surrounded in parens.  For example: "app.action(42)".  The
	 * target value is parsed using g_variant_parse().  If a tuple-typed
	 * value is desired, it must be specified in the same way, resulting in
	 * two sets of parens, for example: "app.action((1,2,3))".  A string
	 * target can be specified this way as well: "app.action('target')".
	 * For strings, this third format must be used if * target value is
	 * empty or contains characters other than alphanumerics, '-' and '.'.
	 *
	 * Params:
	 *     detailedName = a detailed action name
	 *     actionName = the action name
	 *     targetValue = the target value, or %NULL for no target
	 *
	 * Return: %TRUE if successful, else %FALSE with @error set
	 *
	 * Since: 2.38
	 *
	 * Throws: GException on failure.
	 */
	public static bool parseDetailedName(string detailedName, out string actionName, out Variant targetValue);

	/**
	 * Formats a detailed action name from @action_name and @target_value.
	 *
	 * It is an error to call this function with an invalid action name.
	 *
	 * This function is the opposite of
	 * g_action_parse_detailed_action_name().  It will produce a string that
	 * can be parsed back to the @action_name and @target_value by that
	 * function.
	 *
	 * See that function for the types of strings that will be printed by
	 * this function.
	 *
	 * Params:
	 *     actionName = a valid action name
	 *     targetValue = a #GVariant target value, or %NULL
	 *
	 * Return: a detailed format string
	 *
	 * Since: 2.38
	 */
	public static string printDetailedName(string actionName, Variant targetValue);

	/**
	 * Activates the action.
	 *
	 * @parameter must be the correct type of parameter for the action (ie:
	 * the parameter type given at construction time).  If the parameter
	 * type was %NULL then @parameter must also be %NULL.
	 *
	 * If the @parameter GVariant is floating, it is consumed.
	 *
	 * Params:
	 *     parameter = the parameter to the activation
	 *
	 * Since: 2.28
	 */
	public void activate(Variant parameter);

	/**
	 * Request for the state of @action to be changed to @value.
	 *
	 * The action must be stateful and @value must be of the correct type.
	 * See g_action_get_state_type().
	 *
	 * This call merely requests a change.  The action may refuse to change
	 * its state or may change its state to something other than @value.
	 * See g_action_get_state_hint().
	 *
	 * If the @value GVariant is floating, it is consumed.
	 *
	 * Params:
	 *     value = the new state
	 *
	 * Since: 2.30
	 */
	public void changeState(Variant value);

	/**
	 * Checks if @action is currently enabled.
	 *
	 * An action must be enabled in order to be activated or in order to
	 * have its state changed from outside callers.
	 *
	 * Return: whether the action is enabled
	 *
	 * Since: 2.28
	 */
	public bool getEnabled();

	/**
	 * Queries the name of @action.
	 *
	 * Return: the name of the action
	 *
	 * Since: 2.28
	 */
	public string getName();

	/**
	 * Queries the type of the parameter that must be given when activating
	 * @action.
	 *
	 * When activating the action using g_action_activate(), the #GVariant
	 * given to that function must be of the type returned by this function.
	 *
	 * In the case that this function returns %NULL, you must not give any
	 * #GVariant, but %NULL instead.
	 *
	 * Return: the parameter type
	 *
	 * Since: 2.28
	 */
	public VariantType getParameterType();

	/**
	 * Queries the current state of @action.
	 *
	 * If the action is not stateful then %NULL will be returned.  If the
	 * action is stateful then the type of the return value is the type
	 * given by g_action_get_state_type().
	 *
	 * The return value (if non-%NULL) should be freed with
	 * g_variant_unref() when it is no longer required.
	 *
	 * Return: the current state of the action
	 *
	 * Since: 2.28
	 */
	public Variant getState();

	/**
	 * Requests a hint about the valid range of values for the state of
	 * @action.
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
	 * Return: the state range hint
	 *
	 * Since: 2.28
	 */
	public Variant getStateHint();

	/**
	 * Queries the type of the state of @action.
	 *
	 * If the action is stateful (e.g. created with
	 * g_simple_action_new_stateful()) then this function returns the
	 * #GVariantType of the state.  This is the type of the initial value
	 * given as the state. All calls to g_action_change_state() must give a
	 * #GVariant of this type and g_action_get_state() will return a
	 * #GVariant of the same type.
	 *
	 * If the action is not stateful (e.g. created with g_simple_action_new())
	 * then this function will return %NULL. In that case, g_action_get_state()
	 * will return %NULL and you must not call g_action_change_state().
	 *
	 * Return: the state type, if the action is stateful
	 *
	 * Since: 2.28
	 */
	public VariantType getStateType();
}
