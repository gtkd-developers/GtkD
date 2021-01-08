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
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Popover;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * The #GtkMenuButton widget is used to display a popup when clicked on.
 * This popup can be provided either as a #GtkPopover or as an abstract
 * #GMenuModel.
 * 
 * The #GtkMenuButton widget can show either an icon (set with the
 * #GtkMenuButton:icon-name property) or a label (set with the
 * #GtkMenuButton:label property). If neither is explicitly set,
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
 * 
 * # Accessibility
 * 
 * GtkMenuButton uses the #GTK_ACCESSIBLE_ROLE_BUTTON role.
 */
public class MenuButton : Widget
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
		super(cast(GtkWidget*)gtkMenuButton, ownedRef);
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
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_menu_button_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMenuButton*) __p);
	}

	/**
	 * Returns the direction the popup will be pointing at when popped up.
	 *
	 * Returns: a #GtkArrowType value
	 */
	public GtkArrowType getMenuDirection()
	{
		return gtk_menu_button_get_direction(gtkMenuButton);
	}

	/**
	 * Returns whether the button has a frame.
	 *
	 * Returns: %TRUE if the button has a frame
	 */
	public bool getHasFrame()
	{
		return gtk_menu_button_get_has_frame(gtkMenuButton) != 0;
	}

	/**
	 * Gets the name of the icon shown in the button.
	 *
	 * Returns: the name of the icon shown in the button
	 */
	public string getIconName()
	{
		return Str.toString(gtk_menu_button_get_icon_name(gtkMenuButton));
	}

	/**
	 * Gets the label shown in the button
	 *
	 * Returns: the label shown in the button
	 */
	public string getLabel()
	{
		return Str.toString(gtk_menu_button_get_label(gtkMenuButton));
	}

	/**
	 * Returns the #GMenuModel used to generate the popup.
	 *
	 * Returns: a #GMenuModel or %NULL
	 */
	public MenuModel getMenuModel()
	{
		auto __p = gtk_menu_button_get_menu_model(gtkMenuButton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p);
	}

	/**
	 * Returns the #GtkPopover that pops out of the button.
	 * If the button is not using a #GtkPopover, this function
	 * returns %NULL.
	 *
	 * Returns: a #GtkPopover or %NULL
	 */
	public Popover getPopover()
	{
		auto __p = gtk_menu_button_get_popover(gtkMenuButton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Popover)(cast(GtkPopover*) __p);
	}

	/**
	 * Returns whether an embedded underline in the text indicates a
	 * mnemonic. See gtk_menu_button_set_use_underline().
	 *
	 * Returns: %TRUE whether an embedded underline in the text indicates
	 *     the mnemonic accelerator keys.
	 */
	public bool getUseUnderline()
	{
		return gtk_menu_button_get_use_underline(gtkMenuButton) != 0;
	}

	/**
	 * Dismiss the menu.
	 */
	public void popdown()
	{
		gtk_menu_button_popdown(gtkMenuButton);
	}

	/**
	 * Pop up the menu.
	 */
	public void popup()
	{
		gtk_menu_button_popup(gtkMenuButton);
	}

	/**
	 * Sets @func to be called when a popup is about to be shown.
	 * @func should use one of
	 *
	 * - gtk_menu_button_set_popover()
	 * - gtk_menu_button_set_menu_model()
	 *
	 * to set a popup for @menu_button.
	 * If @func is non-%NULL, @menu_button will always be sensitive.
	 *
	 * Using this function will not reset the menu widget attached to @menu_button.
	 * Instead, this can be done manually in @func.
	 *
	 * Params:
	 *     func = function to call when a popuop is about to
	 *         be shown, but none has been provided via other means, or %NULL
	 *         to reset to default behavior.
	 *     userData = user data to pass to @func.
	 *     destroyNotify = destroy notify for @user_data
	 */
	public void setCreatePopupFunc(GtkMenuButtonCreatePopupFunc func, void* userData, GDestroyNotify destroyNotify)
	{
		gtk_menu_button_set_create_popup_func(gtkMenuButton, func, userData, destroyNotify);
	}

	/**
	 * Sets the direction in which the popup will be popped up, as
	 * well as changing the arrow’s direction. The child will not
	 * be changed to an arrow if it was customized.
	 *
	 * If the does not fit in the available space in the given direction,
	 * GTK will its best to keep it inside the screen and fully visible.
	 *
	 * If you pass %GTK_ARROW_NONE for a @direction, the popup will behave
	 * as if you passed %GTK_ARROW_DOWN (although you won’t see any arrows).
	 *
	 * Params:
	 *     direction = a #GtkArrowType
	 */
	public void setMenuDirection(GtkArrowType direction)
	{
		gtk_menu_button_set_direction(gtkMenuButton, direction);
	}

	/**
	 * Sets the style of the button.
	 *
	 * Params:
	 *     hasFrame = whether the button should have a visible frame
	 */
	public void setHasFrame(bool hasFrame)
	{
		gtk_menu_button_set_has_frame(gtkMenuButton, hasFrame);
	}

	/**
	 * Sets the name of an icon to show inside the menu button.
	 *
	 * Params:
	 *     iconName = the icon name
	 */
	public void setIconName(string iconName)
	{
		gtk_menu_button_set_icon_name(gtkMenuButton, Str.toStringz(iconName));
	}

	/**
	 * Sets the label to show inside the menu button.
	 *
	 * Params:
	 *     label = the label
	 */
	public void setLabel(string label)
	{
		gtk_menu_button_set_label(gtkMenuButton, Str.toStringz(label));
	}

	/**
	 * Sets the #GMenuModel from which the popup will be constructed,
	 * or %NULL to dissociate any existing menu model and disable the button.
	 *
	 * A #GtkPopover will be created from the menu model with gtk_popover_menu_new_from_model().
	 * Actions will be connected as documented for this function.
	 *
	 * If #GtkMenuButton:popover is already set, it will be dissociated from the @menu_button,
	 * and the property is set to %NULL.
	 *
	 * Params:
	 *     menuModel = a #GMenuModel, or %NULL to unset and disable the
	 *         button
	 */
	public void setMenuModel(MenuModel menuModel)
	{
		gtk_menu_button_set_menu_model(gtkMenuButton, (menuModel is null) ? null : menuModel.getMenuModelStruct());
	}

	/**
	 * Sets the #GtkPopover that will be popped up when the @menu_button is clicked,
	 * or %NULL to dissociate any existing popover and disable the button.
	 *
	 * If #GtkMenuButton:menu-model is set, the menu model is dissociated from the
	 * @menu_button, and the property is set to %NULL.
	 *
	 * Params:
	 *     popover = a #GtkPopover, or %NULL to unset and disable the button
	 */
	public void setPopover(Widget popover)
	{
		gtk_menu_button_set_popover(gtkMenuButton, (popover is null) ? null : popover.getWidgetStruct());
	}

	/**
	 * If true, an underline in the text indicates the next character should be
	 * used for the mnemonic accelerator key.
	 *
	 * Params:
	 *     useUnderline = %TRUE if underlines in the text indicate mnemonics
	 */
	public void setUseUnderline(bool useUnderline)
	{
		gtk_menu_button_set_use_underline(gtkMenuButton, useUnderline);
	}
}
