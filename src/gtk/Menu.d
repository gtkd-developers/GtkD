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
 * outFile = Menu
 * strct   = GtkMenu
 * realStrct=
 * ctorStrct=
 * clss    = Menu
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_menu_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- gdk.Screen
 * 	- gtk.AccelGroup
 * 	- glib.ListG
 * 	- gtk.MenuItem
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkScreen* -> Screen
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.Menu;

private import gtk.typedefs;

private import lib.gtk;

private import glib.Str;
private import gtk.Widget;
private import gdk.Screen;
private import gtk.AccelGroup;
private import glib.ListG;
private import gtk.MenuItem;

/**
 * Description
 * A GtkMenu is a GtkMenuShell that implements a drop down menu consisting of
 * a list of GtkMenuItem objects which can be navigated and activated by the
 * user to perform application functions.
 * A GtkMenu is most commonly dropped down by activating a GtkMenuItem in a
 * GtkMenuBar or popped up by activating a GtkMenuItem in another GtkMenu.
 * A GtkMenu can also be popped up by activating a GtkOptionMenu.
 * Other composite widgets such as the GtkNotebook can pop up a GtkMenu
 * as well.
 * Applications can display a GtkMenu as a popup menu by calling the
 * gtk_menu_popup() function. The example below shows how an application
 * can pop up a menu when the 3rd mouse button is pressed.
 * Example1.Connecting the popup signal handler.
 *  /+* connect our handler which will popup the menu +/
 *  g_signal_connect_swapped (window, "button_press_event",
 * 	G_CALLBACK (my_popup_handler), menu);
 * Example2.Signal handler which displays a popup menu.
 * static gint
 * my_popup_handler (GtkWidget *widget, GdkEvent *event)
 * {
	 *  GtkMenu *menu;
	 *  GdkEventButton *event_button;
	 *  g_return_val_if_fail (widget != NULL, FALSE);
	 *  g_return_val_if_fail (GTK_IS_MENU (widget), FALSE);
	 *  g_return_val_if_fail (event != NULL, FALSE);
	 *  /+* The "widget" is the menu that was supplied when
	 *  * g_signal_connect_swapped() was called.
	 *  +/
	 *  menu = GTK_MENU (widget);
	 *  if (event->type == GDK_BUTTON_PRESS)
	 *  {
		 *  event_button = (GdkEventButton *) event;
		 *  if (event_button->button == 3)
		 * 	{
			 * 	 gtk_menu_popup (menu, NULL, NULL, NULL, NULL,
			 * 			 event_button->button, event_button->time);
			 * 	 return TRUE;
		 * 	}
	 *  }
	 *  return FALSE;
 * }
 */
private import gtk.MenuShell;
public class Menu : MenuShell
{
	
	/** the main Gtk struct */
	protected GtkMenu* gtkMenu;
	
	
	public GtkMenu* getMenuStruct()
	{
		return gtkMenu;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkMenu;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkMenu* gtkMenu)
	{
		super(cast(GtkMenuShell*)gtkMenu);
		this.gtkMenu = gtkMenu;
	}
	
