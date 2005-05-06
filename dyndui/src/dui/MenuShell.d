/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.MenuShell;

private import dui.Container;
private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.MenuItem;
private import lib.gtk;

/**
 * Menu Shell is the menu container ???
 */
public:
class MenuShell : Container
{
	debug(status)
	{
		int complete(){return ST_UNKNOWN;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "base object for the DUI heirarchy";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return type
	 */
	static GType getType()
	{
		return gtk_menu_shell_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}
	
	public:
	
	/**
	 * Appends an item to this menu shell
	 * @param item the item to append
	 */
	void append(MenuItem item)
	{
		gtk_menu_shell_append(gtkW(), item.gtkW());
	}

	/**
	 * prepend
	 * @param child
	 */
	void prepend(Widget child)
	{
		gtk_menu_shell_prepend(gtkW(), child.gtkW());
	}
	
	/**
	 * insert
	 * @param child
	 * @param position
	 */
	void insert(Widget child, gint position)
	{
		gtk_menu_shell_insert(gtkW(), child.gtkW(), position);
	}
	
	/**
	 * deactivate
	 */
	void deactivate()
	{
		gtk_menu_shell_deactivate(gtkW());
	}
	
	/**
	 * selectItem
	 * @param menuItem
	 */
	void selectItem(Widget menuItem)
	{
		gtk_menu_shell_select_item(gtkW(), menuItem.gtkW());
	}
	
	/**
	 * deselect
	 */
	void deselect()
	{
		gtk_menu_shell_deselect(gtkW());
	}
	
	/**
	 * activateItem
	 * @param menu_item
	 * @param force_deactivate
	 */
	void activateItem(Widget menu_item, bit force_deactivate)
	{
		gtk_menu_shell_activate_item(gtkW(),menu_item.gtkW(), force_deactivate);
	}
	
	/**
	 * selectFirst
	 * @param search_sensitive
	 */
	void selectFirst(bit search_sensitive)
	{
		gtk_menu_shell_select_first(gtkW(), search_sensitive);
	}
	
	/*
	void _gtk_menu_shell_select_last(gtkW(),gboolean    search_sensitive);
	void  _gtk_menu_shell_activate(gtkW());
	gint  _gtk_menu_shell_get_popup_delay(gtkW());
	*/
}
