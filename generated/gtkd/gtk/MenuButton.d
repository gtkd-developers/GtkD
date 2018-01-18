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


module gtk.MenuButton;

private import gio.MenuModel;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Menu;
private import gtk.Popover;
private import gtk.ToggleButton;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkMenuButton widget is used to display a popup when clicked on.
 * This popup can be provided either as a #GtkMenu, a #GtkPopover or an
 * abstract #GMenuModel.
 * 
 * The #GtkMenuButton widget can hold any valid child widget. That is, it
 * can hold almost any other standard #GtkWidget. The most commonly used
 * child is #GtkImage. If no widget is explicitely added to the #GtkMenuButton,
 * a #GtkImage is automatically created, using an arrow image oriented
 * according to #GtkMenuButton:direction or the generic “open-menu-symbolic”
 * icon if the direction is not set.
 * 
 * The positioning of the popup is determined by the #GtkMenuButton:direction
 * property of the menu button.
 * 
 * For menus, the #GtkWidget:halign and #GtkWidget:valign properties of the
 * menu are also taken into account. For example, when the direction is
 * %GTK_ARROW_DOWN and the horizontal alignment is %GTK_ALIGN_START, the
 * menu will be positioned below the button, with the starting edge
 * (depending on the text direction) of the menu aligned with the starting
 * edge of the button. If there is not enough space below the button, the
 * menu is popped up above the button instead. If the alignment would move
 * part of the menu offscreen, it is “pushed in”.
 * 
 * ## Direction = Down
 * 
 * - halign = start
 * 
 * ![](down-start.png)
 * 
 * - halign = center
 * 
 * ![](down-center.png)
 * 
 * - halign = end
 * 
 * ![](down-end.png)
 * 
 * ## Direction = Up
 * 
 * - halign = start
 * 
 * ![](up-start.png)
 * 
 * - halign = center
 * 
 * ![](up-center.png)
 * 
 * - halign = end
 * 
 * ![](up-end.png)
 * 
 * ## Direction = Left
 * 
 * - valign = start
 * 
 * ![](left-start.png)
 * 
 * - valign = center
 * 
 * ![](left-center.png)
 * 
 * - valign = end
 * 
 * ![](left-end.png)
 * 
 * ## Direction = Right
 * 
 * - valign = start
 * 
 * ![](right-start.png)
 * 
 * - valign = center
 * 
 * ![](right-center.png)
 * 
 * - valign = end
 * 
 * ![](right-end.png)
 * 
 * # CSS nodes
 * 
 * GtkMenuButton has a single CSS node with name button. To differentiate
 * it from a plain #GtkButton, it gets the .popup style class.
 */
public class MenuButton : ToggleButton
{
	/** the main Gtk struct */
	protected GtkMenuButton* gtkMenuButton;

