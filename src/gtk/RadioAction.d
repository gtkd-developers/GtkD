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
 * inFile  = GtkRadioAction.html
 * outPack = gtk
 * outFile = RadioAction
 * strct   = GtkRadioAction
 * realStrct=
 * ctorStrct=
 * clss    = RadioAction
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_radio_action_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.RadioAction;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListSG;



private import gtk.ToggleAction;

/**
 * Description
 * A GtkRadioAction is similar to GtkRadioMenuItem. A number of radio
 * actions can be linked together so that only one may be active at any
 * one time.
 */
public class RadioAction : ToggleAction
{
	
	/** the main Gtk struct */
	protected GtkRadioAction* gtkRadioAction;
	
	
	public GtkRadioAction* getRadioActionStruct()
	{
		return gtkRadioAction;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRadioAction;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRadioAction* gtkRadioAction)
	{
		super(cast(GtkToggleAction*)gtkRadioAction);
		this.gtkRadioAction = gtkRadioAction;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkRadioAction = cast(GtkRadioAction*)obj;
	}
	
	/**
	 * Creates a new GtkRadioAction object. To add the action to
	 * a GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * Since 2.4
	 * Params:
	 * name =  A unique name for the action
	 * label =  The label displayed in menu items and on buttons, or NULL
	 * tooltip =  A tooltip for this action, or NULL
	 * stockId =  The stock icon to display in widgets representing this
	 *  action, or NULL
	 * value =  The value which gtk_radio_action_get_current_value() should
	 *  return if this action is selected.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, StockID stockId, int value)
	{
		this(name, label, tooltip, StockDesc[stockId], value);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(GtkRadioAction*, RadioAction)[] onChangedListeners;
	/**
	 * The ::changed signal is emitted on every member of a radio group when the
	 * active member is changed. The signal gets emitted after the ::activate signals
	 * for the previous and current active members.
	 * Since 2.4
	 */
	void addOnChanged(void delegate(GtkRadioAction*, RadioAction) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkRadioAction* actionStruct, GtkRadioAction* current, RadioAction _radioAction)
	{
		foreach ( void delegate(GtkRadioAction*, RadioAction) dlg ; _radioAction.onChangedListeners )
		{
			dlg(current, _radioAction);
		}
	}
	
	
	/**
	 * Creates a new GtkRadioAction object. To add the action to
	 * a GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * Since 2.4
	 * Params:
	 * name = A unique name for the action
	 * label = The label displayed in menu items and on buttons,
	 * or NULL. [allow-none]
	 * tooltip = A tooltip for this action, or NULL. [allow-none]
	 * stockId = The stock icon to display in widgets representing
	 * this action, or NULL. [allow-none]
	 * value = The value which gtk_radio_action_get_current_value() should
	 * return if this action is selected.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, string stockId, int value)
	{
		// GtkRadioAction * gtk_radio_action_new (const gchar *name,  const gchar *label,  const gchar *tooltip,  const gchar *stock_id,  gint value);
		auto p = gtk_radio_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId), value);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId), value)");
		}
		this(cast(GtkRadioAction*) p);
	}
	
	/**
	 * Returns the list representing the radio group for this object.
	 * Note that the returned list is only valid until the next change
	 * to the group.
	 * Since 2.4
	 * Returns: the list representing the radio group for this object. [element-type GtkRadioAction][transfer none]
	 */
	public ListSG getGroup()
	{
		// GSList * gtk_radio_action_get_group (GtkRadioAction *action);
		auto p = gtk_radio_action_get_group(gtkRadioAction);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Sets the radio group for the radio action object.
	 * Since 2.4
	 * Params:
	 * group = a list representing a radio group. [element-type GtkRadioAction]
	 */
	public void setGroup(ListSG group)
	{
		// void gtk_radio_action_set_group (GtkRadioAction *action,  GSList *group);
		gtk_radio_action_set_group(gtkRadioAction, (group is null) ? null : group.getListSGStruct());
	}
	
	/**
	 * Joins a radio action object to the group of another radio action object.
	 * Use this in language bindings instead of the gtk_radio_action_get_group()
	 * and gtk_radio_action_set_group() methods
	 * Params:
	 * groupSource = a radio action object whos group we are
	 * joining, or NULL to remove the radio action from its group. [allow-none]
	 * Since 3.0
	 */
	public void joinGroup(GtkRadioAction* groupSource)
	{
		// void gtk_radio_action_join_group (GtkRadioAction *action,  GtkRadioAction *group_source);
		gtk_radio_action_join_group(gtkRadioAction, groupSource);
	}
	
	/**
	 * Obtains the value property of the currently active member of
	 * the group to which action belongs.
	 * Since 2.4
	 * Returns: The value of the currently active group member
	 */
	public int getCurrentValue()
	{
		// gint gtk_radio_action_get_current_value (GtkRadioAction *action);
		return gtk_radio_action_get_current_value(gtkRadioAction);
	}
	
	/**
	 * Sets the currently active group member to the member with value
	 * property current_value.
	 * Since 2.10
	 * Params:
	 * currentValue = the new value
	 */
	public void setCurrentValue(int currentValue)
	{
		// void gtk_radio_action_set_current_value (GtkRadioAction *action,  gint current_value);
		gtk_radio_action_set_current_value(gtkRadioAction, currentValue);
	}
}
