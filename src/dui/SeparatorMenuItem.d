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

module dui.SeparatorMenuItem;

private import def.Types;
private import def.Constants;
private import dui.MenuItem;

public:

alias GtkMenuItem GtkSeparatorMenuItem;

private:

extern(C)
{
	GType  gtk_separator_menu_item_get_type();
	GtkWidget*  gtk_separator_menu_item_new();
};

/**
 * Separator for menus.
 */
public:
class SeparatorMenuItem : MenuItem
{
	public:

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Separator for menus";}
		char[] author(){return "Antonio";}
	}
	
	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_separator_menu_item_get_type();
	}
	
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }
	
	public:
	
	/**
	 * Creates a new Separator menu item
	 */
	this()
	{
		this(gtk_separator_menu_item_new());
	}
    
}
