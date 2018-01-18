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


module gtk.PopoverMenu;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Popover;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * GtkPopoverMenu is a subclass of #GtkPopover that treats its
 * children like menus and allows switching between them. It is
 * meant to be used primarily together with #GtkModelButton, but
 * any widget can be used, such as #GtkSpinButton or #GtkScale.
 * In this respect, GtkPopoverMenu is more flexible than popovers
 * that are created from a #GMenuModel with gtk_popover_new_from_model().
 * 
 * To add a child as a submenu, set the #GtkPopoverMenu:submenu
 * child property to the name of the submenu. To let the user open
 * this submenu, add a #GtkModelButton whose #GtkModelButton:menu-name
 * property is set to the name you've given to the submenu.
 * 
 * By convention, the first child of a submenu should be a #GtkModelButton
 * to switch back to the parent menu. Such a button should use the
 * #GtkModelButton:inverted and #GtkModelButton:centered properties
 * to achieve a title-like appearance and place the submenu indicator
 * at the opposite side. To switch back to the main menu, use "main"
 * as the menu name.
 * 
 * # Example
 * 
 * |[
 * <object class="GtkPopoverMenu">
 * <child>
 * <object class="GtkBox">
 * <property name="visible">True</property>
 * <property name="margin">10</property>
 * <child>
 * <object class="GtkModelButton">
 * <property name="visible">True</property>
 * <property name="action-name">win.frob</property>
 * <property name="text" translatable="yes">Frob</property>
 * </object>
 * </child>
 * <child>
 * <object class="GtkModelButton">
 * <property name="visible">True</property>
 * <property name="menu-name">more</property>
 * <property name="text" translatable="yes">More</property>
 * </object>
 * </child>
 * </object>
 * </child>
 * <child>
 * <object class="GtkBox">
 * <property name="visible">True</property>
 * <property name="margin">10</property>
 * <child>
 * <object class="GtkModelButton">
 * <property name="visible">True</property>
 * <property name="action-name">win.foo</property>
 * <property name="text" translatable="yes">Foo</property>
 * </object>
 * </child>
 * <child>
 * <object class="GtkModelButton">
 * <property name="visible">True</property>
 * <property name="action-name">win.bar</property>
 * <property name="text" translatable="yes">Bar</property>
 * </object>
 * </child>
 * </object>
 * <packing>
 * <property name="submenu">more</property>
 * </packing>
 * </child>
 * </object>
 * ]|
 * 
 * Just like normal popovers created using gtk_popover_new_from_model,
 * #GtkPopoverMenu instances have a single css node called "popover"
 * and get the .menu style class.
 */
public class PopoverMenu : Popover
{
	/** the main Gtk struct */
	protected GtkPopoverMenu* gtkPopoverMenu;

	/** Get the main Gtk struct */
	public GtkPopoverMenu* getPopoverMenuStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkPopoverMenu;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkPopoverMenu;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkPopoverMenu* gtkPopoverMenu, bool ownedRef = false)
	{
		this.gtkPopoverMenu = gtkPopoverMenu;
		super(cast(GtkPopover*)gtkPopoverMenu, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_popover_menu_get_type();
	}

	/**
	 * Creates a new popover menu.
	 *
	 * Returns: a new #GtkPopoverMenu
	 *
	 * Since: 3.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_popover_menu_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkPopoverMenu*) p);
	}

	/**
	 * Opens a submenu of the @popover. The @name
	 * must be one of the names given to the submenus
	 * of @popover with #GtkPopoverMenu:submenu, or
	 * "main" to switch back to the main menu.
	 *
	 * #GtkModelButton will open submenus automatically
	 * when the #GtkModelButton:menu-name property is set,
	 * so this function is only needed when you are using
	 * other kinds of widgets to initiate menu changes.
	 *
	 * Params:
	 *     name = the name of the menu to switch to
	 *
	 * Since: 3.16
	 */
	public void openSubmenu(string name)
	{
		gtk_popover_menu_open_submenu(gtkPopoverMenu, Str.toStringz(name));
	}
}
