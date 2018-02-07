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


module gtk.Menu;

private import gdk.Device;
private import gdk.Event;
private import gdk.MonitorG;
private import gdk.Screen;
private import gdk.Window;
private import gio.MenuModel;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.AccelGroup;
private import gtk.MenuItem;
private import gtk.MenuShell;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkMenu is a #GtkMenuShell that implements a drop down menu
 * consisting of a list of #GtkMenuItem objects which can be navigated
 * and activated by the user to perform application functions.
 * 
 * A #GtkMenu is most commonly dropped down by activating a
 * #GtkMenuItem in a #GtkMenuBar or popped up by activating a
 * #GtkMenuItem in another #GtkMenu.
 * 
 * A #GtkMenu can also be popped up by activating a #GtkComboBox.
 * Other composite widgets such as the #GtkNotebook can pop up a
 * #GtkMenu as well.
 * 
 * Applications can display a #GtkMenu as a popup menu by calling the
 * gtk_menu_popup() function.  The example below shows how an application
 * can pop up a menu when the 3rd mouse button is pressed.
 * 
 * ## Connecting the popup signal handler.
 * 
 * |[<!-- language="C" -->
 * // connect our handler which will popup the menu
 * g_signal_connect_swapped (window, "button_press_event",
 * G_CALLBACK (my_popup_handler), menu);
 * ]|
 * 
 * ## Signal handler which displays a popup menu.
 * 
 * |[<!-- language="C" -->
 * static gint
 * my_popup_handler (GtkWidget *widget, GdkEvent *event)
 * {
 * GtkMenu *menu;
 * GdkEventButton *event_button;
 * 
 * g_return_val_if_fail (widget != NULL, FALSE);
 * g_return_val_if_fail (GTK_IS_MENU (widget), FALSE);
 * g_return_val_if_fail (event != NULL, FALSE);
 * 
 * // The "widget" is the menu that was supplied when
 * // g_signal_connect_swapped() was called.
 * menu = GTK_MENU (widget);
 * 
 * if (event->type == GDK_BUTTON_PRESS)
 * {
 * event_button = (GdkEventButton *) event;
 * if (event_button->button == GDK_BUTTON_SECONDARY)
 * {
 * gtk_menu_popup (menu, NULL, NULL, NULL, NULL,
 * event_button->button, event_button->time);
 * return TRUE;
 * }
 * }
 * 
 * return FALSE;
 * }
 * ]|
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * menu
 * ├── arrow.top
 * ├── <child>
 * ┊
 * ├── <child>
 * ╰── arrow.bottom
 * ]|
 * 
 * The main CSS node of GtkMenu has name menu, and there are two subnodes
 * with name arrow, for scrolling menu arrows. These subnodes get the
 * .top and .bottom style classes.
 */
public class Menu : MenuShell
{
	/** the main Gtk struct */
	protected GtkMenu* gtkMenu;

