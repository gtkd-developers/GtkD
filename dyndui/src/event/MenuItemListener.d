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

module event.MenuItemListener;

private import def.Types;
private import dui.MenuItem;

public:


private import dool.String;
/**
 * MenuItem events
 */
interface MenuItemListener
{
	void activateCallback (MenuItem menu_item, String action);
	void activateItemCallback (MenuItem menu_item, String action);
};


/**
 * MenuItem configuration events
 * \todo add the addListener to dispatcher
 */
interface MenuItemConfigurationListener
{
	void toggleSizeAllocateCallback(MenuItem menuitem, gint arg1);
	void toggleSizeRequestCallback(MenuItem menuitem, gpointer arg1);

	//"toggle-size-allocate" void user_function (GtkMenuItem * menuitem, gint arg1, gpointer user_data);
	//"toggle-size-request" void user_function (GtkMenuItem * menuitem, gpointer arg1, gpointer user_data);
}
