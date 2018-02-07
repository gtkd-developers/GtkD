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


module gtk.RadioAction;

private import glib.ConstructionException;
private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ToggleAction;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkRadioAction is similar to #GtkRadioMenuItem. A number of radio
 * actions can be linked together so that only one may be active at any
 * one time.
 */
public class RadioAction : ToggleAction
{
	/** the main Gtk struct */
	protected GtkRadioAction* gtkRadioAction;

	/** Get the main Gtk struct */
	public GtkRadioAction* getRadioActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRadioAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRadioAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRadioAction* gtkRadioAction, bool ownedRef = false)
	{
		this.gtkRadioAction = gtkRadioAction;
		super(cast(GtkToggleAction*)gtkRadioAction, ownedRef);
	}

	/**
	 * Creates a new RadioAction object. To add the action to
	 * a ActionGroup and set the accelerator for the action,
	 * call gtk.ActionGroup.ActionGroup.addActionWithAccel().
	 *
	 * Since: 2.4
	 *
	 * Params:
	 *     name    = A unique name for the action
	 *     label   = The label displayed in menu items and on buttons, or null
	 *     tooltip = A tooltip for this action, or null
	 *     stockId = The stock icon to display in widgets representing this
	 *               action, or null
	 *     value   = The value which getCurrentValue() should
	 *               return if this action is selected.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, StockID stockId, int value)
	{
		this(name, label, tooltip, cast(string)stockId, value);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_radio_action_get_type();
	}

	/**
	 * Creates a new #GtkRadioAction object. To add the action to
	 * a #GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 *
	 * Params:
	 *     name = A unique name for the action
	 *     label = The label displayed in menu items and on buttons,
	 *         or %NULL
	 *     tooltip = A tooltip for this action, or %NULL
	 *     stockId = The stock icon to display in widgets representing
	 *         this action, or %NULL
	 *     value = The value which gtk_radio_action_get_current_value() should
	 *         return if this action is selected.
	 *
	 * Returns: a new #GtkRadioAction
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string label, string tooltip, string stockId, int value)
	{
		auto p = gtk_radio_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId), value);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRadioAction*) p, true);
	}

	/**
	 * Obtains the value property of the currently active member of
	 * the group to which @action belongs.
	 *
	 * Returns: The value of the currently active group member
	 *
	 * Since: 2.4
	 */
	public int getCurrentValue()
	{
		return gtk_radio_action_get_current_value(gtkRadioAction);
	}

	/**
	 * Returns the list representing the radio group for this object.
	 * Note that the returned list is only valid until the next change
	 * to the group.
	 *
	 * A common way to set up a group of radio group is the following:
	 * |[<!-- language="C" -->
	 * GSList *group = NULL;
	 * GtkRadioAction *action;
	 *
	 * while ( ...more actions to add... /)
	 * {
	 * action = gtk_radio_action_new (...);
	 *
	 * gtk_radio_action_set_group (action, group);
	 * group = gtk_radio_action_get_group (action);
	 * }
	 * ]|
	 *
	 * Returns: the list representing the radio group for this object
	 *
	 * Since: 2.4
	 */
	public ListSG getGroup()
	{
		auto p = gtk_radio_action_get_group(gtkRadioAction);

		if(p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) p);
	}

	/**
	 * Joins a radio action object to the group of another radio action object.
	 *
	 * Use this in language bindings instead of the gtk_radio_action_get_group()
	 * and gtk_radio_action_set_group() methods
	 *
	 * A common way to set up a group of radio actions is the following:
	 * |[<!-- language="C" -->
	 * GtkRadioAction *action;
	 * GtkRadioAction *last_action;
	 *
	 * while ( ...more actions to add... /)
	 * {
	 * action = gtk_radio_action_new (...);
	 *
	 * gtk_radio_action_join_group (action, last_action);
	 * last_action = action;
	 * }
	 * ]|
	 *
	 * Params:
	 *     groupSource = a radio action object whos group we are
	 *         joining, or %NULL to remove the radio action from its group
	 *
	 * Since: 3.0
	 */
	public void joinGroup(RadioAction groupSource)
	{
		gtk_radio_action_join_group(gtkRadioAction, (groupSource is null) ? null : groupSource.getRadioActionStruct());
	}

	/**
	 * Sets the currently active group member to the member with value
	 * property @current_value.
	 *
	 * Params:
	 *     currentValue = the new value
	 *
	 * Since: 2.10
	 */
	public void setCurrentValue(int currentValue)
	{
		gtk_radio_action_set_current_value(gtkRadioAction, currentValue);
	}

	/**
	 * Sets the radio group for the radio action object.
	 *
	 * Params:
	 *     group = a list representing a radio group, or %NULL
	 *
	 * Since: 2.4
	 */
	public void setGroup(ListSG group)
	{
		gtk_radio_action_set_group(gtkRadioAction, (group is null) ? null : group.getListSGStruct());
	}

	/**
	 * The ::changed signal is emitted on every member of a radio group when the
	 * active member is changed. The signal gets emitted after the ::activate signals
	 * for the previous and current active members.
	 *
	 * Params:
	 *     current = the member of @action's group which has just been activated
	 *
	 * Since: 2.4
	 */
	gulong addOnChanged(void delegate(RadioAction, RadioAction) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