	/** Get the main Gtk struct */
	public GtkMenu* getMenuStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMenu;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMenu;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMenu* gtkMenu, bool ownedRef = false)
	{
		this.gtkMenu = gtkMenu;
		super(cast(GtkMenuShell*)gtkMenu, ownedRef);
	}

	/**
	 * Popups up this menu
	 * Params:
	 *  button = you can pass a button number here
	 *  activateTime = you can pass the time from an event here
	 */
	void popup(uint button, uint activateTime)
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

	/** */
	public static GType getType()
	{
		return gtk_menu_get_type();
	}

	/**
	 * Creates a new #GtkMenu
	 *
	 * Returns: a new #GtkMenu
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_menu_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMenu*) p);
	}

	/**
	 * Creates a #GtkMenu and populates it with menu items and
	 * submenus according to @model.
	 *
	 * The created menu items are connected to actions found in the
	 * #GtkApplicationWindow to which the menu belongs - typically
	 * by means of being attached to a widget (see gtk_menu_attach_to_widget())
	 * that is contained within the #GtkApplicationWindows widget hierarchy.
	 *
	 * Actions can also be added using gtk_widget_insert_action_group() on the menu's
	 * attach widget or on any of its parent widgets.
	 *
	 * Params:
	 *     model = a #GMenuModel
	 *
	 * Returns: a new #GtkMenu
	 *
	 * Since: 3.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(MenuModel model)
	{
		auto p = gtk_menu_new_from_model((model is null) ? null : model.getMenuModelStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_model");
		}

		this(cast(GtkMenu*) p);
	}

	/**
	 * Returns a list of the menus which are attached to this widget.
	 * This list is owned by GTK+ and must not be modified.
	 *
	 * Params:
	 *     widget = a #GtkWidget
	 *
	 * Returns: the list
	 *     of menus attached to his widget.
	 *
	 * Since: 2.6
	 */
	public static ListG getForAttachWidget(Widget widget)
	{
		auto p = gtk_menu_get_for_attach_widget((widget is null) ? null : widget.getWidgetStruct());

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Adds a new #GtkMenuItem to a (table) menu. The number of “cells” that
	 * an item will occupy is specified by @left_attach, @right_attach,
	 * @top_attach and @bottom_attach. These each represent the leftmost,
	 * rightmost, uppermost and lower column and row numbers of the table.
	 * (Columns and rows are indexed from zero).
	 *
	 * Note that this function is not related to gtk_menu_detach().
	 *
	 * Params:
	 *     child = a #GtkMenuItem
	 *     leftAttach = The column number to attach the left side of the item to
	 *     rightAttach = The column number to attach the right side of the item to
	 *     topAttach = The row number to attach the top of the item to
	 *     bottomAttach = The row number to attach the bottom of the item to
	 *
	 * Since: 2.4
	 */
	public void attach(Widget child, uint leftAttach, uint rightAttach, uint topAttach, uint bottomAttach)
	{
		gtk_menu_attach(gtkMenu, (child is null) ? null : child.getWidgetStruct(), leftAttach, rightAttach, topAttach, bottomAttach);
	}

	/**
	 * Attaches the menu to the widget and provides a callback function
	 * that will be invoked when the menu calls gtk_menu_detach() during
	 * its destruction.
	 *
	 * If the menu is attached to the widget then it will be destroyed
	 * when the widget is destroyed, as if it was a child widget.
	 * An attached menu will also move between screens correctly if the
	 * widgets moves between screens.
	 *
	 * Params:
	 *     attachWidget = the #GtkWidget that the menu will be attached to
	 *     detacher = the user supplied callback function
	 *         that will be called when the menu calls gtk_menu_detach()
	 */
	public void attachToWidget(Widget attachWidget, GtkMenuDetachFunc detacher)
	{
		gtk_menu_attach_to_widget(gtkMenu, (attachWidget is null) ? null : attachWidget.getWidgetStruct(), detacher);
	}

	/**
	 * Detaches the menu from the widget to which it had been attached.
	 * This function will call the callback function, @detacher, provided
	 * when the gtk_menu_attach_to_widget() function was called.
	 */
	public void detach()
	{
		gtk_menu_detach(gtkMenu);
	}

	/**
	 * Gets the #GtkAccelGroup which holds global accelerators for the
	 * menu. See gtk_menu_set_accel_group().
	 *
	 * Returns: the #GtkAccelGroup associated with the menu
	 */
	public AccelGroup getAccelGroup()
	{
		auto p = gtk_menu_get_accel_group(gtkMenu);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AccelGroup)(cast(GtkAccelGroup*) p);
	}

	/**
	 * Retrieves the accelerator path set on the menu.
	 *
	 * Returns: the accelerator path set on the menu.
	 *
	 * Since: 2.14
	 */
	public string getAccelPath()
	{
		return Str.toString(gtk_menu_get_accel_path(gtkMenu));
	}

	/**
	 * Returns the selected menu item from the menu.  This is used by the
	 * #GtkComboBox.
	 *
	 * Returns: the #GtkMenuItem that was last selected
	 *     in the menu.  If a selection has not yet been made, the
	 *     first menu item is selected.
	 */
	public Widget getActive()
	{
		auto p = gtk_menu_get_active(gtkMenu);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns the #GtkWidget that the menu is attached to.
	 *
	 * Returns: the #GtkWidget that the menu is attached to
	 */
	public Widget getAttachWidget()
	{
		auto p = gtk_menu_get_attach_widget(gtkMenu);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Retrieves the number of the monitor on which to show the menu.
	 *
	 * Returns: the number of the monitor on which the menu should
	 *     be popped up or -1, if no monitor has been set
	 *
	 * Since: 2.14
	 */
	public int getMonitor()
	{
		return gtk_menu_get_monitor(gtkMenu);
	}

	/**
	 * Returns whether the menu reserves space for toggles and
	 * icons, regardless of their actual presence.
	 *
	 * Returns: Whether the menu reserves toggle space
	 *
	 * Since: 2.18
	 */
	public bool getReserveToggleSize()
	{
		return gtk_menu_get_reserve_toggle_size(gtkMenu) != 0;
	}

	/**
	 * Returns whether the menu is torn off.
	 * See gtk_menu_set_tearoff_state().
	 *
	 * Returns: %TRUE if the menu is currently torn off.
	 */
	public bool getTearoffState()
	{
		return gtk_menu_get_tearoff_state(gtkMenu) != 0;
	}

	/**
	 * Returns the title of the menu. See gtk_menu_set_title().
	 *
	 * Returns: the title of the menu, or %NULL if the menu
	 *     has no title set on it. This string is owned by GTK+
	 *     and should not be modified or freed.
	 */
	public string getTitle()
	{
		return Str.toString(gtk_menu_get_title(gtkMenu));
	}

	/**
	 * Places @menu on the given monitor.
	 *
	 * Params:
	 *     monitor = the monitor to place the menu on
	 *
	 * Since: 3.22
	 */
	public void placeOnMonitor(MonitorG monitor)
	{
		gtk_menu_place_on_monitor(gtkMenu, (monitor is null) ? null : monitor.getMonitorGStruct());
	}

	/**
	 * Removes the menu from the screen.
	 */
	public void popdown()
	{
		gtk_menu_popdown(gtkMenu);
	}

	/**
	 * Displays a menu and makes it available for selection.
	 *
	 * Applications can use this function to display context-sensitive
	 * menus, and will typically supply %NULL for the @parent_menu_shell,
	 * @parent_menu_item, @func and @data parameters. The default menu
	 * positioning function will position the menu at the current mouse
	 * cursor position.
	 *
	 * The @button parameter should be the mouse button pressed to initiate
	 * the menu popup. If the menu popup was initiated by something other
	 * than a mouse button press, such as a mouse button release or a keypress,
	 * @button should be 0.
	 *
	 * The @activate_time parameter is used to conflict-resolve initiation
	 * of concurrent requests for mouse/keyboard grab requests. To function
	 * properly, this needs to be the timestamp of the user event (such as
	 * a mouse click or key press) that caused the initiation of the popup.
	 * Only if no such event is available, gtk_get_current_event_time() can
	 * be used instead.
	 *
	 * Note that this function does not work very well on GDK backends that
	 * do not have global coordinates, such as Wayland or Mir. You should
	 * probably use one of the gtk_menu_popup_at_ variants, which do not
	 * have this problem.
	 *
	 * Deprecated: Please use gtk_menu_popup_at_widget(),
	 * gtk_menu_popup_at_pointer(). or gtk_menu_popup_at_rect() instead
	 *
	 * Params:
	 *     parentMenuShell = the menu shell containing the
	 *         triggering menu item, or %NULL
	 *     parentMenuItem = the menu item whose activation
	 *         triggered the popup, or %NULL
	 *     func = a user supplied function used to position
	 *         the menu, or %NULL
	 *     data = user supplied data to be passed to @func.
	 *     button = the mouse button which was pressed to initiate the event.
	 *     activateTime = the time at which the activation event occurred.
	 */
	public void popup(Widget parentMenuShell, Widget parentMenuItem, GtkMenuPositionFunc func, void* data, uint button, uint activateTime)
	{
		gtk_menu_popup(gtkMenu, (parentMenuShell is null) ? null : parentMenuShell.getWidgetStruct(), (parentMenuItem is null) ? null : parentMenuItem.getWidgetStruct(), func, data, button, activateTime);
	}

	/**
	 * Displays @menu and makes it available for selection.
	 *
	 * See gtk_menu_popup_at_widget () to pop up a menu at a widget.
	 * gtk_menu_popup_at_rect () also allows you to position a menu at an arbitrary
	 * rectangle.
	 *
	 * @menu will be positioned at the pointer associated with @trigger_event.
	 *
	 * Properties that influence the behaviour of this function are
	 * #GtkMenu:anchor-hints, #GtkMenu:rect-anchor-dx, #GtkMenu:rect-anchor-dy, and
	 * #GtkMenu:menu-type-hint. Connect to the #GtkMenu::popped-up signal to find
	 * out how it was actually positioned.
	 *
	 * Params:
	 *     triggerEvent = the #GdkEvent that initiated this request or
	 *         %NULL if it's the current event
	 *
	 * Since: 3.22
	 */
	public void popupAtPointer(Event triggerEvent)
	{
		gtk_menu_popup_at_pointer(gtkMenu, (triggerEvent is null) ? null : triggerEvent.getEventStruct());
	}

	/**
	 * Displays @menu and makes it available for selection.
	 *
	 * See gtk_menu_popup_at_widget () and gtk_menu_popup_at_pointer (), which
	 * handle more common cases for popping up menus.
	 *
	 * @menu will be positioned at @rect, aligning their anchor points. @rect is
	 * relative to the top-left corner of @rect_window. @rect_anchor and
	 * @menu_anchor determine anchor points on @rect and @menu to pin together.
	 * @menu can optionally be offset by #GtkMenu:rect-anchor-dx and
	 * #GtkMenu:rect-anchor-dy.
	 *
	 * Anchors should be specified under the assumption that the text direction is
	 * left-to-right; they will be flipped horizontally automatically if the text
	 * direction is right-to-left.
	 *
	 * Other properties that influence the behaviour of this function are
	 * #GtkMenu:anchor-hints and #GtkMenu:menu-type-hint. Connect to the
	 * #GtkMenu::popped-up signal to find out how it was actually positioned.
	 *
	 * Params:
	 *     rectWindow = the #GdkWindow @rect is relative to
	 *     rect = the #GdkRectangle to align @menu with
	 *     rectAnchor = the point on @rect to align with @menu's anchor point
	 *     menuAnchor = the point on @menu to align with @rect's anchor point
	 *     triggerEvent = the #GdkEvent that initiated this request or
	 *         %NULL if it's the current event
	 *
	 * Since: 3.22
	 */
	public void popupAtRect(Window rectWindow, GdkRectangle* rect, GdkGravity rectAnchor, GdkGravity menuAnchor, Event triggerEvent)
	{
		gtk_menu_popup_at_rect(gtkMenu, (rectWindow is null) ? null : rectWindow.getWindowStruct(), rect, rectAnchor, menuAnchor, (triggerEvent is null) ? null : triggerEvent.getEventStruct());
	}

	/**
	 * Displays @menu and makes it available for selection.
	 *
	 * See gtk_menu_popup_at_pointer () to pop up a menu at the master pointer.
	 * gtk_menu_popup_at_rect () also allows you to position a menu at an arbitrary
	 * rectangle.
	 *
	 * ![](popup-anchors.png)
	 *
	 * @menu will be positioned at @widget, aligning their anchor points.
	 * @widget_anchor and @menu_anchor determine anchor points on @widget and @menu
	 * to pin together. @menu can optionally be offset by #GtkMenu:rect-anchor-dx
	 * and #GtkMenu:rect-anchor-dy.
	 *
	 * Anchors should be specified under the assumption that the text direction is
	 * left-to-right; they will be flipped horizontally automatically if the text
	 * direction is right-to-left.
	 *
	 * Other properties that influence the behaviour of this function are
	 * #GtkMenu:anchor-hints and #GtkMenu:menu-type-hint. Connect to the
	 * #GtkMenu::popped-up signal to find out how it was actually positioned.
	 *
	 * Params:
	 *     widget = the #GtkWidget to align @menu with
	 *     widgetAnchor = the point on @widget to align with @menu's anchor point
	 *     menuAnchor = the point on @menu to align with @widget's anchor point
	 *     triggerEvent = the #GdkEvent that initiated this request or
	 *         %NULL if it's the current event
	 *
	 * Since: 3.22
	 */
	public void popupAtWidget(Widget widget, GdkGravity widgetAnchor, GdkGravity menuAnchor, Event triggerEvent)
	{
		gtk_menu_popup_at_widget(gtkMenu, (widget is null) ? null : widget.getWidgetStruct(), widgetAnchor, menuAnchor, (triggerEvent is null) ? null : triggerEvent.getEventStruct());
	}

	/**
	 * Displays a menu and makes it available for selection.
	 *
	 * Applications can use this function to display context-sensitive menus,
	 * and will typically supply %NULL for the @parent_menu_shell,
	 * @parent_menu_item, @func, @data and @destroy parameters. The default
	 * menu positioning function will position the menu at the current position
	 * of @device (or its corresponding pointer).
	 *
	 * The @button parameter should be the mouse button pressed to initiate
	 * the menu popup. If the menu popup was initiated by something other than
	 * a mouse button press, such as a mouse button release or a keypress,
	 * @button should be 0.
	 *
	 * The @activate_time parameter is used to conflict-resolve initiation of
	 * concurrent requests for mouse/keyboard grab requests. To function
	 * properly, this needs to be the time stamp of the user event (such as
	 * a mouse click or key press) that caused the initiation of the popup.
	 * Only if no such event is available, gtk_get_current_event_time() can
	 * be used instead.
	 *
	 * Note that this function does not work very well on GDK backends that
	 * do not have global coordinates, such as Wayland or Mir. You should
	 * probably use one of the gtk_menu_popup_at_ variants, which do not
	 * have this problem.
	 *
	 * Deprecated: Please use gtk_menu_popup_at_widget(),
	 * gtk_menu_popup_at_pointer(). or gtk_menu_popup_at_rect() instead
	 *
	 * Params:
	 *     device = a #GdkDevice
	 *     parentMenuShell = the menu shell containing the triggering
	 *         menu item, or %NULL
	 *     parentMenuItem = the menu item whose activation triggered
	 *         the popup, or %NULL
	 *     func = a user supplied function used to position the menu,
	 *         or %NULL
	 *     data = user supplied data to be passed to @func
	 *     destroy = destroy notify for @data
	 *     button = the mouse button which was pressed to initiate the event
	 *     activateTime = the time at which the activation event occurred
	 *
	 * Since: 3.0
	 */
	public void popupForDevice(Device device, Widget parentMenuShell, Widget parentMenuItem, GtkMenuPositionFunc func, void* data, GDestroyNotify destroy, uint button, uint activateTime)
	{
		gtk_menu_popup_for_device(gtkMenu, (device is null) ? null : device.getDeviceStruct(), (parentMenuShell is null) ? null : parentMenuShell.getWidgetStruct(), (parentMenuItem is null) ? null : parentMenuItem.getWidgetStruct(), func, data, destroy, button, activateTime);
	}

	/**
	 * Moves @child to a new @position in the list of @menu
	 * children.
	 *
	 * Params:
	 *     child = the #GtkMenuItem to move
	 *     position = the new position to place @child.
	 *         Positions are numbered from 0 to n - 1
	 */
	public void reorderChild(Widget child, int position)
	{
		gtk_menu_reorder_child(gtkMenu, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Repositions the menu according to its position function.
	 */
	public void reposition()
	{
		gtk_menu_reposition(gtkMenu);
	}

	/**
	 * Set the #GtkAccelGroup which holds global accelerators for the
	 * menu.  This accelerator group needs to also be added to all windows
	 * that this menu is being used in with gtk_window_add_accel_group(),
	 * in order for those windows to support all the accelerators
	 * contained in this group.
	 *
	 * Params:
	 *     accelGroup = the #GtkAccelGroup to be associated
	 *         with the menu.
	 */
	public void setAccelGroup(AccelGroup accelGroup)
	{
		gtk_menu_set_accel_group(gtkMenu, (accelGroup is null) ? null : accelGroup.getAccelGroupStruct());
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
	 *
	 * For example, a menu containing menu items “New” and “Exit”, will, after
	 * `gtk_menu_set_accel_path (menu, "<Gnumeric-Sheet>/File");` has been
	 * called, assign its items the accel paths: `"<Gnumeric-Sheet>/File/New"`
	 * and `"<Gnumeric-Sheet>/File/Exit"`.
	 *
	 * Assigning accel paths to menu items then enables the user to change
	 * their accelerators at runtime. More details about accelerator paths
	 * and their default setups can be found at gtk_accel_map_add_entry().
	 *
	 * Note that @accel_path string will be stored in a #GQuark. Therefore,
	 * if you pass a static string, you can save some memory by interning
	 * it first with g_intern_static_string().
	 *
	 * Params:
	 *     accelPath = a valid accelerator path
	 */
	public void setAccelPath(string accelPath)
	{
		gtk_menu_set_accel_path(gtkMenu, Str.toStringz(accelPath));
	}

	/**
	 * Selects the specified menu item within the menu.  This is used by
	 * the #GtkComboBox and should not be used by anyone else.
	 *
	 * Params:
	 *     index = the index of the menu item to select.  Index values are
	 *         from 0 to n-1
	 */
	public void setActive(uint index)
	{
		gtk_menu_set_active(gtkMenu, index);
	}

	/**
	 * Informs GTK+ on which monitor a menu should be popped up.
	 * See gdk_monitor_get_geometry().
	 *
	 * This function should be called from a #GtkMenuPositionFunc
	 * if the menu should not appear on the same monitor as the pointer.
	 * This information can’t be reliably inferred from the coordinates
	 * returned by a #GtkMenuPositionFunc, since, for very long menus,
	 * these coordinates may extend beyond the monitor boundaries or even
	 * the screen boundaries.
	 *
	 * Params:
	 *     monitorNum = the number of the monitor on which the menu should
	 *         be popped up
	 *
	 * Since: 2.4
	 */
	public void setMonitor(int monitorNum)
	{
		gtk_menu_set_monitor(gtkMenu, monitorNum);
	}

	/**
	 * Sets whether the menu should reserve space for drawing toggles
	 * or icons, regardless of their actual presence.
	 *
	 * Params:
	 *     reserveToggleSize = whether to reserve size for toggles
	 *
	 * Since: 2.18
	 */
	public void setReserveToggleSize(bool reserveToggleSize)
	{
		gtk_menu_set_reserve_toggle_size(gtkMenu, reserveToggleSize);
	}

	/**
	 * Sets the #GdkScreen on which the menu will be displayed.
	 *
	 * Params:
	 *     screen = a #GdkScreen, or %NULL if the screen should be
	 *         determined by the widget the menu is attached to
	 *
	 * Since: 2.2
	 */
	public void setScreen(Screen screen)
	{
		gtk_menu_set_screen(gtkMenu, (screen is null) ? null : screen.getScreenStruct());
	}

	/**
	 * Changes the tearoff state of the menu.  A menu is normally
	 * displayed as drop down menu which persists as long as the menu is
	 * active.  It can also be displayed as a tearoff menu which persists
	 * until it is closed or reattached.
	 *
	 * Params:
	 *     tornOff = If %TRUE, menu is displayed as a tearoff menu.
	 */
	public void setTearoffState(bool tornOff)
	{
		gtk_menu_set_tearoff_state(gtkMenu, tornOff);
	}

	/**
	 * Sets the title string for the menu.
	 *
	 * The title is displayed when the menu is shown as a tearoff
	 * menu. If @title is %NULL, the menu will see if it is attached
	 * to a parent menu item, and if so it will try to use the same
	 * text as that menu item’s label.
	 *
	 * Params:
	 *     title = a string containing the title for the menu
	 */
	public void setTitle(string title)
	{
		gtk_menu_set_title(gtkMenu, Str.toStringz(title));
	}

	/** */
	gulong addOnMoveScroll(void delegate(GtkScrollType, Menu) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-scroll", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the position of @menu is finalized after being popped up
	 * using gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (), or
	 * gtk_menu_popup_at_pointer ().
	 *
	 * @menu might be flipped over the anchor rectangle in order to keep it
	 * on-screen, in which case @flipped_x and @flipped_y will be set to %TRUE
	 * accordingly.
	 *
	 * @flipped_rect is the ideal position of @menu after any possible flipping,
	 * but before any possible sliding. @final_rect is @flipped_rect, but possibly
	 * translated in the case that flipping is still ineffective in keeping @menu
	 * on-screen.
	 *
	 * ![](popup-slide.png)
	 *
	 * The blue menu is @menu's ideal position, the green menu is @flipped_rect,
	 * and the red menu is @final_rect.
	 *
	 * See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
	 * gtk_menu_popup_at_pointer (), #GtkMenu:anchor-hints,
	 * #GtkMenu:rect-anchor-dx, #GtkMenu:rect-anchor-dy, and
	 * #GtkMenu:menu-type-hint.
	 *
	 * Params:
	 *     flippedRect = the position of @menu after any possible
	 *         flipping or %NULL if the backend can't obtain it
	 *     finalRect = the final position of @menu or %NULL if the
	 *         backend can't obtain it
	 *     flippedX = %TRUE if the anchors were flipped horizontally
	 *     flippedY = %TRUE if the anchors were flipped vertically
	 *
	 * Since: 3.22
	 */
	gulong addOnPoppedUp(void delegate(void*, void*, bool, bool, Menu) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "popped-up", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
