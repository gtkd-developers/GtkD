/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = RadioAction
 * strct   = GtkRadioAction
 * realStrct=
 * clss    = RadioAction
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_radio_action_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * local aliases:
 */

module gtk.RadioAction;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import glib.ListSG;

/**
 * Description
 * A GtkRadioAction is similar to GtkRadioMenuItem. A number of radio
 * actions can be linked together so that only one may be active at any
 * one time.
 */
private import gtk.ToggleAction;
public class RadioAction : ToggleAction
{
	
	/** the main Gtk struct */
	protected GtkRadioAction* gtkRadioAction;
	
	
	public GtkRadioAction* getRadioActionStruct()
	{
		return gtkRadioAction;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(GtkRadioAction*, RadioAction)[] onChangedListeners;
	void addOnChanged(void delegate(GtkRadioAction*, RadioAction) dlg)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			this,
			null,
			0);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkRadioAction* actionStruct, GtkRadioAction* current, RadioAction radioAction)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkRadioAction*, RadioAction) dlg ; radioAction.onChangedListeners )
		{
			dlg(current, radioAction);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkRadioAction object. To add the action to
	 * a GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * name:
	 *  A unique name for the action
	 * label:
	 *  The label displayed in menu items and on buttons
	 * tooltip:
	 *  A tooltip for this action
	 * stock_id:
	 *  The stock icon to display in widgets representing this action
	 * value:
	 *  The value which gtk_radio_action_get_current_value() should return
	 *  if this action is selected.
	 * Returns:
	 *  a new GtkRadioAction
	 * Since 2.4
	 */
	public this (char[] name, char[] label, char[] tooltip, char[] stockId, int value)
	{
		// GtkRadioAction* gtk_radio_action_new (const gchar *name,  const gchar *label,  const gchar *tooltip,  const gchar *stock_id,  gint value);
		this(cast(GtkRadioAction*)gtk_radio_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId), value) );
	}
	
	/**
	 * Returns the list representing the radio group for this object.
	 * Note that the returned list is only valid until the next change
	 * to the group.
	 * A common way to set up a group of radio group is the following:
	 *  GSList *group = NULL;
	 *  GtkRadioAction *action;
	 *  while (/+* more actions to add +/)
	 *  {
		 *  action = gtk_radio_action_new (...);
		 *  gtk_radio_action_set_group (action, group);
		 *  group = gtk_radio_action_get_group (action);
	 *  }
	 * action:
	 *  the action object
	 * Returns:
	 *  the list representing the radio group for this object
	 * Since 2.4
	 */
	public ListSG getGroup()
	{
		// GSList* gtk_radio_action_get_group (GtkRadioAction *action);
		return new ListSG( gtk_radio_action_get_group(gtkRadioAction) );
	}
	
	/**
	 * Sets the radio group for the radio action object.
	 * action:
	 *  the action object
	 * group:
	 *  a list representing a radio group
	 * Since 2.4
	 */
	public void setGroup(ListSG group)
	{
		// void gtk_radio_action_set_group (GtkRadioAction *action,  GSList *group);
		gtk_radio_action_set_group(gtkRadioAction, (group is null) ? null : group.getListSGStruct());
	}
	
	/**
	 * Obtains the value property of the currently active member of
	 * the group to which action belongs.
	 * action:
	 *  a GtkRadioAction
	 * Returns:
	 *  The value of the currently active group member
	 * Since 2.4
	 * Property Details
	 * The "group" property
	 *  "group" GtkRadioAction : Write
	 * Sets a new group for a radio action.
	 * Since 2.4
	 */
	public int getCurrentValue()
	{
		// gint gtk_radio_action_get_current_value  (GtkRadioAction *action);
		return gtk_radio_action_get_current_value(gtkRadioAction);
	}
	
}
