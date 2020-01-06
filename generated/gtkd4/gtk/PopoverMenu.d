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

private import gio.MenuModel;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Popover;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * GtkPopoverMenu is a subclass of #GtkPopover that treats its
 * children like menus and allows switching between them. It
 * can open submenus as traditional, nested submenus, or in a
 * more touch-friendly sliding fashion.
 * 
 * GtkPopoverMenu is meant to be used primarily with menu models,
 * using gtk_popover_menu_new_from_model(). If you need to put other
 * widgets such as #GtkSpinButton or #GtkSwitch into a popover,
 * use a #GtkPopover.
 * 
 * In addition to all the regular menu model features, this function
 * supports rendering sections in the model in a more compact form,
 * as a row of image buttons instead of menu items.
 * 
 * To use this rendering, set the ”display-hint” attribute of the
 * section to ”horizontal-buttons” and set the icons of your items
 * with the ”verb-icon” attribute.
 * 
 * # CSS Nodes
 * 
 * #GtkPopoverMenu is just a subclass of #GtkPopover that adds
 * custom content to it, therefore it has the same CSS nodes.
 * It is one of the cases that add a .menu style class to the
 * popover's contents node.
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
	 * Creates a #GtkPopoverMenu and populates it according to
	 * @model. The popover is pointed to the @relative_to widget.
	 *
	 * The created buttons are connected to actions found in the
	 * #GtkApplicationWindow to which the popover belongs - typically
	 * by means of being attached to a widget that is contained within
	 * the #GtkApplicationWindows widget hierarchy.
	 *
	 * Actions can also be added using gtk_widget_insert_action_group()
	 * on the menus attach widget or on any of its parent widgets.
	 *
	 * This function creates menus with sliding submenus.
	 * See gtk_popover_menu_new_from_model_full() for a way
	 * to control this.
	 *
	 * Params:
	 *     relativeTo = #GtkWidget the popover is related to
	 *     model = a #GMenuModel, or %NULL
	 *
	 * Returns: the new #GtkPopoverMenu
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget relativeTo, MenuModel model)
	{
		auto __p = gtk_popover_menu_new_from_model((relativeTo is null) ? null : relativeTo.getWidgetStruct(), (model is null) ? null : model.getMenuModelStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_model");
		}

		this(cast(GtkPopoverMenu*) __p);
	}

	/**
	 * Creates a #GtkPopoverMenu and populates it according to
	 * @model. The popover is pointed to the @relative_to widget.
	 *
	 * The created buttons are connected to actions found in the
	 * action groups that are accessible from the @relative-to widget.
	 * This includes the #GtkApplicationWindow to which the popover
	 * belongs. Actions can also be added using gtk_widget_insert_action_group()
	 * on the @relative-to widget or on any of its parent widgets.
	 *
	 * The only flag that is supported currently is
	 * #GTK_POPOVER_MENU_NESTED, which makes GTK create traditional,
	 * nested submenus instead of the default sliding submenus.
	 *
	 * Params:
	 *     relativeTo = #GtkWidget the popover is related to
	 *     model = a #GMenuModel
	 *     flags = flags that affect how the menu is created
	 *
	 * Returns: the new #GtkPopoverMenu
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget relativeTo, MenuModel model, GtkPopoverMenuFlags flags)
	{
		auto __p = gtk_popover_menu_new_from_model_full((relativeTo is null) ? null : relativeTo.getWidgetStruct(), (model is null) ? null : model.getMenuModelStruct(), flags);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_model_full");
		}

		this(cast(GtkPopoverMenu*) __p, true);
	}

	/**
	 * Returns the menu model used to populate the popover.
	 *
	 * Returns: the menu model of @popover
	 */
	public MenuModel getMenuModel()
	{
		auto __p = gtk_popover_menu_get_menu_model(gtkPopoverMenu);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p);
	}

	/** */
	public void setMenuModel(MenuModel model)
	{
		gtk_popover_menu_set_menu_model(gtkPopoverMenu, (model is null) ? null : model.getMenuModelStruct());
	}
}
