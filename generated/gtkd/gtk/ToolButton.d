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


module gtk.ToolButton;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ActionableIF;
private import gtk.ActionableT;
private import gtk.ToolItem;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkToolButtons are #GtkToolItems containing buttons.
 * 
 * Use gtk_tool_button_new() to create a new #GtkToolButton.
 * 
 * The label of a #GtkToolButton is determined by the properties
 * #GtkToolButton:label-widget, #GtkToolButton:label, and
 * #GtkToolButton:stock-id. If #GtkToolButton:label-widget is
 * non-%NULL, then that widget is used as the label. Otherwise, if
 * #GtkToolButton:label is non-%NULL, that string is used as the label.
 * Otherwise, if #GtkToolButton:stock-id is non-%NULL, the label is
 * determined by the stock item. Otherwise, the button does not have a label.
 * 
 * The icon of a #GtkToolButton is determined by the properties
 * #GtkToolButton:icon-widget and #GtkToolButton:stock-id. If
 * #GtkToolButton:icon-widget is non-%NULL, then
 * that widget is used as the icon. Otherwise, if #GtkToolButton:stock-id is
 * non-%NULL, the icon is determined by the stock item. Otherwise,
 * the button does not have a icon.
 * 
 * # CSS nodes
 * 
 * GtkToolButton has a single CSS node with name toolbutton.
 */
public class ToolButton : ToolItem, ActionableIF
{
	/** the main Gtk struct */
	protected GtkToolButton* gtkToolButton;

