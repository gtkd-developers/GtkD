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


module adw.SplitButton;

private import adw.c.functions;
public  import adw.c.types;
private import gio.MenuModel;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccessibleIF;
private import gtk.AccessibleT;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.ConstraintTargetIF;
private import gtk.ConstraintTargetT;
private import gtk.Popover;
private import gtk.Widget;
private import std.algorithm;


/**
 * A combined button and dropdown widget.
 * 
 * <picture>
 * <source srcset="split-button-dark.png" media="(prefers-color-scheme: dark)">
 * <img src="split-button.png" alt="split-button">
 * </picture>
 * 
 * `AdwSplitButton` is typically used to present a set of actions in a menu,
 * but allow access to one of them with a single click.
 * 
 * The API is very similar to [class@Gtk.Button] and [class@Gtk.MenuButton], see
 * their documentation for details.
 * 
 * ## CSS nodes
 * 
 * ```
 * splitbutton[.image-button][.text-button]
 * ├── button
 * │   ╰── <content>
 * ├── separator
 * ╰── menubutton
 * ╰── button.toggle
 * ╰── arrow
 * ```
 * 
 * `AdwSplitButton`'s CSS node is called `splitbutton`. It contains the css
 * nodes: `button`, `separator`, `menubutton`. See [class@Gtk.MenuButton]
 * documentation for the `menubutton` contents.
 * 
 * The main CSS node will contain the `.image-button` or `.text-button` style
 * classes matching the button contents. The nested button nodes will never
 * contain them.
 * 
 * ## Accessibility
 * 
 * `AdwSplitButton` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
 *
 * Since: 1.0
 */
public class SplitButton : Widget, ActionableIF
{
	/** the main Gtk struct */
	protected AdwSplitButton* adwSplitButton;

	/** Get the main Gtk struct */
	public AdwSplitButton* getSplitButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwSplitButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwSplitButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwSplitButton* adwSplitButton, bool ownedRef = false)
	{
		this.adwSplitButton = adwSplitButton;
		super(cast(GtkWidget*)adwSplitButton, ownedRef);
	}

	// add the Actionable capabilities
	mixin ActionableT!(AdwSplitButton);

	/**
	 * Gets the direction in which the popup will be popped up.
	 *
	 * Returns: the direction
	 *
	 * Since: 1.0
	 */
	public GtkArrowType getButtonDirection()
	{
		return adw_split_button_get_direction(adwSplitButton);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return adw_split_button_get_type();
	}

	/**
	 * Creates a new `AdwSplitButton`.
	 *
	 * Returns: the newly created `AdwSplitButton`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = adw_split_button_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwSplitButton*) __p);
	}

	/**
	 * Gets the child widget.
	 *
	 * Returns: the child widget
	 *
	 * Since: 1.0
	 */
	public Widget getChild()
	{
		auto __p = adw_split_button_get_child(adwSplitButton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Gets the name of the icon used to automatically populate the button.
	 *
	 * If the icon name has not been set with [method@SplitButton.set_icon_name]
	 * the return value will be `NULL`.
	 *
	 * Returns: the icon name
	 *
	 * Since: 1.0
	 */
	public string getIconName()
	{
		return Str.toString(adw_split_button_get_icon_name(adwSplitButton));
	}

	/**
	 * Gets the label for @self.
	 *
	 * Returns: the label for @self
	 *
	 * Since: 1.0
	 */
	public string getLabel()
	{
		return Str.toString(adw_split_button_get_label(adwSplitButton));
	}

	/**
	 * Gets the menu model from which the popup will be created.
	 *
	 * Returns: the menu model
	 *
	 * Since: 1.0
	 */
	public MenuModel getMenuModel()
	{
		auto __p = adw_split_button_get_menu_model(adwSplitButton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MenuModel)(cast(GMenuModel*) __p);
	}

	/**
	 * Gets the popover that will be popped up when the dropdown is clicked.
	 *
	 * Returns: the popover
	 *
	 * Since: 1.0
	 */
	public Popover getPopover()
	{
		auto __p = adw_split_button_get_popover(adwSplitButton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Popover)(cast(GtkPopover*) __p);
	}

	/**
	 * Gets whether an underline in the text indicates a mnemonic.
	 *
	 * Returns: whether an underline in the text indicates a mnemonic
	 *
	 * Since: 1.0
	 */
	public bool getUseUnderline()
	{
		return adw_split_button_get_use_underline(adwSplitButton) != 0;
	}

	/**
	 * Dismisses the menu.
	 *
	 * Since: 1.0
	 */
	public void popdown()
	{
		adw_split_button_popdown(adwSplitButton);
	}

	/**
	 * Pops up the menu.
	 *
	 * Since: 1.0
	 */
	public void popup()
	{
		adw_split_button_popup(adwSplitButton);
	}

	/**
	 * Sets the child widget.
	 *
	 * Params:
	 *     child = the new child widget
	 *
	 * Since: 1.0
	 */
	public void setChild(Widget child)
	{
		adw_split_button_set_child(adwSplitButton, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Sets the direction in which the popup will be popped up.
	 *
	 * Params:
	 *     direction = the direction
	 *
	 * Since: 1.0
	 */
	public void setDirection(GtkArrowType direction)
	{
		adw_split_button_set_direction(adwSplitButton, direction);
	}

	/**
	 * Sets the name of the icon used to automatically populate the button.
	 *
	 * Params:
	 *     iconName = the icon name to set
	 *
	 * Since: 1.0
	 */
	public void setIconName(string iconName)
	{
		adw_split_button_set_icon_name(adwSplitButton, Str.toStringz(iconName));
	}

	/**
	 * Sets the label for @self.
	 *
	 * Params:
	 *     label = the label to set
	 *
	 * Since: 1.0
	 */
	public void setLabel(string label)
	{
		adw_split_button_set_label(adwSplitButton, Str.toStringz(label));
	}

	/**
	 * Sets the menu model from which the popup will be created.
	 *
	 * Params:
	 *     menuModel = the menu model
	 *
	 * Since: 1.0
	 */
	public void setMenuModel(MenuModel menuModel)
	{
		adw_split_button_set_menu_model(adwSplitButton, (menuModel is null) ? null : menuModel.getMenuModelStruct());
	}

	/**
	 * Sets the popover that will be popped up when the dropdown is clicked.
	 *
	 * Params:
	 *     popover = the popover
	 *
	 * Since: 1.0
	 */
	public void setPopover(Popover popover)
	{
		adw_split_button_set_popover(adwSplitButton, (popover is null) ? null : popover.getPopoverStruct());
	}

	/**
	 * Sets whether an underline in the text indicates a mnemonic.
	 *
	 * Params:
	 *     useUnderline = whether an underline in the text indicates a mnemonic
	 *
	 * Since: 1.0
	 */
	public void setUseUnderline(bool useUnderline)
	{
		adw_split_button_set_use_underline(adwSplitButton, useUnderline);
	}

	/**
	 * Emitted to animate press then release.
	 *
	 * This is an action signal. Applications should never connect to this signal,
	 * but use the [signal@SplitButton::clicked] signal.
	 *
	 * Since: 1.0
	 */
	gulong addOnActivate(void delegate(SplitButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the button has been activated (pressed and released).
	 *
	 * Since: 1.0
	 */
	gulong addOnClicked(void delegate(SplitButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "clicked", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
