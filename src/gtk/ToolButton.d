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
 * inFile  = GtkToolButton.html
 * outPack = gtk
 * outFile = ToolButton
 * strct   = GtkToolButton
 * realStrct=
 * ctorStrct=GtkToolItem
 * clss    = ToolButton
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ActionableIF
 * prefixes:
 * 	- gtk_tool_button_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gtk.ActionableIF
 * 	- gtk.ActionableT
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ToolButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Widget;
private import gtk.ActionableIF;
private import gtk.ActionableT;



private import gtk.ToolItem;

/**
 * Description
 * GtkToolButtons are GtkToolItems containing buttons.
 * Use gtk_tool_button_new() to create a new GtkToolButton. Use
 * gtk_tool_button_new_from_stock() to create a GtkToolButton
 * containing a stock item.
 * The label of a GtkToolButton is determined by the properties
 * "label-widget", "label", and
 * "stock-id". If "label-widget" is
 * non-NULL, then that widget is used as the label. Otherwise, if
 * "label" is non-NULL, that string is used as the label.
 * Otherwise, if "stock-id" is non-NULL, the label is
 * determined by the stock item. Otherwise, the button does not have a label.
 * The icon of a GtkToolButton is determined by the properties
 * "icon-widget" and "stock-id". If
 * "icon-widget" is non-NULL, then
 * that widget is used as the icon. Otherwise, if "stock-id" is
 * non-NULL, the icon is determined by the stock item. Otherwise,
 * the button does not have a icon.
 */
public class ToolButton : ToolItem, ActionableIF
{
	
	/** the main Gtk struct */
	protected GtkToolButton* gtkToolButton;
	
	
	public GtkToolButton* getToolButtonStruct()
	{
		return gtkToolButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToolButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkToolButton* gtkToolButton)
	{
		super(cast(GtkToolItem*)gtkToolButton);
		this.gtkToolButton = gtkToolButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkToolButton = cast(GtkToolButton*)obj;
	}
	
	// add the Actionable capabilities
	mixin ActionableT!(GtkToolButton);
	
