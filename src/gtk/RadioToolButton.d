/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = RadioToolButton
 * strct   = GtkRadioToolButton
 * realStrct=
 * clss    = RadioToolButton
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_radio_tool_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.ToolItem
 * 	- glib.ListSG
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GtkToolItem* -> ToolItem
 * local aliases:
 */

module gtk.RadioToolButton;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.ToolItem;
private import glib.ListSG;

/**
 * Description
 * A GtkRadioToolButton is a GtkToolItem that contains a radio button,
 * that is, a button that is part of a group of toggle buttons where only
 * one button can be active at a time.
 * Use gtk_radio_tool_button_new() to create a new
 * GtkRadioToolButton. use gtk_radio_tool_button_new_from_widget() to
 * create a new GtkRadioToolButton that is part of the same group as an
 * existing GtkRadioToolButton. Use
 * gtk_radio_tool_button_new_from_stock() or
 * gtk_radio_tool_button_new_from_widget_with_stock() to create a new
 * GtkRAdioToolButton containing a stock item.
 */
private import gtk.ToggleToolButton;
public class RadioToolButton : ToggleToolButton
{
	
	/** the main Gtk struct */
	protected GtkRadioToolButton* gtkRadioToolButton;
	
	
	public GtkRadioToolButton* getRadioToolButtonStruct()
	{
		return gtkRadioToolButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkRadioToolButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRadioToolButton* gtkRadioToolButton)
	{
		super(cast(GtkToggleToolButton*)gtkRadioToolButton);
		this.gtkRadioToolButton = gtkRadioToolButton;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkRadioToolButton, adding it to group.
	 * group:
	 *  An existing radio button group, or NULL if you are creating a new group
	 * Returns:
	 *  The new GtkRadioToolButton
	 * Since 2.4
	 */
	public static ToolItem newRadioToolButton(ListSG group)
	{
		// GtkToolItem* gtk_radio_tool_button_new (GSList *group);
		return new ToolItem( gtk_radio_tool_button_new((group is null) ? null : group.getListSGStruct()) );
	}
	
	/**
	 * Creates a new GtkRadioToolButton, adding it to group.
	 * The new GtkRadioToolButton will contain an icon and label from the
	 * stock item indicated by stock_id.
	 * group:
	 *  an existing radio button group, or NULL if you are creating a new group
	 * stock_id:
	 *  the name of a stock item
	 * Returns:
	 *  The new GtkRadioToolItem
	 * Since 2.4
	 */
	public static ToolItem newFromStock(ListSG group, char[] stockId)
	{
		// GtkToolItem* gtk_radio_tool_button_new_from_stock  (GSList *group,  const gchar *stock_id);
		return new ToolItem( gtk_radio_tool_button_new_from_stock((group is null) ? null : group.getListSGStruct(), Str.toStringz(stockId)) );
	}
	
	/**
	 * Creates a new GtkRadioToolButton adding it to the same group as gruup
	 * group:
	 *  An existing GtkRadioToolButton
	 * Returns:
	 *  The new GtkRadioToolButton
	 * Since 2.4
	 */
	public ToolItem newFromWidget()
	{
		// GtkToolItem* gtk_radio_tool_button_new_from_widget  (GtkRadioToolButton *group);
		return new ToolItem( gtk_radio_tool_button_new_from_widget(gtkRadioToolButton) );
	}
	
	/**
	 * Creates a new GtkRadioToolButton adding it to the same group as group.
	 * The new GtkRadioToolButton will contain an icon and label from the
	 * stock item indicated by stock_id.
	 * group:
	 *  An existing GtkRadioToolButton.
	 * stock_id:
	 *  the name of a stock item
	 * Returns:
	 *  A new GtkRadioToolButton
	 * Since 2.4
	 */
	public ToolItem newWithStockFromWidget(char[] stockId)
	{
		// GtkToolItem* gtk_radio_tool_button_new_with_stock_from_widget  (GtkRadioToolButton *group,  const gchar *stock_id);
		return new ToolItem( gtk_radio_tool_button_new_with_stock_from_widget(gtkRadioToolButton, Str.toStringz(stockId)) );
	}
	
	/**
	 * Returns the radio button group button belongs to.
	 * button:
	 *  a GtkRadioToolButton
	 * Returns:
	 *  The group button belongs to.
	 * Since 2.4
	 */
	public ListSG getGroup()
	{
		// GSList* gtk_radio_tool_button_get_group (GtkRadioToolButton *button);
		return new ListSG( gtk_radio_tool_button_get_group(gtkRadioToolButton) );
	}
	
	/**
	 * Adds button to group, removing it from the group it belonged to before.
	 * button:
	 *  a GtkRadioToolButton
	 * group:
	 *  an existing radio button group
	 * Since 2.4
	 * Property Details
	 * The "group" property
	 *  "group" GtkRadioToolButton : Write
	 * Sets a new group for a radio tool button.
	 * Since 2.4
	 * See Also
	 * GtkToolbar
	 * The toolbar widget
	 * GtkToolButton
	 *  An ancestor class of GtkRadioToolButton. The properties
	 *  "label_widget", "label", "icon_widget", and "stock_id" on
	 *  GtkToolButton determine the label and icon used on a
	 *  GtkRadioToolButton.
	 * GtkSeparatorToolItem
	 * A subclass of GtkToolItem that separates groups of
	 *  items on a toolbar. It is usually a good idea to put a separator
	 *  before and after a group of GtkRadioToolButtons on a GtkToolbar.
	 */
	public void setGroup(ListSG group)
	{
		// void gtk_radio_tool_button_set_group (GtkRadioToolButton *button,  GSList *group);
		gtk_radio_tool_button_set_group(gtkRadioToolButton, (group is null) ? null : group.getListSGStruct());
	}
}
