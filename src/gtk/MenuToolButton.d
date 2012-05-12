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
 * inFile  = GtkMenuToolButton.html
 * outPack = gtk
 * outFile = MenuToolButton
 * strct   = GtkMenuToolButton
 * realStrct=
 * ctorStrct=GtkToolItem
 * clss    = MenuToolButton
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_menu_tool_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_menu_tool_button_new
 * 	- gtk_menu_tool_button_new_from_stock
 * 	- gtk_menu_tool_button_get_menu
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.ToolItem
 * 	- gtk.Widget
 * 	- gtk.Tooltips
 * 	- gtk.Menu
 * structWrap:
 * 	- GtkToolItem* -> ToolItem
 * 	- GtkTooltips* -> Tooltips
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.MenuToolButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.ToolItem;
private import gtk.Widget;
private import gtk.Tooltips;
private import gtk.Menu;



private import gtk.ToolButton;

/**
 * Description
 *  A GtkMenuToolButton is a GtkToolItem that contains a button and
 *  a small additional button with an arrow. When clicked, the arrow
 *  button pops up a dropdown menu.
 *  Use gtk_menu_tool_button_new() to create a new
 *  GtkMenuToolButton. Use gtk_menu_tool_button_new_from_stock() to
 *  create a new GtkMenuToolButton containing a stock item.
 * GtkMenuToolButton as GtkBuildable
 * The GtkMenuToolButton implementation of the GtkBuildable interface
 * supports adding a menu by specifying "menu" as the "type"
 * attribute of a <child> element.
 * $(DDOC_COMMENT example)
 */
public class MenuToolButton : ToolButton
{
	
	/** the main Gtk struct */
	protected GtkMenuToolButton* gtkMenuToolButton;
	
	
	public GtkMenuToolButton* getMenuToolButtonStruct()
	{
		return gtkMenuToolButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMenuToolButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMenuToolButton* gtkMenuToolButton)
	{
		if(gtkMenuToolButton is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkMenuToolButton);
		if( ptr !is null )
		{
			this = cast(MenuToolButton)ptr;
			return;
		}
		super(cast(GtkToolButton*)gtkMenuToolButton);
		this.gtkMenuToolButton = gtkMenuToolButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkMenuToolButton = cast(GtkMenuToolButton*)obj;
	}
	
	/**
	 * Creates a new GtkMenuToolButton using icon_widget as icon and
	 * label as label.
	 * Since 2.6
	 * Params:
	 *  iconWidget = a widget that will be used as icon widget, or NULL
	 *  label = a string that will be used as label, or NULL
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget iconWidget, string label)
	{
		// GtkToolItem* gtk_menu_tool_button_new (GtkWidget *icon_widget,  const gchar *label);
		auto p = gtk_menu_tool_button_new((iconWidget is null) ? null : iconWidget.getWidgetStruct(),
		Str.toStringz(label));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_menu_tool_button_new");
		}
		
		this(cast(GtkMenuToolButton*) p);
	}
	
	/**
	 * Creates a new GtkMenuToolButton.
	 * The new GtkMenuToolButton will contain an icon and label from
	 * the stock item indicated by stockID.
	 * Since 2.6
	 * Params:
	 * stockID = the name of a stock item
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(StockID stockId)
	{
		// GtkToolItem* gtk_menu_tool_button_new_from_stock  (const gchar *stock_id);
		auto p = gtk_menu_tool_button_new_from_stock(
		Str.toStringz(StockDesc[stockId]));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_menu_tool_button_new_from_stock");
		}
		
		this(cast(GtkMenuToolButton*) p);
	}
	
	/**
	 * Gets the GtkMenu associated with GtkMenuToolButton.
	 * Since 2.6
	 * Params:
	 *  button = a GtkMenuToolButton
	 * Returns:
	 *  the GtkMenu associated with GtkMenuToolButton
	 */
	public Menu getMenu()
	{
		// GtkWidget* gtk_menu_tool_button_get_menu (GtkMenuToolButton *button);
		auto p =  gtk_menu_tool_button_get_menu(gtkMenuToolButton);
		if(p is null)
		{
			return null;
		}
		return new Menu(cast(GtkMenu*)p);
	}
	
