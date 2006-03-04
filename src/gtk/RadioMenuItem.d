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
 * outFile = RadioMenuItem
 * strct   = GtkRadioMenuItem
 * clss    = RadioMenuItem
 * prefixes:
 * 	- gtk_radio_menu_item_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_radio_menu_item_new_with_label
 * 	- gtk_radio_menu_item_new_with_mnemonic
 * 	- gtk_radio_menu_item_new_with_mnemonic_from_widget
 * 	- gtk_radio_menu_item_new_with_label_from_widget
 * imports:
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * local aliases:
 */

module gtk.RadioMenuItem;

private import gtk.typedefs;

private import lib.gtk;

private import glib.ListSG;
/**
 * Description
 * A radio menu item is a check menu item that belongs to a group. At each
 * instant exactly one of the radio menu items from a group is selected.
 * The group list does not need to be freed, as each GtkRadioMenuItem will
 * remove itself and its list item when it is destroyed.
 * The correct way to create a group of radio menu items is approximatively
 * this:
 * Example3.How to create a group of radio menu items.
 * GSList *group = NULL;
 * GtkWidget *item;
 * gint i;
 * for (i = 0; i < 5; i++)
 * {
	 *  item = gtk_radio_menu_item_new_with_label (group, "This is an example");
	 *  group = gtk_radio_menu_item_get_group (GTK_RADIO_MENU_ITEM (item));
	 *  if (i == 1)
	 *  gtk_check_menu_item_set_active (GTK_CHECK_MENU_ITEM (item), TRUE);
 * }
 */
private import gtk.CheckMenuItem;
public class RadioMenuItem : CheckMenuItem
{
	
	/** the main Gtk struct */
	protected GtkRadioMenuItem* gtkRadioMenuItem;
	
	
	public GtkRadioMenuItem* getRadioMenuItemStruct()
	{
		return gtkRadioMenuItem;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkRadioMenuItem;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRadioMenuItem* gtkRadioMenuItem)
	{
		super(cast(GtkCheckMenuItem*)gtkRadioMenuItem);
		this.gtkRadioMenuItem = gtkRadioMenuItem;
	}
	
	/**
	 * Creates a new GtkRadioMenuItem whose child is a simple GtkLabel.
	 * The new GtkRadioMenuItem is added to the same group as group.
	 * If mnemonic is true the label will be
	 * created using gtk_label_new_with_mnemonic(), so underscores in label
	 * indicate the mnemonic for the menu item.
	 * group:
	 *  an existing GtkRadioMenuItem
	 * label:
	 *  the text for the label
	 * Returns:
	 *  The new GtkRadioMenuItem
	 * Since 2.4
	 */
	public this (RadioMenuItem radioMenuItem, char[] label, bit mnemonic=true)
	{
		if ( mnemonic )
		{
			// GtkWidget* gtk_radio_menu_item_new_with_mnemonic_from_widget  (GtkRadioMenuItem *group,  const gchar *label);
			this(cast(GtkRadioMenuItem*)gtk_radio_menu_item_new_with_mnemonic_from_widget(
			radioMenuItem.getRadioMenuItemStruct(), std.string.toStringz(label)) );
		}
		else
		{
			// GtkWidget* gtk_radio_menu_item_new_with_label_from_widget  (GtkRadioMenuItem *group,  const gchar *label);
			this(cast(GtkRadioMenuItem*)gtk_radio_menu_item_new_with_label_from_widget(
			radioMenuItem.getRadioMenuItemStruct(), std.string.toStringz(label)) );
		}
	}
	
	/**
	 * Creates a new GtkRadioMenuItem containing a label. T
	 * The new GtkRadioMenuItem is added to the same group as group.
	 * group:
	 *  An existing GtkRadioMenuItem
	 * label:
	 *  the text of the button, with an underscore in front of the
	 *  mnemonic character
	 * Returns:
	 *  The new GtkRadioMenuItem
	 * Since 2.4
	 */
	public this (char[] label)
	{
	}
	
