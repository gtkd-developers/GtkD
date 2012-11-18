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
 * inFile  = GAction.html
 * outPack = gio
 * outFile = ActionT
 * strct   = GAction
 * realStrct=
 * ctorStrct=
 * clss    = ActionT
 * interf  = ActionIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_action_
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

module gio.ActionT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import glib.Str;
public import glib.Variant;
public import glib.VariantType;




/**
 * Description
 * GAction represents a single named action.
 * The main interface to an action is that it can be activated with
 * g_action_activate(). This results in the 'activate' signal being
 * emitted. An activation has a GVariant parameter (which may be
 * NULL). The correct type for the parameter is determined by a static
 * parameter type (which is given at construction time).
 * An action may optionally have a state, in which case the state may be
 * set with g_action_change_state(). This call takes a GVariant. The
 * correct type for the state is determined by a static state type
 * (which is given at construction time).
 * The state may have a hint associated with it, specifying its valid
 * range.
 * GAction is merely the interface to the concept of an action, as
 * described above. Various implementations of actions exist, including
 * GSimpleAction and GtkAction.
 * In all cases, the implementing class is responsible for storing the
 * name of the action, the parameter type, the enabled state, the
 * optional state type and the state and emitting the appropriate
 * signals when these change. The implementor responsible for filtering
 * calls to g_action_activate() and g_action_change_state() for type
 * safety and for the state being enabled.
 * Probably the only useful thing to do with a GAction is to put it
 * inside of a GSimpleActionGroup.
 */
public template ActionT(TStruct)
{
	
	/** the main Gtk struct */
	protected GAction* gAction;
	
	
	public GAction* getActionTStruct()
	{
		return cast(GAction*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Queries the name of action.
	 * Since 2.28
	 * Returns: the name of the action
	 */
	public string getName()
	{
		// const gchar * g_action_get_name (GAction *action);
		return Str.toString(g_action_get_name(getActionTStruct()));
	}
	
	/**
	 * Queries the type of the parameter that must be given when activating
	 * action.
	 * When activating the action using g_action_activate(), the GVariant
	 * given to that function must be of the type returned by this function.
	 * In the case that this function returns NULL, you must not give any
	 * GVariant, but NULL instead.
	 * Since 2.28
	 * Returns: the parameter type. [allow-none]
	 */
	public VariantType getParameterType()
	{
		// const GVariantType * g_action_get_parameter_type (GAction *action);
		auto p = g_action_get_parameter_type(getActionTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(VariantType)(cast(GVariantType*) p);
	}
	
	/**
	 * Queries the type of the state of action.
	 * If the action is stateful (e.g. created with
	 * g_simple_action_new_stateful()) then this function returns the
	 * GVariantType of the state. This is the type of the initial value
	 * given as the state. All calls to g_action_change_state() must give a
	 * GVariant of this type and g_action_get_state() will return a
	 * GVariant of the same type.
	 * If the action is not stateful (e.g. created with g_simple_action_new())
	 * then this function will return NULL. In that case, g_action_get_state()
	 * will return NULL and you must not call g_action_change_state().
	 * Since 2.28
	 * Returns: the state type, if the action is stateful. [allow-none]
	 */
	public VariantType getStateType()
	{
		// const GVariantType * g_action_get_state_type (GAction *action);
		auto p = g_action_get_state_type(getActionTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(VariantType)(cast(GVariantType*) p);
	}
	
	/**
	 * Requests a hint about the valid range of values for the state of
	 * action.
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
	 * Returns: the state range hint. [transfer full]
	 */
	public Variant getStateHint()
	{
		// GVariant * g_action_get_state_hint (GAction *action);
		auto p = g_action_get_state_hint(getActionTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Checks if action is currently enabled.
	 * An action must be enabled in order to be activated or in order to
	 * have its state changed from outside callers.
	 * Since 2.28
	 * Returns: whether the action is enabled
	 */
	public int getEnabled()
	{
		// gboolean g_action_get_enabled (GAction *action);
		return g_action_get_enabled(getActionTStruct());
	}
	
	/**
	 * Queries the current state of action.
	 * If the action is not stateful then NULL will be returned. If the
	 * action is stateful then the type of the return value is the type
	 * given by g_action_get_state_type().
	 * The return value (if non-NULL) should be freed with
	 * g_variant_unref() when it is no longer required.
	 * Since 2.28
	 * Returns: the current state of the action. [transfer full]
	 */
	public Variant getState()
	{
		// GVariant * g_action_get_state (GAction *action);
		auto p = g_action_get_state(getActionTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Request for the state of action to be changed to value.
	 * The action must be stateful and value must be of the correct type.
	 * See g_action_get_state_type().
	 * This call merely requests a change. The action may refuse to change
	 * its state or may change its state to something other than value.
	 * See g_action_get_state_hint().
	 * If the value GVariant is floating, it is consumed.
	 * Since 2.30
	 * Params:
	 * value = the new state
	 */
	public void changeState(Variant value)
	{
		// void g_action_change_state (GAction *action,  GVariant *value);
		g_action_change_state(getActionTStruct(), (value is null) ? null : value.getVariantStruct());
	}
	
	/**
	 * Activates the action.
	 * Since 2.28
	 * Params:
	 * parameter = the parameter to the activation. [allow-none]
	 */
	public void activate(Variant parameter)
	{
		// void g_action_activate (GAction *action,  GVariant *parameter);
		g_action_activate(getActionTStruct(), (parameter is null) ? null : parameter.getVariantStruct());
	}
}
