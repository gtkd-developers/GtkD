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
 */

module gtk.MenuToolButton;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.ToolItem;
private import gtk.Widget;
private import gtk.Tooltips;
private import gtk.Menu;




/**
 * Description
 *  A GtkMenuToolButton is a GtkToolItem that contains a button and
 *  a small additional button with an arrow. When clicked, the arrow
 *  button pops up a dropdown menu.
 *  Use gtk_menu_tool_button_new() to create a new
 *  GtkMenuToolButton. Use gtk_menu_tool_button_new_from_stock() to
 *  create a new GtkMenuToolButton containing a stock item.
 */
private import gtk.ToolButton;
public class MenuToolButton : ToolButton
{
	
	/** the main Gtk struct */
	protected GtkMenuToolButton* gtkMenuToolButton;
	
	
	public GtkMenuToolButton* getMenuToolButtonStruct()
	{
		return gtkMenuToolButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkMenuToolButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMenuToolButton* gtkMenuToolButton)
	{
		assert(gtkMenuToolButton !is null, "struct gtkMenuToolButton is null on constructor");
		super(cast(GtkToolButton*)gtkMenuToolButton);
		this.gtkMenuToolButton = gtkMenuToolButton;
	}
	
	/**
	 * Creates a new GtkMenuToolButton using icon_widget as icon and
	 * label as label.
	 * icon_widget:
	 *  a widget that will be used as icon widget, or NULL
	 * label:
	 *  a string that will be used as label, or NULL
	 * Returns:
	 *  the new GtkMenuToolButton
	 * Since 2.6
	 */
	public this(Widget iconWidget, char[] label)
	{
		// GtkToolItem* gtk_menu_tool_button_new (GtkWidget *icon_widget,  const gchar *label);
		this( cast(GtkMenuToolButton*)gtk_menu_tool_button_new(
		(iconWidget is null) ? null : iconWidget.getWidgetStruct(),
		Str.toStringz(label))
		);
	}
	
	/**
	 * Creates a new GtkMenuToolButton.
	 * The new GtkMenuToolButton will contain an icon and label from
	 * the stock item indicated by stock_id.
	 * stock_id:
	 *  the name of a stock item
	 * Returns:
	 *  the new GtkMenuToolButton
	 * Since 2.6
	 */
	public this(StockID stockId)
	{
		// GtkToolItem* gtk_menu_tool_button_new_from_stock  (const gchar *stock_id);
		this(
		cast(GtkMenuToolButton*)gtk_menu_tool_button_new_from_stock(
		Str.toStringz(StockDesc[stockId]))
		);
	}
	
	/**
	 * Gets the GtkMenu associated with GtkMenuToolButton.
	 * button:
	 *  a GtkMenuToolButton
	 * Returns:
	 *  the GtkMenu associated with GtkMenuToolButton
	 * Since 2.6
	 */
	public Menu getMenu()
	{
		// GtkWidget* gtk_menu_tool_button_get_menu (GtkMenuToolButton *button);
		return new Menu( cast(GtkMenu*)gtk_menu_tool_button_get_menu(gtkMenuToolButton) );
	}
	
	/**
	 * Sets the toolTip for the arrow
	 * Params:
	 *    	tipText =
	 *    	tipPrivate =
	 */
	public void setArrowTooltip(char[] tipText, char[] tipPrivate)
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
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(MenuToolButton)[] onShowMenuListeners;
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
	extern(C) static void callBackShowMenu(GtkMenuToolButton* menutoolbuttonStruct, MenuToolButton menuToolButton)
	{
		bool consumed = false;
		
		foreach ( void delegate(MenuToolButton) dlg ; menuToolButton.onShowMenuListeners )
		{
			dlg(menuToolButton);
		}
		
		return consumed;
	}
	
	
	
	
	
	/**
	 * Sets the GtkMenu that is popped up when the user clicks on the arrow.
	 * If menu is NULL, the arrow button becomes insensitive.
	 * button:
	 *  a GtkMenuToolButton
	 * menu:
	 *  the GtkMenu associated with GtkMenuToolButton
	 * Since 2.6
	 */
	public void setMenu(Widget menu)
	{
		// void gtk_menu_tool_button_set_menu (GtkMenuToolButton *button,  GtkWidget *menu);
		gtk_menu_tool_button_set_menu(gtkMenuToolButton, (menu is null) ? null : menu.getWidgetStruct());
	}
	
	
	/**
	 * Sets the GtkTooltips object to be used for arrow button which
	 * pops up the menu. See gtk_tool_item_set_tooltip() for setting
	 * a tooltip on the whole GtkMenuToolButton.
	 * button:
	 *  a GtkMenuToolButton
	 * tooltips:
	 *  the GtkTooltips object to be used
	 * tip_text:
	 *  text to be used as tooltip text for tool_item
	 * tip_private:
	 *  text to be used as private tooltip text
	 * Since 2.6
	 * Property Details
	 * The "menu" property
	 *  "menu" GtkMenu : Read / Write
	 * The dropdown menu.
	 * Signal Details
	 * The "show-menu" signal
	 * void user_function (GtkMenuToolButton *menutoolbutton,
	 *  gpointer user_data) : Run First
	 * menutoolbutton:
	 * the object which received the signal.
	 * user_data:
	 * user data set when the signal handler was connected.
	 * See Also
	 * GtkToolbar, GtkToolButton
	 * The toolbar widget
	 * 	The parent class of GtkMenuToolButton. The properties
	 * 	"label_widget", "label", "icon_widget", and "stock_id" on
	 * 	GtkToolButton determine the label and icon used on
	 * 	GtkMenuToolButtons.
	 */
	public void setArrowTooltip(Tooltips tooltips, char[] tipText, char[] tipPrivate)
	{
		// void gtk_menu_tool_button_set_arrow_tooltip  (GtkMenuToolButton *button,  GtkTooltips *tooltips,  const gchar *tip_text,  const gchar *tip_private);
		gtk_menu_tool_button_set_arrow_tooltip(gtkMenuToolButton, (tooltips is null) ? null : tooltips.getTooltipsStruct(), Str.toStringz(tipText), Str.toStringz(tipPrivate));
	}
}
