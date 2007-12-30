/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkMenu.html
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
 * module aliases:
 * local aliases:
 */

module gtk.Menu;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.Widget;
private import gdk.Screen;
private import gtk.AccelGroup;
private import glib.ListG;
private import gtk.MenuItem;



private import gtk.MenuShell;

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
 * Example24.Connecting the popup signal handler.
 *  /+* connect our handler which will popup the menu +/
 *  g_signal_connect_swapped (window, "button_press_event",
 * 	G_CALLBACK (my_popup_handler), menu);
 * Example25.Signal handler which displays a popup menu.
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
		if(gtkMenu is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkMenu passed to constructor.");
			else return;
		}
		super(cast(GtkMenuShell*)gtkMenu);
		this.gtkMenu = gtkMenu;
	}
	
	/** */
	public void append(Widget widget)
	{
		super.append(widget);
	}
	
	/**
	 * Popups up this menu
	 * Params:
	 *  button = you can pass a button number here
	 *  activateTime = you can pass the time from an event here
	 */
	void popup(guint button, guint32 activateTime)
	{
		popup(null, null, null, null, button, activateTime);
	}
	
	/**
	 * Creates and append a submenu to this menu.
	 * This menu item that actualy has the sub menu is also created.
	 * Params:
	 *  label = the sub menu item label
	 * Returns: the new menu
	 */
	Menu appendSubmenu(char[] label)
	{
		MenuItem item = new MenuItem(label);
		append(item);
		Menu submenu = new Menu();
		item.setSubmenu(submenu);
		return submenu;
	}
	
	/** */
	void appendSubmenu(char[] label, Menu submenu)
	{
		MenuItem item = new MenuItem(label);
		append(item);
		item.setSubmenu(submenu);
	}
	
	/** */
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
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(GtkScrollType, Menu)[] onMoveScrollListeners;
	void addOnMoveScroll(void delegate(GtkScrollType, Menu) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-scroll" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-scroll",
			cast(GCallback)&callBackMoveScroll,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-scroll"] = 1;
		}
		onMoveScrollListeners ~= dlg;
	}
	extern(C) static void callBackMoveScroll(GtkMenu* menuStruct, GtkScrollType arg1, Menu menu)
	{
		bool consumed = false;
		
		foreach ( void delegate(GtkScrollType, Menu) dlg ; menu.onMoveScrollListeners )
		{
			dlg(arg1, menu);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkMenu.
	 */
	public this ()
	{
		// GtkWidget* gtk_menu_new (void);
		this(cast(GtkMenu*)gtk_menu_new() );
	}
	
	/**
	 * Sets the GdkScreen on which the menu will be displayed.
	 * Since 2.2
	 * Params:
	 * screen =  a GdkScreen, or NULL if the screen should be
	 *  determined by the widget the menu is attached to.
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_menu_set_screen (GtkMenu *menu,  GdkScreen *screen);
		gtk_menu_set_screen(gtkMenu, (screen is null) ? null : screen.getScreenStruct());
	}
	
	
	
	
	/**
	 * Moves a GtkMenuItem to a new position within the GtkMenu.
	 * Params:
	 * child = the GtkMenuItem to move.
	 * position = the new position to place child. Positions are numbered from
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
	 * Since 2.4
	 * Params:
	 * child =  a GtkMenuItem.
	 * leftAttach =  The column number to attach the left side of the item to.
	 * rightAttach =  The column number to attach the right side of the item to.
	 * topAttach =  The row number to attach the top of the item to.
	 * bottomAttach =  The row number to attach the bottom of the item to.
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
	 * The activate_time parameter is used to conflict-resolve initiation of
	 * concurrent requests for mouse/keyboard grab requests. To function
	 * properly, this needs to be the time stamp of the user event (such as
	 * a mouse click or key press) that caused the initiation of the popup.
	 * Only if no such event is available, gtk_get_current_event_time() can
	 * be used instead.
	 * Params:
	 * parentMenuShell =  the menu shell containing the triggering menu item, or NULL
	 * parentMenuItem =  the menu item whose activation triggered the popup, or NULL
	 * func =  a user supplied function used to position the menu, or NULL
	 * data =  user supplied data to be passed to func.
	 * button =  the mouse button which was pressed to initiate the event.
	 * activateTime =  the time at which the activation event occurred.
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
	 * Params:
	 * accelGroup = the GtkAccelGroup to be associated with the menu.
	 */
	public void setAccelGroup(AccelGroup accelGroup)
	{
		// void gtk_menu_set_accel_group (GtkMenu *menu,  GtkAccelGroup *accel_group);
		gtk_menu_set_accel_group(gtkMenu, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}
	
	/**
	 * Gets the GtkAccelGroup which holds global accelerators for the menu.
	 * See gtk_menu_set_accel_group().
	 * Returns:the GtkAccelGroup associated with the menu.
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
	 * Params:
	 * accelPath =  a valid accelerator path
	 */
	public void setAccelPath(char[] accelPath)
	{
		// void gtk_menu_set_accel_path (GtkMenu *menu,  const gchar *accel_path);
		gtk_menu_set_accel_path(gtkMenu, Str.toStringz(accelPath));
	}
	
	/**
	 * Sets the title string for the menu. The title is displayed when the menu
	 * is shown as a tearoff menu. If title is NULL, the menu will see if it is
	 * attached to a parent menu item, and if so it will try to use the same text as
	 * that menu item's label.
	 * Params:
	 * title =  a string containing the title for the menu.
	 */
	public void setTitle(char[] title)
	{
		// void gtk_menu_set_title (GtkMenu *menu,  const gchar *title);
		gtk_menu_set_title(gtkMenu, Str.toStringz(title));
	}
	
	/**
	 * Returns whether the menu is torn off. See
	 * gtk_menu_set_tearoff_state().
	 * Returns: TRUE if the menu is currently torn off.
	 */
	public int getTearoffState()
	{
		// gboolean gtk_menu_get_tearoff_state (GtkMenu *menu);
		return gtk_menu_get_tearoff_state(gtkMenu);
	}
	
	/**
	 * Returns the title of the menu. See gtk_menu_set_title().
	 * Returns: the title of the menu, or NULL if the menu has notitle set on it. This string is owned by the widget and shouldnot be modified or freed.
	 */
	public char[] getTitle()
	{
		// const gchar* gtk_menu_get_title (GtkMenu *menu);
		return Str.toString(gtk_menu_get_title(gtkMenu) );
	}
	
	/**
	 * Removes the menu from the screen.
	 */
	public void popdown()
	{
		// void gtk_menu_popdown (GtkMenu *menu);
		gtk_menu_popdown(gtkMenu);
	}
	
	/**
	 * Repositions the menu according to its position function.
	 */
	public void reposition()
	{
		// void gtk_menu_reposition (GtkMenu *menu);
		gtk_menu_reposition(gtkMenu);
	}
	
	/**
	 * Returns the selected menu item from the menu. This is used by the
	 * GtkOptionMenu.
	 * Returns:the GtkMenuItem that was last selected in the menu. If a selection has not yet been made, the first menu item is selected.
	 */
	public Widget getActive()
	{
		// GtkWidget* gtk_menu_get_active (GtkMenu *menu);
		return new Widget( gtk_menu_get_active(gtkMenu) );
	}
	
	/**
	 * Selects the specified menu item within the menu. This is used by the
	 * GtkOptionMenu and should not be used by anyone else.
	 * Params:
	 * index = the index of the menu item to select. Index values are from
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
	 * Params:
	 * tornOff = If TRUE, menu is displayed as a tearoff menu.
	 */
	public void setTearoffState(int tornOff)
	{
		// void gtk_menu_set_tearoff_state (GtkMenu *menu,  gboolean torn_off);
		gtk_menu_set_tearoff_state(gtkMenu, tornOff);
	}
	
	/**
	 * Attaches the menu to the widget and provides a callback function that will
	 * be invoked when the menu calls gtk_menu_detach() during its destruction.
	 * Params:
	 * attachWidget = the GtkWidget that the menu will be attached to.
	 * detacher = the user supplied callback function that will be called when
	 * the menu calls gtk_menu_detach().
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
	 */
	public void detach()
	{
		// void gtk_menu_detach (GtkMenu *menu);
		gtk_menu_detach(gtkMenu);
	}
	
	/**
	 * Returns the GtkWidget that the menu is attached to.
	 * Returns:the GtkWidget that the menu is attached to.
	 */
	public Widget getAttachWidget()
	{
		// GtkWidget* gtk_menu_get_attach_widget (GtkMenu *menu);
		return new Widget( gtk_menu_get_attach_widget(gtkMenu) );
	}
	
	/**
	 * Returns a list of the menus which are attached to this widget.
	 * This list is owned by GTK+ and must not be modified.
	 * Since 2.6
	 * Params:
	 * widget =  a GtkWidget
	 * Returns: the list of menus attached to his widget.
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
	 * Since 2.4
	 * Params:
	 * monitorNum =  the number of the monitor on which the menu should
	 *  be popped up
	 */
	public void setMonitor(int monitorNum)
	{
		// void gtk_menu_set_monitor (GtkMenu *menu,  gint monitor_num);
		gtk_menu_set_monitor(gtkMenu, monitorNum);
	}
	
	
	
	
	
	
	
	
}
