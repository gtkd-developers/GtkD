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


module gio.Menu;

private import gio.MenuItem;
private import gio.MenuModel;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * #GMenu is a simple implementation of #GMenuModel.
 * You populate a #GMenu by adding #GMenuItem instances to it.
 * 
 * There are some convenience functions to allow you to directly
 * add items (avoiding #GMenuItem) for the common cases. To add
 * a regular item, use g_menu_insert(). To add a section, use
 * g_menu_insert_section(). To add a submenu, use
 * g_menu_insert_submenu().
 *
 * Since: 2.32
 */
public class Menu : MenuModel
{
	/** the main Gtk struct */
	protected GMenu* gMenu;

	/** Get the main Gtk struct */
	public GMenu* getMenuStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMenu;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMenu;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMenu* gMenu, bool ownedRef = false)
	{
		this.gMenu = gMenu;
		super(cast(GMenuModel*)gMenu, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_menu_get_type();
	}

	/**
	 * Creates a new #GMenu.
	 *
	 * The new menu has no items.
	 *
	 * Returns: a new #GMenu
	 *
	 * Since: 2.32
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_menu_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GMenu*) __p, true);
	}

	/**
	 * Convenience function for appending a normal menu item to the end of
	 * @menu.  Combine g_menu_item_new() and g_menu_insert_item() for a more
	 * flexible alternative.
	 *
	 * Params:
	 *     label = the section label, or %NULL
	 *     detailedAction = the detailed action string, or %NULL
	 *
	 * Since: 2.32
	 */
	public void append(string label, string detailedAction)
	{
		g_menu_append(gMenu, Str.toStringz(label), Str.toStringz(detailedAction));
	}

	/**
	 * Appends @item to the end of @menu.
	 *
	 * See g_menu_insert_item() for more information.
	 *
	 * Params:
	 *     item = a #GMenuItem to append
	 *
	 * Since: 2.32
	 */
	public void appendItem(MenuItem item)
	{
		g_menu_append_item(gMenu, (item is null) ? null : item.getMenuItemStruct());
	}

	/**
	 * Convenience function for appending a section menu item to the end of
	 * @menu.  Combine g_menu_item_new_section() and g_menu_insert_item() for a
	 * more flexible alternative.
	 *
	 * Params:
	 *     label = the section label, or %NULL
	 *     section = a #GMenuModel with the items of the section
	 *
	 * Since: 2.32
	 */
	public void appendSection(string label, MenuModel section)
	{
		g_menu_append_section(gMenu, Str.toStringz(label), (section is null) ? null : section.getMenuModelStruct());
	}

	/**
	 * Convenience function for appending a submenu menu item to the end of
	 * @menu.  Combine g_menu_item_new_submenu() and g_menu_insert_item() for a
	 * more flexible alternative.
	 *
	 * Params:
	 *     label = the section label, or %NULL
	 *     submenu = a #GMenuModel with the items of the submenu
	 *
	 * Since: 2.32
	 */
	public void appendSubmenu(string label, MenuModel submenu)
	{
		g_menu_append_submenu(gMenu, Str.toStringz(label), (submenu is null) ? null : submenu.getMenuModelStruct());
	}

	/**
	 * Marks @menu as frozen.
	 *
	 * After the menu is frozen, it is an error to attempt to make any
	 * changes to it.  In effect this means that the #GMenu API must no
	 * longer be used.
	 *
	 * This function causes g_menu_model_is_mutable() to begin returning
	 * %FALSE, which has some positive performance implications.
	 *
	 * Since: 2.32
	 */
	public void freeze()
	{
		g_menu_freeze(gMenu);
	}

	/**
	 * Convenience function for inserting a normal menu item into @menu.
	 * Combine g_menu_item_new() and g_menu_insert_item() for a more flexible
	 * alternative.
	 *
	 * Params:
	 *     position = the position at which to insert the item
	 *     label = the section label, or %NULL
	 *     detailedAction = the detailed action string, or %NULL
	 *
	 * Since: 2.32
	 */
	public void insert(int position, string label, string detailedAction)
	{
		g_menu_insert(gMenu, position, Str.toStringz(label), Str.toStringz(detailedAction));
	}

	/**
	 * Inserts @item into @menu.
	 *
	 * The "insertion" is actually done by copying all of the attribute and
	 * link values of @item and using them to form a new item within @menu.
	 * As such, @item itself is not really inserted, but rather, a menu item
	 * that is exactly the same as the one presently described by @item.
	 *
	 * This means that @item is essentially useless after the insertion
	 * occurs.  Any changes you make to it are ignored unless it is inserted
	 * again (at which point its updated values will be copied).
	 *
	 * You should probably just free @item once you're done.
	 *
	 * There are many convenience functions to take care of common cases.
	 * See g_menu_insert(), g_menu_insert_section() and
	 * g_menu_insert_submenu() as well as "prepend" and "append" variants of
	 * each of these functions.
	 *
	 * Params:
	 *     position = the position at which to insert the item
	 *     item = the #GMenuItem to insert
	 *
	 * Since: 2.32
	 */
	public void insertItem(int position, MenuItem item)
	{
		g_menu_insert_item(gMenu, position, (item is null) ? null : item.getMenuItemStruct());
	}

	/**
	 * Convenience function for inserting a section menu item into @menu.
	 * Combine g_menu_item_new_section() and g_menu_insert_item() for a more
	 * flexible alternative.
	 *
	 * Params:
	 *     position = the position at which to insert the item
	 *     label = the section label, or %NULL
	 *     section = a #GMenuModel with the items of the section
	 *
	 * Since: 2.32
	 */
	public void insertSection(int position, string label, MenuModel section)
	{
		g_menu_insert_section(gMenu, position, Str.toStringz(label), (section is null) ? null : section.getMenuModelStruct());
	}

	/**
	 * Convenience function for inserting a submenu menu item into @menu.
	 * Combine g_menu_item_new_submenu() and g_menu_insert_item() for a more
	 * flexible alternative.
	 *
	 * Params:
	 *     position = the position at which to insert the item
	 *     label = the section label, or %NULL
	 *     submenu = a #GMenuModel with the items of the submenu
	 *
	 * Since: 2.32
	 */
	public void insertSubmenu(int position, string label, MenuModel submenu)
	{
		g_menu_insert_submenu(gMenu, position, Str.toStringz(label), (submenu is null) ? null : submenu.getMenuModelStruct());
	}

	/**
	 * Convenience function for prepending a normal menu item to the start
	 * of @menu.  Combine g_menu_item_new() and g_menu_insert_item() for a more
	 * flexible alternative.
	 *
	 * Params:
	 *     label = the section label, or %NULL
	 *     detailedAction = the detailed action string, or %NULL
	 *
	 * Since: 2.32
	 */
	public void prepend(string label, string detailedAction)
	{
		g_menu_prepend(gMenu, Str.toStringz(label), Str.toStringz(detailedAction));
	}

	/**
	 * Prepends @item to the start of @menu.
	 *
	 * See g_menu_insert_item() for more information.
	 *
	 * Params:
	 *     item = a #GMenuItem to prepend
	 *
	 * Since: 2.32
	 */
	public void prependItem(MenuItem item)
	{
		g_menu_prepend_item(gMenu, (item is null) ? null : item.getMenuItemStruct());
	}

	/**
	 * Convenience function for prepending a section menu item to the start
	 * of @menu.  Combine g_menu_item_new_section() and g_menu_insert_item() for
	 * a more flexible alternative.
	 *
	 * Params:
	 *     label = the section label, or %NULL
	 *     section = a #GMenuModel with the items of the section
	 *
	 * Since: 2.32
	 */
	public void prependSection(string label, MenuModel section)
	{
		g_menu_prepend_section(gMenu, Str.toStringz(label), (section is null) ? null : section.getMenuModelStruct());
	}

	/**
	 * Convenience function for prepending a submenu menu item to the start
	 * of @menu.  Combine g_menu_item_new_submenu() and g_menu_insert_item() for
	 * a more flexible alternative.
	 *
	 * Params:
	 *     label = the section label, or %NULL
	 *     submenu = a #GMenuModel with the items of the submenu
	 *
	 * Since: 2.32
	 */
	public void prependSubmenu(string label, MenuModel submenu)
	{
		g_menu_prepend_submenu(gMenu, Str.toStringz(label), (submenu is null) ? null : submenu.getMenuModelStruct());
	}

	/**
	 * Removes an item from the menu.
	 *
	 * @position gives the index of the item to remove.
	 *
	 * It is an error if position is not in range the range from 0 to one
	 * less than the number of items in the menu.
	 *
	 * It is not possible to remove items by identity since items are added
	 * to the menu simply by copying their links and attributes (ie:
	 * identity of the item itself is not preserved).
	 *
	 * Params:
	 *     position = the position of the item to remove
	 *
	 * Since: 2.32
	 */
	public void remove(int position)
	{
		g_menu_remove(gMenu, position);
	}

	/**
	 * Removes all items in the menu.
	 *
	 * Since: 2.38
	 */
	public void removeAll()
	{
		g_menu_remove_all(gMenu);
	}
}
