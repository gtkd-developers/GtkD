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

module dui.OptionMenu;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.ToggleButton;
private import dui.Menu;
private import dui.MenuItem;
private import event.MenuItemListener;

alias GtkToggleButton GtkOptionMenu;

extern (C) GType gtk_option_menu_get_type();
extern (C) GtkWidget * gtk_option_menu_new();
extern (C) GtkWidget * gtk_option_menu_get_menu(GtkOptionMenu * option_menu);
extern (C) void gtk_option_menu_set_menu(GtkOptionMenu * option_menu, GtkWidget * menu);
extern (C) void gtk_option_menu_remove_menu(GtkOptionMenu * option_menu);
extern (C) gint gtk_option_menu_get_history(GtkOptionMenu * option_menu);
extern (C) void gtk_option_menu_set_history(GtkOptionMenu * option_menu, guint index_);

/**
 * A menu item???
 */
public:
class OptionMenu : ToggleButton
{

	private import dool.String;
	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A menu item ???";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_option_menu_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Creates a new OptionMenu
	 */
	this()
	{
		this(gtk_option_menu_new());
	}

	/**
	 * Creates a new OptionMenu from an array of string
	 */
	this(MenuItemListener listener, String actionPrefix, String[] entries)
	{
		this();
		Menu menu = new Menu();
		for ( int i=0 ; i<entries.length ; i++)
		{
			menu.append(new MenuItem(listener,entries[i],actionPrefix~entries[i]));
		}
		setMenu(menu);
	}

	/**
	 * Creates a new OptionMenu from an array of string
	 */
	this(char[] actionPrefix, String[] entries, void delegate(MenuItem) dlg)
	{
		this(new String(actionPrefix), entries, dlg);
	}
	this(String actionPrefix, String[] entries, void delegate(MenuItem) dlg)
	{
		this();
		Menu menu = new Menu();
		for ( int i=0 ; i<entries.length ; i++)
		{
			menu.append(new MenuItem(entries[i], dlg));
		}
		setMenu(menu);
	}

	/**
	 * Creates a new OptionMenu and set it's menu
	 * @param menu
	 */
	this(Menu menu)
	{
		this();
		setMenu(menu);
	}

	/**
	 * Gets the menu of this option menu
	 * @return the menu
	 */
	Menu getMenu()
	{
		return new Menu(gtk_option_menu_get_menu(cast(GtkOptionMenu*)gtkW()));
	}
	
	/**
	 * Set the menu for this option menu
	 * @param menu the menu
	 */
	void setMenu(Menu menu)
	{
		gtk_option_menu_set_menu(cast(GtkOptionMenu*)gtkW(), menu.gtkW());
	}
	
	/**
	 * Removes the menu for this option menu
	 */
	void removeMenu()
	{
		gtk_option_menu_remove_menu(cast(GtkOptionMenu*)gtkW());
	}
	
	/**
	 * Gets the history for this option menu ???
	 * @return the history
	 */
	gint getHistory()
	{
		return gtk_option_menu_get_history(cast(GtkOptionMenu*)gtkW());
	}
	
	/**
	 * Sets the history for this option menu???
	 * @param index the history
	 */
	void setHistory(guint index)
	{
		gtk_option_menu_set_history(cast(GtkOptionMenu*)gtkW(), index);
	}

}