	/**
	 * Creates a new GtkRadioMenuItem whose child is a simple GtkLabel.
	 * If mnemonic is true the label
	 * will be created using gtk_label_new_with_mnemonic(), so underscores
	 * in label indicate the mnemonic for the menu item.
	 * group:
	 * the group to which the radio menu item is to be attached
	 * label:
	 * the text for the label
	 * Returns:
	 * a new GtkRadioMenuItem
	 */
	public this (ListSG group, char[] label, bit mnemonic=true)
	{
		if ( mnemonic )
		{
			// GtkWidget* gtk_radio_menu_item_new_with_mnemonic  (GSList *group,  const gchar *label);
			this(cast(GtkRadioMenuItem*)gtk_radio_menu_item_new_with_mnemonic(
			group is null ? null : group.getListSGStruct(), std.string.toStringz(label)) );
		}
		else
		{
			// GtkWidget* gtk_radio_menu_item_new_with_label  (GSList *group,  const gchar *label);
			this(cast(GtkRadioMenuItem*)gtk_radio_menu_item_new_with_label(
			group is null ? null : group.getListSGStruct(), std.string.toStringz(label)) );
		}
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(RadioMenuItem)[] onGroupChangedListeners;
	void addOnGroupChanged(void delegate(RadioMenuItem) dlg)
	{
		if ( !("group-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"group-changed",
			cast(GCallback)&callBackGroupChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["group-changed"] = 1;
		}
		onGroupChangedListeners ~= dlg;
	}
	extern(C) static void callBackGroupChanged(GtkRadioMenuItem* radiomenuitemStruct, RadioMenuItem radioMenuItem)
	{
		bit consumed = false;
		
		foreach ( void delegate(RadioMenuItem) dlg ; radioMenuItem.onGroupChangedListeners )
		{
			dlg(radioMenuItem);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkRadioMenuItem.
	 * group:
	 * the group to which the radio menu item is to be attached
	 * Returns:
	 * a new GtkRadioMenuItem
	 */
	public this (ListSG group)
	{
		// GtkWidget* gtk_radio_menu_item_new (GSList *group);
		this(cast(GtkRadioMenuItem*)gtk_radio_menu_item_new(group.getListSGStruct()) );
	}
	
	
	
	/**
	 * Creates a new GtkRadioMenuItem adding it to the same group as group.
	 * group:
	 *  An existing GtkRadioMenuItem
	 * Returns:
	 *  The new GtkRadioMenuItem
	 * Since 2.4
	 */
	public this ()
	{
		// GtkWidget* gtk_radio_menu_item_new_from_widget  (GtkRadioMenuItem *group);
		this(cast(GtkRadioMenuItem*)gtk_radio_menu_item_new_from_widget(gtkRadioMenuItem) );
	}
	
	
	
	
	/**
	 * Sets the group of a radio menu item, or changes it.
	 * radio_menu_item:
	 * a GtkRadioMenuItem.
	 * group:
	 * the new group.
	 */
	public void setGroup(ListSG group)
	{
		// void gtk_radio_menu_item_set_group (GtkRadioMenuItem *radio_menu_item,  GSList *group);
		gtk_radio_menu_item_set_group(gtkRadioMenuItem, group.getListSGStruct());
	}
	
	/**
	 * Returns the group to which the radio menu item belongs, as a GList of
	 * GtkRadioMenuItem. The list belongs to GTK+ and should not be freed.
	 * radio_menu_item:
	 * a GtkRadioMenuItem.
	 * Returns:
	 * the group of radio_menu_item.
	 * Property Details
	 * The "group" property
	 *  "group" GtkRadioMenuItem : Write
	 * The radio menu item whose group this widget belongs to.
	 * Since 2.8
	 * Signal Details
	 * The "group-changed" signal
	 * void user_function (GtkRadioMenuItem *radiomenuitem,
	 *  gpointer user_data) : Run first
	 * radiomenuitem:
	 * the object which received the signal.
	 * user_data:
	 * user data set when the signal handler was connected.
	 * See Also
	 * GtkMenuItem
	 * because a radio menu item is a menu item.
	 * GtkCheckMenuItem
	 * to know how to handle the check.
	 */
	public ListSG getGroup()
	{
		// GSList* gtk_radio_menu_item_get_group (GtkRadioMenuItem *radio_menu_item);
		return new ListSG( gtk_radio_menu_item_get_group(gtkRadioMenuItem) );
	}
}
