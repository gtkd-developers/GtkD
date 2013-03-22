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
 * inFile  = GMenu.html
 * outPack = gio
 * outFile = Menu
 * strct   = GMenu
 * realStrct=
 * ctorStrct=
 * clss    = Menu
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_menu_
 * omit structs:
 * omit prefixes:
 * 	- g_menu_item_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gio.MenuItem
 * 	- gio.MenuModel
 * structWrap:
 * 	- GMenuItem* -> MenuItem
 * 	- GMenuModel* -> MenuModel
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Menu;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gio.MenuItem;
private import gio.MenuModel;



private import gio.MenuModel;

/**
 * GMenu is a simple implementation of GMenuModel.
 * You populate a GMenu by adding GMenuItem instances to it.
 *
 * There are some convenience functions to allow you to directly
 * add items (avoiding GMenuItem) for the common cases. To add
 * a regular item, use g_menu_insert(). To add a section, use
 * g_menu_insert_section(). To add a submenu, use
 * g_menu_insert_submenu().
 */
public class Menu : MenuModel
{
	
	/** the main Gtk struct */
	protected GMenu* gMenu;
	
	
	public GMenu* getMenuStruct()
	{
		return gMenu;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gMenu;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMenu* gMenu)
	{
		super(cast(GMenuModel*)gMenu);
		this.gMenu = gMenu;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gMenu = cast(GMenu*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GMenu.
	 * The new menu has no items.
	 * Since 2.32
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GMenu * g_menu_new (void);
		auto p = g_menu_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_menu_new()");
		}
		this(cast(GMenu*) p);
	}
	
	/**
	 * Marks menu as frozen.
	 * After the menu is frozen, it is an error to attempt to make any
	 * changes to it. In effect this means that the GMenu API must no
	 * longer be used.
	 * This function causes g_menu_model_is_mutable() to begin returning
	 * FALSE, which has some positive performance implications.
	 * Since 2.32
	 */
	public void freeze()
	{
		// void g_menu_freeze (GMenu *menu);
		g_menu_freeze(gMenu);
	}
	
	/**
	 * Convenience function for inserting a normal menu item into menu.
	 * Combine g_menu_item_new() and g_menu_insert_item() for a more flexible
	 * alternative.
	 * Since 2.32
	 * Params:
	 * position = the position at which to insert the item
	 * label = the section label, or NULL. [allow-none]
	 * detailedAction = the detailed action string, or NULL. [allow-none]
	 */
	public void insert(int position, string label, string detailedAction)
	{
		// void g_menu_insert (GMenu *menu,  gint position,  const gchar *label,  const gchar *detailed_action);
		g_menu_insert(gMenu, position, Str.toStringz(label), Str.toStringz(detailedAction));
	}
	
	/**
	 * Convenience function for prepending a normal menu item to the start
	 * of menu. Combine g_menu_item_new() and g_menu_insert_item() for a more
	 * flexible alternative.
	 * Since 2.32
	 * Params:
	 * label = the section label, or NULL. [allow-none]
	 * detailedAction = the detailed action string, or NULL. [allow-none]
	 */
	public void prepend(string label, string detailedAction)
	{
		// void g_menu_prepend (GMenu *menu,  const gchar *label,  const gchar *detailed_action);
		g_menu_prepend(gMenu, Str.toStringz(label), Str.toStringz(detailedAction));
	}
	
	/**
	 * Convenience function for appending a normal menu item to the end of
	 * menu. Combine g_menu_item_new() and g_menu_insert_item() for a more
	 * flexible alternative.
	 * Since 2.32
	 * Params:
	 * label = the section label, or NULL. [allow-none]
	 * detailedAction = the detailed action string, or NULL. [allow-none]
	 */
	public void append(string label, string detailedAction)
	{
		// void g_menu_append (GMenu *menu,  const gchar *label,  const gchar *detailed_action);
		g_menu_append(gMenu, Str.toStringz(label), Str.toStringz(detailedAction));
	}
	
	/**
	 * Inserts item into menu.
	 * The "insertion" is actually done by copying all of the attribute and
	 * link values of item and using them to form a new item within menu.
	 * As such, item itself is not really inserted, but rather, a menu item
	 * that is exactly the same as the one presently described by item.
	 * This means that item is essentially useless after the insertion
	 * occurs. Any changes you make to it are ignored unless it is inserted
	 * again (at which point its updated values will be copied).
	 * You should probably just free item once you're done.
	 * There are many convenience functions to take care of common cases.
	 * See g_menu_insert(), g_menu_insert_section() and
	 * g_menu_insert_submenu() as well as "prepend" and "append" variants of
	 * each of these functions.
	 * Since 2.32
	 * Params:
	 * position = the position at which to insert the item
	 * item = the GMenuItem to insert
	 */
	public void insertItem(int position, MenuItem item)
	{
		// void g_menu_insert_item (GMenu *menu,  gint position,  GMenuItem *item);
		g_menu_insert_item(gMenu, position, (item is null) ? null : item.getMenuItemStruct());
	}
	