	/** Get the main Gtk struct */
	public GtkMenuButton* getMenuButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMenuButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMenuButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMenuButton* gtkMenuButton, bool ownedRef = false)
	{
		this.gtkMenuButton = gtkMenuButton;
		super(cast(GtkToggleButton*)gtkMenuButton, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_menu_button_get_type();
	}

	/**
	 * Creates a new #GtkMenuButton widget with downwards-pointing
	 * arrow as the only child. You can replace the child widget
	 * with another #GtkWidget should you wish to.
	 *
	 * Returns: The newly created #GtkMenuButton widget
	 *
	 * Since: 3.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_menu_button_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMenuButton*) p);
	}

	/**
	 * Returns the parent #GtkWidget to use to line up with menu.
	 *
	 * Returns: a #GtkWidget value or %NULL
	 *
	 * Since: 3.6
	 */
	public Widget getAlignWidget()
	{
		auto p = gtk_menu_button_get_align_widget(gtkMenuButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns the direction the popup will be pointing at when popped up.
	 *
	 * Returns: a #GtkArrowType value
	 *
	 * Since: 3.6
	 */
	public GtkArrowType getMenuDirection()
	{
		return gtk_menu_button_get_direction(gtkMenuButton);
	}

	/**
	 * Returns the #GMenuModel used to generate the popup.
	 *
	 * Returns: a #GMenuModel or %NULL
	 *
	 * Since: 3.6
	 */
	public MenuModel getMenuModel()
	{
		auto p = gtk_menu_button_get_menu_model(gtkMenuButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) p);
	}

	/**
	 * Returns the #GtkPopover that pops out of the button.
	 * If the button is not using a #GtkPopover, this function
	 * returns %NULL.
	 *
	 * Returns: a #GtkPopover or %NULL
	 *
	 * Since: 3.12
	 */
	public Popover getPopover()
	{
		auto p = gtk_menu_button_get_popover(gtkMenuButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Popover)(cast(GtkPopover*) p);
	}

	/**
	 * Returns the #GtkMenu that pops out of the button.
	 * If the button does not use a #GtkMenu, this function
	 * returns %NULL.
	 *
	 * Returns: a #GtkMenu or %NULL
	 *
	 * Since: 3.6
	 */
	public Menu getPopup()
	{
		auto p = gtk_menu_button_get_popup(gtkMenuButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Menu)(cast(GtkMenu*) p);
	}

	/**
	 * Returns whether a #GtkPopover or a #GtkMenu will be constructed
	 * from the menu model.
	 *
	 * Returns: %TRUE if using a #GtkPopover
	 *
	 * Since: 3.12
	 */
	public bool getUsePopover()
	{
		return gtk_menu_button_get_use_popover(gtkMenuButton) != 0;
	}

	/**
	 * Sets the #GtkWidget to use to line the menu with when popped up.
	 * Note that the @align_widget must contain the #GtkMenuButton itself.
	 *
	 * Setting it to %NULL means that the menu will be aligned with the
	 * button itself.
	 *
	 * Note that this property is only used with menus currently,
	 * and not for popovers.
	 *
	 * Params:
	 *     alignWidget = a #GtkWidget
	 *
	 * Since: 3.6
	 */
	public void setAlignWidget(Widget alignWidget)
	{
		gtk_menu_button_set_align_widget(gtkMenuButton, (alignWidget is null) ? null : alignWidget.getWidgetStruct());
	}

	/**
	 * Sets the direction in which the popup will be popped up, as
	 * well as changing the arrow’s direction. The child will not
	 * be changed to an arrow if it was customized.
	 *
	 * If the does not fit in the available space in the given direction,
	 * GTK+ will its best to keep it inside the screen and fully visible.
	 *
	 * If you pass %GTK_ARROW_NONE for a @direction, the popup will behave
	 * as if you passed %GTK_ARROW_DOWN (although you won’t see any arrows).
	 *
	 * Params:
	 *     direction = a #GtkArrowType
	 *
	 * Since: 3.6
	 */
	public void setMenuDirection(GtkArrowType direction)
	{
		gtk_menu_button_set_direction(gtkMenuButton, direction);
	}

	/**
	 * Sets the #GMenuModel from which the popup will be constructed,
	 * or %NULL to disable the button.
	 *
	 * Depending on the value of #GtkMenuButton:use-popover, either a
	 * #GtkMenu will be created with gtk_menu_new_from_model(), or a
	 * #GtkPopover with gtk_popover_new_from_model(). In either case,
	 * actions will be connected as documented for these functions.
	 *
	 * If #GtkMenuButton:popup or #GtkMenuButton:popover are already set,
	 * their content will be lost and replaced by the newly created popup.
	 *
	 * Params:
	 *     menuModel = a #GMenuModel
	 *
	 * Since: 3.6
	 */
	public void setMenuModel(MenuModel menuModel)
	{
		gtk_menu_button_set_menu_model(gtkMenuButton, (menuModel is null) ? null : menuModel.getMenuModelStruct());
	}

	/**
	 * Sets the #GtkPopover that will be popped up when the button is
	 * clicked, or %NULL to disable the button. If #GtkMenuButton:menu-model
	 * or #GtkMenuButton:popup are set, they will be set to %NULL.
	 *
	 * Params:
	 *     popover = a #GtkPopover
	 *
	 * Since: 3.12
	 */
	public void setPopover(Widget popover)
	{
		gtk_menu_button_set_popover(gtkMenuButton, (popover is null) ? null : popover.getWidgetStruct());
	}

	/**
	 * Sets the #GtkMenu that will be popped up when the button is clicked,
	 * or %NULL to disable the button. If #GtkMenuButton:menu-model or
	 * #GtkMenuButton:popover are set, they will be set to %NULL.
	 *
	 * Params:
	 *     menu = a #GtkMenu
	 *
	 * Since: 3.6
	 */
	public void setPopup(Widget menu)
	{
		gtk_menu_button_set_popup(gtkMenuButton, (menu is null) ? null : menu.getWidgetStruct());
	}

	/**
	 * Sets whether to construct a #GtkPopover instead of #GtkMenu
	 * when gtk_menu_button_set_menu_model() is called. Note that
	 * this property is only consulted when a new menu model is set.
	 *
	 * Params:
	 *     usePopover = %TRUE to construct a popover from the menu model
	 *
	 * Since: 3.12
	 */
	public void setUsePopover(bool usePopover)
	{
		gtk_menu_button_set_use_popover(gtkMenuButton, usePopover);
	}
}
