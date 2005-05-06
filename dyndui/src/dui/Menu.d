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

module dui.Menu;

private import dui.MenuShell;
private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.AccelGroup;
private import dui.Widget;
private import dui.MenuItem;
	
private import ddi.Screen;

private import lib.gtk;

/**
 * A menu 
 */

// moved out ---------------------
   private import dool.String;
// -------------------------------

public:
class Menu : MenuShell
{

	private:
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A menu";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return type
	 */
	static GType getType()
	{
		return gtk_menu_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Creates a new menu
	 */
	this()
	{
		this(gtk_menu_new());
	}

	/**
	 * Creates a new menu with a title
	 * @param title
	 */
	this(String title)
	{
		this();
		setTitle(title);
	}

	/**
	 * Sets this menu title
	 * @param title
	 */
	void setTitle(String title)
	{
		gtk_menu_set_title(gtkW(),title.toStringz());
	}

	/**
	 * Creates and append a submenu to this menu.
	 * This menu item that actualy has the sub menu is also created.
	 * @param label the sub menu item label
	 * @return the new menu
	 */
	Menu appendSubmenu(char[] label)
	{
		return appendSubmenu(new String(label));
	}
	Menu appendSubmenu(String label)
	{
		MenuItem item = new MenuItem(label);
		append(item);
		Menu submenu = new Menu();
		item.setSubmenu(submenu);
		return submenu;
	}

	void appendSubmenu(char[] label, Menu submenu)
	{
		appendSubmenu(new String(label), submenu);
	}
	
	void appendSubmenu(String label, Menu submenu)
	{
		MenuItem item = new MenuItem(label);
		append(item);
		item.setSubmenu(submenu);
	}

	Menu prependSubmenu(char[] label)
	{
		return prependSubmenu(new String(label));
	}
	Menu prependSubmenu(String label)
	{
		MenuItem item = new MenuItem(label);
		prepend(item);
		Menu submenu = new Menu();
		item.setSubmenu(submenu);
		return submenu;
	}

	/**
	 * Popups up this menu
	 * @param button ??? you can pass a button number here
	 * @param activateTime ??? you can pass the time from an event here
	 */
	void popup(guint button, guint32 activateTime)
	{
		popup(null, null, null, null, button, activateTime);
	}
	
	/**
	 * Display the menu onscreen
	 * @param parentMenuShell
	 * @param parentMenuItem
	 * @param func
	 * @param data
	 * @param button
	 * @param activateTime
	 * @see popup(guint,guint32) for the prefered method of popup a menu
	 */
	void popup(Widget parentMenuShell, Widget parentMenuItem, void * func, gpointer data, guint button, guint32 activateTime)
	{
		GtkWidget* pms = parentMenuShell===null ? null : parentMenuShell.gtkW();
		GtkWidget* pmi = parentMenuItem===null ? null : parentMenuItem.gtkW();
		gtk_menu_popup(gtkW(), pms, pmi,func, data, button, activateTime);
	}

	/**
	 * Position the menu according to its position function. Called
	 * from gtkmenuitem.c when a menu-item changes its allocation
	 */
	void reposition()
	{
		gtk_menu_reposition(gtkW());
	}
	
	/**
	 * Closes the popup menu
	 */
	void popdown()
	{
		gtk_menu_popdown(gtkW());
	}
	
	/**
	 * Keep track of the last menu item selected. (For the purposes
	 * of the option menu
	 * @return the last active widget
	 */
	Widget getActive()
	{
		return new Widget(gtk_menu_get_active(gtkW()));
	}
	
	/**
	 * Sets the active item
	 * @param index the item index
	 */
	void setActive(guint index)
	{
		gtk_menu_set_active(gtkW(), index);
	}
	
	/* set/get the accelerator group that holds global accelerators (should
	 * be added to the corresponding toplevel with gtk_window_add_accel_group().
	 */
	void setAccelGroup(AccelGroup accelGroup)
	{
		gtk_menu_set_accel_group(gtkW(), accelGroup.obj());
	}
	
	/**
	 * Gets the accel group 
	 * @return the accel group
	 */
	AccelGroup getAccelGroup()
	{
		return new AccelGroup(gtk_menu_get_accel_group(gtkW()));
	}
	 
	void setAccelPath(String accelPath)
	{
		gtk_menu_set_accel_path(gtkW(), accelPath.toStringz());
	}
	
	/**
	 * A reference count is kept for a widget when it is attached to
	 * a particular widget. This is typically a menu item; it may also
	 * be a widget with a popup menu - for instance, the Notebook widget.
	 * @param attachWidget
	 */
	void attachToWidget(Widget attachWidget)//, /*GtkMenuDetachFunc*/ void * detacher)
	{
		gtk_menu_attach_to_widget(gtkW(), attachWidget.gtkW(), null); //*GtkMenuDetachFunc*/ void * detacher);
	}
	
	/**
	 * Detaches this menu
	 */
	void detach()
	{
		gtk_menu_detach(gtkW());
	}
	
	/**
	 * This should be dumped in favor of data set when the menu is popped
	 * up - that is currently in the ItemFactory code, but should be
	 * in the Menu code.
	 */
	Widget getAttachWidget()
	{
		return new Widget(gtk_menu_get_attach_widget(gtkW()));
	}
	
	/**
	 * Set tear off state ???
	 * @param tornOff the new tear off state
	 */
	void setTearoffState(bit tornOff)
	{
		gtk_menu_set_tearoff_state(gtkW(), tornOff);
	}
	
	/**
	 * Get tear off state
	 * @return true if ???
	 */
	bit getTearoffState()
	{
		return gtk_menu_get_tearoff_state(gtkW()) == 0 ? false : true;
	}
	
	/**
	 * Gets the menu title
	 * @return the menu title
	 */
	String getTitle()
	{
		return String.newz(gtk_menu_get_title(gtkW()));
	}
	
	/**
	 * Reset the position one menu item
	 * @param child
	 * @param position
	 */
	void reorderChild(Widget child, gint position)
	{
		gtk_menu_reorder_child(gtkW(), child.gtkW(), position);
	}
	
	/**
	 * Sets the screen for this menu
	 * @param screen
	 */
	void setScreen(Screen screen)
	{
		gtk_menu_set_screen(gtkW(), screen.gdkScreen());
	}

}