	/** */
	public this (StockID stockID)
	{
		this(StockDesc[stockID]);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ToolButton)[] onClickedListeners;
	/**
	 * This signal is emitted when the tool button is clicked with the mouse
	 * or activated with the keyboard.
	 * See Also
	 * GtkToolbar, GtkMenuToolButton, GtkToggleToolButton,
	 *  GtkRadioToolButton, GtkSeparatorToolItem
	 */
	void addOnClicked(void delegate(ToolButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("clicked" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"clicked",
			cast(GCallback)&callBackClicked,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["clicked"] = 1;
		}
		onClickedListeners ~= dlg;
	}
	extern(C) static void callBackClicked(GtkToolButton* toolbuttonStruct, ToolButton _toolButton)
	{
		foreach ( void delegate(ToolButton) dlg ; _toolButton.onClickedListeners )
		{
			dlg(_toolButton);
		}
	}
	
	
	/**
	 * Creates a new GtkToolButton using icon_widget as contents and label as
	 * label.
	 * Since 2.4
	 * Params:
	 * label = a string that will be used as label, or NULL. [allow-none]
	 * iconWidget = a widget that will be used as the button contents, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Widget iconWidget, string label)
	{
		// GtkToolItem * gtk_tool_button_new (GtkWidget *icon_widget,  const gchar *label);
		auto p = gtk_tool_button_new((iconWidget is null) ? null : iconWidget.getWidgetStruct(), Str.toStringz(label));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_tool_button_new((iconWidget is null) ? null : iconWidget.getWidgetStruct(), Str.toStringz(label))");
		}
		this(cast(GtkToolButton*) p);
	}
	
	/**
	 * Creates a new GtkToolButton containing the image and text from a
	 * stock item. Some stock ids have preprocessor macros like GTK_STOCK_OK
	 * and GTK_STOCK_APPLY.
	 * It is an error if stock_id is not a name of a stock item.
	 * Since 2.4
	 * Params:
	 * stockId = the name of the stock item
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string stockId)
	{
		// GtkToolItem * gtk_tool_button_new_from_stock (const gchar *stock_id);
		auto p = gtk_tool_button_new_from_stock(Str.toStringz(stockId));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_tool_button_new_from_stock(Str.toStringz(stockId))");
		}
		this(cast(GtkToolButton*) p);
	}
	
	/**
	 * Sets label as the label used for the tool button. The "label" property
	 * only has an effect if not overridden by a non-NULL "label_widget" property.
	 * If both the "label_widget" and "label" properties are NULL, the label
	 * is determined by the "stock_id" property. If the "stock_id" property is also
	 * NULL, button will not have a label.
	 * Since 2.4
	 * Params:
	 * label = a string that will be used as label, or NULL. [allow-none]
	 */
	public void setLabel(string label)
	{
		// void gtk_tool_button_set_label (GtkToolButton *button,  const gchar *label);
		gtk_tool_button_set_label(gtkToolButton, Str.toStringz(label));
	}
	
	/**
	 * Returns the label used by the tool button, or NULL if the tool button
	 * doesn't have a label. or uses a the label from a stock item. The returned
	 * string is owned by GTK+, and must not be modified or freed.
	 * Since 2.4
	 * Returns: The label, or NULL
	 */
	public string getLabel()
	{
		// const gchar * gtk_tool_button_get_label (GtkToolButton *button);
		return Str.toString(gtk_tool_button_get_label(gtkToolButton));
	}
	
	/**
	 * If set, an underline in the label property indicates that the next character
	 * should be used for the mnemonic accelerator key in the overflow menu. For
	 * example, if the label property is "_Open" and use_underline is TRUE,
	 * the label on the tool button will be "Open" and the item on the overflow
	 * menu will have an underlined 'O'.
	 * Labels shown on tool buttons never have mnemonics on them; this property
	 * only affects the menu item on the overflow menu.
	 * Since 2.4
	 * Params:
	 * useUnderline = whether the button label has the form "_Open"
	 */
	public void setUseUnderline(int useUnderline)
	{
		// void gtk_tool_button_set_use_underline (GtkToolButton *button,  gboolean use_underline);
		gtk_tool_button_set_use_underline(gtkToolButton, useUnderline);
	}
	
	/**
	 * Returns whether underscores in the label property are used as mnemonics
	 * on menu items on the overflow menu. See gtk_tool_button_set_use_underline().
	 * Since 2.4
	 * Returns: TRUE if underscores in the label property are used as mnemonics on menu items on the overflow menu.
	 */
	public int getUseUnderline()
	{
		// gboolean gtk_tool_button_get_use_underline (GtkToolButton *button);
		return gtk_tool_button_get_use_underline(gtkToolButton);
	}
	
	/**
	 * Sets the name of the stock item. See gtk_tool_button_new_from_stock().
	 * The stock_id property only has an effect if not
	 * overridden by non-NULL "label" and "icon_widget" properties.
	 * Since 2.4
	 * Params:
	 * stockId = a name of a stock item, or NULL. [allow-none]
	 */
	public void setStockId(string stockId)
	{
		// void gtk_tool_button_set_stock_id (GtkToolButton *button,  const gchar *stock_id);
		gtk_tool_button_set_stock_id(gtkToolButton, Str.toStringz(stockId));
	}
	
	/**
	 * Returns the name of the stock item. See gtk_tool_button_set_stock_id().
	 * The returned string is owned by GTK+ and must not be freed or modifed.
	 * Since 2.4
	 * Returns: the name of the stock item for button.
	 */
	public string getStockId()
	{
		// const gchar * gtk_tool_button_get_stock_id (GtkToolButton *button);
		return Str.toString(gtk_tool_button_get_stock_id(gtkToolButton));
	}
	
	/**
	 * Sets the icon for the tool button from a named themed icon.
	 * See the docs for GtkIconTheme for more details.
	 * The "icon_name" property only has an effect if not
	 * overridden by non-NULL "label", "icon_widget" and "stock_id"
	 * properties.
	 * Since 2.8
	 * Params:
	 * iconName = the name of the themed icon. [allow-none]
	 */
	public void setIconName(string iconName)
	{
		// void gtk_tool_button_set_icon_name (GtkToolButton *button,  const gchar *icon_name);
		gtk_tool_button_set_icon_name(gtkToolButton, Str.toStringz(iconName));
	}
	
	/**
	 * Returns the name of the themed icon for the tool button,
	 * see gtk_tool_button_set_icon_name().
	 * Since 2.8
	 * Returns: the icon name or NULL if the tool button has no themed icon
	 */
	public string getIconName()
	{
		// const gchar * gtk_tool_button_get_icon_name (GtkToolButton *button);
		return Str.toString(gtk_tool_button_get_icon_name(gtkToolButton));
	}
	
	/**
	 * Sets icon as the widget used as icon on button. If icon_widget is
	 * NULL the icon is determined by the "stock_id" property. If the
	 * "stock_id" property is also NULL, button will not have an icon.
	 * Since 2.4
	 * Params:
	 * iconWidget = the widget used as icon, or NULL. [allow-none]
	 */
	public void setIconWidget(Widget iconWidget)
	{
		// void gtk_tool_button_set_icon_widget (GtkToolButton *button,  GtkWidget *icon_widget);
		gtk_tool_button_set_icon_widget(gtkToolButton, (iconWidget is null) ? null : iconWidget.getWidgetStruct());
	}
	
	/**
	 * Return the widget used as icon widget on button.
	 * See gtk_tool_button_set_icon_widget().
	 * Since 2.4
	 * Returns: The widget used as icon on button, or NULL. [transfer none]
	 */
	public Widget getIconWidget()
	{
		// GtkWidget * gtk_tool_button_get_icon_widget (GtkToolButton *button);
		auto p = gtk_tool_button_get_icon_widget(gtkToolButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Sets label_widget as the widget that will be used as the label
	 * for button. If label_widget is NULL the "label" property is used
	 * as label. If "label" is also NULL, the label in the stock item
	 * determined by the "stock_id" property is used as label. If
	 * "stock_id" is also NULL, button does not have a label.
	 * Since 2.4
	 * Params:
	 * labelWidget = the widget used as label, or NULL. [allow-none]
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		// void gtk_tool_button_set_label_widget (GtkToolButton *button,  GtkWidget *label_widget);
		gtk_tool_button_set_label_widget(gtkToolButton, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}
	
	/**
	 * Returns the widget used as label on button.
	 * See gtk_tool_button_set_label_widget().
	 * Since 2.4
	 * Returns: The widget used as label on button, or NULL. [transfer none]
	 */
	public Widget getLabelWidget()
	{
		// GtkWidget * gtk_tool_button_get_label_widget (GtkToolButton *button);
		auto p = gtk_tool_button_get_label_widget(gtkToolButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
}
