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

module dui.CheckMenuItem;

private import dui.MenuItem;
private import def.Types;
private import lib.gtk;

/**
 * Check menu item
 */

// moved out --------------------------------
	private import dui.Utils;
	private import event.Dispatcher;
	private import event.MenuItemListener;
	private import dool.String;
// ------------------------------------------

public:
class CheckMenuItem :
		MenuItem
{
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Check menu item";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}
	
	public:

	/**
	 * Create a new check menu item
	 */
	this()
	{
		this(gtk_check_menu_item_new());
	}
	
	/**
	 * Creates a new check menu item with a label
	 * @param label the label text
	 */
	this(String label)
	{
		this(gtk_check_menu_item_new_with_mnemonic(label.toStringz()));
	}

	/**
	 * Creates a new check menu item with a label an action and set the MenuItemListener
	 * @param listener the menu item MenuItemListener
	 * @param label the item label text
	 * @param action the item action text
	 */
	this(MenuItemListener listener, String label, String action)
	{
		this(gtk_check_menu_item_new_with_mnemonic(label.toStringz()));
		connect(listener, action);
	}

	
		/**
	 * Creates a new menu item with a label and a listener
	 */
	this(char[] label, void delegate(MenuItem)dlg)
	{
		this(new String(label), dlg);
	}
	this(String label, void delegate(MenuItem)dlg)
	{
		this(gtk_check_menu_item_new_with_mnemonic(label.toStringz()));
		addOnActivate(dlg);
	}
	
	/**
	 * Creates a new menu item with a label and a listener and a action
	 */
	this(char[] label, void delegate(MenuItem)dlg, char[] action)
	{
		this(new String(label), dlg, new String(action));
	}
	
	this(String label, void delegate(MenuItem)dlg, String action)
	{
		this(gtk_check_menu_item_new_with_mnemonic(label.toStringz()));
		setActionCommand(action);
		addOnActivate(dlg);
	}
	

	
	//GtkWidget * gtk_check_menu_item_new_with_mnemonic(gchar * label);
	//#define gtk_check_menu_item_set_state
	
	
	/**
	 * Gets the current active state
	 * @return the current active state
	 */
	bit getActive()
	{
		return gtk_check_menu_item_get_active(gtkW())==0?false:true;
	}
		
	/**
	 * Sets the active state
	 * @param active the active state
	 */
	void setActive(bit active)
	{
		gtk_check_menu_item_set_active(gtkW(), active);
	}
	
	/**
	 * Sets the show toggle policy
	 * @param always
	 */
	void setShowToggle(bit always)
	{
		gtk_check_menu_item_set_show_toggle(gtkW(), always);
	}
	
	/**
	 * Toggles the button state
	 */
	void toggled()
	{
		gtk_check_menu_item_toggled(gtkW());
	}
	
	/**
	 * Gets the inconsistent state
	 * @return true the the state is inconsistent
	 */
	gboolean getInconsistent()
	{
		return gtk_check_menu_item_get_inconsistent(gtkW())==0?false:true;
	}
	
	/**
	 * Sets the inconsisten state
	 * @param setting the bew inconsistent state
	 */
	void setInconsistent(bit setting)
	{
		gtk_check_menu_item_set_inconsistent(gtkW(), setting);
	}

}