	public void append(Widget widget)
	{
		super.append(widget);
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
	 * Creates and append a submenu to this menu.
	 * This menu item that actualy has the sub menu is also created.
	 * @param label the sub menu item label
	 * @return the new menu
	 */
	Menu appendSubmenu(char[] label)
	{
		MenuItem item = new MenuItem(label);
		append(item);
		Menu submenu = new Menu();
		item.setSubmenu(submenu);
		return submenu;
	}
	
	void appendSubmenu(char[] label, Menu submenu)
	{
		MenuItem item = new MenuItem(label);
		append(item);
		item.setSubmenu(submenu);
	}
	
	Menu prependSubmenu(char[] label)
	{
		MenuItem item = new MenuItem(label);
		prepend(item);
		Menu submenu = new Menu();
		item.setSubmenu(submenu);
		return submenu;
	}
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(GtkScrollType, Menu)[] onMoveScrollListeners;
	void addOnMoveScroll(void delegate(GtkScrollType, Menu) dlg)
	{
		if ( !("move-scroll" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-scroll",
			cast(GCallback)&callBackMoveScroll,
			this,
			null,
			0);
			connectedSignals["move-scroll"] = 1;
		}
		onMoveScrollListeners ~= dlg;
	}
	extern(C) static void callBackMoveScroll(GtkMenu* menuStruct, GtkScrollType arg1, Menu menu)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkScrollType, Menu) dlg ; menu.onMoveScrollListeners )
		{
			dlg(arg1, menu);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkMenu.
	 * Returns:
	 * a new GtkMenu.
	 */
	public this ()
	{
		// GtkWidget* gtk_menu_new (void);
		this(cast(GtkMenu*)gtk_menu_new() );
	}
	
	/**
	 * Sets the GdkScreen on which the menu will be displayed.
	 * menu:
	 *  a GtkMenu.
	 * screen:
	 *  a GdkScreen, or NULL if the screen should be
	 *  determined by the widget the menu is attached to.
	 * Since 2.2
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_menu_set_screen (GtkMenu *menu,  GdkScreen *screen);
		gtk_menu_set_screen(gtkMenu, (screen is null) ? null : screen.getScreenStruct());
	}
	
	
	
	
	/**
	 * Moves a GtkMenuItem to a new position within the GtkMenu.
	 * menu:
	 * a GtkMenu.
	 * child:
	 * the GtkMenuItem to move.
	 * position:
	 * the new position to place child. Positions are numbered from
	 * 0 to n-1.
	 */
	public void reorderChild(Widget child, int position)
	{
		// void gtk_menu_reorder_child (GtkMenu *menu,  GtkWidget *child,  gint position);
		gtk_menu_reorder_child(gtkMenu, (child is null) ? null : child.getWidgetStruct(), position);
	}
	
	/**
	 * Adds a new GtkMenuItem to a (table) menu. The number of 'cells' that
	 * an item will occupy is specified by left_attach, right_attach,
	 * top_attach and bottom_attach. These each represent the leftmost,
	 * rightmost, uppermost and lower column and row numbers of the table.
	 * (Columns and rows are indexed from zero).
	 * Note that this function is not related to gtk_menu_detach().
	 * menu:
	 *  a GtkMenu.
	 * child:
	 *  a GtkMenuItem.
	 * left_attach:
	 *  The column number to attach the left side of the item to.
	 * right_attach:
	 *  The column number to attach the right side of the item to.
	 * top_attach:
	 *  The row number to attach the top of the item to.
	 * bottom_attach:
	 *  The row number to attach the bottom of the item to.
	 * Since 2.4
	 */
	public void attach(Widget child, uint leftAttach, uint rightAttach, uint topAttach, uint bottomAttach)
	{
		// void gtk_menu_attach (GtkMenu *menu,  GtkWidget *child,  guint left_attach,  guint right_attach,  guint top_attach,  guint bottom_attach);
		gtk_menu_attach(gtkMenu, (child is null) ? null : child.getWidgetStruct(), leftAttach, rightAttach, topAttach, bottomAttach);
	}
	
	/**
	 * Displays a menu and makes it available for selection. Applications can use
	 * this function to display context-sensitive menus, and will typically supply
	 * NULL for the parent_menu_shell, parent_menu_item, func and data
	 * parameters. The default menu positioning function will position the menu
	 * at the current mouse cursor position.
	 * The button parameter should be the mouse button pressed to initiate
	 * the menu popup. If the menu popup was initiated by something other than
	 * a mouse button press, such as a mouse button release or a keypress,
	 * button should be 0.
	 * The activate_time parameter should be the time stamp of the event that
	 * initiated the popup. If such an event is not available, use
	 * gtk_get_current_event_time() instead.
	 * menu:
	 *  a GtkMenu.
	 * parent_menu_shell:
	 *  the menu shell containing the triggering menu item, or NULL
	 * parent_menu_item:
	 *  the menu item whose activation triggered the popup, or NULL
	 * func:
	 *  a user supplied function used to position the menu, or NULL
	 * data:
	 *  user supplied data to be passed to func.
	 * button:
	 *  the mouse button which was pressed to initiate the event.
	 * activate_time:
	 *  the time at which the activation event occurred.
	 */
	public void popup(Widget parentMenuShell, Widget parentMenuItem, GtkMenuPositionFunc func, void* data, uint button, uint activateTime)
	{
		// void gtk_menu_popup (GtkMenu *menu,  GtkWidget *parent_menu_shell,  GtkWidget *parent_menu_item,  GtkMenuPositionFunc func,  gpointer data,  guint button,  guint32 activate_time);
		gtk_menu_popup(gtkMenu, (parentMenuShell is null) ? null : parentMenuShell.getWidgetStruct(), (parentMenuItem is null) ? null : parentMenuItem.getWidgetStruct(), func, data, button, activateTime);
	}
	
	/**
	 * Set the GtkAccelGroup which holds global accelerators for the menu.
	 * This accelerator group needs to also be added to all windows that
	 * this menu is being used in with gtk_window_add_accel_group(), in order
	 * for those windows to support all the accelerators contained in this group.
	 * menu:
	 * a GtkMenu.
	 * accel_group:
	 * the GtkAccelGroup to be associated with the menu.
	 */
	public void setAccelGroup(AccelGroup accelGroup)
	{
		// void gtk_menu_set_accel_group (GtkMenu *menu,  GtkAccelGroup *accel_group);
		gtk_menu_set_accel_group(gtkMenu, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}
	
	/**
	 * Gets the GtkAccelGroup which holds global accelerators for the menu.
	 * See gtk_menu_set_accel_group().
	 * menu:
	 * a GtkMenu.
	 * Returns:
	 * the GtkAccelGroup associated with the menu.
	 */
	public AccelGroup getAccelGroup()
	{
		// GtkAccelGroup* gtk_menu_get_accel_group (GtkMenu *menu);
		return new AccelGroup( gtk_menu_get_accel_group(gtkMenu) );
	}
	
	/**
	 * Sets an accelerator path for this menu from which accelerator paths
	 * for its immediate children, its menu items, can be constructed.
	 * The main purpose of this function is to spare the programmer the
	 * inconvenience of having to call gtk_menu_item_set_accel_path() on
	 * each menu item that should support runtime user changable accelerators.
	 * Instead, by just calling gtk_menu_set_accel_path() on their parent,
	 * each menu item of this menu, that contains a label describing its purpose,
	 * automatically gets an accel path assigned. For example, a menu containing
	 * menu items "New" and "Exit", will, after
	 * gtk_menu_set_accel_path (menu, "<Gnumeric-Sheet>/File");
	 * has been called, assign its items the accel paths:
	 * "<Gnumeric-Sheet>/File/New" and "<Gnumeric-Sheet>/File/Exit".
	 * Assigning accel paths to menu items then enables the user to change
	 * their accelerators at runtime. More details about accelerator paths
	 * and their default setups can be found at gtk_accel_map_add_entry().
	 * menu:
	 *  a valid GtkMenu
	 * accel_path:
	 *  a valid accelerator path
	 */
	public void setAccelPath(char[] accelPath)
	{
		// void gtk_menu_set_accel_path (GtkMenu *menu,  const gchar *accel_path);
		gtk_menu_set_accel_path(gtkMenu, Str.toStringz(accelPath));
	}
	
	/**
	 * Sets the title string for the menu. The title is displayed when the menu
	 * is shown as a tearoff menu.
	 * menu:
	 *  a GtkMenu
	 * title:
	 *  a string containing the title for the menu.
	 */
	public void setTitle(char[] title)
	{
		// void gtk_menu_set_title (GtkMenu *menu,  const gchar *title);
		gtk_menu_set_title(gtkMenu, Str.toStringz(title));
	}
	
	/**
	 * Returns whether the menu is torn off. See
	 * gtk_menu_set_tearoff_state().
	 * menu:
	 *  a GtkMenu
	 * Returns:
	 *  TRUE if the menu is currently torn off.
	 */
	public int getTearoffState()
	{
		// gboolean gtk_menu_get_tearoff_state (GtkMenu *menu);
		return gtk_menu_get_tearoff_state(gtkMenu);
	}
	
	/**
	 * Returns the title of the menu. See gtk_menu_set_title().
	 * menu:
	 *  a GtkMenu
	 * Returns:
	 *  the title of the menu, or NULL if the menu has no
	 * title set on it. This string is owned by the widget and should
	 * not be modified or freed.
	 */
	public char[] getTitle()
	{
		// const gchar* gtk_menu_get_title (GtkMenu *menu);
		return Str.toString(gtk_menu_get_title(gtkMenu) );
	}
	
	/**
	 * Removes the menu from the screen.
	 * menu:
	 * a GtkMenu.
	 */
	public void popdown()
	{
		// void gtk_menu_popdown (GtkMenu *menu);
		gtk_menu_popdown(gtkMenu);
	}
	
	/**
	 * Repositions the menu according to its position function.
	 * menu:
	 * a GtkMenu.
	 */
	public void reposition()
	{
		// void gtk_menu_reposition (GtkMenu *menu);
		gtk_menu_reposition(gtkMenu);
	}
	
	/**
	 * Returns the selected menu item from the menu. This is used by the
	 * GtkOptionMenu.
	 * menu:
	 * a GtkMenu.
	 * Returns:
	 * the GtkMenuItem that was last selected in the menu. If a
	 * selection has not yet been made, the first menu item is selected.
	 */
	public Widget getActive()
	{
		// GtkWidget* gtk_menu_get_active (GtkMenu *menu);
		return new Widget( gtk_menu_get_active(gtkMenu) );
	}
	
	/**
	 * Selects the specified menu item within the menu. This is used by the
	 * GtkOptionMenu and should not be used by anyone else.
	 * menu:
	 * a GtkMenu.
	 * index_:
	 * the index of the menu item to select. Index values are from
	 * 0 to n-1.
	 */
	public void setActive(uint index)
	{
		// void gtk_menu_set_active (GtkMenu *menu,  guint index_);
		gtk_menu_set_active(gtkMenu, index);
	}
	
	/**
	 * Changes the tearoff state of the menu. A menu is normally displayed
	 * as drop down menu which persists as long as the menu is active. It can
	 * also be displayed as a tearoff menu which persists until it is closed
	 * or reattached.
	 * menu:
	 * a GtkMenu.
	 * torn_off:
	 * If TRUE, menu is displayed as a tearoff menu.
	 */
	public void setTearoffState(int tornOff)
	{
		// void gtk_menu_set_tearoff_state (GtkMenu *menu,  gboolean torn_off);
		gtk_menu_set_tearoff_state(gtkMenu, tornOff);
	}
	
	/**
	 * Attaches the menu to the widget and provides a callback function that will
	 * be invoked when the menu calls gtk_menu_detach() during its destruction.
	 * menu:
	 * a GtkMenu.
	 * attach_widget:
	 * the GtkWidget that the menu will be attached to.
	 * detacher:
	 * the user supplied callback function that will be called when
	 * the menu calls gtk_menu_detach(), or NULL
	 */
	public void attachToWidget(Widget attachWidget, GtkMenuDetachFunc detacher)
	{
		// void gtk_menu_attach_to_widget (GtkMenu *menu,  GtkWidget *attach_widget,  GtkMenuDetachFunc detacher);
		gtk_menu_attach_to_widget(gtkMenu, (attachWidget is null) ? null : attachWidget.getWidgetStruct(), detacher);
	}
	
	/**
	 * Detaches the menu from the widget to which it had been attached.
	 * This function will call the callback function, detacher, provided
	 * when the gtk_menu_attach_to_widget() function was called.
	 * menu:
	 * a GtkMenu.
	 */
	public void detach()
	{
		// void gtk_menu_detach (GtkMenu *menu);
		gtk_menu_detach(gtkMenu);
	}
	
	/**
	 * Returns the GtkWidget that the menu is attached to.
	 * menu:
	 * a GtkMenu.
	 * Returns:
	 * the GtkWidget that the menu is attached to.
	 */
	public Widget getAttachWidget()
	{
		// GtkWidget* gtk_menu_get_attach_widget (GtkMenu *menu);
		return new Widget( gtk_menu_get_attach_widget(gtkMenu) );
	}
	
	/**
	 * widget:
	 *  a GtkWidget
	 * * Returns a list of the menus which are attached to this widget.
	 * This list is owned by GTK+ and must not be modified.
	 * Returns:
	 *  the list of menus attached to his widget.
	 * Since 2.6
	 */
	public static ListG getForAttachWidget(Widget widget)
	{
		// GList* gtk_menu_get_for_attach_widget (GtkWidget *widget);
		return new ListG( gtk_menu_get_for_attach_widget((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
	
	
	/**
	 * Informs GTK+ on which monitor a menu should be popped up.
	 * See gdk_screen_get_monitor_geometry().
	 * This function should be called from a GtkMenuPositionFunc if the
	 * menu should not appear on the same monitor as the pointer. This
	 * information can't be reliably inferred from the coordinates returned
	 * by a GtkMenuPositionFunc, since, for very long menus, these coordinates
	 * may extend beyond the monitor boundaries or even the screen boundaries.
	 * menu:
	 *  a GtkMenu
	 * monitor_num:
	 *  the number of the monitor on which the menu should
	 *  be popped up
	 * Since 2.4
	 * Property Details
	 * The "tearoff-state" property
	 *  "tearoff-state" gboolean : Read / Write
	 * A boolean that indicates whether the menu is torn-off.
	 * Default value: FALSE
	 * Since 2.6
	 */
	public void setMonitor(int monitorNum)
	{
		// void gtk_menu_set_monitor (GtkMenu *menu,  gint monitor_num);
		gtk_menu_set_monitor(gtkMenu, monitorNum);
	}
	
	
	
	
	
	
}
