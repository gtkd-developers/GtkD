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


module gtk.RadioMenuItem;

private import glib.ConstructionException;
private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CheckMenuItem;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A radio menu item is a check menu item that belongs to a group. At each
 * instant exactly one of the radio menu items from a group is selected.
 * 
 * The group list does not need to be freed, as each #GtkRadioMenuItem will
 * remove itself and its list item when it is destroyed.
 * 
 * The correct way to create a group of radio menu items is approximatively
 * this:
 * 
 * ## How to create a group of radio menu items.
 * 
 * |[<!-- language="C" -->
 * GSList *group = NULL;
 * GtkWidget *item;
 * gint i;
 * 
 * for (i = 0; i < 5; i++)
 * {
 * item = gtk_radio_menu_item_new_with_label (group, "This is an example");
 * group = gtk_radio_menu_item_get_group (GTK_RADIO_MENU_ITEM (item));
 * if (i == 1)
 * gtk_check_menu_item_set_active (GTK_CHECK_MENU_ITEM (item), TRUE);
 * }
 * ]|
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * menuitem
 * ├── radio.left
 * ╰── <child>
 * ]|
 * 
 * GtkRadioMenuItem has a main CSS node with name menuitem, and a subnode
 * with name radio, which gets the .left or .right style class.
 */
public class RadioMenuItem : CheckMenuItem
{
	/** the main Gtk struct */
	protected GtkRadioMenuItem* gtkRadioMenuItem;

	/** Get the main Gtk struct */
	public GtkRadioMenuItem* getRadioMenuItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRadioMenuItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRadioMenuItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRadioMenuItem* gtkRadioMenuItem, bool ownedRef = false)
	{
		this.gtkRadioMenuItem = gtkRadioMenuItem;
		super(cast(GtkCheckMenuItem*)gtkRadioMenuItem, ownedRef);
	}

	/**
	 * Creates a new GtkRadioMenuItem whose child is a simple GtkLabel.
	 * The new GtkRadioMenuItem is added to the same group as group.
	 * If mnemonic is true the label will be
	 * created using gtk_label_new_with_mnemonic(), so underscores in label
	 * indicate the mnemonic for the menu item.
	 * Since 2.4
	 * Params:
	 *  group = an existing GtkRadioMenuItem
	 *  label = the text for the label
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (RadioMenuItem radioMenuItem, string label, bool mnemonic=true)
	{
		GtkRadioMenuItem* p;

		if ( mnemonic )
		{
			// GtkWidget* gtk_radio_menu_item_new_with_mnemonic_from_widget  (GtkRadioMenuItem *group,  const gchar *label);
			p = cast(GtkRadioMenuItem*)gtk_radio_menu_item_new_with_mnemonic_from_widget(
			radioMenuItem.getRadioMenuItemStruct(), Str.toStringz(label));
		}
		else
		{
			// GtkWidget* gtk_radio_menu_item_new_with_label_from_widget  (GtkRadioMenuItem *group,  const gchar *label);
			p = cast(GtkRadioMenuItem*)gtk_radio_menu_item_new_with_label_from_widget(
			radioMenuItem.getRadioMenuItemStruct(), Str.toStringz(label));
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_menu_item_new_with_");
		}

		this(p);
	}

	/**
	 * Creates a new GtkRadioMenuItem whose child is a simple GtkLabel.
	 * Params:
	 *  group = the group to which the radio menu item is to be attached
	 *  label = the text for the label
	 *  mnemonic = if true the label
	 *  will be created using gtk_label_new_with_mnemonic(), so underscores
	 *  in label indicate the mnemonic for the menu item.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ListSG group, string label, bool mnemonic=true)
	{
		GtkRadioMenuItem* p;

		if ( mnemonic )
		{
			// GtkWidget* gtk_radio_menu_item_new_with_mnemonic  (GSList *group,  const gchar *label);
			p = cast(GtkRadioMenuItem*)gtk_radio_menu_item_new_with_mnemonic(
			group is null ? null : group.getListSGStruct(), Str.toStringz(label));
		}
		else
		{
			// GtkWidget* gtk_radio_menu_item_new_with_label  (GSList *group,  const gchar *label);
			p = cast(GtkRadioMenuItem*)gtk_radio_menu_item_new_with_label(
			group is null ? null : group.getListSGStruct(), Str.toStringz(label));
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_radio_menu_item_new_with_");
		}

		this(p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_radio_menu_item_get_type();
	}

	/**
	 * Creates a new #GtkRadioMenuItem.
	 *
	 * Params:
	 *     group = the group to which the
	 *         radio menu item is to be attached, or %NULL
	 *
	 * Returns: a new #GtkRadioMenuItem
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListSG group)
	{
		auto p = gtk_radio_menu_item_new((group is null) ? null : group.getListSGStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkRadioMenuItem*) p);
	}

	/**
	 * Creates a new #GtkRadioMenuItem adding it to the same group as @group.
	 *
	 * Params:
	 *     group = An existing #GtkRadioMenuItem
	 *
	 * Returns: The new #GtkRadioMenuItem
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(RadioMenuItem group)
	{
		auto p = gtk_radio_menu_item_new_from_widget((group is null) ? null : group.getRadioMenuItemStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_widget");
		}

		this(cast(GtkRadioMenuItem*) p);
	}

	/**
	 * Returns the group to which the radio menu item belongs, as a #GList of
	 * #GtkRadioMenuItem. The list belongs to GTK+ and should not be freed.
	 *
	 * Returns: the group
	 *     of @radio_menu_item
	 */
	public ListSG getGroup()
	{
		auto p = gtk_radio_menu_item_get_group(gtkRadioMenuItem);

		if(p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) p);
	}

	/**
	 * Joins a #GtkRadioMenuItem object to the group of another #GtkRadioMenuItem
	 * object.
	 *
	 * This function should be used by language bindings to avoid the memory
	 * manangement of the opaque #GSList of gtk_radio_menu_item_get_group()
	 * and gtk_radio_menu_item_set_group().
	 *
	 * A common way to set up a group of #GtkRadioMenuItem instances is:
	 *
	 * |[
	 * GtkRadioMenuItem *last_item = NULL;
	 *
	 * while ( ...more items to add... )
	 * {
	 * GtkRadioMenuItem *radio_item;
	 *
	 * radio_item = gtk_radio_menu_item_new (...);
	 *
	 * gtk_radio_menu_item_join_group (radio_item, last_item);
	 * last_item = radio_item;
	 * }
	 * ]|
	 *
	 * Params:
	 *     groupSource = a #GtkRadioMenuItem whose group we are
	 *         joining, or %NULL to remove the @radio_menu_item from its current
	 *         group
	 *
	 * Since: 3.18
	 */
	public void joinGroup(RadioMenuItem groupSource)
	{
		gtk_radio_menu_item_join_group(gtkRadioMenuItem, (groupSource is null) ? null : groupSource.getRadioMenuItemStruct());
	}

	/**
	 * Sets the group of a radio menu item, or changes it.
	 *
	 * Params:
	 *     group = the new group, or %NULL.
	 */
	public void setGroup(ListSG group)
	{
		gtk_radio_menu_item_set_group(gtkRadioMenuItem, (group is null) ? null : group.getListSGStruct());
	}

	/** */
	gulong addOnGroupChanged(void delegate(RadioMenuItem) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "group-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
