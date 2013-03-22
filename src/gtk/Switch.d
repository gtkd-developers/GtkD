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
 * inFile  = GtkSwitch.html
 * outPack = gtk
 * outFile = Switch
 * strct   = GtkSwitch
 * realStrct=
 * ctorStrct=
 * clss    = Switch
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ActionableIF
 * 	- ActivatableIF
 * prefixes:
 * 	- gtk_switch_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.ActionableIF
 * 	- gtk.ActionableT
 * 	- gtk.ActivatableT
 * 	- gtk.ActivatableIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Switch;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.ActivatableT;
private import gtk.ActivatableIF;



private import gtk.Widget;

/**
 * GtkSwitch is a widget that has two states: on or off. The user can control
 * which state should be active by clicking the empty area, or by dragging the
 * handle.
 */
public class Switch : Widget, ActionableIF, ActivatableIF
{
	
	/** the main Gtk struct */
	protected GtkSwitch* gtkSwitch;
	
	
	public GtkSwitch* getSwitchStruct()
	{
		return gtkSwitch;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSwitch;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSwitch* gtkSwitch)
	{
		super(cast(GtkWidget*)gtkSwitch);
		this.gtkSwitch = gtkSwitch;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSwitch = cast(GtkSwitch*)obj;
	}
	
	// add the Actionable capabilities
	mixin ActionableT!(GtkSwitch);
	
	// add the Activatable capabilities
	mixin ActivatableT!(GtkSwitch);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Switch)[] onActivateListeners;
	/**
	 * The ::activate signal on GtkSwitch is an action signal and
	 * emitting it causes the switch to animate.
	 * Applications should never connect to this signal, but use the
	 * notify::active signal.
	 * See Also
	 * GtkToggleButton
	 */
	void addOnActivate(void delegate(Switch) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackActivate(GtkSwitch* widgetStruct, Switch _switc)
	{
		foreach ( void delegate(Switch) dlg ; _switc.onActivateListeners )
		{
			dlg(_switc);
		}
	}
	
	
	/**
	 * Creates a new GtkSwitch widget.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_switch_new (void);
		auto p = gtk_switch_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_switch_new()");
		}
		this(cast(GtkSwitch*) p);
	}
	
	/**
	 * Changes the state of sw to the desired one.
	 * Params:
	 * isActive = TRUE if sw should be active, and FALSE otherwise
	 * Since 3.0
	 */
	public void setActive(int isActive)
	{
		// void gtk_switch_set_active (GtkSwitch *sw,  gboolean is_active);
		gtk_switch_set_active(gtkSwitch, isActive);
	}
	
	/**
	 * Gets whether the GtkSwitch is in its "on" or "off" state.
	 * Returns: TRUE if the GtkSwitch is active, and FALSE otherwise Since 3.0
	 */
	public int getActive()
	{
		// gboolean gtk_switch_get_active (GtkSwitch *sw);
		return gtk_switch_get_active(gtkSwitch);
	}
}
