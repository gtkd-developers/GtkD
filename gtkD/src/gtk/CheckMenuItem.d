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
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_check_menu_item_new_with_label
 * 	- gtk_check_menu_item_new_with_mnemonic
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.CheckMenuItem;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;



/**
 * Description
 * A GtkCheckMenuItem is a menu item that maintains the state of a boolean
 * value in addition to a GtkMenuItem's usual role in activating application
 * code.
 * A check box indicating the state of the boolean value is displayed
 * at the left side of the GtkMenuItem. Activating the GtkMenuItem
 * toggles the value.
 */
private import gtk.MenuItem;
public class CheckMenuItem : MenuItem
{
	
	/** the main Gtk struct */
	protected GtkCheckMenuItem* gtkCheckMenuItem;
	
	
	public GtkCheckMenuItem* getCheckMenuItemStruct()
	{
		return gtkCheckMenuItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	/**
	 * Creates a new GtkCheckMenuItem with a label.
	 * If mnemonic it true the label
	 * will be created using gtk_label_new_with_mnemonic(), so underscores
	 * in label indicate the mnemonic for the menu item.
	 * label:
	 * the string to use for the label.
	 * Returns:
	 * a new GtkCheckMenuItem.
	 */
	public this (char[] label, bit mnemonic=true)
	{
		if ( mnemonic )
		{
			// GtkWidget* gtk_check_menu_item_new_with_mnemonic  (const gchar *label);
			this(cast(GtkCheckMenuItem*)gtk_check_menu_item_new_with_mnemonic(Str.toStringz(label)) );
		}
		else
		{
			// GtkWidget* gtk_check_menu_item_new_with_label  (const gchar *label);
			this(cast(GtkCheckMenuItem*)gtk_check_menu_item_new_with_label(Str.toStringz(label)) );
		}
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(CheckMenuItem)[] onToggledListeners;
	void addOnToggled(void delegate(CheckMenuItem) dlg)
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
	extern(C) static void callBackToggled(GtkCheckMenuItem* checkmenuitemStruct, CheckMenuItem checkMenuItem)
	{
		bit consumed = false;
		
		foreach ( void delegate(CheckMenuItem) dlg ; checkMenuItem.onToggledListeners )
		{
			dlg(checkMenuItem);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkCheckMenuItem.
	 * Returns:
	 * a new GtkCheckMenuItem.
	 */
	public this ()
	{
		// GtkWidget* gtk_check_menu_item_new (void);
		this(cast(GtkCheckMenuItem*)gtk_check_menu_item_new() );
	}
	
	
	
	
	/**
	 * Returns whether the check menu item is active. See
	 * gtk_check_menu_item_set_active().
	 * check_menu_item:
	 *  a GtkCheckMenuItem
	 * Returns:
	 *  TRUE if the menu item is checked.
	 */
	public int getActive()
	{
		// gboolean gtk_check_menu_item_get_active (GtkCheckMenuItem *check_menu_item);
		return gtk_check_menu_item_get_active(gtkCheckMenuItem);
	}
	
	/**
	 * Sets the active state of the menu item's check box.
	 * check_menu_item:
	 * a GtkCheckMenuItem.
	 * is_active:
	 * boolean value indicating whether the check box is active.
	 */
	public void setActive(int isActive)
	{
		// void gtk_check_menu_item_set_active (GtkCheckMenuItem *check_menu_item,  gboolean is_active);
		gtk_check_menu_item_set_active(gtkCheckMenuItem, isActive);
	}
	
	/**
	 * Warning
	 * gtk_check_menu_item_set_show_toggle is deprecated and should not be used in newly-written code.
	 * Controls whether the check box is shown at all times.
	 * Normally the check box is shown only when it is active or while the
	 * menu item is selected.
	 * menu_item:
	 * a GtkCheckMenuItem.
	 * always:
	 * boolean value indicating whether to always show the check box.
	 */
	public void setShowToggle(int always)
	{
		// void gtk_check_menu_item_set_show_toggle (GtkCheckMenuItem *menu_item,  gboolean always);
		gtk_check_menu_item_set_show_toggle(gtkCheckMenuItem, always);
	}
	
	/**
	 * Emits the GtkCheckMenuItem::toggled signal.
	 * check_menu_item:
	 * a GtkCheckMenuItem.
	 */
	public void toggled()
	{
		// void gtk_check_menu_item_toggled (GtkCheckMenuItem *check_menu_item);
		gtk_check_menu_item_toggled(gtkCheckMenuItem);
	}
	
	/**
	 * Retrieves the value set by gtk_check_menu_item_set_inconsistent().
	 * check_menu_item:
	 *  a GtkCheckMenuItem
	 * Returns:
	 *  TRUE if inconsistent
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
	 * check_menu_item:
	 *  a GtkCheckMenuItem
	 * setting:
	 *  TRUE to display an "inconsistent" third state check
	 */
	public void setInconsistent(int setting)
	{
		// void gtk_check_menu_item_set_inconsistent  (GtkCheckMenuItem *check_menu_item,  gboolean setting);
		gtk_check_menu_item_set_inconsistent(gtkCheckMenuItem, setting);
	}
	
	/**
	 * Sets whether check_menu_item is drawn like a GtkRadioMenuItem
	 * check_menu_item:
	 *  a GtkCheckMenuItem
	 * draw_as_radio:
	 *  whether check_menu_item is drawn like a GtkRadioMenuItem
	 * Since 2.4
	 */
	public void setDrawAsRadio(int drawAsRadio)
	{
		// void gtk_check_menu_item_set_draw_as_radio  (GtkCheckMenuItem *check_menu_item,  gboolean draw_as_radio);
		gtk_check_menu_item_set_draw_as_radio(gtkCheckMenuItem, drawAsRadio);
	}
	
	/**
	 * Returns whether check_menu_item looks like a GtkRadioMenuItem
	 * check_menu_item:
	 *  a GtkCheckMenuItem
	 * Returns:
	 *  Whether check_menu_item looks like a GtkRadioMenuItem
	 * Since 2.4
	 * Property Details
	 * The "active" property
	 *  "active" gboolean : Read / Write
	 * Whether the menu item is checked.
	 * Default value: FALSE
	 */
	public int getDrawAsRadio()
	{
		// gboolean gtk_check_menu_item_get_draw_as_radio  (GtkCheckMenuItem *check_menu_item);
		return gtk_check_menu_item_get_draw_as_radio(gtkCheckMenuItem);
	}
	
	
}