	/**
	 * Sets the toolTip for the arrow
	 * Deprecated: Since 2.12 use Widget.setArrowTooltipText() or Widget.setArrowTooltipMarkup()
	 * Params:
	 *    	tipText =
	 *    	tipPrivate =
	 */
	public void setArrowTooltip(string tipText, string tipPrivate)
	{
		Tooltips tooltips = new Tooltips();
		gtk_menu_tool_button_set_arrow_tooltip(
		gtkMenuToolButton,
		(tooltips is null) ? null : tooltips.getTooltipsStruct(),
		Str.toStringz(tipText),
		Str.toStringz(tipPrivate)
		);
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(MenuToolButton)[] onShowMenuListeners;
	/**
	 * The ::show-menu signal is emitted before the menu is shown.
	 * It can be used to populate the menu on demand, using
	 * gtk_menu_tool_button_get_menu().
	 * Note that even if you populate the menu dynamically in this way,
	 * you must set an empty menu on the GtkMenuToolButton beforehand,
	 * since the arrow is made insensitive if the menu is not set.
	 * See Also
	 *
	 * GtkToolbar, GtkToolButton
	 * The toolbar widget
	 *  The parent class of GtkMenuToolButton. The properties
	 *  "label_widget", "label", "icon_widget", and "stock_id" on
	 *  GtkToolButton determine the label and icon used on
	 *  GtkMenuToolButtons.
	 *
	 */
	void addOnShowMenu(void delegate(MenuToolButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("show-menu" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"show-menu",
			cast(GCallback)&callBackShowMenu,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["show-menu"] = 1;
		}
		onShowMenuListeners ~= dlg;
	}
	extern(C) static void callBackShowMenu(GtkMenuToolButton* buttonStruct, MenuToolButton menuToolButton)
	{
		foreach ( void delegate(MenuToolButton) dlg ; menuToolButton.onShowMenuListeners )
		{
			dlg(menuToolButton);
		}
	}
	
	
	/**
	 * Sets the GtkMenu that is popped up when the user clicks on the arrow.
	 * If menu is NULL, the arrow button becomes insensitive.
	 * Since 2.6
	 * Params:
	 * menu = the GtkMenu associated with GtkMenuToolButton
	 */
	public void setMenu(Widget menu)
	{
		// void gtk_menu_tool_button_set_menu (GtkMenuToolButton *button,  GtkWidget *menu);
		gtk_menu_tool_button_set_menu(gtkMenuToolButton, (menu is null) ? null : menu.getWidgetStruct());
	}
	
	/**
	 * Warning
	 * gtk_menu_tool_button_set_arrow_tooltip has been deprecated since version 2.12 and should not be used in newly-written code. Use gtk_menu_tool_button_set_arrow_tooltip_text()
	 * instead.
	 * Sets the GtkTooltips object to be used for arrow button which
	 * pops up the menu. See gtk_tool_item_set_tooltip() for setting
	 * a tooltip on the whole GtkMenuToolButton.
	 * Since 2.6
	 * Params:
	 * tooltips = the GtkTooltips object to be used
	 * tipText = text to be used as tooltip text for tool_item. [allow-none]
	 * tipPrivate = text to be used as private tooltip text. [allow-none]
	 */
	public void setArrowTooltip(Tooltips tooltips, string tipText, string tipPrivate)
	{
		// void gtk_menu_tool_button_set_arrow_tooltip  (GtkMenuToolButton *button,  GtkTooltips *tooltips,  const gchar *tip_text,  const gchar *tip_private);
		gtk_menu_tool_button_set_arrow_tooltip(gtkMenuToolButton, (tooltips is null) ? null : tooltips.getTooltipsStruct(), Str.toStringz(tipText), Str.toStringz(tipPrivate));
	}
	
	/**
	 * Sets the tooltip text to be used as tooltip for the arrow button which
	 * pops up the menu. See gtk_tool_item_set_tooltip() for setting a tooltip
	 * on the whole GtkMenuToolButton.
	 * Since 2.12
	 * Params:
	 * text = text to be used as tooltip text for button's arrow button
	 */
	public void setArrowTooltipText(string text)
	{
		// void gtk_menu_tool_button_set_arrow_tooltip_text  (GtkMenuToolButton *button,  const gchar *text);
		gtk_menu_tool_button_set_arrow_tooltip_text(gtkMenuToolButton, Str.toStringz(text));
	}
	
	/**
	 * Sets the tooltip markup text to be used as tooltip for the arrow button
	 * which pops up the menu. See gtk_tool_item_set_tooltip() for setting a
	 * tooltip on the whole GtkMenuToolButton.
	 * Since 2.12
	 * Params:
	 * markup = markup text to be used as tooltip text for button's arrow button
	 */
	public void setArrowTooltipMarkup(string markup)
	{
		// void gtk_menu_tool_button_set_arrow_tooltip_markup  (GtkMenuToolButton *button,  const gchar *markup);
		gtk_menu_tool_button_set_arrow_tooltip_markup(gtkMenuToolButton, Str.toStringz(markup));
	}
}
