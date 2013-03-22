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
 * inFile  = GtkCheckMenuItem.html
 * outPack = gtk
 * outFile = CheckMenuItem
 * strct   = GtkCheckMenuItem
 * realStrct=
 * ctorStrct=
 * clss    = CheckMenuItem
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_check_menu_item_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_check_menu_item_new_with_label
 * 	- gtk_check_menu_item_new_with_mnemonic
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CheckMenuItem;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;



private import gtk.MenuItem;

/**
 * A GtkCheckMenuItem is a menu item that maintains the state of a boolean
 * value in addition to a GtkMenuItem usual role in activating application
 * code.
 *
 * A check box indicating the state of the boolean value is displayed
 * at the left side of the GtkMenuItem. Activating the GtkMenuItem
 * toggles the value.
 */
public class CheckMenuItem : MenuItem
{
	
	/** the main Gtk struct */
	protected GtkCheckMenuItem* gtkCheckMenuItem;
	
	
	public GtkCheckMenuItem* getCheckMenuItemStruct()
	{
		return gtkCheckMenuItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCheckMenuItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCheckMenuItem* gtkCheckMenuItem)
	{
		super(cast(GtkMenuItem*)gtkCheckMenuItem);
		this.gtkCheckMenuItem = gtkCheckMenuItem;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCheckMenuItem = cast(GtkCheckMenuItem*)obj;
	}
	
	/**
	 * Creates a new GtkCheckMenuItem with a label.
	 * Params:
	 *  label = the string to use for the label.
	 *  mnemonic = if true the label
	 *  will be created using gtk_label_new_with_mnemonic(), so underscores
	 *  in label indicate the mnemonic for the menu item.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string label, bool mnemonic=true)
	{
		GtkCheckMenuItem* p;
		
		if ( mnemonic )
		{
			// GtkWidget* gtk_check_menu_item_new_with_mnemonic  (const gchar *label);
			p = cast(GtkCheckMenuItem*)gtk_check_menu_item_new_with_mnemonic(Str.toStringz(label));
		}
		else
		{
			// GtkWidget* gtk_check_menu_item_new_with_label  (const gchar *label);
			p = cast(GtkCheckMenuItem*)gtk_check_menu_item_new_with_label(Str.toStringz(label));
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_check_menu_item_new_with_");
		}
		
		this(p);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(CheckMenuItem)[] onToggledListeners;
	/**
	 * This signal is emitted when the state of the check box is changed.
	 * A signal handler can use gtk_check_menu_item_get_active()
	 * to discover the new state.
	 */
	void addOnToggled(void delegate(CheckMenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackToggled(GtkCheckMenuItem* checkmenuitemStruct, CheckMenuItem _checkMenuItem)
	{
		foreach ( void delegate(CheckMenuItem) dlg ; _checkMenuItem.onToggledListeners )
		{
			dlg(_checkMenuItem);
		}
	}
	
	
	/**
	 * Creates a new GtkCheckMenuItem.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_check_menu_item_new (void);
		auto p = gtk_check_menu_item_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_check_menu_item_new()");
		}
		this(cast(GtkCheckMenuItem*) p);
	}
	
	/**
	 * Returns whether the check menu item is active. See
	 * gtk_check_menu_item_set_active().
	 * Returns: TRUE if the menu item is checked.
	 */
	public int getActive()
	{
		// gboolean gtk_check_menu_item_get_active (GtkCheckMenuItem *check_menu_item);
		return gtk_check_menu_item_get_active(gtkCheckMenuItem);
	}
	
	/**
	 * Sets the active state of the menu item's check box.
	 * Params:
	 * isActive = boolean value indicating whether the check box is active.
	 */
	public void setActive(int isActive)
	{
		// void gtk_check_menu_item_set_active (GtkCheckMenuItem *check_menu_item,  gboolean is_active);
		gtk_check_menu_item_set_active(gtkCheckMenuItem, isActive);
	}
	
	/**
	 * Emits the "toggled" signal.
	 */
	public void toggled()
	{
		// void gtk_check_menu_item_toggled (GtkCheckMenuItem *check_menu_item);
		gtk_check_menu_item_toggled(gtkCheckMenuItem);
	}
	
	/**
	 * Retrieves the value set by gtk_check_menu_item_set_inconsistent().
	 * Returns: TRUE if inconsistent
	 */
	public int getInconsistent()
	{
		// gboolean gtk_check_menu_item_get_inconsistent  (GtkCheckMenuItem *check_menu_item);
		return gtk_check_menu_item_get_inconsistent(gtkCheckMenuItem);
	}
	
	/**
	 * If the user has selected a range of elements (such as some text or
	 * spreadsheet cells) that are affected by a boolean setting, and the
	 * current values in that range are inconsistent, you may want to
	 * display the check in an "in between" state. This function turns on
	 * "in between" display. Normally you would turn off the inconsistent
	 * state again if the user explicitly selects a setting. This has to be
	 * done manually, gtk_check_menu_item_set_inconsistent() only affects
	 * visual appearance, it doesn't affect the semantics of the widget.
	 * Params:
	 * setting = TRUE to display an "inconsistent" third state check
	 */
	public void setInconsistent(int setting)
	{
		// void gtk_check_menu_item_set_inconsistent  (GtkCheckMenuItem *check_menu_item,  gboolean setting);
		gtk_check_menu_item_set_inconsistent(gtkCheckMenuItem, setting);
	}
	
	/**
	 * Sets whether check_menu_item is drawn like a GtkRadioMenuItem
	 * Since 2.4
	 * Params:
	 * drawAsRadio = whether check_menu_item is drawn like a GtkRadioMenuItem
	 */
	public void setDrawAsRadio(int drawAsRadio)
	{
		// void gtk_check_menu_item_set_draw_as_radio  (GtkCheckMenuItem *check_menu_item,  gboolean draw_as_radio);
		gtk_check_menu_item_set_draw_as_radio(gtkCheckMenuItem, drawAsRadio);
	}
	
	/**
	 * Returns whether check_menu_item looks like a GtkRadioMenuItem
	 * Since 2.4
	 * Returns: Whether check_menu_item looks like a GtkRadioMenuItem
	 */
	public int getDrawAsRadio()
	{
		// gboolean gtk_check_menu_item_get_draw_as_radio  (GtkCheckMenuItem *check_menu_item);
		return gtk_check_menu_item_get_draw_as_radio(gtkCheckMenuItem);
	}
}
