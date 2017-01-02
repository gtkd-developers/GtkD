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


module gtk.ToggleAction;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Action;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkToggleAction corresponds roughly to a #GtkCheckMenuItem. It has an
 * “active” state specifying whether the action has been checked or not.
 */
public class ToggleAction : Action
{
	/** the main Gtk struct */
	protected GtkToggleAction* gtkToggleAction;

	/** Get the main Gtk struct */
	public GtkToggleAction* getToggleActionStruct()
	{
		return gtkToggleAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToggleAction;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkToggleAction = cast(GtkToggleAction*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkToggleAction* gtkToggleAction, bool ownedRef = false)
	{
		this.gtkToggleAction = gtkToggleAction;
		super(cast(GtkAction*)gtkToggleAction, ownedRef);
	}

	/**
	 * Creates a new ToggleAction object. To add the action to
	 * a ActionGroup and set the accelerator for the action,
	 * call gtk.ActionGroup.ActionGroup.addActionWithAccel().
	 *
	 * Since: 2.4
	 *
	 * Params:
	 *     name    = A unique name for the action
	 *     label   = The label displayed in menu items and on buttons, or null
	 *     tooltip = A tooltip for the action, or null
	 *     stockId = The stock icon to display in widgets representing the
	 *               action, or null
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string label, string tooltip, StockID stockId)
	{
		this(name, label, tooltip, cast(string)stockId);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_toggle_action_get_type();
	}

	/**
	 * Creates a new #GtkToggleAction object. To add the action to
	 * a #GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 *
	 * Params:
	 *     name = A unique name for the action
	 *     label = The label displayed in menu items and on buttons,
	 *         or %NULL
	 *     tooltip = A tooltip for the action, or %NULL
	 *     stockId = The stock icon to display in widgets representing
	 *         the action, or %NULL
	 *
	 * Return: a new #GtkToggleAction
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string label, string tooltip, string stockId)
	{
		auto p = gtk_toggle_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkToggleAction*) p, true);
	}

	/**
	 * Returns the checked state of the toggle action.
	 *
	 * Return: the checked state of the toggle action
	 *
	 * Since: 2.4
	 */
	public bool getActive()
	{
		return gtk_toggle_action_get_active(gtkToggleAction) != 0;
	}

	/**
	 * Returns whether the action should have proxies like a radio action.
	 *
	 * Return: whether the action should have proxies like a radio action.
	 *
	 * Since: 2.4
	 */
	public bool getDrawAsRadio()
	{
		return gtk_toggle_action_get_draw_as_radio(gtkToggleAction) != 0;
	}

	/**
	 * Sets the checked state on the toggle action.
	 *
	 * Params:
	 *     isActive = whether the action should be checked or not
	 *
	 * Since: 2.4
	 */
	public void setActive(bool isActive)
	{
		gtk_toggle_action_set_active(gtkToggleAction, isActive);
	}

	/**
	 * Sets whether the action should have proxies like a radio action.
	 *
	 * Params:
	 *     drawAsRadio = whether the action should have proxies like a radio
	 *         action
	 *
	 * Since: 2.4
	 */
	public void setDrawAsRadio(bool drawAsRadio)
	{
		gtk_toggle_action_set_draw_as_radio(gtkToggleAction, drawAsRadio);
	}

	/**
	 * Emits the “toggled” signal on the toggle action.
	 *
	 * Since: 2.4
	 */
	public void toggled()
	{
		gtk_toggle_action_toggled(gtkToggleAction);
	}

	protected class OnToggledDelegateWrapper
	{
		void delegate(ToggleAction) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ToggleAction) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnToggledDelegateWrapper[] onToggledListeners;

	/**
	 * Should be connected if you wish to perform an action
	 * whenever the #GtkToggleAction state is changed.
	 */
	gulong addOnToggled(void delegate(ToggleAction) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onToggledListeners ~= new OnToggledDelegateWrapper(dlg, 0, connectFlags);
		onToggledListeners[onToggledListeners.length - 1].handlerId = Signals.connectData(
			this,
			"toggled",
			cast(GCallback)&callBackToggled,
			cast(void*)onToggledListeners[onToggledListeners.length - 1],
			cast(GClosureNotify)&callBackToggledDestroy,
			connectFlags);
		return onToggledListeners[onToggledListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackToggled(GtkToggleAction* toggleactionStruct,OnToggledDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackToggledDestroy(OnToggledDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnToggled(wrapper);
	}

	protected void internalRemoveOnToggled(OnToggledDelegateWrapper source)
	{
		foreach(index, wrapper; onToggledListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onToggledListeners[index] = null;
				onToggledListeners = std.algorithm.remove(onToggledListeners, index);
				break;
			}
		}
	}
	
}
