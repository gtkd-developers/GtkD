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


module gtk.CheckMenuItem;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.MenuItem;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkCheckMenuItem is a menu item that maintains the state of a boolean
 * value in addition to a #GtkMenuItem usual role in activating application
 * code.
 * 
 * A check box indicating the state of the boolean value is displayed
 * at the left side of the #GtkMenuItem.  Activating the #GtkMenuItem
 * toggles the value.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * menuitem
 * ├── check.left
 * ╰── <child>
 * ]|
 * 
 * GtkCheckMenuItem has a main CSS node with name menuitem, and a subnode
 * with name check, which gets the .left or .right style class.
 */
public class CheckMenuItem : MenuItem
{
	/** the main Gtk struct */
	protected GtkCheckMenuItem* gtkCheckMenuItem;

	/** Get the main Gtk struct */
	public GtkCheckMenuItem* getCheckMenuItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCheckMenuItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCheckMenuItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCheckMenuItem* gtkCheckMenuItem, bool ownedRef = false)
	{
		this.gtkCheckMenuItem = gtkCheckMenuItem;
		super(cast(GtkMenuItem*)gtkCheckMenuItem, ownedRef);
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

	/** */
	public static GType getType()
	{
		return gtk_check_menu_item_get_type();
	}

	/**
	 * Creates a new #GtkCheckMenuItem.
	 *
	 * Returns: a new #GtkCheckMenuItem.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_check_menu_item_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCheckMenuItem*) p);
	}

	/**
	 * Returns whether the check menu item is active. See
	 * gtk_check_menu_item_set_active ().
	 *
	 * Returns: %TRUE if the menu item is checked.
	 */
	public bool getActive()
	{
		return gtk_check_menu_item_get_active(gtkCheckMenuItem) != 0;
	}

	/**
	 * Returns whether @check_menu_item looks like a #GtkRadioMenuItem
	 *
	 * Returns: Whether @check_menu_item looks like a #GtkRadioMenuItem
	 *
	 * Since: 2.4
	 */
	public bool getDrawAsRadio()
	{
		return gtk_check_menu_item_get_draw_as_radio(gtkCheckMenuItem) != 0;
	}

	/**
	 * Retrieves the value set by gtk_check_menu_item_set_inconsistent().
	 *
	 * Returns: %TRUE if inconsistent
	 */
	public bool getInconsistent()
	{
		return gtk_check_menu_item_get_inconsistent(gtkCheckMenuItem) != 0;
	}

	/**
	 * Sets the active state of the menu item’s check box.
	 *
	 * Params:
	 *     isActive = boolean value indicating whether the check box is active.
	 */
	public void setActive(bool isActive)
	{
		gtk_check_menu_item_set_active(gtkCheckMenuItem, isActive);
	}

	/**
	 * Sets whether @check_menu_item is drawn like a #GtkRadioMenuItem
	 *
	 * Params:
	 *     drawAsRadio = whether @check_menu_item is drawn like a #GtkRadioMenuItem
	 *
	 * Since: 2.4
	 */
	public void setDrawAsRadio(bool drawAsRadio)
	{
		gtk_check_menu_item_set_draw_as_radio(gtkCheckMenuItem, drawAsRadio);
	}

	/**
	 * If the user has selected a range of elements (such as some text or
	 * spreadsheet cells) that are affected by a boolean setting, and the
	 * current values in that range are inconsistent, you may want to
	 * display the check in an “in between” state. This function turns on
	 * “in between” display.  Normally you would turn off the inconsistent
	 * state again if the user explicitly selects a setting. This has to be
	 * done manually, gtk_check_menu_item_set_inconsistent() only affects
	 * visual appearance, it doesn’t affect the semantics of the widget.
	 *
	 * Params:
	 *     setting = %TRUE to display an “inconsistent” third state check
	 */
	public void setInconsistent(bool setting)
	{
		gtk_check_menu_item_set_inconsistent(gtkCheckMenuItem, setting);
	}

	/**
	 * Emits the #GtkCheckMenuItem::toggled signal.
	 */
	public void toggled()
	{
		gtk_check_menu_item_toggled(gtkCheckMenuItem);
	}

	/**
	 * This signal is emitted when the state of the check box is changed.
	 *
	 * A signal handler can use gtk_check_menu_item_get_active()
	 * to discover the new state.
	 */
	gulong addOnToggled(void delegate(CheckMenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
