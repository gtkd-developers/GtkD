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

module event.ItemListener;

private import def.Types;
private import dui.Item;

/**
 * Item events
 * \todo add the addListeners to dispatcher
 */
public :
interface ItemListener
{
	
	void deselectCallback(Item item);
	void selectCallback(Item item);
	void toggleCallback(Item item);
	
	//"deselect" void user_function (GtkItem * item, gpointer user_data);
	//"select" void user_function (GtkItem * item, gpointer user_data);
	//"toggle" void user_function (GtkItem * item, gpointer user_data);
};



