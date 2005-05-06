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

module dui.MenuBar;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.MenuShell;
private import dui.Menu;
private import dui.MenuItem;
private import lib.gtk;
private import dool.String;

/**
 * Menu bar : a menu of menus in a bar
 */
public:
class MenuBar : MenuShell
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Menu bar";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return type
	 */
	static GType getType()
	{
		return gtk_menu_bar_get_type();
	}
	
    this(GtkWidget *gtkWidget)
    {
        super(gtkWidget);
    }

	public:
	
	/**
	 * Creates a new menu bar
	 */
	this()
	{
		this(gtk_menu_bar_new());
	}
	
	/**
	 * Creates a new menu and appends it to this menu bar
	 * @return the newly created menu
	 */
	Menu append(char[] label)
	{
		return append(new String(label));
	}
	Menu append(String label)
	{
		return append(label,false);
	}
	
	/**
	 * Walter promissed that this is going to change
	 * @param item 
	 */
	void append(MenuItem item)
	{
		super.append(item);
	}

	/**
	 * Creates a new menu and appends it to this menu bar
	 * @param label
	 * @param rightJustify if true the new menu will be right justified
	 * @return the newly created menu
	 */
	Menu append(char[] label, bit rightJustify)
	{
		return append(new String(label), rightJustify);
	}
	Menu append(String label, bit rightJustify)
	{
		MenuItem item = new MenuItem(label);
		append(item);
		item.setRightJustified(rightJustify);
		Menu menu= new Menu();
		item.setSubmenu(menu);
		return menu;
	}
	
}
