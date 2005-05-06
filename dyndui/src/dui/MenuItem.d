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

module dui.MenuItem;

private import def.Types;
private import def.Constants;
private import dui.Item;
private import lib.gtk;

/**
 * A menu item
 */ 

// moved out ------------------------------
	private import dui.Utils;
	private import dui.Widget;
	private import event.Dispatcher;
	private import dui.Menu;
	private import event.MenuItemListener;
	
	private import event.EventHandler;
	private import dool.String;
// ----------------------------------------

public:
class MenuItem : Item
{
	alias EventHandler!(MenuItem) OnActivate;
	alias EventHandler!(MenuItem) OnActivateItem;

	OnActivate onActivate;
	OnActivateItem onActivateItem;
	
	debug(status)
	{
		int complete(){return 50;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A menu item";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	
	//void activateCallback (MenuItem menu_item, char [] action);
	//void activateItemCallback (MenuItem menu_item, char [] action);

	
	public:

	/**
	 * Gets this class type
	 * @return type
	 */
	static GType getType()
	{
		return gtk_menu_item_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	void addOnActivate(void delegate(MenuItem) dlg)
	{
		if ( onActivate === null )
		{
			onActivate = new OnActivate(this, EventMask.NONE, new String("activate"));
		}
		onActivate += dlg;
	}
	
	void addOnActivateItem(void delegate(MenuItem) dlg)
	{
		if ( onActivateItem === null )
		{
			onActivateItem = new OnActivateItem(this, EventMask.NONE, new String("activate_item"));
		}
		onActivateItem += dlg;
	}
	
	/**
	 * Creates a new menu item
	 */
	this()
	{
		this(gtk_menu_item_new());
	}
	
	/**
	 * Creates a new menu item with a label
	 */
	this(char[] label)
	{
		this(new String(label));
	}
	this(String label)
	{
		this(gtk_menu_item_new_with_mnemonic(label.toStringz()));
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
		this(gtk_menu_item_new_with_mnemonic(label.toStringz()));
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
		this(gtk_menu_item_new_with_mnemonic(label.toStringz()));
		setActionCommand(action);
		addOnActivate(dlg);
	}
	
	/**
	 * Creates a new menu item with a label an action and set the MenuItemListener
	 * @param listener the MenuItemListener
	 * @param label the item label text
	 * @param action the item action text
	 */
	this(MenuItemListener listener, char[] label, char[] action)
	{
		this(listener, new String(label), new String(action));
	}
	this(MenuItemListener listener, String label, String action)
	{
		this(gtk_menu_item_new_with_mnemonic(label.toStringz()));
		connect(listener, action);
	}

	/**
	 * Connects this menu item to a listener
	 * @param listener the listener interested on this menu item actions
	 * @param actino the action identifier
	 */
	void connect(MenuItemListener listener, String action)
	{
		if ( listener !== null )
		{
			// can't do like this??? Dispatcher.getDispatcher().addMenuItemListener(listener,this,action);
			Dispatcher dispatcher = Dispatcher.getDispatcher();
			dispatcher.addMenuItemListener(listener,this,action);
		}
	}
	
	/**
	 * Sets a submenu for this item
	 * @param subMenu
	 */
	void setSubmenu(Widget subMenu)
	{
		gtk_menu_item_set_submenu(gtkW(),subMenu.gtkW());
	}
	
	/**
	 * Creates a new submenu on this menu item.
	 * @param label the label with mnemonic of the new menu
	 * @return a new menu
	 */
	Menu setSubmenu(String label)
	{
		MenuItem item = new MenuItem(label);
		Menu menu = new Menu();
		setSubmenu(menu);
		return menu;
	}
	
	//GtkWidget * gtk_menu_item_new_with_label( char * label);

	/**
	 * getSubmenu
	 * @return Widget
	 */
	Widget getSubmenu()
	{
		return new Widget(gtk_menu_item_get_submenu(gtkW()));
	}

	/**
	 * removeSubmenu
	 */
	void removeSubmenu()
	{
		gtk_menu_item_remove_submenu(gtkW());
	}

	/**
	 * select
	 */
	void select()
	{
		gtk_menu_item_select(gtkW());
	}

	/**
	 * deselect
	 */
	void deselect()
	{
		gtk_menu_item_deselect(gtkW());
	}

	/**
	 * select
	 * @param stat if true select else deselect
	 */
	void select(bit stat)
	{
		if ( stat )
		{
			select();
		}
		else
		{
			deselect();
		}
	}
	
	/**
	 * activate
	 */
	void activateItem()
	{
		gtk_menu_item_activate(gtkW());
	}

	/**
	 * toggleSizeRequest
	 * @param requisition
	 */
	void toggleSizeRequest(gint * requisition)
	{
		gtk_menu_item_toggle_size_request(gtkW(), requisition);
	}

	/**
	 * toggleSizeAllocate
	 * @param allocation
	 */
	void toggleSizeAllocate(gint allocation)
	{
		gtk_menu_item_toggle_size_allocate(gtkW(), allocation);
	}

	/**
	 * Set something to the right ???
	 * @param right
	 */
	void setRightJustified(ushort right)
	{
		gtk_menu_item_set_right_justified(gtkW(),right);
	}

	bit getRightJustufued()
	{
		return gtk_menu_item_get_right_justified(gtkW())==0?false:true;
	}

	void setAccelPath(String accelPath)
	{
		gtk_menu_item_set_accel_path(gtkW(), accelPath.toStringz());
	}
	
}
