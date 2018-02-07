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


module gtk.MenuToolButton;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Menu;
private import gtk.ToolButton;
private import gtk.ToolItem;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkMenuToolButton is a #GtkToolItem that contains a button and
 * a small additional button with an arrow. When clicked, the arrow
 * button pops up a dropdown menu.
 * 
 * Use gtk_menu_tool_button_new() to create a new
 * #GtkMenuToolButton.
 * 
 * # GtkMenuToolButton as GtkBuildable
 * 
 * The GtkMenuToolButton implementation of the GtkBuildable interface
 * supports adding a menu by specifying “menu” as the “type” attribute
 * of a <child> element.
 * 
 * An example for a UI definition fragment with menus:
 * |[
 * <object class="GtkMenuToolButton">
 * <child type="menu">
 * <object class="GtkMenu"/>
 * </child>
 * </object>
 * ]|
 */
public class MenuToolButton : ToolButton
{
	/** the main Gtk struct */
	protected GtkMenuToolButton* gtkMenuToolButton;

	/** Get the main Gtk struct */
	public GtkMenuToolButton* getMenuToolButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMenuToolButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMenuToolButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMenuToolButton* gtkMenuToolButton, bool ownedRef = false)
	{
		this.gtkMenuToolButton = gtkMenuToolButton;
		super(cast(GtkToolButton*)gtkMenuToolButton, ownedRef);
	}

	/**
	 * Creates a new GtkMenuToolButton.
	 * The new GtkMenuToolButton will contain an icon and label from
	 * the stock item indicated by stockID.
	 * Since: 2.6
	 * Params:
	 *     stockID = the name of a stock item
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(StockID stockId)
	{
		this(cast(string)stockId);
	}

	/**
	 * Gets the GtkMenu associated with GtkMenuToolButton.
	 * Since: 2.6
	 * Params:
	 *  button = a GtkMenuToolButton
	 * Returns:
	 *  the GtkMenu associated with GtkMenuToolButton
	 */
	public Menu getMenu()
	{
		auto p =  gtk_menu_tool_button_get_menu(gtkMenuToolButton);
		if(p is null)
		{
			return null;
		}
		return new Menu(cast(GtkMenu*)p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_menu_tool_button_get_type();
	}

	/**
	 * Creates a new #GtkMenuToolButton using @icon_widget as icon and
	 * @label as label.
	 *
	 * Params:
	 *     iconWidget = a widget that will be used as icon widget, or %NULL
	 *     label = a string that will be used as label, or %NULL
	 *
	 * Returns: the new #GtkMenuToolButton
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget iconWidget, string label)
	{
		auto p = gtk_menu_tool_button_new((iconWidget is null) ? null : iconWidget.getWidgetStruct(), Str.toStringz(label));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMenuToolButton*) p);
	}

	/**
	 * Creates a new #GtkMenuToolButton.
	 * The new #GtkMenuToolButton will contain an icon and label from
	 * the stock item indicated by @stock_id.
	 *
	 * Deprecated: Use gtk_menu_tool_button_new() instead.
	 *
	 * Params:
	 *     stockId = the name of a stock item
	 *
	 * Returns: the new #GtkMenuToolButton
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string stockId)
	{
		auto p = gtk_menu_tool_button_new_from_stock(Str.toStringz(stockId));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_stock");
		}

		this(cast(GtkMenuToolButton*) p);
	}

	/**
	 * Sets the tooltip markup text to be used as tooltip for the arrow button
	 * which pops up the menu.  See gtk_tool_item_set_tooltip_text() for setting
	 * a tooltip on the whole #GtkMenuToolButton.
	 *
	 * Params:
	 *     markup = markup text to be used as tooltip text for button’s arrow button
	 *
	 * Since: 2.12
	 */
	public void setArrowTooltipMarkup(string markup)
	{
		gtk_menu_tool_button_set_arrow_tooltip_markup(gtkMenuToolButton, Str.toStringz(markup));
	}

	/**
	 * Sets the tooltip text to be used as tooltip for the arrow button which
	 * pops up the menu.  See gtk_tool_item_set_tooltip_text() for setting a tooltip
	 * on the whole #GtkMenuToolButton.
	 *
	 * Params:
	 *     text = text to be used as tooltip text for button’s arrow button
	 *
	 * Since: 2.12
	 */
	public void setArrowTooltipText(string text)
	{
		gtk_menu_tool_button_set_arrow_tooltip_text(gtkMenuToolButton, Str.toStringz(text));
	}

	/**
	 * Sets the #GtkMenu that is popped up when the user clicks on the arrow.
	 * If @menu is NULL, the arrow button becomes insensitive.
	 *
	 * Params:
	 *     menu = the #GtkMenu associated with #GtkMenuToolButton
	 *
	 * Since: 2.6
	 */
	public void setMenu(Widget menu)
	{
		gtk_menu_tool_button_set_menu(gtkMenuToolButton, (menu is null) ? null : menu.getWidgetStruct());
	}

	/**
	 * The ::show-menu signal is emitted before the menu is shown.
	 *
	 * It can be used to populate the menu on demand, using
	 * gtk_menu_tool_button_set_menu().
	 *
	 * Note that even if you populate the menu dynamically in this way,
	 * you must set an empty menu on the #GtkMenuToolButton beforehand,
	 * since the arrow is made insensitive if the menu is not set.
	 */
	gulong addOnShowMenu(void delegate(MenuToolButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "show-menu", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