	/** Get the main Gtk struct */
	public GtkToolButton* getToolButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkToolButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToolButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkToolButton* gtkToolButton, bool ownedRef = false)
	{
		this.gtkToolButton = gtkToolButton;
		super(cast(GtkToolItem*)gtkToolButton, ownedRef);
	}

	// add the Actionable capabilities
	mixin ActionableT!(GtkToolButton);

	/** */
	public this (StockID stockID)
	{
		this(cast(string)stockID);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_tool_button_get_type();
	}

	/**
	 * Creates a new #GtkToolButton using @icon_widget as contents and @label as
	 * label.
	 *
	 * Params:
	 *     iconWidget = a widget that will be used as the button contents, or %NULL
	 *     label = a string that will be used as label, or %NULL
	 *
	 * Returns: A new #GtkToolButton
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget iconWidget, string label)
	{
		auto p = gtk_tool_button_new((iconWidget is null) ? null : iconWidget.getWidgetStruct(), Str.toStringz(label));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkToolButton*) p);
	}

	/**
	 * Creates a new #GtkToolButton containing the image and text from a
	 * stock item. Some stock ids have preprocessor macros like #GTK_STOCK_OK
	 * and #GTK_STOCK_APPLY.
	 *
	 * It is an error if @stock_id is not a name of a stock item.
	 *
	 * Deprecated: Use gtk_tool_button_new() together with
	 * gtk_image_new_from_icon_name() instead.
	 *
	 * Params:
	 *     stockId = the name of the stock item
	 *
	 * Returns: A new #GtkToolButton
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string stockId)
	{
		auto p = gtk_tool_button_new_from_stock(Str.toStringz(stockId));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_stock");
		}

		this(cast(GtkToolButton*) p);
	}

	/**
	 * Returns the name of the themed icon for the tool button,
	 * see gtk_tool_button_set_icon_name().
	 *
	 * Returns: the icon name or %NULL if the tool button has
	 *     no themed icon
	 *
	 * Since: 2.8
	 */
	public string getIconName()
	{
		return Str.toString(gtk_tool_button_get_icon_name(gtkToolButton));
	}

	/**
	 * Return the widget used as icon widget on @button.
	 * See gtk_tool_button_set_icon_widget().
	 *
	 * Returns: The widget used as icon
	 *     on @button, or %NULL.
	 *
	 * Since: 2.4
	 */
	public Widget getIconWidget()
	{
		auto p = gtk_tool_button_get_icon_widget(gtkToolButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns the label used by the tool button, or %NULL if the tool button
	 * doesn’t have a label. or uses a the label from a stock item. The returned
	 * string is owned by GTK+, and must not be modified or freed.
	 *
	 * Returns: The label, or %NULL
	 *
	 * Since: 2.4
	 */
	public string getLabel()
	{
		return Str.toString(gtk_tool_button_get_label(gtkToolButton));
	}

	/**
	 * Returns the widget used as label on @button.
	 * See gtk_tool_button_set_label_widget().
	 *
	 * Returns: The widget used as label
	 *     on @button, or %NULL.
	 *
	 * Since: 2.4
	 */
	public Widget getLabelWidget()
	{
		auto p = gtk_tool_button_get_label_widget(gtkToolButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns the name of the stock item. See gtk_tool_button_set_stock_id().
	 * The returned string is owned by GTK+ and must not be freed or modifed.
	 *
	 * Deprecated: Use gtk_tool_button_get_icon_name() instead.
	 *
	 * Returns: the name of the stock item for @button.
	 *
	 * Since: 2.4
	 */
	public string getStockId()
	{
		return Str.toString(gtk_tool_button_get_stock_id(gtkToolButton));
	}

	/**
	 * Returns whether underscores in the label property are used as mnemonics
	 * on menu items on the overflow menu. See gtk_tool_button_set_use_underline().
	 *
	 * Returns: %TRUE if underscores in the label property are used as
	 *     mnemonics on menu items on the overflow menu.
	 *
	 * Since: 2.4
	 */
	public bool getUseUnderline()
	{
		return gtk_tool_button_get_use_underline(gtkToolButton) != 0;
	}

	/**
	 * Sets the icon for the tool button from a named themed icon.
	 * See the docs for #GtkIconTheme for more details.
	 * The #GtkToolButton:icon-name property only has an effect if not
	 * overridden by non-%NULL #GtkToolButton:label-widget,
	 * #GtkToolButton:icon-widget and #GtkToolButton:stock-id properties.
	 *
	 * Params:
	 *     iconName = the name of the themed icon
	 *
	 * Since: 2.8
	 */
	public void setIconName(string iconName)
	{
		gtk_tool_button_set_icon_name(gtkToolButton, Str.toStringz(iconName));
	}

	/**
	 * Sets @icon as the widget used as icon on @button. If @icon_widget is
	 * %NULL the icon is determined by the #GtkToolButton:stock-id property. If the
	 * #GtkToolButton:stock-id property is also %NULL, @button will not have an icon.
	 *
	 * Params:
	 *     iconWidget = the widget used as icon, or %NULL
	 *
	 * Since: 2.4
	 */
	public void setIconWidget(Widget iconWidget)
	{
		gtk_tool_button_set_icon_widget(gtkToolButton, (iconWidget is null) ? null : iconWidget.getWidgetStruct());
	}

	/**
	 * Sets @label as the label used for the tool button. The #GtkToolButton:label
	 * property only has an effect if not overridden by a non-%NULL
	 * #GtkToolButton:label-widget property. If both the #GtkToolButton:label-widget
	 * and #GtkToolButton:label properties are %NULL, the label is determined by the
	 * #GtkToolButton:stock-id property. If the #GtkToolButton:stock-id property is
	 * also %NULL, @button will not have a label.
	 *
	 * Params:
	 *     label = a string that will be used as label, or %NULL.
	 *
	 * Since: 2.4
	 */
	public void setLabel(string label)
	{
		gtk_tool_button_set_label(gtkToolButton, Str.toStringz(label));
	}

	/**
	 * Sets @label_widget as the widget that will be used as the label
	 * for @button. If @label_widget is %NULL the #GtkToolButton:label property is used
	 * as label. If #GtkToolButton:label is also %NULL, the label in the stock item
	 * determined by the #GtkToolButton:stock-id property is used as label. If
	 * #GtkToolButton:stock-id is also %NULL, @button does not have a label.
	 *
	 * Params:
	 *     labelWidget = the widget used as label, or %NULL
	 *
	 * Since: 2.4
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		gtk_tool_button_set_label_widget(gtkToolButton, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}

	/**
	 * Sets the name of the stock item. See gtk_tool_button_new_from_stock().
	 * The stock_id property only has an effect if not overridden by non-%NULL
	 * #GtkToolButton:label-widget and #GtkToolButton:icon-widget properties.
	 *
	 * Deprecated: Use gtk_tool_button_set_icon_name() instead.
	 *
	 * Params:
	 *     stockId = a name of a stock item, or %NULL
	 *
	 * Since: 2.4
	 */
	public void setStockId(string stockId)
	{
		gtk_tool_button_set_stock_id(gtkToolButton, Str.toStringz(stockId));
	}

	/**
	 * If set, an underline in the label property indicates that the next character
	 * should be used for the mnemonic accelerator key in the overflow menu. For
	 * example, if the label property is “_Open” and @use_underline is %TRUE,
	 * the label on the tool button will be “Open” and the item on the overflow
	 * menu will have an underlined “O”.
	 *
	 * Labels shown on tool buttons never have mnemonics on them; this property
	 * only affects the menu item on the overflow menu.
	 *
	 * Params:
	 *     useUnderline = whether the button label has the form “_Open”
	 *
	 * Since: 2.4
	 */
	public void setUseUnderline(bool useUnderline)
	{
		gtk_tool_button_set_use_underline(gtkToolButton, useUnderline);
	}

	/**
	 * This signal is emitted when the tool button is clicked with the mouse
	 * or activated with the keyboard.
	 */
	gulong addOnClicked(void delegate(ToolButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "clicked", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
