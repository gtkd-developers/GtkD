/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
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
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gio.MenuModel
 * 	- gdk.Device
 * 	- gdk.Screen
 * 	- gtk.AccelGroup
 * 	- gtk.MenuItem
 * 	- gtk.Widget
 * structWrap:
 * 	- GList* -> ListG
 * 	- GMenuModel* -> MenuModel
 * 	- GdkDevice* -> Device
 * 	- GdkScreen* -> Screen
 * 	- GtkAccelGroup* -> AccelGroup
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Menu;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListG;
private import gio.MenuModel;
private import gdk.Device;
private import gdk.Screen;
private import gtk.AccelGroup;
private import gtk.MenuItem;
private import gtk.Widget;



private import gtk.MenuShell;

/**
 * Description
 * A GtkMenu is a GtkMenuShell that implements a drop down menu
 * consisting of a list of GtkMenuItem objects which can be navigated
 * and activated by the user to perform application functions.
 * A GtkMenu is most commonly dropped down by activating a
 * GtkMenuItem in a GtkMenuBar or popped up by activating a
 * GtkMenuItem in another GtkMenu.
 * A GtkMenu can also be popped up by activating a GtkComboBox.
 * Other composite widgets such as the GtkNotebook can pop up a
 * GtkMenu as well.
 * Applications can display a GtkMenu as a popup menu by calling the
 * gtk_menu_popup() function. The example below shows how an application
 * can pop up a menu when the 3rd mouse button is pressed.
 * $(DDOC_COMMENT example)
 * $(DDOC_COMMENT example)
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
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkMenu = cast(GtkMenu*)obj;
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
	Menu appendSubmenu(string label)
	{
		MenuItem item = new MenuItem(label);
		append(item);
		Menu submenu = new Menu();
		item.setSubmenu(submenu);
		return submenu;
	}
	
	/** */
	void appendSubmenu(string label, Menu submenu)
	{
		MenuItem item = new MenuItem(label);
		append(item);
		item.setSubmenu(submenu);
	}
	
	/** */
	Menu prependSubmenu(string label)
	{
		MenuItem item = new MenuItem(label);
		prepend(item);
		Menu submenu = new Menu();
		item.setSubmenu(submenu);
		return submenu;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(GtkScrollType, Menu)[] onMoveScrollListeners;
	/**
	 */
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
	extern(C) static void callBackMoveScroll(GtkMenu* menuStruct, GtkScrollType scrollType, Menu _menu)
	{
		foreach ( void delegate(GtkScrollType, Menu) dlg ; _menu.onMoveScrollListeners )
		{
			dlg(scrollType, _menu);
		}
	}
	
	
	/**
	 * Creates a new GtkMenu
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_menu_new (void);
		auto p = gtk_menu_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_menu_new()");
		}
		this(cast(GtkMenu*) p);
	}
	
	/**
	 * Creates a GtkMenu and populates it with menu items and
	 * submenus according to model.
	 * The created menu items are connected to actions found in the
	 * GtkApplicationWindow to which the menu belongs - typically
	 * by means of being attached to a widget (see gtk_menu_attach_to_widget())
	 * that is contained within the GtkApplicationWindows widget hierarchy.
	 * Params:
	 * model = a GMenuModel
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (MenuModel model)
	{
		// GtkWidget * gtk_menu_new_from_model (GMenuModel *model);
		auto p = gtk_menu_new_from_model((model is null) ? null : model.getMenuModelStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_menu_new_from_model((model is null) ? null : model.getMenuModelStruct())");
		}
		this(cast(GtkMenu*) p);
	}
	
	/**
	 * Sets the GdkScreen on which the menu will be displayed.
	 * Since 2.2
	 * Params:
	 * screen = a GdkScreen, or NULL if the screen should be
	 * determined by the widget the menu is attached to. [allow-none]
	 */
	public void setScreen(Screen screen)
	{
		// void gtk_menu_set_screen (GtkMenu *menu,  GdkScreen *screen);
		gtk_menu_set_screen(gtkMenu, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Moves child to a new position in the list of menu
	 * children.
	 * Params:
	 * child = the GtkMenuItem to move
	 * position = the new position to place child.
	 * Positions are numbered from 0 to n - 1
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
	 * child = a GtkMenuItem
	 * leftAttach = The column number to attach the left side of the item to
	 * rightAttach = The column number to attach the right side of the item to
	 * topAttach = The row number to attach the top of the item to
	 * bottomAttach = The row number to attach the bottom of the item to
	 */
	public void attach(Widget child, uint leftAttach, uint rightAttach, uint topAttach, uint bottomAttach)
	{
		// void gtk_menu_attach (GtkMenu *menu,  GtkWidget *child,  guint left_attach,  guint right_attach,  guint top_attach,  guint bottom_attach);
		gtk_menu_attach(gtkMenu, (child is null) ? null : child.getWidgetStruct(), leftAttach, rightAttach, topAttach, bottomAttach);
	}
	
	/**
	 * Displays a menu and makes it available for selection.
	 * Applications can use this function to display context-sensitive menus,
	 * and will typically supply NULL for the parent_menu_shell,
	 * parent_menu_item, func, data and destroy parameters. The default
	 * menu positioning function will position the menu at the current position
	 * of device (or its corresponding pointer).
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
	 * device = a GdkDevice. [allow-none]
	 * parentMenuShell = the menu shell containing the triggering
	 * menu item, or NULL. [allow-none]
	 * parentMenuItem = the menu item whose activation triggered
	 * the popup, or NULL. [allow-none]
	 * func = a user supplied function used to position the menu,
	 * or NULL. [allow-none]
	 * data = user supplied data to be passed to func. [allow-none]
	 * destroy = destroy notify for data. [allow-none]
	 * button = the mouse button which was pressed to initiate the event
	 * activateTime = the time at which the activation event occurred
	 * Since 3.0
	 */
	public void popupForDevice(Device device, Widget parentMenuShell, Widget parentMenuItem, GtkMenuPositionFunc func, void* data, GDestroyNotify destroy, uint button, uint activateTime)
	{
		// void gtk_menu_popup_for_device (GtkMenu *menu,  GdkDevice *device,  GtkWidget *parent_menu_shell,  GtkWidget *parent_menu_item,  GtkMenuPositionFunc func,  gpointer data,  GDestroyNotify destroy,  guint button,  guint32 activate_time);
		gtk_menu_popup_for_device(gtkMenu, (device is null) ? null : device.getDeviceStruct(), (parentMenuShell is null) ? null : parentMenuShell.getWidgetStruct(), (parentMenuItem is null) ? null : parentMenuItem.getWidgetStruct(), func, data, destroy, button, activateTime);
	}
	
	/**
	 * Displays a menu and makes it available for selection.
	 * Applications can use this function to display context-sensitive
	 * menus, and will typically supply NULL for the parent_menu_shell,
	 * parent_menu_item, func and data parameters. The default menu
	 * positioning function will position the menu at the current mouse
	 * cursor position.
	 * The button parameter should be the mouse button pressed to initiate
	 * the menu popup. If the menu popup was initiated by something other
	 * than a mouse button press, such as a mouse button release or a keypress,
	 * button should be 0.
	 * The activate_time parameter is used to conflict-resolve initiation
	 * of concurrent requests for mouse/keyboard grab requests. To function
	 * properly, this needs to be the timestamp of the user event (such as
	 * a mouse click or key press) that caused the initiation of the popup.
	 * Only if no such event is available, gtk_get_current_event_time() can
	 * be used instead.
	 * Params:
	 * parentMenuShell = the menu shell containing the
	 * triggering menu item, or NULL. [allow-none]
	 * parentMenuItem = the menu item whose activation
	 * triggered the popup, or NULL. [allow-none]
	 * func = a user supplied function used to position
	 * the menu, or NULL. [scope async][allow-none]
	 * data = user supplied data to be passed to func.
	 * button = the mouse button which was pressed to initiate the event.
	 * activateTime = the time at which the activation event occurred.
	 */
	public void popup(Widget parentMenuShell, Widget parentMenuItem, GtkMenuPositionFunc func, void* data, uint button, uint activateTime)
	{
		// void gtk_menu_popup (GtkMenu *menu,  GtkWidget *parent_menu_shell,  GtkWidget *parent_menu_item,  GtkMenuPositionFunc func,  gpointer data,  guint button,  guint32 activate_time);
		gtk_menu_popup(gtkMenu, (parentMenuShell is null) ? null : parentMenuShell.getWidgetStruct(), (parentMenuItem is null) ? null : parentMenuItem.getWidgetStruct(), func, data, button, activateTime);
	}
	
	/**
	 * Set the GtkAccelGroup which holds global accelerators for the
	 * menu. This accelerator group needs to also be added to all windows
	 * that this menu is being used in with gtk_window_add_accel_group(),
	 * in order for those windows to support all the accelerators
	 * contained in this group.
	 * Params:
	 * accelGroup = the GtkAccelGroup to be associated
	 * with the menu. [allow-none]
	 */
	public void setAccelGroup(AccelGroup accelGroup)
	{
		// void gtk_menu_set_accel_group (GtkMenu *menu,  GtkAccelGroup *accel_group);
		gtk_menu_set_accel_group(gtkMenu, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
	}
	
	/**
	 * Gets the GtkAccelGroup which holds global accelerators for the
	 * menu. See gtk_menu_set_accel_group().
	 * Returns: the GtkAccelGroup associated with the menu. [transfer none]
	 */
	public AccelGroup getAccelGroup()
	{
		// GtkAccelGroup * gtk_menu_get_accel_group (GtkMenu *menu);
		auto p = gtk_menu_get_accel_group(gtkMenu);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(AccelGroup)(cast(GtkAccelGroup*) p);
	}
	
	/**
	 * Sets an accelerator path for this menu from which accelerator paths
	 * for its immediate children, its menu items, can be constructed.
	 * The main purpose of this function is to spare the programmer the
	 * inconvenience of having to call gtk_menu_item_set_accel_path() on
	 * each menu item that should support runtime user changable accelerators.
	 * Instead, by just calling gtk_menu_set_accel_path() on their parent,
	 * each menu item of this menu, that contains a label describing its
	 * purpose, automatically gets an accel path assigned.
	 * For example, a menu containing menu items "New" and "Exit", will, after
	 * gtk_menu_set_accel_path (menu, "<Gnumeric-Sheet>/File");
	 * Params:
	 * accelPath = a valid accelerator path. [allow-none]
	 */
	public void setAccelPath(string accelPath)
	{
		// void gtk_menu_set_accel_path (GtkMenu *menu,  const gchar *accel_path);
		gtk_menu_set_accel_path(gtkMenu, Str.toStringz(accelPath));
	}
	
	/**
	 * Retrieves the accelerator path set on the menu.
	 * Since 2.14
	 * Returns: the accelerator path set on the menu.
	 */
	public string getAccelPath()
	{
		// const gchar * gtk_menu_get_accel_path (GtkMenu *menu);
		return Str.toString(gtk_menu_get_accel_path(gtkMenu));
	}
	
	/**
	 * Sets the title string for the menu.
	 * The title is displayed when the menu is shown as a tearoff
	 * menu. If title is NULL, the menu will see if it is attached
	 * to a parent menu item, and if so it will try to use the same
	 * text as that menu item's label.
	 * Params:
	 * title = a string containing the title for the menu
	 */
	public void setTitle(string title)
	{
		// void gtk_menu_set_title (GtkMenu *menu,  const gchar *title);
		gtk_menu_set_title(gtkMenu, Str.toStringz(title));
	}
	
	/**
	 * Returns the title of the menu. See gtk_menu_set_title().
	 * Returns: the title of the menu, or NULL if the menu has no title set on it. This string is owned by GTK+ and should not be modified or freed.
	 */
	public string getTitle()
	{
		// const gchar * gtk_menu_get_title (GtkMenu *menu);
		return Str.toString(gtk_menu_get_title(gtkMenu));
	}
	
	/**
	 * Informs GTK+ on which monitor a menu should be popped up.
	 * See gdk_screen_get_monitor_geometry().
	 * This function should be called from a GtkMenuPositionFunc
	 * if the menu should not appear on the same monitor as the pointer.
	 * This information can't be reliably inferred from the coordinates
	 * returned by a GtkMenuPositionFunc, since, for very long menus,
	 * these coordinates may extend beyond the monitor boundaries or even
	 * the screen boundaries.
	 * Since 2.4
	 * Params:
	 * monitorNum = the number of the monitor on which the menu should
	 * be popped up
	 */
	public void setMonitor(int monitorNum)
	{
		// void gtk_menu_set_monitor (GtkMenu *menu,  gint monitor_num);
		gtk_menu_set_monitor(gtkMenu, monitorNum);
	}
	
	/**
	 * Retrieves the number of the monitor on which to show the menu.
	 * Since 2.14
	 * Returns: the number of the monitor on which the menu should be popped up or -1, if no monitor has been set
	 */
	public int getMonitor()
	{
		// gint gtk_menu_get_monitor (GtkMenu *menu);
		return gtk_menu_get_monitor(gtkMenu);
	}
	
	/**
	 * Returns whether the menu is torn off.
	 * See gtk_menu_set_tearoff_state().
	 * Returns: TRUE if the menu is currently torn off.
	 */
	public int getTearoffState()
	{
		// gboolean gtk_menu_get_tearoff_state (GtkMenu *menu);
		return gtk_menu_get_tearoff_state(gtkMenu);
	}
	
	/**
	 * Sets whether the menu should reserve space for drawing toggles
	 * or icons, regardless of their actual presence.
	 * Since 2.18
	 * Params:
	 * reserveToggleSize = whether to reserve size for toggles
	 */
	public void setReserveToggleSize(int reserveToggleSize)
	{
		// void gtk_menu_set_reserve_toggle_size (GtkMenu *menu,  gboolean reserve_toggle_size);
		gtk_menu_set_reserve_toggle_size(gtkMenu, reserveToggleSize);
	}
	
	/**
	 * Returns whether the menu reserves space for toggles and
	 * icons, regardless of their actual presence.
	 * Since 2.18
	 * Returns: Whether the menu reserves toggle space
	 */
	public int getReserveToggleSize()
	{
		// gboolean gtk_menu_get_reserve_toggle_size (GtkMenu *menu);
		return gtk_menu_get_reserve_toggle_size(gtkMenu);
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
	 * GtkComboBox.
	 * Returns: the GtkMenuItem that was last selected in the menu. If a selection has not yet been made, the first menu item is selected. [transfer none]
	 */
	public Widget getActive()
	{
		// GtkWidget * gtk_menu_get_active (GtkMenu *menu);
		auto p = gtk_menu_get_active(gtkMenu);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Selects the specified menu item within the menu. This is used by
	 * the GtkComboBox and should not be used by anyone else.
	 * Params:
	 * index = the index of the menu item to select. Iindex values are
	 * from 0 to n-1
	 */
	public void setActive(uint index)
	{
		// void gtk_menu_set_active (GtkMenu *menu,  guint index);
		gtk_menu_set_active(gtkMenu, index);
	}
	
	/**
	 * Changes the tearoff state of the menu. A menu is normally
	 * displayed as drop down menu which persists as long as the menu is
	 * active. It can also be displayed as a tearoff menu which persists
	 * until it is closed or reattached.
	 * Params:
	 * tornOff = If TRUE, menu is displayed as a tearoff menu.
	 */
	public void setTearoffState(int tornOff)
	{
		// void gtk_menu_set_tearoff_state (GtkMenu *menu,  gboolean torn_off);
		gtk_menu_set_tearoff_state(gtkMenu, tornOff);
	}
	
	/**
	 * Attaches the menu to the widget and provides a callback function
	 * that will be invoked when the menu calls gtk_menu_detach() during
	 * its destruction.
	 * Params:
	 * attachWidget = the GtkWidget that the menu will be attached to
	 * detacher = the user supplied callback function
	 * that will be called when the menu calls gtk_menu_detach(). [scope async][allow-none]
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
	 * Returns: the GtkWidget that the menu is attached to. [transfer none]
	 */
	public Widget getAttachWidget()
	{
		// GtkWidget * gtk_menu_get_attach_widget (GtkMenu *menu);
		auto p = gtk_menu_get_attach_widget(gtkMenu);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Returns a list of the menus which are attached to this widget.
	 * This list is owned by GTK+ and must not be modified.
	 * Since 2.6
	 * Params:
	 * widget = a GtkWidget
	 * Returns: the list of menus attached to his widget. [element-type GtkWidget][transfer none]
	 */
	public static ListG getForAttachWidget(Widget widget)
	{
		// GList * gtk_menu_get_for_attach_widget (GtkWidget *widget);
		auto p = gtk_menu_get_for_attach_widget((widget is null) ? null : widget.getWidgetStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
}
