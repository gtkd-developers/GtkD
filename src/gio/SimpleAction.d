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
 * inFile  = GSimpleAction.html
 * outPack = gio
 * outFile = SimpleAction
 * strct   = GSimpleAction
 * realStrct=
 * ctorStrct=
 * clss    = SimpleAction
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ActionIF
 * prefixes:
 * 	- g_simple_action_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.Variant
 * 	- glib.VariantType
 * 	- gio.ActionIF
 * 	- gio.ActionT
 * structWrap:
 * 	- GVariant* -> Variant
 * 	- GVariantType* -> VariantType
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SimpleAction;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.Variant;
private import glib.VariantType;
private import gio.ActionIF;
private import gio.ActionT;



private import gobject.ObjectG;

/**
 * A GSimpleAction is the obvious simple implementation of the GAction
 * interface. This is the easiest way to create an action for purposes of
 * adding it to a GSimpleActionGroup.
 *
 * See also GtkAction.
 */
public class SimpleAction : ObjectG, ActionIF
{
	
	/** the main Gtk struct */
	protected GSimpleAction* gSimpleAction;
	
	
	public GSimpleAction* getSimpleActionStruct()
	{
		return gSimpleAction;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimpleAction;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSimpleAction* gSimpleAction)
	{
		super(cast(GObject*)gSimpleAction);
		this.gSimpleAction = gSimpleAction;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSimpleAction = cast(GSimpleAction*)obj;
	}
	
	// add the Action capabilities
	mixin ActionT!(GSimpleAction);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Variant, SimpleAction)[] onActivateListeners;
	/**
	 * Indicates that the action was just activated.
	 * parameter will always be of the expected type. In the event that
	 * an incorrect type was given, no signal will be emitted.
	 * Since 2.28
	 */
	void addOnActivate(void delegate(Variant, SimpleAction) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate",
			cast(GCallback)&callBackActivate,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate"] = 1;
		}
		onActivateListeners ~= dlg;
	}
	extern(C) static void callBackActivate(GSimpleAction* simpleStruct, GVariant* parameter, SimpleAction _simpleAction)
	{
		foreach ( void delegate(Variant, SimpleAction) dlg ; _simpleAction.onActivateListeners )
		{
			dlg(ObjectG.getDObject!(Variant)(parameter), _simpleAction);
		}
	}
	
	void delegate(Variant, SimpleAction)[] onChangeStateListeners;
	/**
	 * Indicates that the action just received a request to change its
	 * state.
	 * value will always be of the correct state type. In the event that
	 * an incorrect type was given, no signal will be emitted.
	 * If no handler is connected to this signal then the default
	 * behaviour is to call g_simple_action_set_state() to set the state
	 * to the requested value. If you connect a signal handler then no
	 * default action is taken. If the state should change then you must
	 * call g_simple_action_set_state() from the handler.
	 * $(DDOC_COMMENT example)
	 *
	 * The handler need not set the state to the requested value. It
	 * could set it to any value at all, or take some other action.
	 * Since 2.30
	 */
	void addOnChangeState(void delegate(Variant, SimpleAction) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("change-state" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"change-state",
			cast(GCallback)&callBackChangeState,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["change-state"] = 1;
		}
		onChangeStateListeners ~= dlg;
	}
	extern(C) static void callBackChangeState(GSimpleAction* simpleStruct, GVariant* value, SimpleAction _simpleAction)
	{
		foreach ( void delegate(Variant, SimpleAction) dlg ; _simpleAction.onChangeStateListeners )
		{
			dlg(ObjectG.getDObject!(Variant)(value), _simpleAction);
		}
	}
	
	
	/**
	 * Creates a new action.
	 * The created action is stateless. See g_simple_action_new_stateful().
	 * Since 2.28
	 * Params:
	 * name = the name of the action
	 * parameterType = the type of parameter to the activate function. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, VariantType parameterType)
	{
		// GSimpleAction * g_simple_action_new (const gchar *name,  const GVariantType *parameter_type);
		auto p = g_simple_action_new(Str.toStringz(name), (parameterType is null) ? null : parameterType.getVariantTypeStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_simple_action_new(Str.toStringz(name), (parameterType is null) ? null : parameterType.getVariantTypeStruct())");
		}
		this(cast(GSimpleAction*) p);
	}
	
	/**
	 * Creates a new stateful action.
	 * state is the initial state of the action. All future state values
	 * must have the same GVariantType as the initial state.
	 * If the state GVariant is floating, it is consumed.
	 * Since 2.28
	 * Params:
	 * name = the name of the action
	 * parameterType = the type of the parameter to the activate function. [allow-none]
	 * state = the initial state of the action
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, VariantType parameterType, Variant state)
	{
		// GSimpleAction * g_simple_action_new_stateful (const gchar *name,  const GVariantType *parameter_type,  GVariant *state);
		auto p = g_simple_action_new_stateful(Str.toStringz(name), (parameterType is null) ? null : parameterType.getVariantTypeStruct(), (state is null) ? null : state.getVariantStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_simple_action_new_stateful(Str.toStringz(name), (parameterType is null) ? null : parameterType.getVariantTypeStruct(), (state is null) ? null : state.getVariantStruct())");
		}
		this(cast(GSimpleAction*) p);
	}
	
	/**
	 * Sets the action as enabled or not.
	 * An action must be enabled in order to be activated or in order to
	 * have its state changed from outside callers.
	 * This should only be called by the implementor of the action. Users
	 * of the action should not attempt to modify its enabled flag.
	 * Since 2.28
	 * Params:
	 * enabled = whether the action is enabled
	 */
	public void setEnabled(int enabled)
	{
		// void g_simple_action_set_enabled (GSimpleAction *simple,  gboolean enabled);
		g_simple_action_set_enabled(gSimpleAction, enabled);
	}
	
	/**
	 * Sets the state of the action.
	 * This directly updates the 'state' property to the given value.
	 * This should only be called by the implementor of the action. Users
	 * of the action should not attempt to directly modify the 'state'
	 * property. Instead, they should call g_action_change_state() to
	 * request the change.
	 * Since 2.30
	 * Params:
	 * value = the new GVariant for the state
	 */
	public void setState(Variant value)
	{
		// void g_simple_action_set_state (GSimpleAction *simple,  GVariant *value);
		g_simple_action_set_state(gSimpleAction, (value is null) ? null : value.getVariantStruct());
	}
}
