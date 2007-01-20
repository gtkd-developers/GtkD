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
 * inFile  = GtkToggleAction.html
 * outPack = gtk
 * outFile = ToggleAction
 * strct   = GtkToggleAction
 * realStrct=
 * ctorStrct=
 * clss    = ToggleAction
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_toggle_action_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module gtk.ToggleAction;

private import gtk.gtktypes;

private import lib.gtk;

private import glib.Str;

/**
 * Description
 * A GtkToggleAction corresponds roughly to a GtkCheckMenuItem. It has an
 * "active" state specifying whether the action has been checked or not.
 */
private import gtk.Action;
public class ToggleAction : Action
{
	
	/** the main Gtk struct */
	protected GtkToggleAction* gtkToggleAction;
	
	
	public GtkToggleAction* getToggleActionStruct()
	{
		return gtkToggleAction;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkToggleAction;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkToggleAction* gtkToggleAction)
	{
		super(cast(GtkAction*)gtkToggleAction);
		this.gtkToggleAction = gtkToggleAction;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(ToggleAction)[] onToggledListeners;
	void addOnToggled(void delegate(ToggleAction) dlg)
	{
		if ( !("toggled" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggled",
			cast(GCallback)&callBackToggled,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["toggled"] = 1;
		}
		onToggledListeners ~= dlg;
	}
	extern(C) static void callBackToggled(GtkToggleAction* toggleactionStruct, ToggleAction toggleAction)
	{
		bit consumed = false;
		
		foreach ( void delegate(ToggleAction) dlg ; toggleAction.onToggledListeners )
		{
			dlg(toggleAction);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkToggleAction object. To add the action to
	 * a GtkActionGroup and set the accelerator for the action,
	 * call gtk_action_group_add_action_with_accel().
	 * name:
	 *  A unique name for the action
	 * label:
	 *  The label displayed in menu items and on buttons
	 * tooltip:
	 *  A tooltip for the action
	 * stock_id:
	 *  The stock icon to display in widgets representing the action
	 * Returns:
	 *  a new GtkToggleAction
	 * Since 2.4
	 */
	public this (char[] name, char[] label, char[] tooltip, char[] stockId)
	{
		// GtkToggleAction* gtk_toggle_action_new (const gchar *name,  const gchar *label,  const gchar *tooltip,  const gchar *stock_id);
		this(cast(GtkToggleAction*)gtk_toggle_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId)) );
	}
	
	/**
	 * Emits the "toggled" signal on the toggle action.
	 * action:
	 *  the action object
	 * Since 2.4
	 */
	public void toggled()
	{
		// void gtk_toggle_action_toggled (GtkToggleAction *action);
		gtk_toggle_action_toggled(gtkToggleAction);
	}
	
	/**
	 * Sets the checked state on the toggle action.
	 * action:
	 *  the action object
	 * is_active:
	 *  whether the action should be checked or not
	 * Since 2.4
	 */
	public void setActive(int isActive)
	{
		// void gtk_toggle_action_set_active (GtkToggleAction *action,  gboolean is_active);
		gtk_toggle_action_set_active(gtkToggleAction, isActive);
	}
	
	/**
	 * Returns the checked state of the toggle action.
	 * action:
	 *  the action object
	 * Returns:
	 *  the checked state of the toggle action
	 * Since 2.4
	 */
	public int getActive()
	{
		// gboolean gtk_toggle_action_get_active (GtkToggleAction *action);
		return gtk_toggle_action_get_active(gtkToggleAction);
	}
	
	/**
	 * Sets whether the action should have proxies like a radio action.
	 * action:
	 *  the action object
	 * draw_as_radio:
	 *  whether the action should have proxies like a radio
	 *  action
	 * Since 2.4
	 */
	public void setDrawAsRadio(int drawAsRadio)
	{
		// void gtk_toggle_action_set_draw_as_radio  (GtkToggleAction *action,  gboolean draw_as_radio);
		gtk_toggle_action_set_draw_as_radio(gtkToggleAction, drawAsRadio);
	}
	
	/**
	 * Returns whether the action should have proxies like a radio action.
	 * action:
	 *  the action object
	 * Returns:
	 *  whether the action should have proxies like a radio action.
	 * Since 2.4
	 * Property Details
	 * The "active" property
	 *  "active" gboolean : Read / Write
	 * If the toggle action should be active in or not.
	 * Default value: FALSE
	 * Since 2.10
	 */
	public int getDrawAsRadio()
	{
		// gboolean gtk_toggle_action_get_draw_as_radio  (GtkToggleAction *action);
		return gtk_toggle_action_get_draw_as_radio(gtkToggleAction);
	}
	
}
