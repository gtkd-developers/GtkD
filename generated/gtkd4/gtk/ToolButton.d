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
private import std.algorithm;


/**
 * #GtkToolButtons are #GtkToolItems containing buttons.
 * 
 * Use gtk_tool_button_new() to create a new #GtkToolButton.
 * 
 * The label of a #GtkToolButton is determined by the properties
 * #GtkToolButton:label-widget and #GtkToolButton:label.
 * If #GtkToolButton:label-widget is
 * non-%NULL, then that widget is used as the label. Otherwise, if
 * #GtkToolButton:label is non-%NULL, that string is used as the label.
 * 
 * The icon of a #GtkToolButton is determined by the
 * #GtkToolButton:icon-widget property. If
 * #GtkToolButton:icon-widget is non-%NULL, then
 * that widget is used as the icon. Otherwise it does not have an icon.
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
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget iconWidget, string label)
	{
		auto __p = gtk_tool_button_new((iconWidget is null) ? null : iconWidget.getWidgetStruct(), Str.toStringz(label));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkToolButton*) __p);
	}

	/**
	 * Returns the name of the themed icon for the tool button,
	 * see gtk_tool_button_set_icon_name().
	 *
	 * Returns: the icon name or %NULL if the tool button has
	 *     no themed icon
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
	 */
	public Widget getIconWidget()
	{
		auto __p = gtk_tool_button_get_icon_widget(gtkToolButton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the label used by the tool button, or %NULL if the tool button
	 * doesn’t have a label. The returned
	 * string is owned by GTK+, and must not be modified or freed.
	 *
	 * Returns: The label, or %NULL
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
	 */
	public Widget getLabelWidget()
	{
		auto __p = gtk_tool_button_get_label_widget(gtkToolButton);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns whether underscores in the label property are used as mnemonics
	 * on menu items on the overflow menu. See gtk_tool_button_set_use_underline().
	 *
	 * Returns: %TRUE if underscores in the label property are used as
	 *     mnemonics on menu items on the overflow menu.
	 */
	public bool getUseUnderline()
	{
		return gtk_tool_button_get_use_underline(gtkToolButton) != 0;
	}

	/**
	 * Sets the icon for the tool button from a named themed icon.
	 * See the docs for #GtkIconTheme for more details.
	 * The #GtkToolButton:icon-name property only has an effect if not
	 * overridden by non-%NULL #GtkToolButton:label-widget or
	 * #GtkToolButton:icon-widget properties.
	 *
	 * Params:
	 *     iconName = the name of the themed icon
	 */
	public void setIconName(string iconName)
	{
		gtk_tool_button_set_icon_name(gtkToolButton, Str.toStringz(iconName));
	}

	/**
	 * Sets @icon as the widget used as icon on @button.
	 *
	 * Params:
	 *     iconWidget = the widget used as icon, or %NULL
	 */
	public void setIconWidget(Widget iconWidget)
	{
		gtk_tool_button_set_icon_widget(gtkToolButton, (iconWidget is null) ? null : iconWidget.getWidgetStruct());
	}

	/**
	 * Sets @label as the label used for the tool button. The #GtkToolButton:label
	 * property only has an effect if not overridden by a non-%NULL
	 * #GtkToolButton:label-widget property. If both the #GtkToolButton:label-widget
	 * and #GtkToolButton:label properties are %NULL, @button will not have a label.
	 *
	 * Params:
	 *     label = a string that will be used as label, or %NULL.
	 */
	public void setLabel(string label)
	{
		gtk_tool_button_set_label(gtkToolButton, Str.toStringz(label));
	}

	/**
	 * Sets @label_widget as the widget that will be used as the label
	 * for @button. If @label_widget is %NULL the #GtkToolButton:label property is used
	 * as label. If #GtkToolButton:label is also %NULL, @button does not have a label.
	 *
	 * Params:
	 *     labelWidget = the widget used as label, or %NULL
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		gtk_tool_button_set_label_widget(gtkToolButton, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
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
