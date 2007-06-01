/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * prefixes:
 * 	- gtk_tool_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.ToolItem
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.ToolButton;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.ToolItem;
private import gtk.Widget;




/**
 * Description
 * GtkToolButtons are GtkToolItems containing buttons.
 * Use gtk_tool_button_new() to create a new GtkToolButton. Use
 * gtk_tool_button_new_with_stock() to create a GtkToolButton
 * containing a stock item.
 * The label of a GtkToolButton is determined by the properties
 * "label_widget", "label", and "stock_id". If "label_widget" is
 * non-NULL, then that widget is used as the label. Otherwise, if
 * "label" is non-NULL, that string is used as the label. Otherwise, if
 * "stock_id" is non-NULL, the label is determined by the stock
 * item. Otherwise, the button does not have a label.
 * The icon of a GtkToolButton is determined by the properties
 * "icon_widget" and "stock_id". If "icon_widget" is non-NULL, then
 * that widget is used as the icon. Otherwise, if "stock_id" is
 * non-NULL, the icon is determined by the stock item. Otherwise,
 * the button does not have a label.
 */
private import gtk.ToolItem;
public class ToolButton : ToolItem
{
	
	/** the main Gtk struct */
	protected GtkToolButton* gtkToolButton;
	
	
	public GtkToolButton* getToolButtonStruct()
	{
		return gtkToolButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkToolButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkToolButton* gtkToolButton)
	{
		assert(gtkToolButton !is null, "struct gtkToolButton is null on constructor");
		super(cast(GtkToolItem*)gtkToolButton);
		this.gtkToolButton = gtkToolButton;
	}
	
	/** An arbitrary string to be used by the application */
	private char[] action;
	
	public void setActionName(char[] action)
	{
		this.action = action.dup;
	}
	
	public char[] getActionName()
	{
		return action;
	}
	
