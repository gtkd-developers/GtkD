/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
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
 * module aliases:
 * local aliases:
 */

module gtk.ToggleAction;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;



private import gtk.Action;

/**
 * Description
 * A GtkToggleAction corresponds roughly to a GtkCheckMenuItem. It has an
 * "active" state specifying whether the action has been checked or not.
 */
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
		version(noAssert)
		{
			if ( gtkToggleAction is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkToggleAction is null on constructor").newline;
				}
				else
				{
					printf("struct gtkToggleAction is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkToggleAction !is null, "struct gtkToggleAction is null on constructor");
		}
		super(cast(GtkAction*)gtkToggleAction);
		this.gtkToggleAction = gtkToggleAction;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(ToggleAction)[] onToggledListeners;
	void addOnToggled(void delegate(ToggleAction) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toggled" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggled",
			cast(GCallback)&callBackToggled,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toggled"] = 1;
		}
		onToggledListeners ~= dlg;
	}
	extern(C) static void callBackToggled(GtkToggleAction* toggleactionStruct, ToggleAction toggleAction)
	{
		bool consumed = false;
		
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
	 * Since 2.4
	 * Params:
	 * name =  A unique name for the action
	 * label =  The label displayed in menu items and on buttons, or NULL
	 * tooltip =  A tooltip for the action, or NULL
	 * stockId =  The stock icon to display in widgets representing the
	 *  action, or NULL
	 */
	public this (char[] name, char[] label, char[] tooltip, char[] stockId)
	{
		// GtkToggleAction* gtk_toggle_action_new (const gchar *name,  const gchar *label,  const gchar *tooltip,  const gchar *stock_id);
		this(cast(GtkToggleAction*)gtk_toggle_action_new(Str.toStringz(name), Str.toStringz(label), Str.toStringz(tooltip), Str.toStringz(stockId)) );
	}
	
	/**
	 * Emits the "toggled" signal on the toggle action.
	 * Since 2.4
	 */
	public void toggled()
	{
		// void gtk_toggle_action_toggled (GtkToggleAction *action);
		gtk_toggle_action_toggled(gtkToggleAction);
	}
	
	/**
	 * Sets the checked state on the toggle action.
	 * Since 2.4
	 * Params:
	 * isActive =  whether the action should be checked or not
	 */
	public void setActive(int isActive)
	{
		// void gtk_toggle_action_set_active (GtkToggleAction *action,  gboolean is_active);
		gtk_toggle_action_set_active(gtkToggleAction, isActive);
	}
	
	/**
	 * Returns the checked state of the toggle action.
	 * Since 2.4
	 * Returns: the checked state of the toggle action
	 */
	public int getActive()
	{
		// gboolean gtk_toggle_action_get_active (GtkToggleAction *action);
		return gtk_toggle_action_get_active(gtkToggleAction);
	}
	
	/**
	 * Sets whether the action should have proxies like a radio action.
	 * Since 2.4
	 * Params:
	 * drawAsRadio =  whether the action should have proxies like a radio
	 *  action
	 */
	public void setDrawAsRadio(int drawAsRadio)
	{
		// void gtk_toggle_action_set_draw_as_radio (GtkToggleAction *action,  gboolean draw_as_radio);
		gtk_toggle_action_set_draw_as_radio(gtkToggleAction, drawAsRadio);
	}
	
	/**
	 * Returns whether the action should have proxies like a radio action.
	 * Since 2.4
	 * Returns: whether the action should have proxies like a radio action.
	 */
	public int getDrawAsRadio()
	{
		// gboolean gtk_toggle_action_get_draw_as_radio (GtkToggleAction *action);
		return gtk_toggle_action_get_draw_as_radio(gtkToggleAction);
	}
	
}