	/**
	 * Appends item to the end of menu.
	 * See g_menu_insert_item() for more information.
	 * Since 2.32
	 * Params:
	 * item = a GMenuItem to append
	 */
	public void appendItem(MenuItem item)
	{
		// void g_menu_append_item (GMenu *menu,  GMenuItem *item);
		g_menu_append_item(gMenu, (item is null) ? null : item.getMenuItemStruct());
	}
	
	/**
	 * Prepends item to the start of menu.
	 * See g_menu_insert_item() for more information.
	 * Since 2.32
	 * Params:
	 * item = a GMenuItem to prepend
	 */
	public void prependItem(MenuItem item)
	{
		// void g_menu_prepend_item (GMenu *menu,  GMenuItem *item);
		g_menu_prepend_item(gMenu, (item is null) ? null : item.getMenuItemStruct());
	}
	
	/**
	 * Convenience function for inserting a section menu item into menu.
	 * Combine g_menu_item_new_section() and g_menu_insert_item() for a more
	 * flexible alternative.
	 * Since 2.32
	 * Params:
	 * position = the position at which to insert the item
	 * label = the section label, or NULL. [allow-none]
	 * section = a GMenuModel with the items of the section
	 */
	public void insertSection(int position, string label, MenuModel section)
	{
		// void g_menu_insert_section (GMenu *menu,  gint position,  const gchar *label,  GMenuModel *section);
		g_menu_insert_section(gMenu, position, Str.toStringz(label), (section is null) ? null : section.getMenuModelStruct());
	}
	
	/**
	 * Convenience function for prepending a section menu item to the start
	 * of menu. Combine g_menu_item_new_section() and g_menu_insert_item() for
	 * a more flexible alternative.
	 * Since 2.32
	 * Params:
	 * label = the section label, or NULL. [allow-none]
	 * section = a GMenuModel with the items of the section
	 */
	public void prependSection(string label, MenuModel section)
	{
		// void g_menu_prepend_section (GMenu *menu,  const gchar *label,  GMenuModel *section);
		g_menu_prepend_section(gMenu, Str.toStringz(label), (section is null) ? null : section.getMenuModelStruct());
	}
	
	/**
	 * Convenience function for appending a section menu item to the end of
	 * menu. Combine g_menu_item_new_section() and g_menu_insert_item() for a
	 * more flexible alternative.
	 * Since 2.32
	 * Params:
	 * label = the section label, or NULL. [allow-none]
	 * section = a GMenuModel with the items of the section
	 */
	public void appendSection(string label, MenuModel section)
	{
		// void g_menu_append_section (GMenu *menu,  const gchar *label,  GMenuModel *section);
		g_menu_append_section(gMenu, Str.toStringz(label), (section is null) ? null : section.getMenuModelStruct());
	}
	
	/**
	 * Convenience function for appending a submenu menu item to the end of
	 * menu. Combine g_menu_item_new_submenu() and g_menu_insert_item() for a
	 * more flexible alternative.
	 * Since 2.32
	 * Params:
	 * menu = a GMenu
	 * label = the section label, or NULL. [allow-none]
	 * submenu = a GMenuModel with the items of the submenu
	 */
	public void appendSubmenu(string label, MenuModel submenu)
	{
		// void g_menu_append_submenu (GMenu *menu,  const gchar *label,  GMenuModel *submenu);
		g_menu_append_submenu(gMenu, Str.toStringz(label), (submenu is null) ? null : submenu.getMenuModelStruct());
	}
	
	/**
	 * Convenience function for inserting a submenu menu item into menu.
	 * Combine g_menu_item_new_submenu() and g_menu_insert_item() for a more
	 * flexible alternative.
	 * Since 2.32
	 * Params:
	 * menu = a GMenu
	 * position = the position at which to insert the item
	 * label = the section label, or NULL. [allow-none]
	 * submenu = a GMenuModel with the items of the submenu
	 */
	public void insertSubmenu(int position, string label, MenuModel submenu)
	{
		// void g_menu_insert_submenu (GMenu *menu,  gint position,  const gchar *label,  GMenuModel *submenu);
		g_menu_insert_submenu(gMenu, position, Str.toStringz(label), (submenu is null) ? null : submenu.getMenuModelStruct());
	}
	
	/**
	 * Convenience function for prepending a submenu menu item to the start
	 * of menu. Combine g_menu_item_new_submenu() and g_menu_insert_item() for
	 * a more flexible alternative.
	 * Since 2.32
	 * Params:
	 * menu = a GMenu
	 * label = the section label, or NULL. [allow-none]
	 * submenu = a GMenuModel with the items of the submenu
	 */
	public void prependSubmenu(string label, MenuModel submenu)
	{
		// void g_menu_prepend_submenu (GMenu *menu,  const gchar *label,  GMenuModel *submenu);
		g_menu_prepend_submenu(gMenu, Str.toStringz(label), (submenu is null) ? null : submenu.getMenuModelStruct());
	}
	
	/**
	 * Removes an item from the menu.
	 * position gives the index of the item to remove.
	 * It is an error if position is not in range the range from 0 to one
	 * less than the number of items in the menu.
	 * It is not possible to remove items by identity since items are added
	 * Since 2.32
	 * Params:
	 * position = the position of the item to remove
	 */
	public void remove(int position)
	{
		// void g_menu_remove (GMenu *menu,  gint position);
		g_menu_remove(gMenu, position);
	}
}