	public this (StockID stockID)
	{
		this(StockDesc[stockID]);
	}
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(ToolButton)[] onClickedListeners;
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
	extern(C) static void callBackClicked(GtkToolButton* toolbuttonStruct, ToolButton toolButton)
	{
		bool consumed = false;
		
		foreach ( void delegate(ToolButton) dlg ; toolButton.onClickedListeners )
		{
			dlg(toolButton);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkToolButton using icon_widget as icon and label as
	 * label.
	 * icon_widget:
	 *  a widget that will be used as icon widget, or NULL
	 * label:
	 *  a string that will be used as label, or NULL
	 * Returns:
	 *  A new GtkToolButton
	 * Since 2.4
	 */
	public this (Widget iconWidget, char[] label)
	{
		// GtkToolItem* gtk_tool_button_new (GtkWidget *icon_widget,  const gchar *label);
		this(cast(GtkToolButton*)gtk_tool_button_new((iconWidget is null) ? null : iconWidget.getWidgetStruct(), Str.toStringz(label)) );
	}
	
	/**
	 * Creates a new GtkToolButton containing the image and text from a
	 * stock item. Some stock ids have preprocessor macros like GTK_STOCK_OK
	 * and GTK_STOCK_APPLY.
	 * It is an error if stock_id is not a name of a stock item.
	 * stock_id:
	 *  the name of the stock item
	 * Returns:
	 *  A new GtkToolButton
	 * Since 2.4
	 */
	public this (char[] stockId)
	{
		// GtkToolItem* gtk_tool_button_new_from_stock (const gchar *stock_id);
		this(cast(GtkToolButton*)gtk_tool_button_new_from_stock(Str.toStringz(stockId)) );
	}
	
	/**
	 * Sets label as the label used for the tool button. The "label" property
	 * only has an effect if not overridden by a non-NULL "label_widget" property.
	 * If both the "label_widget" and "label" properties are NULL, the label
	 * is determined by the "stock_id" property. If the "stock_id" property is also
	 * NULL, button will not have a label.
	 * button:
	 *  a GtkToolButton
	 * label:
	 *  a string that will be used as label, or NULL.
	 * Since 2.4
	 */
	public void setLabel(char[] label)
	{
		// void gtk_tool_button_set_label (GtkToolButton *button,  const gchar *label);
		gtk_tool_button_set_label(gtkToolButton, Str.toStringz(label));
	}
	
	/**
	 * Returns the label used by the tool button, or NULL if the tool button
	 * doesn't have a label. or uses a the label from a stock item. The returned
	 * string is owned by GTK+, and must not be modified or freed.
	 * button:
	 *  a GtkToolButton
	 * Returns:
	 *  The label, or NULL
	 * Since 2.4
	 */
	public char[] getLabel()
	{
		// const gchar* gtk_tool_button_get_label (GtkToolButton *button);
		return Str.toString(gtk_tool_button_get_label(gtkToolButton) );
	}
	
	/**
	 * If set, an underline in the label property indicates that the next character
	 * should be used for the mnemonic accelerator key in the overflow menu. For
	 * example, if the label property is "_Open" and use_underline is TRUE,
	 * the label on the tool button will be "Open" and the item on the overflow
	 * menu will have an underlined 'O'.
	 * Labels shown on tool buttons never have mnemonics on them; this property
	 * only affects the menu item on the overflow menu.
	 * button:
	 *  a GtkToolButton
	 * use_underline:
	 *  whether the button label has the form "_Open"
	 * Since 2.4
	 */
	public void setUseUnderline(int useUnderline)
	{
		// void gtk_tool_button_set_use_underline (GtkToolButton *button,  gboolean use_underline);
		gtk_tool_button_set_use_underline(gtkToolButton, useUnderline);
	}
	
	/**
	 * Returns whether underscores in the label property are used as mnemonics
	 * on menu items on the overflow menu. See gtk_tool_button_set_use_underline().
	 * button:
	 *  a GtkToolButton
	 * Returns:
	 *  TRUE if underscores in the label property are used as
	 * mnemonics on menu items on the overflow menu.
	 * Since 2.4
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
	 * button:
	 *  a GtkToolButton
	 * stock_id:
	 *  a name of a stock item, or NULL
	 * Since 2.4
	 */
	public void setStockId(char[] stockId)
	{
		// void gtk_tool_button_set_stock_id (GtkToolButton *button,  const gchar *stock_id);
		gtk_tool_button_set_stock_id(gtkToolButton, Str.toStringz(stockId));
	}
	
	/**
	 * Returns the name of the stock item. See gtk_tool_button_set_stock_id().
	 * The returned string is owned by GTK+ and must not be freed or modifed.
	 * button:
	 *  a GtkToolButton
	 * Returns:
	 *  the name of the stock item for button.
	 * Since 2.4
	 */
	public char[] getStockId()
	{
		// const gchar* gtk_tool_button_get_stock_id (GtkToolButton *button);
		return Str.toString(gtk_tool_button_get_stock_id(gtkToolButton) );
	}
	
	/**
	 * Sets the icon for the tool button from a named themed icon.
	 * See the docs for GtkIconTheme for more details.
	 * The "icon_name" property only has an effect if not
	 * overridden by non-NULL "label", "icon_widget" and "stock_id"
	 * properties.
	 * button:
	 *  a GtkToolButton
	 * icon_name:
	 *  the name of the themed icon
	 * Since 2.8
	 */
	public void setIconName(char[] iconName)
	{
		// void gtk_tool_button_set_icon_name (GtkToolButton *button,  const gchar *icon_name);
		gtk_tool_button_set_icon_name(gtkToolButton, Str.toStringz(iconName));
	}
	
	/**
	 * Returns the name of the themed icon for the tool button,
	 * see gtk_tool_button_set_icon_name().
	 * button:
	 *  a GtkToolButton
	 * Returns:
	 *  the icon name or NULL if the tool button has
	 * no themed icon
	 * Since 2.8
	 */
	public char[] getIconName()
	{
		// const gchar* gtk_tool_button_get_icon_name (GtkToolButton *button);
		return Str.toString(gtk_tool_button_get_icon_name(gtkToolButton) );
	}
	
	/**
	 * Sets icon as the widget used as icon on button. If icon_widget is
	 * NULL the icon is determined by the "stock_id" property. If the
	 * "stock_id" property is also NULL, button will not have an icon.
	 * button:
	 *  a GtkToolButton
	 * icon_widget:
	 *  the widget used as icon, or NULL
	 * Since 2.4
	 */
	public void setIconWidget(Widget iconWidget)
	{
		// void gtk_tool_button_set_icon_widget (GtkToolButton *button,  GtkWidget *icon_widget);
		gtk_tool_button_set_icon_widget(gtkToolButton, (iconWidget is null) ? null : iconWidget.getWidgetStruct());
	}
	
	/**
	 * Return the widget used as icon widget on button. See
	 * gtk_tool_button_set_icon_widget().
	 * button:
	 *  a GtkToolButton
	 * Returns:
	 *  The widget used as icon on button, or NULL.
	 * Since 2.4
	 */
	public Widget getIconWidget()
	{
		// GtkWidget* gtk_tool_button_get_icon_widget (GtkToolButton *button);
		return new Widget( gtk_tool_button_get_icon_widget(gtkToolButton) );
	}
	
	/**
	 * Sets label_widget as the widget that will be used as the label
	 * for button. If label_widget is NULL the "label" property is used
	 * as label. If "label" is also NULL, the label in the stock item
	 * determined by the "stock_id" property is used as label. If
	 * "stock_id" is also NULL, button does not have a label.
	 * button:
	 *  a GtkToolButton
	 * label_widget:
	 *  the widget used as label, or NULL
	 * Since 2.4
	 */
	public void setLabelWidget(Widget labelWidget)
	{
		// void gtk_tool_button_set_label_widget (GtkToolButton *button,  GtkWidget *label_widget);
		gtk_tool_button_set_label_widget(gtkToolButton, (labelWidget is null) ? null : labelWidget.getWidgetStruct());
	}
	
	/**
	 * Returns the widget used as label on button. See
	 * gtk_tool_button_set_label_widget().
	 * button:
	 *  a GtkToolButton
	 * Returns:
	 *  The widget used as label on button, or NULL.
	 * Since 2.4
	 * Property Details
	 * The "icon-name" property
	 *  "icon-name" gchararray : Read / Write
	 * The name of the themed icon displayed on the item.
	 * This property only has an effect if not overridden by "label",
	 * "icon_widget" or "stock_id" properties.
	 * Default value: NULL
	 * Since 2.8
	 */
	public Widget getLabelWidget()
	{
		// GtkWidget* gtk_tool_button_get_label_widget (GtkToolButton *button);
		return new Widget( gtk_tool_button_get_label_widget(gtkToolButton) );
	}
	
	
	
	
	
}
